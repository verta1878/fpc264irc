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
	GLOBAL OBJECTS$_$TSTRLISTMAKER_$__$$_CLOSECURRENT
OBJECTS$_$TSTRLISTMAKER_$__$$_CLOSECURRENT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+26],0
		jne	..@j3155
		jmp	..@j3156
..@j3155:
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	di,ax
		mov	cl,3
		shl	di,cl
		mov	si,word [bp+4]
		mov	bx,word [bp-2]
		lea	di,[bx+di]
		push	ds
		pop	es
		lea	si,[si+22]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+4]
		add	word [bx+12],1
		adc	word [bx+14],0
		mov	bx,word [bp+4]
		mov	word [bx+26],0
..@j3156:
		mov	sp,bp
		pop	bp
		ret	2
