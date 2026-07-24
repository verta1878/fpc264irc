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

EXTERN	MOUSE_$$_INITMOUSE
EXTERN	MOUSE_$$_DONEMOUSE
EXTERN	MOUSE_$$_DETECTMOUSE$$BOOLEAN
EXTERN	MOUSE_$$_SHOWMOUSE
EXTERN	MOUSE_$$_HIDEMOUSE
EXTERN	MOUSE_$$_GETMOUSEXY$WORD$WORD
EXTERN	MOUSE_$$_GETMOUSEBUTTONS$$WORD
; Begin asmlist al_procedures
