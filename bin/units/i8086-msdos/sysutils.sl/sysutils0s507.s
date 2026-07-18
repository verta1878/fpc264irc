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
	GLOBAL SYSUTILS_$$_EXECUTEPROCESS$ANSISTRING$array_of_ANSISTRING$TEXECUTEFLAGS$$SMALLINT
SYSUTILS_$$_EXECUTEPROCESS$ANSISTRING$array_of_ANSISTRING$TEXECUTEFLAGS$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-4],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j16013
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp+6]
		mov	word [bp-32],ax
		mov	word [bp-6],0
		mov	ax,word [bp-32]
		cmp	ax,word [bp-6]
		jl	..@j16022
		dec	word [bp-6]
	ALIGN 2
..@j16023:
		inc	word [bp-6]
		mov	ax,32
		push	ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		test	ax,ax
		jne	..@j16024
		jmp	..@j16025
..@j16024:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-4]
		mov	word [bp-30],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-28],ax
		mov	ax,word _$SYSUTILS$_Ld691
		mov	word [bp-26],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-24],ax
		mov	ax,word _$SYSUTILS$_Ld691
		mov	word [bp-22],ax
		lea	ax,[bp-30]
		push	ax
		mov	ax,4
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		jmp	..@j16038
..@j16025:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-4]
		mov	word [bp-26],ax
		mov	ax,word _$SYSUTILS$_Ld630
		mov	word [bp-24],ax
		mov	bx,word [bp+8]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-22],ax
		lea	ax,[bp-26]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j16038:
		mov	ax,word [bp-32]
		cmp	ax,word [bp-6]
		jg	..@j16023
..@j16022:
		push	word [bp+10]
		push	word [bp-4]
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$SMALLINT
		mov	word [bp-2],ax
..@j16013:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j16014
		call	FPC_RERAISE
..@j16014:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$SMALLINT
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$SYSUTILS$_Ld691
EXTERN	_$SYSUTILS$_Ld630
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
