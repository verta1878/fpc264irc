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
	GLOBAL CRC_$$_equal$U128$U128$$BOOLEAN
CRC_$$_equal$U128$U128$$BOOLEAN:
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
		mov	bx,word [bp-18]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	cx,word [bp-12]
		cmp	cx,word [bp-28]
		jne	..@j122
		cmp	dx,word [bp-30]
		jne	..@j122
		cmp	ax,word [bp-32]
		jne	..@j122
		cmp	bx,word [bp-34]
		jne	..@j122
		jmp	..@j123
		jmp	..@j122
..@j123:
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	bx,word [bp-4]
		cmp	bx,word [bp-20]
		jne	..@j122
		cmp	cx,word [bp-22]
		jne	..@j122
		cmp	dx,word [bp-24]
		jne	..@j122
		cmp	ax,word [bp-26]
		jne	..@j122
		jmp	..@j121
		jmp	..@j122
..@j121:
		mov	byte [bp-1],1
		jmp	..@j124
..@j122:
		mov	byte [bp-1],0
..@j124:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
