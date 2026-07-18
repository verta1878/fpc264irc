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
	GLOBAL CLASSES$_$TREADER_$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS_$$_FINDINFIELDTABLE$TCOMPONENT
CLASSES$_$TREADER_$_FINDCOMPONENTCLASS$ANSISTRING$$TCOMPONENTCLASS_$$_FINDINFIELDTABLE$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		jmp	..@j20993
	ALIGN 2
..@j20992:
		mov	bx,word [bp-10]
		mov	ax,word [bx+12]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j20997
		jmp	..@j20998
..@j20997:
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-12],ax
		mov	word [bp-8],0
		mov	ax,word [bp-12]
		cmp	ax,word [bp-8]
		jl	..@j21004
		dec	word [bp-8]
	ALIGN 2
..@j21005:
		inc	word [bp-8]
		mov	bx,word [bp-4]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si+2]
		mov	word [bp-6],ax
		push	word [bp-6]
		mov	bx,word [bp+6]
		lea	ax,[bx-260]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAMEIS$SHORTSTRING$$BOOLEAN
		test	al,al
		jne	..@j21010
		jmp	..@j21009
..@j21010:
		push	word [bp-6]
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j21008
		jmp	..@j21009
..@j21008:
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	word [bx-2],ax
		jmp	..@j20917
..@j21009:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-8]
		jg	..@j21005
..@j21004:
..@j20998:
		mov	bx,word [bp-10]
		mov	ax,word [bx+4]
		mov	word [bp-10],ax
..@j20993:
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		cmp	ax,word [bp-10]
		jne	..@j20992
		jmp	..@j20994
..@j20994:
..@j20917:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAMEIS$SHORTSTRING$$BOOLEAN
