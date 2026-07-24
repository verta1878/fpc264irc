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
	GLOBAL SYSUTILS_$$_INTSTRTODATE$crcFE9096A9
SYSUTILS_$$_INTSTRTODATE$crcFE9096A9:
		push	bp
		mov	bp,sp
		sub	sp,604
		mov	bx,word [bp+14]
		mov	word [bx],0
		mov	word [bp-10],0
		mov	word [bp-600],0
		mov	ax,1
		push	ax
		lea	ax,[bp-84]
		push	ax
		lea	ax,[bp-78]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10001
		mov	ax,word [bp+14]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j10010
	ALIGN 2
..@j10009:
		dec	word [bp+10]
..@j10010:
		cmp	word [bp+10],0
		jg	..@j10012
		jmp	..@j10011
..@j10012:
		mov	bx,word [bp+12]
		mov	ax,word [bp+10]
		dec	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,8
		cmp	ax,3
		jb	..@j10013
		sub	ax,4
		cmp	ax,2
		jb	..@j10013
		cmp	ax,20
		stc
		je	..@j10013
		clc
..@j10013:
		jc	..@j10009
		jmp	..@j10011
..@j10011:
		cmp	word [bp+10],0
		je	..@j10014
		jmp	..@j10015
..@j10014:
		push	bp
		mov	ax,word _$SYSUTILS$_Ld660
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
		jmp	..@j10001
..@j10015:
		mov	byte [bp-71],0
		cmp	byte [bp+4],0
		je	..@j10024
		jmp	..@j10025
..@j10024:
		mov	bx,word [bp+6]
		mov	al,byte [bx+5]
		mov	byte [bp+4],al
..@j10025:
		lea	ax,[bp-10]
		push	ax
		push	word [bp+8]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		mov	byte [bp-31],0
		mov	byte [bp-30],0
		mov	byte [bp-29],0
		mov	byte [bp-32],0
		mov	word [bp-26],0
		mov	word [bp-24],0
		jmp	..@j10043
	ALIGN 2
..@j10042:
		add	word [bp-26],1
		adc	word [bp-24],0
		mov	bx,word [bp-10]
		mov	si,word [bp-26]
		mov	al,byte [bx+si-1]
		cmp	al,68
		jb	..@j10046
		sub	al,68
		je	..@j10049
		sub	al,9
		je	..@j10048
		sub	al,12
		je	..@j10047
		jmp	..@j10046
..@j10047:
		cmp	byte [bp-31],0
		je	..@j10050
		jmp	..@j10051
..@j10050:
		inc	byte [bp-32]
		mov	al,byte [bp-32]
		mov	byte [bp-31],al
..@j10051:
		jmp	..@j10045
..@j10048:
		cmp	byte [bp-30],0
		je	..@j10054
		jmp	..@j10055
..@j10054:
		inc	byte [bp-32]
		mov	al,byte [bp-32]
		mov	byte [bp-30],al
..@j10055:
		jmp	..@j10045
..@j10049:
		cmp	byte [bp-29],0
		je	..@j10058
		jmp	..@j10059
..@j10058:
		inc	byte [bp-32]
		mov	al,byte [bp-32]
		mov	byte [bp-29],al
..@j10059:
		jmp	..@j10045
..@j10046:
..@j10045:
..@j10043:
		mov	bx,word [bp-10]
		test	bx,bx
		je	..@j10063
		mov	bx,word [bx-2]
..@j10063:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,word [bp-24]
		jg	..@j10062
		jl	..@j10044
		cmp	cx,word [bp-26]
		ja	..@j10062
		jmp	..@j10044
		jmp	..@j10044
..@j10062:
		cmp	byte [bp-32],3
		jb	..@j10042
		jmp	..@j10044
..@j10044:
		mov	word [bp-26],1
		mov	word [bp-24],0
		sub	word [bp-26],1
		sbb	word [bp-24],0
	ALIGN 2
..@j10066:
		add	word [bp-26],1
		adc	word [bp-24],0
		mov	si,word [bp-26]
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-54],0
		mov	word [bp+si-52],0
		cmp	word [bp-24],0
		jl	..@j10066
		jg	..@j10069
		cmp	word [bp-26],3
		jb	..@j10066
