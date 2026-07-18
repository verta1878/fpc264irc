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
	GLOBAL SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAMEIND$LONGINT$NEARPOINTER$POINTER:
		push	bp
		mov	bp,sp
		lea	ax,[bp+4]
		push	ax
		lea	ax,[bp+6]
		push	ax
		call	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$NEARPOINTER$POINTER
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$NEARPOINTER$POINTER
EXTERN	SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
