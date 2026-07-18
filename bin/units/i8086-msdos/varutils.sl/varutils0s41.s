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
	GLOBAL VARUTILS_$$_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
VARUTILS_$$_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j1920
		sub	ax,16384
		je	..@j1921
		jmp	..@j1919
..@j1920:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j1924
		sub	ax,2
		je	..@j1925
		dec	ax
		je	..@j1927
		dec	ax
		je	..@j1928
		dec	ax
		je	..@j1929
		dec	ax
		je	..@j1930
		dec	ax
		je	..@j1931
		dec	ax
		je	..@j1939
		sub	ax,3
		je	..@j1932
		dec	ax
		je	..@j1933
		sub	ax,4
		je	..@j1926
		dec	ax
		je	..@j1934
		dec	ax
		je	..@j1935
		dec	ax
		je	..@j1936
		dec	ax
		je	..@j1937
		dec	ax
		je	..@j1938
		sub	ax,235
		je	..@j1940
		sub	ax,2
		je	..@j1941
		jmp	..@j1923
..@j1924:
		mov	byte [bp-1],0
		jmp	..@j1922
..@j1925:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		mov	al,0
		je	..@j1946
		inc	ax
..@j1946:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1926:
		mov	bx,word [bp+4]
		cmp	byte [bx+8],0
		mov	al,0
		je	..@j1949
		inc	ax
..@j1949:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1927:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,0
		jne	..@j1950
		cmp	dx,0
		jne	..@j1950
		jmp	..@j1951
..@j1950:
		mov	byte [bp-1],1
		jmp	..@j1952
..@j1951:
		mov	byte [bp-1],0
..@j1952:
		jmp	..@j1922
..@j1928:
		mov	bx,word [bp+4]
		wait fldz
		wait fld	dword [bx+8]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j1956
		je	..@j1955
..@j1956:
		inc	ax
..@j1955:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1929:
		mov	bx,word [bp+4]
		wait fldz
		wait fld	qword [bx+8]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j1960
		je	..@j1959
..@j1960:
		inc	ax
..@j1959:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1930:
		mov	bx,word [bp+4]
		wait fldz
		wait fild	qword [bx+8]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j1964
		je	..@j1963
..@j1964:
		inc	ax
..@j1963:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1931:
		mov	bx,word [bp+4]
		wait fldz
		wait fld	qword [bx+8]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j1968
		je	..@j1967
..@j1968:
		inc	ax
..@j1967:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1932:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		or	ax,ax
		mov	al,0
		je	..@j1973
		inc	ax
..@j1973:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1933:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1934:
		mov	bx,word [bp+4]
		cmp	byte [bx+8],0
		mov	al,0
		je	..@j1980
		inc	ax
..@j1980:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1935:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		mov	al,0
		je	..@j1983
		inc	ax
..@j1983:
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1936:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,0
		jne	..@j1984
		cmp	dx,0
		jne	..@j1984
		jmp	..@j1985
..@j1984:
		mov	byte [bp-1],1
		jmp	..@j1986
..@j1985:
		mov	byte [bp-1],0
..@j1986:
		jmp	..@j1922
..@j1937:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	cx,word [bx+10]
		mov	si,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,0
		jne	..@j1987
		cmp	si,0
		jne	..@j1987
		cmp	cx,0
		jne	..@j1987
		cmp	dx,0
		jne	..@j1987
		jmp	..@j1988
..@j1987:
		mov	byte [bp-1],1
		jmp	..@j1989
..@j1988:
		mov	byte [bp-1],0
..@j1989:
		jmp	..@j1922
..@j1938:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	cx,word [bx+10]
		mov	si,word [bx+12]
		mov	ax,word [bx+14]
		cmp	ax,0
		jne	..@j1990
		cmp	si,0
		jne	..@j1990
		cmp	cx,0
		jne	..@j1990
		cmp	dx,0
		jne	..@j1990
		jmp	..@j1991
..@j1990:
		mov	byte [bp-1],1
		jmp	..@j1992
..@j1991:
		mov	byte [bp-1],0
..@j1992:
		jmp	..@j1922
