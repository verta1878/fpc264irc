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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHPATTERN$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3782
		mov	bx,word [bx-2]
..@j3782:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j3783
		jmp	..@j3784
..@j3783:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		push	bx
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	dx,word [bx-2]
		mov	ax,word [si+4]
		add	ax,dx
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
..@j3784:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_$$_INTSCANDATE$PCHAR$SMALLINT$SMALLINT
