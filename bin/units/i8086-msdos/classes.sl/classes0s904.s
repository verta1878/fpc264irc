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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITECOMPONENTDATA$TCOMPONENT
CLASSES$_$TWRITER_$__$$_WRITECOMPONENTDATA$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		jne	..@j22272
		jmp	..@j22271
..@j22272:
		mov	bx,word [bp+4]
		test	word [bx+22],512
		je	..@j22270
		jmp	..@j22273
..@j22273:
		mov	bx,word [bp+4]
		test	word [bx+22],32
		jne	..@j22274
		jmp	..@j22271
..@j22274:
		mov	bx,word [bp+6]
		cmp	word [bx+16],0
		jne	..@j22270
		jmp	..@j22271
..@j22270:
		mov	byte [bp-1],1
		jmp	..@j22277
..@j22271:
		mov	bx,word [bp+4]
		test	word [bx+22],512
		jne	..@j22278
		jmp	..@j22279
..@j22278:
		mov	byte [bp-1],4
..@j22279:
..@j22277:
		mov	bx,word [bp+6]
		cmp	word [bx+16],0
		jne	..@j22284
		jmp	..@j22283
..@j22284:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx+20]
		cmp	ax,word [si+18]
		jne	..@j22282
		jmp	..@j22285
..@j22285:
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		je	..@j22282
		jmp	..@j22283
..@j22282:
		mov	al,byte [bp-1]
		mov	ah,0
		or	ax,2
		mov	byte [bp-1],al
..@j22283:
		mov	bx,word [bp+6]
		push	word [bx+9]
		push	word [bp+4]
		mov	al,byte [bp-1]
		mov	ah,0
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+20]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	bx,word [bp+6]
		cmp	word [bx+16],0
		jne	..@j22294
		jmp	..@j22295
..@j22294:
		mov	bx,word [bp+6]
		inc	word [bx+20]
..@j22295:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
		push	word [bp+6]
		call	CLASSES$_$TWRITER_$__$$_WRITELISTEND
		mov	bx,word [bp+6]
		cmp	byte [bx+8],0
		je	..@j22302
		jmp	..@j22303
..@j22302:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_WRITECHILDREN$TCOMPONENT
..@j22303:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECHILDREN$TCOMPONENT
EXTERN	CLASSES$_$TWRITER_$__$$_WRITELISTEND
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
