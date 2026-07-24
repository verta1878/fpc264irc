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
	GLOBAL fpc_class_is_intf
fpc_class_is_intf:
	GLOBAL FPC_CLASS_IS_INTF
FPC_CLASS_IS_INTF:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-4],0
		mov	word [bp-6],0
		cmp	word [bp+6],0
		jne	..@j14313
		jmp	..@j14312
..@j14313:
		push	word [bp+6]
		mov	ax,word _$SYSTEM$_Ld23
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j14315
		jmp	..@j14314
..@j14315:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-6]
		mov	bx,word [bp-6]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j14314
		cmp	ax,0
		jne	..@j14314
		jmp	..@j14311
..@j14314:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j14311
		jmp	..@j14312
..@j14311:
		mov	byte [bp-1],1
		jmp	..@j14334
..@j14312:
		mov	byte [bp-1],0
..@j14334:
		cmp	word [bp-4],0
		jne	..@j14335
		jmp	..@j14336
..@j14335:
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		call	[bx+4]
		pop	word [bp-8]
..@j14336:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
EXTERN	_$SYSTEM$_Ld23
