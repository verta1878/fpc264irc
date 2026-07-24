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
	GLOBAL DOS_$$_SWAPINTVEC$BYTE$FARPOINTER
DOS_$$_SWAPINTVEC$BYTE$FARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	DOS_$$_GETINTVEC$BYTE$FARPOINTER
		mov	al,byte [bp+6]
		mov	ah,0
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+2]
		push	word [bx]
		call	DOS_$$_SETINTVEC$BYTE$FARPOINTER
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	DOS_$$_SETINTVEC$BYTE$FARPOINTER
EXTERN	DOS_$$_GETINTVEC$BYTE$FARPOINTER
