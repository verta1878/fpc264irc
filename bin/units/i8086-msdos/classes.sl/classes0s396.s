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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_DESTROY
CLASSES$_$TSTRINGLIST_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j9293
		jmp	..@j9294
..@j9293:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j9294:
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TSTRINGS_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j9309
		jmp	..@j9308
..@j9309:
		cmp	word [bp+4],0
		jne	..@j9307
		jmp	..@j9308
..@j9307:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j9308:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGS_$__$$_DESTROY
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_INTERNALCLEAR$SMALLINT$BOOLEAN
