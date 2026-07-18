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
	GLOBAL SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
SYSUTILS_$$_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	word [bp-2],0
		mov	word [bp-4],0
		mov	word [bp-6],0
		mov	word [bp-34],0
		mov	word [bp-26],0
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8665
		lea	ax,[bp-2]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		lea	ax,[bp-4]
		push	ax
		push	word [bp+8]
		call	fpc_ansistr_assign
		test	byte [bp+4],2
		jne	..@j8675
		jmp	..@j8676
..@j8675:
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_assign
		lea	ax,[bp-24]
		push	ax
		push	word [bp-26]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-24]
		call	fpc_ansistr_assign
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_assign
		lea	ax,[bp-26]
		push	ax
		push	word [bp-24]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-26]
		call	fpc_ansistr_assign
..@j8676:
		lea	ax,[bp-6]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j8710
	ALIGN 2
..@j8709:
		push	word [bp-4]
		push	word [bp-2]
		call	SYSUTILS_$$_ANSIPOS$ANSISTRING$ANSISTRING$$SMALLINT
		mov	word [bp-8],ax
		cmp	word [bp-8],0
		je	..@j8718
		jmp	..@j8719
..@j8718:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		push	word [bp-6]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j8732
..@j8719:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		mov	ax,word [bx]
		mov	word [bp-32],ax
		lea	ax,[bp-34]
		push	ax
		push	word [bp-6]
		mov	ax,1
		push	ax
		mov	ax,word [bp-8]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		mov	ax,word [bp-34]
		mov	word [bp-30],ax
		mov	ax,word [bp+6]
		mov	word [bp-28],ax
		lea	ax,[bp-32]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j8751
		mov	bx,word [bx-2]
..@j8751:
		mov	ax,word [bp-8]
		add	ax,bx
		mov	word [bp-8],ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-26]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		mov	bx,word [bp-6]
		test	bx,bx
		je	..@j8764
		mov	bx,word [bx-2]
..@j8764:
		mov	ax,word [bp-8]
		sub	bx,ax
		inc	bx
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-26]
		call	fpc_ansistr_assign
		test	byte [bp+4],1
		je	..@j8765
		jmp	..@j8766
..@j8765:
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx]
		push	word [bp-6]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		lea	ax,[bp-2]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j8779
..@j8766:
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-26]
		push	ax
		push	word [bp-2]
		push	word [bp-8]
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j8792
		mov	bx,word [bx-2]
..@j8792:
		mov	ax,word [bp-8]
		sub	bx,ax
		inc	bx
		push	bx
		call	fpc_ansistr_copy
		push	word [bp-26]
		call	fpc_ansistr_assign
..@j8779:
..@j8732:
..@j8710:
		mov	bx,word [bp-2]
		test	bx,bx
		je	..@j8793
		mov	bx,word [bx-2]
..@j8793:
		test	bx,bx
		jne	..@j8709
		jmp	..@j8711
..@j8711:
..@j8665:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8666
		call	FPC_RERAISE
..@j8666:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat_multi
EXTERN	fpc_ansistr_copy
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_ANSIPOS$ANSISTRING$ANSISTRING$$SMALLINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
