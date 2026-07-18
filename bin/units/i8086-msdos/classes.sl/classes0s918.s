BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEPROPERTY$TPERSISTENT$POINTER
CLASSES$_$TWRITER_$__$$_WRITEPROPERTY$TPERSISTENT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,416
		mov	word [bp-14],0
		mov	word [bp-46],0
		mov	word [bp-48],0
		mov	word [bp-50],0
		mov	word [bp-52],0
		mov	word [bp-54],0
		mov	word [bp-56],0
		mov	word [bp-68],0
		mov	word [bp-70],0
		mov	word [bp-416],0
		lea	ax,[bp-414]
		push	ax
		call	fpc_variant_init
		mov	word [bp-142],0
		mov	word [bp-140],0
		mov	ax,1
		push	ax
		lea	ax,[bp-134]
		push	ax
		lea	ax,[bp-128]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j22426
		mov	bx,word [bp+4]
		cmp	word [bx+2],0
		je	..@j22428
		jmp	..@j22429
..@j22428:
		jmp	..@j22426
..@j22429:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		cmp	word [bx+4],0
		je	..@j22432
		jmp	..@j22433
..@j22432:
		mov	bx,word [bp-4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j22434
		cmp	dx,15
		jne	..@j22434
		jmp	..@j22435
..@j22434:
		jmp	..@j22426
..@j22435:
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		mov	word [bp-64],ax
		mov	bx,word [bp-64]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j22442
		jmp	..@j22444
..@j22444:
		mov	bx,word [bp-64]
		test	byte [bx+24],4
		je	..@j22442
		jmp	..@j22443
..@j22442:
		jmp	..@j22426
..@j22443:
..@j22433:
		mov	bx,word [bp+8]
		cmp	word [bx+6],0
		jne	..@j22451
		jmp	..@j22450
..@j22451:
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		cmp	ax,word [bp+6]
		je	..@j22449
		jmp	..@j22452
..@j22452:
		mov	bx,word [bp+8]
		mov	bx,word [bx+6]
		mov	ax,word [bx]
		mov	word [bp-138],ax
		mov	dx,word [bp-138]
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cmp	dx,ax
		je	..@j22449
		jmp	..@j22450
..@j22449:
		mov	byte [bp-1],1
		jmp	..@j22459
..@j22450:
		mov	byte [bp-1],0
..@j22459:
		mov	bx,word [bp-4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		test	ax,ax
		jl	..@j22461
		test	ax,ax
		jg	..@j22472
		cmp	dx,1
		jb	..@j22461
..@j22472:
		test	ax,ax
		jl	..@j22462
		test	ax,ax
		jg	..@j22473
		cmp	dx,3
		jbe	..@j22462
..@j22473:
		test	ax,ax
		jne	..@j22474
		cmp	dx,4
		je	..@j22463
..@j22474:
		test	ax,ax
		jne	..@j22475
		cmp	dx,5
		je	..@j22462
..@j22475:
		test	ax,ax
		jne	..@j22476
		cmp	dx,6
		je	..@j22464
..@j22476:
		test	ax,ax
		jl	..@j22461
		test	ax,ax
		jg	..@j22477
		cmp	dx,7
		jb	..@j22461
..@j22477:
		test	ax,ax
		jl	..@j22465
		test	ax,ax
		jg	..@j22478
		cmp	dx,9
		jbe	..@j22465
..@j22478:
		test	ax,ax
		jne	..@j22479
		cmp	dx,10
		je	..@j22466
..@j22479:
		test	ax,ax
		jne	..@j22480
		cmp	dx,11
		je	..@j22468
..@j22480:
		test	ax,ax
		jne	..@j22481
		cmp	dx,15
		je	..@j22469
..@j22481:
		test	ax,ax
		jne	..@j22482
		cmp	dx,17
		je	..@j22462
..@j22482:
		test	ax,ax
		jne	..@j22483
		cmp	dx,18
		je	..@j22471
..@j22483:
		test	ax,ax
		jl	..@j22461
		test	ax,ax
		jg	..@j22484
		cmp	dx,19
		jb	..@j22461
..@j22484:
		test	ax,ax
		jl	..@j22470
		test	ax,ax
		jg	..@j22485
		cmp	dx,20
		jbe	..@j22470
..@j22485:
		test	ax,ax
		jne	..@j22486
		cmp	dx,24
		je	..@j22467
..@j22486:
		jmp	..@j22461
..@j22462:
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		cmp	byte [bp-1],0
		jne	..@j22493
		jmp	..@j22494
..@j22493:
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
		mov	word [bp-12],dx
		mov	word [bp-10],cx
		jmp	..@j22501
..@j22494:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-12],ax
		mov	ax,word [bx+12]
		mov	word [bp-10],ax
..@j22501:
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp-10]
		jne	..@j22504
		cmp	dx,word [bp-12]
		jne	..@j22504
		jmp	..@j22506
		jmp	..@j22506
