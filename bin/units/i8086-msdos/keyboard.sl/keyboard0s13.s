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
	GLOBAL KEYBOARD_$$_SETKEYBOARDDRIVER$TKEYBOARDDRIVER$$BOOLEAN
KEYBOARD_$$_SETKEYBOARDDRIVER$TKEYBOARDDRIVER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [U_$KEYBOARD_$$_KEYBOARDINITIALIZED],0
		je	..@j88
		jmp	..@j89
..@j88:
		mov	ax,word [bp+4]
		mov	di,word U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
		push	ds
		pop	es
		mov	si,ax
		cld
		mov	cx,7
		rep
		movsw
..@j89:
		cmp	byte [U_$KEYBOARD_$$_KEYBOARDINITIALIZED],0
		mov	al,0
		jne	..@j94
		inc	ax
..@j94:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
EXTERN	U_$KEYBOARD_$$_KEYBOARDINITIALIZED
