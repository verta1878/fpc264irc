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
	GLOBAL VARUTILS_$$_WSTRTOINT64$POINTER$$INT64
VARUTILS_$$_WSTRTOINT64$POINTER$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+4]
		lea	ax,[bp-10]
		push	ax
		call	fpc_val_int64_unicodestr
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		cmp	word [bp-10],0
		jne	..@j2306
		jmp	..@j2307
..@j2306:
		mov	ax,8
		push	ax
		mov	ax,20
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2307:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_val_int64_unicodestr
