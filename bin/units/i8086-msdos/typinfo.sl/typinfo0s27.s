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
	GLOBAL TYPINFO_$$_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT
TYPINFO_$$_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,40
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-22],ax
		mov	ax,word [bx+2]
		mov	word [bp-20],ax
		cmp	byte [bp+4],0
		jne	..@j671
		jmp	..@j672
..@j671:
		mov	ax,word TYPINFO_$$_INSERTPROP$PPROPLIST$PPROPINFO$LONGINT
		mov	word [bp-18],ax
		jmp	..@j675
..@j672:
		mov	ax,word TYPINFO_$$_INSERTPROPNOSORT$PPROPLIST$PPROPINFO$LONGINT
		mov	word [bp-18],ax
..@j675:
		mov	word [bp-4],0
		mov	word [bp-2],0
		push	word [bp+10]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	ax,word [bx+4]
		cwd
		mov	word [bp-16],ax
		mov	word [bp-14],dx
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		cmp	dx,0
		jg	..@j684
		jl	..@j685
		cmp	ax,0
		ja	..@j684
		jmp	..@j685
..@j684:
		lea	ax,[bp-6]
		push	ax
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j690
		push	word [bp+10]
		push	word [bp-6]
		call	TYPINFO_$$_GETPROPINFOS$PTYPEINFO$PPROPLIST
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-40],ax
		mov	word [bp-38],dx
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	ax,word [bp-38]
		cmp	ax,word [bp-10]
		jl	..@j700
		jg	..@j702
		mov	ax,word [bp-40]
		cmp	ax,word [bp-12]
		jb	..@j700
..@j702:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j701:
		add	word [bp-12],1
		adc	word [bp-10],0
		mov	bx,word [bp-6]
		mov	ax,word [bp-12]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-8],ax
		mov	bx,word [bp-8]
		mov	bx,word [bx]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bp+si-22],ax
		jne	..@j705
		jmp	..@j706
..@j705:
		cmp	word [bp+6],0
		jne	..@j707
		jmp	..@j708
..@j707:
		push	word [bp+6]
		push	word [bp-8]
		push	word [bp-2]
		push	word [bp-4]
		mov	ax,word [bp-18]
		call	ax
..@j708:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j706:
		mov	ax,word [bp-38]
		cmp	ax,word [bp-10]
		jg	..@j701
		jl	..@j715
		mov	ax,word [bp-40]
		cmp	ax,word [bp-12]
		ja	..@j701
..@j715:
..@j700:
..@j690:
		call	FPC_POPADDRSTACK
		push	word [bp-6]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		pop	ax
		test	ax,ax
		je	..@j691
		call	FPC_RERAISE
..@j691:
..@j685:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	FPC_POPADDRSTACK
EXTERN	TYPINFO_$$_GETPROPINFOS$PTYPEINFO$PPROPLIST
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	TYPINFO_$$_INSERTPROPNOSORT$PPROPLIST$PPROPINFO$LONGINT
EXTERN	TYPINFO_$$_INSERTPROP$PPROPLIST$PPROPINFO$LONGINT
