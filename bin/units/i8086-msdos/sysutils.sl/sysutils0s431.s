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
	GLOBAL SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE
SYSUTILS$_$TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_$$_RB$$BYTE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	bx,word [bx-4]
		mov	al,byte [bx]
		cmp	al,48
		jb	..@j13902
		sub	al,48
		sub	al,9
		jbe	..@j13903
		sub	al,8
		jb	..@j13902
		sub	al,5
		jbe	..@j13905
		sub	al,27
		jb	..@j13902
		sub	al,5
		jbe	..@j13904
		jmp	..@j13902
..@j13903:
		mov	bx,word [bp+4]
		mov	bx,word [bx-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,48
		mov	byte [bp-1],al
		jmp	..@j13901
..@j13904:
		mov	bx,word [bp+4]
		mov	bx,word [bx-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,97
		add	ax,10
		mov	byte [bp-1],al
		jmp	..@j13901
..@j13905:
		mov	bx,word [bp+4]
		mov	bx,word [bx-4]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,65
		add	ax,10
		mov	byte [bp-1],al
		jmp	..@j13901
..@j13902:
		mov	bx,word [bp+4]
		mov	byte [bx-2],0
..@j13901:
		mov	bx,word [bp+4]
		inc	word [bx-4]
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
