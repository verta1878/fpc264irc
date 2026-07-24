BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_PROCESSVALUE$TVALUETYPE$ANSISTRING_$$_PROCESSBINARY
CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_READPROPLIST$ANSISTRING_PROCESSVALUE$TVALUETYPE$ANSISTRING_$$_PROCESSBINARY:
		push	bp
		mov	bp,sp
		sub	sp,66
		mov	word [bp-46],0
		mov	word [bp-62],0
		mov	ax,1
		push	ax
		lea	ax,[bp-58]
		push	ax
		lea	ax,[bp-52]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j16155
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	bx,word [bx+6]
		push	bx
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	bx,word [bx+6]
		push	bx
		mov	ax,word _$CLASSES$_Ld58
		push	ax
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
		jmp	..@j16166
	ALIGN 2
..@j16165:
		mov	ax,word [bp-4]
		mov	word [bp-8],ax
		mov	ax,word [bp-2]
		mov	word [bp-6],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		cmp	dx,0
		jg	..@j16170
		jl	..@j16171
		cmp	ax,32
		ja	..@j16170
		jmp	..@j16171
..@j16170:
		mov	word [bp-8],32
		mov	word [bp-6],0
..@j16171:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	word [bp-4],ax
		sbb	word [bp-2],dx
		lea	ax,[bp-46]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,word _$CLASSES$_Ld44
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	bx,word [bx+6]
		push	word [bx+10]
		lea	ax,[bp-44]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		call	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-66],ax
		mov	word [bp-64],dx
		mov	word [bp-12],0
		mov	word [bp-10],0
		mov	ax,word [bp-64]
		cmp	ax,word [bp-10]
		jl	..@j16191
		jg	..@j16193
		mov	ax,word [bp-66]
		cmp	ax,word [bp-12]
		jb	..@j16191
..@j16193:
		sub	word [bp-12],1
		sbb	word [bp-10],0
	ALIGN 2
..@j16192:
		add	word [bp-12],1
		adc	word [bp-10],0
		lea	ax,[bp-46]
		push	ax
		push	word [bp-46]
		lea	ax,[bp-62]
		push	ax
		mov	si,word [bp-12]
		mov	ax,0
		mov	dl,byte [bp+si-44]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,2
		push	ax
		call	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
		push	word [bp-62]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,word [bp-64]
		cmp	ax,word [bp-10]
		jg	..@j16192
		jl	..@j16208
		mov	ax,word [bp-66]
		cmp	ax,word [bp-12]
		ja	..@j16192
..@j16208:
..@j16191:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	bx,word [bx+6]
		push	bx
		push	word [bp-46]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
..@j16166:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j16165
		jl	..@j16167
		cmp	ax,0
		ja	..@j16165
		jmp	..@j16167
..@j16167:
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	bx,word [bx+6]
		push	bx
		lea	ax,[bp-62]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-62]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+4]
		mov	ax,word _$CLASSES$_Ld59
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-62]
		call	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
..@j16155:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-62]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-46]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16156
		call	FPC_RERAISE
..@j16156:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	_$CLASSES$_Ld59
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
EXTERN	CLASSES$_$TSTREAM_$__$$_READBUFFER$formal$LONGINT
EXTERN	fpc_ansistr_concat
EXTERN	_$CLASSES$_Ld44
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_OUTLN$ANSISTRING
EXTERN	_$CLASSES$_Ld58
EXTERN	CLASSES$_$OBJECTBINARYTOTEXT$crcD2CC83D6_$$_READDWORD$$LONGWORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