..@j22506:
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		cmp	ax,-32768
		jne	..@j22505
		cmp	dx,0
		jne	..@j22505
		jmp	..@j22504
..@j22504:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-140]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-142]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-140]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp-4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		test	ax,ax
		jne	..@j22532
		cmp	dx,1
		je	..@j22527
..@j22532:
		test	ax,ax
		jne	..@j22533
		cmp	dx,2
		je	..@j22528
..@j22533:
		test	ax,ax
		jne	..@j22534
		cmp	dx,3
		je	..@j22531
..@j22534:
		test	ax,ax
		jne	..@j22535
		cmp	dx,5
		je	..@j22530
..@j22535:
		test	ax,ax
		jne	..@j22536
		cmp	dx,17
		je	..@j22529
..@j22536:
		jmp	..@j22526
..@j22527:
		mov	bx,word [bp+4]
		push	word [bx]
		call	CLASSES_$$_FINDINTTOIDENT$POINTER$$TINTTOIDENT
		mov	word [bp-16],ax
		cmp	word [bp-16],0
		jne	..@j22543
		jmp	..@j22542
..@j22543:
		push	word [bp-6]
		push	word [bp-8]
		lea	ax,[bp-14]
		push	ax
		mov	ax,word [bp-16]
		call	ax
		test	al,al
		jne	..@j22541
		jmp	..@j22542
..@j22541:
		push	word [bp+8]
		push	word [bp-14]
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j22552
..@j22542:
		push	word [bp+8]
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
..@j22552:
		jmp	..@j22525
..@j22528:
		push	word [bp+8]
		mov	al,byte [bp-8]
		mov	ah,0
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITECHAR$CHAR
		jmp	..@j22525
..@j22529:
		push	word [bp+8]
		push	word [bp-8]
		call	CLASSES$_$TWRITER_$__$$_WRITEWIDECHAR$WIDECHAR
		jmp	..@j22525
..@j22530:
		mov	bx,word [bp+8]
		push	word [bx+9]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-4]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		push	word [bx+1]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
		jmp	..@j22525
..@j22531:
		push	word [bp+8]
		lea	ax,[bp-142]
		push	ax
		push	word [bp-4]
		push	word [bp-8]
		call	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
		push	word [bp-142]
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j22525
..@j22526:
..@j22525:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22505:
		jmp	..@j22460
..@j22463:
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
		wait fstp	tword [bp-26]
		DB	09bh
		cmp	byte [bp-1],0
		jne	..@j22591
		jmp	..@j22592
..@j22591:
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
		wait fstp	tword [bp-36]
		DB	09bh
		jmp	..@j22599
..@j22592:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-12],ax
		mov	ax,word [bx+12]
		mov	word [bp-10],ax
		mov	bx,word [bp+4]
		lea	bx,[bx+10]
		wait fld	dword [bx]
		wait fstp	tword [bp-36]
		DB	09bh
..@j22599:
		wait fld	tword [bp-36]
		wait fld	tword [bp-26]
		wait fcompp
		fstsw	[bp-138]
		mov	ah,byte [bp-137]
		sahf
		jp	..@j22604
		jne	..@j22604
		jmp	..@j22606
