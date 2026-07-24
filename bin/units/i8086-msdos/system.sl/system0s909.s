BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSTEM_$$_SYSFREEMEM$POINTER$$WORD
SYSTEM_$$_SYSFREEMEM$POINTER$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		sub	ax,2
		mov	word [bp-4],ax
		cmp	word [bp+4],0
		je	..@j19322
		jmp	..@j19323
..@j19322:
		mov	word [bp-2],0
		jmp	..@j19318
..@j19323:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19328
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19329
..@j19328:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19329:
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		and	ax,1
		test	ax,ax
		je	..@j19330
		jmp	..@j19331
..@j19330:
		push	word [bp-6]
		mov	ax,word [bp+4]
		sub	ax,6
		push	ax
		call	SYSTEM_$$_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$WORD
		mov	word [bp-2],ax
		jmp	..@j19338
..@j19331:
		push	word [bp-6]
		push	word [bp-4]
		call	SYSTEM_$$_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$WORD
		mov	word [bp-2],ax
..@j19338:
..@j19318:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$WORD
EXTERN	SYSTEM_$$_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$WORD
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
