# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GETOPTS_EXCHANGE
_GETOPTS_EXCHANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj4
Lj4:
	popl	-28(%ebp)
	movl	-28(%ebp),%edx
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-28(%ebp),%edx
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-28(%ebp),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj12
	.align 2
Lj11:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	cmpl	%edx,%ecx
	jg	Lj14
	jmp	Lj15
Lj14:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj19
	decl	-16(%ebp)
	.align 2
Lj20:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%eax),%ecx
	movl	(%ecx),%ebx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	movl	(%ebx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%ecx
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%ecx),%eax
	movl	(%eax),%ebx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,%esi
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%eax),%ecx
	movl	(%ecx),%edi
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	movl	(%ebx,%esi,4),%eax
	movl	%eax,(%edi,%ecx,4)
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%eax),%ecx
	movl	(%ecx),%ecx
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%eax
	subl	%eax,%ebx
	movl	-12(%ebp),%eax
	subl	%ebx,%eax
	movl	%eax,%ebx
	movl	-16(%ebp),%eax
	addl	%eax,%ebx
	movl	-24(%ebp),%eax
	movl	%eax,(%ecx,%ebx,4)
	cmpl	-16(%ebp),%edx
	jg	Lj20
Lj19:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj29
Lj15:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj33
	decl	-16(%ebp)
	.align 2
Lj34:
	incl	-16(%ebp)
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%eax),%ecx
	movl	(%ecx),%ebx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	movl	(%ebx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%ecx
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%ecx),%eax
	movl	(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	movl	%eax,%ecx
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%eax),%esi
	movl	(%esi),%esi
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	addl	%edi,%eax
	movl	(%esi,%eax,4),%eax
	movl	%eax,(%ebx,%ecx,4)
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj4(%eax),%ecx
	movl	(%ecx),%ebx
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	movl	%eax,(%ebx,%ecx,4)
	cmpl	-16(%ebp),%edx
	jg	Lj34
Lj33:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
Lj29:
Lj12:
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj43
	jmp	Lj13
Lj43:
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj11
	jmp	Lj13
Lj13:
	movl	-28(%ebp),%edx
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj4(%edx),%eax
	movl	(%eax),%ecx
	movl	-28(%ebp),%eax
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj4(%eax),%edx
	movl	(%edx),%eax
	addl	%eax,%ecx
	movl	-28(%ebp),%eax
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj4(%eax),%edx
	movl	(%edx),%eax
	subl	%eax,%ecx
	movl	-28(%ebp),%edx
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj4(%edx),%eax
	movl	%ecx,(%eax)
	movl	-28(%ebp),%eax
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj4(%eax),%edx
	movl	(%edx),%ecx
	movl	-28(%ebp),%edx
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj4(%edx),%eax
	movl	%ecx,(%eax)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GETOPTS_GETOPT_INIT$SHORTSTRING
_GETOPTS_GETOPT_INIT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj49
Lj49:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj49(%ebx),%eax
	movb	$0,(%eax)
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$1,(%eax)
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$1,(%eax)
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$1,(%eax)
	movl	L_U_GETOPTS_OPTOPT$non_lazy_ptr-Lj49(%ebx),%eax
	movb	$63,(%eax)
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$43,%al
	jb	Lj63
	subb	$43,%al
	je	Lj65
	subb	$2,%al
	je	Lj64
	jmp	Lj63
Lj64:
	movl	L_U_GETOPTS_ORDERING$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$2,(%eax)
	movl	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	jmp	Lj62
Lj65:
	movl	L_U_GETOPTS_ORDERING$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$0,(%eax)
	movl	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	jmp	Lj62
Lj63:
	movl	L_U_GETOPTS_ORDERING$non_lazy_ptr-Lj49(%ebx),%eax
	movl	$1,(%eax)
Lj62:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETOPTS_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR
_GETOPTS_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$824,%esp
	movl	%ebx,-812(%ebp)
	movl	%esi,-808(%ebp)
	movl	%edi,-804(%ebp)
	call	Lj89
Lj89:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movb	$0,(%eax)
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	movl	-4(%ebp),%eax
	call	L_GETOPTS_GETOPT_INIT$SHORTSTRING$stub
Lj93:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jl	Lj96
	jmp	Lj97
