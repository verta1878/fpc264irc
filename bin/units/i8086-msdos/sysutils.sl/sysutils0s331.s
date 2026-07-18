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
	GLOBAL SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN:
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
		jne	..@j11968
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j11972
		mov	bx,word [bx-2]
..@j11972:
		test	bx,bx
		mov	al,0
		je	..@j11973
		inc	ax
..@j11973:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j11974
		jmp	..@j11975
..@j11974:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j11982
		mov	ax,word FPC_EMPTYCHAR
..@j11982:
		push	ax
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j11985
		mov	bx,word [bx-2]
..@j11985:
		push	bx
		push	word [bp+6]
		mov	ax,word TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_INTSTRTODATE$crcFE9096A9
		mov	bx,word [bp+8]
		wait fstp	qword [bx]
		DB	09bh
		cmp	word [bp-4],0
		mov	al,0
		jne	..@j11994
		inc	ax
..@j11994:
		mov	byte [bp-1],al
..@j11975:
..@j11968:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11969
		call	FPC_RERAISE
..@j11969:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_INTSTRTODATE$crcFE9096A9
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
