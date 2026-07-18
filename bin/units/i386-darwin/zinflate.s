# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT
_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	$-2,-8(%ebp)
	jmp	Lj3
Lj6:
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movb	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	cmpb	$0,12(%eax)
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$7,(%eax)
	jmp	Lj19
Lj16:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$0,(%eax)
Lj19:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$0,%ecx
	call	L_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL$stub
	movl	$0,-8(%ebp)
Lj3:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj32
	jmp	Lj33
Lj32:
	movl	$-2,-8(%ebp)
	jmp	Lj30
Lj33:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj36
	jmp	Lj37
Lj36:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INFBLOCK_INFLATE_BLOCKS_FREE$PINFLATE_BLOCKS_STATE$Z_STREAM$$LONGINT$stub
Lj37:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-4(%ebp),%eax
	movl	$0,280(%eax)
	movl	$0,-8(%ebp)
Lj30:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT
_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj49
Lj49:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj50
	jmp	Lj53
Lj53:
	movl	-12(%ebp),%eax
	movb	1(%eax),%dl
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj49(%esi),%eax
	cmpb	1(%eax),%dl
	jne	Lj50
	jmp	Lj52
Lj52:
	movl	8(%ebp),%eax
	cmpl	$296,%eax
	jne	Lj50
	jmp	Lj51
Lj50:
	movl	$-6,-16(%ebp)
	jmp	Lj48
Lj51:
	movl	-4(%ebp),%eax
	movb	$0,24(%eax)
	movl	$24,%eax
	call	Lfpc_getmem$stub
	movl	-4(%ebp),%edx
	movl	%eax,280(%edx)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj64
	jmp	Lj65
Lj64:
	movl	$-4,-16(%ebp)
	jmp	Lj48
