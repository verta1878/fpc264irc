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
	GLOBAL STRUTILS_$$_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
STRUTILS_$$_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+8]
		call	fpc_ansistr_incr_ref
		mov	ax,word [bp+12]
		mov	word [bp-2],ax
		mov	byte [bp-3],0
		jmp	..@j1843
	ALIGN 2
..@j1842:
		jmp	..@j1846
	ALIGN 2
..@j1845:
		inc	word [bp-2]
..@j1846:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+10]
		jbe	..@j1848
		jmp	..@j1847
..@j1848:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	ax,word [bp+6]
		call	ax
		test	al,al
		je	..@j1845
		jmp	..@j1847
..@j1847:
		mov	ax,word [bp-2]
		mov	word [bp-8],ax
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
		mov	byte [bp-3],1
		jmp	..@j1860
	ALIGN 2
..@j1859:
		mov	bx,word [bp-8]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	ax,word [bp+6]
		call	ax
		mov	byte [bp-3],al
		inc	word [bp-8]
		inc	word [bp-6]
..@j1860:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+10]
		jbe	..@j1869
		jmp	..@j1861
..@j1869:
		mov	bx,word [bp-6]
		cmp	byte [bx],0
		jne	..@j1868
		jmp	..@j1861
..@j1868:
		cmp	byte [bp-3],0
		jne	..@j1859
		jmp	..@j1861
..@j1861:
		mov	bx,word [bp-6]
		cmp	byte [bx],0
		jne	..@j1870
		jmp	..@j1871
..@j1870:
		mov	byte [bp-3],0
..@j1871:
		cmp	byte [bp-3],0
		jne	..@j1876
		jmp	..@j1875
..@j1876:
		cmp	byte [bp+4],0
		jne	..@j1874
		jmp	..@j1875
..@j1874:
		push	word [bp+14]
		push	word [bp+10]
		push	word [bp-2]
		mov	ax,word [bp-8]
		dec	ax
		push	ax
		call	STRUTILS_$$_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
		mov	byte [bp-3],al
..@j1875:
		cmp	byte [bp-3],0
		je	..@j1887
		jmp	..@j1888
..@j1887:
		inc	word [bp-2]
..@j1888:
..@j1843:
		cmp	byte [bp-3],0
		je	..@j1889
		jmp	..@j1844
..@j1889:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+10]
		jbe	..@j1842
		jmp	..@j1844
..@j1844:
		cmp	byte [bp-3],0
		je	..@j1890
		jmp	..@j1891
..@j1890:
		mov	word [bp-2],0
..@j1891:
		lea	ax,[bp+8]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
EXTERN	fpc_ansistr_incr_ref
