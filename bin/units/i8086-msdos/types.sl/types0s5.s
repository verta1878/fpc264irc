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
	GLOBAL TYPES$_$TSIZE_$__$$_DISTANCE$TSIZE$$DOUBLE
TYPES$_$TSIZE_$__$$_DISTANCE$TSIZE$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [si]
		mov	bx,word [si+2]
		sub	ax,dx
		sbb	cx,bx
		mov	word [bp-12],ax
		mov	word [bp-10],cx
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+4]
		mov	di,word [bx+6]
		mov	bx,word [si+4]
		mov	cx,word [si+6]
		mov	dx,ax
		mov	ax,di
		sub	dx,bx
		sbb	ax,cx
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-10]
		push	word [bp-12]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		add	ax,word [bp-16]
		adc	dx,word [bp-14]
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fsqrt
		wait fstp	qword [bp-8]
		DB	09bh
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_longint
