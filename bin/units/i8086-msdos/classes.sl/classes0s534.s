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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_ISIMPLEMENTOROF$IUNKNOWN$$BOOLEAN
CLASSES$_$TCOMPONENT_$__$$_ISIMPLEMENTOROF$IUNKNOWN$$BOOLEAN:
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
		jne	..@j12030
		cmp	word [bp+4],0
		jne	..@j12034
		jmp	..@j12033
..@j12034:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld25
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_intf_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
		test	al,al
		jne	..@j12032
		jmp	..@j12033
..@j12032:
		mov	byte [bp-1],1
		jmp	..@j12041
..@j12033:
		mov	byte [bp-1],0
..@j12041:
		cmp	byte [bp-1],0
		jne	..@j12042
		jmp	..@j12043
..@j12042:
		push	word [bp-4]
		mov	bx,word [bp-4]
		mov	bx,word [bx]
		mov	ax,word [bx+6]
		call	ax
		cmp	ax,word [bp+6]
		mov	al,0
		jne	..@j12048
		inc	ax
..@j12048:
		mov	byte [bp-1],al
..@j12043:
..@j12030:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_intf_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12031
		call	FPC_RERAISE
..@j12031:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
EXTERN	fpc_intf_decr_ref
EXTERN	_$CLASSES$_Ld25
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