..@j10069:
		mov	byte [bp-37],0
		mov	word [bp-22],0
		mov	word [bp-20],0
		dec	word [bp+10]
		mov	ax,word [bp+10]
		cwd
		mov	word [bp-604],ax
		mov	word [bp-602],dx
		mov	word [bp-26],0
		mov	word [bp-24],0
		mov	ax,word [bp-602]
		cmp	ax,word [bp-24]
		jl	..@j10077
		jg	..@j10079
		mov	ax,word [bp-604]
		cmp	ax,word [bp-26]
		jb	..@j10077
..@j10079:
		sub	word [bp-26],1
		sbb	word [bp-24],0
	ALIGN 2
..@j10078:
		add	word [bp-26],1
		adc	word [bp-24],0
		mov	bx,word [bp+12]
		mov	si,word [bp-26]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10082
..@j10082:
		jc	..@j10080
		jmp	..@j10081
..@j10080:
		lea	ax,[bp-37]
		push	ax
		mov	ax,4
		push	ax
		lea	ax,[bp-342]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-37]
		push	ax
		mov	bx,word [bp+12]
		mov	si,word [bp-26]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-598],ax
		lea	ax,[bp-598]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-342]
		push	ax
		call	fpc_shortstr_to_shortstr
..@j10081:
		cmp	byte [bp+4],32
		jne	..@j10099
		jmp	..@j10098
..@j10099:
		mov	bx,word [bp+12]
		mov	si,word [bp-26]
		cmp	byte [bx+si],32
		je	..@j10097
		jmp	..@j10098
..@j10097:
		jmp	..@j10076
..@j10098:
		mov	bx,word [bp+12]
		mov	si,word [bp-26]
		mov	al,byte [bx+si]
		cmp	al,byte [bp+4]
		je	..@j10100
		jmp	..@j10102
..@j10102:
		mov	ax,word [bp+10]
		cwd
		cmp	dx,word [bp-24]
		jne	..@j10101
		cmp	ax,word [bp-26]
		jne	..@j10101
		jmp	..@j10103
		jmp	..@j10101
..@j10103:
		mov	bx,word [bp+12]
		mov	si,word [bp-26]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10104
..@j10104:
		jc	..@j10100
		jmp	..@j10101
..@j10100:
		add	word [bp-22],1
		adc	word [bp-20],0
		mov	dx,word [bp-22]
		mov	ax,word [bp-20]
		cmp	ax,0
		jg	..@j10105
		jl	..@j10106
		cmp	dx,3
		ja	..@j10105
		jmp	..@j10106
..@j10105:
		push	bp
		mov	ax,word _$SYSUTILS$_Ld660
		push	ax
		lea	ax,[bp-600]
		push	ax
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-600]
		call	SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
		jmp	..@j10001
..@j10106:
		mov	ax,0
		mov	dl,byte [bp-31]
		mov	dh,0
		cmp	ax,word [bp-20]
		jne	..@j10120
		cmp	dx,word [bp-22]
		jne	..@j10120
		jmp	..@j10121
		jmp	..@j10120
..@j10121:
		cmp	byte [bp-37],2
		ja	..@j10119
		jmp	..@j10120
..@j10119:
		mov	byte [bp-71],1
..@j10120:
		lea	ax,[bp-37]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	fpc_val_longint_shortstr
		mov	bx,ax
		mov	ax,word [bp-22]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	word [bp+si-54],bx
		mov	word [bp+si-52],dx
		cmp	word [bp-28],0
		jne	..@j10130
		jmp	..@j10131
..@j10130:
		push	bp
		mov	ax,word _$SYSUTILS$_Ld660
		push	ax
		lea	ax,[bp-600]
		push	ax
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-600]
		call	SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
		jmp	..@j10001
..@j10131:
		mov	byte [bp-37],0
		jmp	..@j10146
..@j10101:
		mov	bx,word [bp+12]
		mov	si,word [bp-26]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j10149
..@j10149:
		jnc	..@j10147
		jmp	..@j10148
..@j10147:
		push	bp
		mov	ax,word _$SYSUTILS$_Ld660
		push	ax
		lea	ax,[bp-600]
		push	ax
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-600]
		call	SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
		jmp	..@j10001
..@j10148:
..@j10146:
..@j10076:
		mov	ax,word [bp-602]
		cmp	ax,word [bp-24]
		jg	..@j10078
		jl	..@j10162
		mov	ax,word [bp-604]
		cmp	ax,word [bp-26]
		ja	..@j10078
..@j10162:
..@j10077:
		cmp	byte [bp-32],3
		jb	..@j10165
		jmp	..@j10164
