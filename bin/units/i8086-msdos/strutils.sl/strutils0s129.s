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
	GLOBAL STRUTILS_$$_INTTOBIN$INT64$SMALLINT$$ANSISTRING
STRUTILS_$$_INTTOBIN$INT64$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+14]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		cmp	word [bp+4],0
		jle	..@j3845
		jmp	..@j3846
..@j3845:
		jmp	..@j3839
..@j3846:
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+14]
		mov	bx,word [bx]
		mov	si,word [bp+4]
		lea	ax,[bx+si-1]
		mov	word [bp-2],ax
		mov	bx,word [bp+14]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		jmp	..@j3858
	ALIGN 2
..@j3857:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,1
		mov	dx,0
		add	ax,48
		adc	dx,0
		mov	bx,word [bp-2]
		mov	byte [bx],al
		mov	ax,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		mov	dx,word [bp+12]
		shr	dx,1
		rcr	bx,1
		rcr	cx,1
		rcr	ax,1
		mov	word [bp+6],ax
		mov	word [bp+8],cx
		mov	word [bp+10],bx
		mov	word [bp+12],dx
		dec	word [bp-2]
..@j3858:
		mov	ax,word [bp-2]
		cmp	ax,word [bp-4]
		jae	..@j3864
		jmp	..@j3859
..@j3864:
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	ax,word [bp+10]
		mov	bx,word [bp+12]
		cmp	bx,0
		ja	..@j3857
		jb	..@j3859
		cmp	ax,0
		ja	..@j3857
		jb	..@j3859
		cmp	cx,0
		ja	..@j3857
		jb	..@j3859
		cmp	dx,0
		ja	..@j3857
		jmp	..@j3859
..@j3859:
		mov	ax,word [bp-2]
		mov	dx,word [bp-4]
		sub	ax,dx
		inc	ax
		mov	word [bp+4],ax
		cmp	word [bp+4],0
		jg	..@j3867
		jmp	..@j3868
..@j3867:
		mov	ax,word [bp+14]
		push	ax
		call	fpc_ansistr_unique
		push	ax
		push	word [bp+4]
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j3868:
..@j3839:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_assign
