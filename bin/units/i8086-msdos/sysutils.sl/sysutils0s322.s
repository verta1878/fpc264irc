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
	GLOBAL SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,94
		cmp	word [bp+6],1
		jg	..@j11235
		jmp	..@j11236
..@j11235:
		jmp	..@j11178
..@j11236:
		mov	ax,word [bp+8]
		test	ax,ax
		jne	..@j11239
		mov	ax,word FPC_EMPTYCHAR
..@j11239:
		mov	word [bp-6],ax
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j11242
		mov	bx,word [bx-2]
..@j11242:
		mov	ax,word [bp-6]
		add	ax,bx
		mov	word [bp-8],ax
		mov	byte [bp-11],0
		mov	byte [bp-17],0
		mov	ax,word [bp-6]
		mov	word [bp-14],ax
		jmp	..@j11250
	ALIGN 2
..@j11249:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		cmp	al,34
		jb	..@j11255
		sub	al,34
		je	..@j11256
		sub	al,5
		je	..@j11256
		sub	al,26
		je	..@j11257
		sub	al,32
		je	..@j11257
		jmp	..@j11255
..@j11256:
		inc	word [bp-14]
		jmp	..@j11259
	ALIGN 2
..@j11258:
		inc	word [bp-14]
..@j11259:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j11261
		jmp	..@j11260
..@j11261:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		cmp	al,byte [bp-1]
		jne	..@j11258
		jmp	..@j11260
..@j11260:
		jmp	..@j11254
..@j11257:
		push	word [bp-14]
		mov	ax,word _$SYSUTILS$_Ld667
		push	ax
		mov	ax,3
		push	ax
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j11262
		jmp	..@j11265
..@j11265:
		push	word [bp-14]
		mov	ax,word _$SYSUTILS$_Ld668
		push	ax
		mov	ax,4
		push	ax
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j11262
		jmp	..@j11264
..@j11264:
		push	word [bp-14]
		mov	ax,word _$SYSUTILS$_Ld669
		push	ax
		mov	ax,5
		push	ax
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j11262
		jmp	..@j11263
..@j11262:
		mov	byte [bp-11],1
		jmp	..@j11251
..@j11263:
		jmp	..@j11254
..@j11255:
..@j11254:
		inc	word [bp-14]
..@j11250:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j11249
		jmp	..@j11251
..@j11251:
		mov	byte [bp-1],255
		mov	byte [bp-2],32
		mov	byte [bp-3],72
		jmp	..@j11293
	ALIGN 2
..@j11292:
		mov	bx,word [bp-6]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		mov	byte [bp-1],al
		mov	word [bp-10],1
		mov	ax,word [bp-6]
		inc	ax
		mov	word [bp-14],ax
		mov	al,byte [bp-1]
		cmp	al,32
		jb	..@j11304
		sub	al,32
		je	..@j11311
		sub	al,2
		je	..@j11305
		sub	al,5
		je	..@j11305
		sub	al,8
		je	..@j11307
		sub	al,11
		je	..@j11308
		sub	al,7
		je	..@j11306
		sub	al,2
		jb	..@j11304
		sub	al,1
		jbe	..@j11311
		sub	al,2
		je	..@j11311
		sub	al,2
		je	..@j11311
		sub	al,5
		jb	..@j11304
		sub	al,1
		jbe	..@j11311
		sub	al,5
		jb	..@j11304
		sub	al,1
		jbe	..@j11311
		sub	al,5
		jb	..@j11304
		sub	al,1
		jbe	..@j11311
		dec	al
		je	..@j11309
		sub	al,2
		je	..@j11310
		jmp	..@j11304
..@j11305:
		jmp	..@j11313
	ALIGN 2
..@j11312:
		inc	word [bp-14]
..@j11313:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j11315
		jmp	..@j11314
..@j11315:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		cmp	al,byte [bp-1]
		jne	..@j11312
		jmp	..@j11314
..@j11314:
		inc	word [bp-14]
		mov	ax,word [bp-14]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-10],ax
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp-6]
		inc	ax
		push	ax
		mov	ax,word [bp-10]
		sub	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		jmp	..@j11303
..@j11306:
		push	word [bp-6]
		mov	ax,word _$SYSUTILS$_Ld668
		push	ax
		mov	ax,4
		push	ax
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j11324
		jmp	..@j11325
..@j11324:
		mov	word [bp-10],4
		mov	bx,word [bp+10]
		cmp	word [bx-270],12
		jb	..@j11334
		jmp	..@j11335
..@j11334:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+14]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
		jmp	..@j11340
..@j11335:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+16]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
..@j11340:
		jmp	..@j11345
..@j11325:
		push	word [bp-6]
		mov	ax,word _$SYSUTILS$_Ld669
		push	ax
		mov	ax,5
		push	ax
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j11346
		jmp	..@j11347
