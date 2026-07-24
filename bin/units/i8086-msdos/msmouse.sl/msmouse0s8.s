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
	GLOBAL MSMOUSE_$$_GETMOUSEBUTTONS$$WORD
MSMOUSE_$$_GETMOUSEBUTTONS$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	MOUSE_$$_GETMOUSEBUTTONS$$WORD
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures

EXTERN	MOUSE_$$_GETMOUSEBUTTONS$$WORD
