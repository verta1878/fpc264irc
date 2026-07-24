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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_WRITESTR$PSHORTSTRING
OBJECTS$_$TSTREAM_$__$$_WRITESTR$PSHORTSTRING:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j520
		jmp	..@j521
..@j520:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
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
		jmp	..@j528
..@j521:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word TC_$OBJECTS$_$TSTREAM_$_WRITESTR$PSHORTSTRING_$$_EMPTY
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
..@j528:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$OBJECTS$_$TSTREAM_$_WRITESTR$PSHORTSTRING_$$_EMPTY