..@j11346:
		mov	word [bp-10],5
		mov	bx,word [bp+10]
		cmp	word [bx-270],12
		jb	..@j11356
		jmp	..@j11357
..@j11356:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		jmp	..@j11364
..@j11357:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp-6]
		add	ax,3
		push	ax
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
..@j11364:
		jmp	..@j11371
..@j11347:
		push	word [bp-6]
		mov	ax,word _$SYSUTILS$_Ld667
		push	ax
		mov	ax,3
		push	ax
		call	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
		test	ax,ax
		je	..@j11372
		jmp	..@j11373
..@j11372:
		mov	word [bp-10],3
		mov	bx,word [bp+10]
		cmp	word [bx-270],12
		jb	..@j11382
		jmp	..@j11383
..@j11382:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		jmp	..@j11390
..@j11383:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp-6]
		add	ax,2
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
..@j11390:
		jmp	..@j11397
..@j11373:
..@j11398:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word _$SYSUTILS$_Ld670
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j11398
		push	ax
		push	bp
		call	fpc_raiseexception
..@j11397:
..@j11371:
..@j11345:
		jmp	..@j11303
..@j11307:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		lea	ax,[bx+5]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		jmp	..@j11303
..@j11308:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		lea	ax,[bx+6]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		jmp	..@j11303
..@j11309:
		mov	bx,word [bp+10]
		test	byte [bx+4],1
		jne	..@j11423
		jmp	..@j11424
..@j11423:
		mov	byte [bp-17],1
		jmp	..@j11427
..@j11424:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
..@j11427:
		jmp	..@j11303
..@j11310:
		mov	bx,word [bp+10]
		test	byte [bx+4],1
		jne	..@j11434
		jmp	..@j11435
..@j11434:
		mov	byte [bp-17],0
		jmp	..@j11438
..@j11435:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
..@j11438:
		jmp	..@j11303
..@j11311:
		jmp	..@j11446
	ALIGN 2
..@j11445:
		inc	word [bp-14]
..@j11446:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-8]
		jb	..@j11448
		jmp	..@j11447
..@j11448:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_UPCASE$CHAR$$CHAR
		cmp	al,byte [bp-1]
		je	..@j11445
		jmp	..@j11447
..@j11447:
		mov	ax,word [bp-14]
		mov	dx,word [bp-6]
		sub	ax,dx
		mov	word [bp-10],ax
		mov	al,byte [bp-1]
		cmp	al,32
		jb	..@j11454
		sub	al,32
		je	..@j11455
		sub	al,35
		je	..@j11464
		dec	al
		je	..@j11458
		sub	al,2
		je	..@j11465
		sub	al,2
		je	..@j11459
		sub	al,5
		je	..@j11457
		dec	al
		je	..@j11460
		sub	al,5
		je	..@j11461
		dec	al
		je	..@j11463
		sub	al,5
		je	..@j11456
		dec	al
		je	..@j11462
		jmp	..@j11454
..@j11455:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-6]
		push	word [bp-10]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
		jmp	..@j11453
..@j11456:
		cmp	word [bp-10],2
		jg	..@j11472
		jmp	..@j11473
..@j11472:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-262]
		mov	ax,4
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11480
..@j11473:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx-262]
		xor	dx,dx
		mov	cx,100
		div	cx
		push	dx
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11480:
		jmp	..@j11453
..@j11457:
		cmp	byte [bp-17],0
		jne	..@j11489
		jmp	..@j11488
..@j11489:
		cmp	byte [bp-3],72
		je	..@j11487
		jmp	..@j11490
..@j11490:
		cmp	byte [bp+4],0
		jne	..@j11487
		jmp	..@j11488
..@j11487:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx-272]
		mov	word [bp-66],ax
		mov	word [bp-78],0
		mov	word [bp-76],0
		mov	word [bp-74],0
		mov	bx,word [bp+10]
		mov	ax,word [bx-270]
		mov	word [bp-52],ax
		mov	word [bp-50],0
		mov	word [bp-48],0
		mov	word [bp-46],0
		fstcw	[bp-22]
		fstcw	[bp-20]
		DB	09bh
		or	word [bp-22],3840
		mov	bx,word [bp+10]
		wait fld	qword [bx+8]
		wait fabs
		wait fldcw	[bp-22]
		wait fistp	qword [bp-30]
		wait fldcw	[bp-20]
		DB	09bh
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-52],si
		adc	word [bp-50],cx
		adc	word [bp-48],dx
		adc	word [bp-46],ax
		push	word [bp-46]
		push	word [bp-48]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-66],si
		adc	word [bp-78],cx
		adc	word [bp-76],dx
		adc	word [bp-74],ax
		mov	ax,word [bp-66]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11509
..@j11488:
		cmp	byte [bp-2],72
		je	..@j11510
		jmp	..@j11512
