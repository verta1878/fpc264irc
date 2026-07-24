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
	GLOBAL TYPES_$$_INFLATERECT$TRECT$SMALLINT$SMALLINT$$BOOLEAN
TYPES_$$_INFLATERECT$TRECT$SMALLINT$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j711
		jmp	..@j712
..@j711:
		mov	ax,word [bp+6]
		cwd
		mov	bx,word [bp+8]
		sub	word [bx],ax
		sbb	word [bx+2],dx
		mov	ax,word [bp+4]
		cwd
		mov	bx,word [bp+8]
		sub	word [bx+4],ax
		sbb	word [bx+6],dx
		mov	ax,word [bp+6]
		cwd
		mov	bx,word [bp+8]
		add	word [bx+8],ax
		adc	word [bx+10],dx
		mov	ax,word [bp+4]
		cwd
		mov	bx,word [bp+8]
		add	word [bx+12],ax
		adc	word [bx+14],dx
		mov	byte [bp-1],1
		jmp	..@j715
..@j712:
		mov	byte [bp-1],0
..@j715:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
