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
	GLOBAL OBJECTS$_$TRESOURCECOLLECTION_$__$$_FREEITEM$POINTER
OBJECTS$_$TRESOURCECOLLECTION_$__$$_FREEITEM$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,256
		cmp	word [bp+4],0
		jne	..@j2547
		jmp	..@j2548
..@j2547:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	ah,0
		add	ax,8
		inc	ax
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j2548:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
