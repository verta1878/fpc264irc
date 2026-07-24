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
	GLOBAL SYSUTILS_$$_TRIMRIGHT$ANSISTRING$$ANSISTRING
SYSUTILS_$$_TRIMRIGHT$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3327
		mov	bx,word [bx-2]
..@j3327:
		mov	word [bp-2],bx
		jmp	..@j3329
	ALIGN 2
..@j3328:
		dec	word [bp-2]
..@j3329:
		cmp	word [bp-2],0
		jg	..@j3331
		jmp	..@j3330
..@j3331:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,33
		jb	..@j3332
..@j3332:
		jc	..@j3328
		jmp	..@j3330
..@j3330:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_copy
