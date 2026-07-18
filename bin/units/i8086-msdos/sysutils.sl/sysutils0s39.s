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
	GLOBAL SYSUTILS_$$_ISPATHDELIMITER$RAWBYTESTRING$SMALLINT$$BOOLEAN
SYSUTILS_$$_ISPATHDELIMITER$RAWBYTESTRING$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		jg	..@j1866
		jmp	..@j1864
..@j1866:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j1867
		mov	bx,word [bx-2]
..@j1867:
		cmp	bx,word [bp+4]
		jge	..@j1865
		jmp	..@j1864
..@j1865:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1872
		test	al,0
		jmp	..@j1873
..@j1872:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1873:
		mov	al,0
		je	..@j1874
		inc	ax
..@j1874:
		test	al,al
		jne	..@j1863
		jmp	..@j1864
..@j1863:
		mov	byte [bp-1],1
		jmp	..@j1875
..@j1864:
		mov	byte [bp-1],0
..@j1875:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
