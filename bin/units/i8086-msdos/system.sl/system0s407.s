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
	GLOBAL fpc_setstring_ansistr_pwidechar
fpc_setstring_ansistr_pwidechar:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+10]
		mov	word [bx],0
		cmp	word [bp+8],0
		jne	..@j10578
		jmp	..@j10577
..@j10578:
		cmp	word [bp+6],0
		jg	..@j10576
		jmp	..@j10577
..@j10576:
		push	word [bp+8]
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		push	word [bp+6]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER]
		call	ax
		jmp	..@j10587
..@j10577:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j10587:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_setlength
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
