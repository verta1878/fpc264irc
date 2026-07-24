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
	GLOBAL fpc_shortstr_assign
fpc_shortstr_assign:
	GLOBAL FPC_SHORTSTR_ASSIGN
FPC_SHORTSTR_ASSIGN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	ah,0
		cmp	ax,word [bp+8]
		jl	..@j935
		jmp	..@j936
..@j935:
		mov	al,byte [bp-1]
		mov	ah,0
		mov	word [bp+8],ax
..@j936:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp+8]
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	al,byte [bp-1]
		mov	ah,0
		cmp	ax,word [bp+8]
		jg	..@j945
		jmp	..@j946
..@j945:
		mov	bx,word [bp+4]
		mov	al,byte [bp+8]
		mov	byte [bx],al
..@j946:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
