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
	GLOBAL SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT
SYSTEM_$$_POS$CHAR$SHORTSTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-4],1
		cmp	ax,word [bp-4]
		jl	..@j3865
		dec	word [bp-4]
	ALIGN 2
..@j3866:
		inc	word [bp-4]
		mov	bx,word [bp-6]
		mov	dl,byte [bx]
		cmp	dl,byte [bp+6]
		je	..@j3867
		jmp	..@j3868
..@j3867:
		mov	dx,word [bp-4]
		mov	word [bp-2],dx
		jmp	..@j3858
..@j3868:
		inc	word [bp-6]
		cmp	ax,word [bp-4]
		jg	..@j3866
..@j3865:
		mov	word [bp-2],0
..@j3858:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
