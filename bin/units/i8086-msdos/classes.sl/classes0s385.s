BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_SETSORTED$BOOLEAN
CLASSES$_$TSTRINGLIST_$__$$_SETSORTED$BOOLEAN:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j9073
		jmp	..@j9074
..@j9073:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_SETSORTSTYLE$TSTRINGSSORTSTYLE
		jmp	..@j9079
..@j9074:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_SETSORTSTYLE$TSTRINGSSORTSTYLE
..@j9079:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_SETSORTSTYLE$TSTRINGSSORTSTYLE
