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
	GLOBAL STRUTILS_$$_STRINGREPLACE$crc429DFCAB
STRUTILS_$$_STRINGREPLACE$crc429DFCAB:
		push	bp
		mov	bp,sp
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j815
		test	dx,dx
		je	..@j812
..@j815:
		test	ax,ax
		jne	..@j816
		cmp	dx,1
		je	..@j813
..@j816:
		test	ax,ax
		jne	..@j817
		cmp	dx,2
		je	..@j814
..@j817:
		jmp	..@j811
..@j812:
		mov	ax,word [bp+16]
		push	ax
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		call	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
		jmp	..@j810
..@j813:
		mov	ax,word [bp+16]
		push	ax
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		call	STRUTILS_$$_STRINGREPLACEFAST$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
		jmp	..@j810
..@j814:
		mov	ax,word [bp+16]
		push	ax
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		mov	al,byte [bp+8]
		mov	ah,0
		push	ax
		call	STRUTILS_$$_STRINGREPLACEBOYERMOORE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
		jmp	..@j810
..@j811:
..@j810:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	STRUTILS_$$_STRINGREPLACEBOYERMOORE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
EXTERN	STRUTILS_$$_STRINGREPLACEFAST$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
EXTERN	SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
