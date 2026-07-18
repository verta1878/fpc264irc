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
	GLOBAL SYSTEM_$$_UNICODETOUTF8$PCHAR$PUNICODECHAR$SMALLINT$$SMALLINT
SYSTEM_$$_UNICODETOUTF8$PCHAR$PUNICODECHAR$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jne	..@j13014
		jmp	..@j13015
..@j13014:
		push	word [bp+8]
		push	word [bp+4]
		push	word [bp+6]
		push	word [bp+6]
		call	fpc_pwidechar_length
		push	ax
		call	SYSTEM_$$_UNICODETOUTF8$PCHAR$WORD$PUNICODECHAR$WORD$$WORD
		mov	word [bp-2],ax
		jmp	..@j13028
..@j13015:
		mov	word [bp-2],0
..@j13028:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_UNICODETOUTF8$PCHAR$WORD$PUNICODECHAR$WORD$$WORD
EXTERN	fpc_pwidechar_length
