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
	GLOBAL MD5_$$_MD4FILE$ANSISTRING$WORD$$TMDDIGEST
MD5_$$_MD4FILE$ANSISTRING$WORD$$TMDDIGEST:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+4]
		call	MD5_$$_MDFILE$ANSISTRING$TMDVERSION$WORD$$TMDDIGEST
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	MD5_$$_MDFILE$ANSISTRING$TMDVERSION$WORD$$TMDDIGEST
