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
	GLOBAL OBJECTS$_$TRESOURCECOLLECTION_$__$$_PUTITEM$TSTREAM$POINTER
OBJECTS$_$TRESOURCECOLLECTION_$__$$_PUTITEM$TSTREAM$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,256
		cmp	word [bp+4],0
		jne	..@j2555
		jmp	..@j2556
..@j2555:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	ah,0
		add	ax,8
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
..@j2556:
		mov	sp,bp
		pop	bp
		ret	6
