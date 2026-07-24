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
	GLOBAL SYSTEM_$$_INTERLOCKEDEXCHANGEADD$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_INTERLOCKEDEXCHANGEADD$LONGINT$LONGINT$$LONGINT:
	GLOBAL FPC_INTERLOCKEDEXCHANGEADD
FPC_INTERLOCKEDEXCHANGEADD:
		mov	si,sp
		mov	bx,word [ss:si+6]
		mov	di,word [ss:si+2]
		mov	si,word [ss:si+4]
		pushfw
		cli
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	word [bx],di
		adc	word [bx+2],si
		popfw
		ret	6
