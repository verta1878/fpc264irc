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
	GLOBAL SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3282
		mov	bx,word [bx-2]
..@j3282:
		mov	word [bp-4],bx
		jmp	..@j3284
	ALIGN 2
..@j3283:
		dec	word [bp-4]
..@j3284:
		cmp	word [bp-4],0
		jg	..@j3286
		jmp	..@j3285
..@j3286:
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,33
		jb	..@j3287
..@j3287:
		jc	..@j3283
		jmp	..@j3285
..@j3285:
		mov	word [bp-2],1
		jmp	..@j3291
	ALIGN 2
..@j3290:
		inc	word [bp-2]
..@j3291:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jle	..@j3293
		jmp	..@j3292
..@j3293:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,33
		jb	..@j3294
..@j3294:
		jc	..@j3290
		jmp	..@j3292
..@j3292:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		mov	ax,word [bp-4]
		inc	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_copy
