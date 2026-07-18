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
	GLOBAL TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9
		push	word [bp+6]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		cmp	byte [bx],18
		je	..@j15
		jmp	..@j16
..@j15:
		mov	ax,word [bp+4]
		test	ax,ax
		jl	..@j18
		dec	ax
		jle	..@j19
		jmp	..@j18
..@j19:
		mov	ax,word [bp+8]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		mov	bx,ax
		shl	bx,1
		push	word [TC_$TYPINFO_$$_BOOLEANIDENTS+bx]
		call	fpc_ansistr_assign
		jmp	..@j17
..@j18:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j17:
		jmp	..@j30
..@j16:
		mov	bx,word [bp-4]
		lea	ax,[bx+11]
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+1]
		sub	word [bp+4],ax
		jmp	..@j34
	ALIGN 2
..@j33:
		mov	bx,word [bp-2]
		mov	dl,byte [bx]
		mov	dh,0
		mov	ax,word [bp-2]
		add	ax,dx
		inc	ax
		mov	word [bp-2],ax
		dec	word [bp+4]
..@j34:
		cmp	word [bp+4],0
		jg	..@j33
		jmp	..@j35
..@j35:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
..@j30:
..@j9:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10
		call	FPC_RERAISE
..@j10:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_ansistr_assign
EXTERN	TC_$TYPINFO_$$_BOOLEANIDENTS
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
