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
	GLOBAL INIT$_$PRINTER
INIT$_$PRINTER:
	GLOBAL _PRINTER_$$_init$
_PRINTER_$$_init$:
		push	bp
		mov	bp,sp
		mov	ax,word _$PRINTER$_Ld1
		push	ax
		call	PRINTER_$$_INITPRINTER$SHORTSTRING
		call	PRINTER_$$_SETPRINTEREXIT
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	PRINTER_$$_SETPRINTEREXIT
EXTERN	PRINTER_$$_INITPRINTER$SHORTSTRING
EXTERN	_$PRINTER$_Ld1
