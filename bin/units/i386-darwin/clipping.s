# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CLIPPING_SORTRECT$TRECT
_CLIPPING_SORTRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	8(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT
_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj15
	jmp	Lj16
Lj15:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
Lj16:
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj23
	jmp	Lj24
Lj23:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
Lj24:
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_POINTINSIDE$LONGINT$LONGINT$TRECT$$BOOLEAN
_CLIPPING_POINTINSIDE$LONGINT$LONGINT$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-32(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-32(%ebp),%eax
	call	L_CLIPPING_SORTRECT$TRECT$stub
	movl	-4(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jge	Lj39
	jmp	Lj36
Lj39:
	movl	-4(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj38
	jmp	Lj36
Lj38:
	movl	-8(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj37
	jmp	Lj36
Lj37:
	movl	-8(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj35
	jmp	Lj36
Lj35:
	movb	$1,-13(%ebp)
	jmp	Lj40
Lj36:
	movb	$0,-13(%ebp)
Lj40:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_CHECKRECTCLIPPING$TRECT$TRECT
_CLIPPING_CHECKRECTCLIPPING$TRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%ecx
	leal	-24(%ebp),%edx
	leal	-24(%ebp),%eax
	call	L_CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT
_CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-28(%ebp),%eax
	call	L_CLIPPING_SORTRECT$TRECT$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj67
	jmp	Lj68
Lj67:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
Lj68:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj71
	jmp	Lj72
Lj71:
	movl	12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
Lj72:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj75
	jmp	Lj76
Lj75:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
Lj76:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj79
	jmp	Lj80
Lj79:
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
Lj80:
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj83
	jmp	Lj85
Lj85:
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jl	Lj83
	jmp	Lj84
Lj83:
	movl	%ebp,%eax
	call	L_CLIPPING_CHECKRECTCLIPPING$crcC80DED4F_CLEARRECT$stub
Lj84:
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_CHECKRECTCLIPPING$crcC80DED4F_CLEARRECT
_CLIPPING_CHECKRECTCLIPPING$crcC80DED4F_CLEARRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$-1,(%eax)
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT
_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-48(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movb	$0,-21(%ebp)
	leal	-48(%ebp),%eax
	call	L_CLIPPING_SORTRECT$TRECT$stub
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	(%eax),%ecx
	movl	(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	jmp	Lj109
Lj108:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj110
	jmp	Lj111
Lj110:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj114
Lj111:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj115
	jmp	Lj116
Lj115:
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%eax)
Lj116:
Lj114:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj119
	jmp	Lj120
Lj119:
	movl	8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj123
Lj120:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj124
	jmp	Lj125
Lj124:
	movl	8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%eax)
Lj125:
Lj123:
	jmp	Lj128
Lj109:
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%ecx
	movl	(%edx),%eax
	subl	%eax,%ecx
	testl	%ecx,%ecx
	je	Lj129
	jmp	Lj130
Lj129:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj131
	jmp	Lj132
Lj131:
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj135
Lj132:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj136
	jmp	Lj137
Lj136:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
Lj137:
Lj135:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj140
	jmp	Lj141
Lj140:
	movl	12(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj144
Lj141:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj145
	jmp	Lj146
Lj145:
	movl	12(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
Lj146:
Lj144:
	jmp	Lj149
Lj130:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj155
	jmp	Lj154
Lj155:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj150
	jmp	Lj154
Lj154:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj156
	jmp	Lj153
Lj156:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj150
	jmp	Lj153
Lj153:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj157
	jmp	Lj152
Lj157:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj150
	jmp	Lj152
Lj152:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj158
	jmp	Lj151
Lj158:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj150
	jmp	Lj151
Lj150:
	movl	%ebp,%eax
	call	L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CLEARLINE$stub
	jmp	Lj161
Lj151:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj162
	jmp	Lj164
Lj164:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj162
	jmp	Lj163
Lj162:
	movl	%ebp,%eax
	call	L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE$stub
	fildl	-44(%ebp)
	flds	-20(%ebp)
	fsubrp	%st,%st(1)
	flds	-16(%ebp)
	fdivrp	%st,%st(1)
	fistpq	-56(%ebp)
	fwait
	movl	-56(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jge	Lj171
	jmp	Lj170
Lj171:
	movl	-32(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jle	Lj169
	jmp	Lj170
Lj169:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj172
	jmp	Lj173
Lj172:
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj178
Lj173:
	movl	12(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	movl	8(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,(%eax)
Lj178:
Lj170:
Lj163:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj183
	jmp	Lj185
Lj185:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj183
	jmp	Lj184
Lj183:
	movl	%ebp,%eax
	call	L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE$stub
	fildl	-36(%ebp)
	flds	-20(%ebp)
	fsubrp	%st,%st(1)
	flds	-16(%ebp)
	fdivrp	%st,%st(1)
	fistpq	-56(%ebp)
	fwait
	movl	-56(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jge	Lj192
	jmp	Lj191
Lj192:
	movl	-32(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jle	Lj190
	jmp	Lj191
Lj190:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj193
	jmp	Lj194
Lj193:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj199
Lj194:
	movl	12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	movl	8(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,(%edx)
Lj199:
Lj191:
Lj184:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj204
	jmp	Lj206
Lj206:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj204
	jmp	Lj205
Lj204:
	movl	%ebp,%eax
	call	L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE$stub
	fildl	-48(%ebp)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	flds	-20(%ebp)
	faddp	%st,%st(1)
	fistpq	-56(%ebp)
	fwait
	movl	-56(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jle	Lj213
	jmp	Lj212
Lj213:
	movl	-32(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jge	Lj211
	jmp	Lj212
Lj211:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj214
	jmp	Lj215
Lj214:
	movl	-8(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj220
Lj215:
	movl	12(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,(%eax)
	movl	8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
Lj220:
Lj212:
Lj205:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj225
	jmp	Lj227
Lj227:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj225
	jmp	Lj226
Lj225:
	movl	%ebp,%eax
	call	L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE$stub
	fildl	-40(%ebp)
	flds	-16(%ebp)
	fmulp	%st,%st(1)
	flds	-20(%ebp)
	faddp	%st,%st(1)
	fistpq	-56(%ebp)
	fwait
	movl	-56(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jle	Lj234
	jmp	Lj233
Lj234:
	movl	-32(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jge	Lj232
	jmp	Lj233
Lj232:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj235
	jmp	Lj236
Lj235:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj241
Lj236:
	movl	12(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,(%eax)
	movl	8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
Lj241:
Lj233:
Lj226:
Lj161:
Lj149:
Lj128:
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CLEARLINE
_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CLEARLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$-1,(%eax)
	leave
	ret

.text
	.align 4
.globl	_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE
_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	-21(%eax),%al
	testb	%al,%al
	je	Lj254
	jmp	Lj255
Lj254:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%edx),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,-28(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%edx),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
	fildl	-8(%ebp)
	movl	-4(%ebp),%eax
	fildl	-28(%eax)
	fdivrp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstps	-16(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%edx),%edx
	movl	(%eax),%eax
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	(%ecx),%ecx
	movl	(%eax),%eax
	imull	%eax,%ecx
	subl	%ecx,%edx
	movl	%edx,-8(%ebp)
	fildl	-8(%ebp)
	movl	-4(%ebp),%eax
	fildl	-28(%eax)
	fdivrp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstps	-20(%eax)
	movl	-4(%ebp),%eax
	movb	$1,-21(%eax)
Lj255:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_CLIPPING
_THREADVARLIST_CLIPPING:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CLIPPING_SORTRECT$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_SORTRECT$TRECT$stub:
.indirect_symbol _CLIPPING_SORTRECT$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CLIPPING_CHECKRECTCLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKRECTCLIPPING$crcC80DED4F_CLEARRECT$stub:
.indirect_symbol _CLIPPING_CHECKRECTCLIPPING$crcC80DED4F_CLEARRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CLEARLINE$stub:
.indirect_symbol _CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CLEARLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE$stub:
.indirect_symbol _CLIPPING_CHECKLINECLIPPING$crcC80DED4F_CALCLINE
	hlt
	hlt
	hlt
	hlt
	hlt
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

