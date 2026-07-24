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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_DEFINEPROPERTIES$TFILER
CLASSES$_$TSTRINGS_$__$$_DEFINEPROPERTIES$TFILER:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		cmp	word [bx+6],0
		jne	..@j7714
		jmp	..@j7715
..@j7714:
		mov	bx,word [bp+4]
		mov	bx,word [bx+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TSTRINGS
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j7716
		jmp	..@j7717
..@j7716:
		push	word [bp+6]
		mov	bx,word [bp+4]
		push	word [bx+6]
		call	CLASSES$_$TSTRINGS_$__$$_EQUALS$TSTRINGS$$BOOLEAN
		test	al,al
		mov	al,0
		jne	..@j7728
		inc	ax
..@j7728:
		mov	byte [bp-1],al
		jmp	..@j7729
..@j7717:
		mov	byte [bp-1],1
..@j7729:
		jmp	..@j7732
..@j7715:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		cmp	ax,0
		mov	al,0
		jle	..@j7737
		inc	ax
..@j7737:
		mov	byte [bp-1],al
..@j7732:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld20
		push	ax
		mov	ax,word [bp+6]
		mov	dx,word CLASSES$_$TSTRINGS_$__$$_READDATA$TREADER
		mov	word [bp-6],dx
		mov	word [bp-4],ax
		lea	ax,[bp-6]
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word CLASSES$_$TSTRINGS_$__$$_WRITEDATA$TWRITER
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		lea	ax,[bp-10]
		push	ax
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TSTRINGS_$__$$_WRITEDATA$TWRITER
EXTERN	CLASSES$_$TSTRINGS_$__$$_READDATA$TREADER
EXTERN	_$CLASSES$_Ld20
EXTERN	CLASSES$_$TSTRINGS_$__$$_EQUALS$TSTRINGS$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TSTRINGS
