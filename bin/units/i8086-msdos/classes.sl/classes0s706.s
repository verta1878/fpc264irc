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
	GLOBAL CLASSES_$$_CREATECOMPONENTFROMRES$ANSISTRING$WORD$TCOMPONENT$$BOOLEAN
CLASSES_$$_CREATECOMPONENTFROMRES$ANSISTRING$WORD$TCOMPONENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	byte [bp-1],1
		cmp	word [bp+6],0
		je	..@j14927
		jmp	..@j14928
..@j14927:
		call	SYSTEM_$$_HINSTANCE$$WORD
		mov	word [bp+6],ax
..@j14928:
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
		jne	..@j14933
		mov	ax,word VMT_$CLASSES_$$_TRESOURCESTREAM
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+6]
		push	word [bp+8]
		mov	ax,10
		push	ax
		call	CLASSES$_$TRESOURCESTREAM_$__$$_CREATE$WORD$ANSISTRING$PCHAR$$TRESOURCESTREAM
		mov	word [bp-4],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14949
		push	word [bp-4]
		mov	bx,word [bp+4]
		push	word [bx]
		call	CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
		mov	bx,word [bp+4]
		mov	word [bx],ax
..@j14949:
		call	FPC_POPADDRSTACK
		push	word [bp-4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j14950
		call	FPC_RERAISE
..@j14950:
..@j14933:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14935
		mov	ax,word VMT_$CLASSES_$$_ERESNOTFOUND
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j14960
		mov	word [bp-20],ax
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
		jne	..@j14961
		mov	byte [bp-1],0
..@j14961:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j14965
		call	FPC_RAISE_NESTED
..@j14965:
		call	FPC_DONEEXCEPTION
		jmp	..@j14935
..@j14960:
		call	FPC_RERAISE
..@j14935:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_catches
EXTERN	VMT_$CLASSES_$$_ERESNOTFOUND
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_READCOMPONENT$TCOMPONENT$$TCOMPONENT
EXTERN	CLASSES$_$TRESOURCESTREAM_$__$$_CREATE$WORD$ANSISTRING$PCHAR$$TRESOURCESTREAM
EXTERN	VMT_$CLASSES_$$_TRESOURCESTREAM
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM_$$_HINSTANCE$$WORD
