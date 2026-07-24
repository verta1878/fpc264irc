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
	GLOBAL TYPINFO_$$_GETPROPINFOS$PTYPEINFO$PPROPLIST
TYPINFO_$$_GETPROPINFOS$PTYPEINFO$PPROPLIST:
		push	bp
		mov	bp,sp
		sub	sp,12
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		shl	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
	ALIGN 2
..@j605:
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	dl,byte [bx+6]
		mov	dh,0
		mov	bx,word [bp-2]
		lea	ax,[bx+6]
		add	ax,dx
		inc	ax
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	dx,word [bx]
		mov	ax,0
		mov	word [bp-8],dx
		mov	word [bp-6],ax
		add	word [bp-4],2
		mov	ax,word [bp-4]
		mov	word [bp-4],ax
		jmp	..@j629
	ALIGN 2
..@j628:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	ax,word [si+14]
		mov	si,ax
		shl	si,1
		cmp	word [bx+si],0
		je	..@j631
		jmp	..@j632
..@j631:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	ax,word [si+14]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-4]
		mov	word [bx+si],ax
..@j632:
		mov	bx,word [bp-4]
		lea	bx,[bx+17]
		mov	dl,byte [bx]
		mov	dh,0
		mov	bx,word [bp-4]
		lea	ax,[bx+17]
		add	ax,dx
		inc	ax
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		mov	word [bp-4],ax
		sub	word [bp-8],1
		sbb	word [bp-6],0
..@j629:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,0
		jg	..@j628
		jl	..@j630
		cmp	dx,0
		ja	..@j628
		jmp	..@j630
..@j630:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp+6],ax
		cmp	word [bp+6],0
		je	..@j607
		jmp	..@j605
..@j607:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
