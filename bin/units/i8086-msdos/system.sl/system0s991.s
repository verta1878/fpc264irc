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
	GLOBAL SYSTEM_$$_COPY_UNIT_THREADVARS$PLTVINITENTRY
SYSTEM_$$_COPY_UNIT_THREADVARS$PLTVINITENTRY:
		push	bp
		mov	bp,sp
		sub	sp,4
		jmp	..@j20171
	ALIGN 2
..@j20170:
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		push	word [bx+2]
		push	word [bx]
		mov	ax,word [U_$SYSTEM_$$_CURRENTTM+38]
		call	ax
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		add	ax,2
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		add	word [bp+4],6
..@j20171:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j20170
		jmp	..@j20172
..@j20172:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_CURRENTTM
