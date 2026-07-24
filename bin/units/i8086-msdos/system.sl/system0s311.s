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
	GLOBAL SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD
SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_PACK_FLOAT$EXTENDED$BOOLEAN$SMALLINT$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,10
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+12]
		and	ax,32767
		mov	word [bp-2],ax
		cmp	byte [bp+14],0
		jne	..@j6583
		jmp	..@j6584
..@j6583:
		mov	al,byte [bp-1]
		or	al,128
		mov	byte [bp-1],al
..@j6584:
		mov	di,word [bp+16]
		push	ds
		pop	es
		lea	si,[bp-10]
		cld
		mov	cx,5
		rep
		movsw
		mov	sp,bp
		pop	bp
		ret	16
