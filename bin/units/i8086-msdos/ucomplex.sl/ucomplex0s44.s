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
	GLOBAL UCOMPLEX_$$_CSTR$COMPLEX$$SHORTSTRING
UCOMPLEX_$$_CSTR$COMPLEX$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,280
		mov	ax,word [bp+4]
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
		mov	ax,-32767
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_float
		wait fld	qword [bp-272]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,-32767
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_float
		jmp	..@j639
	ALIGN 2
..@j638:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
..@j639:
		cmp	byte [bp-255],32
		je	..@j638
		jmp	..@j640
..@j640:
		wait fldz
		wait fld	qword [bp-264]
		wait fcompp
		fstsw	[bp-274]
		mov	ah,byte [bp-273]
		sahf
		jp	..@j651
		jb	..@j649
..@j651:
		jmp	..@j650
..@j649:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+6]
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
		jmp	..@j660
..@j650:
		wait fldz
		wait fld	qword [bp-264]
		wait fcompp
		fstsw	[bp-274]
		mov	ah,byte [bp-273]
		sahf
		jp	..@j663
		ja	..@j661
..@j663:
		jmp	..@j662
..@j661:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+6]
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
..@j662:
..@j660:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$UCOMPLEX$_Ld5
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$UCOMPLEX$_Ld4
EXTERN	SYSTEM_$$_DELETE$OPENSTRING$SMALLINT$SMALLINT
EXTERN	fpc_shortstr_float
