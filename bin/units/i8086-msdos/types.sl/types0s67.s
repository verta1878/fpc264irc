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
	GLOBAL TYPES_$$_RECT$SMALLINT$SMALLINT$SMALLINT$SMALLINT$$TRECT
TYPES_$$_RECT$SMALLINT$SMALLINT$SMALLINT$SMALLINT$$TRECT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		mov	ax,word [bp+10]
		cwd
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		cwd
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	bx,word [bp+12]
		mov	ax,word [bp+6]
		cwd
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		mov	bx,word [bp+12]
		mov	ax,word [bp+4]
		cwd
		mov	word [bx+12],ax
		mov	word [bx+14],dx
		mov	sp,bp
		pop	bp
		ret	10
