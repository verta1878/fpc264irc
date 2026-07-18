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
	GLOBAL KEYBOARD_$$_FUNCTIONKEYNAME$WORD$$SHORTSTRING
KEYBOARD_$$_FUNCTIONKEYNAME$WORD$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,-255
		sbb	dx,0
		cmp	dx,0
		jl	..@j264
		jg	..@j265
		cmp	ax,31
		jb	..@j264
		jmp	..@j265
..@j264:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$KEYBOARD$_Ld3
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,-255
		sbb	dx,0
		add	ax,1
		adc	dx,0
		push	dx
		push	ax
		call	KEYBOARD_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_concat
		jmp	..@j278
..@j265:
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,-224
		sbb	dx,0
		cmp	dx,0
		jl	..@j279
		jg	..@j280
		cmp	ax,16
		jb	..@j279
		jmp	..@j280
..@j279:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+4]
		mov	ax,0
		sub	bx,-224
		sbb	ax,0
		mov	ax,7
		mul	bx
		mov	bx,ax
		lea	ax,[TC_$KEYBOARD_$$_SKEYPAD+bx]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j287
..@j280:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SUNKNOWNFUNCTIONKEY
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	dx,word [bp+4]
		mov	ax,0
		push	ax
		push	dx
		call	KEYBOARD_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_concat
..@j287:
..@j278:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$KEYBOARD_$$_SUNKNOWNFUNCTIONKEY
EXTERN	fpc_shortstr_to_shortstr
EXTERN	TC_$KEYBOARD_$$_SKEYPAD
EXTERN	fpc_shortstr_concat
EXTERN	KEYBOARD_$$_INTTOSTR$LONGINT$$SHORTSTRING
EXTERN	_$KEYBOARD$_Ld3
