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
	GLOBAL SYSTEM_$$_HANDLEERRORFRAME$LONGINT$POINTER
SYSTEM_$$_HANDLEERRORFRAME$LONGINT$POINTER:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		push	ax
		call	SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$NEARPOINTER$POINTER
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
