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
	GLOBAL fpc_intf_as_class
fpc_intf_as_class:
	GLOBAL FPC_INTF_AS_CLASS
FPC_INTF_AS_CLASS:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+6],0
		jne	..@j14475
		jmp	..@j14476
..@j14475:
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
		jne	..@j14477
		cmp	ax,0
		jne	..@j14477
		jmp	..@j14479
..@j14479:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j14478
		jmp	..@j14477
..@j14477:
		mov	ax,0
		push	ax
		mov	ax,219
		push	ax
		call	FPC_HANDLEERROR
..@j14478:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j14494
..@j14476:
		mov	word [bp-2],0
..@j14494:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_HANDLEERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_IOBJECTINSTANCE
