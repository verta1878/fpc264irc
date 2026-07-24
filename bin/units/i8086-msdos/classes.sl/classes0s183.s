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
	GLOBAL CLASSES$_$TCOLLECTION_$__$$_INSERTITEM$TCOLLECTIONITEM
CLASSES$_$TCOLLECTION_$__$$_INSERTITEM$TCOLLECTIONITEM:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		push	word [bx+6]
		push	word [bp+4]
		call	fpc_do_is
		test	al,al
		je	..@j4185
		jmp	..@j4186
..@j4185:
		jmp	..@j4183
..@j4186:
		mov	bx,word [bp+6]
		push	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	word [bx+6],ax
		mov	si,word [bp+4]
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [si+8],ax
		mov	bx,word [bp+6]
		inc	word [bx+12]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		push	word [bp+6]
		call	CLASSES$_$TCOLLECTION_$__$$_CHANGED
..@j4183:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOLLECTION_$__$$_CHANGED
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	fpc_do_is
