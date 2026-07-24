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
	GLOBAL FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT
FGL$_$TFPSLIST_$__$$_ERROR$SHORTSTRING$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j382
		mov	ax,word VMT_$FGL_$$_ELISTERROR
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-16]
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],0
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		push	bp
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
		push	ax
		push	bp
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		push	ax
		call	fpc_raiseexception
..@j382:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j383
		call	FPC_RERAISE
..@j383:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	fpc_shortstr_to_ansistr
EXTERN	VMT_$FGL_$$_ELISTERROR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
