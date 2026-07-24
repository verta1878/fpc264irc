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
	GLOBAL SYSTEM_$$_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT:
	GLOBAL FPC_INTERLOCKEDEXCHANGE
FPC_INTERLOCKEDEXCHANGE:
		mov	si,sp
		mov	bx,word [ss:si+6]
		mov	ax,word [ss:si+2]
		mov	dx,word [ss:si+4]
		pushfw
		cli
		xchg	word [bx],ax
		xchg	word [bx+2],dx
		popfw
		ret	6
