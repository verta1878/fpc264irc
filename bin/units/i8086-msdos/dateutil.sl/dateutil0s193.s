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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDMATCH$crc912DF5FF:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	si,word [bp+10]
		mov	si,word [si+10]
		mov	si,word [si-12]
		lea	ax,[bx+si-1]
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j3862
		jmp	..@j3863
..@j3862:
		mov	ax,word [bp+10]
		push	ax
		call	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
		jmp	..@j3866
..@j3863:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j3867
		mov	bx,word [bx-2]
..@j3867:
		inc	bx
		mov	si,word [bp+10]
		mov	si,word [si+10]
		add	word [si-12],bx
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j3868
		mov	bx,word [bx-2]
..@j3868:
		inc	bx
		mov	si,word [bp+10]
		add	word [si-2],bx
		inc	word [bp-2]
..@j3866:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_ARRAYMATCHERROR
EXTERN	DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
