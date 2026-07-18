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
	GLOBAL DOS_$$_FEXPAND$SHORTSTRING$$SHORTSTRING
DOS_$$_FEXPAND$SHORTSTRING$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,1834
		mov	byte [bp-5],0
		cmp	byte [TC_$SYSTEM_$$_FILENAMECASEPRESERVING],0
		jne	..@j221
		jmp	..@j222
..@j221:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j229
..@j222:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1294]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
		lea	ax,[bp-1294]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j229:
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		mov	di,dx
		mov	dx,ax
		mov	word [bp-1034],1
		mov	word [bp-1032],0
		cmp	dx,word [bp-1032]
		jl	..@j243
		jg	..@j245
		cmp	di,word [bp-1034]
		jb	..@j243
..@j245:
		sub	word [bp-1034],1
		sbb	word [bp-1032],0
	ALIGN 2
..@j244:
		add	word [bp-1034],1
		adc	word [bp-1032],0
		mov	al,byte [bp-1034]
		mov	byte [bp-1830],al
		mov	byte [bp-1829],0
		mov	si,word [bp-1830]
		mov	al,byte [bp+si-517]
		mov	byte [bp-1039],al
		mov	al,byte [bp-1039]
		mov	ah,0
		mov	bx,ax
		mov	cl,4
		shr	bx,cl
		shl	bx,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j252
		test	al,0
		jmp	..@j253
..@j252:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+bx],ax
..@j253:
		mov	al,0
		je	..@j254
		inc	ax
..@j254:
		test	al,al
		jne	..@j246
		jmp	..@j247
..@j246:
		mov	al,byte [bp-1034]
		mov	byte [bp-1832],al
		mov	byte [bp-1831],0
		mov	si,word [bp-1832]
		mov	byte [bp+si-517],92
..@j247:
		cmp	dx,word [bp-1032]
		jg	..@j244
		jl	..@j257
		cmp	di,word [bp-1034]
		ja	..@j244
..@j257:
..@j243:
		mov	word [bp-4],3
		mov	word [bp-2],0
		cmp	byte [bp-517],1
		ja	..@j264
		jmp	..@j261
..@j264:
		mov	al,byte [bp-516]
		mov	byte [bp-1039],al
		mov	al,byte [bp-1039]
		mov	ah,0
		sub	ax,65
		cmp	ax,26
		jb	..@j269
		sub	ax,32
		cmp	ax,26
		jb	..@j269
..@j269:
		mov	al,0
		jnc	..@j270
		inc	ax
..@j270:
		test	al,al
		jne	..@j263
		jmp	..@j261
..@j263:
		cmp	byte [bp-515],58
		je	..@j262
		jmp	..@j261
..@j262:
		jmp	..@j260
..@j260:
		mov	al,byte [bp-516]
		mov	byte [bp-1039],al
		mov	al,byte [bp-1039]
		mov	ah,0
		sub	ax,97
		cmp	ax,26
		jb	..@j277
..@j277:
		mov	al,0
		jnc	..@j278
		inc	ax
..@j278:
		test	al,al
		jne	..@j271
		jmp	..@j272
..@j271:
		mov	al,byte [bp-516]
		mov	ah,0
		and	ax,-33
		mov	byte [bp-516],al
..@j272:
		mov	al,byte [bp-516]
		mov	ah,0
		sub	ax,65
		inc	ax
		push	ax
		lea	ax,[bp-261]
		push	ax
		call	DOS_$$_GETDIRIO$BYTE$SHORTSTRING
		mov	bx,0
		mov	al,byte [bp-517]
		mov	ah,0
		mov	dx,word [bp-4]
		mov	cx,word [bp-2]
		sub	dx,1
		sbb	cx,0
		cmp	bx,cx
		jne	..@j286
		cmp	ax,dx
		jne	..@j286
		jmp	..@j285
..@j285:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-261]
		push	ax
		call	fpc_shortstr_to_shortstr
		jmp	..@j293
..@j286:
		mov	al,byte [bp-4]
		mov	byte [bp-1820],al
		mov	byte [bp-1819],0
		mov	si,word [bp-1820]
		cmp	byte [bp+si-517],92
		jne	..@j294
		jmp	..@j295
