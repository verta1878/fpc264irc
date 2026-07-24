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
	GLOBAL CLASSES$_$TREADER_$__$$_COPYVALUE$TWRITER
CLASSES$_$TREADER_$__$$_COPYVALUE$TWRITER:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j20834
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		test	dx,dx
		jne	..@j20850
		test	ax,ax
		je	..@j20838
..@j20850:
		test	dx,dx
		jb	..@j20837
		test	dx,dx
		ja	..@j20851
		cmp	ax,2
		jb	..@j20837
..@j20851:
		test	dx,dx
		jb	..@j20842
		test	dx,dx
		ja	..@j20852
		cmp	ax,4
		jbe	..@j20842
..@j20852:
		test	dx,dx
		jne	..@j20853
		cmp	ax,5
		je	..@j20843
..@j20853:
		test	dx,dx
		jne	..@j20854
		cmp	ax,7
		je	..@j20844
..@j20854:
		test	dx,dx
		jne	..@j20855
		cmp	ax,8
		je	..@j20839
..@j20855:
		test	dx,dx
		jne	..@j20856
		cmp	ax,9
		je	..@j20840
..@j20856:
		test	dx,dx
		jne	..@j20857
		cmp	ax,13
		je	..@j20841
..@j20857:
		test	dx,dx
		jne	..@j20858
		cmp	ax,15
		je	..@j20845
..@j20858:
		test	dx,dx
		jne	..@j20859
		cmp	ax,17
		je	..@j20846
..@j20859:
		test	dx,dx
		jne	..@j20860
		cmp	ax,19
		je	..@j20847
..@j20860:
		jmp	..@j20837
..@j20838:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld73
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j20836
..@j20839:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld74
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j20836
..@j20840:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld75
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j20836
..@j20841:
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld76
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j20836
..@j20842:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
		push	dx
		push	ax
		call	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
		jmp	..@j20836
..@j20843:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	CLASSES$_$TWRITER_$__$$_WRITEFLOAT$EXTENDED
		jmp	..@j20836
..@j20844:
		push	word [bp+4]
		push	word [bp+6]
		lea	ax,[bp-16]
		push	ax
		call	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
		push	word [bp-16]
		call	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
		jmp	..@j20836
..@j20845:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READSINGLE$$SINGLE
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		call	CLASSES$_$TWRITER_$__$$_WRITESINGLE$SINGLE
		jmp	..@j20836
..@j20846:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READDATE$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	CLASSES$_$TWRITER_$__$$_WRITEDATE$TDATETIME
		jmp	..@j20836
..@j20847:
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TREADER_$__$$_READINT64$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		call	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$INT64
		jmp	..@j20836
..@j20837:
..@j20836:
..@j20834:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j20835
		call	FPC_RERAISE
..@j20835:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$INT64
EXTERN	CLASSES$_$TREADER_$__$$_READINT64$$INT64
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEDATE$TDATETIME
EXTERN	CLASSES$_$TREADER_$__$$_READDATE$$TDATETIME
EXTERN	CLASSES$_$TWRITER_$__$$_WRITESINGLE$SINGLE
EXTERN	CLASSES$_$TREADER_$__$$_READSINGLE$$SINGLE
EXTERN	CLASSES$_$TREADER_$__$$_READIDENT$$ANSISTRING
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEFLOAT$EXTENDED
EXTERN	CLASSES$_$TREADER_$__$$_READFLOAT$$EXTENDED
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEINTEGER$LONGINT
EXTERN	CLASSES$_$TREADER_$__$$_READINTEGER$$LONGINT
EXTERN	_$CLASSES$_Ld76
EXTERN	_$CLASSES$_Ld75
EXTERN	_$CLASSES$_Ld74
EXTERN	CLASSES$_$TWRITER_$__$$_WRITEIDENT$ANSISTRING
EXTERN	_$CLASSES$_Ld73
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
