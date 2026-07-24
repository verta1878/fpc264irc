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
	GLOBAL UCOMPLEX_$$_CSTR$COMPLEX$SMALLINT$SMALLINT$$SHORTSTRING
UCOMPLEX_$$_CSTR$COMPLEX$SMALLINT$SMALLINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,280
		mov	ax,word [bp+8]
		lea	di,[bp-272]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,8
		rep
		movsw
		wait fld	qword [bp-264]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_float
		jmp	..@j747
	ALIGN 2
..@j746:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j747:
		cmp	byte [bp-255],32
		je	..@j746
		jmp	..@j748
..@j748:
		wait fld	qword [bp-272]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	ax,word [bp+10]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_float
		wait fldz
		wait fld	qword [bp-264]
		wait fcompp
		fstsw	[bp-274]
		mov	ah,byte [bp-273]
		sahf
		jp	..@j771
		jb	..@j769
..@j771:
		jmp	..@j770
..@j769:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+10]
		mov	word [bp-280],ax
		lea	ax,[bp-256]
		mov	word [bp-278],ax
		mov	ax,word _$UCOMPLEX$_Ld4
		mov	word [bp-276],ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		jmp	..@j780
..@j770:
		wait fldz
		wait fld	qword [bp-264]
		wait fcompp
		fstsw	[bp-274]
		mov	ah,byte [bp-273]
		sahf
		jp	..@j783
		ja	..@j781
..@j783:
		jmp	..@j782
..@j781:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+10]
		mov	word [bp-280],ax
		mov	ax,word _$UCOMPLEX$_Ld5
		mov	word [bp-278],ax
		lea	ax,[bp-256]
		mov	word [bp-276],ax
		mov	ax,word _$UCOMPLEX$_Ld4
		mov	word [bp-274],ax
		lea	ax,[bp-280]
		push	ax
		mov	ax,3
		push	ax
		call	fpc_shortstr_concat_multi
..@j782:
..@j780:
		mov	sp,bp
		pop	bp
		ret	8
; End asmlist al_procedures
; Begin asmlist al_typedconsts
EXTERN	_$UCOMPLEX$_Ld5
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$UCOMPLEX$_Ld4
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	fpc_shortstr_float
