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
	GLOBAL CRT_$$_DETECTKEYBOARD
CRT_$$_DETECTKEYBOARD:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	byte [U_$CRT_$$_KEYBOARD_TYPE],0
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+150]
		mov	ah,0
		and	ax,16
		test	ax,ax
		jne	..@j242
		jmp	..@j243
..@j242:
		mov	word [bp-20],4608
		mov	ax,22
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		cmp	word [bp-20],4608
		jne	..@j250
		jmp	..@j251
..@j250:
		mov	byte [U_$CRT_$$_KEYBOARD_TYPE],16
..@j251:
..@j243:
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$CRT_$$_KEYBOARD_TYPE
