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
	GLOBAL SYSUTILS_$$_INTTOHEX$INT64$SMALLINT$$ANSISTRING
SYSUTILS_$$_INTTOHEX$INT64$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-18],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3749
		cmp	word [bp+4],0
		je	..@j3751
		jmp	..@j3752
..@j3751:
		mov	word [bp+4],1
..@j3752:
		mov	ax,word [bp+14]
		push	ax
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+4]
		dec	ax
		mov	word [bp-20],ax
		mov	word [bp-2],0
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jl	..@j3764
		dec	word [bp-2]
	ALIGN 2
..@j3765:
		inc	word [bp-2]
		mov	ax,word [bp+14]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	ax,word [bp+4]
		mov	dx,word [bp-2]
		mov	si,ax
		sub	si,dx
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		and	ax,15
		mov	dx,0
		mov	di,ax
		mov	al,byte [TC_$SYSUTILS_$$_HEXDIGITS+di]
		mov	byte [bx+si-1],al
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	si,word [bp+10]
		mov	ax,word [bp+12]
		mov	cx,4
..@j3773:
		shr	ax,1
		rcr	si,1
		rcr	bx,1
		rcr	dx,1
		loop	..@j3773
		mov	word [bp+6],dx
		mov	word [bp+8],bx
		mov	word [bp+10],si
		mov	word [bp+12],ax
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jg	..@j3765
..@j3764:
		jmp	..@j3776
	ALIGN 2
..@j3775:
		mov	ax,word [bp+14]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bp+8]
		and	bx,15
		mov	ax,0
		mov	al,byte [TC_$SYSUTILS_$$_HEXDIGITS+bx]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-18]
		mov	bx,word [bp+14]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	si,word [bp+6]
		mov	bx,word [bp+8]
		mov	dx,word [bp+10]
		mov	ax,word [bp+12]
		mov	cx,4
..@j3795:
		shr	ax,1
		rcr	dx,1
		rcr	bx,1
		rcr	si,1
		loop	..@j3795
		mov	word [bp+6],si
		mov	word [bp+8],bx
		mov	word [bp+10],dx
		mov	word [bp+12],ax
..@j3776:
		mov	dx,word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bp+10]
		mov	cx,word [bp+12]
		cmp	cx,0
		jne	..@j3775
		cmp	ax,0
		jne	..@j3775
		cmp	bx,0
		jne	..@j3775
		cmp	dx,0
		jne	..@j3775
		jmp	..@j3777
..@j3777:
..@j3749:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3750
		call	FPC_RERAISE
..@j3750:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	TC_$SYSUTILS_$$_HEXDIGITS
EXTERN	fpc_ansistr_unique
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
