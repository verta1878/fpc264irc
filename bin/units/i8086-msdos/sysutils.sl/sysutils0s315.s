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
	GLOBAL SYSUTILS_$$_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_$$_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-10],0
		mov	word [bp-12],0
		mov	word [bp-34],0
		mov	word [bp-32],0
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j11006
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS_$$_SPLITDATETIMESTR$ANSISTRING$TFORMATSETTINGS$ANSISTRING$ANSISTRING$$SMALLINT
		mov	word [bp-14],ax
		mov	ax,word [bp-14]
		test	ax,ax
		jl	..@j11019
		test	ax,ax
		je	..@j11020
		dec	ax
		je	..@j11021
		dec	ax
		je	..@j11022
		jmp	..@j11019
..@j11020:
		mov	ax,0
		test	ax,ax
		jne	..@j11027
		mov	ax,word FPC_EMPTYCHAR
..@j11027:
		push	ax
		mov	ax,0
		push	ax
		push	word [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+10]
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_STRTODATE$PCHAR$SMALLINT$ANSISTRING$CHAR$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j11018
..@j11021:
		mov	bx,word [bp-12]
		test	bx,bx
		je	..@j11036
		mov	bx,word [bx-2]
..@j11036:
		cmp	bx,0
		jg	..@j11034
		jmp	..@j11035
..@j11034:
		mov	bx,word [bp+4]
		mov	al,byte [bx+5]
		mov	byte [bp-29],al
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		call	fpc_ansistr_assign
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-34]
		push	ax
		push	word [bp-12]
		call	fpc_ansistr_assign
		mov	ax,word [bp-34]
		test	ax,ax
		jne	..@j11051
		mov	ax,word FPC_EMPTYCHAR
..@j11051:
		push	ax
		mov	bx,word [bp-34]
		test	bx,bx
		je	..@j11054
		mov	bx,word [bx-2]
..@j11054:
		push	bx
		push	word [bp-32]
		mov	al,byte [bp-29]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRTODATE$PCHAR$SMALLINT$ANSISTRING$CHAR$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j11059
..@j11035:
		push	word [bp-10]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
..@j11059:
		jmp	..@j11018
..@j11022:
		mov	bx,word [bp+4]
		mov	al,byte [bx+5]
		mov	byte [bp-29],al
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-34]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		call	fpc_ansistr_assign
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		push	word [bp-12]
		call	fpc_ansistr_assign
		mov	ax,word [bp-32]
		test	ax,ax
		jne	..@j11084
		mov	ax,word FPC_EMPTYCHAR
..@j11084:
		push	ax
		mov	bx,word [bp-32]
		test	bx,bx
		je	..@j11087
		mov	bx,word [bx-2]
..@j11087:
		push	bx
		push	word [bp-34]
		mov	al,byte [bp-29]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRTODATE$PCHAR$SMALLINT$ANSISTRING$CHAR$$TDATETIME
		wait fstp	qword [bp-42]
		DB	09bh
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp-42]
		cld
		mov	cx,4
		rep
		movsw
		push	word [bp-10]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j11018
..@j11019:
..@j11018:
..@j11006:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11007
		call	FPC_RERAISE
..@j11007:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
EXTERN	SYSUTILS_$$_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_STRTODATE$PCHAR$SMALLINT$ANSISTRING$CHAR$$TDATETIME
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSUTILS_$$_SPLITDATETIMESTR$ANSISTRING$TFORMATSETTINGS$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
