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
	GLOBAL DATEUTILS_$$_PERIODBETWEEN$TDATETIME$TDATETIME$WORD$WORD$WORD
DATEUTILS_$$_PERIODBETWEEN$TDATETIME$TDATETIME$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,14
		wait fld	qword [bp+18]
		wait fld	qword [bp+10]
		wait fcompp
		fstsw	[bp-14]
		mov	ah,byte [bp-13]
		sahf
		jp	..@j1340
		ja	..@j1338
..@j1340:
		jmp	..@j1339
..@j1338:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+18]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+10]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		jmp	..@j1357
..@j1339:
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+10]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+18]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
..@j1357:
		mov	ax,word [bp-4]
		mov	dx,0
		mov	cx,word [bp-2]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		ja	..@j1376
		jmp	..@j1378
..@j1378:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		je	..@j1379
		jmp	..@j1377
..@j1379:
		mov	ax,word [bp-10]
		cmp	ax,word [bp-12]
		ja	..@j1376
		jmp	..@j1377
..@j1376:
		mov	bx,word [bp+8]
		dec	word [bx]
..@j1377:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		ja	..@j1380
		jmp	..@j1381
..@j1380:
		add	word [bp-8],12
..@j1381:
		mov	ax,word [bp-8]
		mov	dx,0
		mov	bx,word [bp-6]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	ax,word [bp-12]
		cmp	ax,word [bp-10]
		jae	..@j1384
		jmp	..@j1385
..@j1384:
		mov	ax,word [bp-12]
		mov	dx,0
		mov	bx,word [bp-10]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	bx,word [bp+4]
		mov	word [bx],ax
		jmp	..@j1388
..@j1385:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j1389
		jmp	..@j1390
..@j1389:
		mov	bx,word [bp+6]
		mov	word [bx],11
		jmp	..@j1393
..@j1390:
		mov	bx,word [bp+6]
		dec	word [bx]
..@j1393:
		push	word [bp-2]
		push	word [bp-6]
		call	DATEUTILS_$$_DAYSINAMONTH$WORD$WORD$$WORD
		mov	dx,0
		mov	cx,word [bp-10]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	cx,word [bp-12]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	bx,word [bp+4]
		mov	word [bx],cx
..@j1388:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	DATEUTILS_$$_DAYSINAMONTH$WORD$WORD$$WORD
EXTERN	SYSUTILS_$$_DECODEDATE$TDATETIME$WORD$WORD$WORD