..@j22606:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,-32768
		jne	..@j22605
		cmp	ax,0
		jne	..@j22605
		jmp	..@j22604
..@j22604:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		push	word [bp-18]
		push	word [bp-20]
		push	word [bp-22]
		push	word [bp-24]
		push	word [bp-26]
		call	CLASSES$_$TWRITER_$__$$_WRITEFLOAT$EXTENDED
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22605:
		jmp	..@j22460
..@j22464:
		lea	ax,[bp-40]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD
		cmp	byte [bp-1],0
		jne	..@j22637
		jmp	..@j22638
..@j22637:
		lea	ax,[bp-44]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD
		jmp	..@j22645
..@j22638:
		mov	word [bp-42],0
		mov	word [bp-44],0
..@j22645:
		mov	byte [bp-121],0
		mov	bx,word [bp+8]
		cmp	word [bx+26],0
		jne	..@j22652
		jmp	..@j22653
..@j22652:
		mov	bx,word [bp+8]
		push	word [bx+28]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-40]
		push	ax
		lea	ax,[bp-44]
		push	ax
		lea	ax,[bp-121]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
..@j22653:
		cmp	byte [bp-121],0
		je	..@j22671
		jmp	..@j22669
..@j22671:
		mov	ax,word [bp-40]
		cmp	ax,word [bp-44]
		jne	..@j22670
		jmp	..@j22669
..@j22670:
		cmp	word [bp-40],0
		je	..@j22668
		jmp	..@j22672
..@j22672:
		mov	bx,word [bp+8]
		mov	bx,word [bx+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-398]
		push	ax
		push	word [bp-40]
		call	SYSTEM$_$TOBJECT_$__$$_METHODNAME$NEARPOINTER$$SHORTSTRING
		cmp	byte [bp-398],0
		ja	..@j22668
		jmp	..@j22669
..@j22668:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		cmp	word [bp-40],0
		jne	..@j22697
		jmp	..@j22698
..@j22697:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-398]
		push	ax
		push	word [bp-40]
		call	SYSTEM$_$TOBJECT_$__$$_METHODNAME$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-398]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
		jmp	..@j22715
..@j22698:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	ax,0
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+86]
		call	ax
..@j22715:
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22669:
		jmp	..@j22460
..@j22465:
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-142]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
		push	word [bp-142]
		call	fpc_ansistr_assign
		cmp	byte [bp-1],0
		jne	..@j22732
		jmp	..@j22733
..@j22732:
		lea	ax,[bp-52]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
		jmp	..@j22740
..@j22733:
		lea	ax,[bp-52]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j22740:
		push	word [bp-50]
		push	word [bp-52]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j22747
		cmp	cx,0
		jne	..@j22747
		jmp	..@j22748
..@j22747:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp+8]
		cmp	word [bx+30],0
		jne	..@j22771
		jmp	..@j22772
..@j22771:
		mov	bx,word [bp+8]
		push	word [bx+32]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		lea	ax,[bp-50]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+30]
		call	ax
..@j22772:
		push	word [bp+8]
		push	word [bp-50]
		call	CLASSES$_$TWRITER_$__$$_WRITESTRING$ANSISTRING
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22748:
		jmp	..@j22460
..@j22466:
		lea	ax,[bp-46]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
		cmp	byte [bp-1],0
		jne	..@j22795
		jmp	..@j22796
..@j22795:
		lea	ax,[bp-48]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
		jmp	..@j22803
..@j22796:
		lea	ax,[bp-48]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_setlength
..@j22803:
		push	word [bp-46]
		push	word [bp-48]
		call	fpc_unicodestr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j22808
		cmp	cx,0
		jne	..@j22808
		jmp	..@j22809
..@j22808:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		push	word [bp-46]
		call	CLASSES$_$TWRITER_$__$$_WRITEWIDESTRING$WIDESTRING
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22809:
		jmp	..@j22460
..@j22467:
		lea	ax,[bp-54]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
		cmp	byte [bp-1],0
		jne	..@j22844
		jmp	..@j22845
..@j22844:
		lea	ax,[bp-56]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
		jmp	..@j22852
