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
	GLOBAL KEYBOARD_$$_PUTKEYEVENT$LONGWORD
KEYBOARD_$$_PUTKEYEVENT$LONGWORD:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		mov	word [U_$KEYBOARD_$$_PENDINGKEYEVENT],ax
		mov	ax,word [bp+6]
		mov	word [U_$KEYBOARD_$$_PENDINGKEYEVENT+2],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$KEYBOARD_$$_PENDINGKEYEVENT
