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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READINT8$$SHORTINT
CLASSES$_$TBINARYOBJECTREADER_$__$$_READINT8$$SHORTINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		lea	ax,[bp-1]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
