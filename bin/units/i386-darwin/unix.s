# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_UNIX_STATFS$ANSISTRING$TSTATFS$$LONGINT
_UNIX_STATFS$ANSISTRING$TSTATFS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj4
Lj4:
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
	jne	Lj5
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj12
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
Lj12:
	movl	-8(%ebp),%edx
	call	L_UNIX_STATFS$PCHAR$TSTATFS$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPFSTATFS$LONGINT$PSTATFS$$LONGINT
_UNIX_FPFSTATFS$LONGINT$PSTATFS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$158,(%esp)
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
.globl	_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT
_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$157,(%esp)
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
.globl	_UNIX_FPFSYNC$LONGINT$$LONGINT
_UNIX_FPFSYNC$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$95,(%esp)
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
.globl	_UNIX_FPFLOCK$LONGINT$LONGINT$$LONGINT
_UNIX_FPFLOCK$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$131,(%esp)
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
.globl	_UNIX_MUNMAP$POINTER$LONGWORD$$LONGINT
_UNIX_MUNMAP$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$73,(%esp)
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
.globl	_UNIX_PCLOSE$file$$LONGINT
_UNIX_PCLOSE$file$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_CLOSE$stub
	movl	-4(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%ecx
	call	LFPC_SYSC_WAITPID$stub
	movl	-16(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_PCLOSE$TEXT$$LONGINT
_UNIX_PCLOSE$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_CLOSE$stub
	movl	-4(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%ecx
	call	LFPC_SYSC_WAITPID$stub
	movl	-16(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT
_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT:
.reference FPC_SYSC_ASSIGNPIPE
.globl	FPC_SYSC_ASSIGNPIPE
FPC_SYSC_ASSIGNPIPE:
.reference _UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-20(%ebp),%eax
	call	L_BASEUNIX_FPPIPE$TFILDES$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_WAITPROCESS$LONGINT$$LONGINT
_UNIX_WAITPROCESS$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$32512,-16(%ebp)
	.align 2
Lj105:
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	LFPC_SYSC_WAITPID$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj118
	jmp	Lj117
Lj118:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	je	Lj116
	jmp	Lj117
Lj116:
	movl	$0,-12(%ebp)
Lj117:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj107
	jmp	Lj105
Lj107:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj121
	jmp	Lj123
Lj123:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj121
	jmp	Lj122
Lj121:
	movl	$-1,-8(%ebp)
	jmp	Lj126
Lj122:
	movl	-16(%ebp),%eax
	call	L_BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj127
	jmp	Lj128
Lj127:
	movl	-16(%ebp),%eax
	call	L_BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj135
Lj128:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj136
	jmp	Lj137
Lj136:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	jmp	Lj140
Lj137:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj140:
Lj135:
Lj126:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT
_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj144
Lj144:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj145
	cmpb	$0,8(%ebp)
	jne	Lj150
	jmp	Lj149
Lj150:
	movl	-4(%ebp),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj148
	jmp	Lj149
Lj148:
	movl	L_$UNIX$_Ld1$non_lazy_ptr-Lj144(%ebx),%eax
	call	L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub
	leal	-24(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj161
	jmp	Lj162
Lj161:
	movl	L_$UNIX$_Ld2$non_lazy_ptr-Lj144(%ebx),%esi
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-24(%ebp)
Lj162:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_UNIX_FSEARCH$ANSISTRING$ANSISTRING$TFSEARCHOPTION$$ANSISTRING$stub
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj175
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj144(%ebx),%edx
	movl	%edx,%eax
Lj175:
	movl	%eax,(%ecx)
	jmp	Lj176
Lj149:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj176:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj185
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj144(%ebx),%edx
	movl	%edx,%eax
Lj185:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj145:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj146
	call	LFPC_RERAISE$stub
Lj146:
	movl	-16(%ebp),%eax
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT
_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj203
Lj203:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj204
	jmp	Lj205
Lj204:
	movl	$2,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-16(%ebp)
	jmp	Lj202
Lj205:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_UNIXUTIL_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj218
	jmp	Lj219
Lj218:
	leal	-20(%ebp),%eax
	movl	$8,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj224
	jmp	Lj225
Lj224:
	movl	$2,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-16(%ebp)
	jmp	Lj202
Lj225:
	movl	-20(%ebp),%eax
	movl	$0,4(%eax)
Lj219:
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj234
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj203(%ebx),%edx
	movl	%edx,%eax
Lj234:
	movl	%eax,(%ecx)
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj202:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECLE$ANSISTRING$array_of_ANSISTRING$PPCHAR$$LONGINT
_UNIX_FPEXECLE$ANSISTRING$array_of_ANSISTRING$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT
_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj262
Lj262:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,(%esp)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj262(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECLP$ANSISTRING$array_of_ANSISTRING$$LONGINT
_UNIX_FPEXECLP$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj276
Lj276:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$1,(%esp)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj276(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECLPE$ANSISTRING$array_of_ANSISTRING$PPCHAR$$LONGINT
_UNIX_FPEXECLPE$ANSISTRING$array_of_ANSISTRING$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT
_UNIX_FPEXECV$ANSISTRING$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj304
Lj304:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,(%esp)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj304(%ebx),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECVP$ANSISTRING$PPCHAR$$LONGINT
_UNIX_FPEXECVP$ANSISTRING$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj316
Lj316:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$1,(%esp)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj316(%ebx),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPEXECVPE$ANSISTRING$PPCHAR$PPCHAR$$LONGINT
_UNIX_FPEXECVPE$ANSISTRING$PPCHAR$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$1,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_SHELL$SHORTSTRING$$LONGINT
_UNIX_SHELL$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj340
Lj340:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj341
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj346
	jmp	Lj347
Lj346:
	movl	L_$UNIX$_Ld4$non_lazy_ptr-Lj340(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-60(%ebp),%edx
	movl	$1,%ecx
	movl	L_$UNIX$_Ld6$non_lazy_ptr-Lj340(%ebx),%eax
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj360
Lj347:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj361
	jmp	Lj362
Lj361:
	movl	-12(%ebp),%eax
	call	L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj367
Lj362:
	movl	$-1,-8(%ebp)
Lj367:
Lj360:
Lj341:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj342
	call	LFPC_RERAISE$stub
Lj342:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_SHELL$ANSISTRING$$LONGINT
_UNIX_SHELL$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj371
Lj371:
	popl	%ebx
	movl	%eax,-4(%ebp)
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj374
	jmp	Lj375
Lj374:
	movl	L_$UNIX$_Ld4$non_lazy_ptr-Lj371(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%edx
	movl	$1,%ecx
	movl	L_$UNIX$_Ld6$non_lazy_ptr-Lj371(%ebx),%eax
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj384
Lj375:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj385
	jmp	Lj386
Lj385:
	movl	-12(%ebp),%eax
	call	L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj391
Lj386:
	movl	$-1,-8(%ebp)
Lj391:
Lj384:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPSYSTEM$SHORTSTRING$$LONGINT
_UNIX_FPSYSTEM$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	call	Lj395
Lj395:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-116(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj396
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj399
	jmp	Lj400
Lj399:
	movl	$1,-8(%ebp)
	jmp	Lj396
Lj400:
	movl	$1,-32(%ebp)
	leal	-28(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	movl	$0,-24(%ebp)
	leal	-44(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	$2,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-56(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	$3,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-60(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	leal	-60(%ebp),%eax
	movl	$20,%edx
	call	L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub
	leal	-64(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj435
	jmp	Lj436
Lj435:
	leal	-44(%ebp),%edx
	movl	$0,%ecx
	movl	$2,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-56(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
	movl	L_$UNIX$_Ld4$non_lazy_ptr-Lj395(%ebx),%eax
	movl	%eax,-112(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-116(%ebp),%eax
	movl	%eax,-108(%ebp)
	leal	-112(%ebp),%edx
	movl	$1,%ecx
	movl	L_$UNIX$_Ld6$non_lazy_ptr-Lj395(%ebx),%eax
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj467
Lj436:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj468
	jmp	Lj469
Lj468:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj472:
	leal	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,%ecx
	call	LFPC_SYSC_WAITPID$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj483
	jmp	Lj472
Lj483:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj474
	jmp	Lj472
Lj474:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj484
	jmp	Lj485
Lj484:
	movl	$-1,-8(%ebp)
	jmp	Lj488
Lj485:
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj488:
	jmp	Lj491
Lj469:
	movl	$-1,-8(%ebp)
Lj491:
Lj467:
	leal	-44(%ebp),%edx
	movl	$0,%ecx
	movl	$2,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-56(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
Lj396:
	call	LFPC_POPADDRSTACK$stub
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj397
	call	LFPC_RERAISE$stub
Lj397:
	movl	-8(%ebp),%eax
	movl	-120(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPSYSTEM$ANSISTRING$$LONGINT
_UNIX_FPSYSTEM$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj513
Lj513:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj514
	jmp	Lj515
Lj514:
	movl	$1,-8(%ebp)
	jmp	Lj512
Lj515:
	movl	$1,-32(%ebp)
	leal	-28(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	movl	$0,-24(%ebp)
	leal	-44(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	$2,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-56(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	$3,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-60(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	leal	-60(%ebp),%eax
	movl	$20,%edx
	call	L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub
	leal	-64(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj550
	jmp	Lj551
Lj550:
	leal	-44(%ebp),%edx
	movl	$0,%ecx
	movl	$2,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-56(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
	movl	L_$UNIX$_Ld4$non_lazy_ptr-Lj513(%ebx),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-72(%ebp),%edx
	movl	$1,%ecx
	movl	L_$UNIX$_Ld6$non_lazy_ptr-Lj513(%ebx),%eax
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj578
Lj551:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj579
	jmp	Lj580
Lj579:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj583:
	leal	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$0,%ecx
	call	LFPC_SYSC_WAITPID$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj594
	jmp	Lj583
Lj594:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj585
	jmp	Lj583
Lj585:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj595
	jmp	Lj596
Lj595:
	movl	$-1,-8(%ebp)
	jmp	Lj599
Lj596:
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj599:
	jmp	Lj602
Lj580:
	movl	$-1,-8(%ebp)
Lj602:
Lj578:
	leal	-44(%ebp),%edx
	movl	$0,%ecx
	movl	$2,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-56(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGACTION$stub
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$3,%eax
	call	LFPC_SYSC_SIGPROCMASK$stub
Lj512:
	movl	-8(%ebp),%eax
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_WIFSTOPPED$SMALLINT$$BOOLEAN
_UNIX_WIFSTOPPED$SMALLINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$255,%ax
	cmpw	$127,%ax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_UNIX_W_EXITCODE$SMALLINT$SMALLINT$$SMALLINT
_UNIX_W_EXITCODE$SMALLINT$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movswl	-4(%ebp),%eax
	shll	$8,%eax
	movswl	-8(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_UNIX_W_STOPCODE$SMALLINT$$SMALLINT
_UNIX_W_STOPCODE$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movswl	-4(%ebp),%eax
	shll	$8,%eax
	orl	$127,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_UNIX_FIND_TRANSITION$LONGINT$$PTTINFO
_UNIX_FIND_TRANSITION$LONGINT$$PTTINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj636
Lj636:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj637
	jmp	Lj639
Lj639:
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj637
	jmp	Lj638
Lj637:
	movl	$0,-12(%ebp)
	jmp	Lj643
	.align 2
Lj642:
	incl	-12(%ebp)
Lj643:
	movl	-12(%ebp),%eax
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj636(%edx),%ecx
	cmpl	(%ecx),%eax
	jl	Lj645
	jmp	Lj644
Lj645:
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	cmpb	$0,4(%ecx,%eax,8)
	jne	Lj642
	jmp	Lj644
Lj644:
	movl	-12(%ebp),%eax
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj636(%edx),%ecx
	cmpl	(%ecx),%eax
	je	Lj646
	jmp	Lj647
Lj646:
	movl	$0,-12(%ebp)
Lj647:
	jmp	Lj650
Lj638:
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj652
	decl	-12(%ebp)
	.align 2
Lj653:
	incl	-12(%ebp)
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj654
	jmp	Lj655
Lj654:
	jmp	Lj652
Lj655:
	cmpl	-12(%ebp),%ebx
	jg	Lj653
Lj652:
	movl	L_U_UNIX_TYPE_IDXS$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movzbl	(%ecx,%eax,1),%eax
	movl	%eax,-12(%ebp)
Lj650:
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj636(%edx),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%ecx
	leal	(%eax,%ecx,8),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_GETLOCALTIMEZONE$LONGINT$LONGINT$LONGINT
_UNIX_GETLOCALTIMEZONE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj661
Lj661:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_U_UNIX_TZDAYLIGHT$non_lazy_ptr-Lj661(%ebx),%eax
	movb	$0,(%eax)
	movl	L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_UNIX_TZNAME$non_lazy_ptr-Lj661(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_UNIX_TZNAME$non_lazy_ptr-Lj661(%ebx),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	L_UNIX_FIND_TRANSITION$LONGINT$$PTTINFO$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj679
	jmp	Lj678
Lj678:
	jmp	Lj660
Lj679:
	movl	-16(%ebp),%eax
	movb	4(%eax),%dl
	movl	L_U_UNIX_TZDAYLIGHT$non_lazy_ptr-Lj661(%ebx),%eax
	movb	%dl,(%eax)
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	%edx,(%eax)
	movl	$0,-20(%ebp)
	jmp	Lj687
	.align 2
Lj686:
	movl	L_U_UNIX_ZONE_NAMES$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%ecx
	movl	-20(%ebp),%eax
	movzbl	5(%ecx,%eax,8),%eax
	leal	(%edx,%eax,1),%ecx
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	movzbl	4(%eax,%edx,8),%edx
	movl	L_U_UNIX_TZNAME$non_lazy_ptr-Lj661(%ebx),%eax
	movl	%ecx,(%eax,%edx,4)
	incl	-20(%ebp)
Lj687:
	movl	-20(%ebp),%eax
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj661(%ebx),%edx
	cmpl	(%edx),%eax
	jl	Lj686
	jmp	Lj688
Lj688:
	movl	L_U_UNIX_ZONE_NAMES$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movzbl	5(%eax),%eax
	leal	(%edx,%eax,1),%ecx
	movl	-16(%ebp),%eax
	movzbl	4(%eax),%edx
	movl	L_U_UNIX_TZNAME$non_lazy_ptr-Lj661(%ebx),%eax
	movl	%ecx,(%eax,%edx,4)
	movl	L_U_UNIX_NUM_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj695:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj698
	jmp	Lj699
Lj698:
	jmp	Lj660
Lj699:
	decl	-20(%ebp)
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj697
	jmp	Lj695
Lj697:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%edx,%eax,8),%eax
	movl	%eax,(%ecx)
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	je	Lj704
	jmp	Lj703
Lj704:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj706
	jmp	Lj705
Lj706:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	cmpl	$0,%eax
	jg	Lj702
	jmp	Lj705
Lj705:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%ecx
	movl	-20(%ebp),%eax
	decl	%eax
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%edx
	movl	(%edx),%edx
	movl	-20(%ebp),%esi
	movl	4(%ecx,%eax,8),%eax
	cmpl	4(%edx,%esi,8),%eax
	jl	Lj702
	jmp	Lj703
Lj702:
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj710
	.align 2
Lj709:
	movl	-12(%ebp),%eax
	incl	(%eax)
	decl	-20(%ebp)
Lj710:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj713
	jmp	Lj711
Lj713:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,8),%ecx
	incl	%ecx
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	cmpl	(%edx,%eax,8),%ecx
	je	Lj712
	jmp	Lj711
Lj712:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	decl	%eax
	movl	4(%edx,%eax,8),%ecx
	incl	%ecx
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj661(%ebx),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	cmpl	4(%eax,%edx,8),%ecx
	je	Lj709
	jmp	Lj711
Lj711:
Lj703:
Lj660:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_UNIX_GETLOCALTIMEZONE$LONGINT
_UNIX_GETLOCALTIMEZONE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_GETLOCALTIMEZONE$LONGINT$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_UNIX_READTIMEZONEFILE$SHORTSTRING
_UNIX_READTIMEZONEFILE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2904,%esp
	movl	%ebx,-2888(%ebp)
	movl	%esi,-2884(%ebp)
	call	Lj723
Lj723:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-2624(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movzbl	-2624(%ebp),%eax
	testl	%eax,%eax
	je	Lj732
	jmp	Lj733
Lj732:
	leal	-2624(%ebp),%eax
	movl	L_$UNIX$_Ld8$non_lazy_ptr-Lj723(%esi),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj733:
	movb	-2623(%ebp),%al
	cmpb	$47,%al
	jne	Lj740
	jmp	Lj741
Lj740:
	movl	L_$UNIX$_Ld9$non_lazy_ptr-Lj723(%esi),%eax
	call	L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub
	movl	%eax,%ecx
	leal	-2880(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-2880(%ebp),%ecx
	leal	-2316(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movzbl	-2316(%ebp),%eax
	testl	%eax,%eax
	je	Lj756
	jmp	Lj757
Lj756:
	leal	-2316(%ebp),%eax
	movl	L_$UNIX$_Ld10$non_lazy_ptr-Lj723(%esi),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj757:
	movzbl	-2316(%ebp),%eax
	movb	-2316(%ebp,%eax,1),%al
	cmpb	$47,%al
	jne	Lj764
	jmp	Lj765
Lj764:
	movl	L_$UNIX$_Ld11$non_lazy_ptr-Lj723(%esi),%eax
	movl	%eax,(%esp)
	leal	-2316(%ebp),%ecx
	leal	-2316(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj765:
	leal	-2624(%ebp),%eax
	movl	%eax,(%esp)
	leal	-2316(%ebp),%ecx
	leal	-2624(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj741:
	leal	-2624(%ebp),%eax
	movl	$0,%edx
	call	L_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-2060(%ebp)
	movl	-2060(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj788
	jmp	Lj789
Lj788:
	jmp	Lj722
Lj789:
	leal	-5(%ebp),%eax
	incl	%eax
	movl	%eax,-2056(%ebp)
	leal	-2360(%ebp),%edx
	movl	%ebp,%eax
	movw	$44,%cx
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movswl	%ax,%eax
	movl	%eax,-2364(%ebp)
	movl	-2364(%ebp),%eax
	cmpl	$44,%eax
	jne	Lj800
	jmp	Lj801
Lj800:
	jmp	Lj722
Lj801:
	leal	-2328(%ebp),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	leal	-2324(%ebp),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	leal	-2320(%ebp),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	leal	-2332(%ebp),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	leal	-2336(%ebp),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	leal	-2340(%ebp),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	movl	-2328(%ebp),%edx
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	%edx,(%eax)
	movl	-2324(%ebp),%edx
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	%edx,(%eax)
	movl	-2320(%ebp),%eax
	movl	%eax,-2368(%ebp)
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	shll	$2,%edx
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	L_U_UNIX_TYPE_IDXS$non_lazy_ptr-Lj723(%esi),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	shll	$3,%edx
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-2368(%ebp),%edx
	movl	L_U_UNIX_ZONE_NAMES$non_lazy_ptr-Lj723(%esi),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	L_U_UNIX_NUM_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	shll	$3,%edx
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%ecx
	shll	$2,%ecx
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_TYPE_IDXS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movw	(%eax),%cx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-2364(%ebp)
	cmpl	-2364(%ebp),%ebx
	jl	Lj865
	decl	-2364(%ebp)
	.align 2
Lj866:
	incl	-2364(%ebp)
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	-2364(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	cmpl	-2364(%ebp),%ebx
	jg	Lj866
Lj865:
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-2364(%ebp)
	cmpl	-2364(%ebp),%ebx
	jl	Lj872
	decl	-2364(%ebp)
	.align 2
Lj873:
	incl	-2364(%ebp)
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	-2364(%ebp),%eax
	leal	(%edx,%eax,8),%edx
	movl	%ebp,%eax
	movw	$4,%cx
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	-2364(%ebp),%eax
	leal	4(%edx,%eax,8),%edx
	movl	%ebp,%eax
	movw	$1,%cx
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	movl	-2364(%ebp),%edx
	leal	5(%eax,%edx,8),%edx
	movl	%ebp,%eax
	movw	$1,%cx
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	-2364(%ebp),%eax
	leal	(%edx,%eax,8),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	movl	-2364(%ebp),%edx
	movb	$0,6(%eax,%edx,8)
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	movl	-2364(%ebp),%edx
	movb	$0,7(%eax,%edx,8)
	cmpl	-2364(%ebp),%ebx
	jg	Lj873
Lj872:
	movl	L_U_UNIX_ZONE_NAMES$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movw	-2368(%ebp),%cx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_NUM_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-2364(%ebp)
	cmpl	-2364(%ebp),%ebx
	jl	Lj907
	decl	-2364(%ebp)
	.align 2
Lj908:
	incl	-2364(%ebp)
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	movl	-2364(%ebp),%edx
	leal	(%eax,%edx,8),%edx
	movl	%ebp,%eax
	movw	$4,%cx
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	movl	-2364(%ebp),%edx
	leal	4(%eax,%edx,8),%edx
	movl	%ebp,%eax
	movw	$4,%cx
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%edx
	movl	-2364(%ebp),%eax
	leal	(%edx,%eax,8),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj723(%esi),%eax
	movl	(%eax),%eax
	movl	-2364(%ebp),%edx
	leal	4(%eax,%edx,8),%edx
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub
	cmpl	-2364(%ebp),%ebx
	jg	Lj908
Lj907:
	movl	-2336(%ebp),%ebx
	decl	%ebx
	movl	$0,-2364(%ebp)
	cmpl	-2364(%ebp),%ebx
	jl	Lj930
	decl	-2364(%ebp)
	.align 2
Lj931:
	incl	-2364(%ebp)
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUFBYTE$$BYTE$stub
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%edx
	movl	(%edx),%edx
	movl	-2364(%ebp),%ecx
	movb	%al,6(%edx,%ecx,8)
	cmpl	-2364(%ebp),%ebx
	jg	Lj931
Lj930:
	movl	-2340(%ebp),%ebx
	decl	%ebx
	movl	$0,-2364(%ebp)
	cmpl	-2364(%ebp),%ebx
	jl	Lj939
	decl	-2364(%ebp)
	.align 2
Lj940:
	incl	-2364(%ebp)
	movl	%ebp,%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUFBYTE$$BYTE$stub
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj723(%esi),%edx
	movl	(%edx),%edx
	movl	-2364(%ebp),%ecx
	movb	%al,7(%edx,%ecx,8)
	cmpl	-2364(%ebp),%ebx
	jg	Lj940
Lj939:
	movl	-2060(%ebp),%eax
	call	LFPC_SYSC_CLOSE$stub
Lj722:
	movl	-2888(%ebp),%ebx
	movl	-2884(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT
_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movw	$0,-14(%ebp)
	.align 2
Lj951:
	movl	-12(%ebp),%eax
	leal	-5(%eax),%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movl	-2056(%edx),%edx
	subl	%edx,%eax
	movw	%ax,-16(%ebp)
	movw	-16(%ebp),%ax
	cmpw	-8(%ebp),%ax
	jg	Lj956
	jmp	Lj957
Lj956:
	movw	-8(%ebp),%ax
	movw	%ax,-16(%ebp)
Lj957:
	movw	-16(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj960
	jmp	Lj961
Lj960:
	movl	-12(%ebp),%eax
	movl	-2056(%eax),%eax
	movswl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movswl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%eax,-2056(%edx)
	movw	-16(%ebp),%ax
	subw	%ax,-8(%ebp)
	movw	-16(%ebp),%ax
	addw	%ax,-14(%ebp)
Lj961:
	movw	-8(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj968
	jmp	Lj969
Lj968:
	movl	-12(%ebp),%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READFILEBUF$stub
	jmp	Lj972
Lj969:
	jmp	Lj953
Lj972:
	jmp	Lj951
Lj953:
	movw	-14(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUFBYTE$$BYTE
_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUFBYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	-5(%eax),%eax
	movl	-4(%ebp),%edx
	cmpl	-2056(%edx),%eax
	jb	Lj973
	jmp	Lj974
Lj973:
	movl	-4(%ebp),%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING_READFILEBUF$stub
Lj974:
	movl	-4(%ebp),%eax
	movl	-2056(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	movl	-4(%ebp),%eax
	incl	-2056(%eax)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_UNIX_READTIMEZONEFILE$SHORTSTRING_READFILEBUF
_UNIX_READTIMEZONEFILE$SHORTSTRING_READFILEBUF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	-2052(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,-2056(%eax)
	movl	-4(%ebp),%eax
	leal	-2052(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-2060(%eax),%eax
	movl	$2048,%ecx
	call	L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT
_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj989
	jmp	Lj990
Lj989:
	movl	$-1,-12(%ebp)
	jmp	Lj993
Lj990:
	movl	$0,-12(%ebp)
Lj993:
	movl	-12(%ebp),%eax
	shll	$8,%eax
	movl	-16(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$8,%eax
	movl	-16(%ebp),%edx
	movzbl	1(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$8,%eax
	movl	-16(%ebp),%edx
	movzbl	2(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	shll	$8,%eax
	movl	-16(%ebp),%edx
	movzbl	3(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_UNIX_GETTIMEZONEFILE$$SHORTSTRING
_UNIX_GETTIMEZONEFILE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-368(%ebp)
	call	Lj1007
Lj1007:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	$0,%edx
	movl	L_$UNIX$_Ld13$non_lazy_ptr-Lj1007(%ebx),%eax
	call	L_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1016
	jmp	Lj1017
Lj1016:
	leal	-267(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$255,%ecx
	call	L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movb	-12(%ebp),%al
	movb	%al,-268(%ebp)
	leal	-268(%ebp),%edx
	movb	$10,%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1034
	jmp	Lj1035
Lj1034:
	movl	-12(%ebp),%eax
	decl	%eax
	movb	%al,-268(%ebp)
Lj1035:
	movl	-8(%ebp),%eax
	call	LFPC_SYSC_CLOSE$stub
	leal	-268(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj1046
Lj1017:
	leal	-364(%ebp),%edx
	movl	L_$UNIX$_Ld14$non_lazy_ptr-Lj1007(%ebx),%eax
	call	L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub
	cmpl	$0,%eax
	jge	Lj1047
	jmp	Lj1048
Lj1047:
	movl	-4(%ebp),%eax
	movl	L_$UNIX$_Ld14$non_lazy_ptr-Lj1007(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj1059
Lj1048:
	leal	-364(%ebp),%edx
	movl	L_$UNIX$_Ld15$non_lazy_ptr-Lj1007(%ebx),%eax
	call	L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub
	cmpl	$0,%eax
	jge	Lj1060
	jmp	Lj1061
Lj1060:
	movl	-4(%ebp),%eax
	movl	L_$UNIX$_Ld15$non_lazy_ptr-Lj1007(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj1061:
Lj1059:
Lj1046:
	movl	-368(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_INITLOCALTIME
_UNIX_INITLOCALTIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	leal	-256(%ebp),%eax
	call	L_UNIX_GETTIMEZONEFILE$$SHORTSTRING$stub
	leal	-256(%ebp),%eax
	call	L_UNIX_READTIMEZONEFILE$SHORTSTRING$stub
	leal	-4(%ebp),%eax
	call	LFPC_SYSC_TIME$stub
	call	L_UNIX_GETLOCALTIMEZONE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_UNIX_DONELOCALTIME
_UNIX_DONELOCALTIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1085
Lj1085:
	popl	%ebx
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj1085(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1086
	jmp	Lj1087
Lj1086:
	movl	L_U_UNIX_TRANSITIONS$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1087:
	movl	L_U_UNIX_TYPE_IDXS$non_lazy_ptr-Lj1085(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1090
	jmp	Lj1091
Lj1090:
	movl	L_U_UNIX_TYPE_IDXS$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1091:
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj1085(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1094
	jmp	Lj1095
Lj1094:
	movl	L_U_UNIX_TYPES$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1095:
	movl	L_U_UNIX_ZONE_NAMES$non_lazy_ptr-Lj1085(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1098
	jmp	Lj1099
Lj1098:
	movl	L_U_UNIX_ZONE_NAMES$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1099:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj1085(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj1102
	jmp	Lj1103
Lj1102:
	movl	L_U_UNIX_LEAPS$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1103:
	movl	L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_UNIX_NUM_LEAPS$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_UNIX_NUM_TYPES$non_lazy_ptr-Lj1085(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_REREADLOCALTIME
_UNIX_REREADLOCALTIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_UNIX_DONELOCALTIME$stub
	call	L_UNIX_INITLOCALTIME$stub
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPFLOCK$TEXT$LONGINT$$LONGINT
_UNIX_FPFLOCK$TEXT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_UNIX_FPFLOCK$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_FPFLOCK$file$LONGINT$$LONGINT
_UNIX_FPFLOCK$file$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_UNIX_FPFLOCK$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_SELECTTEXT$TEXT$PTIMEVAL$$LONGINT
_UNIX_SELECTTEXT$TEXT$PTIMEVAL$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj1132
	jmp	Lj1133
Lj1132:
	movl	$9,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-12(%ebp)
	jmp	Lj1130
Lj1133:
	leal	-140(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	leal	-140(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj1144
	jmp	Lj1145
Lj1144:
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
	jmp	Lj1158
Lj1145:
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
Lj1158:
Lj1130:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_SELECTTEXT$TEXT$LONGINT$$LONGINT
_UNIX_SELECTTEXT$TEXT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1173
	jmp	Lj1174
Lj1173:
	movl	$0,-16(%ebp)
	jmp	Lj1177
Lj1174:
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
Lj1177:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_SELECTTEXT$TEXT$PTIMEVAL$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_SEEKDIR$PDIR$LONGINT
_UNIX_SEEKDIR$PDIR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1192
	jmp	Lj1193
Lj1192:
	movl	$9,%eax
	call	LFPC_SYS_SETERRNO$stub
	jmp	Lj1190
Lj1193:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj1190:
	leave
	ret

.text
	.align 4
.globl	_UNIX_TELLDIR$PDIR$$INT64
_UNIX_TELLDIR$PDIR$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1202
	jmp	Lj1203
Lj1202:
	movl	$9,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
	jmp	Lj1200
Lj1203:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	LFPC_SYSC_LSEEK$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
Lj1200:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_OPENPIPE$TEXT
_UNIX_OPENPIPE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj1219
	subl	$55217,%eax
	je	Lj1221
	decl	%eax
	je	Lj1220
	jmp	Lj1219
Lj1220:
	movl	-4(%ebp),%eax
	movzbl	44(%eax),%eax
	cmpl	$2,%eax
	jne	Lj1222
	jmp	Lj1223
Lj1222:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj1223:
	jmp	Lj1218
Lj1221:
	movl	-4(%ebp),%eax
	movzbl	44(%eax),%eax
	cmpl	$1,%eax
	jne	Lj1226
	jmp	Lj1227
Lj1226:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj1227:
	jmp	Lj1218
Lj1219:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj1218:
	leave
	ret

.text
	.align 4
.globl	_UNIX_IOPIPE$TEXT$$LONGINT
_UNIX_IOPIPE$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj1237
	subl	$55217,%eax
	je	Lj1239
	decl	%eax
	je	Lj1238
	jmp	Lj1237
Lj1238:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1240
	jmp	Lj1241
Lj1240:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_WRITE$stub
	movl	%eax,-8(%ebp)
Lj1241:
	jmp	Lj1236
Lj1239:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_READ$stub
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1236
Lj1237:
Lj1236:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_FLUSHPIPE$TEXT$$LONGINT
_UNIX_FLUSHPIPE$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj1268
	jmp	Lj1267
Lj1268:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj1266
	jmp	Lj1267
Lj1266:
	movl	-4(%ebp),%eax
	call	L_UNIX_IOPIPE$TEXT$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj1267:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_CLOSEPIPE$TEXT$$LONGINT
_UNIX_CLOSEPIPE$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_CLOSE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT
_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1284
Lj1284:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1285
	jmp	Lj1286
Lj1285:
	movl	$-1,-12(%ebp)
	jmp	Lj1283
Lj1286:
	movl	-4(%ebp),%eax
	movl	L_$UNIX$_Ld12$non_lazy_ptr-Lj1284(%ebx),%edx
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	movl	-4(%ebp),%eax
	movb	$1,44(%eax)
	movl	L_UNIX_OPENPIPE$TEXT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	movl	L_UNIX_IOPIPE$TEXT$$LONGINT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	L_UNIX_FLUSHPIPE$TEXT$$LONGINT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	movl	L_UNIX_CLOSEPIPE$TEXT$$LONGINT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	movl	L_$UNIX$_Ld12$non_lazy_ptr-Lj1284(%ebx),%edx
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	$55218,4(%eax)
	movl	-8(%ebp),%eax
	movb	$2,44(%eax)
	movl	L_UNIX_OPENPIPE$TEXT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	movl	L_UNIX_IOPIPE$TEXT$$LONGINT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	L_UNIX_FLUSHPIPE$TEXT$$LONGINT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
	movl	L_UNIX_CLOSEPIPE$TEXT$$LONGINT$non_lazy_ptr-Lj1284(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,40(%edx)
	movl	$0,-12(%ebp)
Lj1283:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_ASSIGNPIPE$file$file$$LONGINT
_UNIX_ASSIGNPIPE$file$file$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1332
Lj1332:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1333
	jmp	Lj1334
Lj1333:
	movl	$-1,-12(%ebp)
	jmp	Lj1331
Lj1334:
	movl	-4(%ebp),%eax
	movl	L_$UNIX$_Ld12$non_lazy_ptr-Lj1332(%ebx),%edx
	call	L_SYSTEM_ASSIGN$file$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	movl	-4(%ebp),%eax
	movl	$1,8(%eax)
	movl	-4(%ebp),%eax
	movb	$1,44(%eax)
	movl	-8(%ebp),%eax
	movl	L_$UNIX$_Ld12$non_lazy_ptr-Lj1332(%ebx),%edx
	call	L_SYSTEM_ASSIGN$file$SHORTSTRING$stub
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	$55218,4(%eax)
	movl	-8(%ebp),%eax
	movl	$1,8(%eax)
	movl	-8(%ebp),%eax
	movb	$2,44(%eax)
	movl	$0,-12(%ebp)
Lj1331:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_PCLOSETEXT$TEXT$$LONGINT
_UNIX_PCLOSETEXT$TEXT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_UNIX_PCLOSE$TEXT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_POPEN$TEXT$ANSISTRING$CHAR$$LONGINT
_UNIX_POPEN$TEXT$ANSISTRING$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1288,%esp
	movl	%ebx,-1276(%ebp)
	movl	%esi,-1272(%ebp)
	movl	%edi,-1268(%ebp)
	call	Lj1374
Lj1374:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-1264(%ebp)
	leal	-1224(%ebp),%ecx
	leal	-1248(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-1252(%ebp)
	testl	%eax,%eax
	jne	Lj1375
	movb	-12(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-12(%ebp)
	movzbl	-12(%ebp),%eax
	cmpl	$82,%eax
	je	Lj1384
	cmpl	$87,%eax
	je	Lj1384
Lj1384:
	jne	Lj1382
	jmp	Lj1383
Lj1382:
	movl	$2,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1375
Lj1383:
	leal	-1200(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub
	movl	%eax,-1212(%ebp)
	movl	-1212(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1395
	jmp	Lj1396
Lj1395:
	movl	$-1,-16(%ebp)
	jmp	Lj1375
Lj1396:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-1204(%ebp)
	movl	-1204(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1401
	jmp	Lj1402
Lj1401:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1375
Lj1402:
	movl	-1204(%ebp),%eax
	testl	%eax,%eax
	je	Lj1409
	jmp	Lj1410
Lj1409:
	movb	-12(%ebp),%al
	cmpb	$87,%al
	je	Lj1411
	jmp	Lj1412
Lj1411:
	movl	-608(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1413
	jmp	Lj1414
Lj1413:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1374(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1419
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj1374(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	movl	%eax,%edx
	jmp	Lj1420
Lj1419:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj1374(%ebx),%eax
	leal	4(%eax),%edx
Lj1420:
	leal	-608(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	movl	%eax,-1212(%ebp)
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
Lj1414:
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-1212(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1427
	jmp	Lj1428
Lj1427:
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
Lj1428:
	jmp	Lj1431
Lj1412:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-1200(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj1434
	jmp	Lj1435
Lj1434:
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1374(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1440
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1374(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1441
Lj1440:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1374(%ebx),%eax
	leal	4(%eax),%edx
Lj1441:
	leal	-1200(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	movl	%eax,-1212(%ebp)
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
Lj1435:
	movl	-1212(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1446
	jmp	Lj1447
Lj1446:
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
Lj1447:
Lj1431:
	movl	L_$UNIX$_Ld4$non_lazy_ptr-Lj1374(%ebx),%eax
	movl	%eax,-1260(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-1256(%ebp)
	leal	-1260(%ebp),%esi
	leal	-1264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1264(%ebp)
	leal	-1264(%ebp),%edx
	movl	L_$UNIX$_Ld16$non_lazy_ptr-Lj1374(%ebx),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-1264(%ebp),%eax
	movl	$1,%ecx
	movl	%esi,%edx
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj1462
Lj1410:
	movb	-12(%ebp),%al
	cmpb	$87,%al
	je	Lj1463
	jmp	Lj1464
Lj1463:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edi
	leal	-1200(%ebp),%esi
	cld
	movl	$148,%ecx
	rep
	movsl
	jmp	Lj1469
Lj1464:
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edi
	leal	-608(%ebp),%esi
	cld
	movl	$148,%ecx
	rep
	movsl
Lj1469:
	movl	-4(%ebp),%eax
	leal	336(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-1208(%ebp)
	movl	-1208(%ebp),%edx
	leal	-1204(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr-Lj1374(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
Lj1462:
	movl	$0,-16(%ebp)
Lj1375:
	call	LFPC_POPADDRSTACK$stub
	leal	-1264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1264(%ebp)
	movl	-1252(%ebp),%eax
	testl	%eax,%eax
	je	Lj1376
	call	LFPC_RERAISE$stub
Lj1376:
	movl	-16(%ebp),%eax
	movl	-1276(%ebp),%ebx
	movl	-1272(%ebp),%esi
	movl	-1268(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UNIX_POPEN$file$ANSISTRING$CHAR$$LONGINT
_UNIX_POPEN$file$ANSISTRING$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$776,%esp
	movl	%ebx,-764(%ebp)
	movl	%esi,-760(%ebp)
	movl	%edi,-756(%ebp)
	call	Lj1489
Lj1489:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-752(%ebp)
	leal	-712(%ebp),%ecx
	leal	-736(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-740(%ebp)
	testl	%eax,%eax
	jne	Lj1490
	movb	-12(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-12(%ebp)
	movzbl	-12(%ebp),%eax
	cmpl	$82,%eax
	je	Lj1499
	cmpl	$87,%eax
	je	Lj1499
Lj1499:
	jne	Lj1497
	jmp	Lj1498
Lj1497:
	movl	$2,%eax
	call	LFPC_SYS_SETERRNO$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1490
Lj1498:
	leal	-688(%ebp),%edx
	leal	-352(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$file$file$$LONGINT$stub
	movl	%eax,-700(%ebp)
	movl	-700(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1510
	jmp	Lj1511
Lj1510:
	movl	$-1,-16(%ebp)
	jmp	Lj1490
Lj1511:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-692(%ebp)
	movl	-692(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1516
	jmp	Lj1517
Lj1516:
	leal	-352(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
	leal	-688(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1490
Lj1517:
	movl	-692(%ebp),%eax
	testl	%eax,%eax
	je	Lj1524
	jmp	Lj1525
Lj1524:
	movb	-12(%ebp),%al
	cmpb	$87,%al
	je	Lj1526
	jmp	Lj1527
Lj1526:
	movl	-352(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1528
	jmp	Lj1529
Lj1528:
	movl	-352(%ebp),%eax
	movl	$0,%edx
	call	LFPC_SYSC_DUP2$stub
	movl	%eax,-700(%ebp)
	leal	-352(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
Lj1529:
	leal	-688(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
	movl	-700(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1540
	jmp	Lj1541
Lj1540:
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
Lj1541:
	jmp	Lj1544
Lj1527:
	leal	-352(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
	movl	-688(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj1547
	jmp	Lj1548
Lj1547:
	movl	-688(%ebp),%eax
	movl	$1,%edx
	call	LFPC_SYSC_DUP2$stub
	movl	%eax,-700(%ebp)
	leal	-688(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
Lj1548:
	movl	-700(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1557
	jmp	Lj1558
Lj1557:
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
Lj1558:
Lj1544:
	movl	L_$UNIX$_Ld4$non_lazy_ptr-Lj1489(%ebx),%eax
	movl	%eax,-748(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-744(%ebp)
	leal	-748(%ebp),%esi
	leal	-752(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-752(%ebp)
	leal	-752(%ebp),%edx
	movl	L_$UNIX$_Ld16$non_lazy_ptr-Lj1489(%ebx),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-752(%ebp),%eax
	movl	$1,%ecx
	movl	%esi,%edx
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj1573
Lj1525:
	movb	-12(%ebp),%al
	cmpb	$87,%al
	je	Lj1574
	jmp	Lj1575
Lj1574:
	leal	-352(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edi
	leal	-688(%ebp),%esi
	cld
	movl	$83,%ecx
	rep
	movsl
	jmp	Lj1580
Lj1575:
	leal	-688(%ebp),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%edi
	leal	-352(%ebp),%esi
	cld
	movl	$83,%ecx
	rep
	movsl
Lj1580:
	movl	-4(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-696(%ebp)
	movl	-696(%ebp),%edx
	leal	-692(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1573:
	movl	$0,-16(%ebp)
Lj1490:
	call	LFPC_POPADDRSTACK$stub
	leal	-752(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-752(%ebp)
	movl	-740(%ebp),%eax
	testl	%eax,%eax
	je	Lj1491
	call	LFPC_RERAISE$stub
Lj1491:
	movl	-16(%ebp),%eax
	movl	-764(%ebp),%ebx
	movl	-760(%ebp),%esi
	movl	-756(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_UNIX_ASSIGNSTREAM$TEXT$TEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT
_UNIX_ASSIGNSTREAM$TEXT$TEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1224,%esp
	movl	%ebx,-1212(%ebp)
	call	Lj1596
Lj1596:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	leal	-1200(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1599
	jmp	Lj1600
Lj1599:
	movl	$-1,-16(%ebp)
	jmp	Lj1595
Lj1600:
	movl	-8(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1607
	jmp	Lj1608
Lj1607:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1595
Lj1608:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-1204(%ebp)
	movl	-1204(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1621
	jmp	Lj1622
Lj1621:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	jmp	Lj1595
Lj1622:
	movl	-1204(%ebp),%eax
	testl	%eax,%eax
	je	Lj1631
	jmp	Lj1632
Lj1631:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1596(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1641
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj1596(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1642
Lj1641:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj1596(%ebx),%eax
	leal	4(%eax),%edx
Lj1642:
	leal	-608(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1637
	jmp	Lj1638
Lj1637:
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
Lj1638:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1596(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1653
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1596(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1654
Lj1653:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1596(%ebx),%eax
	leal	4(%eax),%edx
Lj1654:
	leal	-1200(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1649
	jmp	Lj1650
Lj1649:
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
Lj1650:
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
	jmp	Lj1669
Lj1632:
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-1208(%ebp)
	movl	-1208(%ebp),%edx
	leal	-1204(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr-Lj1596(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-1208(%ebp)
	movl	-1208(%ebp),%edx
	leal	-1204(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr-Lj1596(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-1204(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1669:
Lj1595:
	movl	-16(%ebp),%eax
	movl	-1212(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_ASSIGNSTREAM$TEXT$TEXT$TEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT
_UNIX_ASSIGNSTREAM$TEXT$TEXT$TEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1816,%esp
	movl	%ebx,-1804(%ebp)
	call	Lj1697
Lj1697:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	leal	-1200(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1700
	jmp	Lj1701
Lj1700:
	movl	$-1,-16(%ebp)
	jmp	Lj1696
Lj1701:
	leal	-1792(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1708
	jmp	Lj1709
Lj1708:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1696
Lj1709:
	movl	-8(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1720
	jmp	Lj1721
Lj1720:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1792(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1696
Lj1721:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-1796(%ebp)
	movl	-1796(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1738
	jmp	Lj1739
Lj1738:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1792(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	$-1,-16(%ebp)
	jmp	Lj1696
Lj1739:
	movl	-1796(%ebp),%eax
	testl	%eax,%eax
	je	Lj1754
	jmp	Lj1755
Lj1754:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1697(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1766
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj1697(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1767
Lj1766:
	movl	L_U_SYSTEM_INPUT$non_lazy_ptr-Lj1697(%ebx),%eax
	leal	4(%eax),%edx
Lj1767:
	leal	-608(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1762
	jmp	Lj1763
Lj1762:
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
Lj1763:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1697(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1778
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1697(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1779
Lj1778:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj1697(%ebx),%eax
	leal	4(%eax),%edx
Lj1779:
	leal	-1200(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1774
	jmp	Lj1775
Lj1774:
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
Lj1775:
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj1697(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1790
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj1697(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj1791
Lj1790:
	movl	L_U_SYSTEM_STDERR$non_lazy_ptr-Lj1697(%ebx),%eax
	leal	4(%eax),%edx
Lj1791:
	leal	-1792(%ebp),%eax
	call	L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1786
	jmp	Lj1787
Lj1786:
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
Lj1787:
	leal	-1792(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
	jmp	Lj1806
Lj1755:
	leal	-1792(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-1200(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-1800(%ebp)
	movl	-1800(%ebp),%edx
	leal	-1796(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr-Lj1697(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-1800(%ebp)
	movl	-1800(%ebp),%edx
	leal	-1796(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr-Lj1697(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-12(%ebp),%eax
	leal	45(%eax),%eax
	movl	%eax,-1800(%ebp)
	movl	-1800(%ebp),%edx
	leal	-1796(%ebp),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr-Lj1697(%ebx),%eax
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-1796(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1806:
Lj1696:
	movl	-16(%ebp),%eax
	movl	-1804(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_UNIX_GETDOMAINNAME$$SHORTSTRING
_UNIX_GETDOMAINNAME$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	$255,%edx
	call	LFPC_SYSC_GETDOMAINNAME$stub
	cmpl	$-1,%eax
	je	Lj1847
	jmp	Lj1848
Lj1847:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj1855
Lj1848:
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
Lj1855:
	leave
	ret

.text
	.align 4
.globl	_UNIX_GETHOSTNAME$$SHORTSTRING
_UNIX_GETHOSTNAME$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1288,%esp
	movl	%eax,-4(%ebp)
	leal	-1284(%ebp),%eax
	call	L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj1862
	jmp	Lj1863
Lj1862:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj1868
Lj1863:
	leal	-1028(%ebp),%eax
	movl	-4(%ebp),%edx
	call	L_SYSTEM_STRPAS$PCHAR$$SHORTSTRING$stub
Lj1868:
	leave
	ret

.text
	.align 4
.globl	_UNIX_SIGRAISE$SMALLINT
_UNIX_SIGRAISE$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	call	LFPC_SYSC_GETPID$stub
	movswl	-4(%ebp),%edx
	call	L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_UNIX_FSEARCH$ANSISTRING$ANSISTRING$TFSEARCHOPTION$$ANSISTRING
_UNIX_FSEARCH$ANSISTRING$ANSISTRING$TFSEARCHOPTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-180(%ebp)
	movl	%esi,-176(%ebp)
	call	Lj1880
Lj1880:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-144(%ebp),%ecx
	leal	-168(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-172(%ebp)
	testl	%eax,%eax
	jne	Lj1881
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1884
	jmp	Lj1885
Lj1884:
	movl	-8(%ebp),%ecx
	leal	-8(%ebp),%eax
	movl	L_$UNIX$_Ld17$non_lazy_ptr-Lj1880(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj1885:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1892
	jmp	Lj1893
Lj1892:
	movl	-8(%ebp),%edx
	leal	-8(%ebp),%eax
	movl	L_$UNIX$_Ld19$non_lazy_ptr-Lj1880(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1893:
	movl	-8(%ebp),%esi
	testl	%esi,%esi
	je	Lj1903
	movl	-4(%esi),%esi
Lj1903:
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1901
	decl	-24(%ebp)
	.align 2
Lj1902:
	incl	-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$58,%al
	je	Lj1904
	jmp	Lj1906
Lj1906:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$59,%al
	je	Lj1904
	jmp	Lj1905
Lj1904:
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-24(%ebp),%edx
	movb	$0,-1(%eax,%edx,1)
Lj1905:
	cmpl	-24(%ebp),%esi
	jg	Lj1902
Lj1901:
	movl	-4(%ebp),%edx
	movb	$63,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj1911
	jmp	Lj1913
Lj1913:
	movl	-4(%ebp),%edx
	movb	$42,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj1911
	jmp	Lj1912
Lj1911:
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	jmp	Lj1924
Lj1912:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1927
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1880(%ebx),%edx
	movl	%edx,%eax
Lj1927:
	movl	%eax,-132(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1930
	movl	-4(%eax),%eax
Lj1930:
	movl	%eax,-124(%ebp)
	movl	$1,-128(%ebp)
	.align 2
Lj1933:
	leal	-16(%ebp),%edx
	movl	-132(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1943
	movl	-4(%eax),%eax
Lj1943:
	cmpl	$0,%eax
	jg	Lj1942
	jmp	Lj1941
Lj1942:
	movl	-16(%ebp),%edx
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1944
	movl	-4(%eax),%eax
Lj1944:
	movb	-1(%edx,%eax,1),%al
	cmpb	$47,%al
	jne	Lj1940
	jmp	Lj1941
Lj1940:
	movl	-16(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	L_$UNIX$_Ld21$non_lazy_ptr-Lj1880(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1941:
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1964
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1880(%ebx),%edx
	movl	%edx,%eax
Lj1964:
	leal	-120(%ebp),%edx
	call	LFPC_SYSC_STAT$stub
	cmpl	$0,%eax
	jge	Lj1959
	jmp	Lj1958
Lj1959:
	movw	-112(%ebp),%ax
	call	L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1957
	jmp	Lj1958
Lj1957:
	movl	-20(%ebp),%edx
	movl	L_$UNIX$_Ld23$non_lazy_ptr-Lj1880(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj1969
	jmp	Lj1970
Lj1969:
	leal	-20(%ebp),%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj1970:
	jmp	Lj1981
Lj1958:
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
Lj1981:
	jmp	Lj1985
	.align 2
Lj1984:
	incl	-128(%ebp)
	incl	-132(%ebp)
Lj1985:
	movl	-128(%ebp),%eax
	cmpl	-124(%ebp),%eax
	jle	Lj1987
	jmp	Lj1986
Lj1987:
	movl	-132(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1984
	jmp	Lj1986
Lj1986:
	movl	-132(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1988
	jmp	Lj1989
Lj1988:
	incl	-132(%ebp)
Lj1989:
	movl	-128(%ebp),%eax
	cmpl	-124(%ebp),%eax
	jge	Lj1935
	jmp	Lj1990
Lj1990:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1991
	movl	-4(%eax),%eax
Lj1991:
	cmpl	$0,%eax
	jg	Lj1935
	jmp	Lj1933
Lj1935:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,(%esi)
Lj1924:
Lj1881:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-172(%ebp),%eax
	testl	%eax,%eax
	je	Lj1882
	call	LFPC_RERAISE$stub
Lj1882:
	movl	-180(%ebp),%ebx
	movl	-176(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_UNIX_FSEARCH$ANSISTRING$ANSISTRING$$ANSISTRING
_UNIX_FSEARCH$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2008
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_UNIX_FSEARCH$ANSISTRING$ANSISTRING$TFSEARCHOPTION$$ANSISTRING$stub
Lj2008:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2009
	call	LFPC_RERAISE$stub
Lj2009:
	leave
	ret

.text
	.align 4
.globl	_UNIX_FSYNC$LONGINT$$LONGINT
_UNIX_FSYNC$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_UNIX_FPFSYNC$LONGINT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_STATFS$PCHAR$TSTATFS$$LONGINT
_UNIX_STATFS$PCHAR$TSTATFS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_UNIX_FSTATFS$LONGINT$TSTATFS$$LONGINT
_UNIX_FSTATFS$LONGINT$TSTATFS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_FPFSTATFS$LONGINT$PSTATFS$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_UNIX
_INIT$_UNIX:
.reference __UNIX_init
.globl	__UNIX_init
__UNIX_init:
.reference _INIT$_UNIX
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_UNIX_INITLOCALTIME$stub
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_UNIX
_FINALIZE$_UNIX:
.reference __UNIX_finalize
.globl	__UNIX_finalize
__UNIX_finalize:
.reference _FINALIZE$_UNIX
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_UNIX_DONELOCALTIME$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


.globl _U_UNIX_TZDAYLIGHT
.data
.zerofill __DATA, __common, _U_UNIX_TZDAYLIGHT, 1,1




	.align 2
.globl _U_UNIX_TZNAME
.data
.zerofill __DATA, __common, _U_UNIX_TZNAME, 8,2




	.align 2
.globl _U_UNIX_NUM_TRANSITIONS
.data
.zerofill __DATA, __common, _U_UNIX_NUM_TRANSITIONS, 4,2




	.align 2
.globl _U_UNIX_NUM_LEAPS
.data
.zerofill __DATA, __common, _U_UNIX_NUM_LEAPS, 4,2




	.align 2
.globl _U_UNIX_NUM_TYPES
.data
.zerofill __DATA, __common, _U_UNIX_NUM_TYPES, 4,2




	.align 2
.globl _U_UNIX_TRANSITIONS
.data
.zerofill __DATA, __common, _U_UNIX_TRANSITIONS, 4,2




	.align 2
.globl _U_UNIX_TYPE_IDXS
.data
.zerofill __DATA, __common, _U_UNIX_TYPE_IDXS, 4,2




	.align 2
.globl _U_UNIX_TYPES
.data
.zerofill __DATA, __common, _U_UNIX_TYPES, 4,2




	.align 2
.globl _U_UNIX_ZONE_NAMES
.data
.zerofill __DATA, __common, _U_UNIX_ZONE_NAMES, 4,2




	.align 2
.globl _U_UNIX_LEAPS
.data
.zerofill __DATA, __common, _U_UNIX_LEAPS, 4,2



.data
	.align 2
.globl	_THREADVARLIST_UNIX
_THREADVARLIST_UNIX:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$UNIX$_Ld1
_$UNIX$_Ld1:
	.ascii	"\004PATH\000"

.const_data
	.align 2
.globl	_$UNIX$_Ld3
_$UNIX$_Ld3:
	.short	0,1
	.long	0,-1,1
.reference _$UNIX$_Ld2
.globl	_$UNIX$_Ld2
_$UNIX$_Ld2:
.reference _$UNIX$_Ld3
	.ascii	".\000"

.const_data
	.align 2
.globl	_$UNIX$_Ld5
_$UNIX$_Ld5:
	.short	0,1
	.long	0,-1,2
.reference _$UNIX$_Ld4
.globl	_$UNIX$_Ld4
_$UNIX$_Ld4:
.reference _$UNIX$_Ld5
	.ascii	"-c\000"

.const_data
	.align 2
.globl	_$UNIX$_Ld7
_$UNIX$_Ld7:
	.short	0,1
	.long	0,-1,7
.reference _$UNIX$_Ld6
.globl	_$UNIX$_Ld6
_$UNIX$_Ld6:
.reference _$UNIX$_Ld7
	.ascii	"/bin/sh\000"

.const
	.align 2
.globl	_$UNIX$_Ld8
_$UNIX$_Ld8:
	.ascii	"\011localtime\000"

.const
	.align 2
.globl	_$UNIX$_Ld9
_$UNIX$_Ld9:
	.ascii	"\005TZDIR\000"

.const
	.align 2
.globl	_$UNIX$_Ld10
_$UNIX$_Ld10:
	.ascii	"\023/usr/share/zoneinfo\000"

.const
	.align 2
.globl	_$UNIX$_Ld11
_$UNIX$_Ld11:
	.ascii	"\001/\000"

.const
	.align 2
.globl	_$UNIX$_Ld12
_$UNIX$_Ld12:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$UNIX$_Ld13
_$UNIX$_Ld13:
	.ascii	"\015/etc/timezone\000"

.const
	.align 2
.globl	_$UNIX$_Ld14
_$UNIX$_Ld14:
	.ascii	"\016/etc/localtime\000"

.const
	.align 2
.globl	_$UNIX$_Ld15
_$UNIX$_Ld15:
	.ascii	"\033/usr/lib/zoneinfo/localtime\000"

.const
	.align 2
.globl	_$UNIX$_Ld16
_$UNIX$_Ld16:
	.ascii	"/bin/sh\000"

.const_data
	.align 2
.globl	_$UNIX$_Ld18
_$UNIX$_Ld18:
	.short	0,1
	.long	0,-1,2
.reference _$UNIX$_Ld17
.globl	_$UNIX$_Ld17
_$UNIX$_Ld17:
.reference _$UNIX$_Ld18
	.ascii	".:\000"

.const_data
	.align 2
.globl	_$UNIX$_Ld20
_$UNIX$_Ld20:
	.short	0,1
	.long	0,-1,2
.reference _$UNIX$_Ld19
.globl	_$UNIX$_Ld19
_$UNIX$_Ld19:
.reference _$UNIX$_Ld20
	.ascii	":.\000"

.const_data
	.align 2
.globl	_$UNIX$_Ld22
_$UNIX$_Ld22:
	.short	0,1
	.long	0,-1,1
.reference _$UNIX$_Ld21
.globl	_$UNIX$_Ld21
_$UNIX$_Ld21:
.reference _$UNIX$_Ld22
	.ascii	"/\000"

.const
	.align 2
.globl	_$UNIX$_Ld23
_$UNIX$_Ld23:
	.ascii	"\002./\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

L_UNIX_STATFS$PCHAR$TSTATFS$$LONGINT$stub:
.indirect_symbol _UNIX_STATFS$PCHAR$TSTATFS$$LONGINT
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

LFPC_SYSC_CLOSE$stub:
.indirect_symbol FPC_SYSC_CLOSE
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

L_BASEUNIX_FPPIPE$TFILDES$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPPIPE$TFILDES$$LONGINT
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

L_BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN$stub:
.indirect_symbol _BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT
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

L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub:
.indirect_symbol _BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FSEARCH$ANSISTRING$ANSISTRING$TFSEARCHOPTION$$ANSISTRING$stub:
.indirect_symbol _UNIX_FSEARCH$ANSISTRING$ANSISTRING$TFSEARCHOPTION$$ANSISTRING
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
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

L_UNIXUTIL_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR$stub:
.indirect_symbol _UNIXUTIL_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT$stub:
.indirect_symbol _UNIX_INTFPEXECVEMAYBEP$ANSISTRING$PPCHAR$PPCHAR$BOOLEAN$$LONGINT
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

L_UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT$stub:
.indirect_symbol _UNIX_INTFPEXECL$ANSISTRING$array_of_ANSISTRING$PPCHAR$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_FORK$stub:
.indirect_symbol FPC_SYSC_FORK
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

L_UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub:
.indirect_symbol _UNIX_FPEXECL$ANSISTRING$array_of_ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_EXIT$stub:
.indirect_symbol FPC_SYSC_EXIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_WAITPROCESS$LONGINT$$LONGINT
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

LFPC_SYSC_SIGACTION$stub:
.indirect_symbol FPC_SYSC_SIGACTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT
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

L_UNIX_FIND_TRANSITION$LONGINT$$PTTINFO$stub:
.indirect_symbol _UNIX_FIND_TRANSITION$LONGINT$$PTTINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_GETLOCALTIMEZONE$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _UNIX_GETLOCALTIMEZONE$LONGINT$LONGINT$LONGINT
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

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_shortstr$stub:
.indirect_symbol fpc_pchar_to_shortstr
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

L_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT$stub:
.indirect_symbol _UNIX_READTIMEZONEFILE$SHORTSTRING_READBUF$formal$SMALLINT$$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT$stub:
.indirect_symbol _UNIX_READTIMEZONEFILE$SHORTSTRING_DECODE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_READTIMEZONEFILE$SHORTSTRING_READBUFBYTE$$BYTE$stub:
.indirect_symbol _UNIX_READTIMEZONEFILE$SHORTSTRING_READBUFBYTE$$BYTE
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

L_UNIX_READTIMEZONEFILE$SHORTSTRING_READFILEBUF$stub:
.indirect_symbol _UNIX_READTIMEZONEFILE$SHORTSTRING_READFILEBUF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPREAD$LONGINT$formal$LONGWORD$$LONGINT
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

L_BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSTAT$SHORTSTRING$STAT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_GETTIMEZONEFILE$$SHORTSTRING$stub:
.indirect_symbol _UNIX_GETTIMEZONEFILE$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_READTIMEZONEFILE$SHORTSTRING$stub:
.indirect_symbol _UNIX_READTIMEZONEFILE$SHORTSTRING
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

L_UNIX_GETLOCALTIMEZONE$LONGINT$stub:
.indirect_symbol _UNIX_GETLOCALTIMEZONE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_DONELOCALTIME$stub:
.indirect_symbol _UNIX_DONELOCALTIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_INITLOCALTIME$stub:
.indirect_symbol _UNIX_INITLOCALTIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FPFLOCK$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_FPFLOCK$LONGINT$LONGINT$$LONGINT
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

L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$PTIMEVAL$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_SELECTTEXT$TEXT$PTIMEVAL$$LONGINT$stub:
.indirect_symbol _UNIX_SELECTTEXT$TEXT$PTIMEVAL$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_LSEEK$stub:
.indirect_symbol FPC_SYSC_LSEEK
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

LFPC_SYSC_READ$stub:
.indirect_symbol FPC_SYSC_READ
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_IOPIPE$TEXT$$LONGINT$stub:
.indirect_symbol _UNIX_IOPIPE$TEXT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$file$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_PCLOSE$TEXT$$LONGINT$stub:
.indirect_symbol _UNIX_PCLOSE$TEXT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT$stub:
.indirect_symbol _UNIX_ASSIGNPIPE$TEXT$TEXT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$TEXT$stub:
.indirect_symbol _SYSTEM_CLOSE$TEXT
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

L_BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPDUP2$TEXT$TEXT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_ASSIGNPIPE$file$file$$LONGINT$stub:
.indirect_symbol _UNIX_ASSIGNPIPE$file$file$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$file$stub:
.indirect_symbol _SYSTEM_CLOSE$file
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

L_SYSTEM_HALT$LONGINT$stub:
.indirect_symbol _SYSTEM_HALT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETDOMAINNAME$stub:
.indirect_symbol FPC_SYSC_GETDOMAINNAME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPUNAME$UTSNAME$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPUNAME$UTSNAME$$LONGINT
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

LFPC_SYSC_GETPID$stub:
.indirect_symbol FPC_SYSC_GETPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

L_BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN$stub:
.indirect_symbol _BASEUNIX_FPS_ISDIR$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT
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

L_UNIX_FPFSYNC$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_FPFSYNC$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT$stub:
.indirect_symbol _UNIX_FPSTATFS$PCHAR$PSTATFS$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_FPFSTATFS$LONGINT$PSTATFS$$LONGINT$stub:
.indirect_symbol _UNIX_FPFSTATFS$LONGINT$PSTATFS$$LONGINT
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
.globl	_INIT_UNIX_DEF7
_INIT_UNIX_DEF7:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF9
_INIT_UNIX_DEF9:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF11
_INIT_UNIX_DEF11:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF13
_INIT_UNIX_DEF13:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF109
_INIT_UNIX_DEF109:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF113
_INIT_UNIX_DEF113:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF118
_INIT_UNIX_DEF118:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF123
_INIT_UNIX_DEF123:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF244
_INIT_UNIX_DEF244:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF252
_INIT_UNIX_DEF252:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF40
_INIT_UNIX_DEF40:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_DEF42
_INIT_UNIX_DEF42:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_UNIX_TFSEARCHOPTION
_INIT_UNIX_TFSEARCHOPTION:
	.byte	3,14
	.ascii	"TFSearchOption"
	.byte	5
	.long	0,2,0
	.byte	18
	.ascii	"NoCurrentDirectory"
	.byte	21
	.ascii	"CurrentDirectoryFirst"
	.byte	20
	.ascii	"CurrentDirectoryLast"
	.byte	4
	.ascii	"Unix"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_UNIX_TFSEARCHOPTION
_RTTI_UNIX_TFSEARCHOPTION:
	.byte	3,14
	.ascii	"TFSearchOption"
	.byte	5
	.long	0,2,0
	.byte	18
	.ascii	"NoCurrentDirectory"
	.byte	21
	.ascii	"CurrentDirectoryFirst"
	.byte	20
	.ascii	"CurrentDirectoryLast"
	.byte	4
	.ascii	"Unix"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_UNIX_TFSEARCHOPTION_s2o
_RTTI_UNIX_TFSEARCHOPTION_s2o:
	.long	3,1
	.long	_RTTI_UNIX_TFSEARCHOPTION+48
	.long	2
	.long	_RTTI_UNIX_TFSEARCHOPTION+70
	.long	0
	.long	_RTTI_UNIX_TFSEARCHOPTION+29

.const_data
	.align 2
.globl	_RTTI_UNIX_TFSEARCHOPTION_o2s
_RTTI_UNIX_TFSEARCHOPTION_o2s:
	.long	0
	.long	_RTTI_UNIX_TFSEARCHOPTION+29
	.long	_RTTI_UNIX_TFSEARCHOPTION+48
	.long	_RTTI_UNIX_TFSEARCHOPTION+70

.const_data
	.align 2
.globl	_INIT_UNIX_DEF92
_INIT_UNIX_DEF92:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
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
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld1$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld2$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ENVP$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ENVP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld4$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld6$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_NUM_TRANSITIONS$non_lazy_ptr:
.indirect_symbol _U_UNIX_NUM_TRANSITIONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_TRANSITIONS$non_lazy_ptr:
.indirect_symbol _U_UNIX_TRANSITIONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_NUM_TYPES$non_lazy_ptr:
.indirect_symbol _U_UNIX_NUM_TYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_TYPES$non_lazy_ptr:
.indirect_symbol _U_UNIX_TYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_TYPE_IDXS$non_lazy_ptr:
.indirect_symbol _U_UNIX_TYPE_IDXS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_TZDAYLIGHT$non_lazy_ptr:
.indirect_symbol _U_UNIX_TZDAYLIGHT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIXUTIL_TZSECONDS$non_lazy_ptr:
.indirect_symbol _U_UNIXUTIL_TZSECONDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_TZNAME$non_lazy_ptr:
.indirect_symbol _U_UNIX_TZNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_ZONE_NAMES$non_lazy_ptr:
.indirect_symbol _U_UNIX_ZONE_NAMES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_NUM_LEAPS$non_lazy_ptr:
.indirect_symbol _U_UNIX_NUM_LEAPS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_UNIX_LEAPS$non_lazy_ptr:
.indirect_symbol _U_UNIX_LEAPS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld8$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld9$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld10$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld11$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld13$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld14$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld15$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld12$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_UNIX_OPENPIPE$TEXT$non_lazy_ptr:
.indirect_symbol _UNIX_OPENPIPE$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_UNIX_IOPIPE$TEXT$$LONGINT$non_lazy_ptr:
.indirect_symbol _UNIX_IOPIPE$TEXT$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_UNIX_FLUSHPIPE$TEXT$$LONGINT$non_lazy_ptr:
.indirect_symbol _UNIX_FLUSHPIPE$TEXT$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_UNIX_CLOSEPIPE$TEXT$$LONGINT$non_lazy_ptr:
.indirect_symbol _UNIX_CLOSEPIPE$TEXT$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_INPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_INPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_OUTPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_OUTPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld16$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_UNIX_PCLOSETEXT$TEXT$$LONGINT$non_lazy_ptr:
.indirect_symbol _UNIX_PCLOSETEXT$TEXT$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_STDERR$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_STDERR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld17$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld19$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld21$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$UNIX$_Ld23$non_lazy_ptr:
.indirect_symbol _$UNIX$_Ld23
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

