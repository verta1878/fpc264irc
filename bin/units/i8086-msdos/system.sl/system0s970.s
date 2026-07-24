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
	GLOBAL SYSTEM_$$_NOWAITFORTHREADTERMINATE$WORD$LONGINT$$LONGWORD
SYSTEM_$$_NOWAITFORTHREADTERMINATE$WORD$LONGINT$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	SYSTEM_$$_NOTHREADERROR
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_NOTHREADERROR