..@j1939:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOBOOLEAN$POINTER$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1940:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOBOOLEAN$POINTER$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1941:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOBOOLEAN$POINTER$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j1922
..@j1923:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,11
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1922:
		jmp	..@j1918
..@j1921:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j2009
		jmp	..@j2010
..@j2009:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j2012
		sub	ax,2
		je	..@j2013
		dec	ax
		je	..@j2015
		dec	ax
		je	..@j2016
		dec	ax
		je	..@j2017
		dec	ax
		je	..@j2018
		dec	ax
		je	..@j2019
		dec	ax
		je	..@j2027
		sub	ax,3
		je	..@j2020
		dec	ax
		je	..@j2021
		sub	ax,4
		je	..@j2014
		dec	ax
		je	..@j2022
		dec	ax
		je	..@j2023
		dec	ax
		je	..@j2024
		dec	ax
		je	..@j2025
		dec	ax
		je	..@j2026
		sub	ax,235
		je	..@j2028
		sub	ax,2
		je	..@j2029
		jmp	..@j2012
..@j2013:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	word [bx],0
		mov	al,0
		je	..@j2032
		inc	ax
..@j2032:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2014:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	byte [bx],0
		mov	al,0
		je	..@j2035
		inc	ax
..@j2035:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2015:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	word [bx],0
		mov	al,0
		je	..@j2038
		inc	ax
..@j2038:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2016:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fldz
		wait fld	dword [bx]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j2042
		je	..@j2041
..@j2042:
		inc	ax
..@j2041:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2017:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fldz
		wait fld	qword [bx]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j2046
		je	..@j2045
..@j2046:
		inc	ax
..@j2045:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2018:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fldz
		wait fild	qword [bx]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j2050
		je	..@j2049
..@j2050:
		inc	ax
..@j2049:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2019:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fldz
		wait fld	qword [bx]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jp	..@j2054
		je	..@j2053
..@j2054:
		inc	ax
..@j2053:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2020:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	word [bx],0
		mov	al,0
		je	..@j2059
		inc	ax
..@j2059:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2021:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOBOOLEAN$TVARDATA$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2022:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	byte [bx],0
		mov	al,0
		je	..@j2066
		inc	ax
..@j2066:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2023:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		cmp	word [bx],0
		mov	al,0
		je	..@j2069
		inc	ax
..@j2069:
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2024:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j2070
		cmp	dx,0
		jne	..@j2070
		jmp	..@j2071
..@j2070:
		mov	byte [bp-1],1
		jmp	..@j2072
..@j2071:
		mov	byte [bp-1],0
..@j2072:
		jmp	..@j2011
..@j2025:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	cx,word [bx]
		mov	dx,word [bx+2]
		mov	si,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jne	..@j2073
		cmp	si,0
		jne	..@j2073
		cmp	dx,0
		jne	..@j2073
		cmp	cx,0
		jne	..@j2073
		jmp	..@j2074
..@j2073:
		mov	byte [bp-1],1
		jmp	..@j2075
..@j2074:
		mov	byte [bp-1],0
..@j2075:
		jmp	..@j2011
..@j2026:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	cx,word [bx]
		mov	dx,word [bx+2]
		mov	si,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,0
		jne	..@j2076
		cmp	si,0
		jne	..@j2076
		cmp	dx,0
		jne	..@j2076
		cmp	cx,0
		jne	..@j2076
		jmp	..@j2077
..@j2076:
		mov	byte [bp-1],1
		jmp	..@j2078
..@j2077:
		mov	byte [bp-1],0
..@j2078:
		jmp	..@j2011
..@j2027:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOBOOLEAN$POINTER$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2028:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOBOOLEAN$POINTER$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2029:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOBOOLEAN$POINTER$$BOOLEAN
		mov	byte [bp-1],al
		jmp	..@j2011
..@j2012:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,11
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2011:
		jmp	..@j2095
..@j2010:
		mov	byte [bp-1],0
..@j2095:
		jmp	..@j1918
..@j1919:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,11
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1918:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOBOOLEAN$POINTER$$BOOLEAN
EXTERN	VARUTILS_$$_LSTRTOBOOLEAN$POINTER$$BOOLEAN
EXTERN	VARUTILS_$$_WSTRTOBOOLEAN$POINTER$$BOOLEAN
