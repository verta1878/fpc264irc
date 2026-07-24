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
	GLOBAL SYSUTILS_$$_SLEEP$LONGWORD
SYSUTILS_$$_SLEEP$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,46
		mov	byte [bp-19],44
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	ax,0
		mov	dl,byte [bp-15]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,54
		push	ax
		mov	ax,-4480
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	si,ax
		mov	cx,dx
		mov	dl,byte [bp-16]
		mov	dh,0
		mov	ax,-5536
		mul	dx
		mov	dx,0
		mov	di,ax
		mov	bx,dx
		add	di,si
		adc	bx,cx
		mov	dl,byte [bp-13]
		mov	dh,0
		mov	ax,1000
		mul	dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	si,ax
		add	cx,di
		adc	si,bx
		mov	dl,byte [bp-14]
		mov	dh,0
		mov	ax,10
		mul	dx
		cwd
		mov	bx,ax
		mov	ax,dx
		add	bx,cx
		adc	ax,si
		mov	dx,bx
		mov	si,ax
		mov	dx,bx
		mov	si,ax
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	word [bp-28],dx
		mov	word [bp-26],si
		mov	word [bp-24],ax
		mov	word [bp-22],bx
		mov	bx,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,0
		mov	ax,0
		add	bx,word [bp-28]
		adc	dx,word [bp-26]
		adc	cx,word [bp-24]
		adc	ax,word [bp-22]
		mov	word [bp-44],bx
		mov	word [bp-42],dx
		mov	word [bp-40],cx
		mov	word [bp-38],ax
		mov	ax,word [bp-44]
		mov	dx,word [bp-42]
		mov	cx,word [bp-40]
		mov	bx,word [bp-38]
		cmp	bx,0
		jg	..@j16077
		jl	..@j16078
		cmp	cx,0
		ja	..@j16077
		jb	..@j16078
		cmp	dx,1318
		ja	..@j16077
		jb	..@j16078
		cmp	ax,23552
		ja	..@j16077
		jmp	..@j16078
..@j16077:
		mov	byte [bp-45],1
		jmp	..@j16079
..@j16078:
		mov	byte [bp-45],0
..@j16079:
	ALIGN 2
..@j16080:
		mov	ax,40
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	ax,33
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	ax,0
		mov	dl,byte [bp-15]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,54
		push	ax
		mov	ax,-4480
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	si,ax
		mov	cx,dx
		mov	dl,byte [bp-16]
		mov	dh,0
		mov	ax,-5536
		mul	dx
		mov	dx,0
		mov	di,ax
		mov	bx,dx
		add	di,si
		adc	bx,cx
		mov	dl,byte [bp-13]
		mov	dh,0
		mov	ax,1000
		mul	dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	si,ax
		add	cx,di
		adc	si,bx
		mov	dl,byte [bp-14]
		mov	dh,0
		mov	ax,10
		mul	dx
		cwd
		mov	bx,ax
		mov	ax,dx
		add	bx,cx
		adc	ax,si
		mov	dx,bx
		mov	si,ax
		mov	dx,bx
		mov	si,ax
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	word [bp-36],dx
		mov	word [bp-34],si
		mov	word [bp-32],ax
		mov	word [bp-30],bx
		cmp	byte [bp-45],0
		jne	..@j16101
		jmp	..@j16100
..@j16101:
		mov	cx,word [bp-36]
		mov	bx,word [bp-34]
		mov	ax,word [bp-32]
		mov	dx,word [bp-30]
		cmp	dx,word [bp-22]
		jl	..@j16099
		jg	..@j16100
		cmp	ax,word [bp-24]
		jb	..@j16099
		ja	..@j16100
		cmp	bx,word [bp-26]
		jb	..@j16099
		ja	..@j16100
		cmp	cx,word [bp-28]
		jb	..@j16099
		jmp	..@j16100
		jmp	..@j16100
..@j16099:
		add	word [bp-36],23552
		adc	word [bp-34],1318
		adc	word [bp-32],0
		adc	word [bp-30],0
..@j16100:
		mov	cx,word [bp-36]
		mov	bx,word [bp-34]
		mov	ax,word [bp-32]
		mov	dx,word [bp-30]
		cmp	dx,word [bp-38]
		jg	..@j16082
		jl	..@j16080
		cmp	ax,word [bp-40]
		ja	..@j16082
		jb	..@j16080
		cmp	bx,word [bp-42]
		ja	..@j16082
		jb	..@j16080
		cmp	cx,word [bp-44]
		jae	..@j16082
		jmp	..@j16080
		jmp	..@j16080
..@j16082:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_longint
EXTERN	FPC_INTR
