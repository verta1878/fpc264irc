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
	GLOBAL SYSTEM_$$_REM_PIO2$DOUBLE$DOUBLE$$SMALLINT
SYSTEM_$$_REM_PIO2$DOUBLE$DOUBLE$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,88
		wait fld	qword [bp+6]
		wait fabs
		wait fstp	qword [bp-22]
		DB	09bh
		wait fld	qword [bp-22]
		wait fld	tword [_$SYSTEM$_Ld10]
		wait fcompp
		fstsw	[bp-72]
		mov	ah,byte [bp-71]
		sahf
		jp	..@j3085
		ja	..@j3083
..@j3085:
		jmp	..@j3084
..@j3083:
		mov	ax,word [bp+4]
		mov	di,ax
		push	ds
		pop	es
		lea	si,[bp+6]
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-2],0
		jmp	..@j3079
		jmp	..@j3090
..@j3084:
		wait fld	qword [bp-22]
		wait fld	tword [_$SYSTEM$_Ld11]
		wait fcompp
		fstsw	[bp-72]
		mov	ah,byte [bp-71]
		sahf
		jp	..@j3093
		ja	..@j3091
..@j3093:
		jmp	..@j3092
..@j3091:
		wait fld	qword [bp+6]
		wait fld	tword [_$SYSTEM$_Ld10]
		wait fdivp	st1,st0
		wait fstp	qword [bp-80]
		DB	09bh
		wait fld	qword [bp-80]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE
		wait fstp	qword [bp-22]
		DB	09bh
		fstcw	[bp-74]
		fstcw	[bp-72]
		DB	09bh
		or	word [bp-74],3840
		wait fld	qword [bp-22]
		wait fld	tword [_$SYSTEM$_Ld13]
		wait fmulp	st1,st0
		wait fstp	qword [bp-88]
		DB	09bh
		wait fld	qword [bp-88]
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		call	SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE
		wait fld	tword [_$SYSTEM$_Ld12]
		wait fmulp	st1,st0
		wait fld	qword [bp-22]
		wait fsubrp	st1,st0
		wait fldcw	[bp-74]
		wait fistp	qword [bp-82]
		wait fldcw	[bp-72]
		DB	09bh
		mov	ax,word [bp-82]
		mov	word [bp-6],ax
		mov	ax,word [bp-80]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		and	ax,1
		mov	dx,0
		test	al,al
		jne	..@j3102
		jmp	..@j3103
..@j3102:
		add	word [bp-6],1
		adc	word [bp-4],0
		wait fld	qword [bp-22]
		wait fld1
		wait faddp	st1,st0
		wait fstp	qword [bp-22]
		DB	09bh
..@j3103:
		mov	bx,word [bp+4]
		wait fld	qword [bp-22]
		wait fmul	qword [_$SYSTEM$_Ld14]
		wait fsubr	qword [bp+6]
		wait fld	qword [bp-22]
		wait fmul	qword [_$SYSTEM$_Ld15]
		wait fsubp	st1,st0
		wait fld	qword [bp-22]
		wait fmul	qword [_$SYSTEM$_Ld16]
		wait fsubp	st1,st0
		wait fstp	qword [bx]
		DB	09bh
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		shr	dx,1
		rcr	ax,1
		and	ax,7
		mov	dx,0
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fabs
		wait fld	qword [TC_$SYSTEM$_$REM_PIO2$DOUBLE$DOUBLE$$SMALLINT_$$_TOL]
		wait fcompp
		fstsw	[bp-72]
		mov	ah,byte [bp-71]
		sahf
		jp	..@j3116
		jb	..@j3114
..@j3116:
		jmp	..@j3115
..@j3114:
		jmp	..@j3079
..@j3115:
..@j3092:
..@j3090:
		mov	bx,word [bp+4]
		wait fld	qword [bp+6]
		wait fabs
		wait fstp	qword [bx]
		DB	09bh
		mov	si,word [bp+4]
		lea	di,[bp-78]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-74]
		mov	dx,word [bp-72]
		mov	ax,dx
		mov	dx,0
		mov	cl,4
		shr	ax,cl
		sub	ax,1046
		sbb	dx,0
		mov	word [bp-10],ax
		mov	word [bp-8],dx
		mov	ax,word [bp-10]
		mov	dx,word [bp-8]
		cmp	dx,0
		jne	..@j3126
		cmp	ax,1001
		jne	..@j3126
		jmp	..@j3125
