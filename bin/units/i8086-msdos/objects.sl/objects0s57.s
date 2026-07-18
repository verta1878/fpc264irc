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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_SEEK$LONGINT
OBJECTS$_$TBUFSTREAM_$__$$_SEEK$LONGINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		je	..@j1060
		jmp	..@j1061
..@j1060:
		mov	bx,word [bp+8]
		mov	dx,word [bx+10]
		mov	ax,word [bx+12]
		cmp	ax,word [bp+6]
		jne	..@j1062
		cmp	dx,word [bp+4]
		jne	..@j1062
		jmp	..@j1063
		jmp	..@j1063
..@j1062:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+16]
		call	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	OBJECTS$_$TDOSSTREAM_$__$$_SEEK$LONGINT
..@j1063:
..@j1061:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	OBJECTS$_$TDOSSTREAM_$__$$_SEEK$LONGINT