Lj96:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	leal	-274(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj108
Lj97:
	movb	$0,-274(%ebp)
Lj108:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj111
	jmp	Lj112
Lj111:
	movl	L_U_GETOPTS_ORDERING$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj113
	jmp	Lj114
Lj113:
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jne	Lj117
	jmp	Lj116
Lj117:
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj115
	jmp	Lj116
Lj115:
	call	L_GETOPTS_EXCHANGE$stub
	jmp	Lj118
Lj116:
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jne	Lj119
	jmp	Lj120
Lj119:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%edx
	movl	%eax,(%edx)
Lj120:
Lj118:
	jmp	Lj124
	.align 2
Lj123:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
Lj124:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jl	Lj126
	jmp	Lj125
Lj126:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	movzbl	(%eax),%edx
	movl	L_TC_GETOPTS_OPTSPECIFIER$non_lazy_ptr-Lj89(%ebx),%eax
	btl	%edx,(%eax)
	jnc	Lj123
	jmp	Lj127
Lj127:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	movzbl	-799(%ebp),%eax
	cmpl	$1,%eax
	je	Lj123
	jmp	Lj125
Lj125:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%edx
	movl	%eax,(%edx)
Lj114:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	jl	Lj134
	jmp	Lj135
Lj134:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	leal	-274(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj146
Lj135:
	movb	$0,-274(%ebp)
Lj146:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jne	Lj151
	jmp	Lj150
Lj151:
	leal	-274(%ebp),%eax
	movl	L_$GETOPTS$_Ld2$non_lazy_ptr-Lj89(%ebx),%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	je	Lj149
	jmp	Lj150
Lj149:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj158
	jmp	Lj157
Lj158:
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jne	Lj156
	jmp	Lj157
Lj156:
	call	L_GETOPTS_EXCHANGE$stub
	jmp	Lj159
Lj157:
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	je	Lj160
	jmp	Lj161
Lj160:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%edx
	movl	%eax,(%edx)
Lj161:
Lj159:
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	%edx,(%eax)
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%edx
	movl	%eax,(%edx)
Lj150:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	jge	Lj168
	jmp	Lj169
Lj168:
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj170
	jmp	Lj171
Lj170:
	movl	L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%edx
	movl	%eax,(%edx)
Lj171:
	movb	$255,-13(%ebp)
	jmp	Lj88
Lj169:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jl	Lj176
	jmp	Lj177
Lj176:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	leal	-274(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj188
Lj177:
	movb	$0,-274(%ebp)
Lj188:
	movzbl	-273(%ebp),%eax
	movl	L_TC_GETOPTS_OPTSPECIFIER$non_lazy_ptr-Lj89(%ebx),%edx
	btl	%eax,(%edx)
	jnc	Lj191
	jmp	Lj193
Lj193:
	movzbl	-274(%ebp),%eax
	cmpl	$1,%eax
	je	Lj191
	jmp	Lj192
Lj191:
	movl	L_U_GETOPTS_ORDERING$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj194
	jmp	Lj195
Lj194:
	movb	$255,-13(%ebp)
	jmp	Lj88
	jmp	Lj198
Lj195:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movb	$0,-13(%ebp)
	jmp	Lj88
Lj198:
Lj192:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$2,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj215
	jmp	Lj214
Lj215:
	movb	-272(%ebp),%al
	cmpb	$45,%al
	je	Lj216
	jmp	Lj214
Lj216:
	movb	-273(%ebp),%al
	cmpb	$45,%al
	je	Lj213
	jmp	Lj214
Lj213:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
Lj214:
Lj112:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj217
	jmp	Lj218
Lj217:
	movzbl	-274(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj219
	jmp	Lj220
Lj219:
	movb	-272(%ebp),%al
	cmpb	$45,%al
	je	Lj224
	jmp	Lj223
Lj224:
	movb	-273(%ebp),%al
	cmpb	$45,%al
	je	Lj221
	jmp	Lj223
Lj223:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj225
	jmp	Lj222
Lj225:
	movl	-4(%ebp),%edx
	movb	-272(%ebp),%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj221
	jmp	Lj222
Lj221:
	leal	-274(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movb	%al,-15(%ebp)
	movzbl	-15(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	jmp	Lj237
Lj236:
	movzbl	-274(%ebp),%eax
	incl	%eax
	movb	%al,-15(%ebp)
Lj237:
	leal	-799(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-15(%ebp),%ecx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	subl	%eax,%ecx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	leal	-274(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-799(%ebp),%ecx
	leal	-530(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-8(%ebp),%eax
	movl	%eax,-536(%ebp)
	movl	$0,-540(%ebp)
	movb	$0,-541(%ebp)
	movb	$0,-542(%ebp)
	movb	$0,-16(%ebp)
	movw	$0,-18(%ebp)
	jmp	Lj267
	.align 2
Lj266:
	movl	-536(%ebp),%edx
	leal	-530(%ebp),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj269
	jmp	Lj270
Lj269:
	movl	-536(%ebp),%eax
	movb	(%eax),%al
	cmpb	-530(%ebp),%al
	je	Lj275
	jmp	Lj276
Lj275:
	movb	$1,-541(%ebp)
	movl	-536(%ebp),%eax
	movl	%eax,-540(%ebp)
	movzbw	-16(%ebp),%ax
	movw	%ax,-18(%ebp)
	jmp	Lj283
Lj276:
	movl	-540(%ebp),%eax
	testl	%eax,%eax
	je	Lj284
	jmp	Lj285
Lj284:
	movzbw	-16(%ebp),%ax
	movw	%ax,-18(%ebp)
	movl	-536(%ebp),%eax
	movl	%eax,-540(%ebp)
	jmp	Lj290
Lj285:
	movb	$1,-542(%ebp)
Lj290:
Lj283:
Lj270:
	addl	$268,-536(%ebp)
	incb	-16(%ebp)
Lj267:
	movl	-536(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj293
	jmp	Lj268
Lj293:
	movb	-541(%ebp),%al
	testb	%al,%al
	je	Lj266
	jmp	Lj268
Lj268:
	cmpb	$0,-542(%ebp)
	jne	Lj296
	jmp	Lj295
Lj296:
	movb	-541(%ebp),%al
	testb	%al,%al
	je	Lj294
	jmp	Lj295
Lj294:
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj297
	jmp	Lj298
Lj297:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld3$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-530(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld4$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj298:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movb	$63,-13(%ebp)
Lj295:
	movl	-540(%ebp),%eax
	testl	%eax,%eax
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movb	-274(%ebp),%al
	cmpb	-15(%ebp),%al
	jae	Lj333
	jmp	Lj334
Lj333:
	movl	-540(%ebp),%eax
	movw	256(%eax),%ax
	cmpw	$0,%ax
	jg	Lj335
	jmp	Lj336
Lj335:
	leal	-799(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-274(%ebp),%ecx
	movzbl	-15(%ebp),%eax
	subl	%eax,%ecx
	movzbl	-15(%ebp),%edx
	incl	%edx
	leal	-274(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj351
Lj336:
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj352
	jmp	Lj353
Lj352:
	movb	-272(%ebp),%al
	cmpb	$45,%al
	je	Lj354
	jmp	Lj355
Lj354:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld5$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-540(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld6$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj384
Lj355:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld3$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movb	-273(%ebp),%cl
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	-540(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld6$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj384:
Lj353:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
	movb	$63,-13(%ebp)
	jmp	Lj88
Lj351:
	jmp	Lj423
Lj334:
	movl	-540(%ebp),%eax
	movw	256(%eax),%ax
	cmpw	$1,%ax
	je	Lj424
	jmp	Lj425
Lj424:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jl	Lj426
	jmp	Lj427
Lj426:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	jmp	Lj438
Lj427:
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj439
	jmp	Lj440
Lj439:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld7$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-540(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld8$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj440:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj471
	jmp	Lj472
Lj471:
	movb	$58,-13(%ebp)
	jmp	Lj475
Lj472:
	movb	$63,-13(%ebp)
Lj475:
	jmp	Lj88
Lj438:
Lj425:
Lj423:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj480
	jmp	Lj481
Lj480:
	movswl	-18(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
Lj481:
	movl	-540(%ebp),%eax
	movl	260(%eax),%eax
	testl	%eax,%eax
	jne	Lj484
	jmp	Lj485
Lj484:
	movl	-540(%ebp),%eax
	movl	260(%eax),%edx
	movl	-540(%ebp),%eax
	movb	264(%eax),%al
	movb	%al,(%edx)
	movb	$0,-13(%ebp)
	jmp	Lj88
Lj485:
	movl	-540(%ebp),%eax
	movb	264(%eax),%al
	movb	%al,-13(%ebp)
	jmp	Lj88
Lj332:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj492
	jmp	Lj494
Lj494:
	movb	-272(%ebp),%al
	cmpb	$45,%al
	je	Lj492
	jmp	Lj495
Lj495:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movzbl	(%eax),%eax
	movb	-274(%ebp,%eax,1),%al
	movl	-4(%ebp),%edx
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj492
	jmp	Lj493
Lj492:
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj500
	jmp	Lj501
Lj500:
	movb	-272(%ebp),%al
	cmpb	$45,%al
	je	Lj502
	jmp	Lj503
Lj502:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld9$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-530(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$34,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj532
Lj503:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld10$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movb	-273(%ebp),%cl
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	leal	-530(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$34,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj532:
Lj501:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movb	$63,-13(%ebp)
	jmp	Lj88
Lj493:
Lj222:
Lj220:
Lj218:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movzbl	(%eax),%eax
	movb	-274(%ebp,%eax,1),%al
	movl	-4(%ebp),%edx
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movb	%al,-14(%ebp)
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movzbl	(%eax),%eax
	movb	-274(%ebp,%eax,1),%al
	movb	%al,-543(%ebp)
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movzbl	-274(%ebp),%edx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpl	(%eax),%edx
	jl	Lj579
	jmp	Lj580
Lj579:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
Lj580:
	movzbl	-14(%ebp),%eax
	testl	%eax,%eax
	je	Lj583
	jmp	Lj585
Lj585:
	movb	-543(%ebp),%al
	cmpb	$58,%al
	je	Lj583
	jmp	Lj584
Lj583:
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj586
	jmp	Lj587
Lj586:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld11$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movb	-543(%ebp),%cl
	movl	%esi,%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj587:
	movb	-543(%ebp),%dl
	movl	L_U_GETOPTS_OPTOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movb	%dl,(%eax)
	movb	$63,-13(%ebp)
	jmp	Lj88
Lj584:
	movl	-4(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-13(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-14(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$58,%al
	je	Lj616
	jmp	Lj617
Lj616:
	movl	-4(%ebp),%edx
	movzbl	-14(%ebp),%eax
	addl	$2,%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$58,%al
	je	Lj618
	jmp	Lj619
Lj618:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj620
	jmp	Lj621
Lj620:
	leal	-799(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-274(%ebp),%ecx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	leal	-274(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
	jmp	Lj638
Lj621:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	jne	Lj639
	jmp	Lj640
Lj639:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movb	1(%eax),%al
	cmpb	$45,%al
	je	Lj651
	jmp	Lj652
Lj651:
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movb	$0,(%eax)
	jmp	Lj655
Lj652:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
Lj655:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
Lj640:
Lj638:
	jmp	Lj658
Lj619:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj659
	jmp	Lj660
Lj659:
	leal	-799(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-274(%ebp),%ecx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	leal	-274(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
	jmp	Lj675
Lj660:
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj89(%ebx),%edx
	cmpl	(%edx),%eax
	je	Lj676
	jmp	Lj677
Lj676:
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj89(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj678
	jmp	Lj679
Lj678:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_pchar_as_pointer$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movl	L_$GETOPTS$_Ld12$non_lazy_ptr-Lj89(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movb	(%eax,%edx,1),%cl
	movl	%esi,%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj679:
	movl	-4(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movb	(%eax,%edx,1),%dl
	movl	L_U_GETOPTS_OPTOPT$non_lazy_ptr-Lj89(%ebx),%eax
	movb	%dl,(%eax)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj704
	jmp	Lj705
Lj704:
	movb	$58,-13(%ebp)
	jmp	Lj708
Lj705:
	movb	$63,-13(%ebp)
Lj708:
	jmp	Lj711
Lj677:
	movl	L_U_SYSTEM_ARGV$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	movl	(%eax),%eax
	movl	(%edx,%eax,4),%eax
	leal	-799(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-799(%ebp),%ecx
	movl	L_U_GETOPTS_OPTARG$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj89(%ebx),%eax
	incl	(%eax)
Lj711:
Lj675:
	movl	L_U_GETOPTS_NEXTCHAR$non_lazy_ptr-Lj89(%ebx),%eax
	movl	$0,(%eax)
Lj658:
Lj617:
Lj88:
	movb	-13(%ebp),%al
	movl	-812(%ebp),%ebx
	movl	-808(%ebp),%esi
	movl	-804(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GETOPTS_GETOPT$SHORTSTRING$$CHAR
_GETOPTS_GETOPT$SHORTSTRING$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-261(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movb	$0,(%esp)
	leal	-261(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_GETOPTS_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GETOPTS_GETLONGOPTS$SHORTSTRING$POPTION$LONGINT$$CHAR
_GETOPTS_GETLONGOPTS$SHORTSTRING$POPTION$LONGINT$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	leal	-269(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movb	$1,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	leal	-269(%ebp),%eax
	call	L_GETOPTS_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIT$_GETOPTS
_INIT$_GETOPTS:
.reference __GETOPTS_init
.globl	__GETOPTS_init
__GETOPTS_init:
.reference _INIT$_GETOPTS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%ecx
	movl	L_U_GETOPTS_OPTERR$non_lazy_ptr-Lj2(%ecx),%eax
	movb	$1,(%eax)
	movl	L_U_GETOPTS_OPTIND$non_lazy_ptr-Lj2(%ecx),%eax
	movl	$0,(%eax)
	movl	L_U_SYSTEM_ARGC$non_lazy_ptr-Lj2(%ecx),%eax
	movl	(%eax),%eax
	movl	L_U_GETOPTS_NRARGS$non_lazy_ptr-Lj2(%ecx),%edx
	movl	%eax,(%edx)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


.globl _U_GETOPTS_OPTARG
.data
.zerofill __DATA, __common, _U_GETOPTS_OPTARG, 256,1




	.align 2
.globl _U_GETOPTS_OPTIND
.data
.zerofill __DATA, __common, _U_GETOPTS_OPTIND, 4,2




.globl _U_GETOPTS_OPTERR
.data
.zerofill __DATA, __common, _U_GETOPTS_OPTERR, 1,1




.globl _U_GETOPTS_OPTOPT
.data
.zerofill __DATA, __common, _U_GETOPTS_OPTOPT, 1,1




	.align 2
.globl _U_GETOPTS_NEXTCHAR
.data
.zerofill __DATA, __common, _U_GETOPTS_NEXTCHAR, 4,2




	.align 2
.globl _U_GETOPTS_NRARGS
.data
.zerofill __DATA, __common, _U_GETOPTS_NRARGS, 4,2




	.align 2
.globl _U_GETOPTS_FIRST_NONOPT
.data
.zerofill __DATA, __common, _U_GETOPTS_FIRST_NONOPT, 4,2




	.align 2
.globl _U_GETOPTS_LAST_NONOPT
.data
.zerofill __DATA, __common, _U_GETOPTS_LAST_NONOPT, 4,2




	.align 2
.globl _U_GETOPTS_ORDERING
.data
.zerofill __DATA, __common, _U_GETOPTS_ORDERING, 4,2



.data
	.align 2
.globl	_THREADVARLIST_GETOPTS
_THREADVARLIST_GETOPTS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 3
.globl	_TC_GETOPTS_OPTSPECIFIER
_TC_GETOPTS_OPTSPECIFIER:
	.byte	0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const
	.align 2
.globl	_$GETOPTS$_Ld1
_$GETOPTS$_Ld1:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld2
_$GETOPTS$_Ld2:
	.ascii	"\002--\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld3
_$GETOPTS$_Ld3:
	.ascii	"\012: option \"\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld4
_$GETOPTS$_Ld4:
	.ascii	"\016\" is ambiguous\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld5
_$GETOPTS$_Ld5:
	.ascii	"\014: option \"--\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld6
_$GETOPTS$_Ld6:
	.ascii	"\033\" doesn't allow an argument\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld7
_$GETOPTS$_Ld7:
	.ascii	"\011: option \000"

.const
	.align 2
.globl	_$GETOPTS$_Ld8
_$GETOPTS$_Ld8:
	.ascii	"\025 requires an argument\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld9
_$GETOPTS$_Ld9:
	.ascii	"\030 unrecognized option \"--\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld10
_$GETOPTS$_Ld10:
	.ascii	"\026 unrecognized option \"\000"

.const
	.align 2
.globl	_$GETOPTS$_Ld11
_$GETOPTS$_Ld11:
	.ascii	"\024: illegal option -- \000"

.const
	.align 2
.globl	_$GETOPTS$_Ld12
_$GETOPTS$_Ld12:
	.ascii	"!: option requires an argument -- \000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETOPTS_GETOPT_INIT$SHORTSTRING$stub:
.indirect_symbol _GETOPTS_GETOPT_INIT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_STRPAS$PCHAR$$SHORTSTRING
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

L_GETOPTS_EXCHANGE$stub:
.indirect_symbol _GETOPTS_EXCHANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_pchar_as_pointer$stub:
.indirect_symbol fpc_write_text_pchar_as_pointer
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETOPTS_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR$stub:
.indirect_symbol _GETOPTS_INTERNAL_GETOPT$SHORTSTRING$POPTION$POINTER$BOOLEAN$$CHAR
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
.globl	_INIT_GETOPTS_POPTION
_INIT_GETOPTS_POPTION:
	.byte	0
	.ascii	"\007POption"

.const_data
	.align 2
.globl	_RTTI_GETOPTS_POPTION
_RTTI_GETOPTS_POPTION:
	.byte	0
	.ascii	"\007POption"

.const_data
	.align 2
.globl	_INIT_GETOPTS_TOPTION
_INIT_GETOPTS_TOPTION:
	.byte	13,7
	.ascii	"TOption"
	.long	268,0

.const_data
	.align 2
.globl	_RTTI_GETOPTS_TOPTION
_RTTI_GETOPTS_TOPTION:
	.byte	13,7
	.ascii	"TOption"
	.long	268,4
	.long	_RTTI_SYSTEM_SHORTSTRING
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	256
	.long	_RTTI_SYSTEM_PCHAR
	.long	260
	.long	_RTTI_SYSTEM_CHAR
	.long	264

.const_data
	.align 2
.globl	_INIT_GETOPTS_ORDERINGS
_INIT_GETOPTS_ORDERINGS:
	.byte	3,9
	.ascii	"Orderings"
	.byte	5
	.long	0,2,0
	.byte	13
	.ascii	"require_order"
	.byte	7
	.ascii	"permute"
	.byte	15
	.ascii	"return_in_order"
	.byte	7
	.ascii	"getopts"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GETOPTS_ORDERINGS
_RTTI_GETOPTS_ORDERINGS:
	.byte	3,9
	.ascii	"Orderings"
	.byte	5
	.long	0,2,0
	.byte	13
	.ascii	"require_order"
	.byte	7
	.ascii	"permute"
	.byte	15
	.ascii	"return_in_order"
	.byte	7
	.ascii	"getopts"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GETOPTS_ORDERINGS_s2o
_RTTI_GETOPTS_ORDERINGS_s2o:
	.long	3,1
	.long	_RTTI_GETOPTS_ORDERINGS+38
	.long	0
	.long	_RTTI_GETOPTS_ORDERINGS+24
	.long	2
	.long	_RTTI_GETOPTS_ORDERINGS+46

.const_data
	.align 2
.globl	_RTTI_GETOPTS_ORDERINGS_o2s
_RTTI_GETOPTS_ORDERINGS_o2s:
	.long	0
	.long	_RTTI_GETOPTS_ORDERINGS+24
	.long	_RTTI_GETOPTS_ORDERINGS+38
	.long	_RTTI_GETOPTS_ORDERINGS+46
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
L_U_GETOPTS_FIRST_NONOPT$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_FIRST_NONOPT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_LAST_NONOPT$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_LAST_NONOPT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_OPTIND$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_OPTIND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ARGV$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ARGV
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_OPTARG$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_OPTARG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_OPTOPT$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_OPTOPT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_NEXTCHAR$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_NEXTCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_ORDERING$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_ORDERING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_NRARGS$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_NRARGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_GETOPTS_OPTSPECIFIER$non_lazy_ptr:
.indirect_symbol _TC_GETOPTS_OPTSPECIFIER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld2$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_GETOPTS_OPTERR$non_lazy_ptr:
.indirect_symbol _U_GETOPTS_OPTERR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld3$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld4$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld5$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld6$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld7$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld8$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld9$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld10$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld11$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETOPTS$_Ld12$non_lazy_ptr:
.indirect_symbol _$GETOPTS$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ARGC$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ARGC
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

