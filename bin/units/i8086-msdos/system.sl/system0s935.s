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
	GLOBAL SYSTEM_$$_RESUMETHREAD$WORD$$LONGWORD
SYSTEM_$$_RESUMETHREAD$WORD$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+10]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_CURRENTTM
