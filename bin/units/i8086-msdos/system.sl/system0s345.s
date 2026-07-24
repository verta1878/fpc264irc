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
	GLOBAL fpc_mul_dword_to_qword
fpc_mul_dword_to_qword:
	GLOBAL FPC_MUL_DWORD_TO_QWORD
FPC_MUL_DWORD_TO_QWORD:
		push	bp
		mov	bp,sp
		mov	di,word [bp+8]
		mov	bx,word [bp+10]
		mov	si,word [bp+4]
		mov	ax,word [bp+6]
		mov	cx,ax
		mul	bx
		xchg	ax,bx
		mov	bp,dx
		mul	si
		xchg	ax,cx
		add	bx,dx
		adc	bp,0
		mul	di
		add	cx,ax
		adc	bx,dx
		adc	bp,0
		mov	ax,di
		mul	si
		add	cx,dx
		adc	bx,0
		adc	bp,0
		mov	dx,ax
		mov	ax,bp
		pop	bp
		ret	8
