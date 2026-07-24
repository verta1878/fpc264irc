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
	GLOBAL STRUTILS_$$_POSEX$ANSISTRING$ANSISTRING$WORD$$SMALLINT
STRUTILS_$$_POSEX$ANSISTRING$ANSISTRING$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j2031
		mov	bx,word [bx-2]
..@j2031:
		mov	word [bp-8],bx
		cmp	word [bp-8],0
		jg	..@j2035
		jmp	..@j2033
..@j2035:
		cmp	word [bp+4],0
		ja	..@j2034
		jmp	..@j2033
..@j2034:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2036
		mov	bx,word [bx-2]
..@j2036:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+4]
		mov	bx,0
		cmp	ax,bx
		ja	..@j2032
		jb	..@j2033
		cmp	cx,dx
		jae	..@j2032
		jmp	..@j2033
..@j2032:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2039
		mov	bx,word [bx-2]
..@j2039:
		mov	ax,word [bp-8]
		sub	bx,ax
		mov	word [bp-6],bx
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	byte [bp-9],al
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	ax,[bx+si-1]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2048
		mov	bx,word [bx-2]
..@j2048:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+4]
		mov	bx,0
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
		mov	word [bp-4],ax
		jmp	..@j2052
	ALIGN 2
..@j2051:
		mov	bx,word [bp+6]
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		mov	si,ax
		add	si,dx
		lea	ax,[bx+si-1]
		mov	word [bp-12],ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-12]
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j2056
		jmp	..@j2057
..@j2056:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-2],ax
		jmp	..@j2025
..@j2057:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		inc	ax
		mov	word [bp+4],ax
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		lea	ax,[bx+si-1]
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j2074
		mov	bx,word [bx-2]
..@j2074:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp+4]
		mov	bx,0
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		mov	al,byte [bp-9]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
		mov	word [bp-4],ax
..@j2052:
		cmp	word [bp-4],0
		jge	..@j2077
		jmp	..@j2053
..@j2077:
		mov	dx,word [bp-4]
		mov	ax,word [bp+4]
		add	ax,dx
		dec	ax
		cmp	ax,word [bp-6]
		jle	..@j2051
		jmp	..@j2053
..@j2053:
..@j2033:
..@j2025:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	SYSTEM_$$_INDEXBYTE$formal$SMALLINT$BYTE$$SMALLINT
