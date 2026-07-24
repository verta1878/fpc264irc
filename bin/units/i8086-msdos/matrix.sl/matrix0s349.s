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
	GLOBAL MATRIX$_$TMATRIX3_EXTENDED_$__$$_INIT$crc422BDA75
MATRIX$_$TMATRIX3_EXTENDED_$__$$_INIT$crc422BDA75:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+96]
		lea	ax,[bp+94]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,90
		push	ax
		call	fpc_help_constructor
		mov	word [bp+96],ax
		cmp	word [bp+96],0
		je	..@j4258
		jmp	..@j4259
..@j4258:
		jmp	..@j4248
..@j4259:
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
		jne	..@j4262
		mov	di,word [bp+96]
		push	ds
		pop	es
		lea	si,[bp+84]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+10]
		push	ds
		pop	es
		lea	si,[bp+74]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+20]
		push	ds
		pop	es
		lea	si,[bp+64]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+30]
		push	ds
		pop	es
		lea	si,[bp+54]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[bp+44]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+50]
		push	ds
		pop	es
		lea	si,[bp+34]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+60]
		push	ds
		pop	es
		lea	si,[bp+24]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+70]
		push	ds
		pop	es
		lea	si,[bp+14]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+96]
		lea	di,[bx+80]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
..@j4262:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4264
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
		jne	..@j4284
		push	word [bp+96]
		lea	ax,[bp+94]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,90
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j4284:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j4291
		call	FPC_RAISE_NESTED
..@j4291:
		call	FPC_DONEEXCEPTION
		jmp	..@j4264
..@j4264:
..@j4248:
		mov	ax,word [bp+96]
		mov	sp,bp
		pop	bp
		ret	94
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