Lj65:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movb	$0,12(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj72
	jmp	Lj73
Lj72:
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movb	$1,12(%eax)
Lj73:
	movl	-8(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj78
	jmp	Lj80
Lj80:
	movl	-8(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj78
	jmp	Lj79
Lj78:
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	$-2,-16(%ebp)
	jmp	Lj48
Lj79:
	movl	-4(%ebp),%eax
	movl	280(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	cmpb	$0,12(%eax)
	jne	Lj87
	jmp	Lj88
Lj87:
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_INFBLOCK_INFLATE_BLOCKS_NEW$Z_STREAM$CHECK_FUNC$LONGWORD$$PINFLATE_BLOCKS_STATE$stub
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	movl	%eax,20(%edx)
	jmp	Lj97
Lj88:
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,%ecx
	movl	L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$non_lazy_ptr-Lj49(%esi),%eax
	movl	-4(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_INFBLOCK_INFLATE_BLOCKS_NEW$Z_STREAM$CHECK_FUNC$LONGWORD$$PINFLATE_BLOCKS_STATE$stub
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	movl	%eax,20(%edx)
Lj97:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj106
	jmp	Lj107
Lj106:
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	$-4,-16(%ebp)
	jmp	Lj48
Lj107:
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub
	movl	$0,-16(%ebp)
Lj48:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT
_ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj117
Lj117:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$296,(%esp)
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj117(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT
_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj129
Lj129:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$296,(%esp)
	movl	L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr-Lj129(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$15,%edx
	call	L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATEINIT_$Z_STREAMP$SHORTSTRING$LONGINT$$LONGINT
_ZINFLATE_INFLATEINIT_$Z_STREAMP$SHORTSTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj142
	jmp	Lj143
Lj142:
	movl	$-2,-16(%ebp)
	jmp	Lj146
Lj143:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	$15,%edx
	call	L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj146:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj158
Lj158:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj159
	jmp	Lj161
Lj161:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj159
	jmp	Lj160
Lj159:
	movl	$-2,-12(%ebp)
	jmp	Lj157
Lj160:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj164
	jmp	Lj165
Lj164:
	movl	$-5,-8(%ebp)
	jmp	Lj168
Lj165:
	movl	$0,-8(%ebp)
Lj168:
	movl	$-5,-16(%ebp)
	jmp	Lj174
	.align 2
Lj173:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj184
	decl	%eax
	je	Lj185
	decl	%eax
	je	Lj186
	decl	%eax
	je	Lj187
	decl	%eax
	je	Lj188
	decl	%eax
	je	Lj189
	decl	%eax
	je	Lj190
	decl	%eax
	je	Lj178
	decl	%eax
	je	Lj179
	decl	%eax
	je	Lj180
	decl	%eax
	je	Lj181
	decl	%eax
	je	Lj182
	decl	%eax
	je	Lj183
	decl	%eax
	je	Lj191
	jmp	Lj177
Lj178:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_INFBLOCK_INFLATE_BLOCKS$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj200
	jmp	Lj201
Lj200:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$0,4(%eax)
	jmp	Lj174
Lj201:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj206
	jmp	Lj207
Lj206:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj207:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj210
	jmp	Lj211
Lj210:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj211:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	leal	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	cmpb	$0,12(%eax)
	jne	Lj222
	jmp	Lj223
Lj222:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$12,(%eax)
	jmp	Lj174
Lj223:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$8,(%eax)
	jmp	Lj176
Lj179:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj228
	jmp	Lj229
Lj228:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj229:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$9,(%eax)
	jmp	Lj176
Lj180:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj239
Lj238:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj239:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	shll	$16,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$10,(%eax)
	jmp	Lj176
Lj181:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj246
	jmp	Lj247
Lj246:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj247:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$11,(%eax)
	jmp	Lj176
Lj182:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj254
	jmp	Lj255
Lj254:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj255:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%edx
	movl	-4(%ebp),%eax
	movl	280(%eax),%ecx
	movl	4(%edx),%eax
	cmpl	8(%ecx),%eax
	jne	Lj260
	jmp	Lj261
Lj260:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$ZINFLATE$_Ld2$non_lazy_ptr-Lj158(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$5,4(%eax)
	jmp	Lj174
Lj261:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$12,(%eax)
	jmp	Lj176
Lj183:
	movl	$1,-12(%ebp)
	jmp	Lj157
	jmp	Lj176
Lj184:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj276
	jmp	Lj277
Lj276:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj277:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	4(%eax),%eax
	andl	$15,%eax
	cmpl	$8,%eax
	jne	Lj284
	jmp	Lj285
Lj284:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$ZINFLATE$_Ld3$non_lazy_ptr-Lj158(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$5,4(%eax)
	jmp	Lj174
Lj285:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	4(%eax),%eax
	shrl	$4,%eax
	addl	$8,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	cmpl	16(%edx),%eax
	ja	Lj296
	jmp	Lj297
Lj296:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$ZINFLATE$_Ld4$non_lazy_ptr-Lj158(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$5,4(%eax)
	jmp	Lj174
Lj297:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$1,(%eax)
	jmp	Lj176
Lj185:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj310
	jmp	Lj311
Lj310:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj311:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	4(%eax),%eax
	shll	$8,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	xorl	%edx,%edx
	movl	$31,%ecx
	divl	%ecx
	testl	%edx,%edx
	jne	Lj318
	jmp	Lj319
Lj318:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$ZINFLATE$_Ld5$non_lazy_ptr-Lj158(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$5,4(%eax)
	jmp	Lj174
Lj319:
	movl	-20(%ebp),%eax
	andl	$32,%eax
	testl	%eax,%eax
	je	Lj330
	jmp	Lj331
Lj330:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$7,(%eax)
	jmp	Lj174
Lj331:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$2,(%eax)
	jmp	Lj176
Lj186:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj336
	jmp	Lj337
Lj336:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj337:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$3,(%eax)
	jmp	Lj176
Lj187:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj346
	jmp	Lj347
Lj346:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj347:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	shll	$16,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$4,(%eax)
	jmp	Lj176
Lj188:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj354
	jmp	Lj355
Lj354:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj355:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$5,(%eax)
	jmp	Lj176
Lj189:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj362
	jmp	Lj363
Lj362:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj157
Lj363:
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	280(%edx),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,288(%edx)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$6,(%eax)
	movl	$2,-12(%ebp)
	jmp	Lj157
	jmp	Lj176
Lj190:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	L_$ZINFLATE$_Ld6$non_lazy_ptr-Lj158(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$0,4(%eax)
	movl	$-2,-12(%ebp)
	jmp	Lj157
	jmp	Lj176
Lj191:
	movl	$-3,-12(%ebp)
	jmp	Lj157
	jmp	Lj176
Lj177:
	movl	$-2,-12(%ebp)
	jmp	Lj157
Lj176:
Lj174:
	jmp	Lj173
Lj157:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT
_ZINFLATE_INFLATESETDICTIONARY$Z_STREAM$PBYTE$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj392
	jmp	Lj394
Lj394:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	(%eax),%eax
	cmpl	$6,%eax
	jne	Lj392
	jmp	Lj393
Lj392:
	movl	$-2,-16(%ebp)
	jmp	Lj388
Lj393:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	$1,%eax
	call	L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	cmpl	288(%edx),%eax
	jne	Lj397
	jmp	Lj398
Lj397:
	movl	$-3,-16(%ebp)
	jmp	Lj388
Lj398:
	movl	-4(%ebp),%eax
	movl	$1,288(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%edx
	movl	$1,%eax
	movl	16(%edx),%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-20(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%edx
	jl	Lj409
	jg	Lj410
	cmpl	%ecx,%eax
	jbe	Lj409
	jmp	Lj410
Lj409:
	movl	-4(%ebp),%eax
	movl	280(%eax),%edx
	movl	$1,%eax
	movl	16(%edx),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	addl	%eax,-8(%ebp)
Lj410:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	movl	-8(%ebp),%edx
	movl	$0,%ecx
	call	L_INFBLOCK_INFLATE_SET_DICTIONARY$INFLATE_BLOCKS_STATE$array_of_BYTE$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$7,(%eax)
	movl	$0,-16(%ebp)
Lj388:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT
_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj426
Lj426:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj427
	jmp	Lj428
Lj427:
	movl	$-2,-8(%ebp)
	jmp	Lj425
Lj428:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	(%eax),%eax
	cmpl	$13,%eax
	jne	Lj431
	jmp	Lj432
Lj431:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$13,(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$0,4(%eax)
Lj432:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj439
	jmp	Lj440
Lj439:
	movl	$-5,-8(%ebp)
	jmp	Lj425
Lj440:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj448
	.align 2
Lj447:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	movb	(%eax),%al
	movl	L_TC_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT_MARK$non_lazy_ptr-Lj426(%ebx),%edx
	cmpb	(%edx,%ecx,1),%al
	je	Lj450
	jmp	Lj451
Lj450:
	incl	-20(%ebp)
	jmp	Lj452
Lj451:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj453
	jmp	Lj454
Lj453:
	movl	$0,-20(%ebp)
	jmp	Lj457
Lj454:
	movl	-20(%ebp),%edx
	movl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj457:
Lj452:
	incl	-16(%ebp)
	decl	-12(%ebp)
Lj448:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj460
	jmp	Lj449
Lj460:
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj447
	jmp	Lj449
Lj449:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj467
	jmp	Lj468
Lj467:
	movl	$-3,-8(%ebp)
	jmp	Lj425
Lj468:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	$7,(%eax)
	movl	$0,-8(%ebp)
Lj425:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZINFLATE_INFLATESYNCPOINT$Z_STREAM$$LONGINT
_ZINFLATE_INFLATESYNCPOINT$Z_STREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	testl	%eax,%eax
	je	Lj487
	jmp	Lj489
Lj489:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj487
	jmp	Lj488
Lj487:
	movl	$-2,-8(%ebp)
	jmp	Lj485
Lj488:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	20(%eax),%eax
	call	L_INFBLOCK_INFLATE_BLOCKS_SYNC_POINT$INFLATE_BLOCKS_STATE$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj485:
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_ZINFLATE
_THREADVARLIST_ZINFLATE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$ZINFLATE$_Ld1
_$ZINFLATE$_Ld1:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$ZINFLATE$_Ld2
_$ZINFLATE$_Ld2:
	.ascii	"\024incorrect data check\000"

.const
	.align 2
.globl	_$ZINFLATE$_Ld3
_$ZINFLATE$_Ld3:
	.ascii	"\032unknown compression method\000"

.const
	.align 2
.globl	_$ZINFLATE$_Ld4
_$ZINFLATE$_Ld4:
	.ascii	"\023invalid window size\000"

.const
	.align 2
.globl	_$ZINFLATE$_Ld5
_$ZINFLATE$_Ld5:
	.ascii	"\026incorrect header check\000"

.const
	.align 2
.globl	_$ZINFLATE$_Ld6
_$ZINFLATE$_Ld6:
	.ascii	"\017need dictionary\000"

.data
.globl	_TC_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT_MARK
_TC_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT_MARK:
	.byte	0,0,255,255
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL$stub:
.indirect_symbol _INFBLOCK_INFLATE_BLOCKS_RESET$INFLATE_BLOCKS_STATE$Z_STREAM$PCARDINAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_BLOCKS_FREE$PINFLATE_BLOCKS_STATE$Z_STREAM$$LONGINT$stub:
.indirect_symbol _INFBLOCK_INFLATE_BLOCKS_FREE$PINFLATE_BLOCKS_STATE$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_BLOCKS_NEW$Z_STREAM$CHECK_FUNC$LONGWORD$$PINFLATE_BLOCKS_STATE$stub:
.indirect_symbol _INFBLOCK_INFLATE_BLOCKS_NEW$Z_STREAM$CHECK_FUNC$LONGWORD$$PINFLATE_BLOCKS_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATERESET$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT2_$Z_STREAM$LONGINT$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_BLOCKS$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _INFBLOCK_INFLATE_BLOCKS$INFLATE_BLOCKS_STATE$Z_STREAM$LONGINT$$LONGINT
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

L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_SET_DICTIONARY$INFLATE_BLOCKS_STATE$array_of_BYTE$LONGWORD$stub:
.indirect_symbol _INFBLOCK_INFLATE_SET_DICTIONARY$INFLATE_BLOCKS_STATE$array_of_BYTE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INFBLOCK_INFLATE_BLOCKS_SYNC_POINT$INFLATE_BLOCKS_STATE$$LONGINT$stub:
.indirect_symbol _INFBLOCK_INFLATE_BLOCKS_SYNC_POINT$INFLATE_BLOCKS_STATE$$LONGINT
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ZBASE_ZLIB_VERSION$non_lazy_ptr:
.indirect_symbol _TC_ZBASE_ZLIB_VERSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD$non_lazy_ptr:
.indirect_symbol _ADLER_ADLER32$LONGWORD$PBYTE$LONGWORD$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZINFLATE$_Ld2$non_lazy_ptr:
.indirect_symbol _$ZINFLATE$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZINFLATE$_Ld3$non_lazy_ptr:
.indirect_symbol _$ZINFLATE$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZINFLATE$_Ld4$non_lazy_ptr:
.indirect_symbol _$ZINFLATE$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZINFLATE$_Ld5$non_lazy_ptr:
.indirect_symbol _$ZINFLATE$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZINFLATE$_Ld6$non_lazy_ptr:
.indirect_symbol _$ZINFLATE$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT_MARK$non_lazy_ptr:
.indirect_symbol _TC_ZINFLATE_INFLATESYNC$Z_STREAM$$LONGINT_MARK
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

