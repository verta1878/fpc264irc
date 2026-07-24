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
	GLOBAL VARUTILS_$$_VARIANTTOINT64$TVARDATA$$INT64
VARUTILS_$$_VARIANTTOINT64$TVARDATA$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j2344
		sub	ax,16384
		je	..@j2345
		jmp	..@j2343
..@j2344:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j2348
		sub	ax,2
		je	..@j2349
		dec	ax
		je	..@j2351
		dec	ax
		je	..@j2352
		dec	ax
		je	..@j2353
		dec	ax
		je	..@j2354
		dec	ax
		je	..@j2355
		dec	ax
		je	..@j2363
		sub	ax,3
		je	..@j2356
		dec	ax
		je	..@j2357
		sub	ax,4
		je	..@j2350
		dec	ax
		je	..@j2358
		dec	ax
		je	..@j2359
		dec	ax
		je	..@j2360
		dec	ax
		je	..@j2361
		dec	ax
		je	..@j2362
		sub	ax,235
		je	..@j2364
		sub	ax,2
		je	..@j2365
		jmp	..@j2347
..@j2348:
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j2346
..@j2349:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j2346
..@j2350:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	dx,bx
		mov	si,ax
		mov	cl,15
		sar	si,cl
		mov	dx,si
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],si
		jmp	..@j2346
..@j2351:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	si,word [bx+10]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		mov	word [bp-8],dx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],bx
		jmp	..@j2346
..@j2352:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2346
..@j2353:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2346
..@j2354:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2346
..@j2355:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2346
..@j2356:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j2346
..@j2357:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOINT64$TVARDATA$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2346
..@j2358:
		mov	si,word [bp+4]
		mov	bx,0
		mov	cl,byte [si+8]
		mov	ch,0
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j2346
..@j2359:
		mov	bx,word [bp+4]
		mov	cx,word [bx+8]
		mov	ax,0
		mov	bx,0
		mov	dx,0
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	word [bp-4],bx
		mov	word [bp-2],dx
		jmp	..@j2346
..@j2360:
		mov	si,word [bp+4]
		mov	bx,word [si+8]
		mov	ax,word [si+10]
		mov	dx,0
		mov	cx,0
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		jmp	..@j2346
..@j2361:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2346
..@j2362:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2346
..@j2363:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOINT64$POINTER$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2346
..@j2364:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOINT64$POINTER$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2346
..@j2365:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOINT64$POINTER$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2346
..@j2347:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,20
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2346:
		jmp	..@j2342
..@j2345:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j2416
		jmp	..@j2417
..@j2416:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j2419
		sub	ax,2
		je	..@j2420
		dec	ax
		je	..@j2422
		dec	ax
		je	..@j2423
		dec	ax
		je	..@j2424
		dec	ax
		je	..@j2425
		dec	ax
		je	..@j2426
		dec	ax
		je	..@j2434
		sub	ax,3
		je	..@j2427
		dec	ax
		je	..@j2428
		sub	ax,4
		je	..@j2421
		dec	ax
		je	..@j2429
		dec	ax
		je	..@j2430
		dec	ax
		je	..@j2431
		dec	ax
		je	..@j2432
		dec	ax
		je	..@j2433
		sub	ax,235
		je	..@j2435
		sub	ax,2
		je	..@j2436
		jmp	..@j2419
..@j2420:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j2418
..@j2421:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	dx,bx
		mov	si,ax
		mov	cl,15
		sar	si,cl
		mov	dx,si
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],si
		jmp	..@j2418
..@j2422:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j2418
..@j2423:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2418
..@j2424:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2418
..@j2425:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2418
..@j2426:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-16]
		DB	09bh
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-16]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2418
..@j2427:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],bx
		mov	word [bp-2],si
		jmp	..@j2418
..@j2428:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOINT64$TVARDATA$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2418
..@j2429:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,0
		mov	cl,byte [bx]
		mov	ch,0
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],cx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j2418
..@j2430:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	dx,word [bx]
		mov	cx,0
		mov	ax,0
		mov	bx,0
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	word [bp-2],bx
		jmp	..@j2418
..@j2431:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bx]
		mov	cx,word [bx+2]
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],si
		mov	word [bp-6],cx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j2418
..@j2432:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2418
..@j2433:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2418
..@j2434:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOINT64$POINTER$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2418
..@j2435:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOINT64$POINTER$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2418
..@j2436:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOINT64$POINTER$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2418
..@j2419:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,20
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2418:
		jmp	..@j2485
..@j2417:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,20
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2485:
		jmp	..@j2342
..@j2343:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,20
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2342:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOINT64$POINTER$$INT64
EXTERN	VARUTILS_$$_LSTRTOINT64$POINTER$$INT64
EXTERN	VARUTILS_$$_WSTRTOINT64$POINTER$$INT64
EXTERN	_$VARUTILS$_Ld1
