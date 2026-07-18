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
	GLOBAL DATEUTILS_$$_WITHINPASTHOURS$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_$$_WITHINPASTHOURS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
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
		call	DATEUTILS_$$_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64
		cmp	ax,word [bp+10]
		jl	..@j1215
		jg	..@j1216
		cmp	bx,word [bp+8]
		jb	..@j1215
		ja	..@j1216
		cmp	cx,word [bp+6]
		jb	..@j1215
		ja	..@j1216
		cmp	dx,word [bp+4]
		jbe	..@j1215
		jmp	..@j1216
		jmp	..@j1216
..@j1215:
		mov	byte [bp-1],1
		jmp	..@j1221
..@j1216:
		mov	byte [bp-1],0
..@j1221:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	DATEUTILS_$$_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64
