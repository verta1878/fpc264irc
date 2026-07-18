# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCPREPCT_START_PASS_PREP$J_COMPRESS_PTR$J_BUF_MODE
_JCPREPCT_START_PASS_PREP$J_COMPRESS_PTR$J_BUF_MODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	320(%eax),%eax
	movl	%eax,-12(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	jne	Lj7
	jmp	Lj8
Lj7:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj8:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,48(%edx)
	movl	-12(%ebp),%eax
	movl	$0,52(%eax)
	movl	-12(%ebp),%eax
	movl	$0,56(%eax)
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,60(%edx)
	leave
	ret

.text
	.align 4
.globl	_JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT
_JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj24
	decl	-16(%ebp)
	.align 2
Lj25:
	incl	-16(%ebp)
	movl	$1,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj25
Lj24:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPREPCT_PRE_PROCESS_DATA$crc60E54AE2
_JCPREPCT_PRE_PROCESS_DATA$crc60E54AE2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	320(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj43
	.align 2
Lj42:
	movl	-12(%ebp),%eax
	movl	20(%ebp),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	216(%eax),%ecx
	movl	52(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj49
	jmp	Lj50
Lj49:
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj50:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	8(%eax),%ecx
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	332(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,52(%eax)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,48(%edx)
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj67
	jmp	Lj66
Lj67:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	216(%edx),%eax
	jl	Lj65
	jmp	Lj66
Lj65:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj69
	decl	-24(%ebp)
	.align 2
Lj70:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	8(%eax,%edx,4),%eax
	movl	-16(%ebp),%edx
	movl	52(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	call	L_JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT$stub
	cmpl	-24(%ebp),%ebx
	jg	Lj70
Lj69:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	%eax,52(%edx)
Lj66:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	216(%edx),%eax
	je	Lj81
	jmp	Lj82
Lj81:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
	movl	336(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%eax
	movl	$0,52(%eax)
	movl	12(%ebp),%eax
	incl	(%eax)
Lj82:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj97
	jmp	Lj96
Lj97:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jb	Lj95
	jmp	Lj96
Lj95:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj101
	decl	-24(%ebp)
	.align 2
Lj102:
	incl	-24(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-32(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,%esi
	movl	8(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-32(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	28(%eax),%edx
	shll	$3,%edx
	movl	16(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	%esi,%ecx
	call	L_JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT$stub
	addl	$84,-32(%ebp)
	cmpl	-24(%ebp),%ebx
	jg	Lj102
Lj101:
	movl	12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj44
Lj96:
Lj43:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	20(%ebp),%eax
	jb	Lj125
	jmp	Lj44
Lj125:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jb	Lj42
	jmp	Lj44
Lj44:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCPREPCT_PRE_PROCESS_CONTEXT$crc60E54AE2
_JCPREPCT_PRE_PROCESS_CONTEXT$crc60E54AE2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	320(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	imull	$3,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj133
	.align 2
Lj132:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	20(%ebp),%eax
	jb	Lj135
	jmp	Lj136
Lj135:
	movl	-12(%ebp),%eax
	movl	20(%ebp),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	60(%eax),%edx
	movl	52(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj141
	jmp	Lj142
Lj141:
	movl	-32(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj142:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	8(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	332(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	32(%edx),%eax
	je	Lj155
	jmp	Lj156
Lj155:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj158
	decl	-24(%ebp)
	.align 2
Lj159:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%esi
	movl	$1,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj161
	decl	-36(%ebp)
	.align 2
Lj162:
	incl	-36(%ebp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%eax
	negl	%eax
	movl	%eax,8(%esp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	8(%edx,%eax,4),%ecx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	8(%eax,%edx,4),%eax
	movl	$0,%edx
	call	L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub
	cmpl	-36(%ebp),%esi
	jg	Lj162
Lj161:
	cmpl	-24(%ebp),%ebx
	jg	Lj159
Lj158:
Lj156:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,52(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,48(%eax)
	jmp	Lj175
Lj136:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj176
	jmp	Lj177
Lj176:
	jmp	Lj134
Lj177:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	60(%edx),%eax
	jl	Lj178
	jmp	Lj179
Lj178:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj181
	decl	-24(%ebp)
	.align 2
Lj182:
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	8(%edx,%eax,4),%eax
	movl	-16(%ebp),%edx
	movl	52(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	call	L_JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT$stub
	cmpl	-24(%ebp),%ebx
	jg	Lj182
Lj181:
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,52(%edx)
Lj179:
Lj175:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	60(%edx),%eax
	je	Lj193
	jmp	Lj194
Lj193:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	8(%eax),%edx
	movl	-16(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	336(%ebx),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	movl	12(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	216(%eax),%eax
	addl	%eax,56(%edx)
	movl	-16(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	-28(%ebp),%eax
	jge	Lj205
	jmp	Lj206
Lj205:
	movl	-16(%ebp),%eax
	movl	$0,56(%eax)
Lj206:
	movl	-16(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-28(%ebp),%eax
	jge	Lj209
	jmp	Lj210
Lj209:
	movl	-16(%ebp),%eax
	movl	$0,52(%eax)
Lj210:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%ecx
	movl	216(%edx),%eax
	addl	%eax,%ecx
	movl	-16(%ebp),%eax
	movl	%ecx,60(%eax)
Lj194:
Lj133:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jb	Lj132
	jmp	Lj134
Lj134:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCPREPCT_CREATE_CONTEXT_BUFFER$J_COMPRESS_PTR
_JCPREPCT_CREATE_CONTEXT_BUFFER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	320(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	imull	$5,%ecx
	movl	-12(%ebp),%eax
	imull	%eax,%ecx
	shll	$2,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj232
	decl	-16(%ebp)
	.align 2
Lj233:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	imull	$3,%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	-4(%ebp),%edx
	movl	212(%edx),%edx
	imull	%edx,%eax
	movl	-24(%ebp),%ecx
	cltd
	idivl	8(%ecx)
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	8(%esi),%esi
	call	*%esi
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	-12(%ebp),%ecx
	imull	$3,%ecx
	shll	$2,%ecx
	movl	-28(%ebp),%edx
	call	L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj251
	decl	-20(%ebp)
	.align 2
Lj252:
	incl	-20(%ebp)
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%edx
	shll	$1,%edx
	movl	-20(%ebp),%esi
	addl	%esi,%edx
	movl	-32(%ebp),%edi
	movl	-20(%ebp),%esi
	movl	(%ecx,%edx,4),%edx
	movl	%edx,(%edi,%esi,4)
	movl	-32(%ebp),%ecx
	movl	-12(%ebp),%edx
	shll	$2,%edx
	movl	-20(%ebp),%esi
	addl	%esi,%edx
	movl	-28(%ebp),%esi
	movl	-20(%ebp),%edi
	movl	(%esi,%edi,4),%esi
	movl	%esi,(%ecx,%edx,4)
	cmpl	-20(%ebp),%eax
	jg	Lj252
Lj251:
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	%edx,8(%eax,%ecx,4)
	movl	-12(%ebp),%eax
	imull	$5,%eax
	shll	$2,%eax
	addl	%eax,-32(%ebp)
	addl	$84,-24(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj233
Lj232:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCPREPCT_JINIT_C_PREP_CONTROLLER$J_COMPRESS_PTR$BOOLEAN
_JCPREPCT_JINIT_C_PREP_CONTROLLER$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj260
Lj260:
	popl	%esi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj261
	jmp	Lj262
Lj261:
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj262:
	movl	-4(%ebp),%eax
	movl	$64,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,320(%eax)
	movl	-12(%ebp),%edx
	movl	L_JCPREPCT_START_PASS_PREP$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr-Lj260(%esi),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	336(%eax),%eax
	cmpb	$0,8(%eax)
	jne	Lj279
	jmp	Lj280
Lj279:
	movl	-12(%ebp),%edx
	movl	L_JCPREPCT_PRE_PROCESS_CONTEXT$crc60E54AE2$non_lazy_ptr-Lj260(%esi),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_JCPREPCT_CREATE_CONTEXT_BUFFER$J_COMPRESS_PTR$stub
	jmp	Lj285
Lj280:
	movl	-12(%ebp),%edx
	movl	L_JCPREPCT_PRE_PROCESS_DATA$crc60E54AE2$non_lazy_ptr-Lj260(%esi),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj291
	decl	-16(%ebp)
	.align 2
Lj292:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	28(%eax),%eax
	shll	$3,%eax
	movl	-4(%ebp),%edx
	movl	212(%edx),%edx
	imull	%edx,%eax
	movl	-20(%ebp),%ecx
	cltd
	idivl	8(%ecx)
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%edi
	movl	4(%edi),%edi
	movl	8(%edi),%edi
	call	*%edi
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	%eax,8(%edx,%ecx,4)
	addl	$84,-20(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj292
Lj291:
Lj285:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCPREPCT
_THREADVARLIST_JCPREPCT:
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD$stub:
.indirect_symbol _JUTILS_JCOPY_SAMPLE_ROWS$JSAMPARRAY$LONGINT$JSAMPARRAY$LONGINT$LONGINT$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT$stub:
.indirect_symbol _JCPREPCT_EXPAND_BOTTOM_EDGE$JSAMPARRAY$LONGWORD$LONGINT$LONGINT
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

L_JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMCOPY$POINTER$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPREPCT_CREATE_CONTEXT_BUFFER$J_COMPRESS_PTR$stub:
.indirect_symbol _JCPREPCT_CREATE_CONTEXT_BUFFER$J_COMPRESS_PTR
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
L_JCPREPCT_START_PASS_PREP$J_COMPRESS_PTR$J_BUF_MODE$non_lazy_ptr:
.indirect_symbol _JCPREPCT_START_PASS_PREP$J_COMPRESS_PTR$J_BUF_MODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPREPCT_PRE_PROCESS_CONTEXT$crc60E54AE2$non_lazy_ptr:
.indirect_symbol _JCPREPCT_PRE_PROCESS_CONTEXT$crc60E54AE2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPREPCT_PRE_PROCESS_DATA$crc60E54AE2$non_lazy_ptr:
.indirect_symbol _JCPREPCT_PRE_PROCESS_DATA$crc60E54AE2
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

