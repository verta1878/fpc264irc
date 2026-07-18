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
	GLOBAL SYSTEM_$$_UNLOCKRESOURCE$WORD$$LONGBOOL
SYSTEM_$$_UNLOCKRESOURCE$WORD$$LONGBOOL:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_RESOURCEMANAGER+18]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSTEM_$$_RESOURCEMANAGER
