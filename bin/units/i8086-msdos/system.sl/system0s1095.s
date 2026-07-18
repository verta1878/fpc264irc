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
	GLOBAL SYSTEM_$$_READINTEGER$TEXT$OPENSTRING
SYSTEM_$$_READINTEGER$TEXT$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	byte [bx],0
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j22873
		jmp	..@j22874
..@j22873:
		jmp	..@j22869
..@j22874:
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22879
		jmp	..@j22880
..@j22879:
		jmp	..@j22869
..@j22880:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,43
		je	..@j22883
		cmp	ax,45
		je	..@j22883
..@j22883:
		je	..@j22881
		jmp	..@j22882
..@j22881:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
..@j22882:
		mov	word [bp-2],10
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22892
		jmp	..@j22893
..@j22892:
		jmp	..@j22869
..@j22893:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,36
		cmp	ax,3
		jb	..@j22896
		cmp	ax,52
		stc
		je	..@j22896
		cmp	ax,84
		stc
		je	..@j22896
		clc
..@j22896:
		jc	..@j22894
		jmp	..@j22895
..@j22894:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		cmp	al,36
		jb	..@j22898
		sub	al,36
		je	..@j22899
		dec	al
		je	..@j22900
		dec	al
		je	..@j22901
		sub	al,50
		je	..@j22899
		sub	al,32
		je	..@j22899
		jmp	..@j22898
..@j22899:
		mov	word [bp-2],16
		jmp	..@j22897
..@j22900:
		mov	word [bp-2],2
		jmp	..@j22897
..@j22901:
		mov	word [bp-2],8
		jmp	..@j22897
..@j22898:
..@j22897:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		jmp	..@j22914
..@j22895:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		cmp	byte [bx+si],48
		je	..@j22915
		jmp	..@j22916
..@j22915:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j22923
		jmp	..@j22924
..@j22923:
		jmp	..@j22869
..@j22924:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,88
		je	..@j22927
		cmp	ax,120
		je	..@j22927
..@j22927:
		je	..@j22925
		jmp	..@j22926
..@j22925:
		mov	word [bp-2],16
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
..@j22926:
..@j22916:
..@j22914:
		jmp	..@j22937
	ALIGN 2
..@j22936:
		cmp	word [bp-2],2
		je	..@j22944
		jmp	..@j22943
..@j22944:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,2
		jb	..@j22945
..@j22945:
		jc	..@j22939
		jmp	..@j22943
..@j22943:
		cmp	word [bp-2],8
		je	..@j22946
		jmp	..@j22942
..@j22946:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,8
		jb	..@j22947
..@j22947:
		jc	..@j22939
		jmp	..@j22942
..@j22942:
		cmp	word [bp-2],10
		je	..@j22948
		jmp	..@j22941
..@j22948:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j22949
..@j22949:
		jc	..@j22939
		jmp	..@j22941
..@j22941:
		cmp	word [bp-2],16
		je	..@j22950
		jmp	..@j22940
..@j22950:
		mov	bx,word [bp+8]
		mov	bx,word [bx+14]
		mov	si,word [bp+8]
		mov	si,word [si+10]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j22951
		sub	ax,17
		cmp	ax,6
		jb	..@j22951
		sub	ax,32
		cmp	ax,6
		jb	..@j22951
..@j22951:
		jc	..@j22939
		jmp	..@j22940
..@j22939:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
		jmp	..@j22958
..@j22940:
		jmp	..@j22869
..@j22958:
..@j22937:
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jl	..@j22959
		jmp	..@j22938
..@j22959:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,word [bp+4]
		jl	..@j22936
		jmp	..@j22938
..@j22938:
..@j22869:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
EXTERN	SYSTEM_$$_IGNORESPACES$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