..@j11512:
		cmp	byte [bp+4],0
		jne	..@j11510
		jmp	..@j11511
..@j11510:
		cmp	word [bp-10],1
		je	..@j11513
		jmp	..@j11514
..@j11513:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-272]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11521
..@j11514:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-272]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11521:
		jmp	..@j11528
..@j11511:
		mov	ax,word [bp-10]
		cmp	ax,1
		jl	..@j11530
		dec	ax
		je	..@j11531
		dec	ax
		je	..@j11532
		dec	ax
		je	..@j11533
		jmp	..@j11530
..@j11531:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-264]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11529
..@j11532:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-264]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11529
..@j11533:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	si,word [bp+10]
		mov	ax,word [si-264]
		mov	si,ax
		shl	si,1
		push	word [bx+si+20]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
		jmp	..@j11529
..@j11530:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	si,word [bp+10]
		mov	ax,word [si-264]
		mov	si,ax
		shl	si,1
		push	word [bx+si+44]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
..@j11529:
..@j11528:
..@j11509:
		jmp	..@j11453
..@j11458:
		mov	ax,word [bp-10]
		cmp	ax,1
		jl	..@j11555
		dec	ax
		je	..@j11556
		dec	ax
		je	..@j11557
		dec	ax
		je	..@j11558
		dec	ax
		je	..@j11559
		dec	ax
		je	..@j11560
		jmp	..@j11555
..@j11556:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-266]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11554
..@j11557:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-266]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11554
..@j11558:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	si,word [bp+10]
		mov	ax,word [si-268]
		mov	si,ax
		shl	si,1
		push	word [bx+si+68]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
		jmp	..@j11554
..@j11559:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		mov	si,word [bp+10]
		mov	ax,word [si-268]
		mov	si,ax
		shl	si,1
		push	word [bx+si+82]
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
		jmp	..@j11554
..@j11560:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
		jmp	..@j11554
..@j11555:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+12]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
..@j11554:
		jmp	..@j11453
..@j11459:
		cmp	byte [bp-17],0
		jne	..@j11597
		jmp	..@j11598
..@j11597:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx-270]
		mov	word [bp-32],ax
		mov	word [bp-34],0
		mov	word [bp-36],0
		mov	word [bp-38],0
		fstcw	[bp-22]
		fstcw	[bp-20]
		DB	09bh
		or	word [bp-22],3840
		mov	bx,word [bp+10]
		wait fld	qword [bx+8]
		wait fabs
		wait fldcw	[bp-22]
		wait fistp	qword [bp-30]
		wait fldcw	[bp-20]
		DB	09bh
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-32],si
		adc	word [bp-34],cx
		adc	word [bp-36],dx
		adc	word [bp-38],ax
		mov	ax,word [bp-32]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11611
..@j11598:
		cmp	byte [bp-11],0
		jne	..@j11612
		jmp	..@j11613
..@j11612:
		mov	bx,word [bp+10]
		mov	ax,word [bx-270]
		xor	dx,dx
		mov	cx,12
		div	cx
		mov	word [bp-16],dx
		cmp	word [bp-16],0
		je	..@j11616
		jmp	..@j11617
..@j11616:
		mov	word [bp-16],12
..@j11617:
		cmp	word [bp-10],1
		je	..@j11620
		jmp	..@j11621
..@j11620:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-16]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11628
..@j11621:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp-16]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11628:
		jmp	..@j11635
..@j11613:
		cmp	word [bp-10],1
		je	..@j11636
		jmp	..@j11637
..@j11636:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-270]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11644
..@j11637:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-270]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11644:
..@j11635:
..@j11611:
		jmp	..@j11453
..@j11460:
		cmp	byte [bp-17],0
		jne	..@j11651
		jmp	..@j11652
..@j11651:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx-272]
		mov	word [bp-64],ax
		mov	word [bp-72],0
		mov	word [bp-70],0
		mov	word [bp-68],0
		mov	bx,word [bp+10]
		mov	ax,word [bx-270]
		mov	word [bp-40],ax
		mov	word [bp-42],0
		mov	word [bp-44],0
		mov	word [bp-54],0
		fstcw	[bp-22]
		fstcw	[bp-20]
		DB	09bh
		or	word [bp-22],3840
		mov	bx,word [bp+10]
		wait fld	qword [bx+8]
		wait fabs
		wait fldcw	[bp-22]
		wait fistp	qword [bp-30]
		wait fldcw	[bp-20]
		DB	09bh
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-40],si
		adc	word [bp-42],cx
		adc	word [bp-44],dx
		adc	word [bp-54],ax
		push	word [bp-54]
		push	word [bp-44]
		push	word [bp-42]
		push	word [bp-40]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-64],si
		adc	word [bp-72],cx
		adc	word [bp-70],dx
		adc	word [bp-68],ax
		mov	ax,word [bp-64]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11671
