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
	GLOBAL OBJECTS$_$TSTRLISTMAKER_$__$$_STORE$TSTREAM
OBJECTS$_$TSTRLISTMAKER_$__$$_STORE$TSTREAM:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		call	OBJECTS$_$TSTRLISTMAKER_$__$$_CLOSECURRENT
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+2]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+10]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+20]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	dx,word [bx+14]
		mov	cx,3
..@j3152:
		shl	ax,1
		rcl	dx,1
		loop	..@j3152
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TSTRLISTMAKER_$__$$_CLOSECURRENT
