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
	GLOBAL VARUTILS_$$_VARIANTTODATE$TVARDATA$$TDATETIME
VARUTILS_$$_VARIANTTODATE$TVARDATA$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j1703
		sub	ax,16384
		je	..@j1704
		jmp	..@j1702
..@j1703:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j1707
		sub	ax,2
		je	..@j1708
		dec	ax
		je	..@j1710
		dec	ax
		je	..@j1711
		dec	ax
		je	..@j1712
		dec	ax
		je	..@j1713
		dec	ax
		je	..@j1714
		dec	ax
		je	..@j1722
		sub	ax,3
		je	..@j1715
		dec	ax
		je	..@j1716
		sub	ax,4
		je	..@j1709
		dec	ax
		je	..@j1717
		dec	ax
		je	..@j1718
		dec	ax
		je	..@j1719
		dec	ax
		je	..@j1720
		dec	ax
		je	..@j1721
		sub	ax,235
		je	..@j1723
		sub	ax,2
		je	..@j1724
		jmp	..@j1706
..@j1707:
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1708:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1709:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1710:
		mov	bx,word [bp+4]
		wait fild	dword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1711:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1712:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1705
..@j1713:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fstp	qword [bp-20]
		DB	09bh
		wait fld	qword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1714:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1705
..@j1715:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1716:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTODATE$TVARDATA$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1717:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1718:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1719:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	word [bp-12],0
		mov	word [bp-10],0
		wait fild	qword [bp-16]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1720:
		mov	bx,word [bp+4]
		wait fild	qword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1721:
		mov	bx,word [bp+4]
		test	byte [bx+15],128
		wait fild	qword [bx+8]
		je	..@j1759
		wait fadd	dword [_$VARUTILS$_Ld11]
..@j1759:
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1722:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTODATE$POINTER$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1723:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTODATE$POINTER$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1724:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTODATE$POINTER$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1705
..@j1706:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1705:
		jmp	..@j1701
..@j1704:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j1776
		jmp	..@j1777
..@j1776:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j1779
		sub	ax,2
		je	..@j1780
		dec	ax
		je	..@j1782
		dec	ax
		je	..@j1783
		dec	ax
		je	..@j1784
		dec	ax
		je	..@j1785
		dec	ax
		je	..@j1786
		dec	ax
		je	..@j1794
		sub	ax,3
		je	..@j1787
		dec	ax
		je	..@j1788
		sub	ax,4
		je	..@j1781
		dec	ax
		je	..@j1789
		dec	ax
		je	..@j1790
		dec	ax
		je	..@j1791
		dec	ax
		je	..@j1792
		dec	ax
		je	..@j1793
		sub	ax,235
		je	..@j1795
		sub	ax,2
		je	..@j1796
		jmp	..@j1779
..@j1780:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1781:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-20],cx
		mov	word [bp-18],ax
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1782:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1783:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1784:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1778
..@j1785:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fstp	qword [bp-28]
		DB	09bh
		wait fld	qword [bp-28]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1786:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1778
..@j1787:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1788:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTODATE$TVARDATA$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1789:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1790:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1791:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-20],0
		mov	word [bp-18],0
		wait fild	qword [bp-24]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1792:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [bx]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1793:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		test	byte [bx+7],128
		wait fild	qword [bx]
		je	..@j1829
		wait fadd	dword [_$VARUTILS$_Ld12]
..@j1829:
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1794:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTODATE$POINTER$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1795:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTODATE$POINTER$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1796:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTODATE$POINTER$$TDATETIME
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1778
..@j1779:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1778:
		jmp	..@j1846
..@j1777:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1846:
		jmp	..@j1701
..@j1702:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1701:
		wait fld	qword [TC_$SYSUTILS_$$_MINDATETIME]
		wait fld	qword [bp-8]
		wait fcompp
		fstsw	[bp-26]
		mov	ah,byte [bp-25]
		sahf
		jp	..@j1858
		jb	..@j1855
..@j1858:
		jmp	..@j1857
..@j1857:
		wait fld	qword [TC_$SYSUTILS_$$_MAXDATETIME]
		wait fld	qword [bp-8]
		wait fcompp
		fstsw	[bp-26]
		mov	ah,byte [bp-25]
		sahf
		jp	..@j1859
		ja	..@j1855
..@j1859:
		jmp	..@j1856
..@j1855:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,7
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1856:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSUTILS_$$_MAXDATETIME
EXTERN	TC_$SYSUTILS_$$_MINDATETIME
EXTERN	_$VARUTILS$_Ld12
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTODATE$POINTER$$TDATETIME
EXTERN	VARUTILS_$$_LSTRTODATE$POINTER$$TDATETIME
EXTERN	VARUTILS_$$_WSTRTODATE$POINTER$$TDATETIME
EXTERN	_$VARUTILS$_Ld11
EXTERN	_$VARUTILS$_Ld1
