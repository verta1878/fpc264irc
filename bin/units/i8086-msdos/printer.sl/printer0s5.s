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
	GLOBAL PRINTER_$$_SETPRINTEREXIT
PRINTER_$$_SETPRINTEREXIT:
		push	bp
		mov	bp,sp
		mov	ax,word [TC_$SYSTEM_$$_EXITPROC]
		mov	word [U_$PRINTER_$$_OLD_EXIT],ax
		mov	ax,word PRINTER_$$_PRINTER_EXIT
		mov	word [TC_$SYSTEM_$$_EXITPROC],ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	PRINTER_$$_PRINTER_EXIT
EXTERN	U_$PRINTER_$$_OLD_EXIT
EXTERN	TC_$SYSTEM_$$_EXITPROC
