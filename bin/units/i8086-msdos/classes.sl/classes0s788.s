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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_READINT32$$LONGINT
CLASSES$_$TBINARYOBJECTREADER_$__$$_READINT32$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TBINARYOBJECTREADER_$__$$_READDWORD$$LONGWORD
