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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_REFERENCEINTERFACE$IUNKNOWN$TOPERATION
CLASSES$_$TCOMPONENT_$__$$_REFERENCEINTERFACE$IUNKNOWN$TOPERATION:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-2],0
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
		jne	..@j12055
		cmp	word [bp+8],0
		jne	..@j12059
		jmp	..@j12058
..@j12059:
		push	word [bp+8]
		mov	ax,word _$CLASSES$_Ld25
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_intf_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j12057
		jmp	..@j12058
..@j12057:
		push	word [bp-2]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
		mov	word [bp-4],ax
		cmp	word [bp+4],0
		je	..@j12070
		jmp	..@j12071
..@j12070:
		push	word [bp-4]
		push	word [bp+10]
		call	CLASSES$_$TCOMPONENT_$__$$_FREENOTIFICATION$TCOMPONENT
		jmp	..@j12076
..@j12071:
		push	word [bp-4]
		push	word [bp+10]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVEFREENOTIFICATION$TCOMPONENT
..@j12076:
..@j12058:
..@j12055:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12056
		call	FPC_RERAISE
..@j12056:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TCOMPONENT_$__$$_REMOVEFREENOTIFICATION$TCOMPONENT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_FREENOTIFICATION$TCOMPONENT
EXTERN	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
EXTERN	fpc_intf_decr_ref
EXTERN	_$CLASSES$_Ld25
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
