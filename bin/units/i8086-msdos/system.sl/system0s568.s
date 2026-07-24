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
	GLOBAL fpc_intf_is_class
fpc_intf_is_class:
	GLOBAL FPC_INTF_IS_CLASS
FPC_INTF_IS_CLASS:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+6],0
		jne	..@j14293
		jmp	..@j14291
..@j14293:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word TC_$SYSTEM_$$_IOBJECTINSTANCE
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j14291
		cmp	ax,0
		jne	..@j14291
		jmp	..@j14292
..@j14292:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j14290
		jmp	..@j14291
..@j14290:
		mov	byte [bp-1],1
		jmp	..@j14304
..@j14291:
		mov	byte [bp-1],0
..@j14304:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_IOBJECTINSTANCE
