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
	GLOBAL SYSUTILS_$$_INTERNALCHANGECASE$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
SYSUTILS_$$_INTERNALCHANGECASE$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		mov	bx,word [bp+12]
		cmp	word [bx],0
		je	..@j2771
		jmp	..@j2772
..@j2771:
		jmp	..@j2765
..@j2772:
		mov	byte [bp-5],0
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j2777
		mov	ax,word FPC_EMPTYCHAR
..@j2777:
		mov	word [bp-4],ax
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j2780
		mov	bx,word [bx-2]
..@j2780:
		mov	word [bp-8],bx
		mov	word [bp-2],1
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j2782
		dec	word [bp-2]
	ALIGN 2
..@j2783:
		inc	word [bp-2]
		mov	ax,word [bp+8]
		mov	bx,ax
		mov	si,word [bp-4]
		mov	al,byte [si]
		mov	byte [bp-6],al
		mov	al,byte [bp-6]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
		mov	al,0
		je	..@j2792
		inc	ax
..@j2792:
		test	al,al
		jne	..@j2784
		jmp	..@j2785
..@j2784:
		cmp	byte [bp-5],0
		je	..@j2793
		jmp	..@j2794
..@j2793:
		mov	ax,word [bp+12]
		push	ax
		call	FPC_ANSISTR_UNIQUE
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		lea	ax,[bx+si-1]
		mov	word [bp-4],ax
		mov	byte [bp-5],1
..@j2794:
		mov	bx,word [bp-4]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	dx,word [bp+4]
		mov	bx,word [bp+6]
		add	dx,ax
		adc	bx,cx
		mov	bx,word [bp-4]
		mov	byte [bx],dl
..@j2785:
		inc	word [bp-4]
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j2783
..@j2782:
..@j2765:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_ANSISTR_UNIQUE
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_assign
