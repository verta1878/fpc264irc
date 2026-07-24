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
	GLOBAL SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
SYSTEM_$$_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
	GLOBAL FPC_INTERLOCKEDINCREMENT
FPC_INTERLOCKEDINCREMENT:
		mov	si,sp
		mov	bx,word [ss:si+2]
		pushfw
		cli
		add	word [bx],1
		adc	word [bx+2],0
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		popfw
		ret	2
