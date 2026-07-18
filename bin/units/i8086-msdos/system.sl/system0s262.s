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
	GLOBAL SYSTEM_$$_POS$SHORTSTRING$CHAR$$SMALLINT
SYSTEM_$$_POS$SHORTSTRING$CHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		cmp	byte [bx],1
		je	..@j3887
		jmp	..@j3886
..@j3887:
		mov	bx,word [bp+6]
		mov	al,byte [bx+1]
		cmp	al,byte [bp+4]
		je	..@j3885
		jmp	..@j3886
..@j3885:
		mov	word [bp-2],1
		jmp	..@j3890
..@j3886:
		mov	word [bp-2],0
..@j3890:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
