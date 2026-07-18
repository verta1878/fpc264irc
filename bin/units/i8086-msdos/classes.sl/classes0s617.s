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
	GLOBAL CLASSES$_$TBASICACTION_$__$$_REGISTERCHANGES$TBASICACTIONLINK
CLASSES$_$TBASICACTION_$__$$_REGISTERCHANGES$TBASICACTIONLINK:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
		mov	bx,word [bp+6]
		push	word [bx+42]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
