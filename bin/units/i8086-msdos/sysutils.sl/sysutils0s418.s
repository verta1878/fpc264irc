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
	GLOBAL SYSUTILS_$$_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN
SYSUTILS_$$_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+8],0
		jne	..@j13592
		jmp	..@j13590
..@j13592:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word TC_$SYSTEM_$$_IOBJECTINSTANCE
		push	ax
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j13590
		cmp	ax,0
		jne	..@j13590
		jmp	..@j13591
..@j13591:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx]
		push	ax
		push	word [bp+6]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j13589
		jmp	..@j13590
..@j13589:
		mov	byte [bp-1],1
		jmp	..@j13603
..@j13590:
		mov	byte [bp-1],0
..@j13603:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_IOBJECTINSTANCE
