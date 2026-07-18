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
	GLOBAL MATRIX$_$TMATRIX3_DOUBLE_$__$$_INIT$crcDDF74760
MATRIX$_$TMATRIX3_DOUBLE_$__$$_INIT$crcDDF74760:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+78]
		lea	ax,[bp+76]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,72
		push	ax
		call	fpc_help_constructor
		mov	word [bp+78],ax
		cmp	word [bp+78],0
		je	..@j3753
		jmp	..@j3754
..@j3753:
		jmp	..@j3743
..@j3754:
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
		jne	..@j3757
		mov	di,word [bp+78]
		push	ds
		pop	es
		lea	si,[bp+68]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp+60]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[bp+52]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+24]
		push	ds
		pop	es
		lea	si,[bp+44]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+32]
		push	ds
		pop	es
		lea	si,[bp+36]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[bp+28]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+48]
		push	ds
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+78]
		lea	di,[bx+64]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j3757:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3759
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
		jne	..@j3779
		push	word [bp+78]
		lea	ax,[bp+76]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,72
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j3779:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j3786
		call	FPC_RAISE_NESTED
..@j3786:
		call	FPC_DONEEXCEPTION
		jmp	..@j3759
..@j3759:
..@j3743:
		mov	ax,word [bp+78]
		mov	sp,bp
		pop	bp
		ret	76
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
