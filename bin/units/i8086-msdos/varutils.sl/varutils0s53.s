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
	GLOBAL VARUTILS_$$_VARIANTTOQWORD$TVARDATA$$QWORD
VARUTILS_$$_VARIANTTOQWORD$TVARDATA$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j2540
		sub	ax,16384
		je	..@j2541
		jmp	..@j2539
..@j2540:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j2544
		sub	ax,2
		je	..@j2545
		dec	ax
		je	..@j2547
		dec	ax
		je	..@j2548
		dec	ax
		je	..@j2549
		dec	ax
		je	..@j2550
		dec	ax
		je	..@j2551
		dec	ax
		je	..@j2559
		sub	ax,3
		je	..@j2552
		dec	ax
		je	..@j2553
		sub	ax,4
		je	..@j2546
		dec	ax
		je	..@j2554
		dec	ax
		je	..@j2555
		dec	ax
		je	..@j2556
		dec	ax
		je	..@j2557
		dec	ax
		je	..@j2558
		sub	ax,235
		je	..@j2560
		sub	ax,2
		je	..@j2561
		jmp	..@j2543
..@j2544:
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j2542
..@j2545:
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
		jmp	..@j2542
..@j2546:
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
		jmp	..@j2542
..@j2547:
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
		jmp	..@j2542
..@j2548:
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
		jmp	..@j2542
..@j2549:
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
		jmp	..@j2542
..@j2550:
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
		jmp	..@j2542
..@j2551:
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
		jmp	..@j2542
..@j2552:
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
		jmp	..@j2542
..@j2553:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOQWORD$TVARDATA$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2542
..@j2554:
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
		jmp	..@j2542
..@j2555:
		mov	bx,word [bp+4]
		mov	cx,word [bx+8]
		mov	ax,0
		mov	bx,0
		mov	dx,0
		mov	word [bp-8],cx
		mov	word [bp-6],ax
		mov	word [bp-4],bx
		mov	word [bp-2],dx
		jmp	..@j2542
..@j2556:
		mov	si,word [bp+4]
		mov	bx,word [si+8]
		mov	ax,word [si+10]
		mov	dx,0
		mov	cx,0
		mov	word [bp-8],bx
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	word [bp-2],cx
		jmp	..@j2542
..@j2557:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2542
..@j2558:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2542
..@j2559:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOQWORD$POINTER$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2542
..@j2560:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOQWORD$POINTER$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2542
..@j2561:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOQWORD$POINTER$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2542
..@j2543:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,21
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2542:
		jmp	..@j2538
..@j2541:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j2612
		jmp	..@j2613
..@j2612:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j2615
		sub	ax,2
		je	..@j2616
		dec	ax
		je	..@j2618
		dec	ax
		je	..@j2619
		dec	ax
		je	..@j2620
		dec	ax
		je	..@j2621
		dec	ax
		je	..@j2622
		dec	ax
		je	..@j2630
		sub	ax,3
		je	..@j2623
		dec	ax
		je	..@j2624
		sub	ax,4
		je	..@j2617
		dec	ax
		je	..@j2625
		dec	ax
		je	..@j2626
		dec	ax
		je	..@j2627
		dec	ax
		je	..@j2628
		dec	ax
		je	..@j2629
		sub	ax,235
		je	..@j2631
		sub	ax,2
		je	..@j2632
		jmp	..@j2615
..@j2616:
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
		jmp	..@j2614
..@j2617:
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
		jmp	..@j2614
..@j2618:
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
		jmp	..@j2614
..@j2619:
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
		jmp	..@j2614
..@j2620:
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
		jmp	..@j2614
..@j2621:
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
		jmp	..@j2614
..@j2622:
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
		jmp	..@j2614
..@j2623:
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
		jmp	..@j2614
..@j2624:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOQWORD$TVARDATA$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2614
..@j2625:
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
		jmp	..@j2614
..@j2626:
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
		jmp	..@j2614
..@j2627:
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
		jmp	..@j2614
..@j2628:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2614
..@j2629:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2614
..@j2630:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOQWORD$POINTER$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2614
..@j2631:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOQWORD$POINTER$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2614
..@j2632:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOQWORD$POINTER$$QWORD
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j2614
..@j2615:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,21
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2614:
		jmp	..@j2681
..@j2613:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,21
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2681:
		jmp	..@j2538
..@j2539:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,21
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j2538:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOQWORD$POINTER$$QWORD
EXTERN	VARUTILS_$$_LSTRTOQWORD$POINTER$$QWORD
EXTERN	VARUTILS_$$_WSTRTOQWORD$POINTER$$QWORD
EXTERN	_$VARUTILS$_Ld1
