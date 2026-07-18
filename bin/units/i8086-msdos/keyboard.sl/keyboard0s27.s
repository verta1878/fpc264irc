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
	GLOBAL KEYBOARD_$$_SYSINITKEYBOARD
KEYBOARD_$$_SYSINITKEYBOARD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [U_$KEYBOARD_$$_KEYBOARD_TYPE],0
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+150]
		mov	ah,0
		and	ax,16
		test	ax,ax
		jne	..@j411
		jmp	..@j412
..@j411:
		mov	word [bp-20],4608
		mov	ax,22
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		cmp	word [bp-20],4608
		jne	..@j419
		jmp	..@j420
..@j419:
		mov	byte [U_$KEYBOARD_$$_KEYBOARD_TYPE],16
..@j420:
..@j412:
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$KEYBOARD_$$_KEYBOARD_TYPE
