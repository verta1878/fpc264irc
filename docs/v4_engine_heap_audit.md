# BUG-038 Audit: EInvalidPointer in RTL Heap Manager

## Audit Date: July 23, 2026
## Auditor: fpc264irc r3.1 source analysis + stress testing

---

## Heap Manager Source Analysis

### Block Layout (x86_64)

```
Variable block (in use):
  offset 0:  prevsize  (8 bytes) — size of previous chunk
  offset 8:  freelists (8 bytes) — pointer to owning thread's freelist
  offset 16: size      (8 bytes) — chunk size + flags (used/first/last)
  offset 24: USER DATA — returned by GetMem

Variable block (free):
  offset 0:  prevsize  (8 bytes)
  offset 8:  freelists (8 bytes)
  offset 16: size      (8 bytes) — flags: used=0
  offset 24: next_var  (8 bytes) — doubly-linked free list
  offset 32: prev_var  (8 bytes)
```

Header sizes: `tmemchunk_var_hdr` = 24 bytes, `tmemchunk_fixed_hdr` = 8 bytes.
Block alignment: 32 bytes on CPU64.

### Allocation Path (149KB block)

1. `SysGetMem(149520)` → size > 536 → variable path
2. `size = (149520 + 24 + 31) & ~31 = 149536` (32-byte aligned)
3. `SysGetMem_Var(149536)` → searches varlist or allocates new oschunk
4. Returns `pointer(chunk) + 24`
5. User gets aligned pointer, 24 bytes of header before it

### Free Path

1. `SysFreeMem(p)` → reads `p - 8` for size flags
2. Checks `fixedsizeflag` → not set → variable path
3. `SysFreeMem_Var(p - 24)` → checks freelists match
4. Clears `usedflag`, appends to varlist
5. `try_concat_free_chunk` → merges with adjacent free blocks

### FillChar Safety

```pascal
New(PTree);                              // PTree = chunk + 24
FillChar(PTree^, SizeOf(THTMLTree), 0);  // writes 149504 bytes at PTree
```

Chunk allocated size = 149536. User data = 149536 - 24 = 149512 bytes.
FillChar writes 149504 bytes. Gap = 149512 - 149504 = 8 bytes.
**FillChar does NOT overwrite next chunk's prevsize. SAFE.**

### Coalescing Safety

`concat_two_blocks` merges adjacent free chunks:
- Updates left block's size
- Updates right-of-right block's prevsize
- Removes right block from free list

Logic is correct — no off-by-one in pointer arithmetic.

---

## Stress Test Results

| Test | Cycles | Result |
|------|--------|--------|
| New/Dispose records + WriteLn | 50 | ✅ PASS |
| Class + records + string concat | 100 | ✅ PASS |
| Mixed small (64-1088B) + large (64-149KB) | 50 | ✅ PASS |
| All with 1.7MB engine alive | 100 | ✅ PASS |

**Cannot reproduce EInvalidPointer with the RTL heap manager.**

---

## Possible Causes NOT in Heap Manager

### 1. Buffer Overrun in User Code
The bug report mentions complex record types with arrays.
If any array index exceeds bounds (with `{$R-}`), it would
silently corrupt adjacent heap metadata.

**Check:** Enable `{$R+}` range checking temporarily to find
any overrun. Also try `{$Q+}` for overflow.

### 2. Stale Pointer After Dispose
If `PTree` is used after `Dispose(PTree)`, the memory may have
been reallocated by WriteLn's internal buffer allocation.
The freed memory could be the same memory WriteLn tries to use.

**Check:** Set `PTree := nil` after Dispose and verify no code
references it afterward.

### 3. Double Dispose
If `Dispose(PTree)` is called twice (or `PTree` aliases another
disposed pointer), the free list gets corrupted.

**Check:** Set pointer to nil after each Dispose.

### 4. Stack Overflow into Heap
`THTMLLayout` is 5,136 bytes on stack. Combined with deep
recursion in HTML parsing, the stack could grow into heap
territory. The default 8MB stack is large, but recursive
HTML tree walking with 5KB+ stack frames could consume it.

**Check:** Reduce stack-allocated structures or increase
stack size with `{$M 16777216}`.

### 5. Object VMT Corruption
`TRIPEngine` is a class (~2MB). If its VMT pointer (first 8 bytes)
gets corrupted (e.g., by FillChar on the object), subsequent
method calls would jump to random memory. The crash during
`ProcessLine` (a method call) fits this pattern.

**LIKELY CAUSE:** If the code does:
```pascal
RIP := TRIPEngine.Create;
FillChar(RIP^, SizeOf(TRIPEngine), 0);  // DESTROYS VMT!
```
This overwrites the VMT pointer at offset 0 of the object.
The correct way is:
```pascal
FillChar(RIP.Pixels, SizeOf(RIP.Pixels), 0);  // only fill data fields
```

### 6. heaptrc Interaction
If compiled with `-gh` (heaptrc), the heap manager adds extra
guard bytes around allocations. If the program was tested with
heaptrc enabled and then run without it, behavior could differ.

---

## Recommendations

1. **Try `{$R+}{$Q+}`** in debug mode to catch any buffer overrun
2. **Set pointers to nil** after Dispose
3. **Never FillChar a class instance** — it destroys the VMT
4. **Use GetMem/FreeMem** instead of New/Dispose for large buffers
   (avoids potential compiler-generated initialization issues)
5. **Check HTML parser recursion depth** — stack overflow possible
6. **Compile with `-gh`** (heaptrc) for detailed heap tracing

## Verdict

**The heap manager code is correct for this scenario.**
The bug is most likely in user code — either a buffer overrun,
a stale pointer, or FillChar on a class instance destroying the VMT.
The EInvalidPointer during WriteLn is a SYMPTOM of earlier corruption,
not the cause.
