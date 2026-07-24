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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_GETITEMATTR$SMALLINT$SMALLINT$$ANSISTRING
CLASSES$_$TCOLLECTION_$__$$_GETITEMATTR$SMALLINT$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+10]
		push	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
		push	word [bp-2]
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TFPLIST_$__$$_GET$SMALLINT$$POINTER
