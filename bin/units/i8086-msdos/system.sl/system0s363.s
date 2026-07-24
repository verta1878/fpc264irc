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
	GLOBAL fpc_ansistr_to_ansistr
fpc_ansistr_to_ansistr:
	GLOBAL FPC_ANSISTR_TO_ANSISTR
FPC_ANSISTR_TO_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-4],0
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
		jne	..@j9047
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9055
		mov	bx,word [bx-2]
..@j9055:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j9056
		jmp	..@j9057
..@j9056:
		mov	dx,word [bp+4]
		mov	ax,word [bp+4]
		sub	ax,1
		jbe	..@j9065
		jmp	..@j9064
..@j9065:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9063
..@j9064:
..@j9063:
		mov	word [bp+4],dx
		push	word [bp+6]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-22],ax
		mov	dx,word [bp-22]
		mov	ax,word [bp-22]
		sub	ax,1
		jbe	..@j9079
		jmp	..@j9078
..@j9079:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9077
..@j9078:
..@j9077:
		mov	word [bp-6],dx
		mov	ax,word [bp-6]
		cmp	ax,word [bp+4]
		je	..@j9082
		jmp	..@j9084
..@j9084:
		cmp	word [bp-6],-1
		je	..@j9082
		jmp	..@j9083
..@j9082:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx-8],ax
		jmp	..@j9101
..@j9083:
		lea	ax,[bp-4]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_unicodestr
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j9108
		mov	bx,word [bx-2]
..@j9108:
		mov	word [bp-2],bx
		push	word [bp-4]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
..@j9101:
..@j9057:
..@j9047:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9048
		call	FPC_RERAISE
..@j9048:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_to_unicodestr
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
