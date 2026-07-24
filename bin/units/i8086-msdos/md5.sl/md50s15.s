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
	GLOBAL MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST
MD5_$$_MDFINAL$TMDCONTEXT$TMDDIGEST:
	GLOBAL MD_FINAL
MD_FINAL:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		test	ax,ax
		jne	..@j1993
		test	dx,dx
		je	..@j1992
..@j1993:
		test	ax,ax
		jb	..@j1990
		test	ax,ax
		ja	..@j1994
		cmp	dx,1
		jb	..@j1990
..@j1994:
		test	ax,ax
		jb	..@j1991
		test	ax,ax
		ja	..@j1995
		cmp	dx,2
		jbe	..@j1991
..@j1995:
		jmp	..@j1990
..@j1991:
		mov	si,word [bp+6]
		mov	bx,word [bp+6]
		mov	di,word [si+96]
		mov	cx,word [si+98]
		mov	ax,word [si+100]
		mov	dx,word [si+102]
		add	di,word [bx+24]
		adc	cx,word [bx+26]
		adc	ax,word [bx+28]
		adc	dx,word [bx+30]
		mov	bx,di
		mov	si,cx
		mov	cx,3
..@j1999:
		shl	bx,1
		rcl	si,1
		rcl	ax,1
		rcl	dx,1
		loop	..@j1999
		mov	word [bp-8],bx
		mov	word [bp-6],si
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	dx,word [bx+24]
		mov	cx,word [bx+26]
		mov	si,word [bx+28]
		mov	ax,word [bx+30]
		cmp	ax,0
		ja	..@j2001
		jb	..@j2002
		cmp	si,0
		ja	..@j2001
		jb	..@j2002
		cmp	cx,0
		ja	..@j2001
		jb	..@j2002
		cmp	dx,56
		jae	..@j2001
		jmp	..@j2002
..@j2001:
		mov	bx,word [bp+6]
		mov	ax,word [bx+24]
		mov	cx,word [bx+26]
		mov	si,word [bx+28]
		mov	di,word [bx+30]
		mov	dx,120
		mov	bx,0
		sub	dx,ax
		sbb	bx,cx
		mov	ax,dx
		mov	cx,bx
		mov	dx,0
		mov	bx,0
		sbb	dx,si
		sbb	bx,di
		mov	si,dx
		mov	di,bx
		mov	word [bp-12],ax
		mov	word [bp-10],cx
		jmp	..@j2005
..@j2002:
		mov	bx,word [bp+6]
		mov	ax,word [bx+24]
		mov	cx,word [bx+26]
		mov	si,word [bx+28]
		mov	di,word [bx+30]
		mov	dx,56
		mov	bx,0
		sub	dx,ax
		sbb	bx,cx
		mov	ax,dx
		mov	cx,bx
		mov	dx,0
		mov	bx,0
		sbb	dx,si
		sbb	bx,di
		mov	si,dx
		mov	di,bx
		mov	word [bp-12],ax
		mov	word [bp-10],cx
..@j2005:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word TC_$MD5$_$MDFINAL$TMDCONTEXT$TMDDIGEST_$$_PADDING_MD45
		push	ax
		push	word [bp-12]
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
		lea	di,[bp-20]
		push	ss
		pop	es
		lea	si,[bp-8]
		cld
		mov	cx,4
		rep
		movsw
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,8
		push	ax
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,16
		push	ax
		call	MD5_$$_INVERT$POINTER$POINTER$WORD
		jmp	..@j1989
..@j1992:
		mov	bx,word [bp+6]
		mov	ax,word [bx+24]
		mov	cx,word [bx+26]
		mov	si,word [bx+28]
		mov	di,word [bx+30]
		mov	dx,16
		mov	bx,0
		sub	dx,ax
		sbb	bx,cx
		mov	ax,dx
		mov	cx,bx
		mov	dx,0
		mov	bx,0
		sbb	dx,si
		sbb	bx,di
		mov	si,dx
		mov	di,bx
		mov	word [bp-12],ax
		mov	word [bp-10],cx
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		mov	cx,0
		mov	bx,0
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	word [bp-16],cx
		mov	word [bp-14],bx
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j2037
	ALIGN 2
..@j2036:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		mov	ax,1
		push	ax
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
		sub	word [bp-12],1
		sbb	word [bp-10],0
..@j2037:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		ja	..@j2036
		jb	..@j2038
		cmp	ax,0
		ja	..@j2036
		jmp	..@j2038
..@j2038:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx+96]
		push	ax
		mov	ax,16
		push	ax
		call	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,16
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		jmp	..@j1989
..@j1990:
..@j1989:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,112
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	MD5_$$_INVERT$POINTER$POINTER$WORD
EXTERN	MD5_$$_MDUPDATE$TMDCONTEXT$formal$WORD
EXTERN	TC_$MD5$_$MDFINAL$TMDCONTEXT$TMDDIGEST_$$_PADDING_MD45
