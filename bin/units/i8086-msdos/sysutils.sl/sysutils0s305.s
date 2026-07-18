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
	GLOBAL SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME
SYSUTILS_$$_INTSTRTOTIME$ANSISTRING$PCHAR$SMALLINT$TFORMATSETTINGS$CHAR$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,296
		mov	bx,word [bp+12]
		mov	word [bx],0
		mov	word [bp-34],0
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10412
		cmp	byte [bp+4],0
		je	..@j10414
		jmp	..@j10415
..@j10414:
		mov	bx,word [bp+6]
		mov	al,byte [bx+6]
		mov	byte [bp+4],al
..@j10415:
		mov	word [bp-10],0
		push	bp
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_SPLITELEMENTS$TTIMEVALUES$SMALLINT$$BOOLEAN
		test	al,al
		je	..@j10420
		jmp	..@j10421
..@j10420:
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SERRINVALIDTIMEFORMAT+2]
		push	bp
		lea	ax,[bp-296]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
		lea	ax,[bp-296]
		mov	word [bp-38],ax
		mov	word [bp-40],4
		lea	ax,[bp-40]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-34]
		call	fpc_ansistr_assign
		jmp	..@j10412
..@j10421:
		cmp	word [bp-10],2
		je	..@j10450
		jmp	..@j10449
..@j10450:
		cmp	word [bp-18],12
		jne	..@j10448
		jmp	..@j10449
..@j10448:
		add	word [bp-18],12
		jmp	..@j10451
..@j10449:
		cmp	word [bp-10],1
		je	..@j10454
		jmp	..@j10453
..@j10454:
		cmp	word [bp-18],12
		je	..@j10452
		jmp	..@j10453
..@j10452:
		mov	word [bp-18],0
..@j10453:
..@j10451:
		push	word [bp-18]
		push	word [bp-16]
		push	word [bp-14]
		push	word [bp-12]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j10457
		jmp	..@j10458
..@j10457:
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-34]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SERRINVALIDTIMEFORMAT+2]
		push	bp
		lea	ax,[bp-296]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
		lea	ax,[bp-296]
		mov	word [bp-38],ax
		mov	word [bp-40],4
		lea	ax,[bp-40]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-34]
		call	fpc_ansistr_assign
..@j10458:
..@j10412:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10413
		call	FPC_RERAISE
..@j10413:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
EXTERN	RESSTR_$SYSCONST_$$_SERRINVALIDTIMEFORMAT
EXTERN	SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_SPLITELEMENTS$TTIMEVALUES$SMALLINT$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
