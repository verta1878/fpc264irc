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
	GLOBAL fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp+6],0
		je	..@j11073
		jmp	..@j11074
..@j11073:
		jmp	..@j11067
..@j11074:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jg	..@j11083
		jmp	..@j11084
..@j11083:
		push	word [bp+6]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER]
		call	ax
..@j11084:
..@j11067:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	SYSTEM_$$_INDEXWORD$formal$SMALLINT$WORD$$SMALLINT
EXTERN	fpc_ansistr_assign
