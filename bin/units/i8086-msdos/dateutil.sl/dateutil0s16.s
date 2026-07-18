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
	GLOBAL DATEUTILS_$$_DAYSINAYEAR$WORD$$WORD
DATEUTILS_$$_DAYSINAYEAR$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+4]
		call	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		mov	ax,word [TC_$DATEUTILS_$$_DAYSPERYEAR+bx]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$DATEUTILS_$$_DAYSPERYEAR
EXTERN	SYSUTILS_$$_ISLEAPYEAR$WORD$$BOOLEAN
