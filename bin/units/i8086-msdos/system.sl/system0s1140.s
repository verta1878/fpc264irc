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
	GLOBAL SYSTEM_$$_READSTRANSI$TEXTREC
SYSTEM_$$_READSTRANSI$TEXTREC:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		lea	ax,[bx+24]
		mov	word [bp-2],ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j24204
		mov	bx,word [bx-2]
..@j24204:
		push	bx
		call	SYSTEM_$$_READSTRCOMMON$TEXTREC$PCHAR$SMALLINT
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_READSTRCOMMON$TEXTREC$PCHAR$SMALLINT
