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
	GLOBAL CLASSES$_$TREADER_$__$$_READCHAR$$CHAR
CLASSES$_$TREADER_$__$$_READCHAR$$CHAR:
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
		jne	..@j18868
		push	word [bp+4]
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j18876
		mov	bx,word [bx-2]
..@j18876:
		cmp	bx,1
		je	..@j18874
		jmp	..@j18875
..@j18874:
		mov	bx,word [bp-4]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j18879
..@j18875:
..@j18880:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j18880
		push	ax
		push	bp
		call	fpc_raiseexception
..@j18879:
..@j18868:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18869
		call	FPC_RERAISE
..@j18869:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
