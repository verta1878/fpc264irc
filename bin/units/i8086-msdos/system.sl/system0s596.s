BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		cmp	word [bp+4],0
		jne	..@j14831
		jmp	..@j14832
..@j14831:
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		jmp	..@j14836
	ALIGN 2
..@j14835:
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
..@j14836:
		cmp	word [bp-4],0
		jne	..@j14840
		jmp	..@j14837
..@j14840:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jne	..@j14835
		jmp	..@j14837
..@j14837:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		mov	al,0
		jne	..@j14843
		inc	ax
..@j14843:
		mov	byte [bp-1],al
		jmp	..@j14844
..@j14832:
		mov	byte [bp-1],0
..@j14844:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
