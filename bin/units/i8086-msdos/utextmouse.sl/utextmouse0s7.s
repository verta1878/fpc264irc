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
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEHIDE
UTEXTMOUSE_$$_TEXTMOUSEHIDE:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],2
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	FPC_INTR
