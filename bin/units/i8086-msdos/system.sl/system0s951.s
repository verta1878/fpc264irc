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
	GLOBAL SYSTEM_$$_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
SYSTEM_$$_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+10]
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+44]
		call	ax
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	U_$SYSTEM_$$_CURRENTTM
