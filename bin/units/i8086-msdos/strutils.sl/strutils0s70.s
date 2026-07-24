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
	GLOBAL STRUTILS_$$_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
STRUTILS_$$_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+6]
		cmp	ax,word [bp+10]
		je	..@j1832
		jmp	..@j1833
..@j1833:
		mov	bx,word [bp+6]
		mov	al,byte [bx-1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [TC_$STRUTILS_$$_WORDDELIMITERS+bx],ax
		jne	..@j1832
		jmp	..@j1831
..@j1832:
		mov	ax,word [bp+4]
		cmp	ax,word [bp+8]
		je	..@j1830
		jmp	..@j1834
..@j1834:
		mov	bx,word [bp+4]
		mov	al,byte [bx+1]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		mov	ax,1
		shl	ax,cl
		test	word [TC_$STRUTILS_$$_WORDDELIMITERS+bx],ax
		jne	..@j1830
		jmp	..@j1831
..@j1830:
		mov	byte [bp-1],1
		jmp	..@j1835
..@j1831:
		mov	byte [bp-1],0
..@j1835:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	TC_$STRUTILS_$$_WORDDELIMITERS
