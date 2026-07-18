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
	GLOBAL PRINTER_$$_PRINTER_EXIT
PRINTER_$$_PRINTER_EXIT:
		push	bp
		mov	bp,sp
		cmp	byte [U_$PRINTER_$$_LSTAVAILABLE],0
		jne	..@j9
		jmp	..@j10
..@j9:
		mov	ax,word U_$PRINTER_$$_LST
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
..@j10:
		mov	ax,word [U_$PRINTER_$$_OLD_EXIT]
		mov	word [TC_$SYSTEM_$$_EXITPROC],ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_EXITPROC
EXTERN	U_$PRINTER_$$_OLD_EXIT
EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	U_$PRINTER_$$_LST
EXTERN	U_$PRINTER_$$_LSTAVAILABLE
