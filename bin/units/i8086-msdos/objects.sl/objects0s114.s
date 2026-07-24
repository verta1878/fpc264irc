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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_DONE
OBJECTS$_$TRESOURCEFILE_$__$$_DONE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		call	OBJECTS$_$TRESOURCEFILE_$__$$_FLUSH
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		lea	bx,[bx+13]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j2677
		jmp	..@j2678
..@j2677:
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		push	ax
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
..@j2678:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_destructor
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_help_destructor
EXTERN	OBJECTS$_$TRESOURCEFILE_$__$$_FLUSH
