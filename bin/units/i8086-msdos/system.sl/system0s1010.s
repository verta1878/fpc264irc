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
	GLOBAL SYSTEM_$$_DO_OPEN$formal$PCHAR$LONGINT$BOOLEAN
SYSTEM_$$_DO_OPEN$formal$PCHAR$LONGINT$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	ax,0
		and	dx,1
		cmp	dx,0
		jne	..@j20582
		cmp	ax,0
		jne	..@j20582
		jmp	..@j20581
..@j20581:
		mov	bx,word [bp+12]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j20587
		cmp	dx,-10320
		je	..@j20586
..@j20587:
		test	ax,ax
		jl	..@j20584
		test	ax,ax
		jg	..@j20588
		cmp	dx,-10319
		jb	..@j20584
..@j20588:
		test	ax,ax
		jl	..@j20585
		test	ax,ax
		jg	..@j20589
		cmp	dx,-10317
		jbe	..@j20585
..@j20589:
		jmp	..@j20584
..@j20585:
		mov	bx,word [bp+12]
		push	word [bx]
		call	SYSTEM_$$_DO_CLOSE$WORD
		jmp	..@j20583
..@j20586:
		jmp	..@j20583
..@j20584:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j20594
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j20595
..@j20594:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j20595:
		mov	word [bx],102
		jmp	..@j20579
..@j20583:
..@j20582:
		mov	bx,word [bp+12]
		mov	word [bx],-1
		mov	word [bp-22],1
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,3
		mov	dx,0
		test	dx,dx
		jne	..@j20605
		test	ax,ax
		je	..@j20602
..@j20605:
		test	dx,dx
		jne	..@j20606
		cmp	ax,1
		je	..@j20603
..@j20606:
		test	dx,dx
		jne	..@j20607
		cmp	ax,2
		je	..@j20604
..@j20607:
		jmp	..@j20601
..@j20602:
		mov	bx,word [bp+12]
		mov	word [bx+2],-10319
		mov	word [bx+4],0
		jmp	..@j20600
..@j20603:
		mov	bx,word [bp+12]
		mov	word [bx+2],-10318
		mov	word [bx+4],0
		jmp	..@j20600
..@j20604:
		mov	bx,word [bp+12]
		mov	word [bx+2],-10317
		mov	word [bx+4],0
		jmp	..@j20600
..@j20601:
..@j20600:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,4096
		mov	dx,0
		cmp	dx,0
		jne	..@j20614
		cmp	ax,0
		jne	..@j20614
		jmp	..@j20615
..@j20614:
		mov	word [bp-22],18
..@j20615:
		mov	bx,word [bp+10]
		cmp	byte [bx],0
		je	..@j20618
		jmp	..@j20619
..@j20618:
		mov	bx,word [bp+12]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j20625
		cmp	dx,-10319
		je	..@j20622
..@j20625:
		test	ax,ax
		jl	..@j20621
		test	ax,ax
		jg	..@j20626
		cmp	dx,-10318
		jb	..@j20621
..@j20626:
		test	ax,ax
		jl	..@j20623
		test	ax,ax
		jg	..@j20627
		cmp	dx,-10317
		jbe	..@j20623
..@j20627:
		test	ax,ax
		jne	..@j20628
		cmp	dx,-10316
		je	..@j20624
..@j20628:
		jmp	..@j20621
..@j20622:
		mov	bx,word [bp+12]
		mov	word [bx],0
		jmp	..@j20620
..@j20623:
		mov	bx,word [bp+12]
		mov	word [bx],1
		jmp	..@j20620
..@j20624:
		mov	bx,word [bp+12]
		mov	word [bx],1
		mov	bx,word [bp+12]
		mov	word [bx+2],-10318
		mov	word [bx+4],0
		jmp	..@j20620
..@j20621:
..@j20620:
		jmp	..@j20579
..@j20619:
		mov	ax,word [bp+10]
		mov	word [bp-24],ax
		lea	ax,[bp+10]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j20643
		jmp	..@j20644
..@j20643:
		mov	word [bp-20],29036
		mov	ax,word [bp-22]
		mov	word [bp-14],ax
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,255
		mov	dx,0
		add	ax,8192
		adc	dx,0
		mov	word [bp-18],ax
		jmp	..@j20653
