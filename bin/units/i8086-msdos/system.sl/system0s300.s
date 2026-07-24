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
	GLOBAL SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT
SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp+6]
		mov	word [bx],ax
		mov	bx,word [bp+10]
		mov	si,word [bp+6]
		mov	al,byte [bx+si]
		mov	byte [bp-5],al
		cmp	byte [bp+4],0
		je	..@j5759
		jmp	..@j5760
..@j5759:
		cmp	byte [bp-5],4
		je	..@j5763
		jmp	..@j5762
..@j5763:
		mov	ax,word [bp-4]
		sub	ax,3
		cmp	ax,word [bp+6]
		jg	..@j5761
		jmp	..@j5762
..@j5761:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		sub	si,2
		cmp	byte [bx+si],8
		jae	..@j5764
		jmp	..@j5765
..@j5764:
		mov	ax,word [bp-4]
		sub	ax,2
		mov	word [bp-8],ax
	ALIGN 2
..@j5768:
		dec	word [bp-8]
		mov	ax,word [bp-8]
		cmp	ax,word [bp+6]
		je	..@j5770
		jmp	..@j5771
..@j5771:
		mov	bx,word [bp+10]
		mov	si,word [bp-8]
		cmp	byte [bx+si],9
		jne	..@j5770
		jmp	..@j5768
..@j5770:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+6]
		je	..@j5772
		jmp	..@j5773
..@j5772:
		mov	byte [bp-5],9
..@j5773:
..@j5765:
..@j5762:
..@j5760:
		cmp	byte [bp-5],5
		jb	..@j5776
		jmp	..@j5777
..@j5776:
		jmp	..@j4692
..@j5777:
		cmp	byte [bp-5],5
		je	..@j5781
		jmp	..@j5779
..@j5781:
		cmp	byte [bp+4],0
		jne	..@j5780
		jmp	..@j5779
..@j5780:
		cmp	word [bp+6],0
		je	..@j5778
		jmp	..@j5782
..@j5782:
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	si,ax
		dec	si
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,1
		test	ax,ax
		je	..@j5778
		jmp	..@j5779
..@j5778:
		mov	byte [bp-6],0
		jmp	..@j5786
	ALIGN 2
..@j5785:
		dec	word [bp-4]
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-6],al
..@j5786:
		mov	ax,word [bp+6]
		inc	ax
		cmp	ax,word [bp-4]
		jl	..@j5790
		jmp	..@j5787
..@j5790:
		cmp	byte [bp-6],0
		je	..@j5785
		jmp	..@j5787
..@j5787:
		cmp	byte [bp-6],0
		je	..@j5791
		jmp	..@j5792
..@j5791:
		jmp	..@j4692
..@j5792:
..@j5779:
		jmp	..@j5794
	ALIGN 2
..@j5793:
		dec	word [bp+6]
		mov	bx,word [bp+10]
		mov	si,word [bp+6]
		inc	byte [bx+si]
		mov	bx,word [bp+10]
		mov	si,word [bp+6]
		cmp	byte [bx+si],10
		jb	..@j5796
		jmp	..@j5797
..@j5796:
		mov	ax,word [bp+6]
		inc	ax
		mov	bx,word [bp+8]
		mov	word [bx],ax
		jmp	..@j4692
..@j5797:
..@j5794:
		cmp	word [bp+6],0
		jg	..@j5793
		jmp	..@j5795
..@j5795:
		mov	bx,word [bp+10]
		mov	byte [bx],1
		mov	bx,word [bp+8]
		mov	word [bx],1
		mov	word [bp-2],1
..@j4692:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
