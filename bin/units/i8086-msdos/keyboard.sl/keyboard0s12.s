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
	GLOBAL KEYBOARD_$$_POLLKEYEVENT$$LONGWORD
KEYBOARD_$$_POLLKEYEVENT$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	dx,word [U_$KEYBOARD_$$_PENDINGKEYEVENT]
		mov	ax,word [U_$KEYBOARD_$$_PENDINGKEYEVENT+2]
		cmp	ax,0
		jne	..@j75
		cmp	dx,0
		jne	..@j75
		jmp	..@j76
..@j75:
		mov	ax,word [U_$KEYBOARD_$$_PENDINGKEYEVENT]
		mov	word [bp-4],ax
		mov	ax,word [U_$KEYBOARD_$$_PENDINGKEYEVENT+2]
		mov	word [bp-2],ax
		jmp	..@j73
..@j76:
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+6],0
		jne	..@j79
		jmp	..@j80
..@j79:
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+6]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j83
..@j80:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j83:
..@j73:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
EXTERN	U_$KEYBOARD_$$_PENDINGKEYEVENT
