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
	GLOBAL SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j13741
		mov	ax,word FPC_EMPTYCHAR
..@j13741:
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j13748
		mov	bx,word [bx-2]
..@j13748:
		push	bx
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	FPC_EMPTYCHAR
