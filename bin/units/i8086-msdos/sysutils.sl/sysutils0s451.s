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
	GLOBAL SYSUTILS_$$_ASSERTERRORHANDLER$SHORTSTRING$SHORTSTRING$LONGINT$POINTER
SYSUTILS_$$_ASSERTERRORHANDLER$SHORTSTRING$SHORTSTRING$LONGINT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,36
		mov	word [bp-2],0
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
		jne	..@j14779
		lea	ax,[bp-18]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		cmp	word [bp-18],0
		je	..@j14781
		jmp	..@j14782
..@j14781:
		lea	ax,[bp-2]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SASSERTIONFAILED+2]
		call	fpc_ansistr_assign
		jmp	..@j14793
..@j14782:
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-18]
		call	fpc_ansistr_assign
..@j14793:
		mov	ax,word VMT_$SYSUTILS_$$_EASSERTIONFAILED
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SASSERTERROR+2]
		mov	ax,word [bp-2]
		mov	dx,0
		mov	word [bp-34],ax
		mov	word [bp-32],dx
		mov	word [bp-36],11
		mov	ax,word [bp+10]
		mov	word [bp-28],ax
		mov	word [bp-30],4
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		mov	word [bp-24],0
		lea	ax,[bp-36]
		push	ax
		mov	ax,2
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		push	ax
		call	fpc_raiseexception
..@j14779:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j14780
		call	FPC_RERAISE
..@j14780:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SASSERTERROR
EXTERN	VMT_$SYSUTILS_$$_EASSERTIONFAILED
EXTERN	fpc_ansistr_assign
EXTERN	RESSTR_$SYSCONST_$$_SASSERTIONFAILED
EXTERN	fpc_shortstr_to_ansistr
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
