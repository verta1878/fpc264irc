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
	GLOBAL fpc_shortstr_concat
fpc_shortstr_concat:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	bx,word [bp+6]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		add	cx,dx
		adc	bx,ax
		mov	ax,word [bp+8]
		cwd
		cmp	bx,dx
		jg	..@j955
		jl	..@j956
		cmp	cx,ax
		ja	..@j955
		jmp	..@j956
..@j955:
		mov	ax,word [bp+8]
		cwd
		cmp	dx,word [bp-2]
		jl	..@j957
		jg	..@j958
		cmp	ax,word [bp-4]
		jb	..@j957
		jmp	..@j958
		jmp	..@j958
..@j957:
		mov	ax,word [bp+8]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j958:
		mov	ax,word [bp+8]
		cwd
		mov	bx,word [bp-4]
		mov	cx,word [bp-2]
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-8],ax
		mov	word [bp-6],dx
..@j956:
		mov	ax,word [bp+10]
		mov	dx,word [bp+6]
		cmp	ax,dx
		je	..@j963
		jmp	..@j964
..@j963:
		mov	al,byte [bp-8]
		mov	byte [bp-9],al
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	dx,1
		adc	ax,0
		mov	byte [bp-10],dl
		mov	ax,word [bp+10]
		mov	word [bp-36],ax
		mov	ax,word [bp+4]
		mov	word [bp-24],ax
		mov	bx,word [bp-24]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-10]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	bx,word [bp-36]
		mov	si,word [bp-14]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j979
..@j964:
		mov	ax,word [bp+10]
		mov	dx,word [bp+4]
		cmp	ax,dx
		je	..@j980
		jmp	..@j981
..@j980:
		mov	al,byte [bp-8]
		mov	byte [bp-9],al
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	dx,1
		adc	ax,0
		mov	byte [bp-10],dl
		mov	ax,word [bp+10]
		mov	word [bp-32],ax
		mov	ax,word [bp+10]
		mov	word [bp-22],ax
		mov	bx,word [bp-22]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-10]
		mov	byte [bp-16],al
		mov	byte [bp-15],0
		mov	bx,word [bp-32]
		mov	si,word [bp-16]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	al,byte [bp-4]
		mov	byte [bp-9],al
		mov	ax,word [bp+10]
		mov	word [bp-28],ax
		mov	ax,word [bp+6]
		mov	word [bp-18],ax
		mov	bx,word [bp-18]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp-28]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j1008
..@j981:
		mov	al,byte [bp-4]
		mov	byte [bp-9],al
		mov	ax,word [bp+10]
		mov	word [bp-30],ax
		mov	ax,word [bp+6]
		mov	word [bp-20],ax
		mov	bx,word [bp-20]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp-30]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	al,byte [bp-8]
		mov	byte [bp-9],al
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	dx,1
		adc	ax,0
		mov	byte [bp-10],dl
		mov	ax,word [bp+10]
		mov	word [bp-34],ax
		mov	ax,word [bp+4]
		mov	word [bp-26],ax
		mov	bx,word [bp-26]
		lea	ax,[bx+1]
		push	ax
		mov	al,byte [bp-10]
		mov	byte [bp-12],al
		mov	byte [bp-11],0
		mov	bx,word [bp-34]
		mov	si,word [bp-12]
		lea	ax,[bx+si]
		push	ax
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j1008:
..@j979:
		mov	cx,word [bp-4]
		mov	bx,word [bp-2]
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		add	dx,cx
		adc	ax,bx
		mov	bx,word [bp+10]
		mov	byte [bx],dl
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
