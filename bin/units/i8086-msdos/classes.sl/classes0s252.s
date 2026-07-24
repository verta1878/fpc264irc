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
	GLOBAL CLASSES$_$TLISTENUMERATOR_$__$$_GETCURRENT$$POINTER
CLASSES$_$TLISTENUMERATOR_$__$$_GETCURRENT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		push	word [bx+2]
		mov	bx,word [bp+4]
		push	word [bx+4]
		call	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TLIST_$__$$_GET$SMALLINT$$POINTER
