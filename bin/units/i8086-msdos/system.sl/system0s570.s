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
	GLOBAL fpc_class_is_corbaintf
fpc_class_is_corbaintf:
	GLOBAL FPC_CLASS_IS_CORBAINTF
FPC_CLASS_IS_CORBAINTF:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jne	..@j14343
		jmp	..@j14342
..@j14343:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
		test	ax,ax
		jne	..@j14341
		jmp	..@j14342
..@j14341:
		mov	byte [bp-1],1
		jmp	..@j14348
..@j14342:
		mov	byte [bp-1],0
..@j14348:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
