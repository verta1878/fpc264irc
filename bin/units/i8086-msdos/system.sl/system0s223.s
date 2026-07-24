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
	GLOBAL SYSTEM_$$_REAL2DOUBLE$REAL48$$DOUBLE
SYSTEM_$$_REAL2DOUBLE$REAL48$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-24],ax
		mov	ax,word [bx+2]
		mov	word [bp-22],ax
		mov	ax,word [bx+4]
		mov	word [bp-20],ax
		cmp	byte [bp-24],0
		je	..@j3267
		jmp	..@j3268
..@j3267:
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j3265
..@j3268:
		mov	byte [bp-16],0
		mov	al,byte [bp-23]
		mov	ah,0
		mov	cl,5
		shl	ax,cl
		mov	byte [bp-15],al
		mov	al,byte [bp-23]
		mov	ah,0
		mov	cl,3
		shr	ax,cl
		mov	dl,byte [bp-22]
		mov	dh,0
		mov	cl,5
		shl	dx,cl
		or	dx,ax
		mov	byte [bp-14],dl
		mov	al,byte [bp-22]
		mov	ah,0
		mov	cl,3
		shr	ax,cl
		mov	dl,byte [bp-21]
		mov	dh,0
		mov	cl,5
		shl	dx,cl
		or	dx,ax
		mov	byte [bp-13],dl
		mov	al,byte [bp-21]
		mov	ah,0
		mov	cl,3
		shr	ax,cl
		mov	dl,byte [bp-20]
		mov	dh,0
		mov	cl,5
		shl	dx,cl
		or	dx,ax
		mov	byte [bp-12],dl
		mov	al,byte [bp-19]
		mov	ah,0
		and	ax,127
		mov	cl,5
		shl	ax,cl
		cwd
		mov	bx,ax
		mov	si,dx
		mov	al,byte [bp-20]
		mov	ah,0
		mov	cl,3
		shr	ax,cl
		mov	dx,0
		or	ax,bx
		or	dx,si
		mov	byte [bp-11],al
		mov	al,byte [bp-19]
		mov	ah,0
		and	ax,127
		mov	cl,3
		shr	ax,cl
		mov	byte [bp-10],al
		mov	al,byte [bp-24]
		mov	ah,0
		add	ax,894
		mov	word [bp-18],ax
		mov	ax,word [bp-18]
		and	ax,15
		mov	cl,4
		shl	ax,cl
		mov	dl,byte [bp-10]
		mov	dh,0
		or	dx,ax
		mov	byte [bp-10],dl
		mov	ax,word [bp-18]
		mov	cl,4
		shr	ax,cl
		mov	byte [bp-9],al
		mov	al,byte [bp-19]
		and	al,128
		mov	dl,byte [bp-9]
		or	dl,al
		mov	byte [bp-9],dl
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
..@j3265:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
