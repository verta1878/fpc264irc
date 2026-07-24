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
	GLOBAL SYSUTILS_$$_DATETIMETOSTRING$crcFCD1FCF1
SYSUTILS_$$_DATETIMETOSTRING$crcFCD1FCF1:
		push	bp
		mov	bp,sp
		sub	sp,300
		mov	bx,word [bp+18]
		mov	word [bx],0
		mov	word [bp-300],0
		mov	ax,1
		push	ax
		lea	ax,[bp-296]
		push	ax
		lea	ax,[bp-290]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11180
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-262]
		push	ax
		lea	ax,[bp-264]
		push	ax
		lea	ax,[bp-266]
		push	ax
		lea	ax,[bp-268]
		push	ax
		call	SYSUTILS_$$_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+8]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-270]
		push	ax
		lea	ax,[bp-272]
		push	ax
		lea	ax,[bp-274]
		push	ax
		lea	ax,[bp-276]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		mov	word [bp-2],0
		lea	ax,[bp-258]
		mov	word [bp-260],ax
		cmp	word [bp+16],0
		jne	..@j11206
		jmp	..@j11207
..@j11206:
		push	bp
		push	word [bp+16]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
		jmp	..@j11216
..@j11207:
		push	bp
		mov	ax,word _$SYSUTILS$_Ld666
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
..@j11216:
		mov	si,word [bp-2]
		mov	byte [bp+si-258],0
		mov	ax,word [bp+18]
		push	ax
		lea	ax,[bp-300]
		push	ax
		lea	ax,[bp-258]
		push	ax
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		push	word [bp-300]
		call	fpc_ansistr_assign
..@j11180:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-300]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11181
		call	FPC_RERAISE
..@j11181:
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld666
EXTERN	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
EXTERN	SYSUTILS_$$_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
