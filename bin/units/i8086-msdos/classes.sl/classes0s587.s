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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_REMOVECOMPONENT$TCOMPONENT
CLASSES$_$TCOMPONENT_$__$$_REMOVECOMPONENT$TCOMPONENT:
		push	bp
		mov	bp,sp
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TCOMPONENT_$__$$_REMOVE$TCOMPONENT
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	CLASSES$_$TCOMPONENT_$__$$_SETDESIGNING$BOOLEAN$BOOLEAN
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TCOMPONENT_$__$$_SETDESIGNING$BOOLEAN$BOOLEAN
EXTERN	CLASSES$_$TCOMPONENT_$__$$_REMOVE$TCOMPONENT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_SETREFERENCE$BOOLEAN
