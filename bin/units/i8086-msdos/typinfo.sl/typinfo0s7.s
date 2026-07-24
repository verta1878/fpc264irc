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
	GLOBAL TYPINFO_$$_SETTOSTRING$PTYPEINFO$SMALLINT$BOOLEAN$$ANSISTRING
TYPINFO_$$_SETTOSTRING$PTYPEINFO$SMALLINT$BOOLEAN$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	word [bp-28],0
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
		jne	..@j141
		push	word [bp+8]
		call	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
		mov	bx,ax
		mov	ax,word [bx+1]
		mov	word [bp-4],ax
		mov	ax,word [bp+10]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	word [bp-2],0
		dec	word [bp-2]
	ALIGN 2
..@j153:
		inc	word [bp-2]
		mov	ax,word [bp-2]
		mov	si,ax
		mov	cl,3
		shr	si,cl
		and	ax,7
		mov	dl,byte [bp+si+6]
		mov	dh,0
		mov	cx,ax
		shr	dx,cl
		and	dx,1
		test	dl,dl
		jne	..@j154
		jmp	..@j155
..@j154:
		mov	bx,word [bp+10]
		cmp	word [bx],0
		je	..@j156
		jmp	..@j157
..@j156:
		mov	ax,word [bp+10]
		push	ax
		lea	ax,[bp-20]
		push	ax
		push	word [bp-4]
		push	word [bp-2]
		call	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j168
..@j157:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	word [bp-26],ax
		mov	ax,word _$TYPINFO$_Ld4
		mov	word [bp-24],ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp-4]
		push	word [bp-2]
		call	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
		mov	ax,word [bp-28]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j168:
..@j155:
		cmp	word [bp-2],15
		jl	..@j153
		cmp	byte [bp+4],0
		jne	..@j183
		jmp	..@j184
..@j183:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word _$TYPINFO$_Ld5
		mov	word [bp-26],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx]
		mov	word [bp-24],ax
		mov	ax,word _$TYPINFO$_Ld6
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j184:
..@j141:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j142
		call	FPC_RERAISE
..@j142:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	_$TYPINFO$_Ld6
EXTERN	_$TYPINFO$_Ld5
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$TYPINFO$_Ld4
EXTERN	TYPINFO_$$_GETENUMNAME$PTYPEINFO$SMALLINT$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	TYPINFO_$$_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
