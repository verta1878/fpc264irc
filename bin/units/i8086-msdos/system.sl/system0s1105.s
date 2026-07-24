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
	GLOBAL fpc_read_text_unicodestr
fpc_read_text_unicodestr:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j23293
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		call	FPC_READ_TEXT_ANSISTR
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j23303
		mov	ax,word FPC_EMPTYCHAR
..@j23303:
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j23312
		mov	bx,word [bx-2]
..@j23312:
		push	bx
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+40]
		call	ax
..@j23293:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j23294
		call	FPC_RERAISE
..@j23294:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_READ_TEXT_ANSISTR
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
