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
	GLOBAL SHA1_$$_SHA1PRINT$TSHA1DIGEST$$ANSISTRING
SHA1_$$_SHA1PRINT$TSHA1DIGEST$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+6]
		push	ax
		mov	ax,40
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	word [bp-2],0
		dec	word [bp-2]
	ALIGN 2
..@j346:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		and	bx,15
		mov	si,word [bp-4]
		mov	al,byte [TC_$SHA1_$$_HEXTBL+bx]
		mov	byte [si],al
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,ax
		and	bx,15
		mov	si,word [bp-4]
		mov	al,byte [TC_$SHA1_$$_HEXTBL+bx]
		mov	byte [si+1],al
		add	word [bp-4],2
		cmp	word [bp-2],19
		jl	..@j346
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SHA1_$$_HEXTBL
EXTERN	fpc_ansistr_setlength
