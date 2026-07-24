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
	GLOBAL INIT$_$ISO7185
INIT$_$ISO7185:
	GLOBAL _ISO7185_$$_init$
_ISO7185_$$_init$:
		push	bp
		mov	bp,sp
		call	SYSTEM_$$_RANDOMIZE
		mov	byte [TC_$SYSTEM_$$_FILEMODE],0
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	TC_$SYSTEM_$$_FILEMODE
EXTERN	SYSTEM_$$_RANDOMIZE
