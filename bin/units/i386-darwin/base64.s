# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_BASE64_TBASE64ENCODINGSTREAM_$__FLUSH$$BOOLEAN
_BASE64_TBASE64ENCODINGSTREAM_$__FLUSH$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	xorl	%edx,%edx
	movl	$3,%ecx
	divl	%ecx
	cmpl	$1,%edx
	jb	Lj6
	decl	%edx
	je	Lj7
	decl	%edx
	je	Lj8
	jmp	Lj6
Lj7:
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movzbl	20(%eax),%eax
	shrl	$2,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-9(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movb	20(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	shll	$4,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-8(%ebp)
	movb	$61,-7(%ebp)
	movb	$61,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-9(%ebp),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	movb	$1,-5(%ebp)
	movl	-4(%ebp),%eax
	addl	$2,12(%eax)
	jmp	Lj5
Lj8:
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movzbl	20(%eax),%eax
	shrl	$2,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-9(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movb	20(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	shll	$4,%eax
	movl	-4(%ebp),%ecx
	movzbl	21(%ecx),%ecx
	shrl	$4,%ecx
	orl	%ecx,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-8(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movb	21(%eax),%al
	andb	$15,%al
	movzbl	%al,%eax
	shll	$2,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-7(%ebp)
	movb	$61,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-9(%ebp),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	movb	$1,-5(%ebp)
	movl	-4(%ebp),%eax
	incl	12(%eax)
	jmp	Lj5
Lj6:
	movb	$0,-5(%ebp)
Lj5:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64ENCODINGSTREAM_$__DESTROY
_BASE64_TBASE64ENCODINGSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj45
	jmp	Lj46
Lj45:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj46:
	movl	-8(%ebp),%eax
	call	L_BASE64_TBASE64ENCODINGSTREAM_$__FLUSH$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TOWNERSTREAM_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj56
Lj57:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj56:
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64ENCODINGSTREAM_$__WRITE$formal$LONGINT$$LONGINT
_BASE64_TBASE64ENCODINGSTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj61
Lj61:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj67
	.align 2
Lj66:
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	$3,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj71
	jmp	Lj72
Lj71:
	jmp	Lj68
Lj72:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	leal	20(%edx,%eax,1),%edx
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-8(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj61(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movzbl	20(%eax),%eax
	shrl	$2,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-28(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj61(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movb	20(%eax),%al
	andb	$3,%al
	movzbl	%al,%eax
	shll	$4,%eax
	movl	-12(%ebp),%ecx
	movzbl	21(%ecx),%ecx
	shrl	$4,%ecx
	orl	%ecx,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-27(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj61(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movb	21(%eax),%al
	andb	$15,%al
	movzbl	%al,%eax
	shll	$2,%eax
	movl	-12(%ebp),%ecx
	movzbl	22(%ecx),%ecx
	shrl	$6,%ecx
	orl	%ecx,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-26(%ebp)
	movl	L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr-Lj61(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movb	22(%eax),%al
	andb	$63,%al
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-25(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	leal	-28(%ebp),%edx
	movl	$4,%ecx
	movl	-12(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	movl	-12(%ebp),%eax
	addl	$4,16(%eax)
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
Lj67:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj66
	jmp	Lj68
Lj68:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	leal	20(%edx,%eax,1),%edx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,24(%edx)
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64ENCODINGSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
_BASE64_TBASE64ENCODINGSTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj102
Lj102:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$0,%eax
	jg	Lj105
	jmp	Lj106
Lj105:
	addl	$4,-16(%ebp)
Lj106:
	movzwl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj110
	jmp	Lj111
Lj111:
	movzwl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj110
	jmp	Lj109
Lj110:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	jmp	Lj109
Lj109:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj112
	jmp	Lj107
Lj112:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	je	Lj108
	jmp	Lj107
Lj107:
	movl	L_VMT_CLASSES_ESTREAMERROR$non_lazy_ptr-Lj102(%ebx),%edx
	movl	L_$BASE64$_Ld2$non_lazy_ptr-Lj102(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj102(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj108:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__SETMODE$TBASE64DECODINGMODE
_BASE64_TBASE64DECODINGSTREAM_$__SETMODE$TBASE64DECODINGMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj121
	jmp	Lj122
Lj121:
	jmp	Lj119
Lj122:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	$-1,24(%eax)
	movl	$-1,28(%eax)
Lj119:
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__GETSIZE$$INT64
_BASE64_TBASE64DECODINGSTREAM_$__GETSIZE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1096,%esp
	movl	%ebx,-1076(%ebp)
	movl	%esi,-1072(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj129
	cmpl	$-1,%edx
	jne	Lj129
	jmp	Lj130
Lj129:
	movl	-4(%ebp),%edx
	movl	24(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	28(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj127
Lj130:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj140
	decl	%eax
	je	Lj139
	jmp	Lj138
Lj139:
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj143:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-1056(%ebp),%edx
	movl	$1024,%ecx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-1060(%ebp)
	movl	-1060(%ebp),%eax
	decl	%eax
	movl	$0,-1064(%ebp)
	cmpl	-1064(%ebp),%eax
	jl	Lj155
	decl	-1064(%ebp)
	.align 2
Lj156:
	incl	-1064(%ebp)
	movl	-1064(%ebp),%edx
	movb	-1056(%ebp,%edx,1),%dl
	movb	%dl,-1065(%ebp)
	movzbl	-1065(%ebp),%edx
	cmpl	$43,%edx
	stc
	je	Lj161
	subl	$47,%edx
	cmpl	$11,%edx
	jb	Lj161
	subl	$18,%edx
	cmpl	$26,%edx
	jb	Lj161
	subl	$32,%edx
	cmpl	$26,%edx
	jb	Lj161
Lj161:
	jc	Lj159
	jmp	Lj160
Lj159:
	addl	$1,-12(%ebp)
	adcl	$0,-8(%ebp)
	jmp	Lj162
Lj160:
	movb	-1065(%ebp),%dl
	cmpb	$61,%dl
	je	Lj163
	jmp	Lj164
Lj163:
	jmp	Lj155
Lj164:
Lj162:
	cmpl	-1064(%ebp),%eax
	jg	Lj156
Lj155:
	movl	-1060(%ebp),%eax
	testl	%eax,%eax
	je	Lj145
	jmp	Lj143
Lj145:
	movb	-1065(%ebp),%al
	cmpb	$61,%al
	je	Lj165
	jmp	Lj166
Lj165:
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_mod_int64$stub
	cmpl	$0,%edx
	jl	Lj167
	jg	Lj168
	cmpl	$1,%eax
	jbe	Lj167
	jmp	Lj168
Lj167:
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$3,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj185
Lj168:
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$3,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_mod_int64$stub
	addl	%eax,%ebx
	adcl	%edx,%esi
	subl	$1,%ebx
	sbbl	$0,%esi
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
Lj185:
	jmp	Lj202
Lj166:
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$3,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
Lj202:
	jmp	Lj137
Lj140:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	$0,12(%esp)
	movl	$4,8(%esp)
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%ecx
	subl	-24(%ebp),%eax
	sbbl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	addl	32(%edx),%eax
	adcl	36(%edx),%ecx
	addl	$3,%eax
	adcl	$0,%ecx
	movl	%ecx,4(%esp)
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$3,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	$2,%cx
	movl	$-2,%edx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-14(%ebp),%edx
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movb	-13(%ebp),%al
	cmpb	$61,%al
	je	Lj247
	jmp	Lj248
Lj247:
	subl	$1,-12(%ebp)
	sbbl	$0,-8(%ebp)
	movb	-14(%ebp),%al
	cmpb	$61,%al
	je	Lj249
	jmp	Lj250
Lj249:
	subl	$1,-12(%ebp)
	sbbl	$0,-8(%ebp)
Lj250:
Lj248:
	jmp	Lj137
Lj138:
Lj137:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,28(%edx)
Lj127:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-1076(%ebp),%ebx
	movl	-1072(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__GETPOSITION$$INT64
_BASE64_TBASE64DECODINGSTREAM_$__GETPOSITION$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	16(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	20(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$$TBASE64DECODINGSTREAM
_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$$TBASE64DECODINGSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj263
	jmp	Lj264
Lj263:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj264:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj269
	jmp	Lj270
Lj269:
	jmp	Lj261
Lj270:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj273
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj277
	movl	$1,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM$stub
Lj277:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj278
	call	LFPC_RERAISE$stub
Lj278:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj290
	jmp	Lj289
Lj290:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj288
	jmp	Lj289
Lj288:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj289:
Lj273:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj275
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj294
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj295
	jmp	Lj296
Lj295:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj296:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj294:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj293
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj293:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj275
Lj275:
Lj261:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM
_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj303
	jmp	Lj304
Lj303:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj304:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj309
	jmp	Lj310
Lj309:
	jmp	Lj301
Lj310:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj313
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj317
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$__SETMODE$TBASE64DECODINGMODE$stub
	movl	-12(%ebp),%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$__RESET$stub
Lj317:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj318
	call	LFPC_RERAISE$stub
Lj318:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj334
	jmp	Lj333
Lj334:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj332
	jmp	Lj333
Lj332:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj333:
Lj313:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj315
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj338
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj339
	jmp	Lj340
Lj339:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj340:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj338:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj337
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj337:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj315
Lj315:
Lj301:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__RESET
_BASE64_TBASE64DECODINGSTREAM_$__RESET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	$0,36(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,24(%eax)
	movl	$-1,28(%eax)
	movl	-4(%ebp),%eax
	movl	$3,44(%eax)
	movl	-4(%ebp),%eax
	movb	$0,48(%eax)
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__READ$formal$LONGINT$$LONGINT
_BASE64_TBASE64DECODINGSTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj358
Lj358:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj361
	jmp	Lj362
Lj361:
	movl	$0,-16(%ebp)
	jmp	Lj357
Lj362:
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj365
	cmpl	$-1,%edx
	jne	Lj365
	jmp	Lj366
Lj365:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	addl	16(%ecx),%edx
	adcl	20(%ecx),%eax
	movl	-12(%ebp),%ecx
	cmpl	28(%ecx),%eax
	jg	Lj367
	jl	Lj368
	cmpl	24(%ecx),%edx
	ja	Lj367
	jmp	Lj368
	jmp	Lj368
Lj367:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	24(%edx),%eax
	movl	28(%edx),%edx
	subl	16(%ecx),%eax
	sbbl	20(%ecx),%edx
	movl	%eax,-8(%ebp)
Lj368:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj371
	jmp	Lj372
Lj371:
	movl	$0,-16(%ebp)
	jmp	Lj357
Lj372:
Lj366:
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj380
	.align 2
Lj379:
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	$2,%eax
	jg	Lj382
	jmp	Lj383
Lj382:
	movl	-12(%ebp),%eax
	movl	$0,44(%eax)
	movl	$4,-32(%ebp)
	movl	$0,-44(%ebp)
	jmp	Lj391
	.align 2
Lj390:
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-44(%ebp),%edx
	leal	-25(%ebp,%edx,1),%edx
	movl	-32(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj403
	jmp	Lj404
Lj403:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%eax
	addl	%eax,%ebx
	decl	%ebx
	movl	-44(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj406
	decl	-48(%ebp)
	.align 2
Lj407:
	incl	-48(%ebp)
	movl	-48(%ebp),%eax
	movzbl	-25(%ebp,%eax,1),%eax
	movl	L_TC_BASE64_DECTABLE$non_lazy_ptr-Lj358(%esi),%edx
	movb	(%edx,%eax,1),%al
	movb	%al,-21(%ebp)
	movzbl	-21(%ebp),%eax
	cmpl	$85,%eax
	jne	Lj410
	jmp	Lj411
Lj410:
	movl	-44(%ebp),%edx
	movb	-21(%ebp),%al
	movb	%al,-25(%ebp,%edx,1)
	incl	-44(%ebp)
	decl	-32(%ebp)
	jmp	Lj414
Lj411:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj415
	jmp	Lj416
Lj415:
	movl	$-1,(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_BASE64_EBASE64DECODINGEXCEPTION$non_lazy_ptr-Lj358(%esi),%edx
	movl	L_$BASE64$_Ld4$non_lazy_ptr-Lj358(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj358(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj416:
Lj414:
	cmpl	-48(%ebp),%ebx
	jg	Lj407
Lj406:
Lj404:
	movl	-40(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jne	Lj427
	jmp	Lj428
Lj427:
	movl	-44(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	$3,-48(%ebp)
	jg	Lj430
	decl	-48(%ebp)
	.align 2
Lj431:
	incl	-48(%ebp)
	movl	-48(%ebp),%eax
	movb	$0,-25(%ebp,%eax,1)
	cmpl	$3,-48(%ebp)
	jl	Lj431
Lj430:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj436
	jmp	Lj435
Lj436:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj434
	jmp	Lj435
Lj434:
	movl	$-1,(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_BASE64_EBASE64DECODINGEXCEPTION$non_lazy_ptr-Lj358(%esi),%edx
	movl	L_$BASE64$_Ld6$non_lazy_ptr-Lj358(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj358(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj435:
	jmp	Lj392
Lj428:
Lj391:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj390
	jmp	Lj392
Lj392:
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-12(%ebp),%ecx
	movl	32(%ecx),%edi
	movl	36(%ecx),%ebx
	addl	%edx,%edi
	adcl	%eax,%ebx
	movl	%edi,32(%ecx)
	movl	%ebx,36(%ecx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj449
	decl	%eax
	je	Lj450
	jmp	Lj448
Lj449:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj451
	jmp	Lj452
Lj451:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,4(%esp)
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
	jmp	Lj457
Lj452:
	movb	-25(%ebp),%al
	cmpb	$255,%al
	je	Lj458
	jmp	Lj460
Lj460:
	movb	-24(%ebp),%al
	cmpb	$255,%al
	je	Lj458
	jmp	Lj459
Lj458:
	movl	$-1,(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_BASE64_EBASE64DECODINGEXCEPTION$non_lazy_ptr-Lj358(%esi),%edx
	movl	L_$BASE64$_Ld8$non_lazy_ptr-Lj358(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj358(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj471
Lj459:
	movb	-23(%ebp),%al
	cmpb	$255,%al
	je	Lj472
	jmp	Lj473
Lj472:
	movb	-22(%ebp),%al
	cmpb	$255,%al
	jne	Lj474
	jmp	Lj476
Lj476:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	%edx,%edi
	jl	Lj474
	jg	Lj475
	cmpl	%eax,%ebx
	jb	Lj474
	jmp	Lj475
Lj474:
	movl	$-1,(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_BASE64_EBASE64DECODINGEXCEPTION$non_lazy_ptr-Lj358(%esi),%edx
	movl	L_$BASE64$_Ld8$non_lazy_ptr-Lj358(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj358(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj475:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	20(%eax),%eax
	addl	$1,%edx
	adcl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
	jmp	Lj495
Lj473:
	movb	-22(%ebp),%al
	cmpb	$255,%al
	je	Lj496
	jmp	Lj497
Lj496:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	%edx,%edi
	jl	Lj498
	jg	Lj499
	cmpl	%eax,%ebx
	jb	Lj498
	jmp	Lj499
Lj498:
	movl	$-1,(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_BASE64_EBASE64DECODINGEXCEPTION$non_lazy_ptr-Lj358(%esi),%edx
	movl	L_$BASE64$_Ld8$non_lazy_ptr-Lj358(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj358(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj499:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	20(%eax),%eax
	addl	$2,%edx
	adcl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
Lj497:
Lj495:
Lj471:
Lj457:
	jmp	Lj447
Lj450:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj518
	jmp	Lj519
Lj518:
	movl	-12(%ebp),%edx
	movl	20(%edx),%eax
	movl	%eax,4(%esp)
	movl	16(%edx),%eax
	movl	%eax,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
	jmp	Lj524
Lj519:
	movb	-25(%ebp),%al
	cmpb	$255,%al
	je	Lj525
	jmp	Lj527
Lj527:
	movb	-24(%ebp),%al
	cmpb	$255,%al
	je	Lj525
	jmp	Lj526
Lj525:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,4(%esp)
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
	jmp	Lj532
Lj526:
	movb	-23(%ebp),%al
	cmpb	$255,%al
	je	Lj533
	jmp	Lj534
Lj533:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	20(%eax),%eax
	addl	$1,%edx
	adcl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
	jmp	Lj539
Lj534:
	movb	-22(%ebp),%al
	cmpb	$255,%al
	je	Lj540
	jmp	Lj541
Lj540:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	20(%eax),%eax
	addl	$2,%edx
	adcl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	%ebp,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub
Lj541:
Lj539:
Lj532:
Lj524:
	jmp	Lj447
Lj448:
Lj447:
	movzbl	-25(%ebp),%eax
	shll	$2,%eax
	movzbl	-24(%ebp),%edx
	shrl	$4,%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movb	%al,40(%edx)
	movb	-24(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	shll	$4,%eax
	movzbl	-23(%ebp),%edx
	shrl	$2,%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movb	%al,41(%edx)
	movb	-23(%ebp),%al
	andb	$3,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movzbl	-22(%ebp),%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	movb	%al,42(%edx)
Lj383:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj552
	jmp	Lj553
Lj552:
	jmp	Lj381
Lj553:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	-20(%ebp),%ecx
	movb	40(%edx,%eax,1),%al
	movb	%al,(%ecx)
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	incl	44(%eax)
	movl	-12(%ebp),%eax
	addl	$1,16(%eax)
	adcl	$0,20(%eax)
	decl	-8(%ebp)
	incl	-16(%ebp)
Lj380:
	jmp	Lj379
Lj381:
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	28(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj558
	cmpl	$-1,%edx
	jne	Lj558
	jmp	Lj557
Lj558:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	16(%eax),%edx
	movl	20(%eax),%eax
	cmpl	28(%ecx),%eax
	jg	Lj556
	jl	Lj557
	cmpl	24(%ecx),%edx
	jae	Lj556
	jmp	Lj557
	jmp	Lj557
Lj556:
	movl	-12(%ebp),%eax
	movb	$1,48(%eax)
Lj557:
Lj357:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64
_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%edx
	movl	8(%ebp),%eax
	movl	%eax,24(%edx)
	movl	12(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	addl	16(%ecx),%edx
	adcl	20(%ecx),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ecx),%ecx
	cmpl	28(%ecx),%eax
	jg	Lj563
	jl	Lj564
	cmpl	24(%ecx),%edx
	ja	Lj563
	jmp	Lj564
	jmp	Lj564
Lj563:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%ecx
	movl	24(%edx),%eax
	movl	28(%edx),%edx
	subl	16(%ecx),%eax
	sbbl	20(%ecx),%edx
	movl	-4(%ebp),%edx
	movl	%eax,-8(%edx)
Lj564:
	leave
	ret

.text
	.align 4
.globl	_BASE64_TBASE64DECODINGSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
_BASE64_TBASE64DECODINGSTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj568
Lj568:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	L_VMT_CLASSES_ESTREAMERROR$non_lazy_ptr-Lj568(%ebx),%edx
	movl	L_$BASE64$_Ld2$non_lazy_ptr-Lj568(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj568(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASE64_DECODESTRINGBASE64$ANSISTRING$BOOLEAN$$ANSISTRING
_BASE64_DECODESTRINGBASE64$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%esi,-152(%ebp)
	movl	%edi,-148(%ebp)
	call	Lj576
Lj576:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj576(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj585
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj576(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,-20(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj597
	cmpb	$0,-8(%ebp)
	jne	Lj601
	jmp	Lj602
Lj601:
	movl	$0,(%esp)
	movl	-16(%ebp),%ecx
	movl	L_VMT_BASE64_TBASE64DECODINGSTREAM$non_lazy_ptr-Lj576(%ebx),%edx
	movl	$0,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM$stub
	movl	%eax,-24(%ebp)
	jmp	Lj613
Lj602:
	movl	$1,(%esp)
	movl	-16(%ebp),%ecx
	movl	L_VMT_BASE64_TBASE64DECODINGSTREAM$non_lazy_ptr-Lj576(%ebx),%edx
	movl	$0,%eax
	call	L_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM$stub
	movl	%eax,-24(%ebp)
Lj613:
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj624
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-20(%ebp),%edi
	movl	4(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%edi),%eax
	movl	%eax,(%esi)
Lj624:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj625
	decl	%eax
	testl	%eax,%eax
	je	Lj626
Lj626:
	call	LFPC_RERAISE$stub
Lj625:
Lj597:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj598
	decl	%eax
	testl	%eax,%eax
	je	Lj599
Lj599:
	call	LFPC_RERAISE$stub
Lj598:
Lj585:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj586
	decl	%eax
	testl	%eax,%eax
	je	Lj587
Lj587:
	call	LFPC_RERAISE$stub
Lj586:
	movl	-156(%ebp),%ebx
	movl	-152(%ebp),%esi
	movl	-148(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASE64_ENCODESTRINGBASE64$ANSISTRING$$ANSISTRING
_BASE64_ENCODESTRINGBASE64$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	call	Lj645
Lj645:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj645(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj654
	movl	-12(%ebp),%ecx
	movl	L_VMT_BASE64_TBASE64ENCODINGSTREAM$non_lazy_ptr-Lj645(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj666
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj672
	movl	-4(%ecx),%ecx
Lj672:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	(%esi),%esi
	call	*132(%esi)
Lj666:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj667
	decl	%eax
	testl	%eax,%eax
	je	Lj668
Lj668:
	call	LFPC_RERAISE$stub
Lj667:
	movl	-12(%ebp),%edi
	movl	4(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%edi),%eax
	movl	%eax,(%esi)
Lj654:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj655
	decl	%eax
	testl	%eax,%eax
	je	Lj656
Lj656:
	call	LFPC_RERAISE$stub
Lj655:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$BASE64$_Ld10
_$BASE64$_Ld10:
	.byte	21
	.ascii	"TBase64EncodingStream"

.const_data
	.align 2
.globl	_VMT_BASE64_TBASE64ENCODINGSTREAM
_VMT_BASE64_TBASE64ENCODINGSTREAM:
	.long	28,-28
	.long	_VMT_CLASSES_TOWNERSTREAM
	.long	_$BASE64$_Ld10
	.long	0,0
	.long	_$BASE64$_Ld11
	.long	_RTTI_BASE64_TBASE64ENCODINGSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_BASE64_TBASE64ENCODINGSTREAM_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_BASE64_TBASE64ENCODINGSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_BASE64_TBASE64ENCODINGSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$BASE64$_Ld13
_$BASE64$_Ld13:
	.byte	21
	.ascii	"TBase64DecodingStream"

.const_data
	.align 2
.globl	_VMT_BASE64_TBASE64DECODINGSTREAM
_VMT_BASE64_TBASE64DECODINGSTREAM:
	.long	52,-52
	.long	_VMT_CLASSES_TOWNERSTREAM
	.long	_$BASE64$_Ld13
	.long	0,0
	.long	_$BASE64$_Ld14
	.long	_RTTI_BASE64_TBASE64DECODINGSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_CLASSES_TOWNERSTREAM_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_BASE64_TBASE64DECODINGSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_BASE64_TBASE64DECODINGSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_BASE64_TBASE64DECODINGSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_BASE64_TBASE64DECODINGSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$BASE64$_Ld16
_$BASE64$_Ld16:
	.byte	24
	.ascii	"EBase64DecodingException"

.const_data
	.align 2
.globl	_VMT_BASE64_EBASE64DECODINGEXCEPTION
_VMT_BASE64_EBASE64DECODINGEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$BASE64$_Ld16
	.long	0,0
	.long	_$BASE64$_Ld17
	.long	_RTTI_BASE64_EBASE64DECODINGEXCEPTION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_BASE64
_THREADVARLIST_BASE64:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 3
.globl	_$BASE64$_Ld1
_$BASE64$_Ld1:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy"
	.ascii	"z0123456789+/\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_BASE64_ENCODINGTABLE
_TC_BASE64_ENCODINGTABLE:
	.long	_$BASE64$_Ld1

.data
.globl	_TC_BASE64_DECTABLE
_TC_BASE64_DECTABLE:
	.byte	85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85
	.byte	85,85,85,85,85,85,85,62,85,85,85,63,52,53,54,55,56,57,58,59,60,61,85,85,85,255,85,85,85,0,1,2,3,4,5,6,7,8,9,10
	.byte	11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,85,85,85,85,85,85,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40
	.byte	41,42,43,44,45,46,47,48,49,50,51,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85
	.byte	85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85
	.byte	85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85
	.byte	85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85

.const_data
	.align 2
.globl	_$BASE64$_Ld3
_$BASE64$_Ld3:
	.short	0,1
	.long	0,-1,24
.reference _$BASE64$_Ld2
.globl	_$BASE64$_Ld2
_$BASE64$_Ld2:
.reference _$BASE64$_Ld3
	.ascii	"Invalid stream operation\000"

.const_data
	.align 2
.globl	_$BASE64$_Ld5
_$BASE64$_Ld5:
	.short	0,1
	.long	0,-1,44
.reference _$BASE64$_Ld4
.globl	_$BASE64$_Ld4
_$BASE64$_Ld4:
.reference _$BASE64$_Ld5
	.ascii	"Non-valid Base64 Encoding character in input\000"

.const_data
	.align 2
.globl	_$BASE64$_Ld7
_$BASE64$_Ld7:
	.short	0,1
	.long	0,-1,49
.reference _$BASE64$_Ld6
.globl	_$BASE64$_Ld6
_$BASE64$_Ld6:
.reference _$BASE64$_Ld7
	.ascii	"Input stream was truncated at non-4 byte boundary\000"

.const_data
	.align 2
.globl	_$BASE64$_Ld9
_$BASE64$_Ld9:
	.short	0,1
	.long	0,-1,59
.reference _$BASE64$_Ld8
.globl	_$BASE64$_Ld8
_$BASE64$_Ld8:
.reference _$BASE64$_Ld9
	.ascii	"Unexpected padding character '=' before end of inpu"
	.ascii	"t stream\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASE64_TBASE64ENCODINGSTREAM_$__FLUSH$$BOOLEAN$stub:
.indirect_symbol _BASE64_TBASE64ENCODINGSTREAM_$__FLUSH$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TOWNERSTREAM_$__DESTROY$stub:
.indirect_symbol _CLASSES_TOWNERSTREAM_$__DESTROY
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
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

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM$stub:
.indirect_symbol _BASE64_TBASE64DECODINGSTREAM_$__CREATE$TSTREAM$TBASE64DECODINGMODE$$TBASE64DECODINGSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub:
.indirect_symbol _CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASE64_TBASE64DECODINGSTREAM_$__SETMODE$TBASE64DECODINGMODE$stub:
.indirect_symbol _BASE64_TBASE64DECODINGSTREAM_$__SETMODE$TBASE64DECODINGMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASE64_TBASE64DECODINGSTREAM_$__RESET$stub:
.indirect_symbol _BASE64_TBASE64DECODINGSTREAM_$__RESET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64$stub:
.indirect_symbol _BASE64_TBASE64DECODINGSTREAM_$_READ$formal$LONGINT$$LONGINT_DETECTEDEND$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub:
.indirect_symbol _CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
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
.globl	_$BASE64$_Ld11
_$BASE64$_Ld11:
	.short	0
	.long	_$BASE64$_Ld12
	.align 2
.globl	_$BASE64$_Ld12
_$BASE64$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_BASE64_TBASE64ENCODINGSTREAM
_INIT_BASE64_TBASE64ENCODINGSTREAM:
	.byte	15,21
	.ascii	"TBase64EncodingStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BASE64_TBASE64ENCODINGSTREAM
_RTTI_BASE64_TBASE64ENCODINGSTREAM:
	.byte	15,21
	.ascii	"TBase64EncodingStream"
	.long	_VMT_BASE64_TBASE64ENCODINGSTREAM
	.long	_RTTI_CLASSES_TOWNERSTREAM
	.short	0
	.byte	6
	.ascii	"base64"
	.short	0

.const_data
	.align 2
.globl	_INIT_BASE64_TBASE64DECODINGMODE
_INIT_BASE64_TBASE64DECODINGMODE:
	.byte	3,19
	.ascii	"TBase64DecodingMode"
	.byte	5
	.long	0,1,0
	.byte	9
	.ascii	"bdmStrict"
	.byte	7
	.ascii	"bdmMIME"
	.byte	6
	.ascii	"base64"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_BASE64_TBASE64DECODINGMODE
_RTTI_BASE64_TBASE64DECODINGMODE:
	.byte	3,19
	.ascii	"TBase64DecodingMode"
	.byte	5
	.long	0,1,0
	.byte	9
	.ascii	"bdmStrict"
	.byte	7
	.ascii	"bdmMIME"
	.byte	6
	.ascii	"base64"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_BASE64_TBASE64DECODINGMODE_s2o
_RTTI_BASE64_TBASE64DECODINGMODE_s2o:
	.long	2,1
	.long	_RTTI_BASE64_TBASE64DECODINGMODE+44
	.long	0
	.long	_RTTI_BASE64_TBASE64DECODINGMODE+34

.const_data
	.align 2
.globl	_RTTI_BASE64_TBASE64DECODINGMODE_o2s
_RTTI_BASE64_TBASE64DECODINGMODE_o2s:
	.long	0
	.long	_RTTI_BASE64_TBASE64DECODINGMODE+34
	.long	_RTTI_BASE64_TBASE64DECODINGMODE+44

.const_data
	.align 2
.globl	_$BASE64$_Ld14
_$BASE64$_Ld14:
	.short	0
	.long	_$BASE64$_Ld15
	.align 2
.globl	_$BASE64$_Ld15
_$BASE64$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_BASE64_TBASE64DECODINGSTREAM
_INIT_BASE64_TBASE64DECODINGSTREAM:
	.byte	15,21
	.ascii	"TBase64DecodingStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BASE64_TBASE64DECODINGSTREAM
_RTTI_BASE64_TBASE64DECODINGSTREAM:
	.byte	15,21
	.ascii	"TBase64DecodingStream"
	.long	_VMT_BASE64_TBASE64DECODINGSTREAM
	.long	_RTTI_CLASSES_TOWNERSTREAM
	.short	0
	.byte	6
	.ascii	"base64"
	.short	0

.const_data
	.align 2
.globl	_$BASE64$_Ld17
_$BASE64$_Ld17:
	.short	0
	.long	_$BASE64$_Ld18
	.align 2
.globl	_$BASE64$_Ld18
_$BASE64$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_BASE64_EBASE64DECODINGEXCEPTION
_INIT_BASE64_EBASE64DECODINGEXCEPTION:
	.byte	15,24
	.ascii	"EBase64DecodingException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BASE64_EBASE64DECODINGEXCEPTION
_RTTI_BASE64_EBASE64DECODINGEXCEPTION:
	.byte	15,24
	.ascii	"EBase64DecodingException"
	.long	_VMT_BASE64_EBASE64DECODINGEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	6
	.ascii	"base64"
	.short	0
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
L_TC_BASE64_ENCODINGTABLE$non_lazy_ptr:
.indirect_symbol _TC_BASE64_ENCODINGTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_ESTREAMERROR$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_ESTREAMERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BASE64$_Ld2$non_lazy_ptr:
.indirect_symbol _$BASE64$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_BASE64_DECTABLE$non_lazy_ptr:
.indirect_symbol _TC_BASE64_DECTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BASE64_EBASE64DECODINGEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_BASE64_EBASE64DECODINGEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BASE64$_Ld4$non_lazy_ptr:
.indirect_symbol _$BASE64$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BASE64$_Ld6$non_lazy_ptr:
.indirect_symbol _$BASE64$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BASE64$_Ld8$non_lazy_ptr:
.indirect_symbol _$BASE64$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BASE64_TBASE64DECODINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_BASE64_TBASE64DECODINGSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BASE64_TBASE64ENCODINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_BASE64_TBASE64ENCODINGSTREAM
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

