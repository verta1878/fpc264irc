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
	GLOBAL CLASSES$_$TSTREAM_$__$$_READ$formal$LONGINT$$LONGINT
CLASSES$_$TSTREAM_$__$$_READ$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+10]
		call	CLASSES$_$TSTREAM_$__$$_READNOTIMPLEMENTED
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TSTREAM_$__$$_READNOTIMPLEMENTED