..@j294:
		mov	al,byte [bp-516]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-1834],al
		mov	al,byte [bp-260]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	byte [bp-1834],al
		je	..@j296
		jmp	..@j297
..@j296:
		mov	al,byte [bp-261]
		mov	byte [bp-1824],al
		mov	byte [bp-1823],0
		mov	si,word [bp-1824]
		cmp	byte [bp+si-261],92
		je	..@j302
		jmp	..@j303
..@j302:
		lea	ax,[bp-261]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp-261]
		mov	ah,0
		dec	ax
		push	ax
		call	fpc_shortstr_setlength
..@j303:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-261]
		mov	word [bp-1044],ax
		mov	ax,word _$DOS$_Ld1
		mov	word [bp-1042],ax
		lea	ax,[bp-1550]
		push	ax
		lea	ax,[bp-517]
		push	ax
		push	word [bp-4]
		mov	ax,0
		mov	cl,byte [bp-517]
		mov	ch,0
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		sub	cx,dx
		sbb	ax,bx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_shortstr_copy
		lea	ax,[bp-1550]
		mov	word [bp-1040],ax
		lea	ax,[bp-1044]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		jmp	..@j326
..@j297:
		lea	ax,[bp-1029]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOS$_Ld2
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1300]
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-1300]
		mov	word [bp-1044],ax
		lea	ax,[bp-1029]
		mov	word [bp-1042],ax
		lea	ax,[bp-1806]
		push	ax
		lea	ax,[bp-517]
		push	ax
		push	word [bp-4]
		mov	ax,0
		mov	cl,byte [bp-517]
		mov	ch,0
		mov	bx,word [bp-4]
		mov	dx,word [bp-2]
		sub	cx,bx
		sbb	ax,dx
		add	cx,1
		adc	ax,0
		push	cx
		call	fpc_shortstr_copy
		lea	ax,[bp-1806]
		mov	word [bp-1040],ax
		lea	ax,[bp-1044]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
..@j326:
..@j295:
..@j293:
		jmp	..@j357
..@j261:
		mov	ax,0
		push	ax
		lea	ax,[bp-261]
		push	ax
		call	DOS_$$_GETDIRIO$BYTE$SHORTSTRING
		cmp	byte [bp-517],0
		ja	..@j364
		jmp	..@j363
..@j364:
		cmp	byte [bp-516],92
		je	..@j362
		jmp	..@j363
..@j362:
		cmp	byte [bp-517],1
		ja	..@j368
		jmp	..@j366
..@j368:
		cmp	byte [bp-515],92
		je	..@j367
		jmp	..@j366
..@j367:
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j365
		jmp	..@j366
..@j365:
		mov	word [bp-4],3
		mov	word [bp-2],0
		jmp	..@j372
	ALIGN 2
..@j371:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j372:
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		cmp	ax,word [bp-2]
		jg	..@j374
		jl	..@j373
		cmp	dx,word [bp-4]
		jae	..@j374
		jmp	..@j373
		jmp	..@j373
..@j374:
		mov	al,byte [bp-4]
		mov	byte [bp-1810],al
		mov	byte [bp-1809],0
		mov	si,word [bp-1810]
		cmp	byte [bp+si-517],92
		jne	..@j371
		jmp	..@j373
..@j373:
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		cmp	ax,word [bp-2]
		jl	..@j375
		jg	..@j376
		cmp	dx,word [bp-4]
		jb	..@j375
		jmp	..@j376
		jmp	..@j376
..@j375:
		cmp	byte [bp-517],2
		je	..@j377
		jmp	..@j378
..@j377:
		mov	word [bp-4],2
		mov	word [bp-2],0
		jmp	..@j381
..@j378:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,word _$DOS$_Ld1
		push	ax
		call	fpc_shortstr_concat
..@j381:
		jmp	..@j390
..@j376:
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		cmp	ax,word [bp-2]
		jg	..@j391
		jl	..@j392
		cmp	dx,word [bp-4]
		ja	..@j391
		jmp	..@j392
		jmp	..@j392
