# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCTRANS_JPEG_WRITE_COEFFICIENTS$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR
_JCTRANS_JPEG_WRITE_COEFFICIENTS$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj6:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	16(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCTRANS_TRANSENCODE_MASTER_SELECTION$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR$stub
	movl	-4(%ebp),%eax
	movl	$0,204(%eax)
	movl	-4(%ebp),%eax
	movl	$103,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCTRANS_JPEG_COPY_CRITICAL_PARAMETERS$J_DECOMPRESS_PTR$J_COMPRESS_PTR
_JCTRANS_JPEG_COPY_CRITICAL_PARAMETERS$J_DECOMPRESS_PTR$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj31
	jmp	Lj32
Lj31:
	movl	-8(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj32:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	movb	%al,40(%edx)
	movl	-8(%ebp),%eax
	call	L_JCPARAM_JPEG_SET_DEFAULTS$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movb	40(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	%eax,52(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	250(%eax),%al
	movb	%al,175(%edx)
	movl	$0,-32(%ebp)
	decl	-32(%ebp)
	.align 2
Lj59:
	incl	-32(%ebp)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	128(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj60
	jmp	Lj61
Lj60:
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	leal	68(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj64
	jmp	Lj65
Lj64:
	movl	-8(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR$stub
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
Lj65:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	128(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	$128,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,128(%eax)
Lj61:
	cmpl	$3,-32(%ebp)
	jl	Lj59
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	jl	Lj80
	jmp	Lj82
Lj82:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$10,%eax
	jg	Lj80
	jmp	Lj81
Lj80:
	movl	$10,(%esp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-8(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj81:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj96
	decl	-36(%ebp)
	.align 2
Lj97:
	incl	-36(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj108
	jmp	Lj111
Lj111:
	movl	-32(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj108
	jmp	Lj110
Lj110:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	128(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj108
	jmp	Lj109
Lj108:
	movl	-32(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$53,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj109:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	128(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj122
	jmp	Lj123
Lj122:
	movl	$0,-40(%ebp)
	decl	-40(%ebp)
	.align 2
Lj126:
	incl	-40(%ebp)
	movl	-24(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	-28(%ebp),%esi
	movl	-40(%ebp),%ecx
	movw	(%eax,%edx,2),%ax
	cmpw	(%esi,%ecx,2),%ax
	jne	Lj127
	jmp	Lj128
Lj127:
	movl	-32(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$45,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj128:
	cmpl	$63,-40(%ebp)
	jl	Lj126
Lj123:
	addl	$84,-16(%ebp)
	addl	$84,-20(%ebp)
	cmpl	-36(%ebp),%ebx
	jg	Lj97
Lj96:
	movl	-4(%ebp),%eax
	cmpb	$0,240(%eax)
	jne	Lj135
	jmp	Lj136
Lj135:
	movl	-4(%ebp),%eax
	movzbl	241(%eax),%eax
	cmpl	$1,%eax
	je	Lj137
	jmp	Lj138
Lj137:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	241(%eax),%al
	movb	%al,193(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	242(%eax),%al
	movb	%al,194(%edx)
Lj138:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	243(%eax),%al
	movb	%al,195(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	244(%eax),%ax
	movw	%ax,196(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	246(%eax),%ax
	movw	%ax,198(%edx)
Lj136:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCTRANS_TRANSENCODE_MASTER_SELECTION$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR
_JCTRANS_TRANSENCODE_MASTER_SELECTION$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,36(%eax)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj157
	jmp	Lj158
Lj157:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
	jmp	Lj163
Lj158:
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj164
	jmp	Lj165
Lj164:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR$stub
	jmp	Lj168
Lj165:
	movl	-4(%ebp),%eax
	call	L_JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR$stub
Lj168:
Lj163:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCTRANS_TRANSENCODE_COEF_CONTROLLER$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	24(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JCTRANS_START_IMCU_ROW$J_COMPRESS_PTR
_JCTRANS_START_IMCU_ROW$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	cmpl	$1,%eax
	jg	Lj185
	jmp	Lj186
Lj185:
	movl	-8(%ebp),%eax
	movl	$1,20(%eax)
	jmp	Lj189
Lj186:
	movl	-4(%ebp),%eax
	movl	220(%eax),%ebx
	movl	$0,%ecx
	subl	$1,%ebx
	sbbl	$0,%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$0,%edx
	cmpl	%edx,%ecx
	jg	Lj190
	jl	Lj191
	cmpl	%eax,%ebx
	ja	Lj190
	jmp	Lj191
Lj190:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,20(%edx)
	jmp	Lj194
Lj191:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	-8(%ebp),%edx
	movl	72(%eax),%eax
	movl	%eax,20(%edx)
Lj194:
Lj189:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCTRANS_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE
_JCTRANS_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-12(%ebp)
	movb	-8(%ebp),%al
	cmpb	$2,%al
	jne	Lj205
	jmp	Lj206
Lj205:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj206:
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	call	L_JCTRANS_START_IMCU_ROW$J_COMPRESS_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JCTRANS_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
_JCTRANS_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	244(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	220(%eax),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%esi
	decl	%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj224
	decl	-36(%ebp)
	.align 2
Lj225:
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-120(%ebp)
	movl	-120(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ecx
	movb	$0,(%esp)
	movl	-120(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	-120(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
	movl	-36(%ebp),%edx
	movl	%eax,-72(%ebp,%edx,4)
	cmpl	-36(%ebp),%esi
	jg	Lj225
Lj224:
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	decl	%eax
	movl	%eax,-124(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-124(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jl	Lj247
	decl	-48(%ebp)
	.align 2
Lj248:
	incl	-48(%ebp)
	movl	-4(%ebp),%eax
	movl	244(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jb	Lj250
	decl	-20(%ebp)
	.align 2
Lj251:
	incl	-20(%ebp)
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj255
	decl	-36(%ebp)
	.align 2
Lj256:
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-120(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-120(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-56(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj267
	jmp	Lj268
Lj267:
	movl	-120(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-52(%ebp)
	jmp	Lj271
Lj268:
	movl	-120(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-52(%ebp)
Lj271:
	movl	-120(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%edx
	jl	Lj275
	decl	-44(%ebp)
	.align 2
Lj276:
	incl	-44(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj277
	jmp	Lj279
Lj279:
	movl	-44(%ebp),%ecx
	movl	-48(%ebp),%eax
	addl	%eax,%ecx
	movl	-120(%ebp),%eax
	cmpl	72(%eax),%ecx
	jl	Lj277
	jmp	Lj278
Lj277:
	movl	-36(%ebp),%eax
	movl	-72(%ebp,%eax,4),%ecx
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edi
	addl	%edi,%eax
	movl	(%ecx,%eax,4),%ecx
	movl	-56(%ebp),%eax
	shll	$8,%eax
	leal	(%ecx,%eax),%eax
	movl	%eax,-116(%ebp)
	movl	-52(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%ecx
	jl	Lj283
	decl	-40(%ebp)
	.align 2
Lj284:
	incl	-40(%ebp)
	movl	-32(%ebp),%eax
	movl	-116(%ebp),%edi
	movl	%edi,-112(%ebp,%eax,4)
	incl	-32(%ebp)
	addl	$256,-116(%ebp)
	cmpl	-40(%ebp),%ecx
	jg	Lj284
Lj283:
	movl	-52(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj289
Lj278:
	movl	$0,-40(%ebp)
Lj289:
	jmp	Lj293
	.align 2
Lj292:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edi
	movl	-32(%ebp),%ecx
	movl	28(%eax,%edi,4),%eax
	movl	%eax,-112(%ebp,%ecx,4)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-112(%ebp,%eax,4),%ecx
	movl	-32(%ebp),%eax
	movl	-112(%ebp,%eax,4),%edi
	movl	(%ecx),%eax
	movl	%eax,(%edi)
	incl	-40(%ebp)
	incl	-32(%ebp)
Lj293:
	movl	-120(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj292
	jmp	Lj294
Lj294:
	cmpl	-44(%ebp),%edx
	jg	Lj276
Lj275:
	cmpl	-36(%ebp),%ebx
	jg	Lj256
Lj255:
	leal	-112(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	movl	-4(%ebp),%ebx
	movl	344(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	testb	%al,%al
	je	Lj299
	jmp	Lj300
Lj299:
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,12(%eax)
	movb	$0,-9(%ebp)
	jmp	Lj215
Lj300:
	cmpl	-20(%ebp),%esi
	ja	Lj251
Lj250:
	movl	-16(%ebp),%eax
	movl	$0,12(%eax)
	movl	-124(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jg	Lj248
Lj247:
	movl	-16(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%eax
	call	L_JCTRANS_START_IMCU_ROW$J_COMPRESS_PTR$stub
	movb	$1,-9(%ebp)
Lj215:
	movb	-9(%ebp),%al
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCTRANS_TRANSENCODE_COEF_CONTROLLER$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR
_JCTRANS_TRANSENCODE_COEF_CONTROLLER$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj320
Lj320:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$68,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,324(%edx)
	movl	-12(%ebp),%edx
	movl	L_JCTRANS_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr-Lj320(%esi),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	L_JCTRANS_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr-Lj320(%esi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	$2560,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$2560,%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj351:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	shll	$8,%eax
	leal	(%edx,%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%ecx,28(%eax,%edx,4)
	cmpl	$9,-20(%ebp)
	jl	Lj351
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCTRANS
_THREADVARLIST_JCTRANS:
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

L_JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCAPIMIN_JPEG_SUPPRESS_TABLES$J_COMPRESS_PTR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCTRANS_TRANSENCODE_MASTER_SELECTION$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR$stub:
.indirect_symbol _JCTRANS_TRANSENCODE_MASTER_SELECTION$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_JPEG_SET_DEFAULTS$J_COMPRESS_PTR$stub:
.indirect_symbol _JCPARAM_JPEG_SET_DEFAULTS$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub:
.indirect_symbol _JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR
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

L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN$stub:
.indirect_symbol _JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN
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

L_JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCHUFF_JINIT_HUFF_ENCODER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCTRANS_TRANSENCODE_COEF_CONTROLLER$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR$stub:
.indirect_symbol _JCTRANS_TRANSENCODE_COEF_CONTROLLER$J_COMPRESS_PTR$JVIRT_BARRAY_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMARKER_JINIT_MARKER_WRITER$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCTRANS_START_IMCU_ROW$J_COMPRESS_PTR$stub:
.indirect_symbol _JCTRANS_START_IMCU_ROW$J_COMPRESS_PTR
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

L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub:
.indirect_symbol _JUTILS_JZERO_FAR$POINTER$LONGINT
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
L_JCTRANS_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr:
.indirect_symbol _JCTRANS_START_PASS_COEF$J_COMPRESS_PTR$J_BUF_MODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCTRANS_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCTRANS_COMPRESS_OUTPUT$J_COMPRESS_PTR$JSAMPIMAGE$$BOOLEAN
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

