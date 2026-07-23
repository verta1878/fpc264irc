# system.ppu Source Code Audit

## Date: July 23, 2026
## Scope: RTL system unit — heap, strings, I/O, ASM overrides

---

## Files Audited

| File | Lines | Purpose |
|------|-------|---------|
| src/rtl/inc/heap.inc | ~1400 | Heap manager (alloc/free/realloc) |
| src/rtl/inc/heaph.inc | ~90 | Heap interface declarations |
| src/rtl/inc/astrings.inc | 1615 | AnsiString operations |
| src/rtl/inc/ustrings.inc | 2568 | UnicodeString operations |
| src/rtl/inc/wstrings.inc | 1709 | WideString operations |
| src/rtl/inc/dynarr.inc | ~600 | Dynamic array operations |
| src/rtl/inc/textrec.inc | ~60 | TextRec/FileRec definitions |
| src/rtl/inc/except.inc | ~300 | Exception handling |
| src/rtl/i386/i386.inc | 1651 | i386 ASM overrides |
| src/rtl/x86_64/x86_64.inc | 1043 | x86_64 ASM overrides |

---

## Finding 1: i386 AnsiStr ASM — BUG-029 (KNOWN, FIXED)

**File:** src/rtl/i386/i386.inc, lines 1511-1570
**Issue:** `fpc_AnsiStr_Decr_Ref` ASM used hardcoded offsets.
**Status:** FIXED in source (sub $12), binary patches applied.

The i386 ASM defines `FPC_SYSTEM_HAS_ANSISTR_DECR_REF` which
overrides the Pascal version. The Pascal version at
astrings.inc:132 uses `AnsiFirstOff` (compile-time constant)
and is correct. The ASM version had hardcoded `$8` instead of `$12`.

**x86_64 does NOT define this override** — uses Pascal version.
**Darwin i386 does NOT define this override** — uses Pascal version.
Both are safe.

### Record sizes confirmed:

| Type | i386 | x86_64 |
|------|------|--------|
| TAnsiRec | 12 (CP:2+ES:2+Ref:4+Len:4) | 24 (CP:2+ES:2+Dummy:4+Ref:8+Len:8) |
| TUnicodeRec | 8 (Ref:4+Len:4) | 16 (Ref:8+Len:8) |
| TWideRec | 6 (Len:4+First:2) | 6 (Len:4+First:2) |
| tdynarray | 8 (ref:4+high:4) | 16 (ref:8+high:8) |

---

## Finding 2: No ASM Override for SetLength (SAFE)

**File:** src/rtl/inc/astrings.inc, line 757
**Status:** SAFE — Pascal only, uses `AnsiFirstOff` constant.

`fpc_AnsiStr_SetLength` is pure Pascal on all platforms.
It correctly uses `Pointer(S)-AnsiFirstOff` for all record access.
The BUG-029 setlength issue was in the COMPILED .o file
(bad constant folding or inlining), not in the source.

---

## Finding 3: Dynamic Arrays Use sizeof() — SAFE

**File:** src/rtl/inc/dynarr.inc
**Status:** SAFE — no hardcoded offsets.

All dynamic array code uses `p-sizeof(tdynarray)` which is
computed at compile time (8 on i386, 16 on x86_64). No ASM
overrides exist for dynamic array operations.

---

## Finding 4: TextRec Buffer Is Stack/BSS — SAFE

**File:** src/rtl/inc/textrec.inc
**Status:** SAFE — no heap involvement.

`TextRecBufSize = 256`. The text buffer is embedded in the
TextRec record itself. WriteLn does NOT allocate from the heap
for its I/O buffer. BUG-038 cannot be caused by WriteLn buffer
allocation.

---

## Finding 5: Move/FillChar ASM — SAFE but Complex

**File:** src/rtl/i386/i386.inc, lines 131-246
**Status:** SAFE — standard REP MOVSB/STOSB patterns.

Both Move and FillChar have ASM overrides on i386 and x86_64.
The implementations use direction flag manipulation and
REP prefix instructions. These are well-tested patterns.
No off-by-one or alignment bugs found.

