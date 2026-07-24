BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TINTERFACEDPERSISTENT_$__$$_AFTERCONSTRUCTION
CLASSES$_$TINTERFACEDPERSISTENT_$__$$_AFTERCONSTRUCTION:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+54]
		call	ax
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j10982
		jmp	..@j10983
..@j10982:
		push	word [bp-2]
		mov	ax,word _$CLASSES$_Ld24
		push	ax
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		lea	ax,[bx+6]
		push	ax
		call	fpc_intf_decr_ref
		mov	bx,word [bp-4]
		lea	ax,[bx+6]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
..@j10983:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
EXTERN	fpc_intf_decr_ref
EXTERN	_$CLASSES$_Ld24
EXTERN	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
