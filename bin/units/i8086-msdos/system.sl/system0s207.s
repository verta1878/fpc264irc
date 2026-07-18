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
	GLOBAL SYSTEM_$$_FLOAT_RAISE$TFPUEXCEPTION
SYSTEM_$$_FLOAT_RAISE$TFPUEXCEPTION:
		push	bp
		mov	bp,sp
		mov	bl,0
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	dl,1
		mov	cl,al
		mov	ch,0
		shl	dl,cl
		mov	al,bl
		or	al,dl
		push	ax
		call	SYSTEM_$$_FLOAT_RAISE$TFPUEXCEPTIONMASK
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FLOAT_RAISE$TFPUEXCEPTIONMASK
