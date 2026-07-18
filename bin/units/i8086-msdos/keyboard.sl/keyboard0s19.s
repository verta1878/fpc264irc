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
	GLOBAL KEYBOARD_$$_TRANSLATEKEYEVENT$LONGWORD$$LONGWORD
KEYBOARD_$$_TRANSLATEKEYEVENT$LONGWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+10],0
		jne	..@j151
		jmp	..@j152
..@j151:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+10]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j157
..@j152:
		push	word [bp+6]
		push	word [bp+4]
		call	KEYBOARD_$$_DEFAULTTRANSLATEKEYEVENT$LONGWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j157:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	KEYBOARD_$$_DEFAULTTRANSLATEKEYEVENT$LONGWORD$$LONGWORD
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
