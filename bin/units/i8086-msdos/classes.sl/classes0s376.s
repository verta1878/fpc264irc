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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_SETTEXT$PCHAR
CLASSES$_$TSTRINGS_$__$$_SETTEXT$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-2],0
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
		jne	..@j8830
		cmp	word [bp+4],0
		jne	..@j8832
		jmp	..@j8833
..@j8832:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		jmp	..@j8838
..@j8833:
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j8838:
		push	word [bp+6]
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
..@j8830:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8831
		call	FPC_RERAISE
..@j8831:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
