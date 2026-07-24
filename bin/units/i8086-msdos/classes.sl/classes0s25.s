BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBITS_$__$$_SETINDEX$LONGINT
CLASSES$_$TBITS_$__$$_SETINDEX$LONGINT:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		call	CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+12],ax
		mov	ax,word [bp+6]
		mov	word [bx+14],ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
