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
	GLOBAL DATEUTILS_$$_WITHINPASTMINUTES$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_$$_WITHINPASTMINUTES$TDATETIME$TDATETIME$INT64$$BOOLEAN:
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
		call	DATEUTILS_$$_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
		cmp	ax,word [bp+10]
		jl	..@j1224
		jg	..@j1225
		cmp	bx,word [bp+8]
		jb	..@j1224
		ja	..@j1225
		cmp	cx,word [bp+6]
		jb	..@j1224
		ja	..@j1225
		cmp	dx,word [bp+4]
		jbe	..@j1224
		jmp	..@j1225
		jmp	..@j1225
..@j1224:
		mov	byte [bp-1],1
		jmp	..@j1230
..@j1225:
		mov	byte [bp-1],0
..@j1230:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	DATEUTILS_$$_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
