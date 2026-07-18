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
	GLOBAL CONVUTILS_$$_CONVTYPETODESCRIPTION$TCONVTYPE$$ANSISTRING
CONVUTILS_$$_CONVTYPETODESCRIPTION$TCONVTYPE$$ANSISTRING:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		test	bx,bx
		je	..@j79
		mov	bx,word [bx-2]
		inc	bx
..@j79:
		cmp	bx,word [bp+4]
		jg	..@j77
		jmp	..@j78
..@j77:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [TC_$CONVUTILS_$$_THEUNITS]
		mov	ax,word [bp+4]
		mov	si,ax
		mov	ax,12
		mul	si
		mov	si,ax
		push	word [bx+si]
		call	fpc_ansistr_assign
..@j78:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$CONVUTILS_$$_THEUNITS
EXTERN	fpc_ansistr_assign