..@j3125:
		wait fld	qword [bp+6]
		wait fsubr	qword [bp+6]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		mov	word [bp-2],0
		jmp	..@j3079
..@j3126:
		mov	si,word [bp+4]
		lea	di,[bp-82]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		mov	si,word [bp-78]
		mov	dx,word [bp-76]
		mov	ax,word [bp-10]
		mov	bx,word [bp-8]
		mov	bx,ax
		mov	ax,0
		mov	cl,4
		shl	bx,cl
		sub	si,ax
		sbb	dx,bx
		mov	word [bp-74],si
		mov	word [bp-72],dx
		mov	bx,word [bp+4]
		mov	ax,word [bp-74]
		mov	word [bx+4],ax
		mov	ax,word [bp-72]
		mov	word [bx+6],ax
		fstcw	[bp-74]
		fstcw	[bp-72]
		DB	09bh
		or	word [bp-74],3840
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fldcw	[bp-74]
		wait fistp	qword [bp-82]
		wait fldcw	[bp-72]
		DB	09bh
		wait fild	qword [bp-82]
		wait fstp	qword [bp-46]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-46]
		wait fsubr	qword [bx]
		wait fmul	qword [TC_$SYSTEM_$$_TWO24]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		fstcw	[bp-74]
		fstcw	[bp-72]
		DB	09bh
		or	word [bp-74],3840
		mov	bx,word [bp+4]
		wait fld	qword [bx]
		wait fldcw	[bp-74]
		wait fistp	qword [bp-82]
		wait fldcw	[bp-72]
		DB	09bh
		wait fild	qword [bp-82]
		wait fstp	qword [bp-38]
		DB	09bh
		mov	bx,word [bp+4]
		wait fld	qword [bp-38]
		wait fsubr	qword [bx]
		wait fmul	qword [TC_$SYSTEM_$$_TWO24]
		wait fstp	qword [bp-30]
		DB	09bh
		mov	word [bp-14],3
		mov	word [bp-12],0
		jmp	..@j3152
	ALIGN 2
..@j3151:
		sub	word [bp-14],1
		sbb	word [bp-12],0
..@j3152:
		mov	si,word [bp-14]
		mov	ax,word [bp-12]
		sub	si,1
		sbb	ax,0
		mov	cl,3
		shl	si,cl
		wait fld	qword [bp+si-46]
		wait fldz
		wait fcompp
		fstsw	[bp-72]
		mov	ah,byte [bp-71]
		sahf
		jp	..@j3154
		je	..@j3151
..@j3154:
		jmp	..@j3153
..@j3153:
		lea	ax,[bp-46]
		push	ax
		lea	ax,[bp-70]
		push	ax
		push	word [bp-10]
		push	word [bp-14]
		mov	ax,2
		push	ax
		call	SYSTEM_$$_K_REM_PIO2$TDA02$TDA02$SMALLINT$SMALLINT$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
		wait fldz
		wait fld	qword [bp+6]
		wait fcompp
		fstsw	[bp-72]
		mov	ah,byte [bp-71]
		sahf
		jp	..@j3169
		jb	..@j3167
..@j3169:
		jmp	..@j3168
..@j3167:
		mov	ax,word [bp-2]
		neg	ax
		and	ax,7
		mov	word [bp-2],ax
		wait fld	qword [bp-70]
		wait fchs
		wait fsub	qword [bp-62]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
		jmp	..@j3174
..@j3168:
		wait fld	qword [bp-62]
		wait fadd	qword [bp-70]
		mov	bx,word [bp+4]
		wait fstp	qword [bx]
		DB	09bh
..@j3174:
..@j3079:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_K_REM_PIO2$TDA02$TDA02$SMALLINT$SMALLINT$SMALLINT$$SMALLINT
EXTERN	TC_$SYSTEM_$$_TWO24
EXTERN	TC_$SYSTEM$_$REM_PIO2$DOUBLE$DOUBLE$$SMALLINT_$$_TOL
EXTERN	_$SYSTEM$_Ld16
EXTERN	_$SYSTEM$_Ld15
EXTERN	_$SYSTEM$_Ld14
EXTERN	_$SYSTEM$_Ld12
EXTERN	_$SYSTEM$_Ld13
EXTERN	SYSTEM_$$_FLOORD$DOUBLE$$DOUBLE
EXTERN	_$SYSTEM$_Ld11
EXTERN	_$SYSTEM$_Ld10
