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
	GLOBAL fpc_shortstr_compare_equal
fpc_shortstr_compare_equal:
	GLOBAL FPC_SHORTSTR_COMPARE_EQUAL
FPC_SHORTSTR_COMPARE_EQUAL:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		mov	cx,0
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	si,0
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		sbb	cx,si
		mov	word [bp-4],ax
		mov	word [bp-2],cx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j1178
		cmp	ax,0
		jne	..@j1178
		jmp	..@j1177
..@j1177:
		mov	bx,word [bp+6]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,0
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j1178:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
