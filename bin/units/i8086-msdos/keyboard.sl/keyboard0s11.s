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
	GLOBAL KEYBOARD_$$_GETKEYEVENT$$LONGWORD
KEYBOARD_$$_GETKEYEVENT$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	dx,word [U_$KEYBOARD_$$_PENDINGKEYEVENT]
		mov	ax,word [U_$KEYBOARD_$$_PENDINGKEYEVENT+2]
		cmp	ax,0
		jne	..@j60
		cmp	dx,0
		jne	..@j60
		jmp	..@j61
..@j60:
		mov	ax,word [U_$KEYBOARD_$$_PENDINGKEYEVENT]
		mov	word [bp-4],ax
		mov	ax,word [U_$KEYBOARD_$$_PENDINGKEYEVENT+2]
		mov	word [bp-2],ax
		mov	word [U_$KEYBOARD_$$_PENDINGKEYEVENT],0
		mov	word [U_$KEYBOARD_$$_PENDINGKEYEVENT+2],0
		jmp	..@j58
..@j61:
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+4],0
		jne	..@j66
		jmp	..@j67
..@j66:
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+4]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j70
..@j67:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j70:
..@j58:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
EXTERN	U_$KEYBOARD_$$_PENDINGKEYEVENT
