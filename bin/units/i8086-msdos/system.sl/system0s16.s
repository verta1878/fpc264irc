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
	GLOBAL SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
	GLOBAL FPC_INTERLOCKEDDECREMENT
FPC_INTERLOCKEDDECREMENT:
		mov	si,sp
		mov	bx,word [ss:si+2]
		pushfw
		cli
		sub	word [bx],1
		sbb	word [bx+2],0
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		popfw
		ret	2
