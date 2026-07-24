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
	GLOBAL MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD:
	GLOBAL MD_UPDATE
MD_UPDATE:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+4],0
		je	..@j1930
		jmp	..@j1931
..@j1930:
		jmp	..@j1928
..@j1931:
		mov	bx,word [bp+8]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	word [bp-6],0
		mov	bx,word [bp+8]
		mov	si,word [bx+24]
		mov	cx,word [bx+26]
		mov	dx,word [bx+28]
		mov	ax,word [bx+30]
		cmp	ax,0
		ja	..@j1938
		jb	..@j1939
		cmp	dx,0
		ja	..@j1938
		jb	..@j1939
		cmp	cx,0
		ja	..@j1938
		jb	..@j1939
		cmp	si,0
		ja	..@j1938
		jmp	..@j1939
..@j1938:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	dx,0
		mov	cx,0
		mov	si,0
		sub	ax,word [bx+24]
		sbb	dx,word [bx+26]
		sbb	cx,word [bx+28]
		sbb	si,word [bx+30]
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp+4]
		ja	..@j1942
		jmp	..@j1943
..@j1942:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
..@j1943:
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	si,word [si+24]
		lea	ax,[bx+si+32]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	dx,word [bp-6]
		mov	cx,0
		mov	si,0
		mov	ax,0
		add	dx,word [bx+24]
		adc	cx,word [bx+26]
		adc	si,word [bx+28]
		adc	ax,word [bx+30]
		mov	bx,word [bp+8]
		mov	word [bx+24],dx
		mov	word [bx+26],cx
		mov	word [bx+28],si
		mov	word [bx+30],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	ax,0
		mov	dx,0
		mov	cx,0
		cmp	cx,word [bx+30]
		jne	..@j1957
		cmp	dx,word [bx+28]
		jne	..@j1957
		cmp	ax,word [bx+26]
		jne	..@j1957
		cmp	si,word [bx+24]
		jne	..@j1957
		jmp	..@j1956
		jmp	..@j1957
..@j1956:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+32]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		call	ax
		mov	bx,word [bp+8]
		mov	word [bx+24],0
		mov	word [bx+26],0
		mov	word [bx+28],0
		mov	word [bx+30],0
..@j1957:
..@j1939:
		mov	ax,word [bp+4]
		mov	dx,0
		mov	cx,word [bp-6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-6],ax
		jmp	..@j1967
	ALIGN 2
..@j1966:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		call	ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		add	ax,dx
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,0
		mov	cx,word [bp-2]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	word [bp-6],ax
..@j1967:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jae	..@j1966
		jmp	..@j1968
..@j1968:
		cmp	word [bp-6],0
		ja	..@j1977
		jmp	..@j1978
..@j1977:
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	dx,0
		mov	cx,0
		mov	si,0
		mov	word [bx+24],ax
		mov	word [bx+26],dx
		mov	word [bx+28],cx
		mov	word [bx+30],si
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+32]
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j1978:
..@j1928:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
