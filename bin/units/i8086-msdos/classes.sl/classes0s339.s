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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_PUT$SMALLINT$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_PUT$SMALLINT$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		mov	word [bp-2],ax
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+94]
		call	ax
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TSTRINGS_$__$$_INSERTOBJECT$SMALLINT$ANSISTRING$TOBJECT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TSTRINGS_$__$$_INSERTOBJECT$SMALLINT$ANSISTRING$TOBJECT
