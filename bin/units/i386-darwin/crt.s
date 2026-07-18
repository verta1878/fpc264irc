# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CRT_STR$LONGINT$$SHORTSTRING
_CRT_STR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$32,(%esp)
	leal	-41(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	leal	-41(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_CRT_MAX$LONGINT$LONGINT$$LONGINT
_CRT_MAX$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj21
	jmp	Lj22
Lj21:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj25
Lj22:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj25:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CRT_MIN$LONGINT$LONGINT$$LONGINT
_CRT_MIN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj30
	jmp	Lj31
Lj30:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj34
Lj31:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj34:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CRT_XY2ANSI$LONGINT$LONGINT$LONGINT$LONGINT$$SHORTSTRING
_CRT_XY2ANSI$LONGINT$LONGINT$LONGINT$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-548(%ebp)
	call	Lj38
Lj38:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	je	Lj41
	jmp	Lj40
Lj41:
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj42
	jmp	Lj43
Lj42:
	movl	-4(%ebp),%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj38(%ebx),%edx
	cmpl	(%edx),%eax
	je	Lj44
	jmp	Lj45
Lj44:
	movl	$4,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-32(%ebp)
	leal	-288(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-288(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	L_$CRT$_Ld2$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-24(%ebp)
	leal	-544(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-544(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CRT$_Ld3$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-16(%ebp)
	leal	-32(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj62
Lj45:
	movl	8(%ebp),%eax
	movb	$0,(%eax)
Lj62:
	jmp	Lj37
Lj43:
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj65
	jmp	Lj66
Lj65:
	movl	$2,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	leal	-280(%ebp),%edx
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CRT$_Ld5$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj37
	jmp	Lj79
Lj66:
	movl	$2,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	leal	-280(%ebp),%edx
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CRT$_Ld6$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj37
Lj79:
Lj40:
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj92
	jmp	Lj93
Lj92:
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj94
	jmp	Lj95
Lj94:
	movl	$2,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%ebp),%edx
	subl	%edx,%eax
	leal	-280(%ebp),%edx
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CRT$_Ld7$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj37
	jmp	Lj108
Lj95:
	movl	$2,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-24(%ebp)
	movl	12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	leal	-280(%ebp),%edx
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CRT$_Ld8$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	jmp	Lj37
Lj108:
Lj93:
	movl	$4,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-32(%ebp)
	leal	-288(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-288(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	L_$CRT$_Ld2$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-24(%ebp)
	leal	-544(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CRT_STR$LONGINT$$SHORTSTRING$stub
	leal	-544(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$CRT$_Ld3$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-16(%ebp)
	leal	-32(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj37:
	movl	-548(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING
_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$568,%esp
	movl	%ebx,-564(%ebp)
	call	Lj138
Lj138:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj141
	jmp	Lj142
Lj141:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj137
Lj142:
	movb	$0,-29(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$7,%eax
	jne	Lj155
	jmp	Lj159
Lj159:
	movl	-44(%ebp),%eax
	cmpl	$7,%eax
	je	Lj155
	jmp	Lj158
Lj158:
	movl	-36(%ebp),%eax
	cmpl	$7,%eax
	jg	Lj160
	jmp	Lj157
Lj160:
	movl	-44(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj155
	jmp	Lj157
Lj157:
	movl	-40(%ebp),%eax
	cmpl	$7,%eax
	jg	Lj161
	jmp	Lj156
Lj161:
	movl	-48(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj155
	jmp	Lj156
Lj155:
	movw	$12289,-29(%ebp)
	movl	$7,-36(%ebp)
	movl	$0,-40(%ebp)
Lj156:
	movl	-44(%ebp),%eax
	cmpl	$7,%eax
	jg	Lj170
	jmp	Lj169
Lj170:
	movl	-36(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj168
	jmp	Lj169
Lj168:
	movl	%ebp,%eax
	movb	$49,%dl
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR$stub
	movl	-36(%ebp),%eax
	orl	$8,%eax
	movl	%eax,-36(%ebp)
Lj169:
	movl	-48(%ebp),%eax
	andl	$8,%eax
	movl	-40(%ebp),%edx
	andl	$8,%edx
	cmpl	%edx,%eax
	jne	Lj177
	jmp	Lj178
Lj177:
	movl	%ebp,%eax
	movb	$53,%dl
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR$stub
	movl	-40(%ebp),%eax
	orl	$8,%eax
	movl	%eax,-40(%ebp)
Lj178:
	movl	-44(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jne	Lj185
	jmp	Lj186
Lj185:
	movl	%ebp,%eax
	movb	$51,%dl
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR$stub
	movl	-44(%ebp),%eax
	andl	$7,%eax
	incl	%eax
	movzbl	%al,%eax
	movl	L_TC_CRT_ANSITBL$non_lazy_ptr-Lj138(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-560(%ebp)
	leal	-560(%ebp),%eax
	movl	%eax,(%esp)
	leal	-29(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-304(%ebp),%ecx
	leal	-29(%ebp),%eax
	movl	$16,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj186:
	movl	-48(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jne	Lj205
	jmp	Lj206
Lj205:
	movl	%ebp,%eax
	movb	$52,%dl
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR$stub
	movl	-48(%ebp),%eax
	andl	$7,%eax
	incl	%eax
	movzbl	%al,%eax
	movl	L_TC_CRT_ANSITBL$non_lazy_ptr-Lj138(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-560(%ebp)
	leal	-560(%ebp),%eax
	movl	%eax,(%esp)
	leal	-29(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-304(%ebp),%ecx
	leal	-29(%ebp),%eax
	movl	$16,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj206:
	leal	-29(%ebp),%eax
	movl	L_$CRT$_Ld9$non_lazy_ptr-Lj138(%ebx),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj225
	jmp	Lj226
Lj225:
	movb	$0,-29(%ebp)
Lj226:
	movl	$2,(%esp)
	movl	L_$CRT$_Ld1$non_lazy_ptr-Lj138(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-29(%ebp),%ecx
	leal	-560(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-560(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$CRT$_Ld10$non_lazy_ptr-Lj138(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj137:
	movl	-564(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR
_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-524(%ebp)
	call	Lj140
Lj140:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-29(%eax),%eax
	cmpl	$0,%eax
	jg	Lj247
	jmp	Lj248
Lj247:
	movl	L_$CRT$_Ld2$non_lazy_ptr-Lj140(%ebx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	-29(%eax),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	-29(%eax),%eax
	movl	$16,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj248:
	movzbl	-4(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-520(%ebp)
	leal	-520(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	leal	-29(%eax),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	-29(%eax),%eax
	movl	$16,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-524(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_ANSI2ATTR$SHORTSTRING$LONGINT$$LONGINT
_CRT_ANSI2ATTR$SHORTSTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj278
Lj278:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$2,-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$3,%eax
	jl	Lj281
	jmp	Lj284
Lj284:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$27,%al
	jne	Lj281
	jmp	Lj283
Lj283:
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$91,%al
	jne	Lj281
	jmp	Lj282
Lj281:
	movl	$255,-16(%ebp)
Lj282:
	jmp	Lj288
	.align 2
Lj287:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	jb	Lj291
	subb	$48,%al
	je	Lj292
	decb	%al
	je	Lj293
	subb	$2,%al
	je	Lj295
	decb	%al
	je	Lj296
	decb	%al
	je	Lj294
	subb	$56,%al
	je	Lj297
	jmp	Lj291
Lj292:
	movl	$7,-8(%ebp)
	jmp	Lj290
Lj293:
	movl	-8(%ebp),%eax
	orl	$8,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj290
Lj294:
	movl	-8(%ebp),%eax
	orl	$128,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj290
Lj295:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movl	L_TC_CRT_ANSITBL$non_lazy_ptr-Lj278(%ebx),%edx
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj310
	jmp	Lj311
Lj310:
	movl	-8(%ebp),%edx
	andl	$248,%edx
	movl	-20(%ebp),%eax
	decl	%eax
	orl	%eax,%edx
	movl	%edx,-8(%ebp)
Lj311:
	jmp	Lj290
Lj296:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movl	L_TC_CRT_ANSITBL$non_lazy_ptr-Lj278(%ebx),%edx
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj320
	jmp	Lj321
Lj320:
	movl	-20(%ebp),%eax
	decl	%eax
	shll	$4,%eax
	movl	-8(%ebp),%edx
	andl	$143,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
Lj321:
	jmp	Lj290
Lj297:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj290
Lj291:
Lj290:
Lj288:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj287
	jmp	Lj289
Lj289:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYFLUSHOUTPUT
_CRT_TTYFLUSHOUTPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj329
Lj329:
	popl	%ebx
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj329(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj330
	jmp	Lj331
Lj330:
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj329(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_U_CRT_OUTBUF$non_lazy_ptr-Lj329(%ebx),%edx
	movl	$1,%eax
	call	L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj329(%ebx),%eax
	movl	$0,(%eax)
Lj331:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN
_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj341
Lj341:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_TC_CRT_TTYFLUSH$non_lazy_ptr-Lj341(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	movb	-4(%ebp),%dl
	movl	L_TC_CRT_TTYFLUSH$non_lazy_ptr-Lj341(%ebx),%eax
	movb	%dl,(%eax)
	movl	L_TC_CRT_TTYFLUSH$non_lazy_ptr-Lj341(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj346
	jmp	Lj347
Lj346:
	call	L_CRT_TTYFLUSHOUTPUT$stub
Lj347:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYSENDCHAR$CHAR
_CRT_TTYSENDCHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj349
Lj349:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj349(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$1024,%eax
	jl	Lj350
	jmp	Lj351
Lj350:
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj349(%ebx),%eax
	movl	(%eax),%ecx
	movb	-4(%ebp),%al
	movl	L_U_CRT_OUTBUF$non_lazy_ptr-Lj349(%ebx),%edx
	movb	%al,(%edx,%ecx,1)
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj349(%ebx),%eax
	incl	(%eax)
Lj351:
	movl	L_U_CRT_OUTCNT$non_lazy_ptr-Lj349(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$1024,%eax
	jge	Lj354
	jmp	Lj355
Lj354:
	call	L_CRT_TTYFLUSHOUTPUT$stub
Lj355:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYSENDSTR$SHORTSTRING
_CRT_TTYSENDSTR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj357
Lj357:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj359
	decl	-8(%ebp)
	.align 2
Lj360:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%eax
	movb	(%edx,%eax,1),%al
	call	L_CRT_TTYSENDCHAR$CHAR$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj360
Lj359:
	movl	L_TC_CRT_TTYFLUSH$non_lazy_ptr-Lj357(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj363
	jmp	Lj364
Lj363:
	call	L_CRT_TTYFLUSHOUTPUT$stub
Lj364:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYRECVCHAR$$CHAR
_CRT_TTYRECVCHAR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj366
Lj366:
	popl	%ebx
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	cmpl	(%eax),%edx
	je	Lj367
	jmp	Lj368
Lj367:
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%edx
	movl	$256,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	cmpl	(%eax),%edx
	jg	Lj371
	jmp	Lj372
Lj371:
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj372:
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_INBUF$non_lazy_ptr-Lj366(%ebx),%eax
	leal	(%eax,%edx,1),%edx
	movl	-12(%ebp),%ecx
	movl	$0,%eax
	call	L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	L_U_CRT_INCNT$non_lazy_ptr-Lj366(%ebx),%eax
	addl	%edx,(%eax)
	movl	-8(%ebp),%edx
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	addl	%edx,(%eax)
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$256,%eax
	jge	Lj383
	jmp	Lj384
Lj383:
	movl	L_U_CRT_INHEAD$non_lazy_ptr-Lj366(%ebx),%eax
	movl	$0,(%eax)
Lj384:
Lj368:
	movl	L_U_CRT_INCNT$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj387
	jmp	Lj388
Lj387:
	movb	$0,-1(%ebp)
	jmp	Lj391
Lj388:
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_CRT_INBUF$non_lazy_ptr-Lj366(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,-1(%ebp)
	movl	L_U_CRT_INCNT$non_lazy_ptr-Lj366(%ebx),%eax
	decl	(%eax)
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	incl	(%eax)
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$256,%eax
	jge	Lj394
	jmp	Lj395
Lj394:
	movl	L_U_CRT_INTAIL$non_lazy_ptr-Lj366(%ebx),%eax
	movl	$0,(%eax)
Lj395:
Lj391:
	movb	-1(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYGOTOXY$LONGINT$LONGINT
_CRT_TTYGOTOXY$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj399
Lj399:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj400
	jmp	Lj401
Lj400:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj399(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj399(%ebx),%eax
	movb	$255,(%eax)
Lj401:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj406
	jmp	Lj407
Lj406:
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj399(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj399(%ebx),%eax
	movb	$255,(%eax)
Lj407:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj399(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj412
	jmp	Lj413
Lj412:
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj399(%ebx),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	cmpl	$1,%edx
	je	Lj414
	jmp	Lj415
Lj414:
	movl	L_$CRT$_Ld11$non_lazy_ptr-Lj399(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj415:
	jmp	Lj418
Lj413:
	leal	-264(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj399(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj399(%ebx),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CRT_XY2ANSI$LONGINT$LONGINT$LONGINT$LONGINT$$SHORTSTRING$stub
	leal	-264(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj418:
	movb	-4(%ebp),%dl
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj399(%ebx),%eax
	movb	%dl,(%eax)
	movb	-8(%ebp),%dl
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj399(%ebx),%eax
	movb	%dl,(%eax)
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYCOLOR$LONGINT
_CRT_TTYCOLOR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	call	Lj436
Lj436:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj436(%ebx),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj437
	jmp	Lj438
Lj437:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj436(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj439
	jmp	Lj440
Lj439:
	leal	-260(%ebp),%ecx
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj436(%ebx),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING$stub
	leal	-260(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj440:
	movb	-4(%ebp),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj436(%ebx),%eax
	movb	%dl,(%eax)
	movb	-4(%ebp),%dl
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj436(%ebx),%eax
	movb	%dl,(%eax)
Lj438:
	movl	-264(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TTYWRITE$SHORTSTRING
_CRT_TTYWRITE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj454
Lj454:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj454(%ebx),%eax
	movzbl	(%eax),%edx
	decl	%edx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj454(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	decl	%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj460
	decl	-12(%ebp)
	.align 2
Lj461:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	cmpb	$8,%dl
	je	Lj462
	jmp	Lj463
Lj462:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	movzbl	(%edx),%edx
	cmpl	$1,%edx
	jg	Lj464
	jmp	Lj465
Lj464:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	decb	(%edx)
Lj465:
	jmp	Lj466
Lj463:
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj454(%ebx),%edx
	movl	(%edx),%esi
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	movzbl	(%edx),%edx
	movl	-8(%ebp),%ecx
	addl	%edx,%ecx
	movl	-4(%ebp),%edi
	movzbl	-12(%ebp),%edx
	movb	(%edi,%edx,1),%dl
	movb	%dl,(%esi,%ecx,2)
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj454(%ebx),%edx
	movl	(%edx),%esi
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	movzbl	(%edx),%edx
	movl	-8(%ebp),%ecx
	addl	%edx,%ecx
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj454(%ebx),%edx
	movb	(%edx),%dl
	movb	%dl,1(%esi,%ecx,2)
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	incb	(%edx)
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	movzbl	(%edx),%ecx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj454(%ebx),%edx
	cmpl	(%edx),%ecx
	jg	Lj471
	jmp	Lj472
Lj471:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj454(%ebx),%edx
	movb	$255,(%edx)
Lj472:
Lj466:
	cmpl	-12(%ebp),%eax
	jg	Lj461
Lj460:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CRT_FULLWIN$$BOOLEAN
_CRT_FULLWIN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj476
Lj476:
	popl	%ecx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj476(%ecx),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj481
	jmp	Lj478
Lj481:
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj476(%ecx),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj480
	jmp	Lj478
Lj480:
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj476(%ecx),%eax
	movl	(%eax),%ebx
	movl	$0,%esi
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj476(%ecx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	%eax,%esi
	jne	Lj478
	cmpl	%edx,%ebx
	jne	Lj478
	jmp	Lj479
Lj479:
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj476(%ecx),%eax
	movl	(%eax),%ebx
	movl	$0,%esi
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj476(%ecx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	%eax,%esi
	jne	Lj478
	cmpl	%edx,%ebx
	jne	Lj478
	jmp	Lj477
Lj477:
	movb	$1,-1(%ebp)
	jmp	Lj482
Lj478:
	movb	$0,-1(%ebp)
Lj482:
	movb	-1(%ebp),%al
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_LINEWRITE$SHORTSTRING
_CRT_LINEWRITE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj484
Lj484:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj484(%ebx),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj484(%ebx),%edx
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT
_CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	call	Lj490
Lj490:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	leal	-274(%ebp),%edx
	movb	-16(%ebp),%al
	call	L_SYSTEM_SPACE$BYTE$$SHORTSTRING$stub
	leal	-274(%ebp),%eax
	call	L_CRT_LINEWRITE$SHORTSTRING$stub
	movb	$32,-18(%ebp)
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj490(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-17(%ebp)
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj490(%ebx),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	decl	%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj490(%ebx),%edx
	movl	(%edx),%edx
	imull	%edx,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	leal	(%ecx,%eax,2),%eax
	movw	-18(%ebp),%cx
	movl	-16(%ebp),%edx
	call	L_SYSTEM_FILLWORD$formal$LONGINT$WORD$stub
	movl	-280(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_DOSCROLLLINE$LONGINT$LONGINT$LONGINT$LONGINT
_CRT_DOSCROLLLINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-548(%ebp)
	movl	%esi,-544(%ebp)
	call	Lj514
Lj514:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
	movl	-4(%ebp),%edx
	decl	%edx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj514(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	decl	%edx
	movl	%edx,-272(%ebp)
	movl	$255,-276(%ebp)
	movb	$0,-268(%ebp)
	movl	8(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	%eax,-280(%ebp)
	cmpl	-280(%ebp),%esi
	jl	Lj526
	decl	-280(%ebp)
	.align 2
Lj527:
	incl	-280(%ebp)
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj514(%ebx),%eax
	movl	(%eax),%ecx
	movl	-272(%ebp),%eax
	movl	-280(%ebp),%edx
	addl	%edx,%eax
	movzbl	1(%ecx,%eax,2),%eax
	movl	%eax,-284(%ebp)
	movl	-284(%ebp),%eax
	cmpl	-276(%ebp),%eax
	jne	Lj532
	jmp	Lj531
Lj532:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj514(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj530
	jmp	Lj531
Lj530:
	leal	-540(%ebp),%ecx
	movl	-276(%ebp),%edx
	movl	-284(%ebp),%eax
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING$stub
	leal	-540(%ebp),%eax
	movl	%eax,(%esp)
	leal	-268(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	movl	-284(%ebp),%eax
	movl	%eax,-276(%ebp)
Lj531:
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj514(%ebx),%eax
	movl	(%eax),%ecx
	movl	-272(%ebp),%eax
	movl	-280(%ebp),%edx
	addl	%edx,%eax
	movzbl	(%ecx,%eax,2),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-540(%ebp)
	leal	-540(%ebp),%eax
	movl	%eax,(%esp)
	leal	-268(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	movl	-280(%ebp),%eax
	cmpl	8(%ebp),%eax
	je	Lj557
	jmp	Lj559
Lj559:
	movb	-268(%ebp),%al
	cmpb	$240,%al
	ja	Lj557
	jmp	Lj558
Lj557:
	leal	-268(%ebp),%eax
	call	L_CRT_LINEWRITE$SHORTSTRING$stub
	movb	$0,-268(%ebp)
Lj558:
	cmpl	-280(%ebp),%esi
	jg	Lj527
Lj526:
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj514(%ebx),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	decl	%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj514(%ebx),%edx
	movl	(%edx),%edx
	imull	%edx,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	leal	(%ecx,%eax,2),%edx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj514(%ebx),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	decl	%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj514(%ebx),%esi
	movl	(%esi),%esi
	imull	%esi,%eax
	movl	-12(%ebp),%esi
	addl	%esi,%eax
	decl	%eax
	leal	(%ecx,%eax,2),%eax
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%esi
	subl	%esi,%ecx
	incl	%ecx
	shll	$1,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-548(%ebp),%ebx
	movl	-544(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_TEXTCOLOR$BYTE
_CRT_TEXTCOLOR$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj571
Lj571:
	popl	%ebx
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj572
	jmp	Lj573
Lj572:
	movb	$128,-5(%ebp)
	jmp	Lj576
Lj573:
	movb	$0,-5(%ebp)
Lj576:
	movb	-4(%ebp),%al
	andb	$15,%al
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj571(%ebx),%edx
	movb	(%edx),%dl
	andb	$112,%dl
	orb	%dl,%al
	movb	-5(%ebp),%dl
	orb	%dl,%al
	movzbl	%al,%eax
	call	L_CRT_TTYCOLOR$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_TEXTBACKGROUND$BYTE
_CRT_TEXTBACKGROUND$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj582
Lj582:
	popl	%ebx
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	shll	$4,%eax
	andl	$112,%eax
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj582(%ebx),%edx
	movb	(%edx),%dl
	andb	$143,%dl
	movzbl	%dl,%edx
	orl	%edx,%eax
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj582(%ebx),%edx
	movb	%al,(%edx)
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj582(%ebx),%eax
	movzbl	(%eax),%eax
	call	L_CRT_TTYCOLOR$LONGINT$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_HIGHVIDEO
_CRT_HIGHVIDEO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj588
Lj588:
	popl	%ebx
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj588(%ebx),%eax
	movzbl	(%eax),%eax
	orl	$8,%eax
	call	L_CRT_TEXTCOLOR$BYTE$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_LOWVIDEO
_CRT_LOWVIDEO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj592
Lj592:
	popl	%ebx
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj592(%ebx),%eax
	movb	(%eax),%al
	andb	$119,%al
	call	L_CRT_TEXTCOLOR$BYTE$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_NORMVIDEO
_CRT_NORMVIDEO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$7,%al
	call	L_CRT_TEXTCOLOR$BYTE$stub
	movb	$0,%al
	call	L_CRT_TEXTBACKGROUND$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_CRT_GOTOXY$TCRTCOORD$TCRTCOORD
_CRT_GOTOXY$TCRTCOORD$TCRTCOORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj602
Lj602:
	popl	%ebx
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	jmp	Lj607
Lj607:
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj602(%ebx),%eax
	movl	(%eax),%ecx
	movl	$0,%esi
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj602(%ebx),%eax
	movl	(%eax),%edx
	movl	$0,%eax
	subl	%edx,%ecx
	sbbl	%eax,%esi
	addl	$1,%ecx
	adcl	$0,%esi
	movzbl	-4(%ebp),%eax
	movl	$0,%edx
	cmpl	%edx,%esi
	jg	Lj606
	jl	Lj604
	cmpl	%eax,%ecx
	jae	Lj606
	jmp	Lj604
Lj606:
	jmp	Lj605
Lj605:
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj602(%ebx),%eax
	movl	(%eax),%edx
	movl	$0,%ecx
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj602(%ebx),%eax
	movl	(%eax),%eax
	movl	$0,%esi
	subl	%eax,%edx
	sbbl	%esi,%ecx
	addl	$1,%edx
	adcl	$0,%ecx
	movzbl	-8(%ebp),%eax
	movl	$0,%esi
	cmpl	%esi,%ecx
	jg	Lj603
	jl	Lj604
	cmpl	%eax,%edx
	jae	Lj603
	jmp	Lj604
Lj603:
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj602(%ebx),%eax
	movl	(%eax),%eax
	decl	%eax
	addb	%al,-4(%ebp)
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj602(%ebx),%eax
	movl	(%eax),%eax
	decl	%eax
	addb	%al,-8(%ebp)
	movzbl	-8(%ebp),%edx
	movzbl	-4(%ebp),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
Lj604:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_WINDOW$BYTE$BYTE$BYTE$BYTE
_CRT_WINDOW$BYTE$BYTE$BYTE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj613
Lj613:
	popl	%ebx
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-4(%ebp),%al
	cmpb	-12(%ebp),%al
	ja	Lj614
	jmp	Lj618
Lj618:
	movzbl	-12(%ebp),%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj613(%ebx),%edx
	cmpl	(%edx),%eax
	jg	Lj614
	jmp	Lj617
Lj617:
	movb	-8(%ebp),%al
	cmpb	8(%ebp),%al
	ja	Lj614
	jmp	Lj616
Lj616:
	movzbl	8(%ebp),%eax
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj613(%ebx),%edx
	cmpl	(%edx),%eax
	jg	Lj614
	jmp	Lj615
Lj614:
	jmp	Lj612
Lj615:
	movzbl	-4(%ebp),%eax
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj613(%ebx),%edx
	movl	%eax,(%edx)
	movzbl	-12(%ebp),%eax
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj613(%ebx),%edx
	movl	%eax,(%edx)
	movzbl	-8(%ebp),%edx
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj613(%ebx),%eax
	movl	%edx,(%eax)
	movzbl	8(%ebp),%eax
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj613(%ebx),%edx
	movl	%eax,(%edx)
	movzbl	-8(%ebp),%eax
	decl	%eax
	shll	$8,%eax
	movzbl	-4(%ebp),%edx
	decl	%edx
	addl	%edx,%eax
	movl	L_TC_CRT_WINDMIN$non_lazy_ptr-Lj613(%ebx),%edx
	movw	%ax,(%edx)
	movzbl	8(%ebp),%eax
	decl	%eax
	shll	$8,%eax
	movzbl	-12(%ebp),%edx
	decl	%edx
	addl	%edx,%eax
	movl	L_TC_CRT_WINDMAX$non_lazy_ptr-Lj613(%ebx),%edx
	movw	%ax,(%edx)
	movb	$1,%dl
	movb	$1,%al
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
Lj612:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_CLRSCR
_CRT_CLRSCR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj636
Lj636:
	popl	%ebx
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj636(%ebx),%eax
	movb	(%eax),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj636(%ebx),%eax
	cmpb	(%eax),%dl
	jne	Lj637
	jmp	Lj638
Lj637:
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj636(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj636(%ebx),%eax
	movb	(%eax),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj636(%ebx),%eax
	movb	%dl,(%eax)
	movl	-8(%ebp),%eax
	call	L_CRT_TTYCOLOR$LONGINT$stub
Lj638:
	movb	$0,%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	call	L_CRT_FULLWIN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj649
	jmp	Lj650
Lj649:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj636(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj651
	jmp	Lj652
Lj651:
	movl	L_$CRT$_Ld12$non_lazy_ptr-Lj636(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj652:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj636(%ebx),%eax
	movb	$1,(%eax)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj636(%ebx),%eax
	movb	$1,(%eax)
	movb	$32,-11(%ebp)
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj636(%ebx),%eax
	movb	(%eax),%al
	movb	%al,-10(%ebp)
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%edx
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%eax
	movw	-11(%ebp),%cx
	call	L_SYSTEM_FILLWORD$formal$LONGINT$WORD$stub
	jmp	Lj669
Lj650:
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%esi
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	cmpl	-4(%ebp),%esi
	jl	Lj671
	decl	-4(%ebp)
	.align 2
Lj672:
	incl	-4(%ebp)
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj636(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT$stub
	cmpl	-4(%ebp),%esi
	jg	Lj672
Lj671:
	movb	$1,%dl
	movb	$1,%al
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
Lj669:
	movb	-9(%ebp),%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_CLREOL
_CRT_CLREOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	call	Lj686
Lj686:
	popl	%ebx
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj686(%ebx),%eax
	movb	(%eax),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj686(%ebx),%eax
	cmpb	(%eax),%dl
	jne	Lj687
	jmp	Lj688
Lj687:
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj686(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj686(%ebx),%eax
	movb	(%eax),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj686(%ebx),%eax
	movb	%dl,(%eax)
	movl	-8(%ebp),%eax
	call	L_CRT_TTYCOLOR$LONGINT$stub
Lj688:
	call	L_CRT_FULLWIN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj695
	jmp	Lj697
Lj697:
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj686(%ebx),%eax
	movl	(%eax),%esi
	movl	$0,%ecx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj686(%ebx),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	%eax,%ecx
	jne	Lj696
	cmpl	%edx,%esi
	jne	Lj696
	jmp	Lj695
Lj695:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj686(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj698
	jmp	Lj699
Lj698:
	movl	L_$CRT$_Ld13$non_lazy_ptr-Lj686(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj699:
	jmp	Lj702
Lj696:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj686(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj686(%ebx),%eax
	movl	(%eax),%eax
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj686(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj686(%ebx),%eax
	cmpl	(%eax),%edx
	je	Lj707
	jmp	Lj708
Lj707:
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj686(%ebx),%eax
	addl	$3,(%eax)
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj686(%ebx),%eax
	addl	$2,(%eax)
	movb	$1,-9(%ebp)
Lj708:
	leal	-265(%ebp),%edx
	movb	-4(%ebp),%al
	call	L_SYSTEM_SPACE$BYTE$$SHORTSTRING$stub
	leal	-265(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	cmpb	$0,-9(%ebp)
	jne	Lj717
	jmp	Lj718
Lj717:
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj686(%ebx),%eax
	subl	$3,(%eax)
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj686(%ebx),%eax
	subl	$2,(%eax)
Lj718:
	movl	$0,%edx
	movl	$0,%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
Lj702:
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_WHEREX$$TCRTCOORD
_CRT_WHEREX$$TCRTCOORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj724
Lj724:
	popl	%ecx
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj724(%ecx),%eax
	movzbl	(%eax),%eax
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj724(%ecx),%edx
	movl	(%edx),%edx
	subl	%edx,%eax
	incl	%eax
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CRT_WHEREY$$TCRTCOORD
_CRT_WHEREY$$TCRTCOORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj728
Lj728:
	popl	%ecx
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj728(%ecx),%eax
	movzbl	(%eax),%eax
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj728(%ecx),%edx
	movl	(%edx),%edx
	subl	%edx,%eax
	incl	%eax
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CRT_SCROLLSCRNREGIONUP$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_CRT_SCROLLSCRNREGIONUP$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-280(%ebp)
	movl	%esi,-276(%ebp)
	call	Lj732
Lj732:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movb	%al,-16(%ebp)
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj732(%esi),%eax
	movb	(%eax),%al
	movb	%al,-14(%ebp)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj732(%esi),%eax
	movb	(%eax),%al
	movb	%al,-15(%ebp)
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	movb	%al,%bl
	movb	-8(%ebp),%al
	movb	%al,-13(%ebp)
	cmpb	-13(%ebp),%bl
	jb	Lj742
	decb	-13(%ebp)
	.align 2
Lj743:
	incb	-13(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-13(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%ecx
	movzbl	-13(%ebp),%edx
	call	L_CRT_DOSCROLLLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	cmpb	-13(%ebp),%bl
	ja	Lj743
Lj742:
	leal	-272(%ebp),%ecx
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj732(%esi),%eax
	movzbl	(%eax),%eax
	movl	$255,%edx
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING$stub
	leal	-272(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movb	12(%ebp),%bl
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movb	%al,-13(%ebp)
	cmpb	-13(%ebp),%bl
	jb	Lj761
	decb	-13(%ebp)
	.align 2
Lj762:
	incb	-13(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movzbl	-13(%ebp),%eax
	call	L_CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT$stub
	cmpb	-13(%ebp),%bl
	ja	Lj762
Lj761:
	movzbl	-15(%ebp),%edx
	movzbl	-14(%ebp),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
	movb	-16(%ebp),%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movl	-280(%ebp),%ebx
	movl	-276(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_SCROLLSCRNREGIONDOWN$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_CRT_SCROLLSCRNREGIONDOWN$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-280(%ebp)
	movl	%esi,-276(%ebp)
	call	Lj776
Lj776:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movb	%al,-16(%ebp)
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj776(%esi),%eax
	movb	(%eax),%al
	movb	%al,-14(%ebp)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj776(%esi),%eax
	movb	(%eax),%al
	movb	%al,-15(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	movb	%al,%bl
	movb	12(%ebp),%al
	movb	%al,-13(%ebp)
	cmpb	-13(%ebp),%bl
	ja	Lj786
	incb	-13(%ebp)
	.align 2
Lj787:
	decb	-13(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-13(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%ecx
	movzbl	-13(%ebp),%edx
	call	L_CRT_DOSCROLLLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	cmpb	-13(%ebp),%bl
	jb	Lj787
Lj786:
	leal	-272(%ebp),%ecx
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj776(%esi),%eax
	movzbl	(%eax),%eax
	movl	$255,%edx
	call	L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING$stub
	leal	-272(%ebp),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movb	%al,%bl
	movb	-8(%ebp),%al
	movb	%al,-13(%ebp)
	cmpb	-13(%ebp),%bl
	jb	Lj805
	decb	-13(%ebp)
	.align 2
Lj806:
	incb	-13(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movzbl	-13(%ebp),%eax
	call	L_CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT$stub
	cmpb	-13(%ebp),%bl
	ja	Lj806
Lj805:
	movzbl	-15(%ebp),%edx
	movzbl	-14(%ebp),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
	movb	-16(%ebp),%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movl	-280(%ebp),%ebx
	movl	-276(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_PUSHKEY$CHAR
_CRT_PUSHKEY$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj820
Lj820:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj820(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj820(%edx),%eax
	incl	(%eax)
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj820(%edx),%eax
	movl	(%eax),%eax
	cmpl	$20,%eax
	jge	Lj823
	jmp	Lj824
Lj823:
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj820(%edx),%eax
	movl	$0,(%eax)
Lj824:
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj820(%edx),%eax
	movl	(%eax),%eax
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj820(%edx),%ecx
	cmpl	(%ecx),%eax
	jne	Lj827
	jmp	Lj828
Lj827:
	movl	-8(%ebp),%ecx
	movb	-4(%ebp),%al
	movl	L_U_CRT_KEYBUFFER$non_lazy_ptr-Lj820(%edx),%ebx
	movb	%al,(%ebx,%ecx,1)
	jmp	Lj831
Lj828:
	movl	-8(%ebp),%eax
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj820(%edx),%ecx
	movl	%eax,(%ecx)
Lj831:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_POPKEY$$CHAR
_CRT_POPKEY$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj835
Lj835:
	popl	%edx
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj835(%edx),%eax
	movl	(%eax),%eax
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj835(%edx),%ecx
	cmpl	(%ecx),%eax
	jne	Lj836
	jmp	Lj837
Lj836:
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj835(%edx),%eax
	movl	(%eax),%ecx
	movl	L_U_CRT_KEYBUFFER$non_lazy_ptr-Lj835(%edx),%eax
	movb	(%eax,%ecx,1),%al
	movb	%al,-1(%ebp)
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj835(%edx),%eax
	incl	(%eax)
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj835(%edx),%eax
	movl	(%eax),%eax
	cmpl	$20,%eax
	jge	Lj840
	jmp	Lj841
Lj840:
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj835(%edx),%eax
	movl	$0,(%eax)
Lj841:
	jmp	Lj844
Lj837:
	movb	$0,-1(%ebp)
Lj844:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CRT_PUSHEXT$BYTE
_CRT_PUSHEXT$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movb	$0,%al
	call	L_CRT_PUSHKEY$CHAR$stub
	movb	-4(%ebp),%al
	call	L_CRT_PUSHKEY$CHAR$stub
	leave
	ret

.text
	.align 4
.globl	_CRT_FALTKEY$CHAR$$BYTE
_CRT_FALTKEY$CHAR$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj854
Lj854:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	L_TC_CRT_ALTKEYSTR$non_lazy_ptr-Lj854(%ebx),%edx
	movb	-4(%ebp),%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj861
	jmp	Lj862
Lj861:
	movzbl	-12(%ebp),%eax
	movl	L_TC_CRT_ALTCODESTR$non_lazy_ptr-Lj854(%ebx),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,-5(%ebp)
	jmp	Lj865
Lj862:
	movb	$0,-5(%ebp)
Lj865:
	movb	-5(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_SYSKEYPRESSED$$BOOLEAN
_CRT_SYSKEYPRESSED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	call	Lj869
Lj869:
	popl	%ebx
	movl	L_U_CRT_INCNT$non_lazy_ptr-Lj869(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj870
	jmp	Lj871
Lj870:
	movb	$1,-1(%ebp)
	jmp	Lj874
Lj871:
	leal	-132(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	leal	-132(%ebp),%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	leal	-132(%ebp),%edx
	movl	$0,%ecx
	movl	$1,%eax
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub
	cmpl	$0,%eax
	setgb	-1(%ebp)
Lj874:
	movb	-1(%ebp),%al
	movl	-136(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_KEYPRESSED$$BOOLEAN
_CRT_KEYPRESSED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj894
Lj894:
	popl	%ebx
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj894(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj894(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj895
	jmp	Lj897
Lj897:
	call	L_CRT_SYSKEYPRESSED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj895
	jmp	Lj896
Lj895:
	movb	$1,-1(%ebp)
	jmp	Lj898
Lj896:
	movb	$0,-1(%ebp)
Lj898:
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_READKEY$$CHAR
_CRT_READKEY$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-144(%ebp)
	call	Lj900
Lj900:
	popl	%ebx
	movl	L_U_CRT_KEYSEND$non_lazy_ptr-Lj900(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_KEYPUT$non_lazy_ptr-Lj900(%ebx),%eax
	cmpl	(%eax),%edx
	jne	Lj901
	jmp	Lj902
Lj901:
	call	L_CRT_POPKEY$$CHAR$stub
	movb	%al,-1(%ebp)
	jmp	Lj899
Lj902:
	call	L_CRT_SYSKEYPRESSED$$BOOLEAN$stub
	testb	%al,%al
	je	Lj905
	jmp	Lj906
Lj905:
	leal	-140(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	leal	-140(%ebp),%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	leal	-140(%ebp),%edx
	movl	$0,%ecx
	movl	$1,%eax
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub
Lj906:
	call	L_CRT_TTYRECVCHAR$$CHAR$stub
	movb	%al,-2(%ebp)
	movb	-2(%ebp),%al
	cmpb	$27,%al
	jb	Lj926
	subb	$27,%al
	je	Lj927
	subb	$100,%al
	je	Lj928
	jmp	Lj926
Lj927:
	movl	$1,-12(%ebp)
	movw	$10,%ax
	call	L_CRT_DELAY$WORD$stub
	jmp	Lj934
	.align 2
Lj933:
	call	L_CRT_TTYRECVCHAR$$CHAR$stub
	movb	%al,-2(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj943
	decl	%eax
	je	Lj944
	decl	%eax
	je	Lj945
	decl	%eax
	je	Lj946
	decl	%eax
	je	Lj947
	decl	%eax
	je	Lj948
	decl	%eax
	je	Lj949
	decl	%eax
	je	Lj950
	decl	%eax
	je	Lj951
	subl	$247,%eax
	je	Lj952
	jmp	Lj943
Lj944:
	movb	-2(%ebp),%al
	cmpb	$10,%al
	jb	Lj954
	subb	$10,%al
	je	Lj956
	subb	$35,%al
	je	Lj955
	subb	$3,%al
	jb	Lj954
	subb	$9,%al
	jbe	Lj955
	subb	$4,%al
	je	Lj955
	subb	$18,%al
	je	Lj958
	subb	$12,%al
	je	Lj957
	subb	$6,%al
	jb	Lj954
	subb	$25,%al
	jbe	Lj955
	jmp	Lj954
Lj955:
	movb	-2(%ebp),%al
	call	L_CRT_FALTKEY$CHAR$$BYTE$stub
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj953
Lj956:
	movb	$10,%al
	call	L_CRT_PUSHKEY$CHAR$stub
	jmp	Lj953
Lj957:
	movl	$2,-12(%ebp)
	jmp	Lj953
Lj958:
	movl	$7,-12(%ebp)
	jmp	Lj953
Lj954:
	movb	-2(%ebp),%al
	call	L_CRT_PUSHKEY$CHAR$stub
	movb	$27,%al
	call	L_CRT_PUSHKEY$CHAR$stub
Lj953:
	jmp	Lj942
Lj945:
	movb	-2(%ebp),%al
	cmpb	$49,%al
	jb	Lj974
	subb	$49,%al
	je	Lj983
	decb	%al
	je	Lj984
	decb	%al
	je	Lj985
	decb	%al
	je	Lj986
	decb	%al
	je	Lj987
	decb	%al
	je	Lj988
	subb	$11,%al
	je	Lj976
	decb	%al
	je	Lj977
	decb	%al
	je	Lj978
	decb	%al
	je	Lj979
	subb	$3,%al
	je	Lj980
	decb	%al
	je	Lj981
	subb	$3,%al
	je	Lj982
	subb	$16,%al
	je	Lj975
	jmp	Lj974
Lj975:
	movl	$3,-12(%ebp)
	jmp	Lj973
Lj976:
	movb	$72,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj977:
	movb	$80,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj978:
	movb	$77,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj979:
	movb	$75,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj980:
	movb	$53,%al
	call	L_CRT_PUSHKEY$CHAR$stub
	jmp	Lj973
Lj981:
	movb	$71,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj982:
	movb	$79,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj983:
	movl	$4,-12(%ebp)
	jmp	Lj973
Lj984:
	movl	$5,-12(%ebp)
	jmp	Lj973
Lj985:
	movl	$6,-12(%ebp)
	jmp	Lj973
Lj986:
	movb	$79,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj987:
	movb	$73,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj988:
	movb	$81,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj973
Lj974:
	movb	-2(%ebp),%al
	call	L_CRT_PUSHKEY$CHAR$stub
	movb	$91,%al
	call	L_CRT_PUSHKEY$CHAR$stub
	movb	$27,%al
	call	L_CRT_PUSHKEY$CHAR$stub
Lj973:
	movzbl	-2(%ebp),%eax
	subl	$52,%eax
	cmpl	$3,%eax
	jb	Lj1025
Lj1025:
	jc	Lj1023
	jmp	Lj1024
Lj1023:
	movl	$255,-12(%ebp)
Lj1024:
	jmp	Lj942
Lj946:
	movb	-2(%ebp),%al
	cmpb	$65,%al
	jb	Lj1029
	subb	$65,%al
	je	Lj1030
	decb	%al
	je	Lj1031
	decb	%al
	je	Lj1032
	decb	%al
	je	Lj1033
	decb	%al
	je	Lj1034
	jmp	Lj1029
Lj1030:
	movb	$59,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1028
Lj1031:
	movb	$60,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1028
Lj1032:
	movb	$61,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1028
Lj1033:
	movb	$62,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1028
Lj1034:
	movb	$63,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1028
Lj1029:
Lj1028:
	jmp	Lj942
Lj947:
	movb	-2(%ebp),%al
	cmpb	$53,%al
	jb	Lj1046
	subb	$53,%al
	je	Lj1048
	subb	$2,%al
	je	Lj1049
	decb	%al
	je	Lj1050
	decb	%al
	je	Lj1051
	subb	$69,%al
	je	Lj1047
	jmp	Lj1046
Lj1047:
	movb	$71,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1045
Lj1048:
	movl	$8,-12(%ebp)
	jmp	Lj1045
Lj1049:
	movb	$64,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1045
Lj1050:
	movb	$65,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1045
Lj1051:
	movb	$66,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1045
Lj1046:
Lj1045:
	movzbl	-2(%ebp),%eax
	cmpl	$53,%eax
	je	Lj1064
	cmpl	$126,%eax
	je	Lj1064
Lj1064:
	jne	Lj1062
	jmp	Lj1063
Lj1062:
	movl	$255,-12(%ebp)
Lj1063:
	jmp	Lj942
Lj948:
	movb	-2(%ebp),%al
	cmpb	$48,%al
	jb	Lj1068
	subb	$48,%al
	je	Lj1070
	decb	%al
	je	Lj1071
	subb	$2,%al
	je	Lj1072
	decb	%al
	je	Lj1073
	decb	%al
	je	Lj1074
	decb	%al
	je	Lj1075
	subb	$2,%al
	je	Lj1076
	decb	%al
	je	Lj1077
	subb	$69,%al
	je	Lj1069
	jmp	Lj1068
Lj1069:
	movb	$82,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1070:
	movb	$67,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1071:
	movb	$68,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1072:
	movb	$133,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1073:
	movb	$134,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1074:
	movb	$86,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1075:
	movb	$87,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1076:
	movb	$88,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1077:
	movb	$89,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1067
Lj1068:
Lj1067:
	movb	-2(%ebp),%al
	cmpb	$126,%al
	jne	Lj1096
	jmp	Lj1097
Lj1096:
	movl	$255,-12(%ebp)
Lj1097:
	jmp	Lj942
Lj949:
	movb	-2(%ebp),%al
	cmpb	$49,%al
	jb	Lj1101
	subb	$49,%al
	je	Lj1103
	decb	%al
	je	Lj1104
	decb	%al
	je	Lj1105
	decb	%al
	je	Lj1106
	subb	$74,%al
	je	Lj1102
	jmp	Lj1101
Lj1102:
	movb	$83,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1100
Lj1103:
	movb	$90,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1100
Lj1104:
	movb	$91,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1100
Lj1105:
	movb	$92,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1100
Lj1106:
	movb	$93,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1100
Lj1101:
Lj1100:
	movb	-2(%ebp),%al
	cmpb	$126,%al
	jne	Lj1117
	jmp	Lj1118
Lj1117:
	movl	$255,-12(%ebp)
Lj1118:
	jmp	Lj942
Lj950:
	movb	-2(%ebp),%al
	cmpb	$65,%al
	jb	Lj1122
	subb	$65,%al
	je	Lj1123
	decb	%al
	je	Lj1124
	decb	%al
	je	Lj1125
	decb	%al
	je	Lj1126
	subb	$12,%al
	je	Lj1127
	decb	%al
	je	Lj1128
	decb	%al
	je	Lj1129
	decb	%al
	je	Lj1130
	jmp	Lj1122
Lj1123:
	movb	$72,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1124:
	movb	$80,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1125:
	movb	$77,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1126:
	movb	$75,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1127:
	movb	$59,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1128:
	movb	$60,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1129:
	movb	$61,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1130:
	movb	$62,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1121
Lj1122:
Lj1121:
	jmp	Lj942
Lj951:
	movb	-2(%ebp),%al
	cmpb	$126,%al
	jb	Lj1148
	subb	$126,%al
	je	Lj1149
	jmp	Lj1148
Lj1149:
	movb	$63,%al
	call	L_CRT_PUSHEXT$BYTE$stub
	jmp	Lj1147
Lj1148:
Lj1147:
	jmp	Lj942
Lj952:
	jmp	Lj942
Lj943:
Lj942:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1152
	jmp	Lj1153
Lj1152:
	movw	$10,%ax
	call	L_CRT_DELAY$WORD$stub
Lj1153:
Lj934:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1156
	jmp	Lj935
Lj1156:
	call	L_CRT_SYSKEYPRESSED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj933
	jmp	Lj935
Lj935:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1157
	jmp	Lj1158
Lj1157:
	movb	-2(%ebp),%al
	call	L_CRT_PUSHKEY$CHAR$stub
Lj1158:
	jmp	Lj925
Lj928:
	movb	$8,%al
	call	L_CRT_PUSHKEY$CHAR$stub
	jmp	Lj925
Lj926:
	movb	-2(%ebp),%al
	call	L_CRT_PUSHKEY$CHAR$stub
Lj925:
	call	L_CRT_POPKEY$$CHAR$stub
	movb	%al,-1(%ebp)
Lj899:
	movb	-1(%ebp),%al
	movl	-144(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_DELAY$WORD
_CRT_DELAY$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movl	$0,4(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_CRT_DOLN
_CRT_DOLN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1180
Lj1180:
	popl	%ebx
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1180(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1180(%ebx),%eax
	cmpl	(%eax),%edx
	je	Lj1181
	jmp	Lj1182
Lj1181:
	call	L_CRT_FULLWIN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1183
	jmp	Lj1184
Lj1183:
	movl	L_$CRT$_Ld14$non_lazy_ptr-Lj1180(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1180(%ebx),%eax
	movb	(%eax),%dl
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1180(%ebx),%eax
	movb	%dl,(%eax)
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1180(%ebx),%eax
	movb	(%eax),%dl
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1180(%ebx),%eax
	movb	%dl,(%eax)
	jmp	Lj1191
Lj1184:
	movl	$1,(%esp)
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%eax
	call	L_CRT_SCROLLSCRNREGIONUP$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
Lj1191:
	jmp	Lj1206
Lj1182:
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1180(%ebx),%eax
	movzbl	(%eax),%edx
	incl	%edx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1180(%ebx),%eax
	movl	(%eax),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
Lj1206:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_DOWRITE$SHORTSTRING
_CRT_DOWRITE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-292(%ebp)
	movl	%esi,-288(%ebp)
	call	Lj1212
Lj1212:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	$0,%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movb	%al,-6(%ebp)
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	(%eax),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj1212(%ebx),%eax
	cmpb	(%eax),%dl
	jne	Lj1221
	jmp	Lj1222
Lj1221:
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	L_TC_CRT_OLDTEXTATTR$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	(%eax),%dl
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	%dl,(%eax)
	movl	-20(%ebp),%eax
	call	L_CRT_TTYCOLOR$LONGINT$stub
Lj1222:
	movl	$0,-28(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj1234
	.align 2
Lj1233:
	movl	-4(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$27,%al
	je	Lj1236
	jmp	Lj1238
Lj1238:
	movl	L_U_CRT_LASTANSI$non_lazy_ptr-Lj1212(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj1236
	jmp	Lj1237
Lj1236:
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub
	movl	L_U_CRT_LASTANSI$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	$0,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movb	$0,-5(%ebp)
	jmp	Lj1248
	.align 2
Lj1247:
	movl	-4(%ebp),%eax
	movzbl	-24(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	cmpl	$27,%eax
	stc
	je	Lj1252
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj1252
	cmpl	$11,%eax
	stc
	je	Lj1252
	cmpl	$15,%eax
	stc
	je	Lj1252
	cmpl	$43,%eax
	stc
	je	Lj1252
	clc
Lj1252:
	setncb	-5(%ebp)
	incl	-24(%ebp)
Lj1248:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-24(%ebp),%eax
	jge	Lj1253
	jmp	Lj1249
Lj1253:
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj1247
	jmp	Lj1249
Lj1249:
	leal	-284(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-284(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%ecx
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	cmpb	$0,-5(%ebp)
	jne	Lj1270
	jmp	Lj1271
Lj1270:
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	(%eax,%edx,1),%al
	cmpb	$65,%al
	jb	Lj1273
	subb	$65,%al
	je	Lj1278
	decb	%al
	je	Lj1279
	decb	%al
	je	Lj1280
	decb	%al
	je	Lj1281
	subb	$4,%al
	je	Lj1275
	subb	$2,%al
	je	Lj1276
	decb	%al
	je	Lj1277
	subb	$29,%al
	je	Lj1282
	subb	$5,%al
	je	Lj1274
	jmp	Lj1273
Lj1274:
	movl	L_TC_CRT_TEXTATTR$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%eax
	call	L_CRT_ANSI2ATTR$SHORTSTRING$LONGINT$$LONGINT$stub
	call	L_CRT_TTYCOLOR$LONGINT$stub
	jmp	Lj1272
Lj1275:
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	movl	%eax,-16(%ebp)
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	movl	%eax,-12(%ebp)
	movb	-16(%ebp),%dl
	movb	-12(%ebp),%al
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
	jmp	Lj1272
Lj1276:
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	cmpl	$2,%eax
	je	Lj1305
	jmp	Lj1306
Lj1305:
	call	L_CRT_CLRSCR$stub
Lj1306:
	jmp	Lj1272
Lj1277:
	call	L_CRT_CLREOL$stub
	jmp	Lj1272
Lj1278:
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%esi
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	subl	%eax,%esi
	movl	%esi,%eax
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	(%edx),%edx
	call	L_CRT_MAX$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	(%eax),%al
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
	jmp	Lj1272
Lj1279:
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%esi
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	addl	%eax,%esi
	movl	%esi,%eax
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	(%edx),%edx
	call	L_CRT_MIN$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	(%eax),%al
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
	jmp	Lj1272
Lj1280:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%esi
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	addl	%eax,%esi
	movl	%esi,%eax
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	(%edx),%edx
	call	L_CRT_MIN$LONGINT$LONGINT$$LONGINT$stub
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1212(%ebx),%edx
	movb	(%edx),%dl
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
	jmp	Lj1272
Lj1281:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%esi
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub
	movzbl	%al,%eax
	subl	%eax,%esi
	movl	%esi,%eax
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1212(%ebx),%edx
	movl	(%edx),%edx
	call	L_CRT_MAX$LONGINT$LONGINT$$LONGINT$stub
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1212(%ebx),%edx
	movb	(%edx),%dl
	call	L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub
	jmp	Lj1272
Lj1282:
	jmp	Lj1272
Lj1273:
	movb	$0,-5(%ebp)
Lj1272:
	jmp	Lj1361
Lj1271:
	movl	L_U_CRT_LASTANSI$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	$1,(%eax)
	movb	$1,-5(%ebp)
Lj1361:
	movl	L_U_CRT_LASTANSI$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1366
	jmp	Lj1367
Lj1366:
	movl	L_U_CRT_ANSICODE$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	$0,(%eax)
Lj1367:
	cmpb	$0,-5(%ebp)
	jne	Lj1370
	jmp	Lj1371
Lj1370:
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1374
Lj1371:
	incl	-28(%ebp)
Lj1374:
	jmp	Lj1375
Lj1237:
	movl	L_U_CRT_LASTANSI$non_lazy_ptr-Lj1212(%ebx),%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%edx
	movzbl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$8,%al
	jb	Lj1379
	subb	$8,%al
	je	Lj1383
	decb	%al
	je	Lj1382
	decb	%al
	je	Lj1381
	subb	$3,%al
	je	Lj1380
	jmp	Lj1379
Lj1380:
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1212(%ebx),%eax
	movl	(%eax),%eax
	call	L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub
	jmp	Lj1378
Lj1381:
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub
	call	L_CRT_DOLN$stub
	jmp	Lj1378
Lj1382:
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1212(%ebx),%eax
	movzbl	(%eax),%eax
	decl	%eax
	andl	$8,%eax
	movl	$9,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-284(%ebp),%edx
	call	L_SYSTEM_SPACE$BYTE$$SHORTSTRING$stub
	leal	-284(%ebp),%eax
	call	L_CRT_TTYWRITE$SHORTSTRING$stub
	jmp	Lj1378
Lj1383:
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub
	movl	L_$CRT$_Ld15$non_lazy_ptr-Lj1212(%ebx),%eax
	call	L_CRT_TTYWRITE$SHORTSTRING$stub
	jmp	Lj1378
Lj1379:
	incl	-28(%ebp)
Lj1378:
Lj1375:
	incl	-20(%ebp)
Lj1234:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj1233
	jmp	Lj1235
Lj1235:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1404
	jmp	Lj1405
Lj1404:
	movl	%ebp,%eax
	call	L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub
Lj1405:
	movb	-6(%ebp),%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movl	-292(%ebp),%ebx
	movl	-288(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CRT_DOWRITE$SHORTSTRING_SENDTEXT
_CRT_DOWRITE$SHORTSTRING_SENDTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj1216
Lj1216:
	popl	%ebx
	movl	%eax,-4(%ebp)
	jmp	Lj1411
	.align 2
Lj1410:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj1216(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj1216(%ebx),%eax
	movl	(%eax),%eax
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj1415
	jmp	Lj1416
Lj1415:
	leal	-264(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-20(%eax),%edx
	movl	-28(%ecx),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	Lfpc_shortstr_copy$stub
	leal	-264(%ebp),%eax
	call	L_CRT_TTYWRITE$SHORTSTRING$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,-28(%edx)
	call	L_CRT_DOLN$stub
	jmp	Lj1427
Lj1416:
	leal	-264(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-20(%eax),%edx
	movl	-28(%ecx),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-264(%ebp),%eax
	call	L_CRT_TTYWRITE$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movl	$0,-28(%eax)
Lj1427:
Lj1411:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1410
	jmp	Lj1412
Lj1412:
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE
_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movb	$59,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1446
	jmp	Lj1447
Lj1446:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
Lj1447:
	leal	-284(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	subl	$3,%ecx
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-284(%ebp),%edx
	leal	-28(%ebp),%ecx
	movl	$4,%eax
	call	Lfpc_val_sint_shortstr$stub
	movl	%eax,-16(%ebp)
	movw	-28(%ebp),%ax
	movw	%ax,-22(%ebp)
	movl	-20(%ebp),%eax
	subl	$2,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1476
	jmp	Lj1477
Lj1476:
	movl	$1,-16(%ebp)
Lj1477:
	movb	-16(%ebp),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CRT_CRTWRITE$TEXTREC$$SMALLINT
_CRT_CRTWRITE$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movb	$0,%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movb	%al,-273(%ebp)
	movl	$0,-268(%ebp)
	jmp	Lj1491
	.align 2
Lj1490:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-272(%ebp)
	movl	-272(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj1495
	jmp	Lj1496
Lj1495:
	movl	$255,-272(%ebp)
Lj1496:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-268(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-272(%ebp),%ecx
	leal	-261(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-272(%ebp),%ecx
	leal	-262(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_setlength$stub
	leal	-262(%ebp),%eax
	call	L_CRT_DOWRITE$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movl	-272(%ebp),%edx
	subl	%edx,16(%eax)
	movl	-272(%ebp),%eax
	addl	%eax,-268(%ebp)
Lj1491:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1490
	jmp	Lj1492
Lj1492:
	movb	-273(%ebp),%al
	call	L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_CRT_CRTREAD$TEXTREC$$SMALLINT
_CRT_CRTREAD$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1518
Lj1518:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_TERMIO_ISATTY$LONGINT$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj1519
	jmp	Lj1520
Lj1519:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	$0,-12(%ebp)
	.align 2
Lj1527:
	call	L_CRT_READKEY$$CHAR$stub
	movb	%al,-7(%ebp)
	movb	-7(%ebp),%al
	testb	%al,%al
	je	Lj1534
	subb	$8,%al
	je	Lj1535
	subb	$5,%al
	je	Lj1537
	subb	$14,%al
	je	Lj1536
	jmp	Lj1533
Lj1534:
	call	L_CRT_READKEY$$CHAR$stub
	movb	%al,-7(%ebp)
	jmp	Lj1532
Lj1535:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1540
	jmp	Lj1541
Lj1540:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1543
	jmp	Lj1544
Lj1544:
	movl	L_U_CRT_INPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1543
	jmp	Lj1542
Lj1542:
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$CRT$_Ld16$non_lazy_ptr-Lj1518(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
Lj1543:
	decl	-12(%ebp)
Lj1541:
	jmp	Lj1532
Lj1536:
	jmp	Lj1532
Lj1537:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movb	$10,(%eax,%edx,1)
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1558
	jmp	Lj1559
Lj1559:
	movl	L_U_CRT_INPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1558
	jmp	Lj1557
Lj1557:
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movb	$10,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
Lj1558:
	incl	-12(%ebp)
	jmp	Lj1532
Lj1533:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1571
	jmp	Lj1572
Lj1572:
	movl	L_U_CRT_INPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1571
	jmp	Lj1570
Lj1570:
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movb	-7(%ebp),%cl
	movl	%ebx,%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
Lj1571:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%ecx
	movb	-7(%ebp),%dl
	movb	%dl,(%eax,%ecx,1)
	incl	-12(%ebp)
Lj1532:
	movzbl	-7(%ebp),%eax
	cmpl	$10,%eax
	je	Lj1586
	cmpl	$13,%eax
	je	Lj1586
Lj1586:
	je	Lj1529
	jmp	Lj1585
Lj1585:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	8(%edx),%eax
	jge	Lj1529
	jmp	Lj1527
Lj1529:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,20(%edx)
	movw	$0,-6(%ebp)
	jmp	Lj1517
Lj1520:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_READ$stub
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%edx
	jl	Lj1600
	decl	-12(%ebp)
	.align 2
Lj1601:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	(%ecx,%eax,1),%al
	cmpb	$13,%al
	je	Lj1604
	jmp	Lj1603
Lj1604:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%ecx
	movb	(%eax,%ecx,1),%al
	cmpb	$10,%al
	jne	Lj1602
	jmp	Lj1603
Lj1602:
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	$10,(%ecx,%eax,1)
Lj1603:
	cmpl	-12(%ebp),%edx
	jg	Lj1601
Lj1600:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,16(%edx)
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1610
	jmp	Lj1611
Lj1611:
	movl	L_U_CRT_INPUTREDIR$non_lazy_ptr-Lj1518(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj1610
	jmp	Lj1609
Lj1609:
	movl	-4(%ebp),%eax
	call	L_CRT_CRTWRITE$TEXTREC$$SMALLINT$stub
	jmp	Lj1614
Lj1610:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj1614:
	movw	$0,-6(%ebp)
Lj1517:
	movw	-6(%ebp),%ax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CRT_CRTRETURN$TEXTREC$$SMALLINT
_CRT_CRTRETURN$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_CRT_CRTCLOSE$TEXTREC$$SMALLINT
_CRT_CRTCLOSE$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_CRT_CRTOPEN$TEXTREC$$SMALLINT
_CRT_CRTOPEN$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1630
Lj1630:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj1631
	jmp	Lj1632
Lj1631:
	movl	L_CRT_CRTWRITE$TEXTREC$$SMALLINT$non_lazy_ptr-Lj1630(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,32(%ecx)
	movl	L_CRT_CRTWRITE$TEXTREC$$SMALLINT$non_lazy_ptr-Lj1630(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,36(%ecx)
	jmp	Lj1637
Lj1632:
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	movl	L_CRT_CRTREAD$TEXTREC$$SMALLINT$non_lazy_ptr-Lj1630(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,32(%ecx)
	movl	L_CRT_CRTRETURN$TEXTREC$$SMALLINT$non_lazy_ptr-Lj1630(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,36(%ecx)
Lj1637:
	movl	L_CRT_CRTCLOSE$TEXTREC$$SMALLINT$non_lazy_ptr-Lj1630(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,40(%ecx)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_CRT_ASSIGNCRT$TEXT
_CRT_ASSIGNCRT$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1649
Lj1649:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$CRT$_Ld4$non_lazy_ptr-Lj1649(%ebx),%edx
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	L_CRT_CRTOPEN$TEXTREC$$SMALLINT$non_lazy_ptr-Lj1649(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_DELLINE
_CRT_DELLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1657
Lj1657:
	popl	%ebx
	movl	$1,(%esp)
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1657(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj1657(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1657(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1657(%ebx),%eax
	movl	(%eax),%eax
	call	L_CRT_SCROLLSCRNREGIONUP$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_INSLINE
_CRT_INSLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1669
Lj1669:
	popl	%ebx
	movl	$1,(%esp)
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj1669(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj1669(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj1669(%ebx),%eax
	movzbl	(%eax),%edx
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj1669(%ebx),%eax
	movl	(%eax),%eax
	call	L_CRT_SCROLLSCRNREGIONDOWN$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_SOUND$WORD
_CRT_SOUND$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CRT_NOSOUND
_CRT_NOSOUND:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_CRT_TEXTMODE$WORD
_CRT_TEXTMODE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	call	L_CRT_CLRSCR$stub
	leave
	ret

.text
	.align 4
.globl	_CRT_CURSORBIG
_CRT_CURSORBIG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1687
Lj1687:
	popl	%ebx
	movl	L_$CRT$_Ld17$non_lazy_ptr-Lj1687(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_CURSORON
_CRT_CURSORON:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1691
Lj1691:
	popl	%ebx
	movl	L_$CRT$_Ld18$non_lazy_ptr-Lj1691(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_CURSOROFF
_CRT_CURSOROFF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1695
Lj1695:
	popl	%ebx
	movl	L_$CRT$_Ld19$non_lazy_ptr-Lj1695(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_SAVERAWSETTINGS$TERMIOS
_CRT_SAVERAWSETTINGS$TERMIOS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1699
Lj1699:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$1003,%eax
	testl	%eax,%eax
	je	Lj1702
	jmp	Lj1701
Lj1702:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	andl	$1432,%eax
	testl	%eax,%eax
	je	Lj1700
	jmp	Lj1701
Lj1700:
	movl	L_U_CRT_INPUTRAW$non_lazy_ptr-Lj1699(%edx),%eax
	movb	$1,(%eax)
	jmp	Lj1703
Lj1701:
	movl	L_U_CRT_INPUTRAW$non_lazy_ptr-Lj1699(%edx),%eax
	movb	$0,(%eax)
Lj1703:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj1707
	jmp	Lj1705
Lj1707:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$4864,%eax
	testl	%eax,%eax
	je	Lj1706
	jmp	Lj1705
Lj1706:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$768,%eax
	testl	%eax,%eax
	jne	Lj1704
	jmp	Lj1705
Lj1704:
	movl	L_U_CRT_OUTPUTRAW$non_lazy_ptr-Lj1699(%edx),%eax
	movb	$1,(%eax)
	jmp	Lj1708
Lj1705:
	movl	L_U_CRT_OUTPUTRAW$non_lazy_ptr-Lj1699(%edx),%eax
	movb	$0,(%eax)
Lj1708:
	leave
	ret

.text
	.align 4
.globl	_CRT_RESTORERAWSETTINGS$TERMIOS
_CRT_RESTORERAWSETTINGS$TERMIOS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	call	Lj1710
Lj1710:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-48(%ebp),%edi
	cld
	movl	$11,%ecx
	rep
	movsl
	movl	L_U_CRT_INPUTRAW$non_lazy_ptr-Lj1710(%edx),%eax
	cmpb	$0,(%eax)
	jne	Lj1711
	jmp	Lj1712
Lj1711:
	movl	-48(%ebp),%eax
	andl	$-1004,%eax
	movl	%eax,-48(%ebp)
	movl	-36(%ebp),%eax
	andl	$-1433,%eax
	movl	%eax,-36(%ebp)
Lj1712:
	movl	L_U_CRT_OUTPUTRAW$non_lazy_ptr-Lj1710(%edx),%eax
	cmpb	$0,(%eax)
	jne	Lj1717
	jmp	Lj1718
Lj1717:
	movl	-44(%ebp),%eax
	andl	$-2,%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	andl	$-4865,%eax
	orl	$768,%eax
	movl	%eax,-40(%ebp)
Lj1718:
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CRT_SETRAWMODE$BOOLEAN
_CRT_SETRAWMODE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	call	Lj1724
Lj1724:
	popl	%ebx
	movb	%al,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj1725
	jmp	Lj1726
Lj1725:
	leal	-48(%ebp),%ecx
	movl	$1076655123,%edx
	movl	$1,%eax
	call	LFPC_SYSC_IOCTL$stub
	leal	-48(%ebp),%eax
	call	L_CRT_SAVERAWSETTINGS$TERMIOS$stub
	movl	L_U_CRT_OLDIO$non_lazy_ptr-Lj1724(%ebx),%eax
	movl	%eax,%edi
	leal	-48(%ebp),%esi
	cld
	movl	$11,%ecx
	rep
	movsl
	leal	-48(%ebp),%eax
	call	L_TERMIO_CFMAKERAW$TERMIOS$stub
	jmp	Lj1741
Lj1726:
	movl	L_U_CRT_OLDIO$non_lazy_ptr-Lj1724(%ebx),%eax
	call	L_CRT_RESTORERAWSETTINGS$TERMIOS$stub
	leal	-48(%ebp),%edi
	movl	L_U_CRT_OLDIO$non_lazy_ptr-Lj1724(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$11,%ecx
	rep
	movsl
Lj1741:
	leal	-48(%ebp),%ecx
	movl	$0,%edx
	movl	$1,%eax
	call	L_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT$stub
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_CRT_GETXY$BYTE$BYTE
_CRT_GETXY$BYTE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$696,%esp
	movl	%ebx,-688(%ebp)
	call	Lj1753
Lj1753:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	leal	-421(%ebp),%eax
	movl	L_$CRT$_Ld20$non_lazy_ptr-Lj1753(%ebx),%ecx
	movl	$16,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movzbl	-421(%ebp),%ecx
	leal	-420(%ebp),%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub
	leal	-136(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	$0,-148(%ebp)
	.align 2
Lj1778:
	movl	$1000,(%esp)
	movl	$0,4(%esp)
	leal	-136(%ebp),%edx
	movl	$0,%ecx
	movl	$2,%eax
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj1781
	jmp	Lj1782
Lj1781:
	movl	-148(%ebp),%ecx
	movl	$256,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-148(%ebp),%eax
	leal	-404(%ebp,%eax,1),%edx
	movl	$1,%eax
	call	L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	-148(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-148(%ebp)
	movl	$0,-140(%ebp)
	jmp	Lj1804
	.align 2
Lj1803:
	incl	-140(%ebp)
Lj1804:
	movl	-140(%ebp),%eax
	addl	$5,%eax
	cmpl	-148(%ebp),%eax
	jl	Lj1807
	jmp	Lj1805
Lj1807:
	movl	-140(%ebp),%eax
	movb	-404(%ebp,%eax,1),%al
	cmpb	$27,%al
	jne	Lj1806
	jmp	Lj1805
Lj1806:
	movl	-140(%ebp),%eax
	incl	%eax
	movb	-404(%ebp,%eax,1),%al
	cmpb	$91,%al
	jne	Lj1803
	jmp	Lj1805
Lj1805:
	movl	-140(%ebp),%eax
	addl	$5,%eax
	cmpl	-148(%ebp),%eax
	jl	Lj1808
	jmp	Lj1809
Lj1808:
	leal	-677(%ebp),%edx
	movb	$16,%al
	call	L_SYSTEM_SPACE$BYTE$$SHORTSTRING$stub
	leal	-677(%ebp),%ecx
	leal	-421(%ebp),%eax
	movl	$16,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-140(%ebp),%eax
	addl	$2,%eax
	leal	-404(%ebp,%eax,1),%eax
	leal	-420(%ebp),%edx
	movl	$16,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leal	-421(%ebp),%edx
	movb	$82,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-144(%ebp)
	movl	-144(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1832
	jmp	Lj1833
Lj1832:
	leal	-421(%ebp),%edx
	movb	$59,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-140(%ebp)
	leal	-677(%ebp),%eax
	movl	%eax,(%esp)
	movl	-140(%ebp),%ecx
	decl	%ecx
	leal	-421(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-677(%ebp),%eax
	leal	-684(%ebp),%edx
	call	Lfpc_val_uint_shortstr$stub
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	leal	-680(%ebp),%eax
	movl	%eax,(%esp)
	movl	-140(%ebp),%ecx
	incl	%ecx
	movl	-144(%ebp),%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-140(%ebp),%edx
	incl	%edx
	leal	-421(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-680(%ebp),%eax
	leal	-684(%ebp),%edx
	call	Lfpc_val_uint_shortstr$stub
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	jmp	Lj1780
Lj1833:
Lj1809:
	jmp	Lj1868
Lj1782:
	jmp	Lj1780
Lj1868:
	jmp	Lj1778
Lj1780:
	movl	-688(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CRT_GETCONSOLEBUF
_CRT_GETCONSOLEBUF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj1870
Lj1870:
	popl	%ebx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj1870(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1871
	jmp	Lj1872
Lj1871:
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%edx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	shll	$1,%edx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj1872:
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj1870(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1883
	jmp	Lj1882
Lj1883:
	leal	-8(%ebp),%esi
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1888
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1870(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1889
Lj1888:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1870(%ebx),%edx
	leal	4(%edx),%eax
Lj1889:
	movl	(%eax),%eax
	movl	$1074295912,%edx
	movl	%esi,%ecx
	call	LFPC_SYSC_IOCTL$stub
	cmpl	$0,%eax
	jge	Lj1881
	jmp	Lj1882
Lj1881:
	movzwl	-6(%ebp),%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%edx
	movl	%eax,(%edx)
	movzwl	-8(%ebp),%eax
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%edx
	movl	%eax,(%edx)
Lj1882:
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1896
	jmp	Lj1897
Lj1896:
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	$80,(%eax)
Lj1897:
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1900
	jmp	Lj1901
Lj1900:
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	$25,(%eax)
Lj1901:
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%edx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	shll	$1,%edx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj1870(%ebx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%edx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	shll	$1,%edx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj1870(%ebx),%eax
	movl	(%eax),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_CRT
_INIT$_CRT:
.reference __CRT_init
.globl	__CRT_init
__CRT_init:
.reference _INIT$_CRT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$520,%esp
	movl	%ebx,-520(%ebp)
	movl	%esi,-516(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1918
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1919
Lj1918:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1919:
	call	L_CRT_ASSIGNCRT$TEXT$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1922
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1923
Lj1922:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1923:
	call	L_SYSTEM_REWRITE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1926
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1927
Lj1926:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1927:
	movl	$1,(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1930
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1931
Lj1930:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1931:
	call	L_CRT_ASSIGNCRT$TEXT$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1934
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1935
Lj1934:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1935:
	call	L_SYSTEM_RESET$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1938
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1939
Lj1938:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1939:
	movl	$0,(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1944
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1945
Lj1944:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1945:
	movl	(%eax),%eax
	call	L_TERMIO_ISATTY$LONGINT$$LONGINT$stub
	cmpl	$1,%eax
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj2(%ebx),%eax
	setneb	(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1951
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj1952
Lj1951:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1952:
	movl	(%eax),%eax
	call	L_TERMIO_ISATTY$LONGINT$$LONGINT$stub
	cmpl	$1,%eax
	jne	Lj1946
	jmp	Lj1948
Lj1948:
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj2(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1953
	jmp	Lj1947
Lj1953:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1958
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1959
Lj1958:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1959:
	movl	(%eax),%eax
	leal	-256(%ebp),%edx
	call	L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING$stub
	leal	-256(%ebp),%esi
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1966
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj1967
Lj1966:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj2(%ebx),%edx
	leal	4(%edx),%eax
Lj1967:
	movl	(%eax),%eax
	leal	-512(%ebp),%edx
	call	L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING$stub
	leal	-512(%ebp),%eax
	movl	%esi,%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj1946
	jmp	Lj1947
Lj1946:
	movl	L_U_CRT_INPUTREDIR$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$1,(%eax)
	jmp	Lj1970
Lj1947:
	movl	L_U_CRT_INPUTREDIR$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$0,(%eax)
Lj1970:
	call	L_CRT_GETCONSOLEBUF$stub
	movl	L_U_CRT_WINDMINX$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$1,(%eax)
	movl	L_U_CRT_WINDMINY$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$1,(%eax)
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_CRT_WINDMAXX$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%edx,(%eax)
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_CRT_WINDMAXY$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	decl	%eax
	shll	$8,%eax
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj2(%ebx),%edx
	movl	(%edx),%edx
	decl	%edx
	addl	%edx,%eax
	movl	L_TC_CRT_WINDMAX$non_lazy_ptr-Lj2(%ebx),%edx
	movw	%ax,(%edx)
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj2(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj1981
	jmp	Lj1982
Lj1981:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$1,(%eax)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$1,(%eax)
	jmp	Lj1987
Lj1982:
	movb	$1,%al
	call	L_CRT_SETRAWMODE$BOOLEAN$stub
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_CRT_GETXY$BYTE$BYTE$stub
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj2(%ebx),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1994
	jmp	Lj1995
Lj1994:
	movl	L_U_CRT_CURRX$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$1,(%eax)
	movl	L_U_CRT_CURRY$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$1,(%eax)
	movl	L_$CRT$_Ld21$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj1995:
	movl	L_$CRT$_Ld22$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_CRT_TTYSENDSTR$SHORTSTRING$stub
Lj1987:
	movl	-520(%ebp),%ebx
	movl	-516(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_CRT
_FINALIZE$_CRT:
.reference __CRT_finalize
.globl	__CRT_finalize
__CRT_finalize:
.reference _FINALIZE$_CRT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1915
Lj1915:
	popl	%ebx
	call	L_CRT_TTYFLUSHOUTPUT$stub
	movl	L_U_CRT_OUTPUTREDIR$non_lazy_ptr-Lj1915(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2004
	jmp	Lj2005
Lj2004:
	movb	$0,%al
	call	L_CRT_SETRAWMODE$BOOLEAN$stub
Lj2005:
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj1915(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj2008
	jmp	Lj2009
Lj2008:
	movl	L_TC_CRT_SCREENHEIGHT$non_lazy_ptr-Lj1915(%ebx),%eax
	movl	(%eax),%edx
	movl	L_TC_CRT_SCREENWIDTH$non_lazy_ptr-Lj1915(%ebx),%eax
	movl	(%eax),%eax
	imull	%eax,%edx
	shll	$1,%edx
	movl	L_U_CRT_CONSOLEBUF$non_lazy_ptr-Lj1915(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj2009:
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


.globl _U_CRT_CHECKBREAK
.data
.zerofill __DATA, __common, _U_CRT_CHECKBREAK, 1,1




.globl _U_CRT_CHECKEOF
.data
.zerofill __DATA, __common, _U_CRT_CHECKEOF, 1,1




.globl _U_CRT_DIRECTVIDEO
.data
.zerofill __DATA, __common, _U_CRT_DIRECTVIDEO, 1,1




.globl _U_CRT_CHECKSNOW
.data
.zerofill __DATA, __common, _U_CRT_CHECKSNOW, 1,1




	.align 2
.globl _U_CRT_WINDMINX
.data
.zerofill __DATA, __common, _U_CRT_WINDMINX, 4,2




	.align 2
.globl _U_CRT_WINDMAXX
.data
.zerofill __DATA, __common, _U_CRT_WINDMAXX, 4,2




	.align 2
.globl _U_CRT_WINDMINY
.data
.zerofill __DATA, __common, _U_CRT_WINDMINY, 4,2




	.align 2
.globl _U_CRT_WINDMAXY
.data
.zerofill __DATA, __common, _U_CRT_WINDMAXY, 4,2




	.align 2
.globl _U_CRT_CONSOLEBUF
.data
.zerofill __DATA, __common, _U_CRT_CONSOLEBUF, 4,2




.globl _U_CRT_CURRX
.data
.zerofill __DATA, __common, _U_CRT_CURRX, 1,1




.globl _U_CRT_CURRY
.data
.zerofill __DATA, __common, _U_CRT_CURRY, 1,1




.globl _U_CRT_OUTPUTREDIR
.data
.zerofill __DATA, __common, _U_CRT_OUTPUTREDIR, 1,1




.globl _U_CRT_INPUTREDIR
.data
.zerofill __DATA, __common, _U_CRT_INPUTREDIR, 1,1




.globl _U_CRT_INBUF
.data
.zerofill __DATA, __common, _U_CRT_INBUF, 256,1




	.align 2
.globl _U_CRT_INCNT
.data
.zerofill __DATA, __common, _U_CRT_INCNT, 4,2




	.align 2
.globl _U_CRT_INHEAD
.data
.zerofill __DATA, __common, _U_CRT_INHEAD, 4,2




	.align 2
.globl _U_CRT_INTAIL
.data
.zerofill __DATA, __common, _U_CRT_INTAIL, 4,2




.globl _U_CRT_OUTBUF
.data
.zerofill __DATA, __common, _U_CRT_OUTBUF, 1024,1




	.align 2
.globl _U_CRT_OUTCNT
.data
.zerofill __DATA, __common, _U_CRT_OUTCNT, 4,2




.globl _U_CRT_KEYBUFFER
.data
.zerofill __DATA, __common, _U_CRT_KEYBUFFER, 20,1




	.align 2
.globl _U_CRT_KEYPUT
.data
.zerofill __DATA, __common, _U_CRT_KEYPUT, 4,2




	.align 2
.globl _U_CRT_KEYSEND
.data
.zerofill __DATA, __common, _U_CRT_KEYSEND, 4,2




.globl _U_CRT_LASTANSI
.data
.zerofill __DATA, __common, _U_CRT_LASTANSI, 1,1




.globl _U_CRT_ANSICODE
.data
.zerofill __DATA, __common, _U_CRT_ANSICODE, 256,1




	.align 2
.globl _U_CRT_OLDIO
.data
.zerofill __DATA, __common, _U_CRT_OLDIO, 44,2




.globl _U_CRT_INPUTRAW
.data
.zerofill __DATA, __common, _U_CRT_INPUTRAW, 1,1




.globl _U_CRT_OUTPUTRAW
.data
.zerofill __DATA, __common, _U_CRT_OUTPUTRAW, 1,1



.data
	.align 2
.globl	_THREADVARLIST_CRT
_THREADVARLIST_CRT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 1
.globl	_TC_CRT_LASTMODE
_TC_CRT_LASTMODE:
	.short	3

.data
.globl	_TC_CRT_TEXTATTR
_TC_CRT_TEXTATTR:
	.byte	7

.data
	.align 1
.globl	_TC_CRT_WINDMIN
_TC_CRT_WINDMIN:
	.short	0

.data
	.align 1
.globl	_TC_CRT_WINDMAX
_TC_CRT_WINDMAX:
	.short	6223

.data
	.align 2
.globl	_TC_CRT_SCREENHEIGHT
_TC_CRT_SCREENHEIGHT:
	.long	25

.data
	.align 2
.globl	_TC_CRT_SCREENWIDTH
_TC_CRT_SCREENWIDTH:
	.long	80

.data
.globl	_TC_CRT_OLDTEXTATTR
_TC_CRT_OLDTEXTATTR:
	.byte	7

.const
	.align 2
.globl	_$CRT$_Ld1
_$CRT$_Ld1:
	.ascii	"\002\033[\000"

.const
	.align 2
.globl	_$CRT$_Ld2
_$CRT$_Ld2:
	.ascii	"\001;\000"

.const
	.align 2
.globl	_$CRT$_Ld3
_$CRT$_Ld3:
	.ascii	"\001H\000"

.const
	.align 2
.globl	_$CRT$_Ld4
_$CRT$_Ld4:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$CRT$_Ld5
_$CRT$_Ld5:
	.ascii	"\001C\000"

.const
	.align 2
.globl	_$CRT$_Ld6
_$CRT$_Ld6:
	.ascii	"\001D\000"

.const
	.align 2
.globl	_$CRT$_Ld7
_$CRT$_Ld7:
	.ascii	"\001B\000"

.const
	.align 2
.globl	_$CRT$_Ld8
_$CRT$_Ld8:
	.ascii	"\001A\000"

.data
.globl	_TC_CRT_ANSITBL
_TC_CRT_ANSITBL:
	.byte	8
	.ascii	"04261537"

.const
	.align 2
.globl	_$CRT$_Ld9
_$CRT$_Ld9:
	.ascii	"\0010\000"

.const
	.align 2
.globl	_$CRT$_Ld10
_$CRT$_Ld10:
	.ascii	"\001m\000"

.data
.globl	_TC_CRT_TTYFLUSH
_TC_CRT_TTYFLUSH:
	.byte	1

.const
	.align 2
.globl	_$CRT$_Ld11
_$CRT$_Ld11:
	.ascii	"\001\012\000"

.const
	.align 2
.globl	_$CRT$_Ld12
_$CRT$_Ld12:
	.ascii	"\007\033[H\033[2J\000"

.const
	.align 2
.globl	_$CRT$_Ld13
_$CRT$_Ld13:
	.ascii	"\003\033[K\000"

.data
.globl	_TC_CRT_ALTKEYSTR
_TC_CRT_ALTKEYSTR:
	.byte	38
	.ascii	"qwertyuiopasdfghjklzxcvbnm1234567890-="

.data
.globl	_TC_CRT_ALTCODESTR
_TC_CRT_ALTCODESTR:
	.byte	38
	.ascii	"\020\021\022\023\024\025\026\027\030\031\036\037 !\""
	.ascii	"#$%&,-./012xyz{|}~\200\201\202\203"

.const
	.align 2
.globl	_$CRT$_Ld14
_$CRT$_Ld14:
	.ascii	"\002\012\015\000"

.const
	.align 2
.globl	_$CRT$_Ld15
_$CRT$_Ld15:
	.ascii	"\001\010\000"

.const
	.align 2
.globl	_$CRT$_Ld16
_$CRT$_Ld16:
	.ascii	"\003\010 \010\000"

.const
	.align 2
.globl	_$CRT$_Ld17
_$CRT$_Ld17:
	.ascii	"\013\033[?17;0;64c\000"

.const
	.align 2
.globl	_$CRT$_Ld18
_$CRT$_Ld18:
	.ascii	"\005\033[?2c\000"

.const
	.align 2
.globl	_$CRT$_Ld19
_$CRT$_Ld19:
	.ascii	"\005\033[?1c\000"

.const
	.align 2
.globl	_$CRT$_Ld20
_$CRT$_Ld20:
	.ascii	"\004\033[6n\000"

.const
	.align 2
.globl	_$CRT$_Ld21
_$CRT$_Ld21:
	.ascii	"\003\033[H\000"

.const
	.align 2
.globl	_$CRT$_Ld22
_$CRT$_Ld22:
	.ascii	"\003\033[m\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_STR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _CRT_STR$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR$stub:
.indirect_symbol _CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING_ADDSEP$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYFLUSHOUTPUT$stub:
.indirect_symbol _CRT_TTYFLUSHOUTPUT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYSENDCHAR$CHAR$stub:
.indirect_symbol _CRT_TTYSENDCHAR$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYSENDSTR$SHORTSTRING$stub:
.indirect_symbol _CRT_TTYSENDSTR$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_XY2ANSI$LONGINT$LONGINT$LONGINT$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _CRT_XY2ANSI$LONGINT$LONGINT$LONGINT$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _CRT_ATTR2ANSI$LONGINT$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYGOTOXY$LONGINT$LONGINT$stub:
.indirect_symbol _CRT_TTYGOTOXY$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SPACE$BYTE$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_SPACE$BYTE$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_LINEWRITE$SHORTSTRING$stub:
.indirect_symbol _CRT_LINEWRITE$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLWORD$formal$LONGINT$WORD$stub:
.indirect_symbol _SYSTEM_FILLWORD$formal$LONGINT$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYCOLOR$LONGINT$stub:
.indirect_symbol _CRT_TTYCOLOR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TEXTCOLOR$BYTE$stub:
.indirect_symbol _CRT_TEXTCOLOR$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TEXTBACKGROUND$BYTE$stub:
.indirect_symbol _CRT_TEXTBACKGROUND$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_GOTOXY$TCRTCOORD$TCRTCOORD$stub:
.indirect_symbol _CRT_GOTOXY$TCRTCOORD$TCRTCOORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _CRT_TTYSETFLUSH$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_FULLWIN$$BOOLEAN$stub:
.indirect_symbol _CRT_FULLWIN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CRT_DOEMPTYLINE$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DOSCROLLLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CRT_DOSCROLLLINE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_PUSHKEY$CHAR$stub:
.indirect_symbol _CRT_PUSHKEY$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_SYSKEYPRESSED$$BOOLEAN$stub:
.indirect_symbol _CRT_SYSKEYPRESSED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_POPKEY$$CHAR$stub:
.indirect_symbol _CRT_POPKEY$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYRECVCHAR$$CHAR$stub:
.indirect_symbol _CRT_TTYRECVCHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DELAY$WORD$stub:
.indirect_symbol _CRT_DELAY$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_FALTKEY$CHAR$$BYTE$stub:
.indirect_symbol _CRT_FALTKEY$CHAR$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_PUSHEXT$BYTE$stub:
.indirect_symbol _CRT_PUSHEXT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_SCROLLSCRNREGIONUP$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CRT_SCROLLSCRNREGIONUP$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DOWRITE$SHORTSTRING_SENDTEXT$stub:
.indirect_symbol _CRT_DOWRITE$SHORTSTRING_SENDTEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_ANSI2ATTR$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _CRT_ANSI2ATTR$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE$stub:
.indirect_symbol _CRT_DOWRITE$SHORTSTRING_ANSIPARA$SHORTSTRING$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_CLRSCR$stub:
.indirect_symbol _CRT_CLRSCR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_CLREOL$stub:
.indirect_symbol _CRT_CLREOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_MAX$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _CRT_MAX$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_MIN$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _CRT_MIN$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DOLN$stub:
.indirect_symbol _CRT_DOLN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_TTYWRITE$SHORTSTRING$stub:
.indirect_symbol _CRT_TTYWRITE$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_sint_shortstr$stub:
.indirect_symbol fpc_val_sint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_setlength$stub:
.indirect_symbol fpc_shortstr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_DOWRITE$SHORTSTRING$stub:
.indirect_symbol _CRT_DOWRITE$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_ISATTY$LONGINT$$LONGINT$stub:
.indirect_symbol _TERMIO_ISATTY$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_READKEY$$CHAR$stub:
.indirect_symbol _CRT_READKEY$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_end$stub:
.indirect_symbol fpc_write_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_READ$stub:
.indirect_symbol FPC_SYSC_READ
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_CRTWRITE$TEXTREC$$SMALLINT$stub:
.indirect_symbol _CRT_CRTWRITE$TEXTREC$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_SCROLLSCRNREGIONDOWN$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CRT_SCROLLSCRNREGIONDOWN$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_IOCTL$stub:
.indirect_symbol FPC_SYSC_IOCTL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_SAVERAWSETTINGS$TERMIOS$stub:
.indirect_symbol _CRT_SAVERAWSETTINGS$TERMIOS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_CFMAKERAW$TERMIOS$stub:
.indirect_symbol _TERMIO_CFMAKERAW$TERMIOS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_RESTORERAWSETTINGS$TERMIOS$stub:
.indirect_symbol _CRT_RESTORERAWSETTINGS$TERMIOS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT$stub:
.indirect_symbol _TERMIO_TCSETATTR$LONGINT$LONGINT$TERMIOS$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_uint_shortstr$stub:
.indirect_symbol fpc_val_uint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_ASSIGNCRT$TEXT$stub:
.indirect_symbol _CRT_ASSIGNCRT$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REWRITE$TEXT$stub:
.indirect_symbol _SYSTEM_REWRITE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RESET$TEXT$stub:
.indirect_symbol _SYSTEM_RESET$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TERMIO_TTYNAME$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _TERMIO_TTYNAME$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_GETCONSOLEBUF$stub:
.indirect_symbol _CRT_GETCONSOLEBUF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_SETRAWMODE$BOOLEAN$stub:
.indirect_symbol _CRT_SETRAWMODE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CRT_GETXY$BYTE$BYTE$stub:
.indirect_symbol _CRT_GETXY$BYTE$BYTE
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

.const_data
	.align 2
.globl	_INIT_CRT_TCRTCOORD
_INIT_CRT_TCRTCOORD:
	.byte	1,9
	.ascii	"tcrtcoord"
	.byte	1
	.long	1,255

.const_data
	.align 2
.globl	_RTTI_CRT_TCRTCOORD
_RTTI_CRT_TCRTCOORD:
	.byte	1,9
	.ascii	"tcrtcoord"
	.byte	1
	.long	1,255

.const_data
	.align 2
.globl	_INIT_CRT_TCHARATTR
_INIT_CRT_TCHARATTR:
	.byte	13,9
	.ascii	"TCharAttr"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_CRT_TCHARATTR
_RTTI_CRT_TCHARATTR:
	.byte	13,9
	.ascii	"TCharAttr"
	.long	2,2
	.long	_RTTI_SYSTEM_CHAR
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1

.const_data
	.align 2
.globl	_INIT_CRT_TCONSOLEBUF
_INIT_CRT_TCONSOLEBUF:
	.byte	12
	.ascii	"\013TConsoleBuf"
	.long	2,1048576
	.long	_INIT_CRT_TCHARATTR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_CRT_TCONSOLEBUF
_RTTI_CRT_TCONSOLEBUF:
	.byte	12
	.ascii	"\013TConsoleBuf"
	.long	2,1048576
	.long	_RTTI_CRT_TCHARATTR
	.long	-1

.const_data
	.align 2
.globl	_INIT_CRT_PCONSOLEBUF
_INIT_CRT_PCONSOLEBUF:
	.byte	0
	.ascii	"\013PConsoleBuf"

.const_data
	.align 2
.globl	_RTTI_CRT_PCONSOLEBUF
_RTTI_CRT_PCONSOLEBUF:
	.byte	0
	.ascii	"\013PConsoleBuf"
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_SCREENWIDTH$non_lazy_ptr:
.indirect_symbol _TC_CRT_SCREENWIDTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld1$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld2$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld3$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld5$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld6$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld7$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld8$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_ANSITBL$non_lazy_ptr:
.indirect_symbol _TC_CRT_ANSITBL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld9$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld10$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_OUTCNT$non_lazy_ptr:
.indirect_symbol _U_CRT_OUTCNT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_OUTBUF$non_lazy_ptr:
.indirect_symbol _U_CRT_OUTBUF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_TTYFLUSH$non_lazy_ptr:
.indirect_symbol _TC_CRT_TTYFLUSH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_INHEAD$non_lazy_ptr:
.indirect_symbol _U_CRT_INHEAD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_INTAIL$non_lazy_ptr:
.indirect_symbol _U_CRT_INTAIL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_INBUF$non_lazy_ptr:
.indirect_symbol _U_CRT_INBUF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_INCNT$non_lazy_ptr:
.indirect_symbol _U_CRT_INCNT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_CURRX$non_lazy_ptr:
.indirect_symbol _U_CRT_CURRX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_CURRY$non_lazy_ptr:
.indirect_symbol _U_CRT_CURRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_OUTPUTREDIR$non_lazy_ptr:
.indirect_symbol _U_CRT_OUTPUTREDIR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld11$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_OLDTEXTATTR$non_lazy_ptr:
.indirect_symbol _TC_CRT_OLDTEXTATTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_TEXTATTR$non_lazy_ptr:
.indirect_symbol _TC_CRT_TEXTATTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_CONSOLEBUF$non_lazy_ptr:
.indirect_symbol _U_CRT_CONSOLEBUF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_WINDMINX$non_lazy_ptr:
.indirect_symbol _U_CRT_WINDMINX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_WINDMINY$non_lazy_ptr:
.indirect_symbol _U_CRT_WINDMINY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_WINDMAXX$non_lazy_ptr:
.indirect_symbol _U_CRT_WINDMAXX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_WINDMAXY$non_lazy_ptr:
.indirect_symbol _U_CRT_WINDMAXY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_SCREENHEIGHT$non_lazy_ptr:
.indirect_symbol _TC_CRT_SCREENHEIGHT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_WINDMIN$non_lazy_ptr:
.indirect_symbol _TC_CRT_WINDMIN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_WINDMAX$non_lazy_ptr:
.indirect_symbol _TC_CRT_WINDMAX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld12$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld13$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_KEYPUT$non_lazy_ptr:
.indirect_symbol _U_CRT_KEYPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_KEYSEND$non_lazy_ptr:
.indirect_symbol _U_CRT_KEYSEND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_KEYBUFFER$non_lazy_ptr:
.indirect_symbol _U_CRT_KEYBUFFER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_ALTKEYSTR$non_lazy_ptr:
.indirect_symbol _TC_CRT_ALTKEYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_CRT_ALTCODESTR$non_lazy_ptr:
.indirect_symbol _TC_CRT_ALTCODESTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld14$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_LASTANSI$non_lazy_ptr:
.indirect_symbol _U_CRT_LASTANSI
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_ANSICODE$non_lazy_ptr:
.indirect_symbol _U_CRT_ANSICODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld15$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_INPUTREDIR$non_lazy_ptr:
.indirect_symbol _U_CRT_INPUTREDIR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld16$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CRT_CRTWRITE$TEXTREC$$SMALLINT$non_lazy_ptr:
.indirect_symbol _CRT_CRTWRITE$TEXTREC$$SMALLINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CRT_CRTREAD$TEXTREC$$SMALLINT$non_lazy_ptr:
.indirect_symbol _CRT_CRTREAD$TEXTREC$$SMALLINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CRT_CRTRETURN$TEXTREC$$SMALLINT$non_lazy_ptr:
.indirect_symbol _CRT_CRTRETURN$TEXTREC$$SMALLINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CRT_CRTCLOSE$TEXTREC$$SMALLINT$non_lazy_ptr:
.indirect_symbol _CRT_CRTCLOSE$TEXTREC$$SMALLINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld4$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CRT_CRTOPEN$TEXTREC$$SMALLINT$non_lazy_ptr:
.indirect_symbol _CRT_CRTOPEN$TEXTREC$$SMALLINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld17$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld18$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld19$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_INPUTRAW$non_lazy_ptr:
.indirect_symbol _U_CRT_INPUTRAW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_OUTPUTRAW$non_lazy_ptr:
.indirect_symbol _U_CRT_OUTPUTRAW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CRT_OLDIO$non_lazy_ptr:
.indirect_symbol _U_CRT_OLDIO
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld20$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_OUTPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_OUTPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_INPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_INPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld21$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CRT$_Ld22$non_lazy_ptr:
.indirect_symbol _$CRT$_Ld22
	.long	0
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

