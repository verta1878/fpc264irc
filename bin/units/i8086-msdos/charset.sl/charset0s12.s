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
	GLOBAL CHARSET_$$_LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP
CHARSET_$$_LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP:
		push	bp
		mov	bp,sp
		sub	sp,46
		mov	word [bp-2],0
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		push	bp
		lea	ax,[bp-43]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,35
		push	ax
		call	CHARSET$_$LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP_$$_READBUFFER$crc3B0E2C3B
		test	al,al
		je	..@j584
		jmp	..@j585
..@j584:
		jmp	..@j574
..@j585:
		mov	ax,38
		push	ax
		call	fpc_getmem
		mov	word [bp-46],ax
		mov	ax,word [bp-46]
		push	ax
		mov	ax,38
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	ax,word [bp-46]
		push	ax
		mov	ax,20
		push	ax
		lea	ax,[bp-43]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp-46]
		mov	ax,word [bp-22]
		mov	word [bx+21],ax
		push	word [bp-20]
		call	SYSTEM_$$_ALLOCMEM$WORD$$POINTER
		mov	bx,word [bp-46]
		mov	word [bx+23],ax
		push	bp
		mov	bx,word [bp-46]
		push	word [bx+23]
		push	word [bp-18]
		push	word [bp-20]
		call	CHARSET$_$LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP_$$_READBUFFER$crc3B0E2C3B
		test	al,al
		je	..@j616
		jmp	..@j617
..@j616:
		push	word [bp-46]
		call	CHARSET_$$_FREEMAPPING$PUNICODEMAP
		jmp	..@j574
..@j617:
		mov	bx,word [bp-46]
		mov	ax,word [bp-16]
		mov	word [bx+25],ax
		mov	ax,word [bp-14]
		mov	word [bx+27],ax
		push	word [bp-12]
		call	SYSTEM_$$_ALLOCMEM$WORD$$POINTER
		mov	bx,word [bp-46]
		mov	word [bx+29],ax
		push	bp
		mov	bx,word [bp-46]
		push	word [bx+29]
		push	word [bp-10]
		push	word [bp-12]
		call	CHARSET$_$LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP_$$_READBUFFER$crc3B0E2C3B
		test	al,al
		je	..@j632
		jmp	..@j633
..@j632:
		push	word [bp-46]
		call	CHARSET_$$_FREEMAPPING$PUNICODEMAP
		jmp	..@j574
..@j633:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		shr	dx,1
		rcr	ax,1
		shr	dx,1
		rcr	ax,1
		mov	bx,word [bp-46]
		mov	word [bx+31],ax
		mov	word [bx+33],dx
		mov	ax,word [bp-46]
		mov	word [bp-2],ax
..@j574:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CHARSET_$$_FREEMAPPING$PUNICODEMAP
EXTERN	SYSTEM_$$_ALLOCMEM$WORD$$POINTER
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	fpc_getmem
EXTERN	CHARSET$_$LOADBINARYUNICODEMAPPING$POINTER$SMALLINT$$PUNICODEMAP_$$_READBUFFER$crc3B0E2C3B
