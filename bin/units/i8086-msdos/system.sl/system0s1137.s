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
	GLOBAL fpc_setupwritestr_unicodestr
fpc_setupwritestr_unicodestr:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-535
		push	ax
		call	SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
		mov	bx,word [bp+6]
		lea	bx,[bx+24]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	bx,word [bp+6]
		lea	bx,[bx+32]
		mov	word [bx],0
		mov	bx,word [bp+6]
		mov	ax,word SYSTEM_$$_WRITESTRUNICODE$TEXTREC
		mov	word [bx+18],ax
		mov	bx,word [bp+6]
		mov	ax,word SYSTEM_$$_WRITESTRUNICODEFLUSH$TEXTREC
		mov	word [bx+20],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_WRITESTRUNICODEFLUSH$TEXTREC
EXTERN	SYSTEM_$$_WRITESTRUNICODE$TEXTREC
EXTERN	SYSTEM_$$_SETUPWRITESTRCOMMON$TEXTREC$WORD
