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
	GLOBAL SYSTEM_$$_FILECLOSEFUNC$TEXTREC
SYSTEM_$$_FILECLOSEFUNC$TEXTREC:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_CLOSE$WORD
		mov	bx,word [bp+4]
		mov	word [bx],-1
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_CLOSE$WORD
