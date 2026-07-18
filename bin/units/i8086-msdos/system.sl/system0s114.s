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
	GLOBAL SYSTEM_$$_INT_STR_UNSIGNED$LONGWORD$OPENSTRING
SYSTEM_$$_INT_STR_UNSIGNED$LONGWORD$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,50
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		mov	word [bp-12],ax
		lea	ax,[bp-45]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		mov	word [bp-10],ax
	ALIGN 2
..@j1795:
		inc	word [bp-10]
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	fpc_div_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		sub	cx,ax
		sbb	bx,dx
		add	cx,48
		adc	bx,0
		mov	bx,word [bp-10]
		mov	byte [bx],cl
		mov	ax,word [bp-4]
		mov	word [bp+8],ax
		mov	ax,word [bp-2]
		mov	word [bp+10],ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,0
		jne	..@j1795
		cmp	dx,0
		jne	..@j1795
		jmp	..@j1797
..@j1797:
		mov	ax,word [bp-10]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	dx,word [bp+4]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-50],cx
		mov	word [bp-48],ax
		mov	dx,word [bp-50]
		mov	ax,word [bp-48]
		cmp	ax,0
		jg	..@j1816
		jl	..@j1817
		cmp	dx,0
		ja	..@j1816
		jmp	..@j1817
..@j1816:
		mov	ax,word [bp-50]
		add	word [bp-6],ax
..@j1817:
		jmp	..@j1819
	ALIGN 2
..@j1818:
		mov	si,word [bp-12]
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	byte [si],al
		inc	word [bp-12]
		dec	word [bp-10]
..@j1819:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-6]
		ja	..@j1818
		jmp	..@j1820
..@j1820:
		mov	ax,word [bp-12]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	bx,word [bp+6]
		mov	byte [bx],al
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_mul_longint
EXTERN	fpc_div_dword
