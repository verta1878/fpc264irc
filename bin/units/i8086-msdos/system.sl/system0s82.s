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
	GLOBAL fpc_shortstr_append_shortstr
fpc_shortstr_append_shortstr:
	GLOBAL FPC_SHORTSTR_APPEND_SHORTSTR
FPC_SHORTSTR_APPEND_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-4],ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		cmp	ax,word [bp+6]
		jg	..@j1120
		jmp	..@j1121
..@j1120:
		mov	ax,word [bp+6]
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	word [bp-4],ax
..@j1121:
		mov	bx,word [bp+4]
		lea	ax,[bx+1]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		add	dx,ax
		mov	bx,word [bp+8]
		mov	byte [bx],dl
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
