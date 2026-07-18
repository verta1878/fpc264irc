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
	GLOBAL STRUTILS_$$_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
STRUTILS_$$_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+8]
		call	fpc_ansistr_incr_ref
		mov	ax,word [bp+12]
		mov	word [bp-2],ax
		mov	byte [bp-3],0
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		test	si,si
		je	..@j1902
		mov	si,word [si-2]
..@j1902:
		lea	ax,[bx+si-1]
		mov	word [bp-10],ax
		jmp	..@j1904
	ALIGN 2
..@j1903:
		jmp	..@j1907
	ALIGN 2
..@j1906:
		dec	word [bp-2]
..@j1907:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+14]
		jae	..@j1909
		jmp	..@j1908
..@j1909:
		mov	bx,word [bp-2]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	bx,word [bp-10]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		mov	ax,word [bp+6]
		call	ax
		test	al,al
		je	..@j1906
		jmp	..@j1908
..@j1908:
		mov	ax,word [bp-2]
		mov	word [bp-8],ax
		mov	ax,word [bp-10]
		mov	word [bp-6],ax
		mov	byte [bp-3],1
		jmp	..@j1921
	ALIGN 2
..@j1920:
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
		dec	word [bp-8]
		dec	word [bp-6]
..@j1921:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+14]
		jae	..@j1930
		jmp	..@j1922
..@j1930:
		mov	ax,word [bp+8]
		cmp	ax,word [bp-6]
		jbe	..@j1929
		jmp	..@j1922
..@j1929:
		cmp	byte [bp-3],0
		jne	..@j1920
		jmp	..@j1922
..@j1922:
		mov	ax,word [bp+8]
		cmp	ax,word [bp-6]
		jbe	..@j1931
		jmp	..@j1932
..@j1931:
		mov	byte [bp-3],0
..@j1932:
		cmp	byte [bp-3],0
		jne	..@j1937
		jmp	..@j1936
..@j1937:
		cmp	byte [bp+4],0
		jne	..@j1935
		jmp	..@j1936
..@j1935:
		push	word [bp+14]
		push	word [bp+10]
		mov	ax,word [bp-8]
		inc	ax
		push	ax
		push	word [bp-2]
		call	STRUTILS_$$_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
		mov	byte [bp-3],al
..@j1936:
		cmp	byte [bp-3],0
		jne	..@j1948
		jmp	..@j1949
..@j1948:
		mov	ax,word [bp-8]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j1952
..@j1949:
		dec	word [bp-2]
..@j1952:
..@j1904:
		cmp	byte [bp-3],0
		je	..@j1953
		jmp	..@j1905
..@j1953:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+14]
		jae	..@j1903
		jmp	..@j1905
..@j1905:
		cmp	byte [bp-3],0
		je	..@j1954
		jmp	..@j1955
..@j1954:
		mov	word [bp-2],0
..@j1955:
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
