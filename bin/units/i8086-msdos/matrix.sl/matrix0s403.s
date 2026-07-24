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
	GLOBAL MATRIX$_$TMATRIX4_DOUBLE_$__$$_INIT$crc78F9C4F2
MATRIX$_$TMATRIX4_DOUBLE_$__$$_INIT$crc78F9C4F2:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+134]
		lea	ax,[bp+132]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,128
		push	ax
		call	fpc_help_constructor
		mov	word [bp+134],ax
		cmp	word [bp+134],0
		je	..@j5532
		jmp	..@j5533
..@j5532:
		jmp	..@j5522
..@j5533:
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
		jne	..@j5536
		mov	di,word [bp+134]
		push	ds
		pop	es
		lea	si,[bp+124]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+8]
		push	ds
		pop	es
		lea	si,[bp+116]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+16]
		push	ds
		pop	es
		lea	si,[bp+108]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+24]
		push	ds
		pop	es
		lea	si,[bp+100]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+32]
		push	ds
		pop	es
		lea	si,[bp+92]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[bp+84]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+48]
		push	ds
		pop	es
		lea	si,[bp+76]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp+68]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+64]
		push	ds
		pop	es
		lea	si,[bp+60]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+72]
		push	ds
		pop	es
		lea	si,[bp+52]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+80]
		push	ds
		pop	es
		lea	si,[bp+44]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+88]
		push	ds
		pop	es
		lea	si,[bp+36]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+96]
		push	ds
		pop	es
		lea	si,[bp+28]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+104]
		push	ds
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+112]
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+134]
		lea	di,[bx+120]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
..@j5536:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5538
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
		jne	..@j5572
		push	word [bp+134]
		lea	ax,[bp+132]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,128
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j5572:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5579
		call	FPC_RAISE_NESTED
..@j5579:
		call	FPC_DONEEXCEPTION
		jmp	..@j5538
..@j5538:
..@j5522:
		mov	ax,word [bp+134]
		mov	sp,bp
		pop	bp
		ret	132
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