..@j391:
		mov	byte [bp-5],1
	ALIGN 2
..@j395:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		cmp	ax,word [bp-2]
		jl	..@j397
		jg	..@j398
		cmp	dx,word [bp-4]
		jb	..@j397
		jmp	..@j398
		jmp	..@j398
..@j398:
		mov	al,byte [bp-4]
		mov	byte [bp-1816],al
		mov	byte [bp-1815],0
		mov	si,word [bp-1816]
		cmp	byte [bp+si-517],92
		je	..@j397
		jmp	..@j395
..@j397:
..@j392:
..@j390:
		jmp	..@j399
..@j366:
		lea	ax,[bp-1029]
		push	ax
		mov	ax,255
		push	ax
		mov	dl,byte [bp-260]
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-1294],dx
		lea	ax,[bp-1294]
		push	ax
		mov	ax,word _$DOS$_Ld3
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1029]
		push	ax
		lea	ax,[bp-517]
		push	ax
		call	fpc_shortstr_concat
..@j399:
		jmp	..@j416
..@j363:
		mov	ax,0
		mov	dl,byte [bp-261]
		mov	dh,0
		cmp	ax,word [bp-2]
		jne	..@j418
		cmp	dx,word [bp-4]
		jne	..@j418
		jmp	..@j417
		jmp	..@j418
..@j417:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-261]
		push	ax
		lea	ax,[bp-517]
		push	ax
		call	fpc_shortstr_concat
		jmp	..@j427
..@j418:
		cmp	byte [bp-517],0
		je	..@j428
		jmp	..@j429
..@j428:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-261]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,word _$DOS$_Ld1
		push	ax
		call	fpc_shortstr_concat
		jmp	..@j444
..@j429:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-261]
		mov	word [bp-1044],ax
		mov	ax,word _$DOS$_Ld1
		mov	word [bp-1042],ax
		lea	ax,[bp-517]
		mov	word [bp-1040],ax
		lea	ax,[bp-1044]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
..@j444:
..@j427:
..@j416:
..@j357:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1294]
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,0
		mov	cl,byte [bp-517]
		mov	ch,0
		mov	dx,word [bp-4]
		mov	bx,word [bp-2]
		sub	cx,dx
		sbb	ax,bx
		push	cx
		call	fpc_shortstr_copy
		lea	ax,[bp-1294]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	ax,word _$DOS$_Ld4
		push	ax
		lea	ax,[bp-773]
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-1034],cx
		mov	word [bp-1032],ax
		jmp	..@j474
	ALIGN 2
..@j473:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-1034]
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		mov	ax,word _$DOS$_Ld4
		push	ax
		lea	ax,[bp-773]
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-1034],cx
		mov	word [bp-1032],ax
..@j474:
		mov	dx,word [bp-1034]
		mov	ax,word [bp-1032]
		cmp	ax,0
		jne	..@j473
		cmp	dx,0
		jne	..@j473
		jmp	..@j475
..@j475:
		mov	ax,word _$DOS$_Ld5
		push	ax
		lea	ax,[bp-773]
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-1034],cx
		mov	word [bp-1032],ax
		jmp	..@j497
	ALIGN 2
..@j496:
		mov	ax,word [bp-1034]
		mov	dx,word [bp-1032]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-1038],ax
		mov	word [bp-1036],dx
		jmp	..@j502
	ALIGN 2
..@j501:
		sub	word [bp-1038],1
		sbb	word [bp-1036],0
..@j502:
		mov	dx,word [bp-1038]
		mov	ax,word [bp-1036]
		cmp	ax,0
		jg	..@j504
		jl	..@j503
		cmp	dx,0
		ja	..@j504
		jmp	..@j503
..@j504:
		mov	al,byte [bp-1038]
		mov	byte [bp-1808],al
		mov	byte [bp-1807],0
		mov	si,word [bp-1808]
		cmp	byte [bp+si-773],92
		jne	..@j501
		jmp	..@j503
