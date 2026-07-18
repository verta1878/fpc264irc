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
	GLOBAL SYSUTILS_$$_TRIMLEFT$ANSISTRING$$ANSISTRING
SYSUTILS_$$_TRIMLEFT$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3307
		mov	bx,word [bx-2]
..@j3307:
		mov	word [bp-4],bx
		mov	word [bp-2],1
		jmp	..@j3311
	ALIGN 2
..@j3310:
		inc	word [bp-2]
..@j3311:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jle	..@j3313
		jmp	..@j3312
..@j3313:
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	ah,0
		cmp	ax,33
		jb	..@j3314
..@j3314:
		jc	..@j3310
		jmp	..@j3312
..@j3312:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_ansistr_copy
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_copy
