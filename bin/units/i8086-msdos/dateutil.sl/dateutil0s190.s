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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANPATLEN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	ax,word [bx-2]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx-2]
		mov	word [bp-6],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		mov	byte [bp-3],al
		jmp	..@j3800
	ALIGN 2
..@j3799:
		inc	word [bp-6]
..@j3800:
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-6]
		jge	..@j3802
		jmp	..@j3801
..@j3802:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		cmp	al,byte [bp-3]
		je	..@j3799
		jmp	..@j3801
..@j3801:
		mov	ax,word [bp-6]
		mov	dx,word [bp-2]
		sub	ax,dx
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
