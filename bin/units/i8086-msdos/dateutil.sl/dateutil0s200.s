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
	GLOBAL DATEUTILS_$$_LOCALTIMETOUNIVERSAL$TDATETIME$SMALLINT$$TDATETIME
DATEUTILS_$$_LOCALTIMETOUNIVERSAL$TDATETIME$SMALLINT$$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,8
		cmp	word [bp+4],0
		jg	..@j3974
		jmp	..@j3975
..@j3974:
		mov	cx,word [bp+4]
		mov	ax,-30583
		imul	cx
		mov	ax,cx
		add	dx,ax
		mov	cl,5
		sar	dx,cl
		mov	cl,15
		shr	ax,cl
		add	dx,ax
		push	dx
		mov	ax,word [bp+4]
		cwd
		mov	cx,60
		idiv	cx
		push	dx
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
		wait fsubr	qword [bp+6]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j3986
..@j3975:
		cmp	word [bp+4],0
		jl	..@j3987
		jmp	..@j3988
..@j3987:
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,word [bp+4]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	cx,bx
		mov	di,si
		xor	cx,ax
		xor	di,dx
		sub	cx,bx
		sbb	di,si
		push	di
		push	cx
		call	fpc_div_longint
		push	ax
		mov	ax,0
		push	ax
		mov	ax,60
		push	ax
		mov	ax,word [bp+4]
		cwd
		mov	bx,ax
		mov	si,dx
		mov	cl,15
		sar	si,cl
		mov	bx,si
		mov	cx,bx
		mov	di,si
		xor	cx,ax
		xor	di,dx
		sub	cx,bx
		sbb	di,si
		push	di
		push	cx
		call	fpc_mod_longint
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
		wait fadd	qword [bp+6]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j4007
..@j3988:
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
..@j4007:
..@j3986:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	fpc_mod_longint
EXTERN	fpc_div_longint
EXTERN	SYSUTILS_$$_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
