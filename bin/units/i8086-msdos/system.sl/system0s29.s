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
	GLOBAL SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	dx,word [bp+4]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,4
		push	ax
		call	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_HEXSTR$LONGINT$BYTE$$SHORTSTRING
