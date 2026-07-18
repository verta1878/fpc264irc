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
	GLOBAL SYSTEM_$$_SEEKEOF$TEXT$$BOOLEAN
SYSTEM_$$_SEEKEOF$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21417
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21418
..@j21417:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21418:
		cmp	word [bx],0
		jne	..@j21415
		jmp	..@j21416
..@j21415:
		mov	byte [bp-1],1
		jmp	..@j21413
..@j21416:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21421
		cmp	dx,-10319
		jne	..@j21421
		jmp	..@j21422
..@j21421:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21424
		cmp	dx,-10318
		jne	..@j21424
		jmp	..@j21423
..@j21423:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21427
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21428
..@j21427:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21428:
		mov	word [bx],104
		jmp	..@j21429
..@j21424:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21432
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21433
..@j21432:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21433:
		mov	word [bx],103
..@j21429:
		mov	byte [bp-1],1
		jmp	..@j21413
..@j21422:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-12],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+12]
		mov	word [bp-14],ax
		mov	word [bp-18],0
		mov	word [bp-16],0
		mov	word [bp-10],-1
		mov	word [bp-8],-1
		mov	word [bp-6],-1
		mov	word [bp-4],-1
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
		mov	byte [bp-19],al
	ALIGN 2
..@j21448:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21451
		jmp	..@j21452
..@j21451:
		add	word [bp-18],1
		adc	word [bp-16],0
		cmp	byte [bp-19],0
		je	..@j21455
		jmp	..@j21454
..@j21455:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,0
		jne	..@j21454
		cmp	ax,1
		jne	..@j21454
		jmp	..@j21453
..@j21453:
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_DO_FILEPOS$WORD$$LONGINT
		mov	cx,ax
		mov	bx,dx
		mov	si,word [bp+4]
		mov	ax,word [si+12]
		cwd
		sub	cx,ax
		sbb	bx,dx
		mov	ax,cx
		mov	dx,bx
		mov	ax,cx
		mov	dx,bx
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	word [bp-6],bx
		mov	word [bp-4],si
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21462
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21463
..@j21462:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21463:
		mov	word [bx],0
..@j21454:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j21466
		jmp	..@j21467
..@j21466:
		sub	word [bp-18],1
		sbb	word [bp-16],0
		mov	byte [bp-1],1
		jmp	..@j21450
..@j21467:
..@j21452:
		mov	bx,word [bp+4]
		mov	bx,word [bx+14]
		mov	si,word [bp+4]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		cmp	al,9
		jb	..@j21471
		sub	al,9
		sub	al,1
		jbe	..@j21473
		sub	al,3
		je	..@j21473
		sub	al,13
		je	..@j21472
		sub	al,6
		je	..@j21473
		jmp	..@j21471
..@j21472:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j21474
		jmp	..@j21475
..@j21474:
		mov	byte [bp-1],1
		jmp	..@j21450
..@j21475:
		jmp	..@j21470
..@j21473:
		jmp	..@j21470
..@j21471:
		mov	byte [bp-1],0
		jmp	..@j21450
..@j21470:
		mov	bx,word [bp+4]
		inc	word [bx+10]
		jmp	..@j21448
..@j21450:
		cmp	byte [bp-19],0
		je	..@j21480
		jmp	..@j21481
..@j21480:
		mov	dx,word [bp-18]
		mov	ax,word [bp-16]
		cmp	ax,0
		jne	..@j21483
		cmp	dx,0
		jne	..@j21483
		jmp	..@j21482
..@j21482:
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		mov	word [bx+10],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-14]
		mov	word [bx+12],ax
		jmp	..@j21488
..@j21483:
		mov	bx,word [bp+4]
		push	word [bx]
		push	word [bp-8]
		push	word [bp-10]
		call	SYSTEM_$$_DO_SEEK$WORD$LONGINT
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21495
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21496
..@j21495:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21496:
		mov	word [bx],0
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-12]
		mov	word [bx+10],ax
..@j21488:
..@j21481:
..@j21413:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_SEEK$WORD$LONGINT
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	SYSTEM_$$_DO_FILEPOS$WORD$$LONGINT
EXTERN	SYSTEM_$$_DO_ISDEVICE$WORD$$BOOLEAN
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
