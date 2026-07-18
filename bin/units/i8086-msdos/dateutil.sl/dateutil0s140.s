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
	GLOBAL DATEUTILS_$$_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,18
		cmp	word [bp+10],60
		jb	..@j2163
		jmp	..@j2161
..@j2163:
		cmp	word [bp+8],60
		jb	..@j2162
		jmp	..@j2161
..@j2162:
		cmp	word [bp+6],1000
		jb	..@j2160
		jmp	..@j2161
..@j2160:
		mov	byte [bp-1],1
		jmp	..@j2164
..@j2161:
		mov	byte [bp-1],0
..@j2164:
		cmp	byte [bp-1],0
		jne	..@j2165
		jmp	..@j2166
..@j2165:
		mov	ax,word [bp+12]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,54
		push	ax
		mov	ax,-4480
		push	ax
		call	fpc_mul_dword_to_qword
		mov	word [bp-18],dx
		mov	word [bp-16],cx
		mov	word [bp-14],bx
		mov	word [bp-12],ax
		mov	dx,word [bp+10]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,0
		push	ax
		mov	ax,-5536
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	cx,ax
		mov	bx,dx
		mov	cx,ax
		mov	bx,dx
		mov	dx,0
		mov	ax,0
		add	word [bp-18],cx
		adc	word [bp-16],bx
		adc	word [bp-14],dx
		adc	word [bp-12],ax
		mov	ax,word [bp+8]
		mov	dx,0
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1000
		push	ax
		call	fpc_mul_dword_to_qword
		mov	si,cx
		mov	cx,bx
		add	word [bp-18],dx
		adc	word [bp-16],si
		adc	word [bp-14],cx
		adc	word [bp-12],ax
		mov	ax,word [bp+6]
		mov	bx,0
		mov	dx,0
		mov	cx,0
		add	word [bp-18],ax
		adc	word [bp-16],bx
		adc	word [bp-14],dx
		adc	word [bp-12],cx
		mov	ax,word [bp-18]
		mov	word [bp-10],ax
		mov	ax,word [bp-16]
		mov	word [bp-8],ax
		mov	ax,word [bp-14]
		mov	word [bp-6],ax
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		wait fild	qword [bp-10]
		wait fdiv	qword [_$DATEUTILS$_Ld13]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
..@j2166:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$DATEUTILS$_Ld13
EXTERN	fpc_mul_dword
EXTERN	fpc_mul_dword_to_qword
