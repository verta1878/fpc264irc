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
	GLOBAL STRUTILS_$$_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
STRUTILS_$$_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		push	word [bp+10]
		call	fpc_ansistr_incr_ref
		mov	word [bp-10],0
		mov	byte [bp-1],0
		lea	ax,[bp+10]
		push	ax
		lea	ax,[bp-10]
		push	ax
		push	word [bp+10]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-10]
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j3534
		mov	bx,word [bx-2]
..@j3534:
		mov	word [bp-6],bx
		cmp	word [bp+4],2
		je	..@j3535
		jmp	..@j3536
..@j3535:
		push	word [bp+10]
		call	STRUTILS_$$_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	bx,word [bp+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j3542
		cmp	dx,0
		jne	..@j3542
		jmp	..@j3541
..@j3541:
		cmp	word [bp-6],0
		mov	al,0
		jne	..@j3545
		inc	ax
..@j3545:
		mov	byte [bp-1],al
		jmp	..@j3546
..@j3542:
		mov	byte [bp-1],1
..@j3546:
		jmp	..@j3520
..@j3536:
		cmp	word [bp-6],0
		je	..@j3549
		jmp	..@j3550
..@j3549:
		jmp	..@j3520
..@j3550:
		mov	word [bp-4],1
		mov	bx,word [bp+8]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	byte [bp-7],0
		jmp	..@j3558
	ALIGN 2
..@j3557:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,1000
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3558:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3563
		jmp	..@j3559
..@j3563:
		cmp	word [bp+4],0
		jne	..@j3562
		jmp	..@j3564
..@j3564:
		cmp	word [bp-4],4
		jl	..@j3562
		jmp	..@j3559
..@j3562:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],77
		je	..@j3557
		jmp	..@j3559
..@j3559:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3567
		jmp	..@j3566
..@j3567:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],68
		je	..@j3565
		jmp	..@j3566
..@j3565:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,500
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j3570
..@j3566:
		mov	ax,word [bp-4]
		inc	ax
		cmp	ax,word [bp-6]
		jle	..@j3573
		jmp	..@j3572
..@j3573:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],67
		je	..@j3571
		jmp	..@j3572
..@j3571:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],77
		je	..@j3574
		jmp	..@j3575
..@j3574:
		add	word [bp-4],2
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,900
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j3578
..@j3575:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],68
		je	..@j3579
		jmp	..@j3580
..@j3579:
		add	word [bp-4],2
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,400
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3580:
..@j3578:
..@j3572:
..@j3570:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3585
		jmp	..@j3584
..@j3585:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],67
		je	..@j3583
		jmp	..@j3584
..@j3583:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,100
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3590
		jmp	..@j3589
..@j3590:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],67
		je	..@j3588
		jmp	..@j3589
..@j3588:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,100
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3589:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3595
		jmp	..@j3594
..@j3595:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],67
		je	..@j3593
		jmp	..@j3594
..@j3593:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,100
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3594:
		cmp	word [bp+4],0
		jne	..@j3601
		jmp	..@j3599
..@j3601:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3600
		jmp	..@j3599
..@j3600:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],67
		je	..@j3598
		jmp	..@j3599
..@j3598:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,100
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3599:
..@j3584:
		mov	ax,word [bp-4]
		inc	ax
		cmp	ax,word [bp-6]
		jle	..@j3606
		jmp	..@j3605
..@j3606:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],88
		je	..@j3604
		jmp	..@j3605
..@j3604:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],67
		je	..@j3607
		jmp	..@j3608
..@j3607:
		add	word [bp-4],2
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,90
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j3611
..@j3608:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],76
		je	..@j3612
		jmp	..@j3613
..@j3612:
		add	word [bp-4],2
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,40
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3613:
..@j3611:
..@j3605:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3618
		jmp	..@j3617
..@j3618:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],76
		je	..@j3616
		jmp	..@j3617
..@j3616:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,50
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3617:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3623
		jmp	..@j3622
..@j3623:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],88
		je	..@j3621
		jmp	..@j3622
..@j3621:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,10
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3628
		jmp	..@j3627
..@j3628:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],88
		je	..@j3626
		jmp	..@j3627
..@j3626:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,10
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3627:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3633
		jmp	..@j3632
..@j3633:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],88
		je	..@j3631
		jmp	..@j3632
..@j3631:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,10
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3632:
		cmp	word [bp+4],0
		jne	..@j3639
		jmp	..@j3637
..@j3639:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3638
		jmp	..@j3637
..@j3638:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],88
		je	..@j3636
		jmp	..@j3637
..@j3636:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,10
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3637:
..@j3622:
		mov	ax,word [bp-4]
		inc	ax
		cmp	ax,word [bp-6]
		jle	..@j3644
		jmp	..@j3643
..@j3644:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],73
		je	..@j3642
		jmp	..@j3643
..@j3642:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],88
		je	..@j3645
		jmp	..@j3646
..@j3645:
		mov	byte [bp-7],1
		add	word [bp-4],2
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,9
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		jmp	..@j3651
..@j3646:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		cmp	byte [bx+si-1],86
		je	..@j3652
		jmp	..@j3653
..@j3652:
		mov	byte [bp-7],1
		add	word [bp-4],2
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,4
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3653:
..@j3651:
..@j3643:
		cmp	byte [bp-7],0
		je	..@j3661
		jmp	..@j3659
..@j3661:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3660
		jmp	..@j3659
..@j3660:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],86
		je	..@j3658
		jmp	..@j3659
..@j3658:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,5
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3659:
		cmp	byte [bp-7],0
		je	..@j3667
		jmp	..@j3665
..@j3667:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3666
		jmp	..@j3665
..@j3666:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],73
		je	..@j3664
		jmp	..@j3665
..@j3664:
		mov	byte [bp-7],1
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,1
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3674
		jmp	..@j3673
..@j3674:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],73
		je	..@j3672
		jmp	..@j3673
..@j3672:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,1
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3673:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3679
		jmp	..@j3678
..@j3679:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],73
		je	..@j3677
		jmp	..@j3678
..@j3677:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,1
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3678:
		cmp	word [bp+4],0
		jne	..@j3685
		jmp	..@j3683
..@j3685:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3684
		jmp	..@j3683
..@j3684:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		cmp	byte [bx+si-1],73
		je	..@j3682
		jmp	..@j3683
..@j3682:
		inc	word [bp-4]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word [bx+2]
		add	ax,1
		adc	dx,0
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	word [bx+2],dx
..@j3683:
..@j3665:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		mov	al,0
		jle	..@j3690
		inc	ax
..@j3690:
		mov	byte [bp-1],al
..@j3520:
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+10]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT
EXTERN	fpc_ansistr_assign
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_incr_ref
