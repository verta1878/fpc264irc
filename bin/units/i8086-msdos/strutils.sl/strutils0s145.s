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
	GLOBAL STRUTILS_$$_POSSETEX$ANSISTRING$ANSISTRING$SMALLINT$$SMALLINT
STRUTILS_$$_POSSETEX$ANSISTRING$ANSISTRING$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,36
		lea	di,[bp-34]
		push	ss
		pop	es
		mov	si,word _$STRUTILS$_Ld22
		cld
		mov	cx,16
		rep
		movsw
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j4464
		mov	bx,word [bx-2]
..@j4464:
		cmp	bx,0
		jg	..@j4462
		jmp	..@j4463
..@j4462:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j4467
		mov	bx,word [bx-2]
..@j4467:
		mov	dx,bx
		mov	word [bp-36],1
		cmp	dx,word [bp-36]
		jl	..@j4469
		dec	word [bp-36]
	ALIGN 2
..@j4470:
		inc	word [bp-36]
		mov	bx,word [bp+8]
		mov	si,word [bp-36]
		mov	ax,0
		mov	al,byte [bx+si-1]
		mov	ah,0
		mov	si,ax
		mov	cl,3
		shr	si,cl
		mov	cx,ax
		and	cx,7
		mov	al,byte [bp+si-34]
		mov	ah,0
		mov	bx,1
		shl	bx,cl
		or	ax,bx
		mov	byte [bp+si-34],al
		cmp	dx,word [bp-36]
		jg	..@j4470
..@j4469:
..@j4463:
		lea	ax,[bp-34]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	STRUTILS_$$_POSSETEX$TSYSCHARSET$ANSISTRING$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	STRUTILS_$$_POSSETEX$TSYSCHARSET$ANSISTRING$SMALLINT$$SMALLINT
EXTERN	_$STRUTILS$_Ld22
