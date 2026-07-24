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
	GLOBAL OBJECTS$_$TOBJECT_$__$$_IS_OBJECT$POINTER$$BOOLEAN
OBJECTS$_$TOBJECT_$__$$_IS_OBJECT$POINTER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	byte [bp-1],0
		jmp	..@j211
	ALIGN 2
..@j210:
		mov	ax,word [bp-6]
		cmp	ax,word [bp+4]
		je	..@j213
		jmp	..@j214
..@j213:
		mov	byte [bp-1],1
		jmp	..@j212
..@j214:
		mov	bx,word [bp-6]
		mov	ax,word [bx+8]
		mov	word [bp-6],ax
..@j211:
		cmp	word [bp-6],0
		jne	..@j210
		jmp	..@j212
..@j212:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
