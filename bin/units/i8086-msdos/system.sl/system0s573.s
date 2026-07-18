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
	GLOBAL fpc_class_cast_intf
fpc_class_cast_intf:
	GLOBAL FPC_CLASS_CAST_INTF
FPC_CLASS_CAST_INTF:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		mov	word [bp-4],0
		cmp	word [bp+6],0
		jne	..@j14398
		jmp	..@j14397
..@j14398:
		push	word [bp+6]
		mov	ax,word _$SYSTEM$_Ld23
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j14400
		jmp	..@j14399
..@j14400:
		lea	ax,[bp-2]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		cmp	dx,0
		jne	..@j14399
		cmp	ax,0
		jne	..@j14399
		jmp	..@j14396
..@j14399:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j14396
		jmp	..@j14397
..@j14396:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		jmp	..@j14425
..@j14397:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
..@j14425:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_intf_assign
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
EXTERN	_$SYSTEM$_Ld23
