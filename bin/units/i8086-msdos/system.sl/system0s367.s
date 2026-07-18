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
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+6],0
		je	..@j9210
		jmp	..@j9212
..@j9212:
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		je	..@j9210
		jmp	..@j9211
..@j9210:
		mov	word [bp-2],0
		jmp	..@j9215
..@j9211:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
		mov	word [bp-2],ax
..@j9215:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	word [bp-2],0
		jg	..@j9230
		jmp	..@j9231
..@j9230:
		mov	ax,word [bp+4]
		mov	dx,word [bp+4]
		sub	dx,1
		jbe	..@j9239
		jmp	..@j9238
..@j9239:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9237
..@j9238:
..@j9237:
		mov	word [bp+4],ax
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j9231:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
