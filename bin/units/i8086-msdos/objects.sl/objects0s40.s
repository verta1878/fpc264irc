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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_ERROR$SMALLINT$SMALLINT
OBJECTS$_$TSTREAM_$__$$_ERROR$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		cmp	word [TC_$OBJECTS_$$_STREAMERROR],0
		jne	..@j543
		jmp	..@j544
..@j543:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [TC_$OBJECTS_$$_STREAMERROR]
		call	ax
..@j544:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$OBJECTS_$$_STREAMERROR
