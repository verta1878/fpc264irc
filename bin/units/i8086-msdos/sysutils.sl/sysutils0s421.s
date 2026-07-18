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
	GLOBAL SYSUTILS_$$_SUPPORTS$TOBJECT$SHORTSTRING$formal$$BOOLEAN
SYSUTILS_$$_SUPPORTS$TOBJECT$SHORTSTRING$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+8],0
		jne	..@j13646
		jmp	..@j13645
..@j13646:
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
		test	al,al
		jne	..@j13644
		jmp	..@j13645
..@j13644:
		mov	byte [bp-1],1
		jmp	..@j13653
..@j13645:
		mov	byte [bp-1],0
..@j13653:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
