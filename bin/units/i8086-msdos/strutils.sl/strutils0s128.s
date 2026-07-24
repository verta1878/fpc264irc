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
	GLOBAL STRUTILS_$$_INTTOBIN$LONGINT$SMALLINT$$ANSISTRING
STRUTILS_$$_INTTOBIN$LONGINT$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp+4],0
		jle	..@j3807
		jmp	..@j3808
..@j3807:
		jmp	..@j3801
..@j3808:
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	si,word [bp+4]
		lea	ax,[bx+si-1]
		mov	word [bp-2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		jmp	..@j3820
	ALIGN 2
..@j3819:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,1
		mov	dx,0
		add	ax,48
		adc	dx,0
		mov	bx,word [bp-2]
		mov	byte [bx],al
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		shr	dx,1
		rcr	ax,1
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		dec	word [bp-2]
..@j3820:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jae	..@j3826
		jmp	..@j3821
..@j3826:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		ja	..@j3819
		jb	..@j3821
		cmp	dx,0
		ja	..@j3819
		jmp	..@j3821
..@j3821:
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		sub	ax,dx
		inc	ax
		mov	word [bp+4],ax
		cmp	word [bp+4],0
		jg	..@j3829
		jmp	..@j3830
..@j3829:
		mov	ax,word [bp+10]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp+4]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j3830:
..@j3801:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
