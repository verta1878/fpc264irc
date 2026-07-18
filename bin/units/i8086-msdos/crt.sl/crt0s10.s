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
	GLOBAL CRT_$$_FULLWIN$$BOOLEAN
CRT_$$_FULLWIN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	byte [TC_$CRT_$$_WINDMIN],0
		je	..@j91
		jmp	..@j88
..@j91:
		cmp	byte [TC_$CRT_$$_WINDMIN+1],0
		je	..@j90
		jmp	..@j88
..@j90:
		mov	al,byte [TC_$CRT_$$_WINDMAX]
		mov	ah,0
		inc	ax
		cmp	ax,word [U_$CRT_$$_SCREENWIDTH]
		je	..@j89
		jmp	..@j88
..@j89:
		mov	al,byte [TC_$CRT_$$_WINDMAX+1]
		mov	ah,0
		inc	ax
		cmp	ax,word [U_$CRT_$$_SCREENHEIGHT]
		je	..@j87
		jmp	..@j88
..@j87:
		mov	byte [bp-1],1
		jmp	..@j92
..@j88:
		mov	byte [bp-1],0
..@j92:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$CRT_$$_SCREENHEIGHT
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	TC_$CRT_$$_WINDMIN