..@j22845:
		lea	ax,[bp-56]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_setlength
..@j22852:
		push	word [bp-54]
		push	word [bp-56]
		call	fpc_unicodestr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j22857
		cmp	cx,0
		jne	..@j22857
		jmp	..@j22858
..@j22857:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		push	word [bp-54]
		call	CLASSES$_$TWRITER_$__$$_WRITEUNICODESTRING$UNICODESTRING
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22858:
		jmp	..@j22460
..@j22468:
		cmp	word [TC_$SYSTEM_$$_VARCLEARPROC],0
		je	..@j22887
		jmp	..@j22888
..@j22887:
..@j22889:
		mov	ax,word VMT_$CLASSES_$$_EWRITEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRNOVARIANTSUPPORT+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j22889
		push	ax
		push	bp
		call	fpc_raiseexception
..@j22888:
		lea	ax,[bp-414]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
		lea	di,[bp-102]
		push	ss
		pop	es
		lea	si,[bp-414]
		cld
		mov	cx,8
		rep
		movsw
		cmp	byte [bp-1],0
		jne	..@j22910
		jmp	..@j22911
..@j22910:
		lea	ax,[bp-414]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
		lea	di,[bp-118]
		push	ss
		pop	es
		lea	si,[bp-414]
		cld
		mov	cx,8
		rep
		movsw
		jmp	..@j22920
..@j22911:
		lea	ax,[bp-118]
		push	ax
		mov	ax,16
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j22920:
		lea	ax,[bp-102]
		push	ax
		lea	ax,[bp-118]
		push	ax
		mov	ax,16
		push	ax
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		jne	..@j22927
		jmp	..@j22928
..@j22927:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		lea	si,[bp-102]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,8
		rep
		movsw
		call	CLASSES$_$TWRITER_$__$$_WRITEVARIANT$VARIANT
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j22928:
		jmp	..@j22460
..@j22469:
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		mov	word [bp-64],ax
		cmp	byte [bp-1],0
		jne	..@j22965
		jmp	..@j22966
..@j22965:
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		mov	word [bp-58],ax
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		push	word [bp-58]
		call	fpc_do_is
		test	al,al
		jne	..@j22975
		jmp	..@j22974
..@j22975:
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		push	word [bp-64]
		call	fpc_do_is
		test	al,al
		jne	..@j22973
		jmp	..@j22974
..@j22973:
		mov	ax,word [bp-58]
		cmp	ax,word [bp-64]
		jne	..@j22988
		jmp	..@j22985
..@j22988:
		mov	bx,word [bp-58]
		mov	si,word [bp+8]
		mov	ax,word [bx+6]
		cmp	ax,word [si+12]
		je	..@j22987
		jmp	..@j22985
..@j22987:
		mov	bx,word [bp-64]
		mov	si,word [bp+8]
		mov	ax,word [bx+6]
		cmp	ax,word [si+2]
		je	..@j22986
		jmp	..@j22985
..@j22986:
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp-58]
		push	word [bx+8]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-142]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp-64]
		push	word [bx+8]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-140]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j22985
		cmp	cx,0
		jne	..@j22985
		jmp	..@j22984
..@j22984:
		mov	ax,word [bp-64]
		mov	word [bp-58],ax
..@j22985:
..@j22974:
		jmp	..@j23003
..@j22966:
		mov	word [bp-58],0
..@j23003:
		cmp	word [bp-64],0
		je	..@j23006
		jmp	..@j23007
..@j23006:
		mov	ax,word [bp-64]
		cmp	ax,word [bp-58]
		jne	..@j23008
		jmp	..@j23009
..@j23008:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	ax,word _$CLASSES$_Ld76
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+78]
		call	ax
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j23009:
		jmp	..@j23034
..@j23007:
		mov	bx,word [bp-64]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TPERSISTENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j23035
		jmp	..@j23036
..@j23035:
		mov	bx,word [bp-64]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TCOMPONENT
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j23043
		jmp	..@j23042
..@j23043:
		mov	bx,word [bp-64]
		test	byte [bx+24],4
		je	..@j23041
		jmp	..@j23048
