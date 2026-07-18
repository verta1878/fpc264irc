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
	GLOBAL CLASSES_$$_SYSREADCOMPONENTRES$WORD$ANSISTRING$TCOMPONENT$$TCOMPONENT
CLASSES_$$_SYSREADCOMPONENTRES$WORD$ANSISTRING$TCOMPONENT$$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,38
		mov	word [bp-20],0
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
		jne	..@j15075
		push	word [bp+8]
		push	word [bp+6]
		lea	ax,[bp-20]
		push	ax
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-20]
		call	SYSTEM_$$_FINDRESOURCE$WORD$ANSISTRING$ANSISTRING$$WORD
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j15091
		jmp	..@j15092
..@j15091:
		mov	word [bp-2],0
		jmp	..@j15095
..@j15092:
		mov	ax,word VMT_$CLASSES_$$_TRESOURCESTREAM
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,10
		push	ax
		call	CLASSES$_$TRESOURCESTREAM_$__$$_CREATE$WORD$ANSISTRING$PCHAR$$TRESOURCESTREAM
		mov	word [bp-38],ax
		mov	ax,word [bp-38]
		mov	word [bp-36],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j15110
		push	word [bp-36]
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
		mov	word [bp-2],ax
..@j15110:
		call	FPC_POPADDRSTACK
		push	word [bp-36]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j15111
		call	FPC_RERAISE
..@j15111:
..@j15095:
..@j15075:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15076
		call	FPC_RERAISE
..@j15076:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
EXTERN	CLASSES$_$TRESOURCESTREAM_$__$$_CREATE$WORD$ANSISTRING$PCHAR$$TRESOURCESTREAM
EXTERN	VMT_$CLASSES_$$_TRESOURCESTREAM
EXTERN	SYSTEM_$$_FINDRESOURCE$WORD$ANSISTRING$ANSISTRING$$WORD
EXTERN	fpc_pchar_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
