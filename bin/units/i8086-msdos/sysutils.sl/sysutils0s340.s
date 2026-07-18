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
	GLOBAL SYSUTILS_$$_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_$$_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN:
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
		jne	..@j12144
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12148
		mov	bx,word [bx-2]
..@j12148:
		test	bx,bx
		mov	al,0
		je	..@j12149
		inc	ax
..@j12149:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j12150
		jmp	..@j12151
..@j12150:
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j12158
		mov	ax,word FPC_EMPTYCHAR
..@j12158:
		push	ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j12161
		mov	bx,word [bx-2]
..@j12161:
		push	bx
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
		mov	bx,word [bp+6]
		wait fstp	qword [bx]
		DB	09bh
		cmp	word [bp-4],0
		mov	al,0
		jne	..@j12168
		inc	ax
..@j12168:
		mov	byte [bp-1],al
..@j12151:
..@j12144:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j12145
		call	FPC_RERAISE
..@j12145:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
