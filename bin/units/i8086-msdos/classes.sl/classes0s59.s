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
	GLOBAL CLASSES$_$TSTREAM_$__$$_READDWORD$$LONGWORD
CLASSES$_$TSTREAM_$__$$_READDWORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+4]
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
