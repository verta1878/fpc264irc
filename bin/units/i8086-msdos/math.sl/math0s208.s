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
	GLOBAL MATH_$$_NUMBEROFPERIODS$EXTENDED$EXTENDED$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED
MATH_$$_NUMBEROFPERIODS$EXTENDED$EXTENDED$EXTENDED$EXTENDED$TPAYMENTTIME$$EXTENDED:
		push	bp
		mov	bp,sp
		sub	sp,42
		wait fldz
		wait fld	tword [bp+38]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2594
		je	..@j2592
..@j2594:
		jmp	..@j2593
..@j2592:
		wait fld	tword [bp+8]
		wait fld	tword [bp+18]
		wait faddp	st1,st0
		wait fchs
		wait fld	tword [bp+28]
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
		jmp	..@j2597
..@j2593:
		wait fld1
		wait fld	tword [bp+38]
		wait faddp	st1,st0
		wait fstp	tword [bp-20]
		DB	09bh
		cmp	word [bp+4],1
		je	..@j2600
		jmp	..@j2601
..@j2600:
		wait fld	tword [bp-20]
		wait fld	tword [bp+28]
		wait fmulp	st1,st0
		wait fstp	tword [bp+28]
		DB	09bh
..@j2601:
		wait fld	tword [bp+38]
		wait fld	tword [bp+8]
		wait fmulp	st1,st0
		wait fld	tword [bp+28]
		wait fsubrp	st1,st0
		wait fstp	tword [bp-30]
		DB	09bh
		wait fld	tword [bp+38]
		wait fld	tword [bp+18]
		wait fmulp	st1,st0
		wait fld	tword [bp+28]
		wait faddp	st1,st0
		wait fstp	tword [bp-40]
		DB	09bh
		wait fldz
		wait fld	tword [bp-40]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2611
		je	..@j2608
..@j2611:
		jmp	..@j2610
..@j2610:
		wait fldz
		wait fld	tword [bp-30]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2614
		jb	..@j2612
..@j2614:
		jmp	..@j2613
..@j2612:
		mov	dl,-1
		jmp	..@j2617
..@j2613:
		wait fldz
		wait fld	tword [bp-30]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2620
		ja	..@j2618
..@j2620:
		jmp	..@j2619
..@j2618:
		mov	dl,1
		jmp	..@j2623
..@j2619:
		mov	dl,0
..@j2623:
..@j2617:
		mov	al,dl
		cbw
		mov	dx,ax
		wait fldz
		wait fld	tword [bp-40]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2628
		jb	..@j2626
..@j2628:
		jmp	..@j2627
..@j2626:
		mov	cl,-1
		jmp	..@j2631
..@j2627:
		wait fldz
		wait fld	tword [bp-40]
		wait fcompp
		fstsw	[bp-42]
		mov	ah,byte [bp-41]
		sahf
		jp	..@j2634
		ja	..@j2632
..@j2634:
		jmp	..@j2633
..@j2632:
		mov	cl,1
		jmp	..@j2637
..@j2633:
		mov	cl,0
..@j2637:
..@j2631:
		mov	al,cl
		cbw
		mov	cx,ax
		mov	ax,cx
		mul	dx
		cmp	ax,0
		jl	..@j2608
		jmp	..@j2609
..@j2608:
		lea	di,[bp-10]
		push	ss
		pop	es
		mov	si,word _$MATH$_Ld27
		cld
		mov	cx,5
		rep
		movsw
		jmp	..@j2642
..@j2609:
		wait fld	tword [bp-40]
		wait fld	tword [bp-30]
		wait fdivrp	st1,st0
		wait fldln2
		wait fxch
		wait fyl2x
		wait fld	tword [bp-20]
		wait fldln2
		wait fxch
		wait fyl2x
		wait fdivp	st1,st0
		wait fstp	tword [bp-10]
		DB	09bh
..@j2642:
..@j2597:
		wait fld	tword [bp-10]
		mov	sp,bp
		pop	bp
		ret	44
EXTERN	_$MATH$_Ld27
