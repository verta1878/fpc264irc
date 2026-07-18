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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_FINDIMATCH$crc12577BA1:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-2],-1
		mov	word [bp-4],0
		jmp	..@j3886
	ALIGN 2
..@j3885:
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	bx,word [bx+si]
		test	bx,bx
		je	..@j3892
		mov	bx,word [bx-2]
..@j3892:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-10],ax
		push	word [bp+4]
		push	word [bp-10]
		push	word [bp-8]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+28]
		call	ax
		test	ax,ax
		je	..@j3888
		jmp	..@j3889
..@j3888:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j3889:
		inc	word [bp-4]
..@j3886:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+6]
		jle	..@j3905
		jmp	..@j3887
..@j3905:
		cmp	word [bp-2],-1
		je	..@j3885
		jmp	..@j3887
..@j3887:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
