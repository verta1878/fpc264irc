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
	GLOBAL CONVUTILS_$$_CONVFAMILYTODESCRIPTION$TCONVFAMILY$$ANSISTRING
CONVUTILS_$$_CONVFAMILYTODESCRIPTION$TCONVFAMILY$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		test	bx,bx
		je	..@j11
		mov	bx,word [bx-2]
		inc	bx
..@j11:
		cmp	bx,word [bp+4]
		jg	..@j9
		jmp	..@j10
..@j9:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [TC_$CONVUTILS_$$_THEFAMILIES]
		mov	ax,word [bp+4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	fpc_ansistr_assign
..@j10:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$CONVUTILS_$$_THEFAMILIES
EXTERN	fpc_ansistr_assign
