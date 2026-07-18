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
	GLOBAL SYSTEM_$$_READSTRCOMMON$TEXTREC$PCHAR$SMALLINT
SYSTEM_$$_READSTRCOMMON$TEXTREC$PCHAR$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		lea	bx,[bx+40]
		mov	dx,word [bx]
		mov	ax,word [bp+4]
		sub	ax,dx
		mov	word [bp-2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-2]
		jle	..@j24178
		jmp	..@j24179
..@j24178:
		mov	bx,word [bp+8]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
..@j24179:
		cmp	word [bp-2],0
		jg	..@j24182
		jmp	..@j24183
..@j24182:
		mov	bx,word [bp+6]
		mov	si,word [bp+8]
		lea	si,[si+40]
		mov	si,word [si]
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+14]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		lea	bx,[bx+40]
		mov	ax,word [bp-2]
		add	word [bx],ax
..@j24183:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	word [bx+12],ax
		mov	bx,word [bp+8]
		mov	word [bx+10],0
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
