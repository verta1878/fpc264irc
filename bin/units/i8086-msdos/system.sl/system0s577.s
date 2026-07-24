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
	GLOBAL fpc_class_as_intf
fpc_class_as_intf:
	GLOBAL FPC_CLASS_AS_INTF
FPC_CLASS_AS_INTF:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+6],0
		jne	..@j14499
		jmp	..@j14500
..@j14499:
		mov	word [bp-2],0
		mov	word [bp-4],0
		push	word [bp+6]
		mov	ax,word _$SYSTEM$_Ld23
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j14508
		jmp	..@j14507
..@j14508:
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
		jne	..@j14507
		cmp	ax,0
		jne	..@j14507
		jmp	..@j14506
..@j14507:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j14506
		jmp	..@j14505
..@j14505:
		mov	ax,0
		push	ax
		mov	ax,219
		push	ax
		call	FPC_HANDLEERROR
..@j14506:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		jmp	..@j14535
..@j14500:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
..@j14535:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_intf_assign
EXTERN	FPC_HANDLEERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
EXTERN	_$SYSTEM$_Ld23
