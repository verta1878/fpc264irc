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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_UNPACK_FLOAT$EXTENDED$BOOLEAN$$TDIY_FP
SYSTEM$_$STR_REAL$crcEDBAA446_$$_UNPACK_FLOAT$EXTENDED$BOOLEAN$$TDIY_FP:
		push	bp
		mov	bp,sp
		sub	sp,10
		lea	di,[bp-10]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,5
		rep
		movsw
		mov	bx,word [bp+4]
		mov	al,byte [bp-1]
		and	al,128
		test	al,al
		mov	al,0
		je	..@j5941
		inc	ax
..@j5941:
		mov	byte [bx],al
		mov	ax,word [bp-2]
		and	ax,32767
		mov	bx,word [bp+16]
		mov	word [bx+12],ax
		mov	di,word [bp+16]
		push	ds
		pop	es
		lea	si,[bp-10]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp+16]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	sp,bp
		pop	bp
		ret	16
