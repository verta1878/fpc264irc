# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JQUANT2_PRESCAN_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT2_PRESCAN_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj12
	decl	-32(%ebp)
	.align 2
Lj13:
	incl	-32(%ebp)
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-20(%ebp)
	movl	-40(%ebp),%edx
	decl	%edx
	movl	%edx,-36(%ebp)
	cmpl	$0,-36(%ebp)
	jb	Lj17
	incl	-36(%ebp)
	.align 2
Lj18:
	decl	-36(%ebp)
	movl	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	movzbl	(%edx),%edx
	shrl	$3,%edx
	movl	(%ecx,%edx,4),%ecx
	movl	-20(%ebp),%edx
	movzbl	1(%edx),%edx
	shrl	$2,%edx
	shll	$6,%edx
	movl	-20(%ebp),%ebx
	movzbl	2(%ebx),%ebx
	shrl	$3,%ebx
	leal	(%ecx,%edx),%edx
	leal	(%edx,%ebx,2),%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%edx
	incw	(%edx)
	movl	-24(%ebp),%edx
	movzwl	(%edx),%edx
	cmpl	$0,%edx
	jle	Lj21
	jmp	Lj22
Lj21:
	movl	-24(%ebp),%edx
	decw	(%edx)
Lj22:
	addl	$3,-20(%ebp)
	cmpl	$0,-36(%ebp)
	ja	Lj18
Lj17:
	cmpl	-32(%ebp),%eax
	jg	Lj13
