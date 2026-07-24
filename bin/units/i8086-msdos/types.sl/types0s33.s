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
	GLOBAL TYPES$_$TRECT_$__$$_equal$TRECT$TRECT$$BOOLEAN
TYPES$_$TRECT_$__$$_equal$TRECT$TRECT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	ax,word [bp+6]
		lea	di,[bp-18]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		mov	si,word [bp+4]
		lea	di,[bp-34]
		push	ss
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		cmp	ax,word [bp-32]
		jne	..@j218
		cmp	dx,word [bp-34]
		jne	..@j218
		jmp	..@j221
		jmp	..@j218
..@j221:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,word [bp-24]
		jne	..@j218
		cmp	ax,word [bp-26]
		jne	..@j218
		jmp	..@j220
		jmp	..@j218
..@j220:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		cmp	dx,word [bp-28]
		jne	..@j218
		cmp	ax,word [bp-30]
		jne	..@j218
		jmp	..@j219
		jmp	..@j218
..@j219:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,word [bp-20]
		jne	..@j218
		cmp	ax,word [bp-22]
		jne	..@j218
		jmp	..@j217
		jmp	..@j218
..@j217:
		mov	byte [bp-1],1
		jmp	..@j222
..@j218:
		mov	byte [bp-1],0
..@j222:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
