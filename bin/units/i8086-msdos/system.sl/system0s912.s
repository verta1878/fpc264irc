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
	GLOBAL SYSTEM_$$_FINISH_WAITVARLIST$PFREELISTS
SYSTEM_$$_FINISH_WAITVARLIST$PFREELISTS:
		push	bp
		mov	bp,sp
		sub	sp,2
		jmp	..@j19375
	ALIGN 2
..@j19374:
		mov	bx,word [bp+4]
		mov	ax,word [bx+84]
		mov	word [bp-2],ax
		mov	si,word [bp+4]
		mov	bx,word [bp-2]
		mov	ax,word [bx+6]
		mov	word [si+84],ax
		push	word [bp+4]
		push	word [bp-2]
		call	SYSTEM_$$_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$WORD
..@j19375:
		mov	bx,word [bp+4]
		cmp	word [bx+84],0
		jne	..@j19374
		jmp	..@j19376
..@j19376:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$WORD
