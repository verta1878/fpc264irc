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
	GLOBAL CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT
CRT_$$_SETSCREENCURSOR$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],512
		mov	word [bp-18],0
		mov	ax,word [bp+4]
		dec	ax
		mov	cl,8
		shl	ax,cl
		mov	dx,word [bp+6]
		dec	dx
		add	dx,ax
		mov	word [bp-14],dx
		mov	ax,16
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_INTR
