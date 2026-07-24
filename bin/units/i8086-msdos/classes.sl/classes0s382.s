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
	GLOBAL CLASSES$_$TSTRINGLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TSTRINGLISTSORTCOMPARE
CLASSES$_$TSTRINGLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TSTRINGLISTSORTCOMPARE:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	si,word [bp+10]
		mov	bx,word [si]
		mov	ax,word [bx+120]
		mov	word [bp-14],ax
		mov	word [bp-12],si
		mov	ax,word CLASSES$_$TSTRINGLIST_$__$$_EXCHANGEITEMS$SMALLINT$SMALLINT
		cmp	ax,word [bp-14]
		je	..@j8944
		jmp	..@j8945
..@j8944:
		mov	ax,word [bp+10]
		mov	dx,word CLASSES$_$TSTRINGLIST_$__$$_EXCHANGEITEMSINT$SMALLINT$SMALLINT
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		jmp	..@j8948
..@j8945:
		mov	si,word [bp+10]
		mov	bx,word [si]
		mov	ax,word [bx+120]
		mov	word [bp-10],ax
		mov	word [bp-8],si
..@j8948:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		sub	ax,dx
		cmp	ax,1
		jle	..@j8951
		jmp	..@j8952
..@j8951:
		mov	ax,word [bp+8]
		cmp	ax,word [bp+6]
		jl	..@j8953
		jmp	..@j8954
..@j8953:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp+4]
		call	ax
		cmp	ax,0
		jg	..@j8955
		jmp	..@j8956
..@j8955:
		push	word [bp-8]
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,word [bp-10]
		call	ax
..@j8956:
..@j8954:
		jmp	..@j8942
..@j8952:
		mov	ax,word [bp+8]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-6],ax
		mov	ax,word [bp+8]
		cwd
		mov	word [bp-18],ax
		mov	word [bp-16],dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
		add	ax,word [bp-18]
		adc	dx,word [bp-16]
		mov	word [bp-2],ax
		jmp	..@j8978
	ALIGN 2
..@j8977:
		jmp	..@j8981
	ALIGN 2
..@j8980:
		inc	word [bp-4]
..@j8981:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j8983
		jmp	..@j8982
..@j8983:
		push	word [bp+10]
		push	word [bp-4]
		push	word [bp-2]
		mov	ax,word [bp+4]
		call	ax
		cmp	ax,0
		jle	..@j8980
		jmp	..@j8982
..@j8982:
		jmp	..@j8991
	ALIGN 2
..@j8990:
		dec	word [bp-6]
..@j8991:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j8993
		jmp	..@j8992
..@j8993:
		push	word [bp+10]
		push	word [bp-6]
		push	word [bp-2]
		mov	ax,word [bp+4]
		call	ax
		cmp	ax,0
		jg	..@j8990
		jmp	..@j8992
..@j8992:
		push	word [bp-8]
		push	word [bp-4]
		push	word [bp-6]
		mov	ax,word [bp-10]
		call	ax
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		je	..@j9006
		jmp	..@j9007
..@j9006:
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
		jmp	..@j9010
..@j9007:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-6]
		je	..@j9011
		jmp	..@j9012
..@j9011:
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
..@j9012:
..@j9010:
..@j8978:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jl	..@j8977
		jmp	..@j8979
..@j8979:
		mov	ax,word [bp-2]
		dec	ax
		cmp	ax,word [bp+8]
		jge	..@j9015
		jmp	..@j9016
..@j9015:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp-2]
		dec	ax
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TSTRINGLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TSTRINGLISTSORTCOMPARE
..@j9016:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jle	..@j9025
		jmp	..@j9026
..@j9025:
		push	word [bp+10]
		mov	ax,word [bp-2]
		inc	ax
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TSTRINGLIST_$__$$_QUICKSORT$SMALLINT$SMALLINT$TSTRINGLISTSORTCOMPARE
..@j9026:
..@j8942:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_RANDOM$LONGINT$$LONGINT
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_EXCHANGEITEMSINT$SMALLINT$SMALLINT
EXTERN	CLASSES$_$TSTRINGLIST_$__$$_EXCHANGEITEMS$SMALLINT$SMALLINT
