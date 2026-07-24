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
	GLOBAL fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
	GLOBAL FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j9123
		jmp	..@j9124
..@j9123:
		mov	bx,word [bp+8]
		mov	byte [bx],0
		jmp	..@j9127
..@j9124:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9130
		mov	bx,word [bx-2]
..@j9130:
		mov	word [bp-2],bx
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jg	..@j9131
		jmp	..@j9132
..@j9131:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j9132:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+1]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	al,byte [bp-2]
		mov	byte [bx],al
..@j9127:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
