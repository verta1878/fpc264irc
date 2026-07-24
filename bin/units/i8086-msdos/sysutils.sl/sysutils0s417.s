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
	GLOBAL SYSUTILS_$$_FREEMEMANDNIL$formal
SYSUTILS_$$_FREEMEMANDNIL$formal:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	word [bx],0
		push	word [bp-2]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
