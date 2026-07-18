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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT
CLASSES$_$TWRITER_$__$$_WRITEDESCENDENT$TCOMPONENT$TCOMPONENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+12],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		push	word [bp+8]
		call	CLASSES$_$TWRITER_$__$$_WRITESIGNATURE
		push	word [bp+8]
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITECOMPONENT$TCOMPONENT
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECOMPONENT$TCOMPONENT
EXTERN	CLASSES$_$TWRITER_$__$$_WRITESIGNATURE
