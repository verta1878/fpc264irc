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
	GLOBAL SYSUTILS_$$_FINDFIRST$UNICODESTRING$LONGINT$TUNICODESEARCHREC$$LONGINT
SYSUTILS_$$_FINDFIRST$UNICODESTRING$LONGINT$TUNICODESEARCHREC$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TUNICODESEARCHREC
		push	ax
		call	fpc_initialize
		mov	word [bp-6],0
		mov	word [bp-24],0
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
		jne	..@j2582
		lea	ax,[bp-22]
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
		push	word [bp-22]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bp-26],ax
		push	word [bp-26]
		mov	ax,word INIT_$SYSUTILS_$$_TABSTRACTSEARCHREC
		push	ax
		call	fpc_finalize
		push	word [bp-26]
		lea	ax,[bp-6]
		push	ax
		call	SYSUTILS_$$_INTERNALFINDFIRST$RAWBYTESTRING$LONGINT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j2599
		cmp	ax,0
		jne	..@j2599
		jmp	..@j2598
..@j2598:
		mov	bx,word [bp+4]
		lea	ax,[bx+16]
		push	ax
		lea	ax,[bp-24]
		push	ax
		push	word [bp-6]
		call	fpc_ansistr_to_unicodestr
		push	word [bp-24]
		call	fpc_unicodestr_assign
..@j2599:
..@j2582:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2583
		call	FPC_RERAISE
..@j2583:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSUTILS_$$_INTERNALFINDFIRST$RAWBYTESTRING$LONGINT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
EXTERN	fpc_finalize
EXTERN	INIT_$SYSUTILS_$$_TABSTRACTSEARCHREC
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_initialize
EXTERN	INIT_$SYSUTILS_$$_TUNICODESEARCHREC