..@j503:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp-1038]
		mov	dx,word [bp-1036]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [bp-1034]
		mov	dx,word [bp-1032]
		mov	bx,word [bp-1038]
		mov	cx,word [bp-1036]
		sub	ax,bx
		sbb	dx,cx
		add	ax,3
		adc	dx,0
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
		mov	ax,word _$DOS$_Ld5
		push	ax
		lea	ax,[bp-773]
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-1034],cx
		mov	word [bp-1032],ax
..@j497:
		mov	ax,word [bp-1034]
		mov	dx,word [bp-1032]
		cmp	dx,0
		jne	..@j496
		cmp	ax,0
		jne	..@j496
		jmp	..@j498
..@j498:
		mov	ax,word _$DOS$_Ld6
		push	ax
		lea	ax,[bp-773]
		push	ax
		call	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-1034],cx
		mov	word [bp-1032],ax
		mov	ax,word [bp-1034]
		mov	dx,word [bp-1032]
		cmp	dx,0
		jne	..@j527
		cmp	ax,0
		jne	..@j527
		jmp	..@j526
..@j527:
		mov	al,byte [bp-773]
		mov	ah,0
		sub	ax,2
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-1032]
		jne	..@j526
		cmp	cx,word [bp-1034]
		jne	..@j526
		jmp	..@j525
		jmp	..@j526
..@j525:
		mov	ax,word [bp-1034]
		mov	dx,word [bp-1032]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-1038],ax
		mov	word [bp-1036],dx
		jmp	..@j531
	ALIGN 2
..@j530:
		sub	word [bp-1038],1
		sbb	word [bp-1036],0
..@j531:
		mov	ax,word [bp-1038]
		mov	dx,word [bp-1036]
		cmp	dx,0
		jg	..@j533
		jl	..@j532
		cmp	ax,0
		ja	..@j533
		jmp	..@j532
..@j533:
		mov	al,byte [bp-1038]
		mov	byte [bp-1814],al
		mov	byte [bp-1813],0
		mov	si,word [bp-1814]
		cmp	byte [bp+si-773],92
		jne	..@j530
		jmp	..@j532
..@j532:
		mov	dx,word [bp-1038]
		mov	ax,word [bp-1036]
		cmp	ax,0
		jne	..@j535
		cmp	dx,0
		jne	..@j535
		jmp	..@j534
..@j534:
		mov	byte [bp-773],0
		jmp	..@j538
..@j535:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp-1038]
		mov	dx,word [bp-1036]
		add	ax,1
		adc	dx,0
		push	ax
		mov	ax,word [bp-1034]
		mov	dx,word [bp-1032]
		mov	bx,word [bp-1038]
		mov	cx,word [bp-1036]
		sub	ax,bx
		sbb	dx,cx
		add	ax,2
		adc	dx,0
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j538:
..@j526:
		cmp	byte [bp-773],1
		je	..@j547
		jmp	..@j548
..@j547:
		cmp	byte [bp-772],46
		je	..@j549
		jmp	..@j550
..@j549:
		mov	byte [bp-773],0
..@j550:
		jmp	..@j553
..@j548:
		cmp	byte [bp-773],0
		jne	..@j557
		jmp	..@j555
..@j557:
		mov	al,byte [bp-773]
		mov	byte [bp-1812],al
		mov	byte [bp-1811],0
		mov	si,word [bp-1812]
		cmp	byte [bp+si-773],46
		je	..@j556
		jmp	..@j555
..@j556:
		mov	al,byte [bp-773]
		dec	al
		mov	byte [bp-1826],al
		mov	byte [bp-1825],0
		mov	si,word [bp-1826]
		cmp	byte [bp+si-773],92
		je	..@j554
		jmp	..@j555
..@j554:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp-773]
		mov	ah,0
		dec	ax
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j555:
..@j553:
		jmp	..@j567
	ALIGN 2
..@j566:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j567:
		cmp	byte [bp-773],2
		jae	..@j578
		jmp	..@j568
..@j578:
		cmp	byte [bp-772],46
		je	..@j577
		jmp	..@j568
..@j577:
		cmp	byte [bp-771],92
		je	..@j566
		jmp	..@j568
