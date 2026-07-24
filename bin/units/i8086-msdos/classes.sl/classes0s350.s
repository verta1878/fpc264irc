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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_ADD$ANSISTRING$array_of_const$$SMALLINT
CLASSES$_$TSTRINGS_$__$$_ADD$ANSISTRING$array_of_const$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,18
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
		jne	..@j8179
		push	word [bp+10]
		lea	ax,[bp-18]
		push	ax
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-18]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		mov	word [bp-2],ax
..@j8179:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8180
		call	FPC_RERAISE
..@j8180:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
