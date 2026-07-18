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
	GLOBAL SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_NEXTCHAR$CHAR
SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_NEXTCHAR$CHAR:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		mov	bx,word [bx-4]
		mov	al,byte [bx]
		cmp	al,byte [bp+4]
		jne	..@j13897
		jmp	..@j13898
..@j13897:
		mov	bx,word [bp+6]
		mov	byte [bx-2],0
..@j13898:
		mov	bx,word [bp+6]
		inc	word [bx-4]
		mov	sp,bp
		pop	bp
		ret	4