..@j20644:
		mov	ax,word [bp-22]
		and	ax,240
		test	ax,ax
		jne	..@j20654
		jmp	..@j20655
..@j20654:
		mov	word [bp-20],15360
		jmp	..@j20658
..@j20655:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,255
		mov	dx,0
		add	ax,15616
		adc	dx,0
		mov	word [bp-20],ax
..@j20658:
		mov	ax,word [bp+10]
		mov	word [bp-14],ax
..@j20653:
		mov	ax,word [bp+10]
		mov	ax,ds
		mov	word [bp-6],ax
		mov	word [bp-16],32
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j20669
		jmp	..@j20670
..@j20669:
		cmp	word [bp-20],4
		je	..@j20671
		jmp	..@j20672
..@j20671:
		call	SYSTEM_$$_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN
		test	al,al
		jne	..@j20673
		jmp	..@j20674
..@j20673:
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j20675
		jmp	..@j20676
..@j20675:
		mov	word [bp-20],29036
		mov	ax,word [bp-22]
		mov	word [bp-14],ax
		mov	ax,word [bp+10]
		mov	word [bp-10],ax
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,255
		mov	dx,0
		add	ax,8192
		adc	dx,0
		mov	word [bp-18],ax
		jmp	..@j20685
..@j20676:
		mov	ax,word [bp-22]
		and	ax,240
		test	ax,ax
		jne	..@j20686
		jmp	..@j20687
..@j20686:
		mov	word [bp-20],15360
		jmp	..@j20690
..@j20687:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,255
		mov	dx,0
		add	ax,15616
		adc	dx,0
		mov	word [bp-20],ax
..@j20690:
		mov	ax,word [bp+10]
		mov	word [bp-14],ax
..@j20685:
		mov	ax,word [bp+10]
		mov	ax,ds
		mov	word [bp-6],ax
		mov	word [bp-16],32
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
..@j20674:
..@j20672:
..@j20670:
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j20701
		jmp	..@j20702
..@j20701:
		mov	bx,word [bp+12]
		mov	word [bx+2],-10320
		mov	word [bx+4],0
		push	word [bp-20]
		call	SYSTEM_$$_GETINOUTRES$WORD
		mov	ax,word [bp-24]
		cmp	ax,word [bp+10]
		jne	..@j20707
		jmp	..@j20708
..@j20707:
		push	word [bp+10]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j20708:
		jmp	..@j20579
		jmp	..@j20711
..@j20702:
		mov	bx,word [bp+12]
		mov	ax,word [bp-20]
		mov	word [bx],ax
		mov	ax,word [bp-20]
		cmp	ax,word [TC_$SYSTEM_$$_FILEHANDLECOUNT]
		ja	..@j20714
		jmp	..@j20715
..@j20714:
		mov	ax,word [bp-20]
		mov	word [TC_$SYSTEM_$$_FILEHANDLECOUNT],ax
..@j20715:
..@j20711:
		cmp	word [bp-20],50
		jb	..@j20718
		jmp	..@j20719
..@j20718:
		mov	bx,word [bp-20]
		mov	byte [U_$SYSTEM_$$_OPENFILES+bx],1
..@j20719:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,256
		mov	dx,0
		cmp	dx,0
		jne	..@j20724
		cmp	ax,0
		jne	..@j20724
		jmp	..@j20723
..@j20724:
		mov	bx,word [bp+12]
		cmp	word [bx],-1
		jne	..@j20722
		jmp	..@j20723
..@j20722:
		mov	bx,word [bp+12]
		push	word [bx]
		call	SYSTEM_$$_DO_SEEKEND$WORD$$LONGINT
		mov	bx,word [bp+12]
		mov	word [bx+2],-10318
		mov	word [bx+4],0
..@j20723:
		mov	ax,word [bp-24]
		cmp	ax,word [bp+10]
		jne	..@j20729
		jmp	..@j20730
..@j20729:
		push	word [bp+10]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
..@j20730:
..@j20579:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_DO_SEEKEND$WORD$$LONGINT
EXTERN	U_$SYSTEM_$$_OPENFILES
EXTERN	TC_$SYSTEM_$$_FILEHANDLECOUNT
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	SYSTEM_$$_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	SYSTEM_$$_DODIRSEPARATORS$PCHAR$BOOLEAN
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_DO_CLOSE$WORD