..@j10165:
		mov	ax,0
		mov	dl,byte [bp-32]
		mov	dh,0
		cmp	ax,word [bp-20]
		jl	..@j10163
		jg	..@j10164
		cmp	dx,word [bp-22]
		jb	..@j10163
		jmp	..@j10164
		jmp	..@j10164
..@j10163:
		push	bp
		mov	ax,word _$SYSUTILS$_Ld660
		push	ax
		lea	ax,[bp-600]
		push	ax
		push	word [bp+12]
		mov	ax,0
		push	ax
		call	fpc_pchar_to_ansistr
		push	word [bp-600]
		call	SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
		jmp	..@j10001
..@j10164:
		lea	ax,[bp-70]
		push	ax
		call	SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
		mov	ax,word [bp-70]
		mov	word [bp-18],ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		cmp	dx,0
		jne	..@j10183
		cmp	ax,3
		jne	..@j10183
		jmp	..@j10182
..@j10182:
		mov	al,byte [bp-31]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-54]
		mov	word [bp-16],ax
		mov	al,byte [bp-30]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-54]
		mov	word [bp-14],ax
		mov	al,byte [bp-29]
		mov	ah,0
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp+si-54]
		mov	word [bp-12],ax
		jmp	..@j10190
..@j10183:
		mov	ax,word [bp-18]
		mov	word [bp-16],ax
		mov	dx,word [bp-22]
		mov	ax,word [bp-20]
		cmp	ax,0
		jl	..@j10193
		jg	..@j10194
		cmp	dx,2
		jb	..@j10193
		jmp	..@j10194
..@j10193:
		mov	ax,word [bp-50]
		mov	word [bp-12],ax
		mov	ax,word [bp-68]
		mov	word [bp-14],ax
		jmp	..@j10199
..@j10194:
		mov	al,byte [bp-29]
		cmp	al,byte [bp-30]
		jb	..@j10200
		jmp	..@j10201
..@j10200:
		mov	ax,word [bp-50]
		mov	word [bp-12],ax
		mov	ax,word [bp-46]
		mov	word [bp-14],ax
		jmp	..@j10206
..@j10201:
		mov	ax,word [bp-46]
		mov	word [bp-12],ax
		mov	ax,word [bp-50]
		mov	word [bp-14],ax
..@j10206:
..@j10199:
..@j10190:
		jmp	..@j10214
..@j10214:
		cmp	word [bp-16],100
		jb	..@j10213
		jmp	..@j10212
..@j10213:
		cmp	byte [bp-71],0
		je	..@j10211
		jmp	..@j10212
..@j10211:
		mov	bx,word [bp+6]
		mov	bx,word [bx+98]
		mov	cx,0
		mov	ax,word [bp-18]
		mov	dx,0
		sub	ax,bx
		sbb	dx,cx
		mov	word [bp-18],ax
		mov	dx,word [bp-18]
		mov	ax,-23593
		mul	dx
		add	ax,-23593
		adc	dx,0
		mov	cl,6
		shr	dx,cl
		mov	ax,100
		mul	dx
		add	word [bp-16],ax
		mov	bx,word [bp+6]
		cmp	word [bx+98],0
		ja	..@j10219
		jmp	..@j10218
..@j10219:
		mov	ax,word [bp-16]
		cmp	ax,word [bp-18]
		jb	..@j10217
		jmp	..@j10218
..@j10217:
		add	word [bp-16],100
..@j10218:
..@j10212:
		push	word [bp-16]
		push	word [bp-14]
		push	word [bp-12]
		lea	ax,[bp-8]
		push	ax
		call	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		test	al,al
		je	..@j10220
		jmp	..@j10221
..@j10220:
		mov	ax,word [bp+14]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld662
		push	ax
		call	fpc_ansistr_assign
..@j10221:
..@j10001:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-600]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10002
		call	FPC_RERAISE
..@j10002:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	_$SYSUTILS$_Ld662
EXTERN	SYSUTILS_$$_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
EXTERN	SYSUTILS_$$_GETLOCALTIME$TSYSTEMTIME
EXTERN	fpc_val_longint_shortstr
EXTERN	fpc_pchar_to_ansistr
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_concat
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	SYSUTILS$_$INTSTRTODATE$crcFE9096A9_$$_FIXERRORMSG$ANSISTRING$ANSISTRING
EXTERN	_$SYSUTILS$_Ld660
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
