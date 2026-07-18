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
	GLOBAL SYSUTILS_$$_ISEQUALGUID$TGUID$TGUID$$BOOLEAN
SYSUTILS_$$_ISEQUALGUID$TGUID$TGUID$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	ax,word [bx]
		cmp	ax,word [si]
		je	..@j13924
		jmp	..@j13921
..@j13924:
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	ax,word [bx+2]
		cmp	ax,word [si+2]
		je	..@j13923
		jmp	..@j13921
..@j13923:
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	ax,word [bx+4]
		cmp	ax,word [si+4]
		je	..@j13922
		jmp	..@j13921
..@j13922:
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	ax,word [bx+6]
		cmp	ax,word [si+6]
		je	..@j13920
		jmp	..@j13921
..@j13920:
		mov	byte [bp-1],1
		jmp	..@j13925
..@j13921:
		mov	byte [bp-1],0
..@j13925:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
