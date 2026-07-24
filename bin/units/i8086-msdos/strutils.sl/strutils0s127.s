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
	GLOBAL STRUTILS_$$_INTTOBIN$LONGINT$SMALLINT$SMALLINT$$ANSISTRING
STRUTILS_$$_INTTOBIN$LONGINT$SMALLINT$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-10],0
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp+6],32
		jg	..@j3758
		jmp	..@j3759
..@j3758:
		mov	word [bp+6],32
..@j3759:
		cmp	word [bp+4],0
		je	..@j3762
		jmp	..@j3763
..@j3762:
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-10]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		call	STRUTILS_$$_INTTOBIN$LONGINT$SMALLINT$$ANSISTRING
		push	word [bp-10]
		call	fpc_ansistr_assign
		jmp	..@j3752
..@j3763:
		mov	ax,word [bp+6]
		dec	ax
		cwd
		idiv	word [bp+4]
		mov	dx,word [bp+6]
		add	dx,ax
		mov	word [bp-2],dx
		mov	ax,word [bp+12]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+12]
		mov	bx,word [bx]
		mov	si,word [bp-2]
		lea	ax,[bx+si-1]
		mov	word [bp-4],ax
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		jmp	..@j3789
	ALIGN 2
..@j3788:
		cmp	word [bp-8],0
		je	..@j3791
		jmp	..@j3792
..@j3791:
		mov	bx,word [bp-4]
		mov	byte [bx],32
		dec	word [bp-4]
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
..@j3792:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		and	ax,1
		mov	dx,0
		add	ax,48
		adc	dx,0
		mov	bx,word [bp-4]
		mov	byte [bx],al
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		shr	dx,1
		rcr	ax,1
		mov	word [bp+8],ax
		mov	word [bp+10],dx
		dec	word [bp-4]
		dec	word [bp-8]
..@j3789:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jae	..@j3788
		jmp	..@j3790
..@j3790:
..@j3752:
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_setlength
EXTERN	STRUTILS_$$_INTTOBIN$LONGINT$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_assign