..@j11652:
		cmp	word [bp-10],1
		je	..@j11672
		jmp	..@j11673
..@j11672:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-272]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11680
..@j11673:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-272]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11680:
..@j11671:
		jmp	..@j11453
..@j11461:
		cmp	byte [bp-17],0
		jne	..@j11687
		jmp	..@j11688
..@j11687:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx-274]
		mov	word [bp-88],ax
		mov	word [bp-94],0
		mov	word [bp-92],0
		mov	word [bp-90],0
		mov	bx,word [bp+10]
		mov	ax,word [bx-272]
		mov	word [bp-86],ax
		mov	word [bp-84],0
		mov	word [bp-82],0
		mov	word [bp-80],0
		mov	bx,word [bp+10]
		mov	ax,word [bx-270]
		mov	word [bp-60],ax
		mov	word [bp-58],0
		mov	word [bp-56],0
		mov	word [bp-62],0
		fstcw	[bp-22]
		fstcw	[bp-20]
		DB	09bh
		or	word [bp-22],3840
		mov	bx,word [bp+10]
		wait fld	qword [bx+8]
		wait fabs
		wait fldcw	[bp-22]
		wait fistp	qword [bp-30]
		wait fldcw	[bp-20]
		DB	09bh
		push	word [bp-24]
		push	word [bp-26]
		push	word [bp-28]
		push	word [bp-30]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,24
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-60],si
		adc	word [bp-58],cx
		adc	word [bp-56],dx
		adc	word [bp-62],ax
		push	word [bp-62]
		push	word [bp-56]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-86],si
		adc	word [bp-84],cx
		adc	word [bp-82],dx
		adc	word [bp-80],ax
		push	word [bp-80]
		push	word [bp-82]
		push	word [bp-84]
		push	word [bp-86]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	si,dx
		mov	dx,bx
		add	word [bp-88],si
		adc	word [bp-94],cx
		adc	word [bp-92],dx
		adc	word [bp-90],ax
		mov	ax,word [bp-88]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11713
..@j11688:
		cmp	word [bp-10],1
		je	..@j11714
		jmp	..@j11715
..@j11714:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-274]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11722
..@j11715:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-274]
		mov	ax,2
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11722:
..@j11713:
		jmp	..@j11453
..@j11462:
		cmp	word [bp-10],1
		je	..@j11729
		jmp	..@j11730
..@j11729:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-276]
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
		jmp	..@j11737
..@j11730:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		push	word [bx-276]
		mov	ax,3
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
..@j11737:
		jmp	..@j11453
..@j11463:
		cmp	word [bp-10],1
		je	..@j11744
		jmp	..@j11745
..@j11744:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+18]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
		jmp	..@j11754
..@j11745:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+20]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
..@j11754:
		jmp	..@j11453
..@j11464:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
		mov	bx,word [bp+10]
		cmp	word [bx-270],0
		jne	..@j11771
		jmp	..@j11774
..@j11774:
		mov	bx,word [bp+10]
		cmp	word [bx-272],0
		jne	..@j11771
		jmp	..@j11773
..@j11773:
		mov	bx,word [bp+10]
		cmp	word [bx-274],0
		jne	..@j11771
		jmp	..@j11772
..@j11771:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld630
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+20]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
..@j11772:
		jmp	..@j11453
..@j11465:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld630
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx+6]
		push	word [bx+20]
		mov	ax,word [bp+6]
		inc	ax
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREFORMAT$ANSISTRING$SMALLINT$BOOLEAN
		jmp	..@j11453
..@j11454:
..@j11453:
		mov	al,byte [bp-2]
		mov	byte [bp-3],al
		mov	al,byte [bp-1]
		mov	byte [bp-2],al
		jmp	..@j11303
..@j11304:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-1]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
..@j11303:
		mov	ax,word [bp-10]
		add	word [bp-6],ax
..@j11293:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jb	..@j11292
		jmp	..@j11294
..@j11294:
..@j11178:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$SYSUTILS$_Ld630
EXTERN	fpc_mul_int64
EXTERN	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STOREINT$SMALLINT$SMALLINT
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	_$SYSUTILS$_Ld670
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTRING$ANSISTRING
EXTERN	SYSUTILS$_$DATETIMETOSTRING$crcFCD1FCF1_$$_STORESTR$PCHAR$SMALLINT
EXTERN	SYSTEM_$$_UPCASE$CHAR$$CHAR
EXTERN	_$SYSUTILS$_Ld669
EXTERN	_$SYSUTILS$_Ld668
EXTERN	SYSUTILS_$$_STRLICOMP$PCHAR$PCHAR$SMALLINT$$SMALLINT
EXTERN	_$SYSUTILS$_Ld667
EXTERN	FPC_EMPTYCHAR