..@j23048:
		mov	bx,word [bp-64]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+6]
		jne	..@j23049
		jmp	..@j23042
..@j23049:
		mov	bx,word [bp-64]
		cmp	word [bx+6],0
		jne	..@j23041
		jmp	..@j23042
..@j23041:
		mov	ax,word [bp-64]
		mov	word [bp-62],ax
		mov	ax,word [bp-64]
		cmp	ax,word [bp-58]
		jne	..@j23054
		jmp	..@j23053
..@j23054:
		mov	bx,word [bp-62]
		test	byte [bx+24],8
		je	..@j23052
		jmp	..@j23053
..@j23052:
		lea	ax,[bp-70]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp-62]
		mov	word [bp-60],ax
		jmp	..@j23062
	ALIGN 2
..@j23061:
		cmp	word [bp-70],0
		jne	..@j23064
		jmp	..@j23065
..@j23064:
		lea	ax,[bp-70]
		push	ax
		mov	ax,word _$CLASSES$_Ld15
		push	ax
		push	word [bp-70]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j23065:
		mov	bx,word [bp-60]
		mov	si,word [bp+8]
		mov	ax,word [bx+6]
		cmp	ax,word [si+4]
		je	..@j23074
		jmp	..@j23075
..@j23074:
		lea	ax,[bp-70]
		push	ax
		mov	bx,word [bp-60]
		push	word [bx+8]
		push	word [bp-70]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j23063
		jmp	..@j23084
..@j23075:
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-60]
		je	..@j23085
		jmp	..@j23086
..@j23085:
		lea	ax,[bp-70]
		push	ax
		mov	ax,word _$CLASSES$_Ld77
		push	ax
		push	word [bp-70]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j23063
..@j23086:
..@j23084:
		lea	ax,[bp-70]
		push	ax
		mov	bx,word [bp-60]
		push	word [bx+8]
		push	word [bp-70]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp-60]
		mov	ax,word [bx+6]
		mov	word [bp-60],ax
..@j23062:
		cmp	word [bp-60],0
		jne	..@j23105
		jmp	..@j23063
..@j23105:
		mov	bx,word [bp-60]
		cmp	word [bx+8],0
		jne	..@j23061
		jmp	..@j23063
..@j23063:
		cmp	word [bp-60],0
		je	..@j23108
		jmp	..@j23107
..@j23108:
		mov	bx,word [bp-62]
		cmp	word [bx+6],0
		je	..@j23106
		jmp	..@j23107
..@j23106:
		cmp	word [bp-70],0
		jne	..@j23109
		jmp	..@j23110
..@j23109:
		lea	ax,[bp-70]
		push	ax
		push	word [bp-70]
		mov	ax,word _$CLASSES$_Ld78
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j23110:
..@j23107:
		mov	bx,word [bp-70]
		test	bx,bx
		je	..@j23121
		mov	bx,word [bx-2]
..@j23121:
		cmp	bx,0
		jg	..@j23119
		jmp	..@j23120
..@j23119:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		push	word [bp-70]
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j23120:
..@j23053:
		jmp	..@j23146
..@j23042:
		mov	bx,word [bp+8]
		mov	ax,word [bx+6]
		mov	word [bp-66],ax
		lea	ax,[bp-68]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		call	fpc_ansistr_assign
		mov	ax,1
		push	ax
		lea	ax,[bp-154]
		push	ax
		lea	ax,[bp-148]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j23153
		mov	bx,word [bp+8]
		lea	ax,[bx+14]
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+14]
		mov	word [bp-160],ax
		lea	ax,[bp-416]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		mov	ax,word [bp-416]
		mov	word [bp-158],ax
		mov	ax,word _$CLASSES$_Ld15
		mov	word [bp-156],ax
		lea	ax,[bp-160]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		cmp	byte [bp-1],0
		jne	..@j23170
		jmp	..@j23171
..@j23170:
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		mov	bx,word [bp+8]
		mov	word [bx+6],ax
..@j23171:
		push	word [bp+8]
		push	word [bp-64]
		call	CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
