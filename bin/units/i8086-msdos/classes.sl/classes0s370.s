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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_INSERTOBJECT$SMALLINT$ANSISTRING$TOBJECT
CLASSES$_$TSTRINGS_$__$$_INSERTOBJECT$SMALLINT$ANSISTRING$TOBJECT:
		push	bp
		mov	bp,sp
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+106]
		call	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+4]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		mov	sp,bp
		pop	bp
		ret	8
