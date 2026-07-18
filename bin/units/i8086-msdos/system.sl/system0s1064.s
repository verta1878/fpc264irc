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
	GLOBAL fpc_write_text_ansistr
fpc_write_text_ansistr:
	GLOBAL FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-6],0
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
		jne	..@j21985
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21989
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21990
..@j21989:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21990:
		cmp	word [bx],0
		jne	..@j21987
		jmp	..@j21988
..@j21987:
		jmp	..@j21985
..@j21988:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21995
		cmp	dx,-10319
		je	..@j21994
..@j21995:
		test	ax,ax
		jne	..@j21996
		cmp	dx,-10318
		je	..@j21993
..@j21996:
		jmp	..@j21992
..@j21993:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j21999
		mov	bx,word [bx-2]
..@j21999:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp+8]
		mov	ax,word [bp+10]
		cmp	ax,word [bp-2]
		jg	..@j22000
		jl	..@j22001
		cmp	dx,word [bp-4]
		ja	..@j22000
		jmp	..@j22001
		jmp	..@j22001
..@j22000:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		mov	bx,word [bp-4]
		mov	cx,word [bp-2]
		sub	ax,bx
		sbb	dx,cx
		push	dx
		push	ax
		call	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
..@j22001:
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jg	..@j22006
		jl	..@j22007
		cmp	dx,0
		ja	..@j22006
		jmp	..@j22007
..@j22006:
		mov	ax,word [bp+6]
		mov	word [bp-24],ax
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-22],ax
		mov	dx,word [bp-22]
		mov	ax,word [bp-22]
		sub	ax,1
		jbe	..@j22019
		jmp	..@j22018
..@j22019:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j22017
..@j22018:
..@j22017:
		mov	bx,word [bp-24]
		cmp	dx,word [bx+828]
		jne	..@j22008
		jmp	..@j22009
..@j22008:
		lea	ax,[bp-6]
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx+828]
		call	FPC_ANSISTR_TO_ANSISTR
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-6]
		test	ax,ax
		jne	..@j22032
		mov	ax,word FPC_EMPTYCHAR
..@j22032:
		push	ax
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j22035
		mov	bx,word [bx-2]
..@j22035:
		push	bx
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
		jmp	..@j22036
..@j22009:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j22041
		mov	ax,word FPC_EMPTYCHAR
..@j22041:
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
..@j22036:
..@j22007:
		jmp	..@j21991
..@j21994:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22046
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22047
..@j22046:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22047:
		mov	word [bx],105
		jmp	..@j21991
..@j21992:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22050
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22051
..@j22050:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22051:
		mov	word [bx],103
..@j21991:
..@j21985:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21986
		call	FPC_RERAISE
..@j21986:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FPC_WRITEBUFFER$TEXT$formal$SMALLINT
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_ANSISTR_TO_ANSISTR
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	SYSTEM_$$_FPC_WRITEBLANKS$TEXT$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
