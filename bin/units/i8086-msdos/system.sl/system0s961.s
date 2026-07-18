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
	GLOBAL SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT$LONGINT
SYSTEM_$$_RTLEVENTWAITFOR$PRTLEVENT$LONGINT:
		push	bp
		mov	bp,sp
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+64]
		call	ax
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	U_$SYSTEM_$$_CURRENTTM
