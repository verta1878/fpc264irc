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
	GLOBAL CLASSES$_$DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN_$$_DOINIT$TCLASS$$BOOLEAN
CLASSES$_$DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN_$$_DOINIT$TCLASS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,274
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j14987
		mov	byte [bp-1],0
		mov	ax,word [bp+4]
		mov	dx,word VMT_$CLASSES_$$_TCOMPONENT
		cmp	ax,dx
		je	..@j14991
		jmp	..@j14993
..@j14993:
		mov	ax,word [bp+4]
		mov	bx,word [bp+6]
		cmp	ax,word [bx+4]
		je	..@j14991
		jmp	..@j14992
..@j14991:
		jmp	..@j14987
..@j14992:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		push	ax
		call	CLASSES$_$DEFAULTINITHANDLER$TCOMPONENT$TCLASS$$BOOLEAN_$$_DOINIT$TCLASS$$BOOLEAN
		mov	byte [bp-1],al
		lea	ax,[bp-18]
		push	ax
		push	word [bp+4]
		lea	ax,[bp-274]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-274]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-18]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+6]
		push	ax
		call	CLASSES_$$_CREATECOMPONENTFROMRES$ANSISTRING$WORD$TCOMPONENT$$BOOLEAN
		test	al,al
		jne	..@j15006
		jmp	..@j15008
..@j15008:
		cmp	byte [bp-1],0
		jne	..@j15006
		jmp	..@j15007
..@j15006:
		mov	byte [bp-1],1
		jmp	..@j15025
..@j15007:
		mov	byte [bp-1],0
..@j15025:
..@j14987:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14988
		call	FPC_RERAISE
..@j14988:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES_$$_CREATECOMPONENTFROMRES$ANSISTRING$WORD$TCOMPONENT$$BOOLEAN
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
