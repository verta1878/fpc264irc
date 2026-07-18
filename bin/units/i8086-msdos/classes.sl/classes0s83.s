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
	GLOBAL CLASSES$_$TMEMORYSTREAM_$__$$_SETCAPACITY$SMALLINT
CLASSES$_$TMEMORYSTREAM_$__$$_SETCAPACITY$SMALLINT:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		push	word [bp+6]
		lea	ax,[bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+4]
		call	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SETPOINTER$POINTER$SMALLINT
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+8],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCUSTOMMEMORYSTREAM_$__$$_SETPOINTER$POINTER$SMALLINT
