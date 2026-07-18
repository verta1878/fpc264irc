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
	GLOBAL TYPES$_$TRECT_$__$$_CREATE$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
TYPES$_$TRECT_$__$$_CREATE$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+20]
		mov	ax,word [bp+16]
		mov	word [bx],ax
		mov	ax,word [bp+18]
		mov	word [bx+2],ax
		mov	bx,word [bp+20]
		mov	ax,word [bp+12]
		mov	word [bx+4],ax
		mov	ax,word [bp+14]
		mov	word [bx+6],ax
		mov	bx,word [bp+20]
		mov	ax,word [bp+8]
		mov	word [bx+8],ax
		mov	ax,word [bp+10]
		mov	word [bx+10],ax
		mov	bx,word [bp+20]
		mov	ax,word [bp+4]
		mov	word [bx+12],ax
		mov	ax,word [bp+6]
		mov	word [bx+14],ax
		mov	sp,bp
		pop	bp
		ret	18
