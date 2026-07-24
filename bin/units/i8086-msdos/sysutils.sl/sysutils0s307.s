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
	GLOBAL SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING
SYSUTILS$_$INTSTRTOTIME$crc43AF2F28_$$_STRPAS$PCHAR$SMALLINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],255
		jg	..@j10745
		jmp	..@j10746
..@j10745:
		mov	word [bp+4],255
..@j10746:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+4]
		call	fpc_shortstr_setlength
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+1]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_shortstr_setlength
