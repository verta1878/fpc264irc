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
	GLOBAL STRUTILS_$$_FINDPART$ANSISTRING$ANSISTRING$$SMALLINT
STRUTILS_$$_FINDPART$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		mov	ax,63
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		je	..@j3887
		jmp	..@j3888
..@j3887:
		push	word [bp+6]
		push	word [bp+4]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		mov	word [bp-2],ax
		jmp	..@j3895
..@j3888:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3898
		mov	bx,word [bx-2]
..@j3898:
		mov	si,word [bp+6]
		test	si,si
		je	..@j3899
		mov	si,word [si-2]
..@j3899:
		sub	bx,si
		mov	word [bp-4],bx
		mov	cx,word [bp-4]
		mov	word [bp-6],0
		cmp	cx,word [bp-6]
		jl	..@j3903
		dec	word [bp-6]
	ALIGN 2
..@j3904:
		inc	word [bp-6]
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3907
		mov	bx,word [bx-2]
..@j3907:
		mov	dx,bx
		mov	word [bp-8],1
		cmp	dx,word [bp-8]
		jl	..@j3909
		dec	word [bp-8]
	ALIGN 2
..@j3910:
		inc	word [bp-8]
		mov	ax,word [bp+4]
		mov	word [bp-10],ax
		mov	bx,word [bp-6]
		mov	ax,word [bp-8]
		mov	si,ax
		add	si,bx
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	di,word [bp-8]
		mov	bx,word [bp-10]
		mov	al,byte [bx+si-1]
		mov	bx,word [bp-12]
		cmp	al,byte [bx+di-1]
		je	..@j3911
		jmp	..@j3913
..@j3913:
		mov	bx,word [bp+6]
		mov	si,word [bp-8]
		cmp	byte [bx+si-1],63
		je	..@j3911
		jmp	..@j3912
..@j3911:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3916
		mov	bx,word [bx-2]
..@j3916:
		cmp	bx,word [bp-8]
		je	..@j3914
		jmp	..@j3915
..@j3914:
		mov	ax,word [bp-6]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j3877
..@j3915:
		jmp	..@j3919
..@j3912:
		jmp	..@j3909
..@j3919:
		cmp	dx,word [bp-8]
		jg	..@j3910
..@j3909:
		cmp	cx,word [bp-6]
		jg	..@j3904
..@j3903:
..@j3895:
..@j3877:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
