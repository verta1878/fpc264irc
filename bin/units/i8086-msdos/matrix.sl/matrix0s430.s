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
	GLOBAL MATRIX$_$TMATRIX4_EXTENDED_$__$$_INIT$crcA4D71526
MATRIX$_$TMATRIX4_EXTENDED_$__$$_INIT$crcA4D71526:
		push	bp
		mov	bp,sp
		sub	sp,28
		push	word [bp+166]
		lea	ax,[bp+164]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,160
		push	ax
		call	fpc_help_constructor
		mov	word [bp+166],ax
		cmp	word [bp+166],0
		je	..@j6299
		jmp	..@j6300
..@j6299:
		jmp	..@j6289
..@j6300:
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
		jne	..@j6303
		mov	di,word [bp+166]
		push	ds
		pop	es
		lea	si,[bp+154]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+10]
		push	ds
		pop	es
		lea	si,[bp+144]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+20]
		push	ds
		pop	es
		lea	si,[bp+134]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+30]
		push	ds
		pop	es
		lea	si,[bp+124]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+40]
		push	ds
		pop	es
		lea	si,[bp+114]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+50]
		push	ds
		pop	es
		lea	si,[bp+104]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+60]
		push	ds
		pop	es
		lea	si,[bp+94]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+70]
		push	ds
		pop	es
		lea	si,[bp+84]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+80]
		push	ds
		pop	es
		lea	si,[bp+74]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+90]
		push	ds
		pop	es
		lea	si,[bp+64]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+100]
		push	ds
		pop	es
		lea	si,[bp+54]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+110]
		push	ds
		pop	es
		lea	si,[bp+44]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+120]
		push	ds
		pop	es
		lea	si,[bp+34]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+130]
		push	ds
		pop	es
		lea	si,[bp+24]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+140]
		push	ds
		pop	es
		lea	si,[bp+14]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+166]
		lea	di,[bx+150]
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,5
		rep
		movsw
..@j6303:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j6305
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
		jne	..@j6339
		push	word [bp+166]
		lea	ax,[bp+164]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,160
		push	ax
		call	fpc_help_fail
		call	fpc_popaddrstack
		call	fpc_reraise
..@j6339:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j6346
		call	FPC_RAISE_NESTED
..@j6346:
		call	FPC_DONEEXCEPTION
		jmp	..@j6305
..@j6305:
..@j6289:
		mov	ax,word [bp+166]
		mov	sp,bp
		pop	bp
		ret	164
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_help_fail
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_help_constructor
