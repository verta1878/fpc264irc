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
	GLOBAL fpc_unicodestr_to_widestr
fpc_unicodestr_to_widestr:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11017
		mov	bx,word [bx-2]
..@j11017:
		push	bx
		call	fpc_unicodestr_setlength
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11024
		mov	bx,word [bx-2]
..@j11024:
		shl	bx,1
		push	bx
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_unicodestr_setlength
