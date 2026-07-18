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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_EXPONENTIAL$crcC3D7D0D1
SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_EXPONENTIAL$crcC3D7D0D1:
		push	bp
		mov	bp,sp
		sub	sp,88
		cmp	word [bp+8],0
		mov	al,0
		jge	..@j5440
		inc	ax
..@j5440:
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		jne	..@j5441
		jmp	..@j5442
..@j5441:
		mov	ax,word [bp+8]
		neg	ax
		mov	word [bp+8],ax
..@j5442:
		mov	ax,word [bp+22]
		push	ax
		lea	ax,[bp-54]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		cwd
		push	dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
		mov	word [bp-10],ax
		mov	ax,word [bp-10]
		cmp	ax,word [bp+6]
		jle	..@j5457
		jmp	..@j5458
..@j5457:
		mov	ax,word [bp+6]
		mov	word [bp-8],ax
		jmp	..@j5461
..@j5458:
		mov	ax,word [bp-10]
		mov	word [bp-8],ax
..@j5461:
		mov	ax,word [bp+10]
		inc	ax
		inc	ax
		inc	ax
		add	word [bp-8],ax
		cmp	word [bp+10],1
		jg	..@j5464
		jmp	..@j5465
..@j5464:
		inc	word [bp-8]
..@j5465:
		mov	dx,word [bp-8]
		mov	ax,255
		sub	ax,dx
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	word [bp-12],ax
		mov	ax,word [bp-12]
		cmp	ax,word [bp-14]
		jg	..@j5470
		jmp	..@j5471
..@j5470:
		mov	ax,word [bp-14]
		mov	word [bp-12],ax
..@j5471:
		cmp	word [bp-12],0
		jg	..@j5474
		jmp	..@j5475
..@j5474:
		mov	ax,word [bp-12]
		add	word [bp-8],ax
..@j5475:
		mov	ax,word [bp+20]
		push	ax
		push	word [bp+18]
		push	word [bp-8]
		call	fpc_shortstr_setlength
		mov	word [bp-4],1
		cmp	word [bp-12],0
		jg	..@j5484
		jmp	..@j5485
..@j5484:
		mov	ax,word [bp+20]
		mov	word [bp-82],ax
		mov	ax,word [bp+22]
		mov	word [bp-56],ax
		mov	al,byte [bp-4]
		mov	byte [bp-74],al
		mov	byte [bp-73],0
		mov	bx,word [bp-82]
		mov	si,word [bp-74]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-12]
		mov	ax,32
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-12]
		add	word [bp-4],ax
..@j5485:
		cmp	byte [bp+16],0
		jne	..@j5496
		jmp	..@j5497
..@j5496:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-68],al
		mov	byte [bp-67],0
		mov	si,word [bp-68]
		mov	byte [bx+si],45
		jmp	..@j5500
..@j5497:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-60],al
		mov	byte [bp-59],0
		mov	si,word [bp-60]
		mov	byte [bx+si],32
..@j5500:
		inc	word [bp-4]
		cmp	word [bp+12],0
		jg	..@j5503
		jmp	..@j5504
..@j5503:
		mov	bx,word [bp+14]
		mov	al,byte [bx]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+20]
		mov	dl,byte [bp-4]
		mov	byte [bp-86],dl
		mov	byte [bp-85],0
		mov	si,word [bp-86]
		mov	byte [bx+si],al
		jmp	..@j5507
..@j5504:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-64],al
		mov	byte [bp-63],0
		mov	si,word [bp-64]
		mov	byte [bx+si],48
..@j5507:
		inc	word [bp-4]
		cmp	word [bp+10],1
		jg	..@j5510
		jmp	..@j5511
..@j5510:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-66],al
		mov	byte [bp-65],0
		mov	si,word [bp-66]
		mov	byte [bx+si],46
		inc	word [bp-4]
..@j5511:
		mov	word [bp-6],1
		jmp	..@j5517
	ALIGN 2
..@j5516:
		mov	bx,word [bp+14]
		mov	si,word [bp-6]
		mov	al,byte [bx+si]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+20]
		mov	dl,byte [bp-4]
		mov	byte [bp-84],dl
		mov	byte [bp-83],0
		mov	si,word [bp-84]
		mov	byte [bx+si],al
		inc	word [bp-4]
		inc	word [bp-6]
..@j5517:
		mov	ax,word [bp-6]
		cmp	ax,word [bp+12]
		jl	..@j5521
		jmp	..@j5518
..@j5521:
		mov	ax,word [bp-6]
		cmp	ax,word [bp+10]
		jl	..@j5516
		jmp	..@j5518
..@j5518:
		mov	ax,word [bp+10]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jg	..@j5524
		jmp	..@j5525
..@j5524:
		mov	ax,word [bp+20]
		mov	word [bp-78],ax
		mov	ax,word [bp+22]
		mov	word [bp-56],ax
		mov	al,byte [bp-4]
		mov	byte [bp-62],al
		mov	byte [bp-61],0
		mov	bx,word [bp-78]
		mov	si,word [bp-62]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-6]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-6]
		add	word [bp-4],ax
..@j5525:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-72],al
		mov	byte [bp-71],0
		mov	si,word [bp-72]
		mov	byte [bx+si],69
		inc	word [bp-4]
		cmp	byte [bp-1],0
		jne	..@j5538
		jmp	..@j5539
..@j5538:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-76],al
		mov	byte [bp-75],0
		mov	si,word [bp-76]
		mov	byte [bx+si],45
		jmp	..@j5542
..@j5539:
		mov	bx,word [bp+20]
		mov	al,byte [bp-4]
		mov	byte [bp-70],al
		mov	byte [bp-69],0
		mov	si,word [bp-70]
		mov	byte [bx+si],43
..@j5542:
		inc	word [bp-4]
		mov	ax,word [bp+6]
		mov	dx,word [bp-10]
		sub	ax,dx
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jg	..@j5547
		jmp	..@j5548
..@j5547:
		mov	ax,word [bp+20]
		mov	word [bp-80],ax
		mov	ax,word [bp+22]
		mov	word [bp-56],ax
		mov	al,byte [bp-4]
		mov	byte [bp-58],al
		mov	byte [bp-57],0
		mov	bx,word [bp-80]
		mov	si,word [bp-58]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-6]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	ax,word [bp-6]
		add	word [bp-4],ax
..@j5548:
		mov	cx,word [bp-10]
		dec	cx
		mov	word [bp-6],0
		cmp	cx,word [bp-6]
		jl	..@j5562
		dec	word [bp-6]
	ALIGN 2
..@j5563:
		inc	word [bp-6]
		mov	si,word [bp-6]
		mov	al,byte [bp+si-54]
		mov	ah,0
		add	ax,48
		mov	bx,word [bp+20]
		mov	dl,byte [bp-4]
		mov	byte [bp-88],dl
		mov	byte [bp-87],0
		mov	si,word [bp-88]
		mov	byte [bx+si],al
		inc	word [bp-4]
		cmp	cx,word [bp-6]
		jg	..@j5563
..@j5562:
		mov	sp,bp
		pop	bp
		ret	20
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_shortstr_setlength
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_32$TASCIIDIGITS$SMALLINT$LONGWORD$BOOLEAN$$SMALLINT