Lj12:
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FIND_BIGGEST_COLOR_POP$BOXLISTPTR$LONGINT$$BOXPTR
_JQUANT2_FIND_BIGGEST_COLOR_POP$BOXLISTPTR$LONGINT$$BOXPTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-24(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj32
	decl	-20(%ebp)
	.align 2
Lj33:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	28(%edx),%edx
	cmpl	-24(%ebp),%edx
	jg	Lj36
	jmp	Lj35
Lj36:
	movl	-16(%ebp),%edx
	movl	24(%edx),%edx
	cmpl	$0,%edx
	jg	Lj34
	jmp	Lj35
Lj34:
	movl	-16(%ebp),%edx
	movl	%edx,-28(%ebp)
	movl	-16(%ebp),%edx
	movl	28(%edx),%edx
	movl	%edx,-24(%ebp)
Lj35:
	addl	$32,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj33
Lj32:
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FIND_BIGGEST_VOLUME$BOXLISTPTR$LONGINT$$BOXPTR
_JQUANT2_FIND_BIGGEST_VOLUME$BOXLISTPTR$LONGINT$$BOXPTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj52
	decl	-20(%ebp)
	.align 2
Lj53:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	24(%edx),%edx
	cmpl	-24(%ebp),%edx
	jg	Lj54
	jmp	Lj55
Lj54:
	movl	-16(%ebp),%edx
	movl	%edx,-28(%ebp)
	movl	-16(%ebp),%edx
	movl	24(%edx),%edx
	movl	%edx,-24(%ebp)
Lj55:
	addl	$32,-16(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj53
Lj52:
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX
_JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj80
	jmp	Lj81
Lj80:
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jl	Lj83
	decl	-24(%ebp)
	.align 2
Lj84:
	incl	-24(%ebp)
	movl	-48(%ebp),%ecx
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj86
	decl	-28(%ebp)
	.align 2
Lj87:
	incl	-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%ebx
	movl	-28(%ebp),%eax
	shll	$6,%eax
	movl	-52(%ebp),%esi
	leal	(%ebx,%eax),%eax
	leal	(%eax,%esi,2),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj91
	decl	-32(%ebp)
	.align 2
Lj92:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-24(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%esi
	movl	%esi,(%eax)
	jmp	Lj99
Lj94:
	addl	$2,-20(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj92
Lj91:
	cmpl	-28(%ebp),%ecx
	jg	Lj87
Lj86:
	cmpl	-24(%ebp),%edx
	jg	Lj84
Lj83:
Lj81:
Lj99:
	movl	-40(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj100
	jmp	Lj101
Lj100:
	movl	-36(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jg	Lj103
	incl	-24(%ebp)
	.align 2
Lj104:
	decl	-24(%ebp)
	movl	-48(%ebp),%ecx
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj106
	decl	-28(%ebp)
	.align 2
Lj107:
	incl	-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%ebx
	movl	-28(%ebp),%eax
	shll	$6,%eax
	movl	-52(%ebp),%esi
	leal	(%ebx,%eax),%eax
	leal	(%eax,%esi,2),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj111
	decl	-32(%ebp)
	.align 2
Lj112:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj113
	jmp	Lj114
Lj113:
	movl	-24(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%esi
	movl	-24(%ebp),%eax
	movl	%eax,4(%esi)
	jmp	Lj119
Lj114:
	addl	$2,-20(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj112
Lj111:
	cmpl	-28(%ebp),%ecx
	jg	Lj107
Lj106:
	cmpl	-24(%ebp),%edx
	jl	Lj104
Lj103:
Lj101:
Lj119:
	movl	-48(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj120
	jmp	Lj121
Lj120:
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jl	Lj123
	decl	-28(%ebp)
	.align 2
Lj124:
	incl	-28(%ebp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj126
	decl	-24(%ebp)
	.align 2
Lj127:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%ebx
	movl	-28(%ebp),%eax
	shll	$6,%eax
	movl	-52(%ebp),%esi
	leal	(%ebx,%eax),%eax
	leal	(%eax,%esi,2),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj131
	decl	-32(%ebp)
	.align 2
Lj132:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj133
	jmp	Lj134
Lj133:
	movl	-28(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%esi
	movl	%esi,8(%eax)
	jmp	Lj139
Lj134:
	addl	$2,-20(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj132
Lj131:
	cmpl	-24(%ebp),%ecx
	jg	Lj127
Lj126:
	cmpl	-28(%ebp),%edx
	jg	Lj124
Lj123:
Lj121:
Lj139:
	movl	-48(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj140
	jmp	Lj141
Lj140:
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%edx
	jg	Lj143
	incl	-28(%ebp)
	.align 2
Lj144:
	decl	-28(%ebp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj146
	decl	-24(%ebp)
	.align 2
Lj147:
	incl	-24(%ebp)
	movl	-16(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	(%ebx,%eax,4),%esi
	movl	-28(%ebp),%eax
	shll	$6,%eax
	movl	-52(%ebp),%ebx
	leal	(%esi,%eax),%eax
	leal	(%eax,%ebx,2),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj151
	decl	-32(%ebp)
	.align 2
Lj152:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj153
	jmp	Lj154
Lj153:
	movl	-28(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%esi
	movl	%esi,12(%eax)
	jmp	Lj159
Lj154:
	addl	$2,-20(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj152
Lj151:
	cmpl	-24(%ebp),%ecx
	jg	Lj147
Lj146:
	cmpl	-28(%ebp),%edx
	jl	Lj144
Lj143:
Lj141:
Lj159:
	movl	-56(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj160
	jmp	Lj161
Lj160:
	movl	-56(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jl	Lj163
	decl	-32(%ebp)
	.align 2
Lj164:
	incl	-32(%ebp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj166
	decl	-24(%ebp)
	.align 2
Lj167:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%ebx
	movl	-44(%ebp),%eax
	shll	$6,%eax
	movl	-32(%ebp),%esi
	leal	(%ebx,%eax),%eax
	leal	(%eax,%esi,2),%eax
	movl	%eax,-20(%ebp)
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj171
	decl	-28(%ebp)
	.align 2
Lj172:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj173
	jmp	Lj174
Lj173:
	movl	-32(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%esi
	movl	%esi,16(%eax)
	jmp	Lj179
Lj174:
	addl	$64,-20(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj172
Lj171:
	cmpl	-24(%ebp),%ecx
	jg	Lj167
Lj166:
	cmpl	-32(%ebp),%edx
	jg	Lj164
Lj163:
Lj161:
Lj179:
	movl	-56(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj180
	jmp	Lj181
Lj180:
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jg	Lj183
	incl	-32(%ebp)
	.align 2
Lj184:
	decl	-32(%ebp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj186
	decl	-24(%ebp)
	.align 2
Lj187:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%esi
	movl	-44(%ebp),%eax
	shll	$6,%eax
	movl	-32(%ebp),%ebx
	leal	(%esi,%eax),%eax
	leal	(%eax,%ebx,2),%eax
	movl	%eax,-20(%ebp)
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj191
	decl	-28(%ebp)
	.align 2
Lj192:
	incl	-28(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj193
	jmp	Lj194
Lj193:
	movl	-32(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%esi
	movl	-56(%ebp),%eax
	movl	%eax,20(%esi)
	jmp	Lj199
Lj194:
	addl	$64,-20(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj192
Lj191:
	cmpl	-24(%ebp),%ecx
	jg	Lj187
Lj186:
	cmpl	-32(%ebp),%edx
	jl	Lj184
Lj183:
Lj181:
Lj199:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	shll	$3,%eax
	shll	$1,%eax
	movl	%eax,-60(%ebp)
	movl	-48(%ebp),%eax
	movl	-44(%ebp),%edx
	subl	%edx,%eax
	shll	$2,%eax
	imull	$3,%eax
	movl	%eax,-64(%ebp)
	movl	-56(%ebp),%eax
	movl	-52(%ebp),%edx
	subl	%edx,%eax
	shll	$3,%eax
	movl	%eax,-68(%ebp)
	movl	-60(%ebp),%ecx
	movl	-60(%ebp),%eax
	imull	%eax,%ecx
	movl	-64(%ebp),%edx
	movl	-64(%ebp),%eax
	imull	%eax,%edx
	addl	%edx,%ecx
	movl	-68(%ebp),%edx
	movl	-68(%ebp),%eax
	imull	%eax,%edx
	addl	%edx,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,24(%eax)
	movl	$0,-72(%ebp)
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%edx
	jl	Lj211
	decl	-24(%ebp)
	.align 2
Lj212:
	incl	-24(%ebp)
	movl	-48(%ebp),%ecx
	movl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj214
	decl	-28(%ebp)
	.align 2
Lj215:
	incl	-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%eax,%ebx,4),%esi
	movl	-28(%ebp),%eax
	shll	$6,%eax
	movl	-52(%ebp),%ebx
	leal	(%esi,%eax),%eax
	leal	(%eax,%ebx,2),%eax
	movl	%eax,-20(%ebp)
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj219
	decl	-32(%ebp)
	.align 2
Lj220:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj221
	jmp	Lj222
Lj221:
	incl	-72(%ebp)
Lj222:
	addl	$2,-20(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj220
Lj219:
	cmpl	-28(%ebp),%ecx
	jg	Lj215
Lj214:
	cmpl	-24(%ebp),%edx
	jg	Lj212
Lj211:
	movl	-8(%ebp),%edx
	movl	-72(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_MEDIAN_CUT$J_DECOMPRESS_PTR$BOXLISTPTR$LONGINT$LONGINT$$LONGINT
_JQUANT2_MEDIAN_CUT$J_DECOMPRESS_PTR$BOXLISTPTR$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	jmp	Lj228
	.align 2
Lj227:
	movl	-12(%ebp),%eax
	shll	$1,%eax
	cmpl	8(%ebp),%eax
	jle	Lj230
	jmp	Lj231
Lj230:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JQUANT2_FIND_BIGGEST_COLOR_POP$BOXLISTPTR$LONGINT$$BOXPTR$stub
	movl	%eax,-44(%ebp)
	jmp	Lj238
Lj231:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JQUANT2_FIND_BIGGEST_VOLUME$BOXLISTPTR$LONGINT$$BOXPTR$stub
	movl	%eax,-44(%ebp)
Lj238:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj245
	jmp	Lj246
Lj245:
	jmp	Lj229
Lj246:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,20(%edx)
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	4(%eax),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	shll	$3,%eax
	shll	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	12(%eax),%eax
	movl	8(%edx),%edx
	subl	%edx,%eax
	shll	$2,%eax
	imull	$3,%eax
	movl	%eax,-32(%ebp)
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	20(%eax),%eax
	movl	16(%edx),%edx
	subl	%edx,%eax
	shll	$3,%eax
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$1,-20(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj271
	jmp	Lj272
Lj271:
	movl	-28(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-20(%ebp)
Lj272:
	movl	-36(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj277
	jmp	Lj278
Lj277:
	movl	$2,-20(%ebp)
Lj278:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jl	Lj282
	testl	%eax,%eax
	je	Lj283
	decl	%eax
	je	Lj284
	decl	%eax
	je	Lj285
	jmp	Lj282
Lj283:
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	4(%eax),%eax
	movl	(%edx),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-44(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-48(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj281
Lj284:
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	12(%eax),%eax
	movl	8(%edx),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-48(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj281
Lj285:
	movl	-44(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	20(%eax),%eax
	movl	16(%edx),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-44(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-24(%ebp),%eax
	incl	%eax
	movl	-48(%ebp),%edx
	movl	%eax,16(%edx)
	jmp	Lj281
Lj282:
Lj281:
	movl	-44(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX$stub
	incl	-12(%ebp)
Lj228:
	movl	-12(%ebp),%eax
	cmpl	8(%ebp),%eax
	jl	Lj227
	jmp	Lj229
Lj229:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_COMPUTE_COLOR$J_DECOMPRESS_PTR$BOX$LONGINT
_JQUANT2_COMPUTE_COLOR$J_DECOMPRESS_PTR$BOX$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-44(%ebp),%ecx
	movl	-40(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj341
	decl	-28(%ebp)
	.align 2
Lj342:
	incl	-28(%ebp)
	movl	-52(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jl	Lj344
	decl	-32(%ebp)
	.align 2
Lj345:
	incl	-32(%ebp)
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	(%eax,%ebx,4),%esi
	movl	-32(%ebp),%eax
	shll	$6,%eax
	movl	-56(%ebp),%ebx
	leal	(%esi,%eax),%eax
	leal	(%eax,%ebx,2),%eax
	movl	%eax,-24(%ebp)
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj349
	decl	-36(%ebp)
	.align 2
Lj350:
	incl	-36(%ebp)
	movl	-24(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-64(%ebp)
	addl	$2,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	jne	Lj353
	jmp	Lj354
Lj353:
	movl	-64(%ebp),%eax
	addl	%eax,-68(%ebp)
	movl	-28(%ebp),%eax
	shll	$3,%eax
	addl	$4,%eax
	movl	-64(%ebp),%esi
	imull	%esi,%eax
	addl	%eax,-72(%ebp)
	movl	-32(%ebp),%eax
	shll	$2,%eax
	addl	$2,%eax
	movl	-64(%ebp),%esi
	imull	%esi,%eax
	addl	%eax,-76(%ebp)
	movl	-36(%ebp),%eax
	shll	$3,%eax
	addl	$4,%eax
	movl	-64(%ebp),%esi
	imull	%esi,%eax
	addl	%eax,-80(%ebp)
Lj354:
	cmpl	-36(%ebp),%ebx
	jg	Lj350
Lj349:
	cmpl	-32(%ebp),%edx
	jg	Lj345
Lj344:
	cmpl	-28(%ebp),%ecx
	jg	Lj342
Lj341:
	movl	-68(%ebp),%eax
	shrl	$1,%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	cltd
	idivl	-68(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	(%edx),%edx
	movl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	-68(%ebp),%eax
	shrl	$1,%eax
	movl	-76(%ebp),%edx
	addl	%edx,%eax
	cltd
	idivl	-68(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	4(%edx),%ecx
	movl	-12(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	movl	-68(%ebp),%eax
	shrl	$1,%eax
	movl	-80(%ebp),%edx
	addl	%edx,%eax
	cltd
	idivl	-68(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	8(%edx),%edx
	movl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_SELECT_COLORS$J_DECOMPRESS_PTR$LONGINT
_JQUANT2_SELECT_COLORS$J_DECOMPRESS_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	shll	$5,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	$1,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$31,4(%eax)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movl	$63,12(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%eax
	movl	$31,20(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_MEDIAN_CUT$J_DECOMPRESS_PTR$BOXLISTPTR$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj400
	decl	-20(%ebp)
	.align 2
Lj401:
	incl	-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_COMPUTE_COLOR$J_DECOMPRESS_PTR$BOX$LONGINT$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj401
Lj400:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,96(%edx)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FIND_NEARBY_COLORS$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$array_of_BYTE$$LONGINT
_JQUANT2_FIND_NEARBY_COLORS$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$array_of_BYTE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1112,%esp
	movl	%ebx,-1100(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	addl	$24,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	%eax,-36(%ebp)
	movl	-12(%ebp),%eax
	addl	$28,%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	%eax,-40(%ebp)
	movl	16(%ebp),%eax
	addl	$24,%eax
	movl	%eax,-32(%ebp)
	movl	16(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	%eax,-44(%ebp)
	movl	$2147483647,-60(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj429
	decl	-48(%ebp)
	.align 2
Lj430:
	incl	-48(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	(%edx),%edx
	movl	-48(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%edx
	cmpl	-8(%ebp),%edx
	jl	Lj433
	jmp	Lj434
Lj433:
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%ecx
	subl	%ecx,%edx
	shll	$1,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%ecx
	movl	-72(%ebp),%edx
	imull	%edx,%ecx
	movl	%ecx,-64(%ebp)
	movl	-52(%ebp),%edx
	movl	-24(%ebp),%ecx
	subl	%ecx,%edx
	shll	$1,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-68(%ebp)
	jmp	Lj443
Lj434:
	movl	-52(%ebp),%edx
	cmpl	-24(%ebp),%edx
	jg	Lj444
	jmp	Lj445
Lj444:
	movl	-52(%ebp),%edx
	movl	-24(%ebp),%ecx
	subl	%ecx,%edx
	shll	$1,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-64(%ebp)
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%ecx
	subl	%ecx,%edx
	shll	$1,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-68(%ebp)
	jmp	Lj454
Lj445:
	movl	$0,-64(%ebp)
	movl	-52(%ebp),%edx
	cmpl	-36(%ebp),%edx
	jle	Lj457
	jmp	Lj458
Lj457:
	movl	-52(%ebp),%edx
	movl	-24(%ebp),%ecx
	subl	%ecx,%edx
	shll	$1,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-68(%ebp)
	jmp	Lj463
Lj458:
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%ecx
	subl	%ecx,%edx
	shll	$1,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-68(%ebp)
Lj463:
Lj454:
Lj443:
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	4(%edx),%edx
	movl	-48(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%edx
	cmpl	-12(%ebp),%edx
	jl	Lj470
	jmp	Lj471
Lj470:
	movl	-52(%ebp),%ecx
	movl	-12(%ebp),%edx
	subl	%edx,%ecx
	imull	$3,%ecx
	movl	%ecx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-64(%ebp)
	movl	-52(%ebp),%ecx
	movl	-28(%ebp),%edx
	subl	%edx,%ecx
	imull	$3,%ecx
	movl	%ecx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
	jmp	Lj476
Lj471:
	movl	-52(%ebp),%edx
	cmpl	-28(%ebp),%edx
	jg	Lj477
	jmp	Lj478
Lj477:
	movl	-52(%ebp),%edx
	movl	-28(%ebp),%ecx
	subl	%ecx,%edx
	imull	$3,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-64(%ebp)
	movl	-52(%ebp),%edx
	movl	-12(%ebp),%ecx
	subl	%ecx,%edx
	imull	$3,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
	jmp	Lj483
Lj478:
	movl	-52(%ebp),%edx
	cmpl	-40(%ebp),%edx
	jle	Lj484
	jmp	Lj485
Lj484:
	movl	-52(%ebp),%edx
	movl	-28(%ebp),%ecx
	subl	%ecx,%edx
	imull	$3,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
	jmp	Lj488
Lj485:
	movl	-52(%ebp),%edx
	movl	-12(%ebp),%ecx
	subl	%ecx,%edx
	imull	$3,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
Lj488:
Lj483:
Lj476:
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	8(%edx),%edx
	movl	-48(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%edx
	cmpl	16(%ebp),%edx
	jl	Lj493
	jmp	Lj494
Lj493:
	movl	-52(%ebp),%edx
	movl	16(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-64(%ebp)
	movl	-52(%ebp),%edx
	movl	-32(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
	jmp	Lj499
Lj494:
	movl	-52(%ebp),%edx
	cmpl	-32(%ebp),%edx
	jg	Lj500
	jmp	Lj501
Lj500:
	movl	-52(%ebp),%edx
	movl	-32(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-64(%ebp)
	movl	-52(%ebp),%edx
	movl	16(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
	jmp	Lj506
Lj501:
	movl	-52(%ebp),%edx
	cmpl	-44(%ebp),%edx
	jle	Lj507
	jmp	Lj508
Lj507:
	movl	-52(%ebp),%edx
	movl	-32(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
	jmp	Lj511
Lj508:
	movl	-52(%ebp),%edx
	movl	16(%ebp),%ecx
	subl	%ecx,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-68(%ebp)
Lj511:
Lj506:
Lj499:
	movl	-48(%ebp),%edx
	movl	-64(%ebp),%ecx
	movl	%ecx,-1096(%ebp,%edx,4)
	movl	-68(%ebp),%edx
	cmpl	-60(%ebp),%edx
	jl	Lj516
	jmp	Lj517
Lj516:
	movl	-68(%ebp),%edx
	movl	%edx,-60(%ebp)
Lj517:
	cmpl	-48(%ebp),%eax
	jg	Lj430
Lj429:
	movl	$0,-56(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj523
	decl	-48(%ebp)
	.align 2
Lj524:
	incl	-48(%ebp)
	movl	-48(%ebp),%edx
	movl	-1096(%ebp,%edx,4),%edx
	cmpl	-60(%ebp),%edx
	jle	Lj525
	jmp	Lj526
Lj525:
	movl	12(%ebp),%ebx
	movl	-56(%ebp),%ecx
	movb	-48(%ebp),%dl
	movb	%dl,(%ebx,%ecx,1)
	incl	-56(%ebp)
Lj526:
	cmpl	-48(%ebp),%eax
	jg	Lj524
Lj523:
	movl	-56(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-1100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FIND_BEST_COLORS$crc16BF3B7E
_JQUANT2_FIND_BEST_COLORS$crc16BF3B7E:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$600,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$127,-28(%ebp)
	incl	-28(%ebp)
	.align 2
Lj535:
	decl	-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$2147483647,-588(%ebp,%eax,4)
	cmpl	$0,-28(%ebp)
	jg	Lj535
	movl	24(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj539
	decl	-28(%ebp)
	.align 2
Lj540:
	incl	-28(%ebp)
	movl	20(%ebp),%ecx
	movl	-28(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	%edx,-32(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	(%edx),%edx
	movl	-32(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%ecx
	movl	-8(%ebp),%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	shll	$1,%ecx
	movl	%ecx,-68(%ebp)
	movl	-68(%ebp),%edx
	movl	-68(%ebp),%ecx
	imull	%ecx,%edx
	movl	%edx,-44(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	4(%edx),%ecx
	movl	-32(%ebp),%edx
	movzbl	(%ecx,%edx,1),%ecx
	movl	-12(%ebp),%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	imull	$3,%ecx
	movl	%ecx,-72(%ebp)
	movl	-72(%ebp),%edx
	movl	-72(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-44(%ebp)
	movl	-4(%ebp),%edx
	movl	100(%edx),%edx
	movl	8(%edx),%edx
	movl	-32(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%ecx
	movl	28(%ebp),%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,-76(%ebp)
	movl	-76(%ebp),%edx
	movl	-76(%ebp),%ecx
	imull	%ecx,%edx
	addl	%edx,-44(%ebp)
	movl	-68(%ebp),%edx
	shll	$5,%edx
	addl	$256,%edx
	movl	%edx,-68(%ebp)
	movl	-72(%ebp),%edx
	imull	$24,%edx
	addl	$144,%edx
	movl	%edx,-72(%ebp)
	movl	-76(%ebp),%edx
	shll	$4,%edx
	addl	$64,%edx
	movl	%edx,-76(%ebp)
	leal	-588(%ebp),%edx
	movl	%edx,-36(%ebp)
	movl	12(%ebp),%edx
	movl	%edx,-40(%ebp)
	movl	-68(%ebp),%edx
	movl	%edx,-56(%ebp)
	movl	$3,-16(%ebp)
	incl	-16(%ebp)
	.align 2
Lj565:
	decl	-16(%ebp)
	movl	-44(%ebp),%edx
	movl	%edx,-48(%ebp)
	movl	-72(%ebp),%edx
	movl	%edx,-60(%ebp)
	movl	$7,-20(%ebp)
	incl	-20(%ebp)
	.align 2
Lj572:
	decl	-20(%ebp)
	movl	-48(%ebp),%edx
	movl	%edx,-52(%ebp)
	movl	-76(%ebp),%edx
	movl	%edx,-64(%ebp)
	movl	$3,-24(%ebp)
	incl	-24(%ebp)
	.align 2
Lj579:
	decl	-24(%ebp)
	movl	-36(%ebp),%edx
	movl	(%edx),%edx
	cmpl	-52(%ebp),%edx
	jg	Lj580
	jmp	Lj581
Lj580:
	movl	-36(%ebp),%edx
	movl	-52(%ebp),%ecx
	movl	%ecx,(%edx)
	movl	-40(%ebp),%edx
	movb	-32(%ebp),%cl
	movb	%cl,(%edx)
Lj581:
	movl	-64(%ebp),%edx
	addl	%edx,-52(%ebp)
	addl	$128,-64(%ebp)
	addl	$4,-36(%ebp)
	incl	-40(%ebp)
	cmpl	$0,-24(%ebp)
	jg	Lj579
	movl	-60(%ebp),%edx
	addl	%edx,-48(%ebp)
	addl	$288,-60(%ebp)
	cmpl	$0,-20(%ebp)
	jg	Lj572
	movl	-56(%ebp),%edx
	addl	%edx,-44(%ebp)
	addl	$512,-56(%ebp)
	cmpl	$0,-16(%ebp)
	jg	Lj565
	cmpl	-28(%ebp),%eax
	jg	Lj540
Lj539:
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FILL_INVERSE_CMAP$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT
_JQUANT2_FILL_INVERSE_CMAP$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$472,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	shrl	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-12(%ebp)
	movl	8(%ebp),%eax
	shrl	$2,%eax
	movl	%eax,8(%ebp)
	movl	-8(%ebp),%eax
	shll	$5,%eax
	addl	$4,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	shll	$5,%eax
	addl	$2,%eax
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%eax
	shll	$5,%eax
	addl	$4,%eax
	movl	%eax,-32(%ebp)
	movl	$255,(%esp)
	leal	-308(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_FIND_NEARBY_COLORS$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$array_of_BYTE$$LONGINT$stub
	movl	%eax,-312(%ebp)
	movl	$127,(%esp)
	movl	$255,8(%esp)
	leal	-440(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-308(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-312(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_FIND_BEST_COLORS$crc16BF3B7E$stub
	movl	-8(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	shll	$3,%eax
	movl	%eax,-12(%ebp)
	movl	8(%ebp),%eax
	shll	$2,%eax
	movl	%eax,8(%ebp)
	leal	-440(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$0,-36(%ebp)
	decl	-36(%ebp)
	.align 2
Lj646:
	incl	-36(%ebp)
	movl	$0,-40(%ebp)
	decl	-40(%ebp)
	.align 2
Lj649:
	incl	-40(%ebp)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	%edx,%eax
	movl	(%ecx,%eax,4),%ecx
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	shll	$6,%eax
	movl	8(%ebp),%edx
	leal	(%ecx,%eax),%eax
	leal	(%eax,%edx,2),%eax
	movl	%eax,-52(%ebp)
	movl	$0,-44(%ebp)
	decl	-44(%ebp)
	.align 2
Lj654:
	incl	-44(%ebp)
	movl	-48(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	-52(%ebp),%edx
	movw	%ax,(%edx)
	addl	$2,-52(%ebp)
	incl	-48(%ebp)
	cmpl	$3,-44(%ebp)
	jl	Lj654
	cmpl	$7,-40(%ebp)
	jl	Lj649
	cmpl	$3,-36(%ebp)
	jl	Lj646
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_PASS2_NO_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT2_PASS2_NO_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj666
	decl	-48(%ebp)
	.align 2
Lj667:
	incl	-48(%ebp)
	movl	-8(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-56(%ebp),%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	cmpl	$0,-52(%ebp)
	jb	Lj673
	incl	-52(%ebp)
	.align 2
Lj674:
	decl	-52(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	shrl	$3,%eax
	movl	%eax,-36(%ebp)
	movl	-24(%ebp),%eax
	movzbl	1(%eax),%eax
	shrl	$2,%eax
	movl	%eax,-40(%ebp)
	movl	-24(%ebp),%eax
	movzbl	2(%eax),%eax
	shrl	$3,%eax
	movl	%eax,-44(%ebp)
	addl	$3,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	(%edx,%eax,4),%ecx
	movl	-40(%ebp),%eax
	shll	$6,%eax
	movl	-44(%ebp),%edx
	leal	(%ecx,%eax),%eax
	leal	(%eax,%edx,2),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj683
	jmp	Lj684
Lj683:
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_FILL_INVERSE_CMAP$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$stub
Lj684:
	movl	-32(%ebp),%eax
	movzwl	(%eax),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	incl	-28(%ebp)
	cmpl	$0,-52(%ebp)
	ja	Lj674
Lj673:
	cmpl	-48(%ebp),%ebx
	jg	Lj667
Lj666:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_PASS2_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
_JQUANT2_PASS2_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-4(%ebp),%eax
	movl	272(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	-16(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-112(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-84(%ebp)
	cmpl	-84(%ebp),%ebx
	jl	Lj714
	decl	-84(%ebp)
	.align 2
Lj715:
	incl	-84(%ebp)
	movl	-8(%ebp),%eax
	movl	-84(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-68(%ebp)
	movl	-12(%ebp),%edx
	movl	-84(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj722
	jmp	Lj723
Lj722:
	movl	-92(%ebp),%eax
	decl	%eax
	imull	$3,%eax
	addl	%eax,-68(%ebp)
	movl	-92(%ebp),%eax
	decl	%eax
	addl	%eax,-72(%ebp)
	movl	$-1,-80(%ebp)
	movl	-92(%ebp),%eax
	incl	%eax
	imull	$12,%eax
	addl	%eax,-64(%ebp)
	movl	-16(%ebp),%eax
	movb	$0,36(%eax)
	jmp	Lj728
Lj723:
	movl	$1,-80(%ebp)
	movl	-16(%ebp),%eax
	movb	$1,36(%eax)
Lj728:
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	movl	-92(%ebp),%eax
	decl	%eax
	movl	%eax,-88(%ebp)
	cmpl	$0,-88(%ebp)
	jb	Lj752
	incl	-88(%ebp)
	.align 2
Lj753:
	decl	-88(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-80(%ebp),%eax
	imull	$12,%eax
	addl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	movl	(%eax),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	addl	$8,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$15,%edx
	addl	%edx,%eax
	sarl	$4,%eax
	movl	%eax,-32(%ebp)
	movl	-64(%ebp),%eax
	movl	4(%eax),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	addl	$8,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$15,%edx
	addl	%edx,%eax
	sarl	$4,%eax
	movl	%eax,-28(%ebp)
	movl	-64(%ebp),%eax
	movl	8(%eax),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	addl	$8,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$15,%edx
	addl	%edx,%eax
	sarl	$4,%eax
	movl	%eax,-24(%ebp)
	movl	-100(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	1020(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movl	-100(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	1020(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-100(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	1020(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-68(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,-32(%ebp)
	movl	-68(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,-28(%ebp)
	movl	-68(%ebp),%eax
	movzbl	2(%eax),%eax
	addl	%eax,-24(%ebp)
	movl	-96(%ebp),%eax
	movl	-32(%ebp),%edx
	movzbl	256(%eax,%edx,1),%eax
	movl	%eax,-32(%ebp)
	movl	-96(%ebp),%eax
	movl	-28(%ebp),%edx
	movzbl	256(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	movl	-96(%ebp),%eax
	movl	-24(%ebp),%edx
	movzbl	256(%eax,%edx,1),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	shrl	$3,%eax
	movl	(%edx,%eax,4),%edx
	movl	-28(%ebp),%eax
	shrl	$2,%eax
	shll	$6,%eax
	movl	-24(%ebp),%ecx
	shrl	$3,%ecx
	leal	(%edx,%eax),%eax
	leal	(%eax,%ecx,2),%eax
	movl	%eax,-76(%ebp)
	movl	-76(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj776
	jmp	Lj777
Lj776:
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	shrl	$2,%ecx
	movl	-32(%ebp),%edx
	shrl	$3,%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_FILL_INVERSE_CMAP$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$stub
Lj777:
	movl	-76(%ebp),%eax
	movzwl	(%eax),%eax
	decl	%eax
	movl	%eax,-116(%ebp)
	movl	-72(%ebp),%eax
	movb	-116(%ebp),%dl
	movb	%dl,(%eax)
	movl	-104(%ebp),%edx
	movl	-116(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	%eax,-32(%ebp)
	movl	-108(%ebp),%eax
	movl	-116(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	subl	%eax,-28(%ebp)
	movl	-112(%ebp),%edx
	movl	-116(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	%eax,-24(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	-32(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-124(%ebp)
	movl	-124(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-56(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-60(%ebp),%eax
	movl	%edx,(%eax)
	movl	-124(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-44(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-56(%ebp)
	movl	-120(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-124(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	-28(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-124(%ebp)
	movl	-124(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-52(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	-60(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-124(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-40(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-120(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-124(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-124(%ebp)
	movl	-124(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-48(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-60(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-124(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-36(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-120(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-124(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-80(%ebp),%eax
	imull	$3,%eax
	addl	%eax,-68(%ebp)
	movl	-80(%ebp),%eax
	addl	%eax,-72(%ebp)
	cmpl	$0,-88(%ebp)
	ja	Lj753
Lj752:
	movl	-64(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	%eax,(%edx)
	movl	-64(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-64(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,8(%eax)
	cmpl	-84(%ebp),%ebx
	jg	Lj715
Lj714:
	movl	-128(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_INIT_ERROR_LIMIT$J_DECOMPRESS_PTR
_JQUANT2_INIT_ERROR_LIMIT$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$2044,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,40(%edx)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj844:
	incl	-16(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	%ecx,1020(%edx,%eax,4)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	negl	%eax
	movl	-20(%ebp),%edx
	negl	%edx
	movl	%edx,1020(%ecx,%eax,4)
	incl	-20(%ebp)
	cmpl	$15,-16(%ebp)
	jl	Lj844
	movl	$16,-16(%ebp)
	jmp	Lj852
	.align 2
Lj851:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%ecx,1020(%eax,%edx,4)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	negl	%eax
	movl	-20(%ebp),%edx
	negl	%edx
	movl	%edx,1020(%ecx,%eax,4)
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	andl	$1,%eax
	testb	%al,%al
	jne	Lj858
	jmp	Lj859
Lj858:
	incl	-20(%ebp)
Lj859:
Lj852:
	movl	-16(%ebp),%eax
	cmpl	$48,%eax
	jl	Lj851
	jmp	Lj853
Lj853:
	movl	$48,-16(%ebp)
	jmp	Lj867
	.align 2
Lj866:
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,1020(%ecx,%edx,4)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	negl	%eax
	movl	-20(%ebp),%edx
	negl	%edx
	movl	%edx,1020(%ecx,%eax,4)
	incl	-16(%ebp)
Lj867:
	movl	-16(%ebp),%eax
	cmpl	$255,%eax
	jle	Lj866
	jmp	Lj868
Lj868:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FINISH_PASS1$J_DECOMPRESS_PTR
_JQUANT2_FINISH_PASS1$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,100(%edx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JQUANT2_SELECT_COLORS$J_DECOMPRESS_PTR$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$1,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_FINISH_PASS2$J_DECOMPRESS_PTR
_JQUANT2_FINISH_PASS2$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_START_PASS_2_QUANT$J_DECOMPRESS_PTR$BOOLEAN
_JQUANT2_START_PASS_2_QUANT$J_DECOMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj888
Lj888:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	testb	%al,%al
	jne	Lj893
	jmp	Lj894
Lj893:
	movl	-4(%ebp),%eax
	movb	$2,66(%eax)
Lj894:
	cmpb	$0,-8(%ebp)
	jne	Lj897
	jmp	Lj898
Lj897:
	movl	-12(%ebp),%edx
	movl	L_JQUANT2_PRESCAN_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj888(%ebx),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	L_JQUANT2_FINISH_PASS1$J_DECOMPRESS_PTR$non_lazy_ptr-Lj888(%ebx),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movb	$1,28(%eax)
	jmp	Lj905
Lj898:
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	cmpb	$2,%al
	je	Lj906
	jmp	Lj907
Lj906:
	movl	-12(%ebp),%edx
	movl	L_JQUANT2_PASS2_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj888(%ebx),%eax
	movl	%eax,4(%edx)
	jmp	Lj910
Lj907:
	movl	-12(%ebp),%edx
	movl	L_JQUANT2_PASS2_NO_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr-Lj888(%ebx),%eax
	movl	%eax,4(%edx)
Lj910:
	movl	-12(%ebp),%edx
	movl	L_JQUANT2_FINISH_PASS2$J_DECOMPRESS_PTR$non_lazy_ptr-Lj888(%ebx),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj917
	jmp	Lj918
Lj917:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movb	$57,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj918:
	movl	-20(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj925
	jmp	Lj926
Lj925:
	movl	-4(%ebp),%eax
	movl	$256,%ecx
	movb	$58,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj926:
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	cmpb	$2,%al
	je	Lj933
	jmp	Lj934
Lj933:
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	addl	$2,%edx
	movl	$12,%eax
	mull	%edx
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj937
	jmp	Lj938
Lj937:
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	4(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%edx
	movl	%eax,32(%edx)
Lj938:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj951
	jmp	Lj952
Lj951:
	movl	-4(%ebp),%eax
	call	L_JQUANT2_INIT_ERROR_LIMIT$J_DECOMPRESS_PTR$stub
Lj952:
	movl	-12(%ebp),%eax
	movb	$0,36(%eax)
Lj934:
Lj905:
	movl	-12(%ebp),%eax
	cmpb	$0,28(%eax)
	jne	Lj957
	jmp	Lj958
Lj957:
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj961:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	$4096,%edx
	call	L_JUTILS_JZERO_FAR$POINTER$LONGINT$stub
	cmpl	$31,-20(%ebp)
	jl	Lj961
	movl	-12(%ebp),%eax
	movb	$0,28(%eax)
Lj958:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_NEW_COLOR_MAP_2_QUANT$J_DECOMPRESS_PTR
_JQUANT2_NEW_COLOR_MAP_2_QUANT$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_JQUANT2_JINIT_2PASS_QUANTIZER$J_DECOMPRESS_PTR
_JQUANT2_JINIT_2PASS_QUANTIZER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj975
Lj975:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$44,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,408(%edx)
	movl	-8(%ebp),%edx
	movl	L_JQUANT2_START_PASS_2_QUANT$J_DECOMPRESS_PTR$BOOLEAN$non_lazy_ptr-Lj975(%esi),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_JQUANT2_NEW_COLOR_MAP_2_QUANT$J_DECOMPRESS_PTR$non_lazy_ptr-Lj975(%esi),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	movl	-8(%ebp),%eax
	movl	$0,40(%eax)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	$3,%eax
	jne	Lj994
	jmp	Lj995
Lj994:
	movl	-4(%ebp),%eax
	movb	$48,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj995:
	movl	-4(%ebp),%eax
	movl	$128,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj1010:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$4096,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	cmpl	$31,-12(%ebp)
	jl	Lj1010
	movl	-8(%ebp),%eax
	movb	$1,28(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,74(%eax)
	jne	Lj1021
	jmp	Lj1022
Lj1021:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj1025
	jmp	Lj1026
Lj1025:
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	movb	$57,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj1026:
	movl	-16(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj1033
	jmp	Lj1034
Lj1033:
	movl	-4(%ebp),%eax
	movl	$256,%ecx
	movb	$58,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj1034:
	movl	$3,(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	8(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
	jmp	Lj1053
Lj1022:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
Lj1053:
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	testb	%al,%al
	jne	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-4(%ebp),%eax
	movb	$2,66(%eax)
Lj1057:
	movl	-4(%ebp),%eax
	movb	66(%eax),%al
	cmpb	$2,%al
	je	Lj1060
	jmp	Lj1061
Lj1060:
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	addl	$2,%edx
	movl	$12,%eax
	mull	%edx
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	call	L_JQUANT2_INIT_ERROR_LIMIT$J_DECOMPRESS_PTR$stub
Lj1061:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JQUANT2
_THREADVARLIST_JQUANT2:
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

L_JQUANT2_FIND_BIGGEST_COLOR_POP$BOXLISTPTR$LONGINT$$BOXPTR$stub:
.indirect_symbol _JQUANT2_FIND_BIGGEST_COLOR_POP$BOXLISTPTR$LONGINT$$BOXPTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_FIND_BIGGEST_VOLUME$BOXLISTPTR$LONGINT$$BOXPTR$stub:
.indirect_symbol _JQUANT2_FIND_BIGGEST_VOLUME$BOXLISTPTR$LONGINT$$BOXPTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX$stub:
.indirect_symbol _JQUANT2_UPDATE_BOX$J_DECOMPRESS_PTR$BOX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_MEDIAN_CUT$J_DECOMPRESS_PTR$BOXLISTPTR$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JQUANT2_MEDIAN_CUT$J_DECOMPRESS_PTR$BOXLISTPTR$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_COMPUTE_COLOR$J_DECOMPRESS_PTR$BOX$LONGINT$stub:
.indirect_symbol _JQUANT2_COMPUTE_COLOR$J_DECOMPRESS_PTR$BOX$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_FIND_NEARBY_COLORS$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$array_of_BYTE$$LONGINT$stub:
.indirect_symbol _JQUANT2_FIND_NEARBY_COLORS$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$array_of_BYTE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_FIND_BEST_COLORS$crc16BF3B7E$stub:
.indirect_symbol _JQUANT2_FIND_BEST_COLORS$crc16BF3B7E
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_FILL_INVERSE_CMAP$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _JQUANT2_FILL_INVERSE_CMAP$J_DECOMPRESS_PTR$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JQUANT2_SELECT_COLORS$J_DECOMPRESS_PTR$LONGINT$stub:
.indirect_symbol _JQUANT2_SELECT_COLORS$J_DECOMPRESS_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
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

L_JQUANT2_INIT_ERROR_LIMIT$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JQUANT2_INIT_ERROR_LIMIT$J_DECOMPRESS_PTR
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
L_JQUANT2_PRESCAN_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT2_PRESCAN_QUANTIZE$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT2_FINISH_PASS1$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JQUANT2_FINISH_PASS1$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT2_PASS2_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT2_PASS2_FS_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT2_PASS2_NO_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT$non_lazy_ptr:
.indirect_symbol _JQUANT2_PASS2_NO_DITHER$J_DECOMPRESS_PTR$JSAMPARRAY$JSAMPARRAY$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT2_FINISH_PASS2$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JQUANT2_FINISH_PASS2$J_DECOMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT2_START_PASS_2_QUANT$J_DECOMPRESS_PTR$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JQUANT2_START_PASS_2_QUANT$J_DECOMPRESS_PTR$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JQUANT2_NEW_COLOR_MAP_2_QUANT$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JQUANT2_NEW_COLOR_MAP_2_QUANT$J_DECOMPRESS_PTR
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

