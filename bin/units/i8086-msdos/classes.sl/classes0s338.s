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
	GLOBAL CLASSES$_$TSTRINGS_$__$$_GETTEXTSTR$$ANSISTRING
CLASSES$_$TSTRINGS_$__$$_GETTEXTSTR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-16],0
		mov	word [bp-18],0
		mov	word [bp-34],0
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7812
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
		mov	bx,word [bp+6]
		push	word [bx+18]
		mov	ax,word _$CLASSES$_Ld17
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j7816
		cmp	cx,0
		jne	..@j7816
		jmp	..@j7817
..@j7816:
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+18]
		call	fpc_ansistr_assign
		jmp	..@j7826
..@j7817:
		mov	bx,word [bp+6]
		mov	ax,word [bx+14]
		mov	dx,0
		test	dx,dx
		jne	..@j7832
		test	ax,ax
		je	..@j7829
..@j7832:
		test	dx,dx
		jne	..@j7833
		cmp	ax,1
		je	..@j7830
..@j7833:
		test	dx,dx
		jne	..@j7834
		cmp	ax,2
		je	..@j7831
..@j7834:
		jmp	..@j7828
..@j7829:
		lea	ax,[bp-18]
		push	ax
		mov	ax,word _$CLASSES$_Ld21
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j7827
..@j7830:
		lea	ax,[bp-18]
		push	ax
		mov	ax,word _$CLASSES$_Ld17
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j7827
..@j7831:
		lea	ax,[bp-18]
		push	ax
		mov	ax,word _$CLASSES$_Ld22
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j7827
..@j7828:
..@j7827:
..@j7826:
		mov	word [bp-10],0
		mov	word [bp-8],0
		mov	bx,word [bp-18]
		test	bx,bx
		je	..@j7851
		mov	bx,word [bx-2]
..@j7851:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-14],cx
		mov	word [bp-12],ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-38],cx
		mov	word [bp-36],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-36]
		cmp	ax,word [bp-4]
		jl	..@j7857
		jg	..@j7859
		mov	ax,word [bp-38]
		cmp	ax,word [bp-6]
		jb	..@j7857
..@j7859:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j7858:
		add	word [bp-6],1
		adc	word [bp-4],0
		push	word [bp+6]
		lea	ax,[bp-34]
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp-34]
		test	bx,bx
		je	..@j7868
		mov	bx,word [bx-2]
..@j7868:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	bx,dx
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		add	cx,ax
		adc	bx,dx
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		add	ax,cx
		adc	dx,bx
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	ax,word [bp-36]
		cmp	ax,word [bp-4]
		jg	..@j7858
		jl	..@j7869
		mov	ax,word [bp-38]
		cmp	ax,word [bp-6]
		ja	..@j7858
..@j7869:
..@j7857:
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETSKIPLASTLINEBREAK$$BOOLEAN
		test	al,al
		jne	..@j7870
		jmp	..@j7871
..@j7870:
		mov	dx,word [bp-14]
		mov	ax,word [bp-12]
		sub	word [bp-10],dx
		sbb	word [bp-8],ax
..@j7871:
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-10]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-2],ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-42],cx
		mov	word [bp-40],ax
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	ax,word [bp-40]
		cmp	ax,word [bp-4]
		jl	..@j7887
		jg	..@j7889
		mov	ax,word [bp-42]
		cmp	ax,word [bp-6]
		jb	..@j7887
..@j7889:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j7888:
		add	word [bp-6],1
		adc	word [bp-4],0
		push	word [bp+6]
		lea	ax,[bp-16]
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		mov	bx,word [bp-16]
		test	bx,bx
		je	..@j7898
		mov	bx,word [bx-2]
..@j7898:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-10],cx
		mov	word [bp-8],ax
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jne	..@j7899
		cmp	ax,0
		jne	..@j7899
		jmp	..@j7900
..@j7899:
		mov	ax,word [bp-16]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-10]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j7900:
		mov	dx,word [bp-10]
		mov	ax,word [bp-2]
		add	ax,dx
		mov	word [bp-2],ax
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		dec	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-4]
		jg	..@j7909
		jl	..@j7911
		cmp	cx,word [bp-6]
		ja	..@j7909
		jmp	..@j7911
		jmp	..@j7911
..@j7911:
		push	word [bp+6]
		call	CLASSES$_$TSTRINGS_$__$$_GETSKIPLASTLINEBREAK$$BOOLEAN
		test	al,al
		je	..@j7909
		jmp	..@j7910
..@j7909:
		mov	dx,word [bp-14]
		mov	cx,word [bp-12]
		mov	word [bp-10],1
		mov	word [bp-8],0
		cmp	cx,word [bp-8]
		jl	..@j7919
		jg	..@j7921
		cmp	dx,word [bp-10]
		jb	..@j7919
..@j7921:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j7920:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp-18]
		mov	si,word [bp-10]
		mov	di,word [bp-2]
		mov	al,byte [bx+si-1]
		mov	byte [di],al
		inc	word [bp-2]
		cmp	cx,word [bp-8]
		jg	..@j7920
		jl	..@j7924
		cmp	dx,word [bp-10]
		ja	..@j7920
..@j7924:
..@j7919:
..@j7910:
		mov	ax,word [bp-40]
		cmp	ax,word [bp-4]
		jg	..@j7888
		jl	..@j7925
		mov	ax,word [bp-42]
		cmp	ax,word [bp-6]
		ja	..@j7888
..@j7925:
..@j7887:
..@j7812:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j7813
		call	FPC_RERAISE
..@j7813:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	fpc_ansistr_setlength
EXTERN	CLASSES$_$TSTRINGS_$__$$_GETSKIPLASTLINEBREAK$$BOOLEAN
EXTERN	_$CLASSES$_Ld22
EXTERN	_$CLASSES$_Ld21
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$CLASSES$_Ld17
EXTERN	CLASSES$_$TSTRINGS_$__$$_CHECKSPECIALCHARS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
