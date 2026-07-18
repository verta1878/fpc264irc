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
	GLOBAL SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,274
		mov	word [bp-272],0
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
		jne	..@j3610
		mov	ax,word [bp+8]
		mov	word [bp-274],ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-270]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longint
		push	word [bp-274]
		lea	ax,[bp-272]
		push	ax
		lea	ax,[bp-270]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-272]
		call	fpc_ansistr_assign
		push	word [bp-274]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j3610:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-272]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3611
		call	FPC_RERAISE
..@j3611:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_longint
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
