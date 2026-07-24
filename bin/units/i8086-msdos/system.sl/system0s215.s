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
	GLOBAL SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL:
		push	bp
		mov	bp,sp
		sub	sp,26
		lea	di,[bp-18]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		mov	ax,0
		and	dx,32752
		mov	ax,dx
		mov	dx,0
		mov	cl,4
		shr	ax,cl
		mov	word [bp-10],ax
		cmp	word [bp-10],2047
		je	..@j2612
		jmp	..@j2615
..@j2615:
		cmp	word [bp+4],0
		je	..@j2612
		jmp	..@j2614
..@j2614:
		wait fld	qword [bp+6]
		wait fldz
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j2616
		je	..@j2612
..@j2616:
		jmp	..@j2613
..@j2612:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2619
..@j2613:
		cmp	word [bp-10],0
		je	..@j2620
		jmp	..@j2621
..@j2620:
		wait fld	qword [TC_$SYSTEM_$$_H2_54]
		wait fmul	qword [bp+6]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp+4]
		sub	ax,54
		push	ax
		call	SYSTEM_$$_LDEXP$REAL$SMALLINT$$REAL
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j2628
..@j2621:
		mov	dx,word [bp+4]
		mov	ax,word [bp-10]
		add	ax,dx
		mov	word [bp+4],ax
		cmp	word [bp+4],2046
		jg	..@j2631
		jmp	..@j2632
..@j2631:
		wait fld	qword [bp+6]
		wait fldz
		wait fcompp
		fstsw	[bp-12]
		mov	ah,byte [bp-11]
		sahf
		jp	..@j2635
		jb	..@j2633
..@j2635:
		jmp	..@j2634
..@j2633:
		wait fld	qword [TC_$SYSTEM_$$_HUGE]
		wait fld	tword [_$SYSTEM$_Ld6]
		wait fmulp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j2638
..@j2634:
		wait fld	qword [TC_$SYSTEM_$$_HUGE]
		wait fld	tword [_$SYSTEM$_Ld7]
		wait fmulp	st1,st0
		wait fstp	qword [bp-8]
		DB	09bh
..@j2638:
		jmp	..@j2641
..@j2632:
		cmp	word [bp+4],1
		jl	..@j2642
		jmp	..@j2643
..@j2642:
		cmp	word [bp+4],-53
		jl	..@j2644
		jmp	..@j2645
..@j2644:
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j2648
..@j2645:
		add	word [bp+4],54
		lea	di,[bp-26]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp-22]
		mov	si,word [bp-20]
		and	si,-32753
		mov	ax,word [bp+4]
		cwd
		mov	dx,ax
		mov	ax,0
		mov	cl,4
		shl	dx,cl
		or	ax,bx
		or	dx,si
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	ax,word [bp-14]
		mov	word [bp+10],ax
		mov	ax,word [bp-12]
		mov	word [bp+12],ax
		wait fld	qword [TC_$SYSTEM_$$_H2_54]
		wait fdivr	qword [bp+6]
		wait fstp	qword [bp-8]
		DB	09bh
..@j2648:
		jmp	..@j2659
..@j2643:
		lea	di,[bp-22]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	bx,word [bp-18]
		mov	si,word [bp-16]
		and	si,-32753
		mov	ax,word [bp+4]
		cwd
		mov	dx,ax
		mov	ax,0
		mov	cl,4
		shl	dx,cl
		or	ax,bx
		or	dx,si
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		mov	ax,word [bp-14]
		mov	word [bp+10],ax
		mov	ax,word [bp-12]
		mov	word [bp+12],ax
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
..@j2659:
..@j2641:
..@j2628:
..@j2619:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	_$SYSTEM$_Ld7
EXTERN	_$SYSTEM$_Ld6
EXTERN	TC_$SYSTEM_$$_HUGE
EXTERN	TC_$SYSTEM_$$_H2_54
