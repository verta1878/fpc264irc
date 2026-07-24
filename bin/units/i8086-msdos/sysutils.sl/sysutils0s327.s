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
	GLOBAL SYSUTILS_$$_CURRENTYEAR$$WORD
SYSUTILS_$$_CURRENTYEAR$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,18
		lea	ax,[bp-18]
		push	ax
		call	SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
		mov	ax,word [bp-18]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
