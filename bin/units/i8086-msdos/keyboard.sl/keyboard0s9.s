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
	GLOBAL KEYBOARD_$$_INITKEYBOARD
KEYBOARD_$$_INITKEYBOARD:
		push	bp
		mov	bp,sp
		cmp	byte [U_$KEYBOARD_$$_KEYBOARDINITIALIZED],0
		je	..@j44
		jmp	..@j45
..@j44:
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER],0
		jne	..@j46
		jmp	..@j47
..@j46:
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER]
		call	ax
..@j47:
		mov	byte [U_$KEYBOARD_$$_KEYBOARDINITIALIZED],1
..@j45:
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
EXTERN	U_$KEYBOARD_$$_KEYBOARDINITIALIZED
