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
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEINIT$$BOOLEAN
UTEXTMOUSE_$$_TEXTMOUSEINIT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		cmp	word [bp-22],-1
		mov	al,0
		jne	..@j13
		inc	ax
..@j13:
		mov	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],al
		cmp	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
		jne	..@j14
		jmp	..@j15
..@j14:
		mov	word [bp-22],1
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
..@j15:
		mov	al,byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$UTEXTMOUSE_$$_MOUSEACTIVE
EXTERN	FPC_INTR
