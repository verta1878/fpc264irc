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
	GLOBAL SYSTEM_$$_INTERLOCKEDCOMPAREEXCHANGE$LONGINT$LONGINT$LONGINT$$LONGINT
SYSTEM_$$_INTERLOCKEDCOMPAREEXCHANGE$LONGINT$LONGINT$LONGINT$$LONGINT:
	GLOBAL FPC_INTERLOCKEDCOMPAREEXCHANGE
FPC_INTERLOCKEDCOMPAREEXCHANGE:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+12]
		mov	di,word [bp+4]
		mov	si,word [bp+6]
		pushfw
		cli
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		cmp	ax,di
		jne	..@j87
		cmp	dx,si
		jne	..@j87
		mov	di,word [bp+8]
		mov	si,word [bp+10]
		mov	word [bx],di
		mov	word [bx+2],si
..@j87:
		popfw
		mov	sp,bp
		pop	bp
		ret	10
