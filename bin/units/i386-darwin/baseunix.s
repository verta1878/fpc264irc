# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_BASEUNIX_INTERNALCREATESHELLARGV$PCHAR$LONGINT$$PPCHAR
_BASEUNIX_INTERNALCREATESHELLARGV$PCHAR$LONGINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%eax
	movl	$16,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_$BASEUNIX$_Ld1$non_lazy_ptr-Lj4(%ebx),%eax
	leal	1(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	addl	$4,-20(%ebp)
	movl	L_$BASEUNIX$_Ld1$non_lazy_ptr-Lj4(%ebx),%eax
	leal	9(%eax),%edx
	movl	-20(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-20(%ebp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	addl	$4,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,(%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_CREATESHELLARGV$SHORTSTRING$$PPCHAR
_BASEUNIX_CREATESHELLARGV$SHORTSTRING$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	call	L_BASEUNIX_INTERNALCREATESHELLARGV$PCHAR$LONGINT$$PPCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_CREATESHELLARGV$ANSISTRING$$PPCHAR
_BASEUNIX_CREATESHELLARGV$ANSISTRING$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj47
	movl	-4(%edx),%edx
Lj47:
	call	L_BASEUNIX_INTERNALCREATESHELLARGV$PCHAR$LONGINT$$PPCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FREESHELLARGV$PPCHAR
_BASEUNIX_FREESHELLARGV$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj51
Lj50:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj51:
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETENV$PCHAR$$PCHAR
_BASEUNIX_FPGETENV$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	call	Lj57
Lj57:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj60
Lj60:
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj57(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj59
Lj58:
	movl	$0,-8(%ebp)
	jmp	Lj56
Lj59:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj66
	.align 2
Lj65:
	incl	-20(%ebp)
Lj66:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj68
	jmp	Lj67
Lj68:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	$61,%al
	jne	Lj65
	jmp	Lj67
Lj67:
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj57(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj74
	.align 2
Lj73:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj83
	.align 2
Lj82:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	movb	(%eax),%al
	cmpb	(%ecx),%al
	jne	Lj85
	jmp	Lj86
Lj85:
	incl	-24(%ebp)
	incl	-20(%ebp)
	jmp	Lj84
Lj86:
	incl	-24(%ebp)
	incl	-20(%ebp)
	decl	-32(%ebp)
Lj83:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj87
	jmp	Lj84
Lj87:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj82
	jmp	Lj84
Lj84:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj90
	jmp	Lj89
Lj90:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$61,%al
	je	Lj88
	jmp	Lj89
Lj88:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	jmp	Lj56
Lj89:
	addl	$4,-12(%ebp)
Lj74:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj73
	jmp	Lj75
Lj75:
	movl	$0,-8(%ebp)
Lj56:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR
_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR:
.reference FPC_SYSC_FPGETENV
.globl	FPC_SYSC_FPGETENV
FPC_SYSC_FPGETENV:
.reference _BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj96
Lj96:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	L_$BASEUNIX$_Ld2$non_lazy_ptr-Lj96(%ebx),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-263(%ebp),%eax
	call	L_BASEUNIX_FPGETENV$PCHAR$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT
_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj111
	jmp	Lj113
Lj113:
	movl	-8(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj111
	jmp	Lj112
Lj111:
	movl	$22,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-12(%ebp)
	jmp	Lj109
Lj112:
	movl	-8(%ebp),%ecx
	decl	%ecx
	andl	$31,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	decl	%edx
	shrl	$5,%edx
	movl	(%ecx,%edx,4),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	decl	%edx
	shrl	$5,%edx
	movl	%eax,(%ecx,%edx,4)
	movl	$0,-12(%ebp)
Lj109:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGDELSET$SIGSET_T$LONGINT$$LONGINT
_BASEUNIX_FPSIGDELSET$SIGSET_T$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj124
	jmp	Lj126
Lj126:
	movl	-8(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj124
	jmp	Lj125
Lj124:
	movl	$22,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-12(%ebp)
	jmp	Lj122
Lj125:
	movl	-8(%ebp),%ecx
	decl	%ecx
	andl	$31,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	notl	%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	decl	%edx
	shrl	$5,%edx
	movl	(%ecx,%edx,4),%edx
	andl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	decl	%edx
	shrl	$5,%edx
	movl	%eax,(%ecx,%edx,4)
	movl	$0,-12(%ebp)
Lj122:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT
_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj139:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,(%eax,%edx,4)
	cmpl	$0,-12(%ebp)
	jl	Lj139
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGFILLSET$SIGSET_T$$LONGINT
_BASEUNIX_FPSIGFILLSET$SIGSET_T$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj148:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$-1,(%eax,%edx,4)
	cmpl	$0,-12(%ebp)
	jl	Lj148
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGISMEMBER$SIGSET_T$LONGINT$$LONGINT
_BASEUNIX_FPSIGISMEMBER$SIGSET_T$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj155
	jmp	Lj157
Lj157:
	movl	-4(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj155
	jmp	Lj156
Lj155:
	movl	$22,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-8(%ebp)
	jmp	Lj153
Lj156:
	movl	-4(%ebp),%ecx
	decl	%ecx
	andl	$31,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	decl	%edx
	shrl	$5,%edx
	movl	8(%ebp,%edx,4),%edx
	andl	%edx,%eax
	cmpl	$0,%eax
	ja	Lj162
	jmp	Lj163
Lj162:
	movl	$1,-8(%ebp)
	jmp	Lj166
Lj163:
	movl	$0,-8(%ebp)
Lj166:
Lj153:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT
_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj171
	jmp	Lj173
Lj173:
	movl	-4(%ebp),%eax
	cmpl	$1024,%eax
	jg	Lj171
	jmp	Lj172
Lj171:
	movl	$-1,-12(%ebp)
	jmp	Lj169
Lj172:
	movl	-4(%ebp),%ecx
	andl	$31,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	shrl	$5,%edx
	movl	(%ecx,%edx,4),%edx
	orl	%edx,%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	shrl	$5,%edx
	movl	%eax,(%ecx,%edx,4)
	movl	$0,-12(%ebp)
Lj169:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFD_CLR$LONGINT$TFDSET$$LONGINT
_BASEUNIX_FPFD_CLR$LONGINT$TFDSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj182
	jmp	Lj184
Lj184:
	movl	-4(%ebp),%eax
	cmpl	$1024,%eax
	jg	Lj182
	jmp	Lj183
Lj182:
	movl	$-1,-12(%ebp)
	jmp	Lj180
Lj183:
	movl	-4(%ebp),%ecx
	andl	$31,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	notl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	shrl	$5,%edx
	movl	(%ecx,%edx,4),%edx
	andl	%edx,%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	shrl	$5,%edx
	movl	%eax,(%ecx,%edx,4)
	movl	$0,-12(%ebp)
Lj180:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT
_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj195:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$0,(%eax,%edx,4)
	cmpl	$31,-12(%ebp)
	jl	Lj195
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFDFILLSET$TFDSET$$LONGINT
_BASEUNIX_FPFDFILLSET$TFDSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj204:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	$-1,(%eax,%edx,4)
	cmpl	$31,-12(%ebp)
	jl	Lj204
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFD_ISSET$LONGINT$TFDSET$$LONGINT
_BASEUNIX_FPFD_ISSET$LONGINT$TFDSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj211
	jmp	Lj213
Lj213:
	movl	-4(%ebp),%eax
	cmpl	$1024,%eax
	jg	Lj211
	jmp	Lj212
Lj211:
	movl	$-1,-12(%ebp)
	jmp	Lj209
Lj212:
	movl	-4(%ebp),%ecx
	andl	$31,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	shrl	$5,%edx
	movl	(%ecx,%edx,4),%edx
	andl	%edx,%eax
	cmpl	$0,%eax
	ja	Lj216
	jmp	Lj217
Lj216:
	movl	$1,-12(%ebp)
	jmp	Lj220
Lj217:
	movl	$0,-12(%ebp)
Lj220:
Lj209:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT
_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$37,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGPENDING$SIGSET_T$$LONGINT
_BASEUNIX_FPSIGPENDING$SIGSET_T$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$52,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGSUSPEND$SIGSET_T$$LONGINT
_BASEUNIX_FPSIGSUSPEND$SIGSET_T$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$111,(%esp)
	leal	8(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGTIMEDWAIT$SIGSET_T$PSIGINFO$PTIMESPEC$$LONGINT
_BASEUNIX_FPSIGTIMEDWAIT$SIGSET_T$PSIGINFO$PTIMESPEC$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$345,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	leal	8(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_SETITIMER$LONGINT$ITIMERVAL$ITIMERVAL$$LONGINT
_BASEUNIX_SETITIMER$LONGINT$ITIMERVAL$ITIMERVAL$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$83,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_GETITIMER$LONGINT$ITIMERVAL$$LONGINT
_BASEUNIX_GETITIMER$LONGINT$ITIMERVAL$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$86,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPALARM$LONGWORD$$LONGWORD
_BASEUNIX_FPALARM$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	leal	-40(%ebp),%ecx
	leal	-24(%ebp),%edx
	movl	$0,%eax
	call	L_BASEUNIX_SETITIMER$LONGINT$ITIMERVAL$ITIMERVAL$$LONGINT$stub
	cmpl	$0,%eax
	jl	Lj293
	jmp	Lj294
Lj293:
	movl	$-1,-8(%ebp)
	jmp	Lj283
Lj294:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj303
	jmp	Lj304
Lj303:
	incl	-32(%ebp)
Lj304:
	movl	-32(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj283:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_SIGBLOCK$LONGWORD$$LONGINT
_BASEUNIX_SIGBLOCK$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	$1,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj321
	jmp	Lj322
Lj321:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj322:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_SIGPAUSE$LONGINT$$LONGINT
_BASEUNIX_SIGPAUSE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_BASEUNIX_FPSIGSUSPEND$SIGSET_T$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPPAUSE$$LONGINT
_BASEUNIX_FPPAUSE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,%eax
	call	L_BASEUNIX_SIGBLOCK$LONGWORD$$LONGINT$stub
	call	L_BASEUNIX_SIGPAUSE$LONGINT$$LONGINT$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSLEEP$LONGWORD$$LONGWORD
_BASEUNIX_FPSLEEP$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$2147483647,%eax
	ja	Lj345
	jmp	Lj346
Lj345:
	movl	-4(%ebp),%ebx
	subl	$2147483647,%ebx
	movl	$2147483647,%eax
	call	L_BASEUNIX_FPSLEEP$LONGWORD$$LONGWORD$stub
	addl	%eax,%ebx
	movl	%ebx,-8(%ebp)
Lj346:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%edx
	leal	-16(%ebp),%eax
	call	LFPC_SYSC_NANOSLEEP$stub
	cmpl	$-1,%eax
	jne	Lj355
	jmp	Lj356
Lj355:
	movl	$0,-8(%ebp)
	jmp	Lj343
Lj356:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj363
	jmp	Lj364
Lj363:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj343
Lj364:
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj369
	jmp	Lj370
Lj369:
	incl	-8(%ebp)
Lj370:
Lj343:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPUNAME$UTSNAME$$LONGINT
_BASEUNIX_FPUNAME$UTSNAME$$LONGINT:
.reference FPC_SYSC_UNAME
.globl	FPC_SYSC_UNAME
FPC_SYSC_UNAME:
.reference _BASEUNIX_FPUNAME$UTSNAME$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$1,(%esp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%edx
	movl	%ebp,%eax
	movl	$256,%ecx
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT$stub
	movl	$10,(%esp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	leal	256(%eax),%edx
	movl	%ebp,%eax
	movl	$256,%ecx
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT$stub
	movl	$2,(%esp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	leal	512(%eax),%edx
	movl	%ebp,%eax
	movl	$256,%ecx
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT$stub
	movl	$4,(%esp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	leal	768(%eax),%edx
	movl	%ebp,%eax
	movl	$256,%ecx
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT$stub
	movl	$0,-28(%ebp)
	decl	-28(%ebp)
	.align 2
Lj419:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	768(%edx,%eax,1),%al
	cmpb	$13,%al
	je	Lj420
	jmp	Lj422
Lj422:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	768(%eax,%edx,1),%al
	cmpb	$9,%al
	je	Lj420
	jmp	Lj421
Lj420:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	$32,768(%eax,%edx,1)
Lj421:
	cmpl	$254,-28(%ebp)
	jl	Lj419
	movl	$1,(%esp)
	movl	$6,4(%esp)
	movl	-4(%ebp),%eax
	leal	1024(%eax),%edx
	movl	%ebp,%eax
	movl	$256,%ecx
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT
_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,-16(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,-12(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,-24(%eax)
	call	LFPC_SYS_GETERRNO$stub
	movl	-12(%ebp),%edx
	movl	%eax,-32(%edx)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	-12(%ebp),%eax
	leal	-24(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	leal	-16(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	$2,%edx
	call	L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj445
	jmp	Lj446
Lj445:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$12,%eax
	je	Lj459
	jmp	Lj460
Lj459:
	movl	-12(%ebp),%eax
	movl	-32(%eax),%eax
	call	LFPC_SYS_SETERRNO$stub
	jmp	Lj463
Lj460:
	movl	-12(%ebp),%eax
	movl	$-1,-20(%eax)
Lj463:
Lj446:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT
_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT:
.reference FPC_SYSC_GETDOMAINNAME
.globl	FPC_SYSC_GETDOMAINNAME
FPC_SYSC_GETDOMAINNAME:
.reference _BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj469
Lj469:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_TC_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT_MIB_GETDOMAINNAME$non_lazy_ptr-Lj469(%ebx),%eax
	movl	-4(%ebp),%ecx
	movl	$2,%edx
	call	L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj472
	jmp	Lj473
Lj472:
	movl	$-1,-12(%ebp)
	jmp	Lj488
Lj473:
	movl	$0,-12(%ebp)
Lj488:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT
_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT:
.reference FPC_SYSC_GETHOSTNAME
.globl	FPC_SYSC_GETHOSTNAME
FPC_SYSC_GETHOSTNAME:
.reference _BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj492
Lj492:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,(%esp)
	movl	$0,4(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_TC_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT_MIB_GETHOSTNAME$non_lazy_ptr-Lj492(%ebx),%eax
	movl	-4(%ebp),%ecx
	movl	$2,%edx
	call	L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj495
	jmp	Lj496
Lj495:
	movl	$-1,-12(%ebp)
	jmp	Lj511
Lj496:
	movl	$0,-12(%ebp)
Lj511:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPWAIT$LONGINT$$LONGINT
_BASEUNIX_FPWAIT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,16(%esp)
	movl	$0,12(%esp)
	movl	$-1,4(%esp)
	movl	$7,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS4$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETPPID$$LONGINT
_BASEUNIX_FPGETPPID$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$39,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETUID$$LONGWORD
_BASEUNIX_FPGETUID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$24,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETEUID$$LONGWORD
_BASEUNIX_FPGETEUID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$25,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETGID$$LONGWORD
_BASEUNIX_FPGETGID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$47,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETEGID$$LONGWORD
_BASEUNIX_FPGETEGID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$43,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETUID$LONGWORD$$LONGINT
_BASEUNIX_FPSETUID$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$23,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETGID$LONGWORD$$LONGINT
_BASEUNIX_FPSETGID$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$181,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETGROUPS$LONGINT$TGRPARR$$LONGINT
_BASEUNIX_FPGETGROUPS$LONGINT$TGRPARR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$79,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETPGRP$$LONGINT
_BASEUNIX_FPGETPGRP$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$81,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETSID$$LONGINT
_BASEUNIX_FPSETSID$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	$147,(%esp)
	call	LFPC_DOSYS0$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETSID$LONGINT$$LONGINT
_BASEUNIX_FPGETSID$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$310,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPUMASK$WORD$$WORD
_BASEUNIX_FPUMASK$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	$60,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPLINK$PCHAR$PCHAR$$LONGINT
_BASEUNIX_FPLINK$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$9,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT
_BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	$132,(%esp)
	movzwl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT
_BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	$15,(%esp)
	movzwl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPCHOWN$PCHAR$LONGWORD$LONGWORD$$LONGINT
_BASEUNIX_FPCHOWN$PCHAR$LONGWORD$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$16,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT
_BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj656
	jmp	Lj657
Lj656:
	movl	$0,-32(%ebp)
	jmp	Lj660
Lj657:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj660:
	movl	$138,(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPPIPE$TFILDES$$LONGINT
_BASEUNIX_FPPIPE$TFILDES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$42,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS1$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFCNTL$LONGINT$LONGINT$LONGINT$$LONGINT
_BASEUNIX_FPFCNTL$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$92,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFCNTL$LONGINT$LONGINT$FLOCK$$LONGINT
_BASEUNIX_FPFCNTL$LONGINT$LONGINT$FLOCK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$92,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFCNTL$LONGINT$LONGINT$$LONGINT
_BASEUNIX_FPFCNTL$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$92,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT
_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$59,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPEXECV$PCHAR$PPCHAR$$LONGINT
_BASEUNIX_FPEXECV$PCHAR$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj734
Lj734:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$59,(%esp)
	movl	-16(%ebp),%edx
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj734(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETRUSAGE$LONGINT$RUSAGE$$LONGINT
_BASEUNIX_FPGETRUSAGE$LONGINT$RUSAGE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$117,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPTIMES$TMS$$LONGWORD
_BASEUNIX_FPTIMES$TMS$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	movl	%eax,-4(%ebp)
	leal	-80(%ebp),%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPGETRUSAGE$LONGINT$RUSAGE$$LONGINT$stub
	cmpl	$0,%eax
	jl	Lj759
	jmp	Lj760
Lj759:
	movl	$-1,-8(%ebp)
	jmp	Lj755
Lj760:
	leal	-80(%ebp),%edx
	movl	%ebp,%eax
	call	L_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leal	-72(%ebp),%edx
	movl	%ebp,%eax
	call	L_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leal	-80(%ebp),%edx
	movl	$-1,%eax
	call	L_BASEUNIX_FPGETRUSAGE$LONGINT$RUSAGE$$LONGINT$stub
	cmpl	$0,%eax
	jl	Lj779
	jmp	Lj780
Lj779:
	movl	$-1,-8(%ebp)
	jmp	Lj755
Lj780:
	leal	-80(%ebp),%edx
	movl	%ebp,%eax
	call	L_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	leal	-72(%ebp),%edx
	movl	%ebp,%eax
	call	L_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	$0,8(%esp)
	movl	$116,(%esp)
	leal	-88(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	testl	%eax,%eax
	jne	Lj799
	jmp	Lj800
Lj799:
	movl	$-1,-8(%ebp)
	jmp	Lj755
Lj800:
	leal	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD$stub
	movl	%eax,-8(%ebp)
Lj755:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD
_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	$-2043023357,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$12,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	shll	$7,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT
_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$93,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	12(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS5$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPPOLL$PPOLLFD$LONGWORD$LONGINT$$LONGINT
_BASEUNIX_FPPOLL$PPOLLFD$LONGWORD$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$230,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT
_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$190,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPNICE$LONGINT$$LONGINT
_BASEUNIX_FPNICE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$0,%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPGETPRIORITY$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj867
	jmp	Lj866
Lj867:
	call	LFPC_SYS_GETERRNO$stub
	testl	%eax,%eax
	jne	Lj865
	jmp	Lj866
Lj865:
	movl	$-1,-8(%ebp)
	jmp	Lj855
Lj866:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_BASEUNIX_FPSETPRIORITY$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj855:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETPRIORITY$LONGINT$LONGINT$$LONGINT
_BASEUNIX_FPGETPRIORITY$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj880
	jmp	Lj882
Lj882:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj880
	jmp	Lj881
Lj880:
	movl	$0,-12(%ebp)
	movl	$22,%eax
	call	LFPC_SYS_SETERRNO$stub
	jmp	Lj887
Lj881:
	movl	$100,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
Lj887:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETPRIORITY$LONGINT$LONGINT$LONGINT$$LONGINT
_BASEUNIX_FPSETPRIORITY$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj898
	jmp	Lj901
Lj901:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj898
	jmp	Lj900
Lj900:
	movl	-12(%ebp),%eax
	cmpl	$-20,%eax
	jl	Lj898
	jmp	Lj902
Lj902:
	movl	-12(%ebp),%eax
	cmpl	$20,%eax
	jg	Lj898
	jmp	Lj899
Lj898:
	movl	$22,%eax
	call	LFPC_SYS_SETERRNO$stub
	jmp	Lj905
Lj899:
	movl	$96,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
Lj905:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSYMLINK$PCHAR$PCHAR$$LONGINT
_BASEUNIX_FPSYMLINK$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$57,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPPREAD$LONGINT$PCHAR$LONGWORD$INT64$$LONGINT
_BASEUNIX_FPPREAD$LONGINT$PCHAR$LONGWORD$INT64$$LONGINT:
.reference FPC_SYSC_PREAD
.globl	FPC_SYSC_PREAD
FPC_SYSC_PREAD:
.reference _BASEUNIX_FPPREAD$LONGINT$PCHAR$LONGWORD$INT64$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,20(%esp)
	movl	$153,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS5$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPPWRITE$LONGINT$PCHAR$LONGWORD$INT64$$LONGINT
_BASEUNIX_FPPWRITE$LONGINT$PCHAR$LONGWORD$INT64$$LONGINT:
.reference FPC_SYSC_PWRITE
.globl	FPC_SYSC_PWRITE
FPC_SYSC_PWRITE:
.reference _BASEUNIX_FPPWRITE$LONGINT$PCHAR$LONGWORD$INT64$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,20(%esp)
	movl	$154,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS5$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPREADV$LONGINT$PIOVEC$LONGINT$$LONGINT
_BASEUNIX_FPREADV$LONGINT$PIOVEC$LONGINT$$LONGINT:
.reference FPC_SYSC_READV
.globl	FPC_SYSC_READV
FPC_SYSC_READV:
.reference _BASEUNIX_FPREADV$LONGINT$PIOVEC$LONGINT$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$120,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPWRITEV$LONGINT$PIOVEC$LONGINT$$LONGINT
_BASEUNIX_FPWRITEV$LONGINT$PIOVEC$LONGINT$$LONGINT:
.reference FPC_SYSC_WRITEV
.globl	FPC_SYSC_WRITEV
FPC_SYSC_WRITEV:
.reference _BASEUNIX_FPWRITEV$LONGINT$PIOVEC$LONGINT$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$121,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETEUID$LONGWORD$$LONGINT
_BASEUNIX_FPSETEUID$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$-1,4(%esp)
	movl	$126,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETEGID$LONGWORD$$LONGINT
_BASEUNIX_FPSETEGID$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$-1,4(%esp)
	movl	$127,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT
_BASEUNIX_FPSETTIMEOFDAY$PTIMEVAL$PTIMEZONE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$122,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN
_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	movzwl	%ax,%eax
	cmpl	$16384,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISCHR$WORD$$BOOLEAN
_BASEUNIX_FPS_ISCHR$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	movzwl	%ax,%eax
	cmpl	$8192,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISBLK$WORD$$BOOLEAN
_BASEUNIX_FPS_ISBLK$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	movzwl	%ax,%eax
	cmpl	$24576,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISREG$WORD$$BOOLEAN
_BASEUNIX_FPS_ISREG$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	cmpw	$32768,%ax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISFIFO$WORD$$BOOLEAN
_BASEUNIX_FPS_ISFIFO$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	movzwl	%ax,%eax
	cmpl	$4096,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISLNK$WORD$$BOOLEAN
_BASEUNIX_FPS_ISLNK$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	cmpw	$40960,%ax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPS_ISSOCK$WORD$$BOOLEAN
_BASEUNIX_FPS_ISSOCK$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$61440,%ax
	cmpw	$49152,%ax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN
_BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$127,%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT
_BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_WSTOPSIG$LONGINT$$LONGINT
_BASEUNIX_WSTOPSIG$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_WIFSIGNALED$LONGINT$$BOOLEAN
_BASEUNIX_WIFSIGNALED$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$127,%eax
	cmpl	$127,%eax
	jne	Lj1056
	jmp	Lj1055
Lj1056:
	movl	-4(%ebp),%eax
	andl	$127,%eax
	testl	%eax,%eax
	jne	Lj1054
	jmp	Lj1055
Lj1054:
	movb	$1,-5(%ebp)
	jmp	Lj1057
Lj1055:
	movb	$0,-5(%ebp)
Lj1057:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_WTERMSIG$LONGINT$$LONGINT
_BASEUNIX_WTERMSIG$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$127,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPLINK$ANSISTRING$ANSISTRING$$LONGINT
_BASEUNIX_FPLINK$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1063
Lj1063:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1064
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj1071
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1063(%ebx),%eax
	movl	%eax,%edx
Lj1071:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1074
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1063(%ebx),%ecx
	movl	%ecx,%eax
Lj1074:
	call	L_BASEUNIX_FPLINK$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1064:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1065
	call	LFPC_RERAISE$stub
Lj1065:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPMKFIFO$ANSISTRING$WORD$$LONGINT
_BASEUNIX_FPMKFIFO$ANSISTRING$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1076
Lj1076:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1077
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1084
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1076(%ebx),%edx
	movl	%edx,%eax
Lj1084:
	movw	-8(%ebp),%dx
	call	L_BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1077:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1078
	call	LFPC_RERAISE$stub
Lj1078:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPCHMOD$ANSISTRING$WORD$$LONGINT
_BASEUNIX_FPCHMOD$ANSISTRING$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1088
Lj1088:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1089
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1096
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%edx,%eax
Lj1096:
	movw	-8(%ebp),%dx
	call	L_BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1089:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1090
	call	LFPC_RERAISE$stub
Lj1090:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPCHOWN$ANSISTRING$LONGWORD$LONGWORD$$LONGINT
_BASEUNIX_FPCHOWN$ANSISTRING$LONGWORD$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1100
Lj1100:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1101
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1108
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1100(%ebx),%edx
	movl	%edx,%eax
Lj1108:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_BASEUNIX_FPCHOWN$PCHAR$LONGWORD$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj1101:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1102
	call	LFPC_RERAISE$stub
Lj1102:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPUTIME$ANSISTRING$PUTIMBUF$$LONGINT
_BASEUNIX_FPUTIME$ANSISTRING$PUTIMBUF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1114
Lj1114:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1115
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1122
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1114(%ebx),%edx
	movl	%edx,%eax
Lj1122:
	movl	-8(%ebp),%edx
	call	L_BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1115:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1116
	call	LFPC_RERAISE$stub
Lj1116:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPGETCWD$$ANSISTRING
_BASEUNIX_FPGETCWD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1048,%esp
	movl	%ebx,-1036(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	leal	-1030(%ebp),%eax
	movl	$1024,%edx
	call	LFPC_SYSC_GETCWD$stub
	testl	%eax,%eax
	je	Lj1129
	jmp	Lj1130
Lj1129:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj1137
Lj1130:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-1030(%ebp),%eax
	movb	$1,%cl
	movl	$1025,%edx
	call	Lfpc_chararray_to_ansistr$stub
Lj1137:
	movl	-1036(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPEXECVE$ANSISTRING$PPCHAR$PPCHAR$$LONGINT
_BASEUNIX_FPEXECVE$ANSISTRING$PPCHAR$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1147
Lj1147:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1148
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1155
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1147(%ebx),%edx
	movl	%edx,%eax
Lj1155:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj1148:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1149
	call	LFPC_RERAISE$stub
Lj1149:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT
_BASEUNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1161
Lj1161:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1162
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1169
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1161(%ebx),%edx
	movl	%edx,%eax
Lj1169:
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj1161(%ebx),%edx
	movl	(%edx),%ecx
	movl	-8(%ebp),%edx
	call	L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1162:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1163
	call	LFPC_RERAISE$stub
Lj1163:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPCHDIR$ANSISTRING$$LONGINT
_BASEUNIX_FPCHDIR$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj1175
Lj1175:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1176
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1183
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1175(%ebx),%edx
	movl	%edx,%eax
Lj1183:
	call	LFPC_SYSC_CHDIR$stub
	movl	%eax,-8(%ebp)
Lj1176:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1177
	call	LFPC_RERAISE$stub
Lj1177:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPEN$ANSISTRING$LONGINT$WORD$$LONGINT
_BASEUNIX_FPOPEN$ANSISTRING$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1185
Lj1185:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1186
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1193
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1185(%ebx),%edx
	movl	%edx,%eax
Lj1193:
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	call	LFPC_SYSC_OPEN$stub
	movl	%eax,-16(%ebp)
Lj1186:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1187
	call	LFPC_RERAISE$stub
Lj1187:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPMKDIR$ANSISTRING$WORD$$LONGINT
_BASEUNIX_FPMKDIR$ANSISTRING$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1199
Lj1199:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1200
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1207
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1199(%ebx),%edx
	movl	%edx,%eax
Lj1207:
	movw	-8(%ebp),%dx
	call	LFPC_SYSC_MKDIR$stub
	movl	%eax,-12(%ebp)
Lj1200:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1201
	call	LFPC_RERAISE$stub
Lj1201:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPUNLINK$ANSISTRING$$LONGINT
_BASEUNIX_FPUNLINK$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj1211
Lj1211:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1212
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1219
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1211(%ebx),%edx
	movl	%edx,%eax
Lj1219:
	call	LFPC_SYSC_UNLINK$stub
	movl	%eax,-8(%ebp)
Lj1212:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1213
	call	LFPC_RERAISE$stub
Lj1213:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPRMDIR$ANSISTRING$$LONGINT
_BASEUNIX_FPRMDIR$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj1221
Lj1221:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1222
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1229
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1221(%ebx),%edx
	movl	%edx,%eax
Lj1229:
	call	LFPC_SYSC_RMDIR$stub
	movl	%eax,-8(%ebp)
Lj1222:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1223
	call	LFPC_RERAISE$stub
Lj1223:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPRENAME$ANSISTRING$ANSISTRING$$LONGINT
_BASEUNIX_FPRENAME$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1231
Lj1231:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1232
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj1239
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1231(%ebx),%eax
	movl	%eax,%edx
Lj1239:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1242
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1231(%ebx),%ecx
	movl	%ecx,%eax
Lj1242:
	call	LFPC_SYSC_RENAME$stub
	movl	%eax,-12(%ebp)
Lj1232:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1233
	call	LFPC_RERAISE$stub
Lj1233:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSTAT$ANSISTRING$STAT$$LONGINT
_BASEUNIX_FPSTAT$ANSISTRING$STAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1244
Lj1244:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1245
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1252
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1244(%ebx),%edx
	movl	%edx,%eax
Lj1252:
	movl	-8(%ebp),%edx
	call	LFPC_SYSC_STAT$stub
	movl	%eax,-12(%ebp)
Lj1245:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1246
	call	LFPC_RERAISE$stub
Lj1246:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPLSTAT$ANSISTRING$PSTAT$$LONGINT
_BASEUNIX_FPLSTAT$ANSISTRING$PSTAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1256
Lj1256:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1257
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1264
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1256(%ebx),%edx
	movl	%edx,%eax
Lj1264:
	movl	-8(%ebp),%edx
	call	L_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1257:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1258
	call	LFPC_RERAISE$stub
Lj1258:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPLSTAT$PCHAR$STAT$$LONGINT
_BASEUNIX_FPLSTAT$PCHAR$STAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPLSTAT$ANSISTRING$STAT$$LONGINT
_BASEUNIX_FPLSTAT$ANSISTRING$STAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1276
Lj1276:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1277
	movl	-8(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1288
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1276(%ebx),%edx
	movl	%edx,%eax
Lj1288:
	movl	-56(%ebp),%edx
	call	L_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1277:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1278
	call	LFPC_RERAISE$stub
Lj1278:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPACCESS$ANSISTRING$LONGINT$$LONGINT
_BASEUNIX_FPACCESS$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1292
Lj1292:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1293
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1300
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1292(%ebx),%edx
	movl	%edx,%eax
Lj1300:
	movl	-8(%ebp),%edx
	call	LFPC_SYSC_ACCESS$stub
	movl	%eax,-12(%ebp)
Lj1293:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1294
	call	LFPC_RERAISE$stub
Lj1294:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFSTAT$TEXT$STAT$$BOOLEAN
_BASEUNIX_FPFSTAT$TEXT$STAT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_FSTAT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPFSTAT$file$STAT$$BOOLEAN
_BASEUNIX_FPFSTAT$file$STAT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_FSTAT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSIGNAL$LONGINT$SIGNALHANDLER$$SIGNALHANDLER
_BASEUNIX_FPSIGNAL$LONGINT$SIGNALHANDLER$$SIGNALHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	leal	-20(%ebp),%eax
	movb	$0,%cl
	movl	$4,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	$0,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_SIGACTION$stub
	call	LFPC_SYS_GETERRNO$stub
	testl	%eax,%eax
	jne	Lj1337
	jmp	Lj1338
Lj1337:
	movl	$0,-12(%ebp)
	jmp	Lj1341
Lj1338:
	movl	-36(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1341:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT
_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_READ$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT
_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_WRITE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPEN$PCHAR$LONGINT$$LONGINT
_BASEUNIX_FPOPEN$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	$438,%cx
	call	LFPC_SYSC_OPEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPEN$ANSISTRING$LONGINT$$LONGINT
_BASEUNIX_FPOPEN$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1375
Lj1375:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1376
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1383
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1375(%ebx),%edx
	movl	%edx,%eax
Lj1383:
	movl	-8(%ebp),%edx
	movw	$438,%cx
	call	LFPC_SYSC_OPEN$stub
	movl	%eax,-12(%ebp)
Lj1376:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1377
	call	LFPC_RERAISE$stub
Lj1377:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$$LONGINT
_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj1389
Lj1389:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	L_$BASEUNIX$_Ld3$non_lazy_ptr-Lj1389(%ebx),%eax
	movl	%eax,(%esp)
	leal	-268(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-267(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	$438,%cx
	call	LFPC_SYSC_OPEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$WORD$$LONGINT
_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	call	Lj1407
Lj1407:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-4(%ebp),%edx
	leal	-272(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	L_$BASEUNIX$_Ld3$non_lazy_ptr-Lj1407(%ebx),%eax
	movl	%eax,(%esp)
	leal	-272(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-271(%ebp),%eax
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%edx
	call	LFPC_SYSC_OPEN$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPENDIR$ANSISTRING$$PDIR
_BASEUNIX_FPOPENDIR$ANSISTRING$$PDIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj1425
Lj1425:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1426
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1433
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1425(%ebx),%edx
	movl	%edx,%eax
Lj1433:
	call	LFPC_SYSC_OPENDIR$stub
	movl	%eax,-8(%ebp)
Lj1426:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1427
	call	LFPC_RERAISE$stub
Lj1427:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPOPENDIR$SHORTSTRING$$PDIR
_BASEUNIX_FPOPENDIR$SHORTSTRING$$PDIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj1435
Lj1435:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	L_$BASEUNIX$_Ld3$non_lazy_ptr-Lj1435(%ebx),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-263(%ebp),%eax
	call	LFPC_SYSC_OPENDIR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT
_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj1449
Lj1449:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	L_$BASEUNIX$_Ld3$non_lazy_ptr-Lj1449(%ebx),%eax
	movl	%eax,(%esp)
	leal	-268(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-267(%ebp),%eax
	movl	-8(%ebp),%edx
	call	LFPC_SYSC_STAT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPDUP$TEXT$TEXT$$LONGINT
_BASEUNIX_FPDUP$TEXT$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FLUSH$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$148,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	leal	336(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_DUP$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPDUP$file$file$$LONGINT
_BASEUNIX_FPDUP$file$file$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$83,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_DUP$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT
_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jl	Lj1491
	subl	$55218,%eax
	subl	$2,%eax
	jle	Lj1492
	jmp	Lj1491
Lj1492:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FLUSH$TEXT$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj1490
Lj1491:
Lj1490:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jl	Lj1496
	subl	$55218,%eax
	subl	$2,%eax
	jle	Lj1497
	jmp	Lj1496
Lj1497:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FLUSH$TEXT$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj1495
Lj1496:
Lj1495:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$148,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movzwl	-14(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	leal	336(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_DUP2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPDUP2$file$file$$LONGINT
_BASEUNIX_FPDUP2$file$file$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$83,%ecx
	rep
	movsl
	movl	-8(%ebp),%edx
	movzwl	-14(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_DUP2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPTIME$$LONGINT
_BASEUNIX_FPTIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leal	-8(%ebp),%eax
	call	LFPC_SYSC_TIME$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT
_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1536
	jmp	Lj1537
Lj1536:
	movl	$0,-20(%ebp)
	jmp	Lj1540
Lj1537:
	movl	8(%ebp),%ecx
	movl	$274877907,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$6,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	8(%ebp),%eax
	cltd
	movl	$1000,%ecx
	idivl	%ecx
	imull	$1000,%edx
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1540:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSELECT$TEXT$PTIMEVAL$$LONGINT
_BASEUNIX_FPSELECT$TEXT$PTIMEVAL$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj1561
	jmp	Lj1562
Lj1561:
	movl	$9,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-12(%ebp)
	jmp	Lj1559
Lj1562:
	leal	-140(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	leal	-140(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj1573
	jmp	Lj1574
Lj1573:
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-140(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	$0,%ecx
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1587
Lj1574:
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-140(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	$0,%edx
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1587:
Lj1559:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPSELECT$TEXT$LONGINT$$LONGINT
_BASEUNIX_FPSELECT$TEXT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1602
	jmp	Lj1603
Lj1602:
	movl	$0,-16(%ebp)
	jmp	Lj1606
Lj1603:
	movl	-8(%ebp),%ecx
	movl	$274877907,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$6,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%eax
	cltd
	movl	$1000,%ecx
	idivl	%ecx
	imull	$1000,%edx
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1606:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BASEUNIX_FPSELECT$TEXT$PTIMEVAL$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPWAITPID$LONGINT$LONGINT$LONGINT$$LONGINT
_BASEUNIX_FPWAITPID$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_WAITPID$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BASEUNIX_FPREADLINK$ANSISTRING$$ANSISTRING
_BASEUNIX_FPREADLINK$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj1630
Lj1630:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1631
	leal	-12(%ebp),%eax
	movl	$1024,%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj1642
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1630(%ebx),%eax
	movl	%eax,%edx
Lj1642:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1645
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1630(%ebx),%ecx
	movl	%ecx,%eax
Lj1645:
	movl	$1024,%ecx
	call	LFPC_SYSC_READLINK$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1648
	jmp	Lj1649
Lj1648:
	movl	-16(%ebp),%edx
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-12(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj1656
Lj1649:
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
Lj1656:
Lj1631:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1632
	call	LFPC_RERAISE$stub
Lj1632:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_BASEUNIX
_THREADVARLIST_BASEUNIX:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$BASEUNIX$_Ld1
_$BASEUNIX$_Ld1:
	.ascii	"\013/bin/sh\000-c\000\000"

.const
	.align 2
.globl	_$BASEUNIX$_Ld2
_$BASEUNIX$_Ld2:
	.ascii	"\001=\000"

.data
	.align 2
.globl	_TC_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT_MIB_GETDOMAINNAME
_TC_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT_MIB_GETDOMAINNAME:
	.long	1,22

.data
	.align 2
.globl	_TC_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT_MIB_GETHOSTNAME
_TC_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT_MIB_GETHOSTNAME:
	.long	1,10

.const
	.align 2
.globl	_$BASEUNIX$_Ld3
_$BASEUNIX$_Ld3:
	.ascii	"\001\000\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
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

L_BASEUNIX_INTERNALCREATESHELLARGV$PCHAR$LONGINT$$PPCHAR$stub:
.indirect_symbol _BASEUNIX_INTERNALCREATESHELLARGV$PCHAR$LONGINT$$PPCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPGETENV$PCHAR$$PCHAR$stub:
.indirect_symbol _BASEUNIX_FPGETENV$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_SETERRNO$stub:
.indirect_symbol FPC_SYS_SETERRNO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS2$stub:
.indirect_symbol FPC_DOSYS2
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS1$stub:
.indirect_symbol FPC_DOSYS1
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS3$stub:
.indirect_symbol FPC_DOSYS3
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_SETITIMER$LONGINT$ITIMERVAL$ITIMERVAL$$LONGINT$stub:
.indirect_symbol _BASEUNIX_SETITIMER$LONGINT$ITIMERVAL$ITIMERVAL$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_SIGPROCMASK$stub:
.indirect_symbol FPC_SYSC_SIGPROCMASK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSIGSUSPEND$SIGSET_T$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSIGSUSPEND$SIGSET_T$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_SIGBLOCK$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_SIGBLOCK$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_SIGPAUSE$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_SIGPAUSE$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSLEEP$LONGWORD$$LONGWORD$stub:
.indirect_symbol _BASEUNIX_FPSLEEP$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_NANOSLEEP$stub:
.indirect_symbol FPC_SYSC_NANOSLEEP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_GETERRNO$stub:
.indirect_symbol FPC_SYS_GETERRNO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPUNAME$UTSNAME$$LONGINT_DOONE$PCHAR$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _SYSCTL_FPSYSCTL$PCHAR$LONGWORD$POINTER$PSIZE_T$POINTER$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS4$stub:
.indirect_symbol FPC_DOSYS4
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS0$stub:
.indirect_symbol FPC_DOSYS0
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPGETRUSAGE$LONGINT$RUSAGE$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPGETRUSAGE$LONGINT$RUSAGE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD$stub:
.indirect_symbol _BASEUNIX_FPTIMES$TMS$$LONGWORD_CONVTCK$TIMEVAL$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS5$stub:
.indirect_symbol FPC_DOSYS5
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPGETPRIORITY$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPGETPRIORITY$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSETPRIORITY$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSETPRIORITY$LONGINT$LONGINT$LONGINT$$LONGINT
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

L_BASEUNIX_FPLINK$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPLINK$PCHAR$PCHAR$$LONGINT
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPCHOWN$PCHAR$LONGWORD$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPCHOWN$PCHAR$LONGWORD$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPUTIME$PCHAR$PUTIMBUF$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETCWD$stub:
.indirect_symbol FPC_SYSC_GETCWD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_chararray_to_ansistr$stub:
.indirect_symbol fpc_chararray_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_CHDIR$stub:
.indirect_symbol FPC_SYSC_CHDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_OPEN$stub:
.indirect_symbol FPC_SYSC_OPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_MKDIR$stub:
.indirect_symbol FPC_SYSC_MKDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_UNLINK$stub:
.indirect_symbol FPC_SYSC_UNLINK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_RMDIR$stub:
.indirect_symbol FPC_SYSC_RMDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_RENAME$stub:
.indirect_symbol FPC_SYSC_RENAME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_STAT$stub:
.indirect_symbol FPC_SYSC_STAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_ACCESS$stub:
.indirect_symbol FPC_SYSC_ACCESS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_FSTAT$stub:
.indirect_symbol FPC_SYSC_FSTAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_SIGACTION$stub:
.indirect_symbol FPC_SYSC_SIGACTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_READ$stub:
.indirect_symbol FPC_SYSC_READ
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_WRITE$stub:
.indirect_symbol FPC_SYSC_WRITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_OPENDIR$stub:
.indirect_symbol FPC_SYSC_OPENDIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FLUSH$TEXT$stub:
.indirect_symbol _SYSTEM_FLUSH$TEXT
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

LFPC_SYSC_DUP$stub:
.indirect_symbol FPC_SYSC_DUP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_DUP2$stub:
.indirect_symbol FPC_SYSC_DUP2
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_TIME$stub:
.indirect_symbol FPC_SYSC_TIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSELECT$TEXT$PTIMEVAL$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$TEXT$PTIMEVAL$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_WAITPID$stub:
.indirect_symbol FPC_SYSC_WAITPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_READLINK$stub:
.indirect_symbol FPC_SYSC_READLINK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
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
.globl	_INIT_BASEUNIX_UTSNAME
_INIT_BASEUNIX_UTSNAME:
	.byte	13,7
	.ascii	"utsname"
	.long	1280,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF1
_RTTI_BASEUNIX_DEF1:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF2
_RTTI_BASEUNIX_DEF2:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF3
_RTTI_BASEUNIX_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF4
_RTTI_BASEUNIX_DEF4:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF5
_RTTI_BASEUNIX_DEF5:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_UTSNAME
_RTTI_BASEUNIX_UTSNAME:
	.byte	13,7
	.ascii	"utsname"
	.long	1280,5
	.long	_RTTI_BASEUNIX_DEF1
	.long	0
	.long	_RTTI_BASEUNIX_DEF2
	.long	256
	.long	_RTTI_BASEUNIX_DEF3
	.long	512
	.long	_RTTI_BASEUNIX_DEF4
	.long	768
	.long	_RTTI_BASEUNIX_DEF5
	.long	1024

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PUTSNAME
_INIT_BASEUNIX_PUTSNAME:
	.byte	0
	.ascii	"\010pUtsName"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PUTSNAME
_RTTI_BASEUNIX_PUTSNAME:
	.byte	0
	.ascii	"\010pUtsName"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_STAT
_INIT_BASEUNIX_STAT:
	.byte	13,4
	.ascii	"stat"
	.long	96,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF8
_RTTI_BASEUNIX_DEF8:
	.byte	12
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_SYSTEM_INT64
	.long	20

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_STAT
_RTTI_BASEUNIX_STAT:
	.byte	13,4
	.ascii	"stat"
	.long	96,20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_LONGINT
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_SYSTEM_LONGINT
	.long	40
	.long	_RTTI_SYSTEM_LONGINT
	.long	44
	.long	_RTTI_SYSTEM_INT64
	.long	48
	.long	_RTTI_SYSTEM_INT64
	.long	56
	.long	_RTTI_SYSTEM_LONGWORD
	.long	64
	.long	_RTTI_SYSTEM_LONGWORD
	.long	68
	.long	_RTTI_SYSTEM_LONGWORD
	.long	72
	.long	_RTTI_SYSTEM_LONGINT
	.long	76
	.long	_RTTI_BASEUNIX_DEF8
	.long	80

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSTAT
_INIT_BASEUNIX_PSTAT:
	.byte	0
	.ascii	"\005pStat"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSTAT
_RTTI_BASEUNIX_PSTAT:
	.byte	0
	.ascii	"\005pStat"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_DIRENT
_INIT_BASEUNIX_DIRENT:
	.byte	13,6
	.ascii	"dirent"
	.long	264,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF11
_RTTI_BASEUNIX_DEF11:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DIRENT
_RTTI_BASEUNIX_DIRENT:
	.byte	13,6
	.ascii	"dirent"
	.long	264,5
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_BYTE
	.long	6
	.long	_RTTI_SYSTEM_BYTE
	.long	7
	.long	_RTTI_BASEUNIX_DEF11
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PDIRENT
_INIT_BASEUNIX_PDIRENT:
	.byte	0
	.ascii	"\007pDirent"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PDIRENT
_RTTI_BASEUNIX_PDIRENT:
	.byte	0
	.ascii	"\007pDirent"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_DIR
_INIT_BASEUNIX_DIR:
	.byte	13,3
	.ascii	"dir"
	.long	80,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DIR
_RTTI_BASEUNIX_DIR:
	.byte	13,3
	.ascii	"dir"
	.long	80,10
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_PCHAR
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_UNIXTYPE_PTHREAD_MUTEX_T
	.long	32
	.long	_RTTI_SYSTEM_POINTER
	.long	76

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PDIR
_INIT_BASEUNIX_PDIR:
	.byte	0
	.ascii	"\004pDir"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PDIR
_RTTI_BASEUNIX_PDIR:
	.byte	0
	.ascii	"\004pDir"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_UTIMBUF
_INIT_BASEUNIX_UTIMBUF:
	.byte	13,7
	.ascii	"utimbuf"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_UTIMBUF
_RTTI_BASEUNIX_UTIMBUF:
	.byte	13,7
	.ascii	"utimbuf"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PUTIMBUF
_INIT_BASEUNIX_PUTIMBUF:
	.byte	0
	.ascii	"\010putimbuf"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PUTIMBUF
_RTTI_BASEUNIX_PUTIMBUF:
	.byte	0
	.ascii	"\010putimbuf"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_FLOCK
_INIT_BASEUNIX_FLOCK:
	.byte	13,5
	.ascii	"flock"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_FLOCK
_RTTI_BASEUNIX_FLOCK:
	.byte	13,5
	.ascii	"flock"
	.long	24,5
	.long	_RTTI_SYSTEM_INT64
	.long	0
	.long	_RTTI_SYSTEM_INT64
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_SMALLINT
	.long	20
	.long	_RTTI_SYSTEM_SMALLINT
	.long	22

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PFLOCK
_INIT_BASEUNIX_PFLOCK:
	.byte	0
	.ascii	"\006pFlock"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PFLOCK
_RTTI_BASEUNIX_PFLOCK:
	.byte	0
	.ascii	"\006pFlock"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TMS
_INIT_BASEUNIX_TMS:
	.byte	13,3
	.ascii	"tms"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TMS
_RTTI_BASEUNIX_TMS:
	.byte	13,3
	.ascii	"tms"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PTMS
_INIT_BASEUNIX_PTMS:
	.byte	0
	.ascii	"\004pTms"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PTMS
_RTTI_BASEUNIX_PTMS:
	.byte	0
	.ascii	"\004pTms"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TFDSET
_INIT_BASEUNIX_TFDSET:
	.byte	12
	.ascii	"\006TFDSet"
	.long	4,32
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TFDSET
_RTTI_BASEUNIX_TFDSET:
	.byte	12
	.ascii	"\006TFDSet"
	.long	4,32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PFDSET
_INIT_BASEUNIX_PFDSET:
	.byte	0
	.ascii	"\006pFDSet"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PFDSET
_RTTI_BASEUNIX_PFDSET:
	.byte	0
	.ascii	"\006pFDSet"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TIMEZONE
_INIT_BASEUNIX_TIMEZONE:
	.byte	13,8
	.ascii	"timezone"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TIMEZONE
_RTTI_BASEUNIX_TIMEZONE:
	.byte	13,8
	.ascii	"timezone"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PTIMEZONE
_INIT_BASEUNIX_PTIMEZONE:
	.byte	0
	.ascii	"\011ptimezone"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PTIMEZONE
_RTTI_BASEUNIX_PTIMEZONE:
	.byte	0
	.ascii	"\011ptimezone"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_RUSAGE
_INIT_BASEUNIX_RUSAGE:
	.byte	13,6
	.ascii	"rusage"
	.long	72,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_RUSAGE
_RTTI_BASEUNIX_RUSAGE:
	.byte	13,6
	.ascii	"rusage"
	.long	72,16
	.long	_RTTI_UNIXTYPE_TIMEVAL
	.long	0
	.long	_RTTI_UNIXTYPE_TIMEVAL
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_LONGINT
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36
	.long	_RTTI_SYSTEM_LONGINT
	.long	40
	.long	_RTTI_SYSTEM_LONGINT
	.long	44
	.long	_RTTI_SYSTEM_LONGINT
	.long	48
	.long	_RTTI_SYSTEM_LONGINT
	.long	52
	.long	_RTTI_SYSTEM_LONGINT
	.long	56
	.long	_RTTI_SYSTEM_LONGINT
	.long	60
	.long	_RTTI_SYSTEM_LONGINT
	.long	64
	.long	_RTTI_SYSTEM_LONGINT
	.long	68

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TRLIMIT
_INIT_BASEUNIX_TRLIMIT:
	.byte	13,7
	.ascii	"TRLimit"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TRLIMIT
_RTTI_BASEUNIX_TRLIMIT:
	.byte	13,7
	.ascii	"TRLimit"
	.long	16,2
	.long	_RTTI_SYSTEM_INT64
	.long	0
	.long	_RTTI_SYSTEM_INT64
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PRLIMIT
_INIT_BASEUNIX_PRLIMIT:
	.byte	0
	.ascii	"\007PRLimit"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PRLIMIT
_RTTI_BASEUNIX_PRLIMIT:
	.byte	0
	.ascii	"\007PRLimit"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_IOVEC
_INIT_BASEUNIX_IOVEC:
	.byte	13,5
	.ascii	"iovec"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_IOVEC
_RTTI_BASEUNIX_IOVEC:
	.byte	13,5
	.ascii	"iovec"
	.long	8,2
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PIOVEC
_INIT_BASEUNIX_PIOVEC:
	.byte	0
	.ascii	"\006piovec"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PIOVEC
_RTTI_BASEUNIX_PIOVEC:
	.byte	0
	.ascii	"\006piovec"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_POLLFD
_INIT_BASEUNIX_POLLFD:
	.byte	13,6
	.ascii	"pollfd"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_POLLFD
_RTTI_BASEUNIX_POLLFD:
	.byte	13,6
	.ascii	"pollfd"
	.long	8,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	4
	.long	_RTTI_SYSTEM_SMALLINT
	.long	6

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PPOLLFD
_INIT_BASEUNIX_PPOLLFD:
	.byte	0
	.ascii	"\007ppollfd"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PPOLLFD
_RTTI_BASEUNIX_PPOLLFD:
	.byte	0
	.ascii	"\007ppollfd"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGSET_T
_INIT_BASEUNIX_SIGSET_T:
	.byte	12
	.ascii	"\010sigset_t"
	.long	4,1
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGSET_T
_RTTI_BASEUNIX_SIGSET_T:
	.byte	12
	.ascii	"\010sigset_t"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGVAL
_INIT_BASEUNIX_SIGVAL:
	.byte	13,6
	.ascii	"Sigval"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGVAL
_RTTI_BASEUNIX_SIGVAL:
	.byte	13,6
	.ascii	"Sigval"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	0

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TSIGINFO_T
_INIT_BASEUNIX_TSIGINFO_T:
	.byte	13,10
	.ascii	"TSigInfo_t"
	.long	64,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF36
_RTTI_BASEUNIX_DEF36:
	.byte	12
	.ascii	"\000"
	.long	4,7
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TSIGINFO_T
_RTTI_BASEUNIX_TSIGINFO_T:
	.byte	13,10
	.ascii	"TSigInfo_t"
	.long	64,10
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_POINTER
	.long	24
	.long	_RTTI_BASEUNIX_SIGVAL
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_BASEUNIX_DEF36
	.long	36

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGSET
_INIT_BASEUNIX_PSIGSET:
	.byte	0
	.ascii	"\007PSigSet"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGSET
_RTTI_BASEUNIX_PSIGSET:
	.byte	0
	.ascii	"\007PSigSet"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TDARWIN_STACK_T
_INIT_BASEUNIX_TDARWIN_STACK_T:
	.byte	13,15
	.ascii	"tdarwin_stack_t"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TDARWIN_STACK_T
_RTTI_BASEUNIX_TDARWIN_STACK_T:
	.byte	13,15
	.ascii	"tdarwin_stack_t"
	.long	12,3
	.long	_RTTI_SYSTEM_PCHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_I386_THREAD_STATE
_INIT_BASEUNIX_I386_THREAD_STATE:
	.byte	13,17
	.ascii	"i386_thread_state"
	.long	64,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_I386_THREAD_STATE
_RTTI_BASEUNIX_I386_THREAD_STATE:
	.byte	13,17
	.ascii	"i386_thread_state"
	.long	64,16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_SYSTEM_LONGWORD
	.long	40
	.long	_RTTI_SYSTEM_LONGWORD
	.long	44
	.long	_RTTI_SYSTEM_LONGWORD
	.long	48
	.long	_RTTI_SYSTEM_LONGWORD
	.long	52
	.long	_RTTI_SYSTEM_LONGWORD
	.long	56
	.long	_RTTI_SYSTEM_LONGWORD
	.long	60

.const_data
	.align 2
.globl	_INIT_BASEUNIX_X86_64_THREAD_STATE
_INIT_BASEUNIX_X86_64_THREAD_STATE:
	.byte	13,19
	.ascii	"x86_64_thread_state"
	.long	168,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_X86_64_THREAD_STATE
_RTTI_BASEUNIX_X86_64_THREAD_STATE:
	.byte	13,19
	.ascii	"x86_64_thread_state"
	.long	168,21
	.long	_RTTI_SYSTEM_QWORD
	.long	0
	.long	_RTTI_SYSTEM_QWORD
	.long	8
	.long	_RTTI_SYSTEM_QWORD
	.long	16
	.long	_RTTI_SYSTEM_QWORD
	.long	24
	.long	_RTTI_SYSTEM_QWORD
	.long	32
	.long	_RTTI_SYSTEM_QWORD
	.long	40
	.long	_RTTI_SYSTEM_QWORD
	.long	48
	.long	_RTTI_SYSTEM_QWORD
	.long	56
	.long	_RTTI_SYSTEM_QWORD
	.long	64
	.long	_RTTI_SYSTEM_QWORD
	.long	72
	.long	_RTTI_SYSTEM_QWORD
	.long	80
	.long	_RTTI_SYSTEM_QWORD
	.long	88
	.long	_RTTI_SYSTEM_QWORD
	.long	96
	.long	_RTTI_SYSTEM_QWORD
	.long	104
	.long	_RTTI_SYSTEM_QWORD
	.long	112
	.long	_RTTI_SYSTEM_QWORD
	.long	120
	.long	_RTTI_SYSTEM_QWORD
	.long	128
	.long	_RTTI_SYSTEM_QWORD
	.long	136
	.long	_RTTI_SYSTEM_QWORD
	.long	144
	.long	_RTTI_SYSTEM_QWORD
	.long	152
	.long	_RTTI_SYSTEM_QWORD
	.long	160

.const_data
	.align 2
.globl	_INIT_BASEUNIX_FP_CONTROL
_INIT_BASEUNIX_FP_CONTROL:
	.byte	13,10
	.ascii	"fp_control"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_FP_CONTROL
_RTTI_BASEUNIX_FP_CONTROL:
	.byte	13,10
	.ascii	"fp_control"
	.long	2,1
	.long	_RTTI_SYSTEM_WORD
	.long	0

.const_data
	.align 2
.globl	_INIT_BASEUNIX_FP_STATUS
_INIT_BASEUNIX_FP_STATUS:
	.byte	13,9
	.ascii	"fp_status"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_FP_STATUS
_RTTI_BASEUNIX_FP_STATUS:
	.byte	13,9
	.ascii	"fp_status"
	.long	2,1
	.long	_RTTI_SYSTEM_WORD
	.long	0

.const_data
	.align 2
.globl	_INIT_BASEUNIX_MMST_REG
_INIT_BASEUNIX_MMST_REG:
	.byte	13,8
	.ascii	"mmst_reg"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF44
_RTTI_BASEUNIX_DEF44:
	.byte	12
	.ascii	"\000"
	.long	1,10
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF45
_RTTI_BASEUNIX_DEF45:
	.byte	12
	.ascii	"\000"
	.long	1,6
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_MMST_REG
_RTTI_BASEUNIX_MMST_REG:
	.byte	13,8
	.ascii	"mmst_reg"
	.long	16,2
	.long	_RTTI_BASEUNIX_DEF44
	.long	0
	.long	_RTTI_BASEUNIX_DEF45
	.long	10

.const_data
	.align 2
.globl	_INIT_BASEUNIX_XMM_REG
_INIT_BASEUNIX_XMM_REG:
	.byte	13,7
	.ascii	"xmm_reg"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF47
_RTTI_BASEUNIX_DEF47:
	.byte	12
	.ascii	"\000"
	.long	1,16
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_XMM_REG
_RTTI_BASEUNIX_XMM_REG:
	.byte	13,7
	.ascii	"xmm_reg"
	.long	16,1
	.long	_RTTI_BASEUNIX_DEF47
	.long	0

.const_data
	.align 2
.globl	_INIT_BASEUNIX_I386_FLOAT_STATE
_INIT_BASEUNIX_I386_FLOAT_STATE:
	.byte	13,16
	.ascii	"i386_float_state"
	.long	524,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF49
_RTTI_BASEUNIX_DEF49:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF50
_RTTI_BASEUNIX_DEF50:
	.byte	12
	.ascii	"\000"
	.long	1,224
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_I386_FLOAT_STATE
_RTTI_BASEUNIX_I386_FLOAT_STATE:
	.byte	13,16
	.ascii	"i386_float_state"
	.long	524,32
	.long	_RTTI_BASEUNIX_DEF49
	.long	0
	.long	_RTTI_BASEUNIX_FP_CONTROL
	.long	8
	.long	_RTTI_BASEUNIX_FP_STATUS
	.long	10
	.long	_RTTI_SYSTEM_BYTE
	.long	12
	.long	_RTTI_SYSTEM_BYTE
	.long	13
	.long	_RTTI_SYSTEM_WORD
	.long	14
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_WORD
	.long	20
	.long	_RTTI_SYSTEM_WORD
	.long	22
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_WORD
	.long	28
	.long	_RTTI_SYSTEM_WORD
	.long	30
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	40
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	56
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	72
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	88
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	104
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	120
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	136
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	152
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	168
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	184
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	200
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	216
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	232
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	248
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	264
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	280
	.long	_RTTI_BASEUNIX_DEF50
	.long	296
	.long	_RTTI_SYSTEM_LONGINT
	.long	520

.const_data
	.align 2
.globl	_INIT_BASEUNIX_I386_EXCEPTION_STATE
_INIT_BASEUNIX_I386_EXCEPTION_STATE:
	.byte	13,20
	.ascii	"i386_exception_state"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_I386_EXCEPTION_STATE
_RTTI_BASEUNIX_I386_EXCEPTION_STATE:
	.byte	13,20
	.ascii	"i386_exception_state"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_X86_64_FLOAT_STATE
_INIT_BASEUNIX_X86_64_FLOAT_STATE:
	.byte	13,18
	.ascii	"x86_64_float_state"
	.long	524,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF53
_RTTI_BASEUNIX_DEF53:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF54
_RTTI_BASEUNIX_DEF54:
	.byte	12
	.ascii	"\000"
	.long	1,96
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_X86_64_FLOAT_STATE
_RTTI_BASEUNIX_X86_64_FLOAT_STATE:
	.byte	13,18
	.ascii	"x86_64_float_state"
	.long	524,40
	.long	_RTTI_BASEUNIX_DEF53
	.long	0
	.long	_RTTI_BASEUNIX_FP_CONTROL
	.long	8
	.long	_RTTI_BASEUNIX_FP_STATUS
	.long	10
	.long	_RTTI_SYSTEM_BYTE
	.long	12
	.long	_RTTI_SYSTEM_BYTE
	.long	13
	.long	_RTTI_SYSTEM_WORD
	.long	14
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_WORD
	.long	20
	.long	_RTTI_SYSTEM_WORD
	.long	22
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_WORD
	.long	28
	.long	_RTTI_SYSTEM_WORD
	.long	30
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	40
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	56
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	72
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	88
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	104
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	120
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	136
	.long	_RTTI_BASEUNIX_MMST_REG
	.long	152
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	168
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	184
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	200
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	216
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	232
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	248
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	264
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	280
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	296
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	312
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	328
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	344
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	360
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	376
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	392
	.long	_RTTI_BASEUNIX_XMM_REG
	.long	408
	.long	_RTTI_BASEUNIX_DEF54
	.long	424
	.long	_RTTI_SYSTEM_LONGINT
	.long	520

.const_data
	.align 2
.globl	_INIT_BASEUNIX_X86_64_EXCEPTION_STATE
_INIT_BASEUNIX_X86_64_EXCEPTION_STATE:
	.byte	13,22
	.ascii	"x86_64_exception_state"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_X86_64_EXCEPTION_STATE
_RTTI_BASEUNIX_X86_64_EXCEPTION_STATE:
	.byte	13,22
	.ascii	"x86_64_exception_state"
	.long	16,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_QWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_MCONTEXT_T
_INIT_BASEUNIX_MCONTEXT_T:
	.byte	13,10
	.ascii	"mcontext_t"
	.long	600,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_MCONTEXT_T
_RTTI_BASEUNIX_MCONTEXT_T:
	.byte	13,10
	.ascii	"mcontext_t"
	.long	600,3
	.long	_RTTI_BASEUNIX_I386_EXCEPTION_STATE
	.long	0
	.long	_RTTI_BASEUNIX_I386_THREAD_STATE
	.long	12
	.long	_RTTI_BASEUNIX_I386_FLOAT_STATE
	.long	76

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGCONTEXT
_INIT_BASEUNIX_PSIGCONTEXT:
	.byte	0
	.ascii	"\013psigcontext"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGCONTEXT
_RTTI_BASEUNIX_PSIGCONTEXT:
	.byte	0
	.ascii	"\013psigcontext"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGCONTEXTREC
_INIT_BASEUNIX_PSIGCONTEXTREC:
	.byte	0
	.ascii	"\016psigcontextrec"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGCONTEXTREC
_RTTI_BASEUNIX_PSIGCONTEXTREC:
	.byte	0
	.ascii	"\016psigcontextrec"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGCONTEXTREC
_INIT_BASEUNIX_SIGCONTEXTREC:
	.byte	13,13
	.ascii	"sigcontextrec"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF60
_RTTI_BASEUNIX_DEF60:
	.byte	0
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGCONTEXTREC
_RTTI_BASEUNIX_SIGCONTEXTREC:
	.byte	13,13
	.ascii	"sigcontextrec"
	.long	32,6
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_BASEUNIX_SIGSET_T
	.long	4
	.long	_RTTI_BASEUNIX_TDARWIN_STACK_T
	.long	8
	.long	_RTTI_BASEUNIX_PSIGCONTEXTREC
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_BASEUNIX_DEF60
	.long	28

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGNALHANDLER
_INIT_BASEUNIX_SIGNALHANDLER:
	.byte	23,13
	.ascii	"SignalHandler"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGNALHANDLER
_RTTI_BASEUNIX_SIGNALHANDLER:
	.byte	23,13
	.ascii	"SignalHandler"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGNALHANDLER
_INIT_BASEUNIX_PSIGNALHANDLER:
	.byte	0
	.ascii	"\016PSignalHandler"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGNALHANDLER
_RTTI_BASEUNIX_PSIGNALHANDLER:
	.byte	0
	.ascii	"\016PSignalHandler"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGNALRESTORER
_INIT_BASEUNIX_SIGNALRESTORER:
	.byte	23,14
	.ascii	"SignalRestorer"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGNALRESTORER
_RTTI_BASEUNIX_SIGNALRESTORER:
	.byte	23,14
	.ascii	"SignalRestorer"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGNALRESTORER
_INIT_BASEUNIX_PSIGNALRESTORER:
	.byte	0
	.ascii	"\017PSignalRestorer"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGNALRESTORER
_RTTI_BASEUNIX_PSIGNALRESTORER:
	.byte	0
	.ascii	"\017PSignalRestorer"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGINFO
_INIT_BASEUNIX_PSIGINFO:
	.byte	0
	.ascii	"\010PSigInfo"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGINFO
_RTTI_BASEUNIX_PSIGINFO:
	.byte	0
	.ascii	"\010PSigInfo"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGACTIONHANDLER
_INIT_BASEUNIX_SIGACTIONHANDLER:
	.byte	23,16
	.ascii	"SigActionHandler"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGACTIONHANDLER
_RTTI_BASEUNIX_SIGACTIONHANDLER:
	.byte	23,16
	.ascii	"SigActionHandler"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGACTIONREC
_INIT_BASEUNIX_SIGACTIONREC:
	.byte	13,12
	.ascii	"SigActionRec"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGACTIONREC
_RTTI_BASEUNIX_SIGACTIONREC:
	.byte	13,12
	.ascii	"SigActionRec"
	.long	12,3
	.long	_RTTI_BASEUNIX_SIGACTIONHANDLER
	.long	0
	.long	_RTTI_BASEUNIX_SIGSET_T
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PSIGACTIONREC
_INIT_BASEUNIX_PSIGACTIONREC:
	.byte	0
	.ascii	"\015PSigActionRec"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PSIGACTIONREC
_RTTI_BASEUNIX_PSIGACTIONREC:
	.byte	0
	.ascii	"\015PSigActionRec"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGALTSTACK
_INIT_BASEUNIX_SIGALTSTACK:
	.byte	13,11
	.ascii	"sigaltstack"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGALTSTACK
_RTTI_BASEUNIX_SIGALTSTACK:
	.byte	13,11
	.ascii	"sigaltstack"
	.long	12,3
	.long	_RTTI_SYSTEM_PCHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_SIGVEC
_INIT_BASEUNIX_SIGVEC:
	.byte	13,6
	.ascii	"sigvec"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_DEF71
_RTTI_BASEUNIX_DEF71:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_SIGVEC
_RTTI_BASEUNIX_SIGVEC:
	.byte	13,6
	.ascii	"sigvec"
	.long	12,3
	.long	_RTTI_BASEUNIX_DEF71
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TGRPARR
_INIT_BASEUNIX_TGRPARR:
	.byte	12
	.ascii	"\007TGrpArr"
	.long	4,1
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TGRPARR
_RTTI_BASEUNIX_TGRPARR:
	.byte	12
	.ascii	"\007TGrpArr"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PGRPARR
_INIT_BASEUNIX_PGRPARR:
	.byte	0
	.ascii	"\007pGrpArr"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PGRPARR
_RTTI_BASEUNIX_PGRPARR:
	.byte	0
	.ascii	"\007pGrpArr"

.const_data
	.align 2
.globl	_INIT_BASEUNIX_TFILDES
_INIT_BASEUNIX_TFILDES:
	.byte	12
	.ascii	"\007TFilDes"
	.long	4,2
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_TFILDES
_RTTI_BASEUNIX_TFILDES:
	.byte	12
	.ascii	"\007TFilDes"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_BASEUNIX_PFILDES
_INIT_BASEUNIX_PFILDES:
	.byte	0
	.ascii	"\007pFilDes"

.const_data
	.align 2
.globl	_RTTI_BASEUNIX_PFILDES
_RTTI_BASEUNIX_PFILDES:
	.byte	0
	.ascii	"\007pFilDes"
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
L_$BASEUNIX$_Ld1$non_lazy_ptr:
.indirect_symbol _$BASEUNIX$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ENVP$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ENVP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BASEUNIX$_Ld2$non_lazy_ptr:
.indirect_symbol _$BASEUNIX$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT_MIB_GETDOMAINNAME$non_lazy_ptr:
.indirect_symbol _TC_BASEUNIX_GETDOMAINNAME$PCHAR$LONGINT$$LONGINT_MIB_GETDOMAINNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT_MIB_GETHOSTNAME$non_lazy_ptr:
.indirect_symbol _TC_BASEUNIX_GETHOSTNAME$PCHAR$LONGINT$$LONGINT_MIB_GETHOSTNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BASEUNIX$_Ld3$non_lazy_ptr:
.indirect_symbol _$BASEUNIX$_Ld3
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

