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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEBINARY$formal$LONGINT
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEBINARY$formal$LONGINT:
		push	bp
		mov	bp,sp
		push	word [bp+10]
		mov	ax,0
		push	ax
		mov	ax,10
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEDWORD$LONGWORD
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
