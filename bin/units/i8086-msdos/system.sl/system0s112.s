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
	GLOBAL SYSTEM_$$_ALIGN$POINTER$WORD$$POINTER
SYSTEM_$$_ALIGN$POINTER$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	cx,word [bp+6]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	ax,word [bp-4]
		xor	dx,dx
		div	word [bp+4]
		mov	bx,0
		mov	ax,word [bp-4]
		mov	cx,0
		sub	ax,dx
		sbb	cx,bx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
