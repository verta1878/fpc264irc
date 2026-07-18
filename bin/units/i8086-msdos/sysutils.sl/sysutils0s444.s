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
	GLOBAL SYSUTILS$_$EHEAPMEMORYERROR_$__$$_FREEINSTANCE
SYSUTILS$_$EHEAPMEMORYERROR_$__$$_FREEINSTANCE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	byte [bx+8],0
		jne	..@j14330
		jmp	..@j14331
..@j14330:
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
..@j14331:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
