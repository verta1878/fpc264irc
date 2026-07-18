# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR
_JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	332(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$8192,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj19:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	imull	$19595,%eax
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	movl	-16(%ebp),%edx
	imull	$38470,%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	$256,%eax
	movl	%edx,(%ecx,%eax,4)
	movl	-16(%ebp),%edx
	imull	$7471,%edx
	addl	$32768,%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	$512,%eax
	movl	%edx,(%ecx,%eax,4)
	movl	-16(%ebp),%edx
	imull	$-11059,%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	$768,%eax
	movl	%edx,(%ecx,%eax,4)
	movl	-16(%ebp),%edx
	imull	$-21709,%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	$1024,%eax
	movl	%edx,(%ecx,%eax,4)
	movl	-16(%ebp),%eax
	shll	$15,%eax
	addl	$8388608,%eax
	addl	$32768,%eax
	decl	%eax
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	addl	$1280,%edx
	movl	%eax,(%ecx,%edx,4)
	movl	-16(%ebp),%edx
	imull	$-27439,%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	$1536,%eax
	movl	%edx,(%ecx,%eax,4)
	movl	-16(%ebp),%edx
	imull	$-5329,%edx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	$1792,%eax
	movl	%edx,(%ecx,%eax,4)
	cmpl	$255,-16(%ebp)
	jl	Lj19
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_RGB_YCC_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
_JCCOLOR_RGB_YCC_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	332(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj45
	.align 2
Lj44:
	decl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	addl	$4,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-48(%ebp)
	incl	12(%ebp)
	movl	-56(%ebp),%eax
	decl	%eax
	movl	$0,-52(%ebp)
	cmpl	-52(%ebp),%eax
	jb	Lj56
	decl	-52(%ebp)
	.align 2
Lj57:
	incl	-52(%ebp)
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-20(%ebp)
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%edx
	movl	%edx,-24(%ebp)
	movl	-36(%ebp),%edx
	movzbl	2(%edx),%edx
	movl	%edx,-28(%ebp)
	addl	$3,-36(%ebp)
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	addl	$256,%edx
	movl	-32(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	(%ecx,%edx,4),%ecx
	movl	(%ebx,%esi,4),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%edx
	addl	$512,%edx
	movl	(%ebx,%edx,4),%edx
	addl	%edx,%ecx
	shrl	$16,%ecx
	movl	-40(%ebp),%edx
	movl	-52(%ebp),%ebx
	movb	%cl,(%edx,%ebx,1)
	movl	-32(%ebp),%esi
	movl	-20(%ebp),%edx
	addl	$768,%edx
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%ebx
	addl	$1024,%ebx
	movl	(%esi,%edx,4),%edx
	movl	(%ecx,%ebx,4),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%ecx
	addl	$1280,%ecx
	movl	(%ebx,%ecx,4),%ecx
	addl	%ecx,%edx
	shrl	$16,%edx
	movl	-44(%ebp),%ebx
	movl	-52(%ebp),%ecx
	movb	%dl,(%ebx,%ecx,1)
	movl	-32(%ebp),%esi
	movl	-20(%ebp),%edx
	addl	$1280,%edx
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%ebx
	addl	$1536,%ebx
	movl	(%esi,%edx,4),%edx
	movl	(%ecx,%ebx,4),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%ecx
	addl	$1792,%ecx
	movl	(%ebx,%ecx,4),%ecx
	addl	%ecx,%edx
	shrl	$16,%edx
	movl	-48(%ebp),%ecx
	movl	-52(%ebp),%ebx
	movb	%dl,(%ecx,%ebx,1)
	cmpl	-52(%ebp),%eax
	ja	Lj57
Lj56:
Lj45:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj44
	jmp	Lj46
Lj46:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_RGB_GRAY_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
_JCCOLOR_RGB_GRAY_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	332(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj79
	.align 2
Lj78:
	decl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	addl	$4,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	incl	12(%ebp)
	movl	-48(%ebp),%eax
	decl	%eax
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jb	Lj86
	decl	-44(%ebp)
	.align 2
Lj87:
	incl	-44(%ebp)
	movl	-36(%ebp),%edx
	movzbl	(%edx),%edx
	movl	%edx,-20(%ebp)
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%edx
	movl	%edx,-24(%ebp)
	movl	-36(%ebp),%edx
	movzbl	2(%edx),%edx
	movl	%edx,-28(%ebp)
	addl	$3,-36(%ebp)
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	addl	$256,%edx
	movl	-32(%ebp),%esi
	movl	-20(%ebp),%ebx
	movl	(%ecx,%edx,4),%ecx
	movl	(%esi,%ebx,4),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%edx
	addl	$512,%edx
	movl	(%ebx,%edx,4),%edx
	addl	%edx,%ecx
	shrl	$16,%ecx
	movl	-40(%ebp),%edx
	movl	-44(%ebp),%ebx
	movb	%cl,(%edx,%ebx,1)
	cmpl	-44(%ebp),%eax
	ja	Lj87
Lj86:
Lj79:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj78
	jmp	Lj80
Lj80:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_CMYK_YCCK_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
_JCCOLOR_CMYK_YCCK_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	332(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-60(%ebp)
	jmp	Lj105
	.align 2
Lj104:
	decl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	addl	$4,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-52(%ebp)
	incl	12(%ebp)
	movl	-60(%ebp),%eax
	decl	%eax
	movl	$0,-56(%ebp)
	cmpl	-56(%ebp),%eax
	jb	Lj118
	decl	-56(%ebp)
	.align 2
Lj119:
	incl	-56(%ebp)
	movl	-36(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	$255,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,-20(%ebp)
	movl	-36(%ebp),%edx
	movzbl	1(%edx),%ecx
	movl	$255,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,-24(%ebp)
	movl	-36(%ebp),%edx
	movzbl	2(%edx),%ecx
	movl	$255,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,-28(%ebp)
	movl	-52(%ebp),%ebx
	movl	-56(%ebp),%ecx
	movl	-36(%ebp),%edx
	movb	3(%edx),%dl
	movb	%dl,(%ebx,%ecx,1)
	addl	$4,-36(%ebp)
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%edx
	addl	$256,%edx
	movl	-32(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	(%ecx,%edx,4),%ecx
	movl	(%ebx,%esi,4),%edx
	addl	%edx,%ecx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%edx
	addl	$512,%edx
	movl	(%ebx,%edx,4),%edx
	addl	%edx,%ecx
	shrl	$16,%ecx
	movl	-40(%ebp),%edx
	movl	-56(%ebp),%ebx
	movb	%cl,(%edx,%ebx,1)
	movl	-32(%ebp),%esi
	movl	-20(%ebp),%edx
	addl	$768,%edx
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%ebx
	addl	$1024,%ebx
	movl	(%esi,%edx,4),%edx
	movl	(%ecx,%ebx,4),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%ecx
	addl	$1280,%ecx
	movl	(%ebx,%ecx,4),%ecx
	addl	%ecx,%edx
	shrl	$16,%edx
	movl	-44(%ebp),%ebx
	movl	-56(%ebp),%ecx
	movb	%dl,(%ebx,%ecx,1)
	movl	-32(%ebp),%esi
	movl	-20(%ebp),%edx
	addl	$1280,%edx
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%ebx
	addl	$1536,%ebx
	movl	(%esi,%edx,4),%edx
	movl	(%ecx,%ebx,4),%ecx
	addl	%ecx,%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%ecx
	addl	$1792,%ecx
	movl	(%ebx,%ecx,4),%ecx
	addl	%ecx,%edx
	shrl	$16,%edx
	movl	-48(%ebp),%ebx
	movl	-56(%ebp),%ecx
	movb	%dl,(%ebx,%ecx,1)
	cmpl	-56(%ebp),%eax
	ja	Lj119
Lj118:
Lj105:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj104
	jmp	Lj106
Lj106:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_GRAYSCALE_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
_JCCOLOR_GRAYSCALE_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj141
	.align 2
Lj140:
	decl	8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	addl	$4,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	incl	12(%ebp)
	movl	-28(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jb	Lj148
	decl	-24(%ebp)
	.align 2
Lj149:
	incl	-24(%ebp)
	movl	-20(%ebp),%ebx
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%edx),%dl
	movb	%dl,(%ebx,%ecx,1)
	movl	-32(%ebp),%edx
	addl	%edx,-16(%ebp)
	cmpl	-24(%ebp),%eax
	ja	Lj149
Lj148:
Lj141:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj140
	jmp	Lj142
Lj142:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj159
	.align 2
Lj158:
	decl	8(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj162
	decl	-28(%ebp)
	.align 2
Lj163:
	incl	-28(%ebp)
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	(%ecx,%edx,4),%ecx
	movl	12(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,-20(%ebp)
	movl	-36(%ebp),%edx
	decl	%edx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jb	Lj169
	decl	-24(%ebp)
	.align 2
Lj170:
	incl	-24(%ebp)
	movl	-20(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-16(%ebp),%ecx
	movl	-28(%ebp),%edi
	movb	(%ecx,%edi,1),%cl
	movb	%cl,(%ebx,%esi,1)
	movl	-32(%ebp),%ecx
	addl	%ecx,-16(%ebp)
	cmpl	-24(%ebp),%edx
	ja	Lj170
Lj169:
	cmpl	-28(%ebp),%eax
	jg	Lj163
Lj162:
	addl	$4,-8(%ebp)
	incl	12(%ebp)
Lj159:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj158
	jmp	Lj160
Lj160:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_NULL_METHOD$J_COMPRESS_PTR
_JCCOLOR_NULL_METHOD$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JCCOLOR_JINIT_COLOR_CONVERTER$J_COMPRESS_PTR
_JCCOLOR_JINIT_COLOR_CONVERTER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj176
Lj176:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$12,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,332(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_NULL_METHOD$J_COMPRESS_PTR$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$1,%al
	jb	Lj190
	decb	%al
	je	Lj191
	decb	%al
	jb	Lj190
	subb	$1,%al
	jbe	Lj192
	decb	%al
	subb	$1,%al
	jbe	Lj193
	jmp	Lj190
Lj191:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jne	Lj194
	jmp	Lj195
Lj194:
	movl	-4(%ebp),%eax
	movb	$9,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj195:
	jmp	Lj189
Lj192:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$3,%eax
	jne	Lj200
	jmp	Lj201
Lj200:
	movl	-4(%ebp),%eax
	movb	$9,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj201:
	jmp	Lj189
Lj193:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$4,%eax
	jne	Lj206
	jmp	Lj207
Lj206:
	movl	-4(%ebp),%eax
	movb	$9,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj207:
	jmp	Lj189
Lj190:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jl	Lj212
	jmp	Lj213
Lj212:
	movl	-4(%ebp),%eax
	movb	$9,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj213:
Lj189:
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	cmpb	$1,%al
	jb	Lj219
	decb	%al
	je	Lj220
	decb	%al
	je	Lj221
	decb	%al
	je	Lj222
	decb	%al
	je	Lj223
	decb	%al
	je	Lj224
	jmp	Lj219
Lj220:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	jne	Lj225
	jmp	Lj226
Lj225:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj226:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$1,%al
	je	Lj231
	jmp	Lj232
Lj231:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_GRAYSCALE_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj235
Lj232:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$2,%al
	je	Lj236
	jmp	Lj237
Lj236:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_RGB_GRAY_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj242
Lj237:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$3,%al
	je	Lj243
	jmp	Lj244
Lj243:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_GRAYSCALE_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj247
Lj244:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj247:
Lj242:
Lj235:
	jmp	Lj218
Lj221:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$3,%eax
	jne	Lj252
	jmp	Lj253
Lj252:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj253:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$2,%al
	je	Lj260
	jmp	Lj259
Lj260:
	jmp	Lj258
Lj258:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj263
Lj259:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj263:
	jmp	Lj218
Lj222:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$3,%eax
	jne	Lj268
	jmp	Lj269
Lj268:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj269:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$2,%al
	je	Lj274
	jmp	Lj275
Lj274:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_RGB_YCC_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj280
Lj275:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$3,%al
	je	Lj281
	jmp	Lj282
Lj281:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj285
Lj282:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj285:
Lj280:
	jmp	Lj218
Lj223:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$4,%eax
	jne	Lj290
	jmp	Lj291
Lj290:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj291:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$4,%al
	je	Lj296
	jmp	Lj297
Lj296:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj300
Lj297:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj300:
	jmp	Lj218
Lj224:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$4,%eax
	jne	Lj305
	jmp	Lj306
Lj305:
	movl	-4(%ebp),%eax
	movb	$10,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj306:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$4,%al
	je	Lj311
	jmp	Lj312
Lj311:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_CMYK_YCCK_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj317
Lj312:
	movl	-4(%ebp),%eax
	movb	40(%eax),%al
	cmpb	$5,%al
	je	Lj318
	jmp	Lj319
Lj318:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
	jmp	Lj322
Lj319:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj322:
Lj317:
	jmp	Lj218
Lj219:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	60(%eax),%al
	cmpb	40(%edx),%al
	jne	Lj327
	jmp	Lj329
Lj329:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	56(%eax),%eax
	cmpl	36(%edx),%eax
	jne	Lj327
	jmp	Lj328
Lj327:
	movl	-4(%ebp),%eax
	movb	$27,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj328:
	movl	-8(%ebp),%edx
	movl	L_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr-Lj176(%esi),%eax
	movl	%eax,4(%edx)
Lj218:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCCOLOR
_THREADVARLIST_JCCOLOR:
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
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
L_JCCOLOR_NULL_METHOD$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCCOLOR_NULL_METHOD$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOLOR_GRAYSCALE_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr:
.indirect_symbol _JCCOLOR_GRAYSCALE_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCCOLOR_RGB_YCC_START$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOLOR_RGB_GRAY_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr:
.indirect_symbol _JCCOLOR_RGB_GRAY_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr:
.indirect_symbol _JCCOLOR_NULL_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOLOR_RGB_YCC_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr:
.indirect_symbol _JCCOLOR_RGB_YCC_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCCOLOR_CMYK_YCCK_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT$non_lazy_ptr:
.indirect_symbol _JCCOLOR_CMYK_YCCK_CONVERT$J_COMPRESS_PTR$JSAMPARRAY$JSAMPIMAGE$LONGWORD$LONGINT
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

