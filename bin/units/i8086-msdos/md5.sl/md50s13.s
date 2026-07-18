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
	GLOBAL MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION
MD5_$$_MDINIT$TMDCONTEXT$TMDVERSION:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+8]
		push	ax
		mov	ax,112
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		test	dx,dx
		jne	..@j1900
		test	ax,ax
		je	..@j1899
..@j1900:
		test	dx,dx
		jb	..@j1897
		test	dx,dx
		ja	..@j1901
		cmp	ax,1
		jb	..@j1897
..@j1901:
		test	dx,dx
		jb	..@j1898
		test	dx,dx
		ja	..@j1902
		cmp	ax,2
		jbe	..@j1898
..@j1902:
		jmp	..@j1897
..@j1898:
		cmp	word [bp+4],1
		je	..@j1903
		jmp	..@j1904
..@j1903:
		mov	bx,word [bp+8]
		mov	ax,word MD5_$$_MD4TRANSFORM$TMDCONTEXT$POINTER
		mov	word [bx+4],ax
		jmp	..@j1907
..@j1904:
		mov	bx,word [bp+8]
		mov	ax,word MD5_$$_MD5TRANSFORM$TMDCONTEXT$POINTER
		mov	word [bx+4],ax
..@j1907:
		mov	bx,word [bp+8]
		mov	word [bx+6],64
		mov	bx,word [bp+8]
		mov	word [bx+8],8961
		mov	word [bx+10],26437
		mov	bx,word [bp+8]
		mov	word [bx+12],-21623
		mov	word [bx+14],-4147
		mov	bx,word [bp+8]
		mov	word [bx+16],-8962
		mov	word [bx+18],-26438
		mov	bx,word [bp+8]
		mov	word [bx+20],21622
		mov	word [bx+22],4146
		mov	bx,word [bp+8]
		mov	word [bx+96],0
		mov	word [bx+98],0
		mov	word [bx+100],0
		mov	word [bx+102],0
		mov	bx,word [bp+8]
		mov	word [bx+24],0
		mov	word [bx+26],0
		mov	word [bx+28],0
		mov	word [bx+30],0
		jmp	..@j1896
..@j1899:
		mov	bx,word [bp+8]
		mov	word [bx+6],16
		mov	bx,word [bp+8]
		mov	ax,word MD5_$$_MD2TRANSFORM$TMDCONTEXT$POINTER
		mov	word [bx+4],ax
		jmp	..@j1896
..@j1897:
..@j1896:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	MD5_$$_MD2TRANSFORM$TMDCONTEXT$POINTER
EXTERN	MD5_$$_MD5TRANSFORM$TMDCONTEXT$POINTER
EXTERN	MD5_$$_MD4TRANSFORM$TMDCONTEXT$POINTER
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
