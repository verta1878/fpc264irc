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
	GLOBAL TYPES$_$TRECT_$__$$_GETSIZE$$TSIZE
TYPES$_$TRECT_$__$$_GETSIZE$$TSIZE:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		call	TYPES$_$TRECT_$__$$_GETWIDTH$$LONGINT
		mov	bx,word [bp+4]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	cx,word [bx+14]
		mov	dx,word [bx+4]
		mov	si,word [bx+6]
		sub	ax,dx
		sbb	cx,si
		mov	bx,word [bp+4]
		mov	word [bx+4],ax
		mov	word [bx+6],cx
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPES$_$TRECT_$__$$_GETWIDTH$$LONGINT