..@j568:
		jmp	..@j580
	ALIGN 2
..@j579:
		lea	ax,[bp-773]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		mov	ax,3
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j580:
		cmp	byte [bp-773],3
		jae	..@j592
		jmp	..@j581
..@j592:
		cmp	byte [bp-772],46
		je	..@j591
		jmp	..@j581
..@j591:
		cmp	byte [bp-771],46
		je	..@j590
		jmp	..@j581
..@j590:
		cmp	byte [bp-770],92
		je	..@j579
		jmp	..@j581
..@j581:
		cmp	byte [bp-773],1
		je	..@j595
		jmp	..@j594
..@j595:
		cmp	byte [bp-772],46
		je	..@j593
		jmp	..@j594
..@j593:
		mov	byte [bp-773],0
..@j594:
		cmp	byte [bp-773],2
		je	..@j601
		jmp	..@j599
..@j601:
		cmp	byte [bp-772],46
		je	..@j600
		jmp	..@j599
..@j600:
		cmp	byte [bp-771],46
		je	..@j598
		jmp	..@j599
..@j598:
		mov	byte [bp-773],0
..@j599:
		cmp	byte [bp-773],0
		je	..@j604
		jmp	..@j605
..@j604:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1294]
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_shortstr_copy
		lea	ax,[bp-1294]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	al,byte [bp-4]
		mov	byte [bp-1818],al
		mov	byte [bp-1817],0
		mov	si,word [bp-1818]
		cmp	byte [bp+si-517],92
		jne	..@j620
		jmp	..@j621
..@j620:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,word _$DOS$_Ld1
		push	ax
		call	fpc_shortstr_concat
..@j621:
		jmp	..@j630
..@j605:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1294]
		push	ax
		lea	ax,[bp-517]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_shortstr_copy
		lea	ax,[bp-1294]
		push	ax
		lea	ax,[bp-773]
		push	ax
		call	fpc_shortstr_concat
..@j630:
		mov	al,byte [bp-517]
		mov	byte [bp-1822],al
		mov	byte [bp-1821],0
		mov	si,word [bp-1822]
		cmp	byte [bp+si-517],92
		je	..@j651
		jmp	..@j648
..@j651:
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		cmp	ax,word [bp-2]
		jg	..@j650
		jl	..@j652
		cmp	dx,word [bp-4]
		ja	..@j650
		jmp	..@j652
		jmp	..@j652
..@j652:
		cmp	byte [bp-5],0
		jne	..@j653
		jmp	..@j648
..@j653:
		mov	ax,0
		mov	dl,byte [bp-517]
		mov	dh,0
		cmp	ax,word [bp-2]
		jne	..@j648
		cmp	dx,word [bp-4]
		jne	..@j648
		jmp	..@j650
		jmp	..@j648
..@j650:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		jne	..@j649
		jmp	..@j648
..@j649:
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	al,byte [si]
		mov	byte [bp-1828],al
		mov	byte [bp-1827],0
		mov	si,word [bp-1828]
		cmp	byte [bx+si],92
		jne	..@j647
		jmp	..@j648
..@j647:
		lea	ax,[bp-517]
		push	ax
		mov	ax,255
		push	ax
		mov	al,byte [bp-517]
		mov	ah,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j648:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-517]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$DOS$_Ld6
EXTERN	_$DOS$_Ld5
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_POS$SHORTSTRING$SHORTSTRING$$SMALLINT
EXTERN	_$DOS$_Ld4
EXTERN	_$DOS$_Ld3
EXTERN	fpc_shortstr_concat
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	_$DOS$_Ld2
EXTERN	fpc_shortstr_concat_multi
EXTERN	fpc_shortstr_copy
EXTERN	_$DOS$_Ld1
EXTERN	fpc_shortstr_setlength
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	DOS_$$_GETDIRIO$BYTE$SHORTSTRING
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	SYSTEM_$$_UPCASE$SHORTSTRING$$SHORTSTRING
EXTERN	fpc_shortstr_to_shortstr
EXTERN	TC_$SYSTEM_$$_FILENAMECASEPRESERVING
