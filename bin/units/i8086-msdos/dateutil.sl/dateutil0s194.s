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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR:
		push	bp
		mov	bp,sp
		sub	sp,28
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
		jne	..@j3869
		lea	ax,[bp-16]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SNOARRAYMATCH+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx-2]
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-26],cx
		mov	word [bp-24],ax
		mov	word [bp-28],0
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	ax,word [bx-12]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],0
		lea	ax,[bp-28]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-16]
		call	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
..@j3869:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3870
		call	FPC_RERAISE
..@j3870:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	RESSTR_$SYSCONST_$$_SNOARRAYMATCH
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
