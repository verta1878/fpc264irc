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
	GLOBAL SYSTEM_$$_SWAP$LONGINT$$LONGINT
SYSTEM_$$_SWAP$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	dx,ax
		mov	ax,0
		mov	cx,word [bp+4]
		mov	bx,word [bp+6]
		mov	cx,bx
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
