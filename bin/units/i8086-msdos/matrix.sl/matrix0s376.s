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
	GLOBAL MATRIX$_$TMATRIX4_SINGLE_$__$$_INIT$crc179C954F
MATRIX$_$TMATRIX4_SINGLE_$__$$_INIT$crc179C954F:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+70]
		lea	ax,[bp+68]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,64
		push	ax
		call	fpc_help_constructor
		mov	word [bp+70],ax
		cmp	word [bp+70],0
		je	..@j4765
		jmp	..@j4766
..@j4765:
		jmp	..@j4755
..@j4766:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4769
		mov	bx,word [bp+70]
		mov	ax,word [bp+64]
		mov	word [bx],ax
		mov	ax,word [bp+66]
		mov	word [bx+2],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+60]
		mov	word [bx+4],ax
		mov	ax,word [bp+62]
		mov	word [bx+6],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+56]
		mov	word [bx+8],ax
		mov	ax,word [bp+58]
		mov	word [bx+10],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+52]
		mov	word [bx+12],ax
		mov	ax,word [bp+54]
		mov	word [bx+14],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+48]
		mov	word [bx+16],ax
		mov	ax,word [bp+50]
		mov	word [bx+18],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+44]
		mov	word [bx+20],ax
		mov	ax,word [bp+46]
		mov	word [bx+22],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+40]
		mov	word [bx+24],ax
		mov	ax,word [bp+42]
		mov	word [bx+26],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+36]
		mov	word [bx+28],ax
		mov	ax,word [bp+38]
		mov	word [bx+30],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+32]
		mov	word [bx+32],ax
		mov	ax,word [bp+34]
		mov	word [bx+34],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+28]
		mov	word [bx+36],ax
		mov	ax,word [bp+30]
		mov	word [bx+38],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+24]
		mov	word [bx+40],ax
		mov	ax,word [bp+26]
		mov	word [bx+42],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+20]
		mov	word [bx+44],ax
		mov	ax,word [bp+22]
		mov	word [bx+46],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+16]
		mov	word [bx+48],ax
		mov	ax,word [bp+18]
		mov	word [bx+50],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+12]
		mov	word [bx+52],ax
		mov	ax,word [bp+14]
		mov	word [bx+54],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+8]
		mov	word [bx+56],ax
		mov	ax,word [bp+10]
		mov	word [bx+58],ax
		mov	bx,word [bp+70]
		mov	ax,word [bp+4]
		mov	word [bx+60],ax
		mov	ax,word [bp+6]
		mov	word [bx+62],ax
..@j4769:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4771
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j4805
		push	word [bp+70]
		lea	ax,[bp+68]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,64
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4805:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4812
		call	FPC_RAISE_NESTED
..@j4812:
		call	FPC_DONEEXCEPTION
		jmp	..@j4771
..@j4771:
..@j4755:
		mov	ax,word [bp+70]
		mov	sp,bp
		pop	bp
		ret	68
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
