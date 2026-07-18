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
	GLOBAL MD5_$$_MDBUFFER$formal$WORD$TMDVERSION$$TMDDIGEST
MD5_$$_MDBUFFER$formal$WORD$TMDVERSION$$TMDDIGEST:
		push	bp
		mov	bp,sp
		sub	sp,112
		lea	ax,[bp-112]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
		lea	ax,[bp-112]
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+8]
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
		lea	ax,[bp-112]
		push	ax
		mov	ax,word [bp+12]
		push	ax
		call	MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
EXTERN	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
EXTERN	MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
