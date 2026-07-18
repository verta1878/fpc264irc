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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM
CLASSES$_$TCOLLECTION_$__$$_ADD$$TCOLLECTIONITEM:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		push	word [bx+6]
		mov	ax,1
		push	ax
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		mov	ax,word [bx+68]
		call	ax
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
