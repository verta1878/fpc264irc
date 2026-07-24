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
	GLOBAL SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_ISUNCDRIVE$RAWBYTESTRING$$BOOLEAN
SYSUTILS$_$FORCEDIRECTORIES$RAWBYTESTRING$$BOOLEAN_$$_ISUNCDRIVE$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j2040
		mov	bx,word [bx-2]
..@j2040:
		cmp	bx,2
		jg	..@j2039
		jmp	..@j2037
..@j2039:
		mov	bx,word [bp+4]
		cmp	byte [bx],92
		je	..@j2038
		jmp	..@j2037
..@j2038:
		mov	bx,word [bp+4]
		cmp	byte [bx+1],92
		je	..@j2036
		jmp	..@j2037
..@j2036:
		mov	byte [bp-1],1
		jmp	..@j2041
..@j2037:
		mov	byte [bp-1],0
..@j2041:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
