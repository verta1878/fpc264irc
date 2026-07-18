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
	GLOBAL DATEUTILS_$$_WITHINPASTSECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_$$_WITHINPASTSECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		call	DATEUTILS_$$_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
		cmp	ax,word [bp+10]
		jl	..@j1233
		jg	..@j1234
		cmp	bx,word [bp+8]
		jb	..@j1233
		ja	..@j1234
		cmp	cx,word [bp+6]
		jb	..@j1233
		ja	..@j1234
		cmp	dx,word [bp+4]
		jbe	..@j1233
		jmp	..@j1234
		jmp	..@j1234
..@j1233:
		mov	byte [bp-1],1
		jmp	..@j1239
..@j1234:
		mov	byte [bp-1],0
..@j1239:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	DATEUTILS_$$_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
