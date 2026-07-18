# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT
_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$55,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER
_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj12
Lj12:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$999999988,%eax
	jg	Lj15
	jmp	Lj16
Lj15:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT$stub
Lj16:
	movl	-12(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj23
	jmp	Lj24
Lj23:
	movl	-36(%ebp),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	addl	%edx,-12(%ebp)
Lj24:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj25
	jmp	Lj27
Lj27:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jge	Lj25
	jmp	Lj26
Lj25:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$14,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj26:
	movl	$0,-28(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	52(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj39
	.align 2
Lj38:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	jge	Lj41
	jmp	Lj42
Lj41:
	jmp	Lj40
Lj42:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
Lj39:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj40
Lj40:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	jmp	Lj48
Lj47:
	movl	-12(%ebp),%eax
	addl	$12,%eax
	movl	%eax,-40(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj51
	jmp	Lj52
Lj51:
	movl	-8(%ebp),%edx
	movl	L_TC_JMEMMGR_FIRST_POOL_SLOP$non_lazy_ptr-Lj12(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	jmp	Lj55
Lj52:
	movl	-8(%ebp),%edx
	movl	L_TC_JMEMMGR_EXTRA_POOL_SLOP$non_lazy_ptr-Lj12(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
Lj55:
	movl	-40(%ebp),%edx
	movl	$1000000000,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	cmpl	-44(%ebp),%edx
	jl	Lj58
	jmp	Lj59
Lj58:
	movl	-40(%ebp),%edx
	movl	$1000000000,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
Lj59:
	jmp	Lj63
	.align 2
Lj62:
	movl	-40(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_GET_SMALL$J_COMMON_PTR$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	jmp	Lj64
Lj72:
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$50,%eax
	jl	Lj75
	jmp	Lj76
Lj75:
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT$stub
Lj76:
Lj63:
	jmp	Lj62
Lj64:
	movl	-40(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	-20(%ebp),%edx
	addl	%eax,76(%edx)
	movl	-24(%ebp),%eax
	movl	$0,(%eax)
	movl	-24(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	-24(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj87
	jmp	Lj88
Lj87:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	%ecx,52(%edx,%eax,4)
	jmp	Lj91
Lj88:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
Lj91:
Lj48:
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	addl	$12,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,-32(%ebp)
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,4(%edx)
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,8(%eax)
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER
_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$999999988,%eax
	jg	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	L_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT$stub
Lj103:
	movl	-12(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj110
	jmp	Lj111
Lj110:
	movl	-28(%ebp),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	addl	%edx,-12(%ebp)
Lj111:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj112
	jmp	Lj114
Lj114:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jge	Lj112
	jmp	Lj113
Lj112:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$14,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj113:
	movl	-12(%ebp),%edx
	addl	$12,%edx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_GET_LARGE$J_COMMON_PTR$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj127
	jmp	Lj128
Lj127:
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT$stub
Lj128:
	movl	-12(%ebp),%eax
	addl	$12,%eax
	movl	-20(%ebp),%edx
	addl	%eax,76(%edx)
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	60(%eax,%edx,4),%eax
	movl	%eax,(%ecx)
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-24(%ebp),%eax
	movl	$0,8(%eax)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,60(%ecx,%eax,4)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	addl	$12,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY
_JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$999999988,%eax
	cltd
	idivl	-12(%ebp)
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj151
	jmp	Lj152
Lj151:
	movl	-4(%ebp),%eax
	movb	$71,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj152:
	movl	-44(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj157
	jmp	Lj158
Lj157:
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj161
Lj158:
	movl	8(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj161:
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,80(%eax)
	movl	8(%ebp),%ecx
	shll	$2,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	$0,-36(%ebp)
	jmp	Lj177
	.align 2
Lj176:
	movl	8(%ebp),%ecx
	movl	$0,%ebx
	movl	-36(%ebp),%eax
	movl	$0,%edx
	subl	%eax,%ecx
	sbbl	%edx,%ebx
	movl	-32(%ebp),%eax
	movl	$0,%edx
	cmpl	%edx,%ebx
	jl	Lj179
	jg	Lj180
	cmpl	%eax,%ecx
	jb	Lj179
	jmp	Lj180
Lj179:
	movl	8(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
Lj180:
	movl	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	imull	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,-40(%ebp)
	cmpl	$0,-40(%ebp)
	jb	Lj192
	incl	-40(%ebp)
	.align 2
Lj193:
	decl	-40(%ebp)
	movl	-24(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	incl	-36(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-28(%ebp)
	cmpl	$0,-40(%ebp)
	ja	Lj193
Lj192:
Lj177:
	movl	-36(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj176
	jmp	Lj178
Lj178:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY
_JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%ecx
	shll	$8,%ecx
	movl	$999999988,%eax
	cltd
	idivl	%ecx
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj204
	jmp	Lj205
Lj204:
	movl	-4(%ebp),%eax
	movb	$71,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj205:
	movl	-44(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj210
	jmp	Lj211
Lj210:
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj214
Lj211:
	movl	8(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj214:
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,80(%eax)
	movl	8(%ebp),%ecx
	shll	$2,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	$0,-36(%ebp)
	jmp	Lj230
	.align 2
Lj229:
	movl	8(%ebp),%ecx
	movl	$0,%ebx
	movl	-36(%ebp),%eax
	movl	$0,%edx
	subl	%eax,%ecx
	sbbl	%edx,%ebx
	movl	-32(%ebp),%eax
	movl	$0,%edx
	cmpl	%edx,%ebx
	jl	Lj232
	jg	Lj233
	cmpl	%eax,%ecx
	jb	Lj232
	jmp	Lj233
Lj232:
	movl	8(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
Lj233:
	movl	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	imull	%eax,%ecx
	shll	$8,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	cmpl	$1,-40(%ebp)
	jb	Lj245
	incl	-40(%ebp)
	.align 2
Lj246:
	decl	-40(%ebp)
	movl	-24(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	incl	-36(%ebp)
	movl	-12(%ebp),%eax
	shll	$8,%eax
	addl	%eax,-28(%ebp)
	cmpl	$1,-40(%ebp)
	ja	Lj246
Lj245:
Lj230:
	movl	-36(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj229
	jmp	Lj231
Lj231:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_REQUEST_VIRT_SARRAY$crcA0C60AE2
_JMEMMGR_REQUEST_VIRT_SARRAY$crcA0C60AE2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj255
	jmp	Lj256
Lj255:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$14,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj256:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$124,%ecx
	call	L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	$0,(%eax)
	movl	-24(%ebp),%edx
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-24(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-24(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-24(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,32(%eax)
	movl	-24(%ebp),%eax
	movb	$0,34(%eax)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,36(%edx)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,68(%edx)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_REQUEST_VIRT_BARRAY$crcA0C60AE2
_JMEMMGR_REQUEST_VIRT_BARRAY$crcA0C60AE2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj293
	jmp	Lj294
Lj293:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$14,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj294:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$124,%ecx
	call	L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	$0,(%eax)
	movl	-24(%ebp),%edx
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-24(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-24(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-24(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,32(%eax)
	movl	-24(%ebp),%eax
	movb	$0,34(%eax)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,36(%edx)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,72(%edx)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_REALIZE_VIRT_ARRAYS$J_COMMON_PTR
_JMEMMGR_REALIZE_VIRT_ARRAYS$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj338
	.align 2
Lj337:
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj340
	jmp	Lj341
Lj340:
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	12(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	addl	%eax,-12(%ebp)
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	4(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	addl	%eax,-16(%ebp)
Lj341:
	movl	-32(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-32(%ebp)
Lj338:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj337
	jmp	Lj339
Lj339:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj347
	.align 2
Lj346:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj349
	jmp	Lj350
Lj349:
	movl	-36(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	12(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	shll	$8,%eax
	addl	%eax,-12(%ebp)
	movl	-36(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	4(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	shll	$8,%eax
	addl	%eax,-16(%ebp)
Lj350:
	movl	-36(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-36(%ebp)
Lj347:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj346
	jmp	Lj348
Lj348:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj353
	jmp	Lj354
Lj353:
	jmp	Lj327
Lj354:
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_MEM_AVAILABLE$J_COMMON_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jge	Lj365
	jmp	Lj366
Lj365:
	movl	$1000000000,-28(%ebp)
	jmp	Lj369
Lj366:
	movl	-20(%ebp),%eax
	cltd
	idivl	-12(%ebp)
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj372
	jmp	Lj373
Lj372:
	movl	$1,-28(%ebp)
Lj373:
Lj369:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj379
	.align 2
Lj378:
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj381
	jmp	Lj382
Lj381:
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-32(%ebp),%eax
	movl	4(%eax),%edx
	decl	%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	call	Lfpc_div_int64$stub
	addl	$1,%eax
	adcl	$0,%edx
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj389
	jmp	Lj390
Lj389:
	movl	-32(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,16(%edx)
	jmp	Lj393
Lj390:
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	-32(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-32(%ebp),%eax
	leal	40(%eax),%edx
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	4(%eax),%ecx
	movl	8(%ebx),%eax
	imull	%eax,%ecx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_OPEN_BACKING_STORE$J_COMMON_PTR$BACKING_STORE_PTR$LONGINT$stub
	movl	-32(%ebp),%eax
	movb	$1,34(%eax)
Lj393:
	movl	-32(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY$stub
	movl	-32(%ebp),%edx
	movl	%eax,(%edx)
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,20(%edx)
	movl	-32(%ebp),%eax
	movl	$0,24(%eax)
	movl	-32(%ebp),%eax
	movl	$0,28(%eax)
	movl	-32(%ebp),%eax
	movb	$0,33(%eax)
Lj382:
	movl	-32(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-32(%ebp)
Lj379:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj378
	jmp	Lj380
Lj380:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj433
	.align 2
Lj432:
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj435
	jmp	Lj436
Lj435:
	movl	-36(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%edx
	decl	%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	call	Lfpc_div_int64$stub
	addl	$1,%eax
	adcl	$0,%edx
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj443
	jmp	Lj444
Lj443:
	movl	-36(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,16(%edx)
	jmp	Lj447
Lj444:
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-36(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	-36(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-36(%ebp),%eax
	leal	40(%eax),%edx
	movl	-36(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	4(%eax),%ecx
	movl	8(%ebx),%eax
	imull	%eax,%ecx
	shll	$8,%ecx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_OPEN_BACKING_STORE$J_COMMON_PTR$BACKING_STORE_PTR$LONGINT$stub
	movl	-36(%ebp),%eax
	movb	$1,34(%eax)
Lj447:
	movl	-36(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY$stub
	movl	-36(%ebp),%edx
	movl	%eax,(%edx)
	movl	-36(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,20(%edx)
	movl	-36(%ebp),%eax
	movl	$0,24(%eax)
	movl	-36(%ebp),%eax
	movl	$0,28(%eax)
	movl	-36(%ebp),%eax
	movb	$0,33(%eax)
Lj436:
	movl	-36(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-36(%ebp)
Lj433:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj432
	jmp	Lj434
Lj434:
Lj327:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_DO_SARRAY_IO$J_COMMON_PTR$JVIRT_SARRAY_PTR$BOOLEAN
_JMEMMGR_DO_SARRAY_IO$J_COMMON_PTR$JVIRT_SARRAY_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-20(%ebp)
	movl	$0,-36(%ebp)
	jmp	Lj499
	.align 2
Lj498:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-36(%ebp),%eax
	subl	%eax,%edx
	cmpl	-28(%ebp),%edx
	jl	Lj503
	jmp	Lj504
Lj503:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj504:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	cmpl	-28(%ebp),%edx
	jl	Lj509
	jmp	Lj510
Lj509:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj510:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	cmpl	-28(%ebp),%eax
	jl	Lj513
	jmp	Lj514
Lj513:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj514:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj517
	jmp	Lj518
Lj517:
	jmp	Lj500
Lj518:
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-24(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj521
	jmp	Lj522
Lj521:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	40(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-36(%ebp),%eax
	movl	(%ecx,%eax,4),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	44(%ebx),%ebx
	call	*%ebx
	jmp	Lj533
Lj522:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	40(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-36(%ebp),%ecx
	movl	(%eax,%ecx,4),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	40(%ebx),%ebx
	call	*%ebx
Lj533:
	movl	-24(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	addl	%eax,-36(%ebp)
Lj499:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj498
	jmp	Lj500
Lj500:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_DO_BARRAY_IO$J_COMMON_PTR$JVIRT_BARRAY_PTR$BOOLEAN
_JMEMMGR_DO_BARRAY_IO$J_COMMON_PTR$JVIRT_BARRAY_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	shll	$8,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-20(%ebp)
	movl	$0,-36(%ebp)
	jmp	Lj559
	.align 2
Lj558:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-36(%ebp),%eax
	subl	%eax,%edx
	cmpl	-28(%ebp),%edx
	jl	Lj563
	jmp	Lj564
Lj563:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj564:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	cmpl	-28(%ebp),%edx
	jl	Lj569
	jmp	Lj570
Lj569:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj570:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	cmpl	-28(%ebp),%eax
	jl	Lj573
	jmp	Lj574
Lj573:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj574:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj577
	jmp	Lj578
Lj577:
	jmp	Lj560
Lj578:
	movl	-28(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-24(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj581
	jmp	Lj582
Lj581:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	40(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-36(%ebp),%eax
	movl	(%ecx,%eax,4),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	44(%ebx),%ebx
	call	*%ebx
	jmp	Lj593
Lj582:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	leal	40(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-36(%ebp),%ecx
	movl	(%eax,%ecx,4),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	40(%ebx),%ebx
	call	*%ebx
Lj593:
	movl	-24(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	addl	%eax,-36(%ebp)
Lj559:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj558
	jmp	Lj560
Lj560:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_ACCESS_VIRT_SARRAY$crc9C4D04F1
_JMEMMGR_ACCESS_VIRT_SARRAY$crc9C4D04F1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj608
	jmp	Lj611
Lj611:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	12(%ebp),%eax
	jb	Lj608
	jmp	Lj610
Lj610:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj608
	jmp	Lj609
Lj608:
	movl	-4(%ebp),%eax
	movb	$22,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj609:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj616
	jmp	Lj618
Lj618:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax),%ecx
	movl	16(%edx),%eax
	addl	%eax,%ecx
	cmpl	-20(%ebp),%ecx
	jb	Lj616
	jmp	Lj617
Lj616:
	movl	-8(%ebp),%eax
	movb	34(%eax),%al
	testb	%al,%al
	je	Lj619
	jmp	Lj620
Lj619:
	movl	-4(%ebp),%eax
	movb	$70,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj620:
	movl	-8(%ebp),%eax
	cmpb	$0,33(%eax)
	jne	Lj625
	jmp	Lj626
Lj625:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_JMEMMGR_DO_SARRAY_IO$J_COMMON_PTR$JVIRT_SARRAY_PTR$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movb	$0,33(%eax)
Lj626:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-12(%ebp),%eax
	jb	Lj635
	jmp	Lj636
Lj635:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	jmp	Lj639
Lj636:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj642
	jmp	Lj643
Lj642:
	movl	$0,-32(%ebp)
Lj643:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,24(%eax)
Lj639:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_JMEMMGR_DO_SARRAY_IO$J_COMMON_PTR$JVIRT_SARRAY_PTR$BOOLEAN$stub
Lj617:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj654
	jmp	Lj655
Lj654:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-12(%ebp),%eax
	jb	Lj656
	jmp	Lj657
Lj656:
	cmpb	$0,8(%ebp)
	jne	Lj658
	jmp	Lj659
Lj658:
	movl	-4(%ebp),%eax
	movb	$22,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj659:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj666
Lj657:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-24(%ebp)
Lj666:
	cmpb	$0,8(%ebp)
	jne	Lj669
	jmp	Lj670
Lj669:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,28(%eax)
Lj670:
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj673
	jmp	Lj674
Lj673:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	subl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	subl	%eax,-20(%ebp)
	jmp	Lj678
	.align 2
Lj677:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-28(%ebp),%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	incl	-24(%ebp)
Lj678:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj677
	jmp	Lj679
Lj679:
	jmp	Lj684
Lj674:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj685
	jmp	Lj686
Lj685:
	movl	-4(%ebp),%eax
	movb	$22,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj686:
Lj684:
Lj655:
	cmpb	$0,8(%ebp)
	jne	Lj691
	jmp	Lj692
Lj691:
	movl	-8(%ebp),%eax
	movb	$1,33(%eax)
Lj692:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	leal	(%ecx,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_ACCESS_VIRT_BARRAY$crcC7EE9548
_JMEMMGR_ACCESS_VIRT_BARRAY$crcC7EE9548:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj701
	jmp	Lj704
Lj704:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	12(%ebp),%eax
	jb	Lj701
	jmp	Lj703
Lj703:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj701
	jmp	Lj702
Lj701:
	movl	-4(%ebp),%eax
	movb	$22,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj702:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj709
	jmp	Lj711
Lj711:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax),%ecx
	movl	16(%edx),%eax
	addl	%eax,%ecx
	cmpl	-20(%ebp),%ecx
	jb	Lj709
	jmp	Lj710
Lj709:
	movl	-8(%ebp),%eax
	movb	34(%eax),%al
	testb	%al,%al
	je	Lj712
	jmp	Lj713
Lj712:
	movl	-4(%ebp),%eax
	movb	$70,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj713:
	movl	-8(%ebp),%eax
	cmpb	$0,33(%eax)
	jne	Lj718
	jmp	Lj719
Lj718:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_JMEMMGR_DO_BARRAY_IO$J_COMMON_PTR$JVIRT_BARRAY_PTR$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movb	$0,33(%eax)
Lj719:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-12(%ebp),%eax
	jb	Lj728
	jmp	Lj729
Lj728:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,24(%edx)
	jmp	Lj732
Lj729:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj735
	jmp	Lj736
Lj735:
	movl	$0,-28(%ebp)
Lj736:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,24(%eax)
Lj732:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_JMEMMGR_DO_BARRAY_IO$J_COMMON_PTR$JVIRT_BARRAY_PTR$BOOLEAN$stub
Lj710:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj747
	jmp	Lj748
Lj747:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-12(%ebp),%eax
	jb	Lj749
	jmp	Lj750
Lj749:
	cmpb	$0,8(%ebp)
	jne	Lj751
	jmp	Lj752
Lj751:
	movl	-4(%ebp),%eax
	movb	$22,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj752:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj759
Lj750:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-24(%ebp)
Lj759:
	cmpb	$0,8(%ebp)
	jne	Lj762
	jmp	Lj763
Lj762:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,28(%eax)
Lj763:
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj766
	jmp	Lj767
Lj766:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	shll	$8,%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	subl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	subl	%eax,-20(%ebp)
	jmp	Lj771
	.align 2
Lj770:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-32(%ebp),%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	incl	-24(%ebp)
Lj771:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj770
	jmp	Lj772
Lj772:
	jmp	Lj777
Lj767:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj778
	jmp	Lj779
Lj778:
	movl	-4(%ebp),%eax
	movb	$22,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj779:
Lj777:
Lj748:
	cmpb	$0,8(%ebp)
	jne	Lj784
	jmp	Lj785
Lj784:
	movl	-8(%ebp),%eax
	movb	$1,33(%eax)
Lj785:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	leal	(%ecx,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT
_JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj794
	jmp	Lj796
Lj796:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jge	Lj794
	jmp	Lj795
Lj794:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$14,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj795:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj803
	jmp	Lj804
Lj803:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj808
	.align 2
Lj807:
	movl	-28(%ebp),%eax
	cmpb	$0,34(%eax)
	jne	Lj810
	jmp	Lj811
Lj810:
	movl	-28(%ebp),%eax
	movb	$0,34(%eax)
	movl	-28(%ebp),%eax
	leal	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
Lj811:
	movl	-28(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-28(%ebp)
Lj808:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj807
	jmp	Lj809
Lj809:
	movl	-12(%ebp),%eax
	movl	$0,68(%eax)
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj825
	.align 2
Lj824:
	movl	-32(%ebp),%eax
	cmpb	$0,34(%eax)
	jne	Lj827
	jmp	Lj828
Lj827:
	movl	-32(%ebp),%eax
	movb	$0,34(%eax)
	movl	-32(%ebp),%eax
	leal	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
Lj828:
	movl	-32(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-32(%ebp)
Lj825:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj824
	jmp	Lj826
Lj826:
	movl	-12(%ebp),%eax
	movl	$0,72(%eax)
Lj804:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	60(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	$0,60(%eax,%edx,4)
	jmp	Lj844
	.align 2
Lj843:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%ecx
	movl	8(%edx),%eax
	addl	%eax,%ecx
	addl	$12,%ecx
	movl	%ecx,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_FREE_LARGE$J_COMMON_PTR$POINTER$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,76(%eax)
	movl	-36(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj844:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj843
	jmp	Lj845
Lj845:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	52(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,52(%edx,%eax,4)
	jmp	Lj863
	.align 2
Lj862:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	4(%eax),%edx
	movl	8(%ecx),%eax
	addl	%eax,%edx
	addl	$12,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_FREE_SMALL$J_COMMON_PTR$POINTER$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,76(%edx)
	movl	-40(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj863:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj862
	jmp	Lj864
Lj864:
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_SELF_DESTRUCT$J_COMMON_PTR
_JMEMMGR_SELF_DESTRUCT$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$1,-8(%ebp)
	incl	-8(%ebp)
	.align 2
Lj881:
	decl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT$stub
	cmpl	$0,-8(%ebp)
	jg	Lj881
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$84,%ecx
	call	L_JMEMNOBS_JPEG_FREE_SMALL$J_COMMON_PTR$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_MEM_TERM$J_COMMON_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR
_JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj897
Lj897:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	$1000000000,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1000000000,%eax
	jne	Lj902
	jmp	Lj904
Lj904:
	jmp	Lj903
Lj902:
	movl	-4(%ebp),%eax
	movb	$3,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj903:
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_MEM_INIT$J_COMMON_PTR$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$84,%edx
	call	L_JMEMNOBS_JPEG_GET_SMALL$J_COMMON_PTR$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj919
	jmp	Lj920
Lj919:
	movl	-4(%ebp),%eax
	call	L_JMEMNOBS_JPEG_MEM_TERM$J_COMMON_PTR$stub
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movb	$55,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj920:
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_REQUEST_VIRT_SARRAY$crcA0C60AE2$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_REQUEST_VIRT_BARRAY$crcA0C60AE2$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_REALIZE_VIRT_ARRAYS$J_COMMON_PTR$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_ACCESS_VIRT_SARRAY$crc9C4D04F1$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_ACCESS_VIRT_BARRAY$crcC7EE9548$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	L_JMEMMGR_SELF_DESTRUCT$J_COMMON_PTR$non_lazy_ptr-Lj897(%ebx),%eax
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	movl	$1000000000,48(%eax)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,44(%eax)
	movl	$1,-16(%ebp)
	incl	-16(%ebp)
	.align 2
Lj957:
	decl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,52(%eax,%edx,4)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,60(%eax,%edx,4)
	cmpl	$0,-16(%ebp)
	jg	Lj957
	movl	-8(%ebp),%eax
	movl	$0,68(%eax)
	movl	-8(%ebp),%eax
	movl	$0,72(%eax)
	movl	-8(%ebp),%eax
	movl	$84,76(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-24(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JMEMMGR
_THREADVARLIST_JMEMMGR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JMEMMGR_FIRST_POOL_SLOP
_TC_JMEMMGR_FIRST_POOL_SLOP:
	.long	1600,16000

.data
	.align 2
.globl	_TC_JMEMMGR_EXTRA_POOL_SLOP
_TC_JMEMMGR_EXTRA_POOL_SLOP:
	.long	0,5000
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

L_JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT$stub:
.indirect_symbol _JMEMMGR_OUT_OF_MEMORY$J_COMMON_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_GET_SMALL$J_COMMON_PTR$LONGINT$$POINTER$stub:
.indirect_symbol _JMEMNOBS_JPEG_GET_SMALL$J_COMMON_PTR$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_GET_LARGE$J_COMMON_PTR$LONGINT$$POINTER$stub:
.indirect_symbol _JMEMNOBS_JPEG_GET_LARGE$J_COMMON_PTR$LONGINT$$POINTER
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

L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub:
.indirect_symbol _JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$stub:
.indirect_symbol _JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_MEM_AVAILABLE$J_COMMON_PTR$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JMEMNOBS_JPEG_MEM_AVAILABLE$J_COMMON_PTR$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_OPEN_BACKING_STORE$J_COMMON_PTR$BACKING_STORE_PTR$LONGINT$stub:
.indirect_symbol _JMEMNOBS_JPEG_OPEN_BACKING_STORE$J_COMMON_PTR$BACKING_STORE_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY$stub:
.indirect_symbol _JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY$stub:
.indirect_symbol _JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_DO_SARRAY_IO$J_COMMON_PTR$JVIRT_SARRAY_PTR$BOOLEAN$stub:
.indirect_symbol _JMEMMGR_DO_SARRAY_IO$J_COMMON_PTR$JVIRT_SARRAY_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub:
.indirect_symbol _JUTILS_JZERO_FAR$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_DO_BARRAY_IO$J_COMMON_PTR$JVIRT_BARRAY_PTR$BOOLEAN$stub:
.indirect_symbol _JMEMMGR_DO_BARRAY_IO$J_COMMON_PTR$JVIRT_BARRAY_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_FREE_LARGE$J_COMMON_PTR$POINTER$LONGINT$stub:
.indirect_symbol _JMEMNOBS_JPEG_FREE_LARGE$J_COMMON_PTR$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_FREE_SMALL$J_COMMON_PTR$POINTER$LONGINT$stub:
.indirect_symbol _JMEMNOBS_JPEG_FREE_SMALL$J_COMMON_PTR$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT$stub:
.indirect_symbol _JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_MEM_TERM$J_COMMON_PTR$stub:
.indirect_symbol _JMEMNOBS_JPEG_MEM_TERM$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMNOBS_JPEG_MEM_INIT$J_COMMON_PTR$$LONGINT$stub:
.indirect_symbol _JMEMNOBS_JPEG_MEM_INIT$J_COMMON_PTR$$LONGINT
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
L_TC_JMEMMGR_FIRST_POOL_SLOP$non_lazy_ptr:
.indirect_symbol _TC_JMEMMGR_FIRST_POOL_SLOP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JMEMMGR_EXTRA_POOL_SLOP$non_lazy_ptr:
.indirect_symbol _TC_JMEMMGR_EXTRA_POOL_SLOP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$non_lazy_ptr:
.indirect_symbol _JMEMMGR_ALLOC_SMALL$J_COMMON_PTR$LONGINT$LONGINT$$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER$non_lazy_ptr:
.indirect_symbol _JMEMMGR_ALLOC_LARGE$J_COMMON_PTR$LONGINT$LONGINT$$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY$non_lazy_ptr:
.indirect_symbol _JMEMMGR_ALLOC_SARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JSAMPARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY$non_lazy_ptr:
.indirect_symbol _JMEMMGR_ALLOC_BARRAY$J_COMMON_PTR$LONGINT$LONGWORD$LONGWORD$$JBLOCKARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_REQUEST_VIRT_SARRAY$crcA0C60AE2$non_lazy_ptr:
.indirect_symbol _JMEMMGR_REQUEST_VIRT_SARRAY$crcA0C60AE2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_REQUEST_VIRT_BARRAY$crcA0C60AE2$non_lazy_ptr:
.indirect_symbol _JMEMMGR_REQUEST_VIRT_BARRAY$crcA0C60AE2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_REALIZE_VIRT_ARRAYS$J_COMMON_PTR$non_lazy_ptr:
.indirect_symbol _JMEMMGR_REALIZE_VIRT_ARRAYS$J_COMMON_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_ACCESS_VIRT_SARRAY$crc9C4D04F1$non_lazy_ptr:
.indirect_symbol _JMEMMGR_ACCESS_VIRT_SARRAY$crc9C4D04F1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_ACCESS_VIRT_BARRAY$crcC7EE9548$non_lazy_ptr:
.indirect_symbol _JMEMMGR_ACCESS_VIRT_BARRAY$crcC7EE9548
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT$non_lazy_ptr:
.indirect_symbol _JMEMMGR_FREE_POOL$J_COMMON_PTR$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JMEMMGR_SELF_DESTRUCT$J_COMMON_PTR$non_lazy_ptr:
.indirect_symbol _JMEMMGR_SELF_DESTRUCT$J_COMMON_PTR
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

