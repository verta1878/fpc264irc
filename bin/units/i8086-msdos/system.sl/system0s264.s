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
	GLOBAL SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	si,word [bp+6]
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	byte [si],al
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-8],ax
		mov	word [bp-2],1
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jl	..@j3910
		dec	word [bp-2]
	ALIGN 2
..@j3911:
		inc	word [bp-2]
		mov	bx,word [bp+4]
		mov	al,byte [bp-2]
		mov	byte [bp-4],al
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	bx,word [bp+6]
		mov	dl,byte [bp-2]
		mov	byte [bp-6],dl
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		mov	byte [bx+si],al
		mov	ax,word [bp-8]
		cmp	ax,word [bp-2]
		jg	..@j3911
..@j3910:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
