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
	GLOBAL fpc_vararray_get
fpc_vararray_get:
		push	bp
		mov	bp,sp
		sub	sp,30
		lea	ax,[bp-30]
		push	ax
		call	fpc_variant_init
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
		jne	..@j15833
		mov	ax,word [bp+24]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,8
		rep
		movsw
		lea	ax,[bp-30]
		push	ax
		call	[U_$SYSTEM_$$_VARIANTMANAGER+84]
		add	sp,20
		lea	ax,[bp-30]
		push	ax
		call	fpc_variant_copy
..@j15833:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_variant_clear
		pop	ax
		test	ax,ax
		je	..@j15834
		call	FPC_RERAISE
..@j15834:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	FPC_RERAISE
EXTERN	fpc_variant_clear
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_variant_copy
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_variant_init
