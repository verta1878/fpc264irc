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
	GLOBAL SYSUTILS_$$_FINDNEXT$TUNICODESEARCHREC$$LONGINT
SYSUTILS_$$_FINDNEXT$TUNICODESEARCHREC$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-6],0
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2614
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	SYSUTILS_$$_INTERNALFINDNEXT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j2623
		cmp	ax,0
		jne	..@j2623
		jmp	..@j2622
..@j2622:
		mov	bx,word [bp+4]
		lea	ax,[bx+16]
		push	ax
		lea	ax,[bp-22]
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-22]
		call	fpc_unicodestr_assign
..@j2623:
..@j2614:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2615
		call	FPC_RERAISE
..@j2615:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSUTILS_$$_INTERNALFINDNEXT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
