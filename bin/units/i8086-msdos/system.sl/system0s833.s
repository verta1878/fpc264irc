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
	GLOBAL SYSTEM_$$_FPC_LIBINITIALIZEUNITS
SYSTEM_$$_FPC_LIBINITIALIZEUNITS:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
		push	bp
		mov	bp,sp
		mov	byte [operatingsystem_islibrary],1
		mov	byte [TC_$SYSTEM_$$_MODULEISLIB],1
		call	FPC_INITIALIZEUNITS
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INITIALIZEUNITS
EXTERN	TC_$SYSTEM_$$_MODULEISLIB
EXTERN	operatingsystem_islibrary
