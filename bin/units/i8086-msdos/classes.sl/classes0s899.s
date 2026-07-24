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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITECOLLECTION$TCOLLECTION
CLASSES$_$TWRITER_$__$$_WRITECOLLECTION$TCOLLECTION:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	word [bp+4],0
		jne	..@j22062
		jmp	..@j22063
..@j22062:
		push	word [bp+4]
		call	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
		dec	ax
		mov	word [bp-4],ax
		mov	word [bp-2],0
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j22069
		dec	word [bp-2]
	ALIGN 2
..@j22070:
		inc	word [bp-2]
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITELISTBEGIN
		push	word [bp+6]
		push	word [bp+4]
		push	word [bp-2]
		call	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITELISTEND
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j22070
..@j22069:
..@j22063:
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITELISTEND
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TWRITER_$__$$_WRITELISTEND
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETITEM$SMALLINT$$TCOLLECTIONITEM
EXTERN	CLASSES$_$TWRITER_$__$$_WRITELISTBEGIN
EXTERN	CLASSES$_$TCOLLECTION_$__$$_GETCOUNT$$SMALLINT
