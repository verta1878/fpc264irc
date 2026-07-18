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
	GLOBAL CLASSES$_$TFPLIST_$__$$_INDEXOFITEM$POINTER$TDIRECTION$$SMALLINT
CLASSES$_$TFPLIST_$__$$_INDEXOFITEM$POINTER$TDIRECTION$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		je	..@j5013
		jmp	..@j5014
..@j5013:
		push	word [bp+10]
		push	word [bp+8]
		call	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j5021
..@j5014:
		mov	bx,word [bp+10]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-2],ax
		jmp	..@j5025
	ALIGN 2
..@j5024:
		mov	ax,word [bp-2]
		dec	ax
		mov	word [bp-2],ax
..@j5025:
		cmp	word [bp-2],0
		jge	..@j5029
		jmp	..@j5026
..@j5029:
		mov	bx,word [bp+10]
		mov	bx,word [bx+2]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		cmp	ax,word [bp+8]
		jne	..@j5024
		jmp	..@j5026
..@j5026:
..@j5021:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	CLASSES$_$TFPLIST_$__$$_INDEXOF$POINTER$$SMALLINT