..@j23153:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+8]
		mov	ax,word [bp-66]
		mov	word [bx+6],ax
		mov	bx,word [bp+8]
		lea	ax,[bx+14]
		push	ax
		push	word [bp-68]
		call	fpc_ansistr_assign
		pop	ax
		test	ax,ax
		je	..@j23154
		call	FPC_RERAISE
..@j23154:
		mov	bx,word [bp-64]
		mov	ax,word [bx]
		push	ax
		mov	ax,word VMT_$CLASSES_$$_TCOLLECTION
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		jne	..@j23188
		jmp	..@j23189
..@j23188:
		cmp	byte [bp-1],0
		je	..@j23194
		jmp	..@j23196
..@j23196:
		push	word [bp-64]
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+2]
		mov	bx,word [bp+8]
		push	word [bx+12]
		call	CLASSES_$$_COLLECTIONSEQUAL$TCOLLECTION$TCOLLECTION$TCOMPONENT$TCOMPONENT$$BOOLEAN
		test	al,al
		je	..@j23194
		jmp	..@j23195
..@j23194:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		lea	ax,[bp-68]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		call	fpc_ansistr_assign
		mov	ax,1
		push	ax
		lea	ax,[bp-154]
		push	ax
		lea	ax,[bp-148]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j23231
		mov	bx,word [bp+8]
		lea	ax,[bx+14]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		push	word [bp+8]
		push	word [bp-64]
		call	CLASSES$_$TWRITER_$__$$_WRITECOLLECTION$TCOLLECTION
..@j23231:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+8]
		lea	ax,[bx+14]
		push	ax
		push	word [bp-68]
		call	fpc_ansistr_assign
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
		pop	ax
		test	ax,ax
		je	..@j23232
		call	FPC_RERAISE
..@j23232:
..@j23195:
..@j23189:
..@j23146:
..@j23036:
..@j23034:
		jmp	..@j22460
..@j22470:
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
		mov	word [bp-78],dx
		mov	word [bp-76],cx
		mov	word [bp-74],bx
		mov	word [bp-72],ax
		cmp	byte [bp-1],0
		jne	..@j23256
		jmp	..@j23257
..@j23256:
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
		mov	word [bp-86],dx
		mov	word [bp-84],cx
		mov	word [bp-82],bx
		mov	word [bp-80],ax
		jmp	..@j23264
..@j23257:
		mov	word [bp-86],0
		mov	word [bp-84],0
		mov	word [bp-82],0
		mov	word [bp-80],0
..@j23264:
		mov	dx,word [bp-78]
		mov	cx,word [bp-76]
		mov	ax,word [bp-74]
		mov	bx,word [bp-72]
		cmp	bx,word [bp-80]
		jne	..@j23267
		cmp	ax,word [bp-82]
		jne	..@j23267
		cmp	cx,word [bp-84]
		jne	..@j23267
		cmp	dx,word [bp-86]
		jne	..@j23267
		jmp	..@j23268
		jmp	..@j23268
..@j23267:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		push	word [bp-72]
		push	word [bp-74]
		push	word [bp-76]
		push	word [bp-78]
		call	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$INT64
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j23268:
		jmp	..@j22460
