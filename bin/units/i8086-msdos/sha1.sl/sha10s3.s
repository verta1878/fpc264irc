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
	GLOBAL SHA1_$$_SHA1INIT$TSHA1CONTEXT
SHA1_$$_SHA1INIT$TSHA1CONTEXT:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		mov	ax,94
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+4]
		mov	word [bx],8961
		mov	word [bx+2],26437
		mov	bx,word [bp+4]
		mov	word [bx+4],-21623
		mov	word [bx+6],-4147
		mov	bx,word [bp+4]
		mov	word [bx+8],-8962
		mov	word [bx+10],-26438
		mov	bx,word [bp+4]
		mov	word [bx+12],21622
		mov	word [bx+14],4146
		mov	bx,word [bp+4]
		mov	word [bx+16],-7696
		mov	word [bx+18],-15406
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
