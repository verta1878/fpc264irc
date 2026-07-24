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
	GLOBAL VARUTILS_$$_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
VARUTILS_$$_VARIANTTOCARDINAL$TVARDATA$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j692
		sub	ax,16384
		je	..@j693
		jmp	..@j691
..@j692:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j696
		sub	ax,2
		je	..@j697
		dec	ax
		je	..@j699
		dec	ax
		je	..@j700
		dec	ax
		je	..@j701
		dec	ax
		je	..@j703
		dec	ax
		je	..@j702
		dec	ax
		je	..@j711
		sub	ax,3
		je	..@j704
		dec	ax
		je	..@j705
		sub	ax,4
		je	..@j698
		dec	ax
		je	..@j706
		dec	ax
		je	..@j707
		dec	ax
		je	..@j708
		dec	ax
		je	..@j709
		dec	ax
		je	..@j710
		sub	ax,235
		je	..@j712
		sub	ax,2
		je	..@j713
		jmp	..@j695
..@j696:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j694
..@j697:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j698:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j694
..@j699:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j700:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j701:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j702:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j703:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j704:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j705:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j706:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j694
..@j707:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j708:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j709:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j710:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j694
..@j711:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOCARDINAL$POINTER$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j712:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOCARDINAL$POINTER$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j713:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOCARDINAL$POINTER$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j694
..@j695:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,19
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j694:
		jmp	..@j690
..@j693:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j764
		jmp	..@j765
..@j764:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j767
		sub	ax,2
		je	..@j768
		dec	ax
		je	..@j770
		dec	ax
		je	..@j771
		dec	ax
		je	..@j772
		dec	ax
		je	..@j774
		dec	ax
		je	..@j773
		dec	ax
		je	..@j782
		sub	ax,3
		je	..@j775
		dec	ax
		je	..@j776
		sub	ax,4
		je	..@j769
		dec	ax
		je	..@j777
		dec	ax
		je	..@j778
		dec	ax
		je	..@j779
		dec	ax
		je	..@j780
		dec	ax
		je	..@j781
		sub	ax,235
		je	..@j783
		sub	ax,2
		je	..@j784
		jmp	..@j767
..@j768:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j769:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		jmp	..@j766
..@j770:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j771:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j766
..@j772:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j766
..@j773:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j766
..@j774:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-12]
		DB	09bh
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		jmp	..@j766
..@j775:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j776:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOCARDINAL$TVARDATA$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j777:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		jmp	..@j766
..@j778:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j779:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j766
..@j780:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j766
..@j781:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		jmp	..@j766
..@j782:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOCARDINAL$POINTER$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j783:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOCARDINAL$POINTER$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j784:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOCARDINAL$POINTER$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j766
..@j767:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,19
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j766:
		jmp	..@j833
..@j765:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,19
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j833:
		jmp	..@j690
..@j691:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,19
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j690:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOCARDINAL$POINTER$$LONGWORD
EXTERN	VARUTILS_$$_LSTRTOCARDINAL$POINTER$$LONGWORD
EXTERN	VARUTILS_$$_WSTRTOCARDINAL$POINTER$$LONGWORD
EXTERN	_$VARUTILS$_Ld1
