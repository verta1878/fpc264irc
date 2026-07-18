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
	GLOBAL STRUTILS_$$_REVERSESTRING$ANSISTRING$$ANSISTRING
STRUTILS_$$_REVERSESTRING$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1297
		mov	bx,word [bx-2]
..@j1297:
		push	bx
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	word [bp-2],1
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1304
		mov	bx,word [bx-2]
..@j1304:
		mov	word [bp-4],bx
		jmp	..@j1306
	ALIGN 2
..@j1305:
		mov	ax,word [bp+6]
		push	ax
		call	fpc_ansistr_unique
		mov	word [bp-6],ax
		mov	di,word [bp-2]
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	si,ax
		inc	si
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-6]
		mov	byte [bx+di-1],al
		inc	word [bp-2]
..@j1306:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jle	..@j1305
		jmp	..@j1307
..@j1307:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
