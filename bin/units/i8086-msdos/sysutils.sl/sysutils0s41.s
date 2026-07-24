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
	GLOBAL SYSUTILS_$$_GETDRIVEIDFROMLETTER$RAWBYTESTRING$$BYTE
SYSUTILS_$$_GETDRIVEIDFROMLETTER$RAWBYTESTRING$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1916
		mov	bx,word [bx-2]
..@j1916:
		test	bx,bx
		je	..@j1914
		jmp	..@j1915
..@j1914:
		mov	byte [bp-1],0
		jmp	..@j1919
..@j1915:
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,64
		mov	byte [bp-1],al
..@j1919:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