---

## Finding 6: Heap Manager Coalescing — SAFE

**File:** src/rtl/inc/heap.inc, lines 620-680
**Status:** SAFE — pointer arithmetic is correct.

`concat_two_blocks` and `try_concat_free_chunk` correctly:
- Update left block size
- Update right-of-right block's prevsize
- Handle first/last block flags
- Remove right block from free list

No overflow possible in size calculations (ptruint arithmetic).

---

## Finding 7: SysTryResizeMem — POTENTIAL ISSUE ⚠️

**File:** src/rtl/inc/heap.inc, lines 1296-1394
**Status:** POTENTIAL — statistics update after failed concat.

```pascal
if try_concat_free_chunk_forward(pcurr) then
  currsize := pcurr^.size and sizemask;
if size>currsize then
begin
  { adjust statistics }
  inc(currheapused, currsize-oldsize);  // ← adds merged size
  exit;                                 // ← but we didn't USE the merged block!
end
```

When `try_concat_free_chunk_forward` succeeds but the merged
block is still too small, the statistics are updated to include
the merged size, but then we `exit` WITHOUT using that merged
block. The merged block is now marked as used (part of current
block) but the function returns false — the caller will allocate
a NEW block. The old block + merged portion are leaked.

**Impact:** Memory leak during ReallocMem when growing a var
block that can partially merge forward but not enough. The
block is not in the free list (removed by concat) and not
returned to the caller. Statistics show it as used.

**Severity:** Low — only triggers during specific ReallocMem
patterns with adjacent blocks. Would cause gradual heap growth
(leak) but not corruption.

---

## Finding 8: Heap Lock Ordering — POTENTIAL ISSUE ⚠️

**File:** src/rtl/inc/heap.inc, various
**Status:** POTENTIAL — threading concern.

`alloc_oschunk` accesses `orphaned_freelists` under `heap_lock`,
but `waitfree_var` and `waitfree_fixed` also access freelists
under `heap_lock`. If a thread is in `alloc_oschunk` processing
orphaned chunks while another thread calls `waitfree_var` on
the same freelists, the lock protects the data but the ordering
of operations could leave stale pointers if a thread exits
between the two operations.

**Impact:** Only affects multi-threaded programs. Single-threaded
BBS software is not affected.

---

## Finding 9: x86_64 AnsiString — SAFE

**File:** src/rtl/x86_64/x86_64.inc
**Status:** SAFE — no string ASM overrides.

x86_64 does not define `FPC_SYSTEM_HAS_ANSISTR_DECR_REF` or
any other string ASM override. All string operations use the
Pascal implementations which correctly use `AnsiFirstOff`,
`UnicodeFirstOff`, etc. No BUG-029 class bugs possible on x86_64.

---

## Finding 10: Exception Frame Stack — SAFE

**File:** src/rtl/inc/except.inc
**Status:** SAFE — uses linked list on stack, no heap interaction.

Exception objects are heap-allocated (TObject.Create) but the
exception address stack uses stack frames. No heap corruption
possible from exception handling itself.

---

## Summary

| # | Finding | Severity | Status |
|---|---------|----------|--------|
| 1 | i386 AnsiStr ASM hardcoded offsets | CRITICAL | FIXED (BUG-029) |
| 2 | SetLength Pascal — correct | — | SAFE |
| 3 | Dynamic arrays use sizeof() | — | SAFE |
| 4 | TextRec buffer not on heap | — | SAFE |
| 5 | Move/FillChar ASM | — | SAFE |
| 6 | Heap coalescing | — | SAFE |
| 7 | SysTryResizeMem stats leak | LOW | ⚠️ REVIEW |
| 8 | Heap lock ordering (threading) | LOW | ⚠️ REVIEW |
| 9 | x86_64 strings all Pascal | — | SAFE |
| 10 | Exception frames on stack | — | SAFE |

**Two items flagged for review:**
- Finding 7: Memory leak in ReallocMem partial forward merge
- Finding 8: Thread lock ordering in orphaned freelists

Neither causes corruption. Both are edge cases.
The system unit is generally solid.
