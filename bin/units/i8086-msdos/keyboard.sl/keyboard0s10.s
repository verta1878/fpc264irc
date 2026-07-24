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
	GLOBAL KEYBOARD_$$_DONEKEYBOARD
KEYBOARD_$$_DONEKEYBOARD:
		push	bp
		mov	bp,sp
		cmp	byte [U_$KEYBOARD_$$_KEYBOARDINITIALIZED],0
		jne	..@j52
		jmp	..@j53
..@j52:
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+2],0
		jne	..@j54
		jmp	..@j55
..@j54:
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+2]
		call	ax
..@j55:
		mov	byte [U_$KEYBOARD_$$_KEYBOARDINITIALIZED],0
..@j53:
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
EXTERN	U_$KEYBOARD_$$_KEYBOARDINITIALIZED
