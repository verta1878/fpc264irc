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
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEDONE
UTEXTMOUSE_$$_TEXTMOUSEDONE:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
		jne	..@j26
		jmp	..@j27
..@j26:
		mov	word [bp-20],2
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
..@j27:
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	TC_$UTEXTMOUSE_$$_MOUSEACTIVE
