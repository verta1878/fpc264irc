# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCPARAM_JPEG_ADD_QUANT_TABLE$J_COMPRESS_PTR$LONGINT$array_of_LONGWORD$LONGINT$BOOLEAN
_JCPARAM_JPEG_ADD_QUANT_TABLE$J_COMPRESS_PTR$LONGINT$array_of_LONGWORD$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
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
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj13
	jmp	Lj15
Lj15:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj13
	jmp	Lj14
Lj13:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj14:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	leal	68(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj24
	jmp	Lj25
Lj24:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR$stub
	movl	-16(%ebp),%edx
	movl	%eax,(%edx)
Lj25:
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj32:
	incl	-20(%ebp)
	movl	12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	$0,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ecx
	addl	$50,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj41
	jmp	Lj42
Lj41:
	movl	$1,-24(%ebp)
Lj42:
	movl	-24(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj45
	jmp	Lj46
Lj45:
	movl	$32767,-24(%ebp)
Lj46:
	cmpb	$0,8(%ebp)
	jne	Lj51
	jmp	Lj50
Lj51:
	movl	-24(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj49
	jmp	Lj50
Lj49:
	movl	$255,-24(%ebp)
Lj50:
	movl	-16(%ebp),%eax
	movl	(%eax),%ecx
	movl	-20(%ebp),%edx
	movw	-24(%ebp),%ax
	movw	%ax,(%ecx,%edx,2)
	cmpl	$63,-20(%ebp)
	jl	Lj32
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,128(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN
_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	call	Lj59
Lj59:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$63,8(%esp)
	movb	-12(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_LUMINANCE_QUANT_TBL$non_lazy_ptr-Lj59(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_JCPARAM_JPEG_ADD_QUANT_TABLE$J_COMPRESS_PTR$LONGINT$array_of_LONGWORD$LONGINT$BOOLEAN$stub
	movl	$63,8(%esp)
	movb	-12(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_CHROMINANCE_QUANT_TBL$non_lazy_ptr-Lj59(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_JCPARAM_JPEG_ADD_QUANT_TABLE$J_COMPRESS_PTR$LONGINT$array_of_LONGWORD$LONGINT$BOOLEAN$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_QUALITY_SCALING$LONGINT$$LONGINT
_JCPARAM_JPEG_QUALITY_SCALING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj86
	jmp	Lj87
Lj86:
	movl	$1,-4(%ebp)
Lj87:
	movl	-4(%ebp),%eax
	cmpl	$100,%eax
	jg	Lj90
	jmp	Lj91
Lj90:
	movl	$100,-4(%ebp)
Lj91:
	movl	-4(%ebp),%eax
	cmpl	$50,%eax
	jl	Lj94
	jmp	Lj95
Lj94:
	movl	$5000,%eax
	cltd
	idivl	-4(%ebp)
	movl	%eax,-4(%ebp)
	jmp	Lj98
Lj95:
	movl	-4(%ebp),%eax
	shll	$1,%eax
	movl	$200,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-4(%ebp)
Lj98:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_SET_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN
_JCPARAM_JPEG_SET_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_JCPARAM_JPEG_QUALITY_SCALING$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE
_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj117
	jmp	Lj118
Lj117:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj118:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	$17,%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	$0,-16(%ebp)
	movl	$1,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj133:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	addl	%eax,-16(%ebp)
	cmpl	$16,-20(%ebp)
	jl	Lj133
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj134
	jmp	Lj136
Lj136:
	movl	-16(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj134
	jmp	Lj135
Lj134:
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj135:
	movl	12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	17(%eax),%eax
	movl	-16(%ebp),%ecx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,273(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR
_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj150
Lj150:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$11,(%esp)
	movl	$16,8(%esp)
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_LUMINANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	84(%eax),%edx
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_LUMINANCE$non_lazy_ptr-Lj150(%ebx),%ecx
	movl	-4(%ebp),%eax
	call	L_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE$stub
	movl	$161,(%esp)
	movl	$16,8(%esp)
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_LUMINANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	100(%eax),%edx
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_LUMINANCE$non_lazy_ptr-Lj150(%ebx),%ecx
	movl	-4(%ebp),%eax
	call	L_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE$stub
	movl	$11,(%esp)
	movl	$16,8(%esp)
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_CHROMINANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	88(%eax),%edx
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_CHROMINANCE$non_lazy_ptr-Lj150(%ebx),%ecx
	movl	-4(%ebp),%eax
	call	L_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE$stub
	movl	$161,(%esp)
	movl	$16,8(%esp)
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_CHROMINANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	104(%eax),%edx
	movl	L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_CHROMINANCE$non_lazy_ptr-Lj150(%ebx),%ecx
	movl	-4(%ebp),%eax
	call	L_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_SET_DEFAULTS$J_COMPRESS_PTR
_JCPARAM_JPEG_SET_DEFAULTS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj202:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj209
	jmp	Lj210
Lj209:
	movl	-4(%ebp),%eax
	movl	$840,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
Lj210:
	movl	-4(%ebp),%eax
	movl	$8,52(%eax)
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movl	$75,%edx
	call	L_JCPARAM_JPEG_SET_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR$stub
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj231:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$0,116(%eax,%edx,1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$1,132(%eax,%edx,1)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$5,148(%eax,%edx,1)
	cmpl	$15,-8(%ebp)
	jl	Lj231
	movl	-4(%ebp),%eax
	movl	$0,168(%eax)
	movl	-4(%ebp),%eax
	movl	$0,164(%eax)
	movl	-4(%ebp),%eax
	movb	$0,172(%eax)
	movl	-4(%ebp),%eax
	movb	$0,173(%eax)
	movl	-4(%ebp),%eax
	movb	$0,174(%eax)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$8,%eax
	jg	Lj248
	jmp	Lj249
Lj248:
	movl	-4(%ebp),%eax
	movb	$1,174(%eax)
Lj249:
	movl	-4(%ebp),%eax
	movb	$0,175(%eax)
	movl	-4(%ebp),%eax
	movl	$0,176(%eax)
	movl	-4(%ebp),%eax
	movb	$0,180(%eax)
	movl	-4(%ebp),%eax
	movl	$0,184(%eax)
	movl	-4(%ebp),%eax
	movl	$0,188(%eax)
	movl	-4(%ebp),%eax
	movb	$1,193(%eax)
	movl	-4(%ebp),%eax
	movb	$1,194(%eax)
	movl	-4(%ebp),%eax
	movb	$0,195(%eax)
	movl	-4(%ebp),%eax
	movw	$1,196(%eax)
	movl	-4(%ebp),%eax
	movw	$1,198(%eax)
	movl	-4(%ebp),%eax
	call	L_JCPARAM_JPEG_DEFAULT_COLORSPACE$J_COMPRESS_PTR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_DEFAULT_COLORSPACE$J_COMPRESS_PTR
_JCPARAM_JPEG_DEFAULT_COLORSPACE$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	testb	%al,%al
	je	Lj283
	decb	%al
	je	Lj278
	decb	%al
	je	Lj279
	decb	%al
	je	Lj280
	decb	%al
	je	Lj281
	decb	%al
	je	Lj282
	jmp	Lj277
Lj278:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	jmp	Lj276
Lj279:
	movl	-4(%ebp),%eax
	movb	$3,%dl
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	jmp	Lj276
Lj280:
	movl	-4(%ebp),%eax
	movb	$3,%dl
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	jmp	Lj276
Lj281:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	jmp	Lj276
Lj282:
	movl	-4(%ebp),%eax
	movb	$5,%dl
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	jmp	Lj276
Lj283:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE$stub
	jmp	Lj276
Lj277:
	movl	-4(%ebp),%eax
	movb	$9,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj276:
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE
_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj316
	jmp	Lj317
Lj316:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj317:
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,60(%eax)
	movl	-4(%ebp),%eax
	movb	$0,192(%eax)
	movl	-4(%ebp),%eax
	movb	$0,200(%eax)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj337
	decb	%al
	je	Lj332
	decb	%al
	je	Lj333
	decb	%al
	je	Lj334
	decb	%al
	je	Lj335
	decb	%al
	je	Lj336
	jmp	Lj331
Lj332:
	movl	-4(%ebp),%eax
	movb	$1,192(%eax)
	movl	-4(%ebp),%eax
	movl	$1,56(%eax)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	jmp	Lj330
Lj333:
	movl	-4(%ebp),%eax
	movb	$1,200(%eax)
	movl	-4(%ebp),%eax
	movl	$3,56(%eax)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$82,%ecx
	movl	$0,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$71,%ecx
	movl	$1,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$66,%ecx
	movl	$2,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	jmp	Lj330
Lj334:
	movl	-4(%ebp),%eax
	movb	$1,192(%eax)
	movl	-4(%ebp),%eax
	movl	$3,56(%eax)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$2,12(%esp)
	movl	$2,16(%esp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$1,(%esp)
	movl	$1,4(%esp)
	movl	$1,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$1,(%esp)
	movl	$1,4(%esp)
	movl	$1,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$3,%ecx
	movl	$2,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	jmp	Lj330
Lj335:
	movl	-4(%ebp),%eax
	movb	$1,200(%eax)
	movl	-4(%ebp),%eax
	movl	$4,56(%eax)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$67,%ecx
	movl	$0,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$77,%ecx
	movl	$1,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$89,%ecx
	movl	$2,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$75,%ecx
	movl	$3,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	jmp	Lj330
Lj336:
	movl	-4(%ebp),%eax
	movb	$1,200(%eax)
	movl	-4(%ebp),%eax
	movl	$4,56(%eax)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$2,12(%esp)
	movl	$2,16(%esp)
	movl	%ebp,%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$1,(%esp)
	movl	$1,4(%esp)
	movl	$1,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$1,(%esp)
	movl	$1,4(%esp)
	movl	$1,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	%ebp,%eax
	movl	$3,%ecx
	movl	$2,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$2,12(%esp)
	movl	$2,16(%esp)
	movl	%ebp,%eax
	movl	$4,%ecx
	movl	$3,%edx
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	jmp	Lj330
Lj337:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,56(%edx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	jl	Lj600
	jmp	Lj602
Lj602:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$10,%eax
	jg	Lj600
	jmp	Lj601
Lj600:
	movl	$10,(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj601:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj612
	decl	-12(%ebp)
	.align 2
Lj613:
	incl	-12(%ebp)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$1,12(%esp)
	movl	$1,16(%esp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj613
Lj612:
	jmp	Lj330
Lj331:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj330:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5
_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	64(%eax),%edx
	movl	-4(%ebp),%eax
	imull	$84,%eax
	leal	(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	24(%ebp),%edx
	movl	%edx,8(%eax)
	movl	20(%ebp),%edx
	movl	%edx,12(%eax)
	movl	16(%ebp),%edx
	movl	%edx,16(%eax)
	movl	12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	8(%ebp),%edx
	movl	%edx,24(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_FILL_A_SCAN$crcC4931210
_JCPARAM_FILL_A_SCAN$crcC4931210:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,32(%eax)
	addl	$36,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_FILL_SCANS$crcC4931210
_JCPARAM_FILL_SCANS$crcC4931210:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj667
	decl	-20(%ebp)
	.align 2
Lj668:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	$1,(%edx)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%edx,4(%ecx)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	%edx,20(%ecx)
	movl	-4(%ebp),%edx
	movl	16(%ebp),%ecx
	movl	%ecx,24(%edx)
	movl	-4(%ebp),%edx
	movl	12(%ebp),%ecx
	movl	%ecx,28(%edx)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%ecx
	movl	%ecx,32(%edx)
	addl	$36,-4(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj668
Lj667:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR
_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jle	Lj685
	jmp	Lj686
Lj685:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj690
	decl	-20(%ebp)
	.align 2
Lj691:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%ebx
	movl	-20(%ebp),%ecx
	movl	%ecx,4(%edx,%ebx,4)
	cmpl	-20(%ebp),%eax
	jg	Lj691
Lj690:
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,32(%edx)
	addl	$36,-4(%ebp)
	jmp	Lj702
Lj686:
	movl	$0,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_JCPARAM_FILL_SCANS$crcC4931210$stub
	movl	%eax,-4(%ebp)
Lj702:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPARAM_JPEG_SIMPLE_PROGRESSION$J_COMPRESS_PTR
_JCPARAM_JPEG_SIMPLE_PROGRESSION$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$100,%eax
	jne	Lj723
	jmp	Lj724
Lj723:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj724:
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	je	Lj733
	jmp	Lj732
Lj733:
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	cmpb	$3,%al
	je	Lj731
	jmp	Lj732
Lj731:
	movl	$10,-12(%ebp)
	jmp	Lj736
Lj732:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj737
	jmp	Lj738
Lj737:
	movl	-8(%ebp),%eax
	imull	$6,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj741
Lj738:
	movl	-8(%ebp),%eax
	shll	$2,%eax
	addl	$2,%eax
	movl	%eax,-12(%ebp)
Lj741:
Lj736:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	je	Lj744
	jmp	Lj746
Lj746:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj744
	jmp	Lj745
Lj744:
	movl	-12(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj747
	jmp	Lj748
Lj747:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,352(%eax)
	jmp	Lj751
Lj748:
	movl	-4(%ebp),%eax
	movl	$10,352(%eax)
Lj751:
	movl	-4(%ebp),%eax
	movl	352(%eax),%ecx
	imull	$36,%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,348(%edx)
Lj745:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,168(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,164(%edx)
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	je	Lj770
	jmp	Lj769
Lj770:
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	cmpb	$3,%al
	je	Lj768
	jmp	Lj769
Lj768:
	movl	$1,(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,%ecx
	call	L_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR$stub
	movl	%eax,-16(%ebp)
	movl	$2,(%esp)
	movl	$0,4(%esp)
	movl	$5,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$1,(%esp)
	movl	$0,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$2,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$1,(%esp)
	movl	$0,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$2,(%esp)
	movl	$0,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$6,%ecx
	movl	$0,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$1,(%esp)
	movl	$2,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR$stub
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	$1,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$2,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	$1,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	$1,4(%esp)
	movl	$63,8(%esp)
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_JCPARAM_FILL_A_SCAN$crcC4931210$stub
	movl	%eax,-16(%ebp)
	jmp	Lj903
Lj769:
	movl	$1,(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,%ecx
	call	L_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR$stub
	movl	%eax,-16(%ebp)
	movl	$2,(%esp)
	movl	$0,4(%esp)
	movl	$5,8(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPARAM_FILL_SCANS$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$2,(%esp)
	movl	$0,4(%esp)
	movl	$63,8(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$6,%ecx
	call	L_JCPARAM_FILL_SCANS$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$1,(%esp)
	movl	$2,4(%esp)
	movl	$63,8(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPARAM_FILL_SCANS$crcC4931210$stub
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR$stub
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	$1,4(%esp)
	movl	$63,8(%esp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPARAM_FILL_SCANS$crcC4931210$stub
	movl	%eax,-16(%ebp)
Lj903:
	movl	-20(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCPARAM
_THREADVARLIST_JCPARAM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_LUMINANCE_QUANT_TBL
_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_LUMINANCE_QUANT_TBL:
	.long	16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56
	.long	68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99

.data
	.align 2
.globl	_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_CHROMINANCE_QUANT_TBL
_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_CHROMINANCE_QUANT_TBL:
	.long	17,18,24,47,99,99,99,99,18,21,26,66,99,99,99,99,24,26,56,99,99,99,99,99,47,66,99,99,99,99,99,99,99,99,99,99
	.long	99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_LUMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_LUMINANCE:
	.byte	0,0,1,5,1,1,1,1,1,1,0,0,0,0,0,0,0

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_LUMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_LUMINANCE:
	.byte	0,1,2,3,4,5,6,7,8,9,10,11

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_CHROMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_CHROMINANCE:
	.byte	0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_CHROMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_CHROMINANCE:
	.byte	0,1,2,3,4,5,6,7,8,9,10,11

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_LUMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_LUMINANCE:
	.byte	0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_LUMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_LUMINANCE:
	.byte	1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114
	.byte	130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89
	.byte	90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138
	.byte	146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183
	.byte	184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227
	.byte	228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_CHROMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_CHROMINANCE:
	.byte	0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119

.data
.globl	_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_CHROMINANCE
_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_CHROMINANCE:
	.byte	0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209
	.byte	10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87
	.byte	88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135
	.byte	136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180
	.byte	181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218
	.byte	226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250
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

L_JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ALLOC_QUANT_TABLE$J_COMMON_PTR$$JQUANT_TBL_PTR
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

L_JCPARAM_JPEG_ADD_QUANT_TABLE$J_COMPRESS_PTR$LONGINT$array_of_LONGWORD$LONGINT$BOOLEAN$stub:
.indirect_symbol _JCPARAM_JPEG_ADD_QUANT_TABLE$J_COMPRESS_PTR$LONGINT$array_of_LONGWORD$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_JPEG_QUALITY_SCALING$LONGINT$$LONGINT$stub:
.indirect_symbol _JCPARAM_JPEG_QUALITY_SCALING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub:
.indirect_symbol _JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE$stub:
.indirect_symbol _JCPARAM_ADD_HUFF_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$array_of_BYTE$array_of_BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_JPEG_SET_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN$stub:
.indirect_symbol _JCPARAM_JPEG_SET_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR$stub:
.indirect_symbol _JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_JPEG_DEFAULT_COLORSPACE$J_COMPRESS_PTR$stub:
.indirect_symbol _JCPARAM_JPEG_DEFAULT_COLORSPACE$J_COMPRESS_PTR
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

L_JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5$stub:
.indirect_symbol _JCPARAM_JPEG_SET_COLORSPACE$J_COMPRESS_PTR$J_COLOR_SPACE_SET_COMP$crc784D96C5
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

L_JCPARAM_FILL_SCANS$crcC4931210$stub:
.indirect_symbol _JCPARAM_FILL_SCANS$crcC4931210
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR$stub:
.indirect_symbol _JCPARAM_FILL_DC_SCANS$JPEG_SCAN_INFO_PTR$LONGINT$LONGINT$LONGINT$$JPEG_SCAN_INFO_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPARAM_FILL_A_SCAN$crcC4931210$stub:
.indirect_symbol _JCPARAM_FILL_A_SCAN$crcC4931210
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
L_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_LUMINANCE_QUANT_TBL$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_LUMINANCE_QUANT_TBL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_CHROMINANCE_QUANT_TBL$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_JPEG_SET_LINEAR_QUALITY$J_COMPRESS_PTR$LONGINT$BOOLEAN_STD_CHROMINANCE_QUANT_TBL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_LUMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_LUMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_LUMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_LUMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_LUMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_LUMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_LUMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_LUMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_CHROMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_DC_CHROMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_CHROMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_DC_CHROMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_CHROMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_VAL_AC_CHROMINANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_CHROMINANCE$non_lazy_ptr:
.indirect_symbol _TC_JCPARAM_STD_HUFF_TABLES$J_COMPRESS_PTR_BITS_AC_CHROMINANCE
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

