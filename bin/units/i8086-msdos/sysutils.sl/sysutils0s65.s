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
	GLOBAL SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$BOOLEAN$$RAWBYTESTRING
SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$BOOLEAN$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		cmp	byte [bp+4],0
		jne	..@j2485
		jmp	..@j2486
..@j2485:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
		jmp	..@j2495
..@j2486:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
..@j2495:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_FILESEARCH$RAWBYTESTRING$RAWBYTESTRING$TFILESEARCHOPTIONS$$RAWBYTESTRING
