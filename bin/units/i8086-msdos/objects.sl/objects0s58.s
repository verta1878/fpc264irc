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
	GLOBAL OBJECTS$_$TBUFSTREAM_$__$$_OPEN$WORD
OBJECTS$_$TBUFSTREAM_$__$$_OPEN$WORD:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		je	..@j1072
		jmp	..@j1073
..@j1072:
		mov	bx,word [bp+6]
		mov	word [bx+846],0
		mov	word [bx+848],0
		mov	bx,word [bp+6]
		mov	word [bx+850],0
		mov	word [bx+852],0
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	OBJECTS$_$TDOSSTREAM_$__$$_OPEN$WORD
..@j1073:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TDOSSTREAM_$__$$_OPEN$WORD
