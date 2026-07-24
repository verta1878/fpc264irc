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
	GLOBAL KEYBOARD_$$_TRANSLATEKEYEVENTUNICODE$LONGWORD$$LONGWORD
KEYBOARD_$$_TRANSLATEKEYEVENTUNICODE$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+12],0
		jne	..@j116
		jmp	..@j117
..@j116:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+12]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j122
..@j117:
		push	word [bp+6]
		push	word [bp+4]
		call	KEYBOARD_$$_DEFAULTTRANSLATEKEYEVENTUNICODE$LONGWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j122:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	KEYBOARD_$$_DEFAULTTRANSLATEKEYEVENTUNICODE$LONGWORD$$LONGWORD
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
