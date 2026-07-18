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
	GLOBAL KEYBOARD_$$_POLLSHIFTSTATEEVENT$$LONGWORD
KEYBOARD_$$_POLLSHIFTSTATEEVENT$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+8],0
		jne	..@j101
		jmp	..@j102
..@j101:
		mov	ax,word [U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER+8]
		call	ax
		mov	ah,0
		mov	cl,16
		shl	ax,cl
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j105
..@j102:
		mov	word [bp-4],0
		mov	word [bp-2],0
..@j105:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$KEYBOARD_$$_CURRENTKEYBOARDDRIVER
