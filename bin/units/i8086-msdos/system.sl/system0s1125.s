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
	GLOBAL SYSTEM_$$_WRITESTRSHORT$TEXTREC
SYSTEM_$$_WRITESTRSHORT$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		cmp	word [bx+10],0
		je	..@j23899
		jmp	..@j23900
..@j23899:
		jmp	..@j23897
..@j23900:
		mov	bx,word [bp+4]
		lea	bx,[bx+32]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		cwd
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	bx,word [bp-2]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		cwd
		mov	cx,word [bp-10]
		mov	si,word [bp-8]
		add	cx,ax
		adc	si,dx
		mov	bx,word [bp+4]
		mov	dx,0
		mov	al,byte [bx+40]
		mov	ah,0
		cmp	si,dx
		jg	..@j23907
		jl	..@j23908
		cmp	cx,ax
		ja	..@j23907
		jmp	..@j23908
..@j23907:
		mov	bx,word [bp+4]
		mov	cx,0
		mov	dl,byte [bx+40]
		mov	dh,0
		mov	bx,word [bp-10]
		mov	ax,word [bp-8]
		sub	dx,bx
		sbb	cx,ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
..@j23908:
		mov	ax,word [bp-2]
		push	ax
		mov	ax,255
		push	ax
		mov	si,word [bp-2]
		mov	bx,0
		mov	al,byte [si]
		mov	ah,0
		mov	dx,word [bp-6]
		mov	cx,word [bp-4]
		add	dx,ax
		adc	cx,bx
		push	dx
		call	fpc_shortstr_setlength
		mov	bx,word [bp+4]
		mov	ax,word [bx+14]
		push	ax
		mov	bx,word [bp-2]
		mov	dx,word [bp-10]
		mov	ax,word [bp-8]
		add	dx,1
		adc	ax,0
		mov	byte [bp-12],dl
		mov	byte [bp-11],0
		mov	si,word [bp-12]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+4]
		mov	word [bx+10],0
..@j23897:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_shortstr_setlength
