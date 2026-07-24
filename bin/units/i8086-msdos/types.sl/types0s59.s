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
	GLOBAL TYPES$_$TRECT_$__$$_SETSIZE$TSIZE
TYPES$_$TRECT_$__$$_SETSIZE$TSIZE:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,4
		rep
		movsw
		mov	si,word [bp+6]
		mov	bx,word [si+4]
		mov	cx,word [si+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,bx
		adc	dx,cx
		mov	bx,word [bp+6]
		mov	word [bx+12],ax
		mov	word [bx+14],dx
		mov	bx,word [bp+6]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	ax,cx
		adc	dx,bx
		mov	bx,word [bp+6]
		mov	word [bx+8],ax
		mov	word [bx+10],dx
		mov	sp,bp
		pop	bp
		ret	4