..@j22471:
		push	word [bp+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
		cmp	ax,0
		jne	..@j23293
		cmp	bx,0
		jne	..@j23293
		cmp	cx,0
		jne	..@j23293
		cmp	dx,0
		jne	..@j23293
		jmp	..@j23294
..@j23293:
		mov	byte [bp-119],1
		jmp	..@j23299
..@j23294:
		mov	byte [bp-119],0
..@j23299:
		cmp	byte [bp-1],0
		jne	..@j23300
		jmp	..@j23301
..@j23300:
		mov	bx,word [bp+8]
		push	word [bx+6]
		push	word [bp+4]
		call	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
		cmp	ax,0
		jne	..@j23302
		cmp	bx,0
		jne	..@j23302
		cmp	cx,0
		jne	..@j23302
		cmp	dx,0
		jne	..@j23302
		jmp	..@j23303
..@j23302:
		mov	byte [bp-120],1
		jmp	..@j23308
..@j23303:
		mov	byte [bp-120],0
..@j23308:
		jmp	..@j23309
..@j23301:
		mov	bx,word [bp+4]
		mov	dx,word [bx+10]
		mov	ax,word [bx+12]
		cmp	ax,0
		jne	..@j23310
		cmp	dx,0
		jne	..@j23310
		jmp	..@j23311
..@j23310:
		mov	byte [bp-120],1
		jmp	..@j23312
..@j23311:
		mov	byte [bp-120],0
..@j23312:
		mov	bx,word [bp+4]
		mov	ax,word [bx+10]
		mov	word [bp-12],ax
		mov	ax,word [bx+12]
		mov	word [bp-10],ax
..@j23309:
		mov	al,byte [bp-119]
		cmp	al,byte [bp-120]
		jne	..@j23315
		jmp	..@j23317
..@j23317:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,-32768
		jne	..@j23316
		cmp	ax,0
		jne	..@j23316
		jmp	..@j23315
..@j23315:
		mov	bx,word [bp+8]
		push	word [bx+9]
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-142]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+14]
		lea	ax,[bp-140]
		push	ax
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-140]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-142]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp+8]
		mov	al,byte [bp-119]
		mov	ah,0
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEBOOLEAN$BOOLEAN
		mov	bx,word [bp+8]
		push	word [bx+9]
		mov	bx,word [bp+8]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j23316:
		jmp	..@j22460
..@j22461:
..@j22460:
..@j22426:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-416]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-414]
		push	ax
		call	fpc_variant_clear
		lea	ax,[bp-142]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-140]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-46]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-48]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-50]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-52]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-54]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-56]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-68]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-70]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j22427
		call	FPC_RERAISE
..@j22427:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_unicodestr_decr_ref
EXTERN	fpc_variant_clear
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEBOOLEAN$BOOLEAN
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$INT64
EXTERN	TYPINFO_$$_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECOLLECTION$TCOLLECTION
EXTERN	CLASSES_$$_COLLECTIONSEQUAL$TCOLLECTION$TCOLLECTION$TCOMPONENT$TCOMPONENT$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TCOLLECTION
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEPROPERTIES$TPERSISTENT
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$CLASSES$_Ld78
EXTERN	_$CLASSES$_Ld77
EXTERN	_$CLASSES$_Ld15
EXTERN	VMT_$CLASSES_$$_TPERSISTENT
EXTERN	_$CLASSES$_Ld76
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	fpc_do_is
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEVARIANT$VARIANT
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	TYPINFO_$$_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRNOVARIANTSUPPORT
EXTERN	VMT_$CLASSES_$$_EWRITEERROR
EXTERN	TC_$SYSTEM_$$_VARCLEARPROC
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEUNICODESTRING$UNICODESTRING
EXTERN	TYPINFO_$$_GETUNICODESTRPROP$TOBJECT$PPROPINFO$$UNICODESTRING
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEWIDESTRING$WIDESTRING
EXTERN	fpc_unicodestr_compare_equal
EXTERN	fpc_unicodestr_setlength
EXTERN	TYPINFO_$$_GETWIDESTRPROP$TOBJECT$PPROPINFO$$WIDESTRING
EXTERN	CLASSES$_$TWRITER_$__$$_WRITESTRING$ANSISTRING
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
EXTERN	TYPINFO_$$_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_METHODNAME$NEARPOINTER$$SHORTSTRING
EXTERN	TYPINFO_$$_GETMETHODPROP$TOBJECT$PPROPINFO$$TMETHOD
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEFLOAT$EXTENDED
EXTERN	TYPINFO_$$_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
EXTERN	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEWIDECHAR$WIDECHAR
EXTERN	CLASSES$_$TWRITER_$__$$_WRITECHAR$CHAR
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
EXTERN	CLASSES_$$_FINDINTTOIDENT$POINTER$$TINTTOIDENT
EXTERN	fpc_ansistr_concat
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_ansistr_decr_ref
EXTERN	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TCOMPONENT
EXTERN	TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_variant_init
