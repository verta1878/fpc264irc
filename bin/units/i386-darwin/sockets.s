# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SOCKETS_SOCKETERROR$$LONGINT
_SOCKETS_SOCKETERROR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj7
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj8
Lj7:
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj4(%ebx),%edx
	leal	4(%edx),%eax
Lj8:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPSOCKET$LONGINT$LONGINT$LONGINT$$LONGINT
_SOCKETS_FPSOCKET$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj10
Lj10:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$97,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj10(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj23
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj10(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj24
Lj23:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj10(%edx),%ecx
	leal	4(%ecx),%eax
Lj24:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPSEND$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT
_SOCKETS_FPSEND$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj26
Lj26:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,24(%esp)
	movl	$0,20(%esp)
	movl	$133,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS6$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj26(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj45
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj26(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj46
Lj45:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj26(%edx),%ecx
	leal	4(%ecx),%eax
Lj46:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPSENDTO$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$LONGWORD$$LONGINT
_SOCKETS_FPSENDTO$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj48
Lj48:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$133,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,24(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS6$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj48(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj67
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj48(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj68
Lj67:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj48(%edx),%ecx
	leal	4(%ecx),%eax
Lj68:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPRECV$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT
_SOCKETS_FPRECV$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj70
Lj70:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,24(%esp)
	movl	$0,20(%esp)
	movl	$29,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS6$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj70(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj89
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj70(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj90
Lj89:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj70(%edx),%ecx
	leal	4(%ecx),%eax
Lj90:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPRECVFROM$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT
_SOCKETS_FPRECVFROM$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj92
Lj92:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$29,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,24(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS6$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj92(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj111
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj92(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj112
Lj111:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj92(%edx),%ecx
	leal	4(%ecx),%eax
Lj112:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPBIND$LONGINT$PSOCKADDR$LONGWORD$$LONGINT
_SOCKETS_FPBIND$LONGINT$PSOCKADDR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj114
Lj114:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$104,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj114(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj127
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj114(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj128
Lj127:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj114(%edx),%ecx
	leal	4(%ecx),%eax
Lj128:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPLISTEN$LONGINT$LONGINT$$LONGINT
_SOCKETS_FPLISTEN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj130
Lj130:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$106,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-16(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj130(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj141
	movl	-16(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj130(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj142
Lj141:
	movl	-16(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj130(%edx),%ecx
	leal	4(%ecx),%eax
Lj142:
	movl	%ebx,(%eax)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPACCEPT$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT
_SOCKETS_FPACCEPT$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj144
Lj144:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$30,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj144(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj157
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj144(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj158
Lj157:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj144(%edx),%ecx
	leal	4(%ecx),%eax
Lj158:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPCONNECT$LONGINT$PSOCKADDR$LONGWORD$$LONGINT
_SOCKETS_FPCONNECT$LONGINT$PSOCKADDR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj160
Lj160:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$98,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj160(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj173
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj160(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj174
Lj173:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj160(%edx),%ecx
	leal	4(%ecx),%eax
Lj174:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPSHUTDOWN$LONGINT$LONGINT$$LONGINT
_SOCKETS_FPSHUTDOWN$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj176
Lj176:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$134,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS2$stub
	movl	%eax,-12(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-16(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj176(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj187
	movl	-16(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj176(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj188
Lj187:
	movl	-16(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj176(%edx),%ecx
	leal	4(%ecx),%eax
Lj188:
	movl	%ebx,(%eax)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPGETSOCKNAME$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT
_SOCKETS_FPGETSOCKNAME$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj190
Lj190:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$32,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj190(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj203
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj190(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj204
Lj203:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj190(%edx),%ecx
	leal	4(%ecx),%eax
Lj204:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPGETPEERNAME$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT
_SOCKETS_FPGETPEERNAME$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj206
Lj206:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$31,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS3$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj206(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj219
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj206(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj220
Lj219:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj206(%edx),%ecx
	leal	4(%ecx),%eax
Lj220:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPSETSOCKOPT$LONGINT$LONGINT$LONGINT$POINTER$LONGWORD$$LONGINT
_SOCKETS_FPSETSOCKOPT$LONGINT$LONGINT$LONGINT$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj222
Lj222:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$105,(%esp)
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
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj222(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj239
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj222(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj240
Lj239:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj222(%edx),%ecx
	leal	4(%ecx),%eax
Lj240:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPGETSOCKOPT$LONGINT$LONGINT$LONGINT$POINTER$PSOCKLEN$$LONGINT
_SOCKETS_FPGETSOCKOPT$LONGINT$LONGINT$LONGINT$POINTER$PSOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj242
Lj242:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$118,(%esp)
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
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj242(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj259
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj242(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj260
Lj259:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj242(%edx),%ecx
	leal	4(%ecx),%eax
Lj260:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FPSOCKETPAIR$LONGINT$LONGINT$LONGINT$PCINT$$LONGINT
_SOCKETS_FPSOCKETPAIR$LONGINT$LONGINT$LONGINT$PCINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj262
Lj262:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$135,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	LFPC_DOSYS4$stub
	movl	%eax,-16(%ebp)
	call	LFPC_SYS_GETERRNO$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%edx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj262(%edx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj277
	movl	-20(%ebp),%esi
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj262(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj278
Lj277:
	movl	-20(%ebp),%edx
	movl	L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr-Lj262(%edx),%ecx
	leal	4(%ecx),%eax
Lj278:
	movl	%ebx,(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_STR2UNIXSOCKADDR$SHORTSTRING$TUNIXSOCKADDR$LONGINT
_SOCKETS_STR2UNIXSOCKADDR$SHORTSTRING$TUNIXSOCKADDR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	2(%eax),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$1,1(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,2(%edx,%eax,1)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	addl	$3,%eax
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_BIND$LONGINT$SHORTSTRING$$BOOLEAN
_SOCKETS_BIND$LONGINT$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-124(%ebp),%ecx
	leal	-119(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SOCKETS_STR2UNIXSOCKADDR$SHORTSTRING$TUNIXSOCKADDR$LONGINT$stub
	leal	-119(%ebp),%edx
	movl	-124(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_FPBIND$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_DOACCEPT$LONGINT$SHORTSTRING$$LONGINT
_SOCKETS_DOACCEPT$LONGINT$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	addl	$3,%eax
	movl	%eax,-128(%ebp)
	leal	-128(%ebp),%ecx
	leal	-122(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_FPACCEPT$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-128(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%edx
	leal	-120(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-128(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_setlength$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_DOCONNECT$LONGINT$SHORTSTRING$$BOOLEAN
_SOCKETS_DOCONNECT$LONGINT$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-124(%ebp),%ecx
	leal	-119(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SOCKETS_STR2UNIXSOCKADDR$SHORTSTRING$TUNIXSOCKADDR$LONGINT$stub
	leal	-119(%ebp),%edx
	movl	-124(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_FPCONNECT$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_ACCEPT$LONGINT$SHORTSTRING$TEXT$TEXT$$BOOLEAN
_SOCKETS_ACCEPT$LONGINT$SHORTSTRING$TEXT$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOACCEPT$LONGINT$SHORTSTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj357
	jmp	Lj358
Lj357:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT$stub
	movb	$1,-13(%ebp)
	jmp	Lj367
Lj358:
	movb	$0,-13(%ebp)
Lj367:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_ACCEPT$LONGINT$SHORTSTRING$file$file$$BOOLEAN
_SOCKETS_ACCEPT$LONGINT$SHORTSTRING$file$file$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOACCEPT$LONGINT$SHORTSTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj378
	jmp	Lj379
Lj378:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SOCKETS_SOCK2FILE$LONGINT$file$file$stub
	movb	$1,-13(%ebp)
	jmp	Lj388
Lj379:
	movb	$0,-13(%ebp)
Lj388:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_CONNECT$LONGINT$SHORTSTRING$TEXT$TEXT$$BOOLEAN
_SOCKETS_CONNECT$LONGINT$SHORTSTRING$TEXT$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOCONNECT$LONGINT$SHORTSTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT$stub
Lj400:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_CONNECT$LONGINT$SHORTSTRING$file$file$$BOOLEAN
_SOCKETS_CONNECT$LONGINT$SHORTSTRING$file$file$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOCONNECT$LONGINT$SHORTSTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj415
	jmp	Lj416
Lj415:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_SOCK2FILE$LONGINT$file$file$stub
Lj416:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_CLOSESOCKET$LONGINT$$LONGINT
_SOCKETS_CLOSESOCKET$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_CLOSE$stub
	testl	%eax,%eax
	je	Lj425
	jmp	Lj426
Lj425:
	movl	$0,-8(%ebp)
	jmp	Lj431
Lj426:
	movl	$-1,-8(%ebp)
Lj431:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_OPENSOCK$TEXT
_SOCKETS_OPENSOCK$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	je	Lj436
	jmp	Lj437
Lj436:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	jmp	Lj440
Lj437:
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj444
	decb	%al
	je	Lj443
	jmp	Lj442
Lj443:
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
	jmp	Lj441
Lj444:
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	jmp	Lj441
Lj442:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj441:
Lj440:
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_IOSOCK$TEXT
_SOCKETS_IOSOCK$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj452
Lj452:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj454
	subl	$55217,%eax
	je	Lj456
	decl	%eax
	je	Lj455
	jmp	Lj454
Lj455:
	.align 2
Lj457:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SOCKETS_FPSEND$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj459
	jmp	Lj470
Lj470:
	call	L_SOCKETS_SOCKETERROR$$LONGINT$stub
	cmpl	$4,%eax
	jne	Lj459
	jmp	Lj457
Lj459:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movw	$101,-10(%ebp)
	jmp	Lj453
Lj456:
	.align 2
Lj475:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SOCKETS_FPRECV$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj477
	jmp	Lj488
Lj488:
	call	L_SOCKETS_SOCKETERROR$$LONGINT$stub
	cmpl	$4,%eax
	jne	Lj477
	jmp	Lj475
Lj477:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movw	$100,-10(%ebp)
	jmp	Lj453
Lj454:
Lj453:
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj493
	jmp	Lj494
Lj493:
	call	L_SOCKETS_SOCKETERROR$$LONGINT$stub
	cmpl	$9,%eax
	jl	Lj496
	subl	$9,%eax
	je	Lj497
	subl	$5,%eax
	je	Lj498
	subl	$8,%eax
	je	Lj499
	jmp	Lj496
Lj497:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj452(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj502
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj503
Lj502:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%edx
	leal	4(%edx),%eax
Lj503:
	movw	$6,(%eax)
	jmp	Lj495
Lj498:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj452(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj506
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj507
Lj506:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%edx
	leal	4(%edx),%eax
Lj507:
	movw	$217,(%eax)
	jmp	Lj495
Lj499:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj452(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj510
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj511
Lj510:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%edx
	leal	4(%edx),%eax
Lj511:
	movw	$218,(%eax)
	jmp	Lj495
Lj496:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj452(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj514
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj515
Lj514:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj452(%ebx),%edx
	leal	4(%edx),%eax
Lj515:
	movw	-10(%ebp),%dx
	movw	%dx,(%eax)
Lj495:
Lj494:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_FLUSHSOCK$TEXT
_SOCKETS_FLUSHSOCK$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj522
	jmp	Lj521
Lj522:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj520
	jmp	Lj521
Lj520:
	movl	-4(%ebp),%eax
	call	L_SOCKETS_IOSOCK$TEXT$stub
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj521:
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_CLOSESOCK$TEXT
_SOCKETS_CLOSESOCK$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT
_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj530
Lj530:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	$46,%dl
	call	L_SYSTEM_ASSIGN$TEXT$CHAR$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movb	$0,44(%eax)
	movl	L_SOCKETS_OPENSOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	movl	L_SOCKETS_IOSOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	L_SOCKETS_FLUSHSOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
	movl	L_SOCKETS_CLOSESOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	movl	$55217,4(%eax)
	movl	L_TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE$non_lazy_ptr-Lj530(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj551
	decl	%eax
	je	Lj552
	decl	%eax
	je	Lj553
	jmp	Lj550
Lj551:
	movl	-8(%ebp),%eax
	movw	$2561,332(%eax)
	jmp	Lj549
Lj552:
	movl	-8(%ebp),%eax
	leal	332(%eax),%eax
	movl	L_$SOCKETS$_Ld1$non_lazy_ptr-Lj530(%ebx),%ecx
	movl	$3,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj549
Lj553:
	movl	-8(%ebp),%eax
	movw	$3329,332(%eax)
	jmp	Lj549
Lj550:
Lj549:
	movl	-12(%ebp),%eax
	movb	$46,%dl
	call	L_SYSTEM_ASSIGN$TEXT$CHAR$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movb	$1,44(%eax)
	movl	L_SOCKETS_OPENSOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	L_SOCKETS_IOSOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-12(%ebp),%edx
	movl	%eax,32(%edx)
	movl	L_SOCKETS_FLUSHSOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-12(%ebp),%edx
	movl	%eax,36(%edx)
	movl	L_SOCKETS_CLOSESOCK$TEXT$non_lazy_ptr-Lj530(%ebx),%eax
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	movl	$55218,4(%eax)
	movl	L_TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE$non_lazy_ptr-Lj530(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj584
	decl	%eax
	je	Lj585
	decl	%eax
	je	Lj586
	jmp	Lj583
Lj584:
	movl	-12(%ebp),%eax
	movw	$2561,332(%eax)
	jmp	Lj582
Lj585:
	movl	-12(%ebp),%eax
	leal	332(%eax),%eax
	movl	L_$SOCKETS$_Ld1$non_lazy_ptr-Lj530(%ebx),%ecx
	movl	$3,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj582
Lj586:
	movl	-12(%ebp),%eax
	movw	$3329,332(%eax)
	jmp	Lj582
Lj583:
Lj582:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_SOCK2FILE$LONGINT$file$file
_SOCKETS_SOCK2FILE$LONGINT$file$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	$46,%dl
	call	L_SYSTEM_ASSIGN$file$CHAR$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	$1,8(%eax)
	movl	-8(%ebp),%eax
	movb	$0,44(%eax)
	movl	-8(%ebp),%eax
	movl	$55217,4(%eax)
	movl	-12(%ebp),%eax
	movb	$46,%dl
	call	L_SYSTEM_ASSIGN$file$CHAR$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	$1,8(%eax)
	movl	-12(%ebp),%eax
	movb	$1,44(%eax)
	movl	-12(%ebp),%eax
	movl	$55218,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_DOACCEPT$LONGINT$SOCKADDR_IN$$LONGINT
_SOCKETS_DOACCEPT$LONGINT$SOCKADDR_IN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$16,-16(%ebp)
	.align 2
Lj627:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_FPACCEPT$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj629
	jmp	Lj638
Lj638:
	call	L_SOCKETS_SOCKETERROR$$LONGINT$stub
	cmpl	$4,%eax
	jne	Lj629
	jmp	Lj627
Lj629:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_DOCONNECT$LONGINT$SOCKADDR_IN$$BOOLEAN
_SOCKETS_DOCONNECT$LONGINT$SOCKADDR_IN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	.align 2
Lj641:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$16,%ecx
	call	L_SOCKETS_FPCONNECT$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj643
	jmp	Lj652
Lj652:
	call	L_SOCKETS_SOCKETERROR$$LONGINT$stub
	cmpl	$4,%eax
	jne	Lj643
	jmp	Lj641
Lj643:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_CONNECT$LONGINT$SOCKADDR_IN$TEXT$TEXT$$BOOLEAN
_SOCKETS_CONNECT$LONGINT$SOCKADDR_IN$TEXT$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOCONNECT$LONGINT$SOCKADDR_IN$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj663
	jmp	Lj664
Lj663:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT$stub
Lj664:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_CONNECT$LONGINT$SOCKADDR_IN$file$file$$BOOLEAN
_SOCKETS_CONNECT$LONGINT$SOCKADDR_IN$file$file$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOCONNECT$LONGINT$SOCKADDR_IN$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj679
	jmp	Lj680
Lj679:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_SOCK2FILE$LONGINT$file$file$stub
Lj680:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_ACCEPT$LONGINT$SOCKADDR_IN$TEXT$TEXT$$BOOLEAN
_SOCKETS_ACCEPT$LONGINT$SOCKADDR_IN$TEXT$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOACCEPT$LONGINT$SOCKADDR_IN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj695
	jmp	Lj696
Lj695:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT$stub
	movb	$1,-13(%ebp)
	jmp	Lj705
Lj696:
	movb	$0,-13(%ebp)
Lj705:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_ACCEPT$LONGINT$SOCKADDR_IN$file$file$$BOOLEAN
_SOCKETS_ACCEPT$LONGINT$SOCKADDR_IN$file$file$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SOCKETS_DOACCEPT$LONGINT$SOCKADDR_IN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj716
	jmp	Lj717
Lj716:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SOCKETS_SOCK2FILE$LONGINT$file$file$stub
	movb	$1,-13(%ebp)
	jmp	Lj726
Lj717:
	movb	$0,-13(%ebp)
Lj726:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_HTONL$LONGINT$$LONGINT
_SOCKETS_HTONL$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movzbl	-1(%ebp),%eax
	movl	%eax,-8(%ebp)
	movzbl	-2(%ebp),%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movzbl	-3(%ebp),%eax
	shll	$16,%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movzbl	-4(%ebp),%eax
	shll	$24,%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_NTOHL$LONGINT$$LONGINT
_SOCKETS_NTOHL$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movzbl	-1(%ebp),%eax
	movl	%eax,-8(%ebp)
	movzbl	-2(%ebp),%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movzbl	-3(%ebp),%eax
	shll	$16,%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movzbl	-4(%ebp),%eax
	shll	$24,%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_HTONS$WORD$$WORD
_SOCKETS_HTONS$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_NTOHS$WORD$$WORD
_SOCKETS_NTOHS$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_NETADDRTOSTR$IN_ADDR$$ANSISTRING
_SOCKETS_NETADDRTOSTR$IN_ADDR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-328(%ebp)
	movl	%esi,-324(%ebp)
	call	Lj766
Lj766:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-320(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj767
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj776:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	-17(%ebp,%eax,1),%eax
	movl	%eax,-60(%ebp)
	movl	$255,(%esp)
	leal	-316(%ebp),%ecx
	movl	-60(%ebp),%eax
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-320(%ebp),%edx
	leal	-316(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-320(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-320(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj800
	jmp	Lj801
Lj800:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	L_$SOCKETS$_Ld2$non_lazy_ptr-Lj766(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj801:
	cmpl	$4,-12(%ebp)
	jl	Lj776
Lj767:
	call	LFPC_POPADDRSTACK$stub
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj768
	call	LFPC_RERAISE$stub
Lj768:
	movl	-328(%ebp),%ebx
	movl	-324(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_HOSTADDRTOSTR$IN_ADDR$$ANSISTRING
_SOCKETS_HOSTADDRTOSTR$IN_ADDR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movzbl	11(%ebp),%eax
	movzbl	10(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movzbl	9(%ebp),%eax
	shll	$16,%eax
	orl	%edx,%eax
	movzbl	8(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_SOCKETS_NETADDRTOSTR$IN_ADDR$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR
_SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj833
	movl	$0,-8(%ebp)
	movl	$1,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj840:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj841
	jmp	Lj842
Lj841:
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj849
	jmp	Lj850
Lj849:
	jmp	Lj833
Lj850:
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-20(%ebp),%ecx
	leal	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	jmp	Lj865
Lj842:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj865:
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_ansistr$stub
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movb	-24(%ebp),%dl
	movb	%dl,-29(%ebp,%eax,1)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj878
	jmp	Lj879
Lj878:
	jmp	Lj833
Lj879:
	cmpl	$4,-16(%ebp)
	jl	Lj840
	movzbl	-25(%ebp),%eax
	movzbl	-26(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movl	%edx,%eax
	movzbl	-27(%ebp),%edx
	shll	$16,%edx
	orl	%eax,%edx
	movl	%edx,%eax
	movzbl	-28(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-8(%ebp)
Lj833:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj834
	call	LFPC_RERAISE$stub
Lj834:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_STRTONETADDR$ANSISTRING$$IN_ADDR
_SOCKETS_STRTONETADDR$ANSISTRING$$IN_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj899
	movl	-4(%ebp),%eax
	call	L_SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR$stub
	movl	%eax,-52(%ebp)
	movzbl	-49(%ebp),%eax
	movzbl	-50(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movl	%edx,%eax
	movzbl	-51(%ebp),%edx
	shll	$16,%edx
	orl	%eax,%edx
	movl	%edx,%eax
	movzbl	-52(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-8(%ebp)
Lj899:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj900
	call	LFPC_RERAISE$stub
Lj900:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR
_SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzbl	11(%ebp),%eax
	movzbl	10(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movzbl	9(%ebp),%eax
	shll	$16,%eax
	orl	%edx,%eax
	movzbl	8(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_NETTOHOST$IN_ADDR$$IN_ADDR
_SOCKETS_NETTOHOST$IN_ADDR$$IN_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzbl	11(%ebp),%eax
	movzbl	10(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movzbl	9(%ebp),%eax
	shll	$16,%eax
	orl	%edx,%eax
	movzbl	8(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_HOSTTONET$LONGINT$$LONGINT
_SOCKETS_HOSTTONET$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movzbl	-1(%ebp),%eax
	movzbl	-2(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movzbl	-3(%ebp),%eax
	shll	$16,%eax
	orl	%edx,%eax
	movzbl	-4(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_NETTOHOST$LONGINT$$LONGINT
_SOCKETS_NETTOHOST$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movzbl	-1(%ebp),%eax
	movzbl	-2(%ebp),%edx
	shll	$8,%edx
	orl	%eax,%edx
	movzbl	-3(%ebp),%eax
	shll	$16,%eax
	orl	%edx,%eax
	movzbl	-4(%ebp),%edx
	shll	$24,%edx
	orl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_SHORTHOSTTONET$WORD$$WORD
_SOCKETS_SHORTHOSTTONET$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_SHORTNETTOHOST$WORD$$WORD
_SOCKETS_SHORTNETTOHOST$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_LCLINTTOHEX$SMALLINT$LONGINT$$ANSISTRING
_SOCKETS_LCLINTTOHEX$SMALLINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj990
Lj990:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$4,%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movw	-4(%ebp),%dx
	andw	$15,%dx
	movswl	%dx,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	L_TC_SOCKETS_DIGITTAB$non_lazy_ptr-Lj990(%ebx),%ecx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,3(%eax)
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movswl	-4(%ebp),%edx
	shrl	$4,%edx
	andl	$15,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	L_TC_SOCKETS_DIGITTAB$non_lazy_ptr-Lj990(%ebx),%ecx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,2(%eax)
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movswl	-4(%ebp),%edx
	shrl	$8,%edx
	andl	$15,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	L_TC_SOCKETS_DIGITTAB$non_lazy_ptr-Lj990(%ebx),%ecx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,1(%eax)
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movswl	-4(%ebp),%edx
	shrl	$12,%edx
	andl	$15,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	L_TC_SOCKETS_DIGITTAB$non_lazy_ptr-Lj990(%ebx),%ecx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_HOSTADDRTOSTR6$IN6_ADDR$$ANSISTRING
_SOCKETS_HOSTADDRTOSTR6$IN6_ADDR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-164(%ebp)
	movl	%esi,-160(%ebp)
	movl	%edi,-156(%ebp)
	call	Lj1012
Lj1012:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-100(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	$0,-152(%ebp)
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj1013
	leal	-48(%ebp),%edi
	movl	L_$SOCKETS$_Ld4$non_lazy_ptr-Lj1012(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	leal	-80(%ebp),%edi
	movl	L_$SOCKETS$_Ld4$non_lazy_ptr-Lj1012(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movb	$0,-81(%ebp)
	movb	$0,-82(%ebp)
	movb	$0,-9(%ebp)
	decb	-9(%ebp)
	.align 2
Lj1026:
	incb	-9(%ebp)
	movzbl	-9(%ebp),%eax
	movzwl	-100(%ebp,%eax,2),%eax
	testl	%eax,%eax
	je	Lj1027
	jmp	Lj1028
Lj1027:
	movzbl	-9(%ebp),%eax
	btsl	%eax,-80(%ebp)
	incb	-82(%ebp)
	jmp	Lj1029
Lj1028:
	movb	-81(%ebp),%al
	cmpb	-82(%ebp),%al
	jb	Lj1030
	jmp	Lj1031
Lj1030:
	movb	-82(%ebp),%al
	movb	%al,-81(%ebp)
	leal	-48(%ebp),%edi
	leal	-80(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movb	$0,-82(%ebp)
	leal	-80(%ebp),%edi
	movl	L_$SOCKETS$_Ld4$non_lazy_ptr-Lj1012(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
Lj1031:
Lj1029:
	cmpb	$7,-9(%ebp)
	jb	Lj1026
	movb	-81(%ebp),%al
	cmpb	-82(%ebp),%al
	jb	Lj1040
	jmp	Lj1041
Lj1040:
	movb	-82(%ebp),%al
	movb	%al,-81(%ebp)
	leal	-48(%ebp),%edi
	leal	-80(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
Lj1041:
	movl	-8(%ebp),%eax
	movl	$39,%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_ansistr_setlength$stub
	movb	$0,-83(%ebp)
	movb	$0,-9(%ebp)
	decb	-9(%ebp)
	.align 2
Lj1058:
	incb	-9(%ebp)
	movzbl	-9(%ebp),%eax
	btl	%eax,-48(%ebp)
	jnc	Lj1059
	jmp	Lj1060
Lj1059:
	cmpb	$0,-83(%ebp)
	jne	Lj1061
	jmp	Lj1062
Lj1061:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1063
	jmp	Lj1064
Lj1063:
	movl	L_$SOCKETS$_Ld5$non_lazy_ptr-Lj1012(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj1067
Lj1064:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$SOCKETS$_Ld7$non_lazy_ptr-Lj1012(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1067:
	movb	$0,-83(%ebp)
Lj1062:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-148(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	movzbl	-9(%ebp),%eax
	movw	-100(%ebp,%eax,2),%ax
	call	L_SOCKETS_SHORTNETTOHOST$WORD$$WORD$stub
	leal	-152(%ebp),%ecx
	movl	$1,%edx
	call	L_SOCKETS_LCLINTTOHEX$SMALLINT$LONGINT$$ANSISTRING$stub
	movl	-152(%ebp),%eax
	movl	%eax,-144(%ebp)
	movl	L_$SOCKETS$_Ld7$non_lazy_ptr-Lj1012(%ebx),%eax
	movl	%eax,-140(%ebp)
	leal	-148(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj1090
Lj1060:
	movb	$1,-83(%ebp)
Lj1090:
	cmpb	$7,-9(%ebp)
	jb	Lj1058
	cmpb	$0,-83(%ebp)
	jne	Lj1093
	jmp	Lj1094
Lj1093:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1095
	jmp	Lj1096
Lj1095:
	movl	L_$SOCKETS$_Ld5$non_lazy_ptr-Lj1012(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj1099
Lj1096:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$SOCKETS$_Ld7$non_lazy_ptr-Lj1012(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1099:
Lj1094:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1106
	jmp	Lj1107
Lj1106:
	movl	L_$SOCKETS$_Ld5$non_lazy_ptr-Lj1012(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj1107:
	testb	$128,-48(%ebp)
	je	Lj1110
	jmp	Lj1111
Lj1110:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1114
	movl	-4(%edx),%edx
Lj1114:
	decl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj1111:
Lj1013:
	call	LFPC_POPADDRSTACK$stub
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1014
	call	LFPC_RERAISE$stub
Lj1014:
	movl	-164(%ebp),%ebx
	movl	-160(%ebp),%esi
	movl	-156(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_STRTOHOSTADDR6$SHORTSTRING$$IN6_ADDR
_SOCKETS_STRTOHOSTADDR6$SHORTSTRING$$IN6_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$824,%esp
	movl	%ebx,-816(%ebp)
	movl	%esi,-812(%ebp)
	movl	%edi,-808(%ebp)
	call	Lj1118
Lj1118:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-546(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-280(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movw	$0,-288(%ebp)
	movw	$-1,-290(%ebp)
	movw	$0,-284(%ebp)
	leal	-546(%ebp),%edx
	movb	$58,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movw	%ax,-282(%ebp)
	jmp	Lj1138
	.align 2
Lj1137:
	leal	-802(%ebp),%eax
	movl	%eax,(%esp)
	movswl	-282(%ebp),%ecx
	decl	%ecx
	leal	-546(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-802(%ebp),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%eax
	movl	L_$SOCKETS$_Ld9$non_lazy_ptr-Lj1118(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	movswl	-282(%ebp),%eax
	movl	%eax,(%esp)
	leal	-546(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	movzbl	-264(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1164
	jmp	Lj1165
Lj1164:
	leal	-4(%ebp),%edx
	leal	-264(%ebp),%eax
	call	Lfpc_val_uint_shortstr$stub
	movw	%ax,-286(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-284(%ebp)
	jmp	Lj1174
Lj1165:
	movw	$0,-286(%ebp)
Lj1174:
	movzwl	-286(%ebp),%eax
	shrl	$8,%eax
	movzwl	-286(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	-288(%ebp),%edx
	movw	%ax,-280(%ebp,%edx,2)
	movw	-284(%ebp),%ax
	testw	%ax,%ax
	jne	Lj1185
	jmp	Lj1186
Lj1185:
	leal	-280(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	jmp	Lj1117
Lj1186:
	movb	-545(%ebp),%al
	cmpb	$58,%al
	je	Lj1193
	jmp	Lj1194
Lj1193:
	movw	-288(%ebp),%ax
	movw	%ax,-290(%ebp)
	movl	$1,(%esp)
	leal	-546(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj1194:
	incw	-288(%ebp)
	leal	-546(%ebp),%edx
	movb	$58,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movw	%ax,-282(%ebp)
	movw	-282(%ebp),%ax
	testw	%ax,%ax
	je	Lj1211
	jmp	Lj1212
Lj1211:
	movzbl	-546(%ebp),%eax
	incl	%eax
	movw	%ax,-282(%ebp)
Lj1212:
Lj1138:
	movw	-282(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj1216
	jmp	Lj1139
Lj1216:
	movzbl	-546(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1215
	jmp	Lj1139
Lj1215:
	movw	-288(%ebp),%ax
	cmpw	$8,%ax
	jl	Lj1137
	jmp	Lj1139
Lj1139:
	movw	-290(%ebp),%ax
	cmpw	$0,%ax
	jge	Lj1217
	jmp	Lj1218
Lj1217:
	movswl	-288(%ebp),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movswl	-290(%ebp),%eax
	addl	%eax,%edx
	incl	%edx
	leal	-280(%ebp,%edx,2),%edx
	movswl	-288(%ebp),%eax
	movswl	-290(%ebp),%ecx
	subl	%ecx,%eax
	decl	%eax
	shll	$1,%eax
	movswl	-290(%ebp),%ecx
	incl	%ecx
	leal	-280(%ebp,%ecx,2),%esi
	movl	%eax,%ecx
	movl	%esi,%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movswl	-288(%ebp),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	shll	$1,%edx
	movswl	-290(%ebp),%eax
	incl	%eax
	leal	-280(%ebp,%eax,2),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj1218:
	movl	-8(%ebp),%edi
	leal	-280(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
Lj1117:
	movl	-816(%ebp),%ebx
	movl	-812(%ebp),%esi
	movl	-808(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_NETADDRTOSTR6$IN6_ADDR$$ANSISTRING
_SOCKETS_NETADDRTOSTR6$IN6_ADDR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%edx
	leal	-24(%ebp),%eax
	call	L_SOCKETS_HOSTADDRTOSTR6$IN6_ADDR$$ANSISTRING$stub
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SOCKETS_STRTONETADDR6$ANSISTRING$$IN6_ADDR
_SOCKETS_STRTONETADDR6$ANSISTRING$$IN6_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1241
	movl	-4(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-304(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_SOCKETS_STRTOHOSTADDR6$SHORTSTRING$$IN6_ADDR$stub
Lj1241:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1242
	call	LFPC_RERAISE$stub
Lj1242:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_SOCKETS_INTERNAL_SOCKETERROR
.data
.zerofill __DATA, __common, _U_SOCKETS_INTERNAL_SOCKETERROR, 8,2



.data
	.align 2
.globl	_THREADVARLIST_SOCKETS
_THREADVARLIST_SOCKETS:
	.long	_U_SOCKETS_INTERNAL_SOCKETERROR
	.long	4,0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_SOCKETS_NOADDRESS
_TC_SOCKETS_NOADDRESS:
	.long	0

.data
	.align 2
.globl	_TC_SOCKETS_NONET
_TC_SOCKETS_NONET:
	.long	0

.data
	.align 2
.globl	_TC_SOCKETS_NOADDRESS6
_TC_SOCKETS_NOADDRESS6:
	.short	0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_SOCKETS_NONET6
_TC_SOCKETS_NONET6:
	.short	0,0,0,0,0,0,0,0

.const
	.align 2
.globl	_$SOCKETS$_Ld1
_$SOCKETS$_Ld1:
	.ascii	"\002\015\012\000"

.const_data
	.align 2
.globl	_$SOCKETS$_Ld3
_$SOCKETS$_Ld3:
	.short	0,1
	.long	0,-1,1
.reference _$SOCKETS$_Ld2
.globl	_$SOCKETS$_Ld2
_$SOCKETS$_Ld2:
.reference _$SOCKETS$_Ld3
	.ascii	".\000"

.data
.globl	_TC_SOCKETS_DIGITTAB
_TC_SOCKETS_DIGITTAB:
	.byte	16
	.ascii	"0123456789ABCDEF"
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                                   "
	.ascii	"                                   "

.const
	.align 3
.globl	_$SOCKETS$_Ld4
_$SOCKETS$_Ld4:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$SOCKETS$_Ld6
_$SOCKETS$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$SOCKETS$_Ld5
.globl	_$SOCKETS$_Ld5
_$SOCKETS$_Ld5:
.reference _$SOCKETS$_Ld6
	.ascii	"::\000"

.const_data
	.align 2
.globl	_$SOCKETS$_Ld8
_$SOCKETS$_Ld8:
	.short	0,1
	.long	0,-1,1
.reference _$SOCKETS$_Ld7
.globl	_$SOCKETS$_Ld7
_$SOCKETS$_Ld7:
.reference _$SOCKETS$_Ld8
	.ascii	":\000"

.const
	.align 2
.globl	_$SOCKETS$_Ld9
_$SOCKETS$_Ld9:
	.ascii	"\001$\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DOSYS3$stub:
.indirect_symbol FPC_DOSYS3
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

LFPC_DOSYS6$stub:
.indirect_symbol FPC_DOSYS6
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

LFPC_DOSYS5$stub:
.indirect_symbol FPC_DOSYS5
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_STR2UNIXSOCKADDR$SHORTSTRING$TUNIXSOCKADDR$LONGINT$stub:
.indirect_symbol _SOCKETS_STR2UNIXSOCKADDR$SHORTSTRING$TUNIXSOCKADDR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPBIND$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPBIND$LONGINT$PSOCKADDR$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPACCEPT$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPACCEPT$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_setlength$stub:
.indirect_symbol fpc_shortstr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPCONNECT$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPCONNECT$LONGINT$PSOCKADDR$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_DOACCEPT$LONGINT$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SOCKETS_DOACCEPT$LONGINT$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT$stub:
.indirect_symbol _SOCKETS_SOCK2TEXT$LONGINT$TEXT$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_SOCK2FILE$LONGINT$file$file$stub:
.indirect_symbol _SOCKETS_SOCK2FILE$LONGINT$file$file
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_DOCONNECT$LONGINT$SHORTSTRING$$BOOLEAN$stub:
.indirect_symbol _SOCKETS_DOCONNECT$LONGINT$SHORTSTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_CLOSE$stub:
.indirect_symbol FPC_SYSC_CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPSEND$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPSEND$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_SOCKETERROR$$LONGINT$stub:
.indirect_symbol _SOCKETS_SOCKETERROR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPRECV$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPRECV$LONGINT$POINTER$LONGWORD$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_IOSOCK$TEXT$stub:
.indirect_symbol _SOCKETS_IOSOCK$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$CHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$CHAR
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

L_SYSTEM_ASSIGN$file$CHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_DOCONNECT$LONGINT$SOCKADDR_IN$$BOOLEAN$stub:
.indirect_symbol _SOCKETS_DOCONNECT$LONGINT$SOCKADDR_IN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_DOACCEPT$LONGINT$SOCKADDR_IN$$LONGINT$stub:
.indirect_symbol _SOCKETS_DOACCEPT$LONGINT$SOCKADDR_IN$$LONGINT
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_NETADDRTOSTR$IN_ADDR$$ANSISTRING$stub:
.indirect_symbol _SOCKETS_NETADDRTOSTR$IN_ADDR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_sint_ansistr$stub:
.indirect_symbol fpc_val_sint_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR$stub:
.indirect_symbol _SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_SHORTNETTOHOST$WORD$$WORD$stub:
.indirect_symbol _SOCKETS_SHORTNETTOHOST$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_LCLINTTOHEX$SMALLINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SOCKETS_LCLINTTOHEX$SMALLINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
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

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_uint_shortstr$stub:
.indirect_symbol fpc_val_uint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_HOSTADDRTOSTR6$IN6_ADDR$$ANSISTRING$stub:
.indirect_symbol _SOCKETS_HOSTADDRTOSTR6$IN6_ADDR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_STRTOHOSTADDR6$SHORTSTRING$$IN6_ADDR$stub:
.indirect_symbol _SOCKETS_STRTOHOSTADDR6$SHORTSTRING$$IN6_ADDR
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
.globl	_INIT_SOCKETS_PIN_ADDR
_INIT_SOCKETS_PIN_ADDR:
	.byte	0
	.ascii	"\010pin_addr"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PIN_ADDR
_RTTI_SOCKETS_PIN_ADDR:
	.byte	0
	.ascii	"\010pin_addr"

.const_data
	.align 2
.globl	_INIT_SOCKETS_IN_ADDR
_INIT_SOCKETS_IN_ADDR:
	.byte	13,7
	.ascii	"in_addr"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF3
_RTTI_SOCKETS_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,4
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_SOCKETS_IN_ADDR
_RTTI_SOCKETS_IN_ADDR:
	.byte	13,7
	.ascii	"in_addr"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SOCKETS_DEF3
	.long	0

.const_data
	.align 2
.globl	_INIT_SOCKETS_PSOCKADDR_IN
_INIT_SOCKETS_PSOCKADDR_IN:
	.byte	0
	.ascii	"\014psockaddr_in"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PSOCKADDR_IN
_RTTI_SOCKETS_PSOCKADDR_IN:
	.byte	0
	.ascii	"\014psockaddr_in"

.const_data
	.align 2
.globl	_INIT_SOCKETS_SOCKADDR_IN
_INIT_SOCKETS_SOCKADDR_IN:
	.byte	13,11
	.ascii	"sockaddr_in"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF7
_RTTI_SOCKETS_DEF7:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF8
_RTTI_SOCKETS_DEF8:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_SOCKETS_SOCKADDR_IN
_RTTI_SOCKETS_SOCKADDR_IN:
	.byte	13,11
	.ascii	"sockaddr_in"
	.long	16,10
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SOCKETS_IN_ADDR
	.long	4
	.long	_RTTI_SOCKETS_DEF7
	.long	8
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SOCKETS_DEF8
	.long	8

.const_data
	.align 2
.globl	_INIT_SOCKETS_PSOCKADDR
_INIT_SOCKETS_PSOCKADDR:
	.byte	0
	.ascii	"\011psockaddr"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PSOCKADDR
_RTTI_SOCKETS_PSOCKADDR:
	.byte	0
	.ascii	"\011psockaddr"

.const_data
	.align 2
.globl	_INIT_SOCKETS_SOCKADDR
_INIT_SOCKETS_SOCKADDR:
	.byte	13,8
	.ascii	"sockaddr"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF12
_RTTI_SOCKETS_DEF12:
	.byte	12
	.ascii	"\000"
	.long	1,14
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF13
_RTTI_SOCKETS_DEF13:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_SOCKETS_SOCKADDR
_RTTI_SOCKETS_SOCKADDR:
	.byte	13,8
	.ascii	"sockaddr"
	.long	16,7
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SOCKETS_DEF12
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SOCKETS_IN_ADDR
	.long	4
	.long	_RTTI_SOCKETS_DEF13
	.long	8

.const_data
	.align 2
.globl	_INIT_SOCKETS_PLINGER
_INIT_SOCKETS_PLINGER:
	.byte	0
	.ascii	"\007plinger"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PLINGER
_RTTI_SOCKETS_PLINGER:
	.byte	0
	.ascii	"\007plinger"

.const_data
	.align 2
.globl	_INIT_SOCKETS_LINGER
_INIT_SOCKETS_LINGER:
	.byte	13,6
	.ascii	"linger"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_LINGER
_RTTI_SOCKETS_LINGER:
	.byte	13,6
	.ascii	"linger"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_SOCKETS_PIN6_ADDR
_INIT_SOCKETS_PIN6_ADDR:
	.byte	0
	.ascii	"\011pin6_addr"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PIN6_ADDR
_RTTI_SOCKETS_PIN6_ADDR:
	.byte	0
	.ascii	"\011pin6_addr"

.const_data
	.align 2
.globl	_INIT_SOCKETS_IN6_ADDR
_INIT_SOCKETS_IN6_ADDR:
	.byte	13,8
	.ascii	"in6_addr"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF19
_RTTI_SOCKETS_DEF19:
	.byte	12
	.ascii	"\000"
	.long	1,16
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF20
_RTTI_SOCKETS_DEF20:
	.byte	12
	.ascii	"\000"
	.long	2,8
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF21
_RTTI_SOCKETS_DEF21:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF22
_RTTI_SOCKETS_DEF22:
	.byte	12
	.ascii	"\000"
	.long	1,16
	.long	_RTTI_SYSTEM_SHORTINT
	.long	16

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF23
_RTTI_SOCKETS_DEF23:
	.byte	12
	.ascii	"\000"
	.long	1,16
	.long	_RTTI_SYSTEM_SHORTINT
	.long	16

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF24
_RTTI_SOCKETS_DEF24:
	.byte	12
	.ascii	"\000"
	.long	2,8
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF25
_RTTI_SOCKETS_DEF25:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_SOCKETS_IN6_ADDR
_RTTI_SOCKETS_IN6_ADDR:
	.byte	13,8
	.ascii	"in6_addr"
	.long	16,7
	.long	_RTTI_SOCKETS_DEF19
	.long	0
	.long	_RTTI_SOCKETS_DEF20
	.long	0
	.long	_RTTI_SOCKETS_DEF21
	.long	0
	.long	_RTTI_SOCKETS_DEF22
	.long	0
	.long	_RTTI_SOCKETS_DEF23
	.long	0
	.long	_RTTI_SOCKETS_DEF24
	.long	0
	.long	_RTTI_SOCKETS_DEF25
	.long	0

.const_data
	.align 2
.globl	_INIT_SOCKETS_PSOCKADDR_IN6
_INIT_SOCKETS_PSOCKADDR_IN6:
	.byte	0
	.ascii	"\015psockaddr_in6"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PSOCKADDR_IN6
_RTTI_SOCKETS_PSOCKADDR_IN6:
	.byte	0
	.ascii	"\015psockaddr_in6"

.const_data
	.align 2
.globl	_INIT_SOCKETS_SOCKADDR_IN6
_INIT_SOCKETS_SOCKADDR_IN6:
	.byte	13,12
	.ascii	"sockaddr_in6"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_SOCKADDR_IN6
_RTTI_SOCKETS_SOCKADDR_IN6:
	.byte	13,12
	.ascii	"sockaddr_in6"
	.long	28,6
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SOCKETS_IN6_ADDR
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24

.const_data
	.align 2
.globl	_INIT_SOCKETS_TSOCKPAIRARRAY
_INIT_SOCKETS_TSOCKPAIRARRAY:
	.byte	12
	.ascii	"\016TSockPairArray"
	.long	4,2
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_SOCKETS_TSOCKPAIRARRAY
_RTTI_SOCKETS_TSOCKPAIRARRAY:
	.byte	12
	.ascii	"\016TSockPairArray"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_SOCKETS_TSOCKARRAY
_INIT_SOCKETS_TSOCKARRAY:
	.byte	12
	.ascii	"\012TSockArray"
	.long	4,2
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_SOCKETS_TSOCKARRAY
_RTTI_SOCKETS_TSOCKARRAY:
	.byte	12
	.ascii	"\012TSockArray"
	.long	4,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_SOCKETS_PSOCKADDR_UN
_INIT_SOCKETS_PSOCKADDR_UN:
	.byte	0
	.ascii	"\014psockaddr_un"

.const_data
	.align 2
.globl	_RTTI_SOCKETS_PSOCKADDR_UN
_RTTI_SOCKETS_PSOCKADDR_UN:
	.byte	0
	.ascii	"\014psockaddr_un"

.const_data
	.align 2
.globl	_INIT_SOCKETS_SOCKADDR_UN
_INIT_SOCKETS_SOCKADDR_UN:
	.byte	13,11
	.ascii	"sockaddr_un"
	.long	110,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF32
_RTTI_SOCKETS_DEF32:
	.byte	12
	.ascii	"\000"
	.long	1,108
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_SOCKETS_SOCKADDR_UN
_RTTI_SOCKETS_SOCKADDR_UN:
	.byte	13,11
	.ascii	"sockaddr_un"
	.long	110,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SOCKETS_DEF32
	.long	2

.const_data
	.align 2
.globl	_INIT_SOCKETS_DEF194
_INIT_SOCKETS_DEF194:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SOCKETS_TUNIXSOCKADDR
_INIT_SOCKETS_TUNIXSOCKADDR:
	.byte	13,13
	.ascii	"TUnixSockAddr"
	.long	110,0

.const_data
	.align 2
.globl	_RTTI_SOCKETS_DEF75
_RTTI_SOCKETS_DEF75:
	.byte	12
	.ascii	"\000"
	.long	1,108
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_SOCKETS_TUNIXSOCKADDR
_RTTI_SOCKETS_TUNIXSOCKADDR:
	.byte	13,13
	.ascii	"TUnixSockAddr"
	.long	110,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SOCKETS_DEF75
	.long	2
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
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SOCKETS_INTERNAL_SOCKETERROR$non_lazy_ptr:
.indirect_symbol _U_SOCKETS_INTERNAL_SOCKETERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_INOUTRES$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_INOUTRES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_SOCKETS_OPENSOCK$TEXT$non_lazy_ptr:
.indirect_symbol _SOCKETS_OPENSOCK$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_SOCKETS_IOSOCK$TEXT$non_lazy_ptr:
.indirect_symbol _SOCKETS_IOSOCK$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_SOCKETS_FLUSHSOCK$TEXT$non_lazy_ptr:
.indirect_symbol _SOCKETS_FLUSHSOCK$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_SOCKETS_CLOSESOCK$TEXT$non_lazy_ptr:
.indirect_symbol _SOCKETS_CLOSESOCK$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SOCKETS$_Ld1$non_lazy_ptr:
.indirect_symbol _$SOCKETS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SOCKETS$_Ld2$non_lazy_ptr:
.indirect_symbol _$SOCKETS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SOCKETS_DIGITTAB$non_lazy_ptr:
.indirect_symbol _TC_SOCKETS_DIGITTAB
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SOCKETS$_Ld4$non_lazy_ptr:
.indirect_symbol _$SOCKETS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SOCKETS$_Ld5$non_lazy_ptr:
.indirect_symbol _$SOCKETS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SOCKETS$_Ld7$non_lazy_ptr:
.indirect_symbol _$SOCKETS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SOCKETS$_Ld9$non_lazy_ptr:
.indirect_symbol _$SOCKETS$_Ld9
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

