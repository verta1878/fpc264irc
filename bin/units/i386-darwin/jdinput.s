# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDINPUT_INITIAL_SETUP$J_DECOMPRESS_PTR
_JDINPUT_INITIAL_SETUP$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$65500,%eax
	jg	Lj5
	jmp	Lj7
Lj7:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$65500,%eax
	jg	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	$65500,%ecx
	movb	$42,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj6:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	cmpl	$8,%eax
	jne	Lj14
	jmp	Lj15
Lj14:
	movl	-4(%ebp),%eax
	movl	176(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$15,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj15:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$10,%eax
	jg	Lj22
	jmp	Lj23
Lj22:
	movl	$10,(%esp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj23:
	movl	-4(%ebp),%eax
	movl	$1,256(%eax)
	movl	-4(%ebp),%eax
	movl	$1,260(%eax)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj39
	decl	-8(%ebp)
	.align 2
Lj40:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jle	Lj41
	jmp	Lj45
Lj45:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$4,%eax
	jg	Lj41
	jmp	Lj44
Lj44:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jle	Lj41
	jmp	Lj43
Lj43:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$4,%eax
	jg	Lj41
	jmp	Lj42
Lj41:
	movl	-4(%ebp),%eax
	movb	$18,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj42:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	256(%eax),%eax
	cmpl	8(%edx),%eax
	jl	Lj50
	jmp	Lj51
Lj50:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,256(%edx)
Lj51:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	260(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj54
	jmp	Lj55
Lj54:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,260(%edx)
Lj55:
	addl	$84,-12(%ebp)
	cmpl	-8(%ebp),%ebx
	jg	Lj40
Lj39:
	movl	-4(%ebp),%eax
	movl	$8,264(%eax)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj63
	decl	-8(%ebp)
	.align 2
Lj64:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$8,36(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	256(%edx),%edx
	shll	$3,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	32(%eax),%eax
	movl	12(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	260(%edx),%edx
	shll	$3,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	256(%edx),%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	32(%eax),%eax
	movl	12(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	260(%edx),%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-12(%ebp),%eax
	movb	$1,48(%eax)
	movl	-12(%ebp),%eax
	movl	$0,76(%eax)
	addl	$84,-12(%ebp)
	cmpl	-8(%ebp),%ebx
	jg	Lj64
Lj63:
	movl	-4(%ebp),%eax
	movl	260(%eax),%edx
	shll	$3,%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,268(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	276(%eax),%eax
	cmpl	36(%edx),%eax
	jl	Lj101
	jmp	Lj103
Lj103:
	movl	-4(%ebp),%eax
	cmpb	$0,184(%eax)
	jne	Lj101
	jmp	Lj102
Lj101:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	$1,16(%eax)
	jmp	Lj106
Lj102:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	$0,16(%eax)
Lj106:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_PER_SCAN_SETUP$J_DECOMPRESS_PTR
_JDINPUT_PER_SCAN_SETUP$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	cmpl	$1,%eax
	je	Lj111
	jmp	Lj112
Lj111:
	movl	-4(%ebp),%eax
	movl	280(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,296(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,300(%edx)
	movl	-20(%ebp),%eax
	movl	$1,52(%eax)
	movl	-20(%ebp),%eax
	movl	$1,56(%eax)
	movl	-20(%ebp),%eax
	movl	$1,60(%eax)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,64(%edx)
	movl	-20(%ebp),%eax
	movl	$1,68(%eax)
	movl	-20(%ebp),%eax
	movl	32(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj135
	jmp	Lj136
Lj135:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
Lj136:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,72(%eax)
	movl	-4(%ebp),%eax
	movl	$1,304(%eax)
	movl	-4(%ebp),%eax
	movl	$0,308(%eax)
	jmp	Lj145
Lj112:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	cmpl	$0,%eax
	jle	Lj146
	jmp	Lj148
Lj148:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	cmpl	$4,%eax
	jg	Lj146
	jmp	Lj147
Lj146:
	movl	$4,(%esp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj147:
	movl	-4(%ebp),%eax
	movl	256(%eax),%edx
	shll	$3,%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,296(%edx)
	movl	-4(%ebp),%eax
	movl	260(%eax),%edx
	shll	$3,%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,300(%edx)
	movl	-4(%ebp),%eax
	movl	$0,304(%eax)
	movl	-4(%ebp),%eax
	movl	276(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj172
	decl	-8(%ebp)
	.align 2
Lj173:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,52(%edx)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,56(%edx)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	52(%eax),%ecx
	movl	56(%edx),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	%ecx,60(%eax)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	52(%eax),%ecx
	movl	36(%edx),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	%ecx,64(%eax)
	movl	-20(%ebp),%eax
	movl	28(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	52(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj190
	jmp	Lj191
Lj190:
	movl	-20(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-16(%ebp)
Lj191:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,68(%eax)
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	56(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj202
	jmp	Lj203
Lj202:
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-16(%ebp)
Lj203:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,72(%eax)
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	304(%eax),%ecx
	movl	$0,%esi
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	addl	%edx,%ecx
	adcl	%eax,%esi
	cmpl	$0,%esi
	jg	Lj210
	jl	Lj211
	cmpl	$10,%ecx
	ja	Lj210
	jmp	Lj211
Lj210:
	movl	-4(%ebp),%eax
	movb	$13,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj211:
	jmp	Lj217
	.align 2
Lj216:
	decl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,308(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	incl	304(%eax)
Lj217:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj216
	jmp	Lj218
Lj218:
	cmpl	-8(%ebp),%ebx
	jg	Lj173
Lj172:
Lj145:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_LATCH_QUANT_TABLES$J_DECOMPRESS_PTR
_JDINPUT_LATCH_QUANT_TABLES$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	276(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj224
	decl	-8(%ebp)
	.align 2
Lj225:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	testl	%eax,%eax
	jne	Lj228
	jmp	Lj229
Lj228:
	jmp	Lj223
Lj229:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj232
	jmp	Lj235
Lj235:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj232
	jmp	Lj234
Lj234:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	128(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj232
	jmp	Lj233
Lj232:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$53,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj233:
	movl	-4(%ebp),%eax
	movl	$130,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	128(%eax,%edx,4),%edx
	movl	-20(%ebp),%eax
	movl	$130,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,76(%eax)
Lj223:
	cmpl	-8(%ebp),%ebx
	jg	Lj225
Lj224:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR
_JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JDINPUT_PER_SCAN_SETUP$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JDINPUT_LATCH_QUANT_TABLES$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	392(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	376(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%edx
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_FINISH_INPUT_PASS$J_DECOMPRESS_PTR
_JDINPUT_FINISH_INPUT_PASS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj271
Lj271:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr-Lj271(%ecx),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT
_JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpb	$0,17(%eax)
	jne	Lj278
	jmp	Lj279
Lj278:
	movl	$2,-8(%ebp)
	jmp	Lj274
Lj279:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jl	Lj287
	testl	%eax,%eax
	je	Lj290
	decl	%eax
	je	Lj288
	decl	%eax
	je	Lj289
	jmp	Lj287
Lj288:
	movl	-16(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj291
	jmp	Lj292
Lj291:
	movl	-4(%ebp),%eax
	call	L_JDINPUT_INITIAL_SETUP$J_DECOMPRESS_PTR$stub
	movl	-16(%ebp),%eax
	movb	$0,20(%eax)
	jmp	Lj297
Lj292:
	movl	-16(%ebp),%eax
	movb	16(%eax),%al
	testb	%al,%al
	je	Lj298
	jmp	Lj299
Lj298:
	movl	-4(%ebp),%eax
	movb	$36,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj299:
	movl	-4(%ebp),%eax
	call	L_JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR$stub
Lj297:
	jmp	Lj286
Lj289:
	movl	-16(%ebp),%eax
	movb	$1,17(%eax)
	movl	-16(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj308
	jmp	Lj309
Lj308:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	cmpb	$0,13(%eax)
	jne	Lj310
	jmp	Lj311
Lj310:
	movl	-4(%ebp),%eax
	movb	$60,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj311:
	jmp	Lj316
Lj309:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	116(%eax),%eax
	cmpl	108(%edx),%eax
	jg	Lj317
	jmp	Lj318
Lj317:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,116(%edx)
Lj318:
Lj316:
	jmp	Lj286
Lj290:
	jmp	Lj286
Lj287:
Lj286:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj274:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_RESET_INPUT_CONTROLLER$J_DECOMPRESS_PTR
_JDINPUT_RESET_INPUT_CONTROLLER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj324
Lj324:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	L_JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr-Lj324(%ebx),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,17(%eax)
	movl	-8(%ebp),%eax
	movb	$1,20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$0,124(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDINPUT_JINIT_INPUT_CONTROLLER$J_DECOMPRESS_PTR
_JDINPUT_JINIT_INPUT_CONTROLLER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj342
Lj342:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$24,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,384(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr-Lj342(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDINPUT_RESET_INPUT_CONTROLLER$J_DECOMPRESS_PTR$non_lazy_ptr-Lj342(%esi),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj342(%esi),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	L_JDINPUT_FINISH_INPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr-Lj342(%esi),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,17(%eax)
	movl	-8(%ebp),%eax
	movb	$1,20(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDINPUT
_THREADVARLIST_JDINPUT:
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

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mod_int64$stub:
.indirect_symbol fpc_mod_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDINPUT_PER_SCAN_SETUP$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDINPUT_PER_SCAN_SETUP$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDINPUT_LATCH_QUANT_TABLES$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDINPUT_LATCH_QUANT_TABLES$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDINPUT_INITIAL_SETUP$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDINPUT_INITIAL_SETUP$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR
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
L_JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT$non_lazy_ptr:
.indirect_symbol _JDINPUT_CONSUME_MARKERS$J_DECOMPRESS_PTR$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDINPUT_RESET_INPUT_CONTROLLER$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDINPUT_RESET_INPUT_CONTROLLER$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDINPUT_START_INPUT_PASS$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDINPUT_FINISH_INPUT_PASS$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDINPUT_FINISH_INPUT_PASS$J_DECOMPRESS_PTR
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

