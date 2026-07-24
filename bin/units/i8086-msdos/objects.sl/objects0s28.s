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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_READSTR$$PSHORTSTRING
OBJECTS$_$TSTREAM_$__$$_READSTR$$PSHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-3]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		cmp	byte [bp-3],0
		ja	..@j359
		jmp	..@j360
..@j359:
		lea	ax,[bp-6]
		push	ax
		mov	al,byte [bp-3]
		mov	ah,0
		inc	ax
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-6],0
		jne	..@j365
		jmp	..@j366
..@j365:
		mov	bx,word [bp-6]
		mov	al,byte [bp-3]
		mov	byte [bx],al
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp-6]
		lea	ax,[bx+1]
		push	ax
		mov	ax,0
		mov	dl,byte [bp-3]
		mov	dh,0
		push	ax
		push	dx
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j366:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j377
..@j360:
		mov	word [bp-2],0
..@j377:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
