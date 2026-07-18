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
	GLOBAL SYSUTILS_$$_DATETIMETOFILEDATE$TDATETIME$$LONGINT
SYSUTILS_$$_DATETIMETOFILEDATE$TDATETIME$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,18
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
		cmp	word [bp-6],1980
		jb	..@j11889
		jmp	..@j11891
..@j11891:
		cmp	word [bp-6],2099
		ja	..@j11889
		jmp	..@j11890
..@j11889:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j11894
..@j11890:
		mov	ax,word [bp-16]
		shr	ax,1
		mov	dx,word [bp-14]
		mov	cl,5
		shl	dx,cl
		or	dx,ax
		mov	ax,word [bp-12]
		mov	cl,11
		shl	ax,cl
		or	ax,dx
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-10]
		mov	cl,16
		shl	ax,cl
		mov	dx,word [bp-8]
		mov	cl,21
		shl	dx,cl
		or	dx,ax
		mov	ax,word [bp-6]
		mov	cx,0
		sub	ax,1980
		sbb	cx,0
		mov	cl,25
		shl	ax,cl
		or	ax,dx
		mov	bx,0
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		or	dx,ax
		or	cx,bx
		mov	word [bp-4],dx
		mov	word [bp-2],cx
..@j11894:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
