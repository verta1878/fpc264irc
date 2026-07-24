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
	GLOBAL SYSTEM_$$_DO_EXIT
SYSTEM_$$_DO_EXIT:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
		push	bp
		mov	bp,sp
		call	SYSTEM_$$_INTERNALEXIT
		call	SYSTEM_$$_SYSTEM_EXIT
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_SYSTEM_EXIT
EXTERN	SYSTEM_$$_INTERNALEXIT
