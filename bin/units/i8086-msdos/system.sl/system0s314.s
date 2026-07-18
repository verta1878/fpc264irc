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
	GLOBAL fpc_shortstr_enum
fpc_shortstr_enum:
	GLOBAL FPC_SHORTSTR_ENUM
FPC_SHORTSTR_ENUM:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_FPC_SHORTSTR_ENUM_INTERN$SMALLINT$SMALLINT$POINTER$POINTER$OPENSTRING$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j6702
		cmp	dx,0
		jne	..@j6702
		jmp	..@j6703
..@j6702:
		mov	ax,107
		push	ax
		call	SYSTEM_$$_RUNERROR$WORD
..@j6703:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_RUNERROR$WORD
EXTERN	SYSTEM_$$_FPC_SHORTSTR_ENUM_INTERN$SMALLINT$SMALLINT$POINTER$POINTER$OPENSTRING$$LONGINT
