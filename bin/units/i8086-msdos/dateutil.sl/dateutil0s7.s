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
	GLOBAL DATEUTILS_$$_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_$$_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+8],0
		jne	..@j56
		jmp	..@j52
..@j56:
		cmp	word [bp+8],10000
		jb	..@j55
		jmp	..@j52
..@j55:
		mov	ax,word [bp+6]
		dec	ax
		cmp	ax,12
		jb	..@j57
..@j57:
		jc	..@j54
		jmp	..@j52
..@j54:
		cmp	word [bp+4],0
		jne	..@j53
		jmp	..@j52
..@j53:
		push	word [bp+8]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		mov	ax,24
		mul	bx
		mov	bx,ax
		mov	ax,word [bp+6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp+4]
		cmp	ax,word [TC_$SYSUTILS_$$_MONTHDAYS+bx+si-2]
		jbe	..@j51
		jmp	..@j52
..@j51:
		mov	byte [bp-1],1
		jmp	..@j60
..@j52:
		mov	byte [bp-1],0
..@j60:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$SYSUTILS_$$_MONTHDAYS
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
