# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT
_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	$16,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	cmpl	5812(%eax),%edx
	jl	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	5812(%edx),%ecx
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movzwl	5808(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,5808(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movw	5808(%eax),%ax
	andw	$255,%ax
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	5808(%eax),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movzwl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	5812(%eax),%ecx
	movl	$16,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	shrl	%cl,%edx
	movl	-4(%ebp),%eax
	movw	%dx,5808(%eax)
	movl	-12(%ebp),%eax
	subl	$16,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5812(%edx)
	jmp	Lj15
Lj6:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	5812(%edx),%ecx
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movzwl	5808(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,5808(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,5812(%eax)
Lj15:
	leave
	ret

.text
	.align 4
.globl	_TREES_BI_REVERSE$LONGWORD$LONGINT$$LONGWORD
_TREES_BI_REVERSE$LONGWORD$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	.align 2
Lj22:
	movl	-4(%ebp),%edx
	andl	$1,%edx
	movl	-16(%ebp),%eax
	orl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-4(%ebp)
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj24
	jmp	Lj22
Lj24:
	movl	-16(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_TREES_GEN_CODES$TREE_PTR$LONGINT$array_of_WORD
_TREES_GEN_CODES$TREE_PTR$LONGINT$array_of_WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	$0,-46(%ebp)
	movl	$1,-52(%ebp)
	decl	-52(%ebp)
	.align 2
Lj39:
	incl	-52(%ebp)
	movl	-12(%ebp),%edx
	movl	-52(%ebp),%eax
	decl	%eax
	movzwl	(%edx,%eax,2),%eax
	movzwl	-46(%ebp),%edx
	addl	%edx,%eax
	shll	$1,%eax
	movw	%ax,-46(%ebp)
	movl	-52(%ebp),%eax
	movw	-46(%ebp),%dx
	movw	%dx,-44(%ebp,%eax,2)
	cmpl	$15,-52(%ebp)
	jl	Lj39
	movl	-8(%ebp),%ebx
	movl	$0,-56(%ebp)
	cmpl	-56(%ebp),%ebx
	jl	Lj45
	decl	-56(%ebp)
	.align 2
Lj46:
	incl	-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-56(%ebp),%edx
	movzwl	2(%eax,%edx,4),%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	jmp	Lj50
Lj49:
	jmp	Lj44
Lj50:
	movl	-60(%ebp),%eax
	movzwl	-44(%ebp,%eax,2),%eax
	movl	-60(%ebp),%edx
	call	L_TREES_BI_REVERSE$LONGWORD$LONGINT$$LONGWORD$stub
	movl	-4(%ebp),%ecx
	movl	-56(%ebp),%edx
	movw	%ax,(%ecx,%edx,4)
	movl	-60(%ebp),%eax
	incw	-44(%ebp,%eax,2)
Lj44:
	cmpl	-56(%ebp),%ebx
	jg	Lj46
Lj45:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_TR_STATIC_INIT
_TREES_TR_STATIC_INIT:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_TREES_INIT_BLOCK$DEFLATE_STATE
_TREES_INIT_BLOCK$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj63:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	$0,136(%eax,%edx,4)
	cmpl	$285,-8(%ebp)
	jl	Lj63
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj68:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	$0,2428(%edx,%eax,4)
	cmpl	$29,-8(%ebp)
	jl	Lj68
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj73:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	$0,2672(%edx,%eax,4)
	cmpl	$18,-8(%ebp)
	jl	Lj73
	movl	-4(%ebp),%eax
	movw	$1,1160(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5792(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5788(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5800(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5780(%eax)
	leave
	ret

.text
	.align 4
.globl	_TREES__TR_INIT$DEFLATE_STATE
_TREES__TR_INIT$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	%eax,-4(%ebp)
	call	L_TREES_TR_STATIC_INIT$stub
	movl	-4(%ebp),%eax
	movl	$0,5796(%eax)
	movl	-4(%ebp),%eax
	leal	136(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,2828(%edx)
	movl	L_TC_TREES_STATIC_L_DESC$non_lazy_ptr-Lj87(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,2836(%edx)
	movl	-4(%ebp),%eax
	leal	2428(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,2840(%edx)
	movl	L_TC_TREES_STATIC_D_DESC$non_lazy_ptr-Lj87(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,2848(%edx)
	movl	-4(%ebp),%eax
	leal	2672(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,2852(%edx)
	movl	L_TC_TREES_STATIC_BL_DESC$non_lazy_ptr-Lj87(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,2860(%edx)
	movl	-4(%ebp),%eax
	movw	$0,5808(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5812(%eax)
	movl	-4(%ebp),%eax
	movl	$8,5804(%eax)
	movl	-4(%ebp),%eax
	call	L_TREES_INIT_BLOCK$DEFLATE_STATE$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT
_TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	2896(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj117
	.align 2
Lj116:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	5188(%eax),%edx
	jl	Lj121
	jmp	Lj120
Lj121:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movl	2896(%edx,%eax,4),%esi
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	2896(%eax,%edx,4),%edx
	movw	(%ecx,%esi,4),%ax
	cmpw	(%ebx,%edx,4),%ax
	jb	Lj119
	jmp	Lj122
Lj122:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movl	2896(%edx,%eax,4),%esi
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	2896(%edx,%eax,4),%edx
	movw	(%ecx,%esi,4),%ax
	cmpw	(%ebx,%edx,4),%ax
	je	Lj123
	jmp	Lj120
Lj123:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movl	2896(%edx,%eax,4),%ebx
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	2896(%edx,%eax,4),%eax
	movb	5196(%ecx,%ebx,1),%dl
	cmpb	5196(%esi,%eax,1),%dl
	jbe	Lj119
	jmp	Lj120
Lj119:
	incl	-20(%ebp)
Lj120:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	2896(%eax,%edx,4),%eax
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movw	(%ebx,%eax,4),%ax
	cmpw	(%edx,%ecx,4),%ax
	ja	Lj124
	jmp	Lj126
Lj126:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	2896(%eax,%edx,4),%eax
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movw	(%ebx,%eax,4),%ax
	cmpw	(%edx,%ecx,4),%ax
	je	Lj127
	jmp	Lj125
Lj127:
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	2896(%eax,%edx,4),%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	5196(%ebx,%eax,1),%al
	cmpb	5196(%ecx,%edx,1),%al
	jae	Lj124
	jmp	Lj125
Lj124:
	jmp	Lj118
Lj125:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	2896(%edx,%eax,4),%eax
	movl	%eax,2896(%ecx,%ebx,4)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-20(%ebp)
Lj117:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	5188(%eax),%edx
	jle	Lj116
	jmp	Lj118
Lj118:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	%ecx,2896(%edx,%eax,4)
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TREES_GEN_BITLEN$DEFLATE_STATE$TREE_DESC
_TREES_GEN_BITLEN$DEFLATE_STATE$TREE_DESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	16(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-48(%ebp)
	decl	-48(%ebp)
	.align 2
Lj154:
	incl	-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	movw	$0,2864(%edx,%eax,2)
	cmpl	$15,-48(%ebp)
	jl	Lj154
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	5192(%eax),%eax
	movl	2896(%edx,%eax,4),%eax
	movw	$0,2(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	movl	5192(%eax),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	cmpl	$572,-36(%ebp)
	jg	Lj160
	decl	-36(%ebp)
	.align 2
Lj161:
	incl	-36(%ebp)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	2896(%edx,%eax,4),%eax
	movl	%eax,-40(%ebp)
	movl	-12(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	movzwl	2(%eax,%edx,4),%eax
	movzwl	2(%ecx,%eax,4),%eax
	incl	%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj166
	jmp	Lj167
Lj166:
	movl	-32(%ebp),%eax
	movl	%eax,-48(%ebp)
	incl	-60(%ebp)
Lj167:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%ecx
	movw	-48(%ebp),%ax
	movw	%ax,2(%edx,%ecx,4)
	movl	-40(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj172
	jmp	Lj173
Lj172:
	jmp	Lj159
Lj173:
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	incw	2864(%edx,%eax,2)
	movl	$0,-52(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jge	Lj176
	jmp	Lj177
Lj176:
	movl	-24(%ebp),%ecx
	movl	-40(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-52(%ebp)
Lj177:
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	movw	(%eax,%edx,4),%ax
	movw	%ax,-54(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movzwl	-54(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5788(%edx)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj182
	jmp	Lj183
Lj182:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	movzwl	2(%edx,%eax,4),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movzwl	-54(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5792(%edx)
Lj183:
Lj159:
	cmpl	$572,-36(%ebp)
	jl	Lj161
Lj160:
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj184
	jmp	Lj185
Lj184:
	jmp	Lj136
Lj185:
	.align 2
Lj186:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,-48(%ebp)
	jmp	Lj192
	.align 2
Lj191:
	decl	-48(%ebp)
Lj192:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movzwl	2864(%eax,%edx,2),%eax
	testl	%eax,%eax
	je	Lj191
	jmp	Lj193
Lj193:
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	decw	2864(%eax,%edx,2)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%eax
	incl	%eax
	addw	$2,2864(%edx,%eax,2)
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	decw	2864(%edx,%eax,2)
	subl	$2,-60(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj188
	jmp	Lj186
Lj188:
	movl	$573,-36(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-48(%ebp)
	cmpl	$1,-48(%ebp)
	jl	Lj197
	incl	-48(%ebp)
	.align 2
Lj198:
	decl	-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-48(%ebp),%edx
	movzwl	2864(%eax,%edx,2),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj202
	.align 2
Lj201:
	decl	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	2896(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj206
	jmp	Lj207
Lj206:
	jmp	Lj202
Lj207:
	movl	-12(%ebp),%edx
	movl	-44(%ebp),%eax
	movzwl	2(%edx,%eax,4),%eax
	cmpl	-48(%ebp),%eax
	jne	Lj208
	jmp	Lj209
Lj208:
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%edx
	movzwl	2(%eax,%edx,4),%edx
	movl	-48(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-44(%ebp),%eax
	movzwl	(%ecx,%eax,4),%eax
	mull	%edx
	movl	-4(%ebp),%edx
	addl	%eax,5788(%edx)
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%edx
	movw	-48(%ebp),%cx
	movw	%cx,2(%eax,%edx,4)
Lj209:
	decl	-40(%ebp)
Lj202:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj201
	jmp	Lj203
Lj203:
	cmpl	$1,-48(%ebp)
	jg	Lj198
Lj197:
Lj136:
	leave
	ret

.text
	.align 4
.globl	_TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC
_TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,5188(%eax)
	movl	-4(%ebp),%eax
	movl	$573,5192(%eax)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj227
	decl	-24(%ebp)
	.align 2
Lj228:
	incl	-24(%ebp)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzwl	(%ecx,%edx,4),%edx
	testl	%edx,%edx
	jne	Lj229
	jmp	Lj230
Lj229:
	movl	-24(%ebp),%edx
	movl	%edx,-32(%ebp)
	movl	-4(%ebp),%edx
	incl	5188(%edx)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	5188(%edx),%edx
	movl	-24(%ebp),%ecx
	movl	%ecx,2896(%ebx,%edx,4)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	$0,5196(%edx,%ecx,1)
	jmp	Lj237
Lj230:
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movw	$0,2(%ecx,%edx,4)
Lj237:
	cmpl	-24(%ebp),%eax
	jg	Lj228
Lj227:
	jmp	Lj241
	.align 2
Lj240:
	movl	-4(%ebp),%eax
	incl	5188(%eax)
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj243
	jmp	Lj244
Lj243:
	incl	-32(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	5188(%eax),%eax
	movl	-32(%ebp),%edx
	movl	%edx,2896(%ecx,%eax,4)
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj249
Lj244:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	5188(%eax),%eax
	movl	$0,2896(%edx,%eax,4)
	movl	$0,-36(%ebp)
Lj249:
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%eax
	movw	$1,(%edx,%eax,4)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movb	$0,5196(%eax,%edx,1)
	movl	-4(%ebp),%eax
	decl	5788(%eax)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj258
	jmp	Lj259
Lj258:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%edx
	movzwl	2(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	subl	%eax,5792(%edx)
Lj259:
Lj241:
	movl	-4(%ebp),%eax
	movl	5188(%eax),%eax
	cmpl	$2,%eax
	jl	Lj240
	jmp	Lj242
Lj242:
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	5188(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-24(%ebp)
	cmpl	$1,-24(%ebp)
	jl	Lj263
	incl	-24(%ebp)
	.align 2
Lj264:
	decl	-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT$stub
	cmpl	$1,-24(%ebp)
	jg	Lj264
Lj263:
	movl	-20(%ebp),%eax
	movl	%eax,-36(%ebp)
	.align 2
Lj273:
	movl	-4(%ebp),%eax
	movl	2900(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	5188(%eax),%eax
	movl	-4(%ebp),%edx
	movl	2896(%ecx,%eax,4),%eax
	movl	%eax,2900(%edx)
	movl	-4(%ebp),%eax
	decl	5188(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	2900(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	decl	5192(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	5192(%eax),%eax
	movl	-24(%ebp),%edx
	movl	%edx,2896(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	decl	5192(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	5192(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,2896(%ecx,%edx,4)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movzwl	(%eax,%edx,4),%eax
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%edx
	movzwl	(%ecx,%edx,4),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%ecx
	movl	-36(%ebp),%edx
	movw	%ax,(%ecx,%edx,4)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ebp),%ebx
	movb	5196(%eax,%edx,1),%al
	cmpb	5196(%ecx,%ebx,1),%al
	jae	Lj294
	jmp	Lj295
Lj294:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movzbl	5196(%edx,%eax,1),%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%ecx
	movb	%al,5196(%edx,%ecx,1)
	jmp	Lj298
Lj295:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movzbl	5196(%eax,%edx,1),%eax
	incl	%eax
	movl	-4(%ebp),%ecx
	movl	-36(%ebp),%edx
	movb	%al,5196(%ecx,%edx,1)
Lj298:
	movl	-12(%ebp),%ecx
	movl	-28(%ebp),%eax
	movw	-36(%ebp),%dx
	movw	%dx,2(%ecx,%eax,4)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ecx
	movw	-36(%ebp),%dx
	movw	%dx,2(%eax,%ecx,4)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,2900(%eax)
	incl	-36(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	5188(%eax),%eax
	cmpl	$2,%eax
	jl	Lj275
	jmp	Lj273
Lj275:
	movl	-4(%ebp),%eax
	decl	5192(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	5192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	2900(%eax),%eax
	movl	%eax,2896(%ecx,%edx,4)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_GEN_BITLEN$DEFLATE_STATE$TREE_DESC$stub
	movl	$15,(%esp)
	movl	-4(%ebp),%eax
	leal	2864(%eax),%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_TREES_GEN_CODES$TREE_PTR$LONGINT$array_of_WORD$stub
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_SCAN_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT
_TREES_SCAN_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-20(%ebp)
	movl	-8(%ebp),%eax
	movzwl	2(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$7,-36(%ebp)
	movl	$4,-40(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj339
	jmp	Lj340
Lj339:
	movl	$138,-36(%ebp)
	movl	$3,-40(%ebp)
Lj340:
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	incl	%eax
	movw	$65535,2(%edx,%eax,4)
	movl	8(%ebp),%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj348
	decl	-16(%ebp)
	.align 2
Lj349:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	incl	%eax
	movzwl	2(%ecx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj356
	jmp	Lj355
Lj356:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	je	Lj354
	jmp	Lj355
Lj354:
	jmp	Lj347
	jmp	Lj357
Lj355:
	movl	-32(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jl	Lj358
	jmp	Lj359
Lj358:
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%ebx
	movw	-32(%ebp),%ax
	addw	%ax,2672(%ecx,%ebx,4)
	jmp	Lj360
Lj359:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj361
	jmp	Lj362
Lj361:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj363
	jmp	Lj364
Lj363:
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%eax
	incw	2672(%ecx,%eax,4)
Lj364:
	movl	-4(%ebp),%eax
	incw	2736(%eax)
	jmp	Lj365
Lj362:
	movl	-32(%ebp),%eax
	cmpl	$10,%eax
	jle	Lj366
	jmp	Lj367
Lj366:
	movl	-4(%ebp),%eax
	incw	2740(%eax)
	jmp	Lj368
Lj367:
	movl	-4(%ebp),%eax
	incw	2744(%eax)
Lj368:
Lj365:
Lj360:
Lj357:
	movl	$0,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj373
	jmp	Lj374
Lj373:
	movl	$138,-36(%ebp)
	movl	$3,-40(%ebp)
	jmp	Lj379
Lj374:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	je	Lj380
	jmp	Lj381
Lj380:
	movl	$6,-36(%ebp)
	movl	$3,-40(%ebp)
	jmp	Lj386
Lj381:
	movl	$7,-36(%ebp)
	movl	$4,-40(%ebp)
Lj386:
Lj379:
Lj347:
	cmpl	-16(%ebp),%edx
	jg	Lj349
Lj348:
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_SEND_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT
_TREES_SEND_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-20(%ebp)
	movl	-8(%ebp),%eax
	movzwl	2(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$7,-36(%ebp)
	movl	$4,-40(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj403
	jmp	Lj404
Lj403:
	movl	$138,-36(%ebp)
	movl	$3,-40(%ebp)
Lj404:
	movl	8(%ebp),%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj410
	decl	-16(%ebp)
	.align 2
Lj411:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzwl	2(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj418
	jmp	Lj417
Lj418:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	je	Lj416
	jmp	Lj417
Lj416:
	jmp	Lj409
	jmp	Lj419
Lj417:
	movl	-32(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jl	Lj420
	jmp	Lj421
Lj420:
	.align 2
Lj422:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movzwl	2674(%edx,%eax,4),%ecx
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movzwl	2672(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	decl	-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj424
	jmp	Lj422
Lj424:
	jmp	Lj431
Lj421:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj432
	jmp	Lj433
Lj432:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj434
	jmp	Lj435
Lj434:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movzwl	2674(%eax,%edx,4),%ecx
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movzwl	2672(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	decl	-32(%ebp)
Lj435:
	movl	-4(%ebp),%eax
	movzwl	2738(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	2736(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-32(%ebp),%edx
	subl	$3,%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	jmp	Lj454
Lj433:
	movl	-32(%ebp),%eax
	cmpl	$10,%eax
	jle	Lj455
	jmp	Lj456
Lj455:
	movl	-4(%ebp),%eax
	movzwl	2742(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	2740(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-32(%ebp),%edx
	subl	$3,%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	jmp	Lj469
Lj456:
	movl	-4(%ebp),%eax
	movzwl	2746(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	2744(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-32(%ebp),%edx
	subl	$11,%edx
	movl	-4(%ebp),%eax
	movl	$7,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
Lj469:
Lj454:
Lj431:
Lj419:
	movl	$0,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj486
	jmp	Lj487
Lj486:
	movl	$138,-36(%ebp)
	movl	$3,-40(%ebp)
	jmp	Lj492
Lj487:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	je	Lj493
	jmp	Lj494
Lj493:
	movl	$6,-36(%ebp)
	movl	$3,-40(%ebp)
	jmp	Lj499
Lj494:
	movl	$7,-36(%ebp)
	movl	$4,-40(%ebp)
Lj499:
Lj492:
Lj409:
	cmpl	-16(%ebp),%ebx
	jg	Lj411
Lj410:
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_BUILD_BL_TREE$DEFLATE_STATE$$LONGINT
_TREES_BUILD_BL_TREE$DEFLATE_STATE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj505
Lj505:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	2832(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	136(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$572,%ecx
	call	L_TREES_SCAN_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	2844(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	2428(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$60,%ecx
	call	L_TREES_SCAN_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT$stub
	movl	-4(%ebp),%eax
	leal	2852(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC$stub
	movl	$18,-12(%ebp)
	incl	-12(%ebp)
	.align 2
Lj528:
	decl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	L_TC_TREES_BL_ORDER$non_lazy_ptr-Lj505(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	movzwl	2674(%ecx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj529
	jmp	Lj530
Lj529:
	jmp	Lj527
Lj530:
	cmpl	$3,-12(%ebp)
	jg	Lj528
Lj527:
	movl	-12(%ebp),%eax
	incl	%eax
	imull	$3,%eax
	addl	$5,%eax
	addl	$5,%eax
	addl	$4,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5788(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_SEND_ALL_TREES$DEFLATE_STATE$LONGINT$LONGINT$LONGINT
_TREES_SEND_ALL_TREES$DEFLATE_STATE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj534
Lj534:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	$257,%edx
	movl	-4(%ebp),%eax
	movl	$5,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	$5,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	8(%ebp),%edx
	subl	$4,%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	8(%ebp),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj554
	decl	-16(%ebp)
	.align 2
Lj555:
	incl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	L_TC_TREES_BL_ORDER$non_lazy_ptr-Lj534(%ebx),%edx
	movzbl	(%edx,%eax,1),%eax
	movzwl	2674(%ecx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%esi
	jg	Lj555
Lj554:
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	136(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$572,%ecx
	call	L_TREES_SEND_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT$stub
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	2428(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$60,%ecx
	call	L_TREES_SEND_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT$stub
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TREES_BI_WINDUP$DEFLATE_STATE
_TREES_BI_WINDUP$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	5812(%eax),%eax
	cmpl	$8,%eax
	jg	Lj580
	jmp	Lj581
Lj580:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movw	5808(%eax),%ax
	andw	$255,%ax
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	5808(%eax),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	jmp	Lj586
Lj581:
	movl	-4(%ebp),%eax
	movl	5812(%eax),%eax
	cmpl	$0,%eax
	jg	Lj587
	jmp	Lj588
Lj587:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movb	5808(%eax),%al
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
Lj588:
Lj586:
	movl	-4(%ebp),%eax
	movw	$0,5808(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5812(%eax)
	leave
	ret

.text
	.align 4
.globl	_TREES_COPY_BLOCK$DEFLATE_STATE$PBYTE$WORD$BOOLEAN
_TREES_COPY_BLOCK$DEFLATE_STATE$PBYTE$WORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_TREES_BI_WINDUP$DEFLATE_STATE$stub
	movl	-4(%ebp),%eax
	movl	$8,5804(%eax)
	cmpb	$0,8(%ebp)
	jne	Lj601
	jmp	Lj602
Lj601:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movw	-12(%ebp),%ax
	andw	$255,%ax
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movzwl	-12(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movw	-12(%ebp),%ax
	notw	%ax
	andw	$255,%ax
	movl	-4(%ebp),%edx
	movl	8(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movw	-12(%ebp),%ax
	notw	%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
Lj602:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movzwl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzwl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%eax,20(%edx)
	leave
	ret

.text
	.align 4
.globl	_TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN
_TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzbl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	5796(%eax),%eax
	addl	$3,%eax
	addl	$7,%eax
	andl	$-8,%eax
	movl	-4(%ebp),%edx
	movl	%eax,5796(%edx)
	movl	-12(%ebp),%eax
	addl	$4,%eax
	shll	$3,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5796(%edx)
	movb	$1,(%esp)
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_COPY_BLOCK$DEFLATE_STATE$PBYTE$WORD$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_TREES_BI_FLUSH$DEFLATE_STATE
_TREES_BI_FLUSH$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	5812(%eax),%eax
	cmpl	$16,%eax
	je	Lj639
	jmp	Lj640
Lj639:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movw	5808(%eax),%ax
	andw	$255,%ax
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	5808(%eax),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movw	$0,5808(%eax)
	movl	-4(%ebp),%eax
	movl	$0,5812(%eax)
	jmp	Lj649
Lj640:
	movl	-4(%ebp),%eax
	movl	5812(%eax),%eax
	cmpl	$8,%eax
	jge	Lj650
	jmp	Lj651
Lj650:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movb	5808(%eax),%al
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	incl	20(%eax)
	movl	-4(%ebp),%eax
	movzwl	5808(%eax),%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movw	%ax,5808(%edx)
	movl	-4(%ebp),%eax
	subl	$8,5812(%eax)
Lj651:
Lj649:
	leave
	ret

.text
	.align 4
.globl	_TREES__TR_ALIGN$DEFLATE_STATE
_TREES__TR_ALIGN$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj657
Lj657:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	$2,%edx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	L_TC_TREES_STATIC_LTREE$non_lazy_ptr-Lj657(%ebx),%eax
	movzwl	1026(%eax),%ecx
	movl	L_TC_TREES_STATIC_LTREE$non_lazy_ptr-Lj657(%ebx),%eax
	movzwl	1024(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	addl	$10,5796(%eax)
	movl	-4(%ebp),%eax
	call	L_TREES_BI_FLUSH$DEFLATE_STATE$stub
	movl	-4(%ebp),%eax
	movl	5804(%eax),%edx
	incl	%edx
	addl	$10,%edx
	movl	-4(%ebp),%eax
	movl	5812(%eax),%eax
	subl	%eax,%edx
	cmpl	$9,%edx
	jl	Lj672
	jmp	Lj673
Lj672:
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	$2,%edx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	L_TC_TREES_STATIC_LTREE$non_lazy_ptr-Lj657(%ebx),%eax
	movzwl	1026(%eax),%ecx
	movl	L_TC_TREES_STATIC_LTREE$non_lazy_ptr-Lj657(%ebx),%eax
	movzwl	1024(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	addl	$10,5796(%eax)
	movl	-4(%ebp),%eax
	call	L_TREES_BI_FLUSH$DEFLATE_STATE$stub
Lj673:
	movl	-4(%ebp),%eax
	movl	$7,5804(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES_SET_DATA_TYPE$DEFLATE_STATE
_TREES_SET_DATA_TYPE$DEFLATE_STATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj699
	.align 2
Lj698:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movzwl	136(%eax,%edx,4),%eax
	addl	%eax,-16(%ebp)
	incl	-8(%ebp)
Lj699:
	movl	-8(%ebp),%eax
	cmpl	$7,%eax
	jl	Lj698
	jmp	Lj700
Lj700:
	jmp	Lj702
	.align 2
Lj701:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movzwl	136(%eax,%edx,4),%eax
	addl	%eax,-12(%ebp)
	incl	-8(%ebp)
Lj702:
	movl	-8(%ebp),%eax
	cmpl	$128,%eax
	jl	Lj701
	jmp	Lj703
Lj703:
	jmp	Lj705
	.align 2
Lj704:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	136(%edx,%eax,4),%eax
	addl	%eax,-16(%ebp)
	incl	-8(%ebp)
Lj705:
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jl	Lj704
	jmp	Lj706
Lj706:
	movl	-12(%ebp),%eax
	shrl	$2,%eax
	cmpl	-16(%ebp),%eax
	jb	Lj707
	jmp	Lj708
Lj707:
	movl	-4(%ebp),%eax
	movb	$0,28(%eax)
	jmp	Lj711
Lj708:
	movl	-4(%ebp),%eax
	movb	$1,28(%eax)
Lj711:
	leave
	ret

.text
	.align 4
.globl	_TREES_COMPRESS_BLOCK$DEFLATE_STATE$array_of_CT_DATA$array_of_CT_DATA
_TREES_COMPRESS_BLOCK$DEFLATE_STATE$array_of_CT_DATA$array_of_CT_DATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj715
Lj715:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	5780(%eax),%eax
	testl	%eax,%eax
	jne	Lj718
	jmp	Lj719
Lj718:
	.align 2
Lj720:
	movl	-4(%ebp),%eax
	movl	5784(%eax),%edx
	movl	-24(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	5772(%eax),%eax
	movl	-24(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,-20(%ebp)
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj727
	jmp	Lj728
Lj727:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movzwl	2(%edx,%eax,4),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movzwl	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	jmp	Lj735
Lj728:
	movl	-20(%ebp),%edx
	movl	L_TC_TREES__LENGTH_CODE$non_lazy_ptr-Lj715(%esi),%eax
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	$256,%eax
	incl	%eax
	movzwl	2(%edx,%eax,4),%ecx
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	$256,%eax
	incl	%eax
	movzwl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-28(%ebp),%eax
	movl	L_TC_TREES_EXTRA_LBITS$non_lazy_ptr-Lj715(%esi),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj746
	jmp	Lj747
Lj746:
	movl	-28(%ebp),%eax
	movl	L_TC_TREES_BASE_LENGTH$non_lazy_ptr-Lj715(%esi),%edx
	movl	(%edx,%eax,4),%eax
	subl	%eax,-20(%ebp)
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
Lj747:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$256,%eax
	jb	Lj754
	jmp	Lj755
Lj754:
	movl	-16(%ebp),%eax
	movl	L_TC_TREES__DIST_CODE$non_lazy_ptr-Lj715(%esi),%edx
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj758
Lj755:
	movl	-16(%ebp),%eax
	shrl	$7,%eax
	addl	$256,%eax
	movl	L_TC_TREES__DIST_CODE$non_lazy_ptr-Lj715(%esi),%edx
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,-28(%ebp)
Lj758:
	movl	12(%ebp),%eax
	movl	-28(%ebp),%edx
	movzwl	2(%eax,%edx,4),%ecx
	movl	12(%ebp),%edx
	movl	-28(%ebp),%eax
	movzwl	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-28(%ebp),%edx
	movl	L_TC_TREES_EXTRA_DBITS$non_lazy_ptr-Lj715(%esi),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj769
	jmp	Lj770
Lj769:
	movl	-28(%ebp),%edx
	movl	L_TC_TREES_BASE_DIST$non_lazy_ptr-Lj715(%esi),%eax
	movl	(%eax,%edx,4),%eax
	subl	%eax,-16(%ebp)
	movl	-32(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
Lj770:
Lj735:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	5780(%edx),%eax
	jae	Lj722
	jmp	Lj720
Lj722:
Lj719:
	movl	-8(%ebp),%eax
	movzwl	1026(%eax),%ecx
	movl	-8(%ebp),%eax
	movzwl	1024(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	1026(%eax),%eax
	movl	%eax,5804(%edx)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TREES__TR_FLUSH_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$$LONGINT
_TREES__TR_FLUSH_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj786
Lj786:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	cmpl	$0,%eax
	jg	Lj789
	jmp	Lj790
Lj789:
	movl	-4(%ebp),%eax
	movzbl	28(%eax),%eax
	cmpl	$2,%eax
	je	Lj791
	jmp	Lj792
Lj791:
	movl	-4(%ebp),%eax
	call	L_TREES_SET_DATA_TYPE$DEFLATE_STATE$stub
Lj792:
	movl	-4(%ebp),%eax
	leal	2828(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC$stub
	movl	-4(%ebp),%eax
	leal	2840(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC$stub
	movl	-4(%ebp),%eax
	call	L_TREES_BUILD_BL_TREE$DEFLATE_STATE$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	5788(%eax),%eax
	addl	$3,%eax
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	5792(%eax),%eax
	addl	$3,%eax
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj811
	jmp	Lj812
Lj811:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj812:
	jmp	Lj815
Lj790:
	movl	-12(%ebp),%eax
	addl	$5,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj815:
	movl	-12(%ebp),%eax
	addl	$4,%eax
	cmpl	-20(%ebp),%eax
	jle	Lj822
	jmp	Lj821
Lj822:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj820
	jmp	Lj821
Lj820:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$stub
	jmp	Lj831
Lj821:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj832
	jmp	Lj833
Lj832:
	movzbl	8(%ebp),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	$29,(%esp)
	movl	L_TC_TREES_STATIC_DTREE$non_lazy_ptr-Lj786(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_TC_TREES_STATIC_LTREE$non_lazy_ptr-Lj786(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	$287,%ecx
	call	L_TREES_COMPRESS_BLOCK$DEFLATE_STATE$array_of_CT_DATA$array_of_CT_DATA$stub
	movl	-4(%ebp),%eax
	movl	5792(%eax),%eax
	addl	$3,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5796(%edx)
	jmp	Lj852
Lj833:
	movzbl	8(%ebp),%edx
	addl	$4,%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	2844(%eax),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	2832(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_TREES_SEND_ALL_TREES$DEFLATE_STATE$LONGINT$LONGINT$LONGINT$stub
	movl	$60,(%esp)
	movl	-4(%ebp),%eax
	leal	2428(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	136(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$572,%ecx
	call	L_TREES_COMPRESS_BLOCK$DEFLATE_STATE$array_of_CT_DATA$array_of_CT_DATA$stub
	movl	-4(%ebp),%eax
	movl	5788(%eax),%eax
	addl	$3,%eax
	movl	-4(%ebp),%edx
	addl	%eax,5796(%edx)
Lj852:
Lj831:
	movl	-4(%ebp),%eax
	call	L_TREES_INIT_BLOCK$DEFLATE_STATE$stub
	cmpb	$0,8(%ebp)
	jne	Lj881
	jmp	Lj882
Lj881:
	movl	-4(%ebp),%eax
	call	L_TREES_BI_WINDUP$DEFLATE_STATE$stub
	movl	-4(%ebp),%eax
	addl	$7,5796(%eax)
Lj882:
	movl	-4(%ebp),%eax
	movl	5796(%eax),%eax
	shrl	$3,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN
_TREES__TR_TALLY$DEFLATE_STATE$LONGWORD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj888
Lj888:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	5784(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	5780(%eax),%edx
	movw	-8(%ebp),%ax
	movw	%ax,(%ecx,%edx,2)
	movl	-4(%ebp),%eax
	movl	5772(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	5780(%eax),%eax
	movb	-12(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	movl	-4(%ebp),%eax
	incl	5780(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj893
	jmp	Lj894
Lj893:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	incw	136(%edx,%eax,4)
	jmp	Lj895
Lj894:
	movl	-4(%ebp),%eax
	incl	5800(%eax)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jb	Lj896
	jmp	Lj897
Lj896:
	movl	-8(%ebp),%eax
	movl	L_TC_TREES__DIST_CODE$non_lazy_ptr-Lj888(%ebx),%edx
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-16(%ebp)
	jmp	Lj900
Lj897:
	movl	-8(%ebp),%eax
	shrl	$7,%eax
	addl	$256,%eax
	movl	L_TC_TREES__DIST_CODE$non_lazy_ptr-Lj888(%ebx),%edx
	movzbw	(%edx,%eax,1),%ax
	movw	%ax,-16(%ebp)
Lj900:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	L_TC_TREES__LENGTH_CODE$non_lazy_ptr-Lj888(%ebx),%eax
	movzbl	(%eax,%edx,1),%eax
	addl	$256,%eax
	incl	%eax
	incw	136(%ecx,%eax,4)
	movl	-4(%ebp),%edx
	movzwl	-16(%ebp),%eax
	incw	2428(%edx,%eax,4)
Lj895:
	movl	-4(%ebp),%eax
	movl	5776(%eax),%esi
	movl	$0,%ecx
	subl	$1,%esi
	sbbl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	5780(%eax),%edx
	movl	$0,%eax
	cmpl	%eax,%ecx
	jne	Lj904
	cmpl	%edx,%esi
	jne	Lj904
	jmp	Lj903
Lj903:
	movb	$1,-13(%ebp)
	jmp	Lj905
Lj904:
	movb	$0,-13(%ebp)
Lj905:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_TREES
_THREADVARLIST_TREES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 1
.globl	_TC_TREES_STATIC_LTREE
_TC_TREES_STATIC_LTREE:
	.short	12,8,140,8,76,8,204,8,44,8,172,8,108,8,236,8,28,8,156,8,92,8,220,8,60,8,188,8,124,8,252,8,2,8,130,8,66,8,194,8
	.short	34,8,162,8,98,8,226,8,18,8,146,8,82,8,210,8,50,8,178,8,114,8,242,8,10,8,138,8,74,8,202,8,42,8,170,8,106,8,234
	.short	8,26,8,154,8,90,8,218,8,58,8,186,8,122,8,250,8,6,8,134,8,70,8,198,8,38,8,166,8,102,8,230,8,22,8,150,8,86,8,214
	.short	8,54,8,182,8,118,8,246,8,14,8,142,8,78,8,206,8,46,8,174,8,110,8,238,8,30,8,158,8,94,8,222,8,62,8,190,8,126,8,254
	.short	8,1,8,129,8,65,8,193,8,33,8,161,8,97,8,225,8,17,8,145,8,81,8,209,8,49,8,177,8,113,8,241,8,9,8,137,8,73,8,201,8,41
	.short	8,169,8,105,8,233,8,25,8,153,8,89,8,217,8,57,8,185,8,121,8,249,8,5,8,133,8,69,8,197,8,37,8,165,8,101,8,229,8,21
	.short	8,149,8,85,8,213,8,53,8,181,8,117,8,245,8,13,8,141,8,77,8,205,8,45,8,173,8,109,8,237,8,29,8,157,8,93,8,221,8,61
	.short	8,189,8,125,8,253,8,19,9,275,9,147,9,403,9,83,9,339,9,211,9,467,9,51,9,307,9,179,9,435,9,115,9,371,9,243,9,499
	.short	9,11,9,267,9,139,9,395,9,75,9,331,9,203,9,459,9,43,9,299,9,171,9,427,9,107,9,363,9,235,9,491,9,27,9,283,9,155
	.short	9,411,9,91,9,347,9,219,9,475,9,59,9,315,9,187,9,443,9,123,9,379,9,251,9,507,9,7,9,263,9,135,9,391,9,71,9,327
	.short	9,199,9,455,9,39,9,295,9,167,9,423,9,103,9,359,9,231,9,487,9,23,9,279,9,151,9,407,9,87,9,343,9,215,9,471,9,55
	.short	9,311,9,183,9,439,9,119,9,375,9,247,9,503,9,15,9,271,9,143,9,399,9,79,9,335,9,207,9,463,9,47,9,303,9,175,9,431
	.short	9,111,9,367,9,239,9,495,9,31,9,287,9,159,9,415,9,95,9,351,9,223,9,479,9,63,9,319,9,191,9,447,9,127,9,383,9,255
	.short	9,511,9,0,7,64,7,32,7,96,7,16,7,80,7,48,7,112,7,8,7,72,7,40,7,104,7,24,7,88,7,56,7,120,7,4,7,68,7,36,7,100,7,20,7,84
	.short	7,52,7,116,7,3,8,131,8,67,8,195,8,35,8,163,8,99,8,227,8

.data
	.align 1
.globl	_TC_TREES_STATIC_DTREE
_TC_TREES_STATIC_DTREE:
	.short	0,5,16,5,8,5,24,5,4,5,20,5,12,5,28,5,2,5,18,5,10,5,26,5,6,5,22,5,14,5,30,5,1,5,17,5,9,5,25,5,5,5,21,5,13,5,29,5,3,5,19,5,11
	.short	5,27,5,7,5,23,5

.data
.globl	_TC_TREES__DIST_CODE
_TC_TREES__DIST_CODE:
	.byte	0,1,2,3,4,4,5,5,6,6,6,6,7,7,7,7,8,8,8,8,8,8,8,8,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11
	.byte	11,11,11,11,11,11,11,11,11,11,11,11,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
	.byte	12,12,12,12,12,12,12,12,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13
	.byte	13,13,13,13,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14
	.byte	14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,15,15,15,15
	.byte	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	.byte	15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,0,16,17,18,18,19,19,20,20,20,20,21
	.byte	21,21,21,22,22,22,22,22,22,22,22,23,23,23,23,23,23,23,23,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,25
	.byte	25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26
	.byte	26,26,26,26,26,26,26,26,26,26,26,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27
	.byte	27,27,27,27,27,27,27,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28
	.byte	28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29
	.byte	29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29
	.byte	29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29,29

.data
.globl	_TC_TREES__LENGTH_CODE
_TC_TREES__LENGTH_CODE:
	.byte	0,1,2,3,4,5,6,7,8,8,9,9,10,10,11,11,12,12,12,12,13,13,13,13,14,14,14,14,15,15,15,15,16,16,16,16,16,16,16,16,17,17
	.byte	17,17,17,17,17,17,18,18,18,18,18,18,18,18,19,19,19,19,19,19,19,19,20,20,20,20,20,20,20,20,20,20,20,20,20,20
	.byte	20,20,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,23,23
	.byte	23,23,23,23,23,23,23,23,23,23,23,23,23,23,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24,24
	.byte	24,24,24,24,24,24,24,24,24,24,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25
	.byte	25,25,25,25,25,25,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26
	.byte	26,26,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,27,28

.data
	.align 2
.globl	_TC_TREES_BASE_LENGTH
_TC_TREES_BASE_LENGTH:
	.long	0,1,2,3,4,5,6,7,8,10,12,14,16,20,24,28,32,40,48,56,64,80,96,112,128,160,192,224,0

.data
	.align 2
.globl	_TC_TREES_BASE_DIST
_TC_TREES_BASE_DIST:
	.long	0,1,2,3,4,6,8,12,16,24,32,48,64,96,128,192,256,384,512,768,1024,1536,2048,3072,4096,6144,8192,12288
	.long	16384,24576

.data
	.align 2
.globl	_TC_TREES_EXTRA_LBITS
_TC_TREES_EXTRA_LBITS:
	.long	0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,0

.data
	.align 2
.globl	_TC_TREES_EXTRA_DBITS
_TC_TREES_EXTRA_DBITS:
	.long	0,0,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13

.data
	.align 2
.globl	_TC_TREES_EXTRA_BLBITS
_TC_TREES_EXTRA_BLBITS:
	.long	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,3,7

.data
.globl	_TC_TREES_BL_ORDER
_TC_TREES_BL_ORDER:
	.byte	16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15

.data
	.align 2
.globl	_TC_TREES_STATIC_L_DESC
_TC_TREES_STATIC_L_DESC:
	.long	_TC_TREES_STATIC_LTREE
	.long	_TC_TREES_EXTRA_LBITS
	.long	257,286,15

.data
	.align 2
.globl	_TC_TREES_STATIC_D_DESC
_TC_TREES_STATIC_D_DESC:
	.long	_TC_TREES_STATIC_DTREE
	.long	_TC_TREES_EXTRA_DBITS
	.long	0,30,15

.data
	.align 2
.globl	_TC_TREES_STATIC_BL_DESC
_TC_TREES_STATIC_BL_DESC:
	.long	0
	.long	_TC_TREES_EXTRA_BLBITS
	.long	0,19,7
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_BI_REVERSE$LONGWORD$LONGINT$$LONGWORD$stub:
.indirect_symbol _TREES_BI_REVERSE$LONGWORD$LONGINT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_TR_STATIC_INIT$stub:
.indirect_symbol _TREES_TR_STATIC_INIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_INIT_BLOCK$DEFLATE_STATE$stub:
.indirect_symbol _TREES_INIT_BLOCK$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT$stub:
.indirect_symbol _TREES_PQDOWNHEAP$DEFLATE_STATE$TREE_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_GEN_BITLEN$DEFLATE_STATE$TREE_DESC$stub:
.indirect_symbol _TREES_GEN_BITLEN$DEFLATE_STATE$TREE_DESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_GEN_CODES$TREE_PTR$LONGINT$array_of_WORD$stub:
.indirect_symbol _TREES_GEN_CODES$TREE_PTR$LONGINT$array_of_WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT$stub:
.indirect_symbol _TREES_SEND_BITS$DEFLATE_STATE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_SCAN_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT$stub:
.indirect_symbol _TREES_SCAN_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC$stub:
.indirect_symbol _TREES_BUILD_TREE$DEFLATE_STATE$TREE_DESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_SEND_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT$stub:
.indirect_symbol _TREES_SEND_TREE$DEFLATE_STATE$array_of_CT_DATA$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_BI_WINDUP$DEFLATE_STATE$stub:
.indirect_symbol _TREES_BI_WINDUP$DEFLATE_STATE
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

L_TREES_COPY_BLOCK$DEFLATE_STATE$PBYTE$WORD$BOOLEAN$stub:
.indirect_symbol _TREES_COPY_BLOCK$DEFLATE_STATE$PBYTE$WORD$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_BI_FLUSH$DEFLATE_STATE$stub:
.indirect_symbol _TREES_BI_FLUSH$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_SET_DATA_TYPE$DEFLATE_STATE$stub:
.indirect_symbol _TREES_SET_DATA_TYPE$DEFLATE_STATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_BUILD_BL_TREE$DEFLATE_STATE$$LONGINT$stub:
.indirect_symbol _TREES_BUILD_BL_TREE$DEFLATE_STATE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN$stub:
.indirect_symbol _TREES__TR_STORED_BLOCK$DEFLATE_STATE$PBYTE$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_COMPRESS_BLOCK$DEFLATE_STATE$array_of_CT_DATA$array_of_CT_DATA$stub:
.indirect_symbol _TREES_COMPRESS_BLOCK$DEFLATE_STATE$array_of_CT_DATA$array_of_CT_DATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TREES_SEND_ALL_TREES$DEFLATE_STATE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _TREES_SEND_ALL_TREES$DEFLATE_STATE$LONGINT$LONGINT$LONGINT
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
.globl	_INIT_TREES_CT_DATA_PTR
_INIT_TREES_CT_DATA_PTR:
	.byte	0
	.ascii	"\013ct_data_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_CT_DATA_PTR
_RTTI_TREES_CT_DATA_PTR:
	.byte	0
	.ascii	"\013ct_data_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_CT_DATA
_INIT_TREES_CT_DATA:
	.byte	13,7
	.ascii	"ct_data"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TREES_DEF2
_RTTI_TREES_DEF2:
	.byte	13
	.ascii	"\000"
	.long	2,2
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	0

.const_data
	.align 2
.globl	_RTTI_TREES_DEF4
_RTTI_TREES_DEF4:
	.byte	13
	.ascii	"\000"
	.long	2,2
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	0

.const_data
	.align 2
.globl	_RTTI_TREES_CT_DATA
_RTTI_TREES_CT_DATA:
	.byte	13,7
	.ascii	"ct_data"
	.long	4,2
	.long	_RTTI_TREES_DEF2
	.long	0
	.long	_RTTI_TREES_DEF4
	.long	2

.const_data
	.align 2
.globl	_INIT_TREES_LTREE_TYPE
_INIT_TREES_LTREE_TYPE:
	.byte	12
	.ascii	"\012ltree_type"
	.long	4,573
	.long	_INIT_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_RTTI_TREES_LTREE_TYPE
_RTTI_TREES_LTREE_TYPE:
	.byte	12
	.ascii	"\012ltree_type"
	.long	4,573
	.long	_RTTI_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_INIT_TREES_DTREE_TYPE
_INIT_TREES_DTREE_TYPE:
	.byte	12
	.ascii	"\012dtree_type"
	.long	4,61
	.long	_INIT_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_RTTI_TREES_DTREE_TYPE
_RTTI_TREES_DTREE_TYPE:
	.byte	12
	.ascii	"\012dtree_type"
	.long	4,61
	.long	_RTTI_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_INIT_TREES_HTREE_TYPE
_INIT_TREES_HTREE_TYPE:
	.byte	12
	.ascii	"\012htree_type"
	.long	4,39
	.long	_INIT_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_RTTI_TREES_HTREE_TYPE
_RTTI_TREES_HTREE_TYPE:
	.byte	12
	.ascii	"\012htree_type"
	.long	4,39
	.long	_RTTI_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_INIT_TREES_TREE_TYPE
_INIT_TREES_TREE_TYPE:
	.byte	12
	.ascii	"\011tree_type"
	.long	4,536870911
	.long	_INIT_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_RTTI_TREES_TREE_TYPE
_RTTI_TREES_TREE_TYPE:
	.byte	12
	.ascii	"\011tree_type"
	.long	4,536870911
	.long	_RTTI_TREES_CT_DATA
	.long	-1

.const_data
	.align 2
.globl	_INIT_TREES_TREE_PTR
_INIT_TREES_TREE_PTR:
	.byte	0
	.ascii	"\010tree_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_TREE_PTR
_RTTI_TREES_TREE_PTR:
	.byte	0
	.ascii	"\010tree_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_LTREE_PTR
_INIT_TREES_LTREE_PTR:
	.byte	0
	.ascii	"\011ltree_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_LTREE_PTR
_RTTI_TREES_LTREE_PTR:
	.byte	0
	.ascii	"\011ltree_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_DTREE_PTR
_INIT_TREES_DTREE_PTR:
	.byte	0
	.ascii	"\011dtree_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_DTREE_PTR
_RTTI_TREES_DTREE_PTR:
	.byte	0
	.ascii	"\011dtree_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_HTREE_PTR
_INIT_TREES_HTREE_PTR:
	.byte	0
	.ascii	"\011htree_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_HTREE_PTR
_RTTI_TREES_HTREE_PTR:
	.byte	0
	.ascii	"\011htree_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_STATIC_TREE_DESC_PTR
_INIT_TREES_STATIC_TREE_DESC_PTR:
	.byte	0
	.ascii	"\024static_tree_desc_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_STATIC_TREE_DESC_PTR
_RTTI_TREES_STATIC_TREE_DESC_PTR:
	.byte	0
	.ascii	"\024static_tree_desc_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_STATIC_TREE_DESC
_INIT_TREES_STATIC_TREE_DESC:
	.byte	13,16
	.ascii	"static_tree_desc"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_TREES_STATIC_TREE_DESC
_RTTI_TREES_STATIC_TREE_DESC:
	.byte	13,16
	.ascii	"static_tree_desc"
	.long	20,5
	.long	_RTTI_TREES_TREE_PTR
	.long	0
	.long	_RTTI_OBJPAS_PINTEGER
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_TREES_TREE_DESC_PTR
_INIT_TREES_TREE_DESC_PTR:
	.byte	0
	.ascii	"\015tree_desc_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_TREE_DESC_PTR
_RTTI_TREES_TREE_DESC_PTR:
	.byte	0
	.ascii	"\015tree_desc_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_TREE_DESC
_INIT_TREES_TREE_DESC:
	.byte	13,9
	.ascii	"tree_desc"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_TREES_TREE_DESC
_RTTI_TREES_TREE_DESC:
	.byte	13,9
	.ascii	"tree_desc"
	.long	12,3
	.long	_RTTI_TREES_TREE_PTR
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_TREES_STATIC_TREE_DESC_PTR
	.long	8

.const_data
	.align 2
.globl	_INIT_TREES_PPOSF
_INIT_TREES_PPOSF:
	.byte	0
	.ascii	"\005pPosf"

.const_data
	.align 2
.globl	_RTTI_TREES_PPOSF
_RTTI_TREES_PPOSF:
	.byte	0
	.ascii	"\005pPosf"

.const_data
	.align 2
.globl	_INIT_TREES_ZPOSFARRAY
_INIT_TREES_ZPOSFARRAY:
	.byte	12
	.ascii	"\012zPosfArray"
	.long	2,1073741823
	.long	_INIT_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_TREES_ZPOSFARRAY
_RTTI_TREES_ZPOSFARRAY:
	.byte	12
	.ascii	"\012zPosfArray"
	.long	2,1073741823
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_INIT_TREES_PZPOSFARRAY
_INIT_TREES_PZPOSFARRAY:
	.byte	0
	.ascii	"\013pzPosfArray"

.const_data
	.align 2
.globl	_RTTI_TREES_PZPOSFARRAY
_RTTI_TREES_PZPOSFARRAY:
	.byte	0
	.ascii	"\013pzPosfArray"

.const_data
	.align 2
.globl	_INIT_TREES_DEFLATE_STATE_PTR
_INIT_TREES_DEFLATE_STATE_PTR:
	.byte	0
	.ascii	"\021deflate_state_ptr"

.const_data
	.align 2
.globl	_RTTI_TREES_DEFLATE_STATE_PTR
_RTTI_TREES_DEFLATE_STATE_PTR:
	.byte	0
	.ascii	"\021deflate_state_ptr"

.const_data
	.align 2
.globl	_INIT_TREES_DEFLATE_STATE
_INIT_TREES_DEFLATE_STATE:
	.byte	13,13
	.ascii	"deflate_state"
	.long	5820,0

.const_data
	.align 2
.globl	_RTTI_TREES_DEF23
_RTTI_TREES_DEF23:
	.byte	12
	.ascii	"\000"
	.long	2,16
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_TREES_DEF24
_RTTI_TREES_DEF24:
	.byte	12
	.ascii	"\000"
	.long	4,573
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_TREES_DEF25
_RTTI_TREES_DEF25:
	.byte	12
	.ascii	"\000"
	.long	1,573
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_TREES_DEFLATE_STATE
_RTTI_TREES_DEFLATE_STATE:
	.byte	13,13
	.ascii	"deflate_state"
	.long	5820,59
	.long	_RTTI_ZBASE_Z_STREAMP
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_ZBASE_PBYTEARRAY
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_PBYTE
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_BYTE
	.long	28
	.long	_RTTI_SYSTEM_BYTE
	.long	29
	.long	_RTTI_SYSTEM_LONGINT
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_SYSTEM_LONGWORD
	.long	40
	.long	_RTTI_SYSTEM_LONGWORD
	.long	44
	.long	_RTTI_ZBASE_PBYTEARRAY
	.long	48
	.long	_RTTI_SYSTEM_LONGINT
	.long	52
	.long	_RTTI_TREES_PZPOSFARRAY
	.long	56
	.long	_RTTI_TREES_PZPOSFARRAY
	.long	60
	.long	_RTTI_SYSTEM_LONGWORD
	.long	64
	.long	_RTTI_SYSTEM_LONGWORD
	.long	68
	.long	_RTTI_SYSTEM_LONGWORD
	.long	72
	.long	_RTTI_SYSTEM_LONGWORD
	.long	76
	.long	_RTTI_SYSTEM_LONGWORD
	.long	80
	.long	_RTTI_SYSTEM_LONGINT
	.long	84
	.long	_RTTI_SYSTEM_LONGWORD
	.long	88
	.long	_RTTI_SYSTEM_LONGWORD
	.long	92
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	96
	.long	_RTTI_SYSTEM_LONGWORD
	.long	100
	.long	_RTTI_SYSTEM_LONGWORD
	.long	104
	.long	_RTTI_SYSTEM_LONGWORD
	.long	108
	.long	_RTTI_SYSTEM_LONGWORD
	.long	112
	.long	_RTTI_SYSTEM_LONGWORD
	.long	116
	.long	_RTTI_SYSTEM_LONGINT
	.long	120
	.long	_RTTI_SYSTEM_LONGINT
	.long	124
	.long	_RTTI_SYSTEM_LONGWORD
	.long	128
	.long	_RTTI_SYSTEM_LONGINT
	.long	132
	.long	_RTTI_TREES_LTREE_TYPE
	.long	136
	.long	_RTTI_TREES_DTREE_TYPE
	.long	2428
	.long	_RTTI_TREES_HTREE_TYPE
	.long	2672
	.long	_RTTI_TREES_TREE_DESC
	.long	2828
	.long	_RTTI_TREES_TREE_DESC
	.long	2840
	.long	_RTTI_TREES_TREE_DESC
	.long	2852
	.long	_RTTI_TREES_DEF23
	.long	2864
	.long	_RTTI_TREES_DEF24
	.long	2896
	.long	_RTTI_SYSTEM_LONGINT
	.long	5188
	.long	_RTTI_SYSTEM_LONGINT
	.long	5192
	.long	_RTTI_TREES_DEF25
	.long	5196
	.long	_RTTI_ZBASE_PBYTEARRAY
	.long	5772
	.long	_RTTI_SYSTEM_LONGWORD
	.long	5776
	.long	_RTTI_SYSTEM_LONGWORD
	.long	5780
	.long	_RTTI_ZBASE_PWORDARRAY
	.long	5784
	.long	_RTTI_SYSTEM_LONGINT
	.long	5788
	.long	_RTTI_SYSTEM_LONGINT
	.long	5792
	.long	_RTTI_SYSTEM_LONGINT
	.long	5796
	.long	_RTTI_SYSTEM_LONGWORD
	.long	5800
	.long	_RTTI_SYSTEM_LONGINT
	.long	5804
	.long	_RTTI_SYSTEM_WORD
	.long	5808
	.long	_RTTI_SYSTEM_LONGINT
	.long	5812
	.long	_RTTI_SYSTEM_LONGWORD
	.long	5816
	.long	_RTTI_SYSTEM_LONGWORD
	.long	5816
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
L_TC_TREES_STATIC_L_DESC$non_lazy_ptr:
.indirect_symbol _TC_TREES_STATIC_L_DESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_STATIC_D_DESC$non_lazy_ptr:
.indirect_symbol _TC_TREES_STATIC_D_DESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_STATIC_BL_DESC$non_lazy_ptr:
.indirect_symbol _TC_TREES_STATIC_BL_DESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_BL_ORDER$non_lazy_ptr:
.indirect_symbol _TC_TREES_BL_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_STATIC_LTREE$non_lazy_ptr:
.indirect_symbol _TC_TREES_STATIC_LTREE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES__LENGTH_CODE$non_lazy_ptr:
.indirect_symbol _TC_TREES__LENGTH_CODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_EXTRA_LBITS$non_lazy_ptr:
.indirect_symbol _TC_TREES_EXTRA_LBITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_BASE_LENGTH$non_lazy_ptr:
.indirect_symbol _TC_TREES_BASE_LENGTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES__DIST_CODE$non_lazy_ptr:
.indirect_symbol _TC_TREES__DIST_CODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_EXTRA_DBITS$non_lazy_ptr:
.indirect_symbol _TC_TREES_EXTRA_DBITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_BASE_DIST$non_lazy_ptr:
.indirect_symbol _TC_TREES_BASE_DIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_TREES_STATIC_DTREE$non_lazy_ptr:
.indirect_symbol _TC_TREES_STATIC_DTREE
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

