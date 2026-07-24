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
	GLOBAL CRT_$$_READKEY$$CHAR
CRT_$$_READKEY$$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,24
		cmp	byte [U_$CRT_$$_IS_LAST],0
		jne	..@j256
		jmp	..@j257
..@j256:
		mov	byte [U_$CRT_$$_IS_LAST],0
		mov	al,byte [U_$CRT_$$_LAST]
		mov	byte [bp-1],al
		jmp	..@j262
..@j257:
		mov	al,byte [U_$CRT_$$_KEYBOARD_TYPE]
		mov	byte [bp-23],al
		mov	ax,22
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		cmp	byte [bp-24],224
		je	..@j271
		jmp	..@j270
..@j271:
		cmp	byte [bp-23],0
		jne	..@j269
		jmp	..@j270
..@j269:
		mov	byte [bp-24],0
..@j270:
		mov	al,byte [bp-24]
		mov	byte [bp-3],al
		mov	al,byte [bp-23]
		mov	byte [bp-2],al
		cmp	byte [bp-3],0
		je	..@j278
		jmp	..@j279
..@j278:
		mov	byte [U_$CRT_$$_IS_LAST],1
		mov	al,byte [bp-2]
		mov	byte [U_$CRT_$$_LAST],al
..@j279:
		mov	al,byte [bp-3]
		mov	byte [bp-1],al
..@j262:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$CRT_$$_KEYBOARD_TYPE
EXTERN	U_$CRT_$$_LAST
EXTERN	U_$CRT_$$_IS_LAST
