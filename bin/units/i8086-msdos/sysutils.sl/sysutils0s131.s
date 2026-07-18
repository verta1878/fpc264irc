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
	GLOBAL SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING:
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
		jne	..@j3703
		cmp	word [bp+4],0
		je	..@j3705
		jmp	..@j3706
..@j3705:
		mov	word [bp+4],1
..@j3706:
		mov	ax,word [bp+10]
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
		jl	..@j3718
		dec	word [bp-2]
	ALIGN 2
..@j3719:
		inc	word [bp-2]
		mov	ax,word [bp+10]
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
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,4
..@j3726:
		shr	dx,1
		rcr	ax,1
		loop	..@j3726
		mov	word [bp+6],ax
		mov	word [bp+8],dx
		mov	ax,word [bp-20]
		cmp	ax,word [bp-2]
		jg	..@j3719
..@j3718:
		jmp	..@j3728
	ALIGN 2
..@j3727:
		mov	ax,word [bp+10]
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
		mov	bx,word [bp+10]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	cx,4
..@j3746:
		shr	dx,1
		rcr	ax,1
		loop	..@j3746
		mov	word [bp+6],ax
		mov	word [bp+8],dx
..@j3728:
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jne	..@j3727
		cmp	ax,0
		jne	..@j3727
		jmp	..@j3729
..@j3729:
..@j3703:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3704
		call	FPC_RERAISE
..@j3704:
		mov	sp,bp
		pop	bp
		ret	8
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
