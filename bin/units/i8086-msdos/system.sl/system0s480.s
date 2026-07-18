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
	GLOBAL SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$$SMALLINT
SYSTEM_$$_POS$UNICODESTRING$UNICODESTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12177
		mov	bx,word [bx-2]
..@j12177:
		cmp	bx,0
		jg	..@j12175
		jmp	..@j12176
..@j12175:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j12180
		mov	bx,word [bx-2]
..@j12180:
		mov	si,word [bp+6]
		test	si,si
		je	..@j12181
		mov	si,word [si-2]
..@j12181:
		sub	bx,si
		mov	word [bp-6],bx
		mov	word [bp-4],0
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		jmp	..@j12187
	ALIGN 2
..@j12186:
		inc	word [bp-4]
		mov	bx,word [bp-8]
		mov	si,word [bp+6]
		mov	ax,word [bx]
		cmp	ax,word [si]
		je	..@j12191
		jmp	..@j12190
..@j12191:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-8]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j12198
		mov	bx,word [bx-2]
..@j12198:
		push	bx
		call	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j12189
		jmp	..@j12190
..@j12189:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		jmp	..@j12171
..@j12190:
		add	word [bp-8],2
..@j12187:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j12186
		jmp	..@j12188
..@j12188:
..@j12176:
..@j12171:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREWORD$formal$formal$SMALLINT$$SMALLINT
