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
	GLOBAL INIT$_$OBJECTS
INIT$_$OBJECTS:
	GLOBAL _OBJECTS_$$_init$
_OBJECTS_$$_init$:
		push	bp
		mov	bp,sp
		mov	word [U_$OBJECTS_$$_INVALIDHANDLE],-1
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
