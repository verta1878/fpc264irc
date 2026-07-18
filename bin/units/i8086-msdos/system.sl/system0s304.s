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
	GLOBAL SYSTEM_$$_STR_REAL_ISO$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
SYSTEM_$$_STR_REAL_ISO$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+26]
		push	word [bp+22]
		push	word [bp+20]
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	word [bp-2],ax
		cmp	word [bp-2],1
		jl	..@j5963
		inc	word [bp-2]
	ALIGN 2
..@j5964:
		dec	word [bp-2]
		mov	bx,word [bp+6]
		mov	al,byte [bp-2]
		mov	byte [bp-4],al
		mov	byte [bp-3],0
		mov	si,word [bp-4]
		cmp	byte [bx+si],69
		je	..@j5965
		jmp	..@j5966
..@j5965:
		mov	bx,word [bp+6]
		mov	al,byte [bp-2]
		mov	byte [bp-6],al
		mov	byte [bp-5],0
		mov	si,word [bp-6]
		mov	byte [bx+si],101
		jmp	..@j5963
..@j5966:
		cmp	word [bp-2],1
		jg	..@j5964
..@j5963:
		mov	sp,bp
		pop	bp
		ret	26
EXTERN	SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
