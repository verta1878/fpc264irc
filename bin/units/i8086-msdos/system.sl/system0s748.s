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
	GLOBAL SYSTEM_$$_assign$OLEVARIANT$$WIDECHAR
SYSTEM_$$_assign$OLEVARIANT$$WIDECHAR:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j16649
		lea	ax,[bp-4]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+18]
		call	ax
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j16657
		mov	bx,word [bx-2]
..@j16657:
		cmp	bx,0
		jg	..@j16655
		jmp	..@j16656
..@j16655:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		jmp	..@j16660
..@j16656:
		mov	word [bp-2],0
..@j16660:
..@j16649:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16650
		call	FPC_RERAISE
..@j16650:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
