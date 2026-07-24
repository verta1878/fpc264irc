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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_CLEAR
CLASSES$_$TSTRINGLIST_$__$$_CLEAR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+22],0
		je	..@j9347
		jmp	..@j9348
..@j9347:
		jmp	..@j9345
..@j9348:
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+124]
		call	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+122]
		call	ax
..@j9345:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
