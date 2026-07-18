# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING
_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7
	movl	-4(%eax),%eax
Lj7:
	cmpl	$0,%eax
	jg	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj12
	movl	-4(%ecx),%ecx
Lj12:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj6:
	movw	$2561,-264(%ebp)
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movzbl	-264(%ebp),%ecx
	leal	-263(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$array_of_const
_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj25
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
Lj25:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj26
	call	LFPC_RERAISE$stub
Lj26:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL
_PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj47
Lj47:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj48
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	L_$PSCANVAS$_Ld1$non_lazy_ptr-Lj47(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	%eax,%edx
	movl	L_VMT_PSCANVAS_TPSBRUSH$non_lazy_ptr-Lj47(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%esi
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	%esi,%eax
	call	L_PSCANVAS_TPSBRUSH_$__GETASSTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$PSCANVAS$_Ld3$non_lazy_ptr-Lj47(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
Lj48:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	call	LFPC_RERAISE$stub
Lj49:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS
_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj74
Lj74:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj75
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	leal	-68(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj74(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	leal	-72(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$PSCANVAS$_Ld7$non_lazy_ptr-Lj74(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
Lj75:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj76
	call	LFPC_RERAISE$stub
Lj76:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__CREATE$TSTREAM$$TPOSTSCRIPTCANVAS
_PSCANVAS_TPOSTSCRIPTCANVAS_$__CREATE$TSTREAM$$TPOSTSCRIPTCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj102
	jmp	Lj103
Lj102:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj103:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	jmp	Lj109
Lj108:
	jmp	Lj100
Lj109:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj112
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj116
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,72(%edx)
	movl	-12(%ebp),%eax
	movl	$792,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj116:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj117
	call	LFPC_RERAISE$stub
Lj117:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj131
	jmp	Lj130
Lj131:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj129
	jmp	Lj130
Lj129:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj130:
Lj112:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj114
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj135
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj136
	jmp	Lj137
Lj136:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj137:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj135:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj134
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj134:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj114
Lj114:
Lj100:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DESTROY
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj144
	jmp	Lj145
Lj144:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj145:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj154
	jmp	Lj153
Lj154:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj152
	jmp	Lj153
Lj152:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj153:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__SETWIDTH$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__SETWIDTH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,68(%eax)
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__GETWIDTH$$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__GETWIDTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__SETHEIGHT$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__SETHEIGHT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,64(%eax)
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__GETHEIGHT$$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__GETHEIGHT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOMOVETO$LONGINT$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOMOVETO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	call	Lj174
Lj174:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj175
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj174(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$PSCANVAS$_Ld7$non_lazy_ptr-Lj174(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-76(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,80(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,84(%eax)
Lj175:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj176
	call	LFPC_RERAISE$stub
Lj176:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOLINETO$LONGINT$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOLINETO$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	call	Lj207
Lj207:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj208
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj207(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$PSCANVAS$_Ld9$non_lazy_ptr-Lj207(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-76(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,80(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,84(%eax)
Lj208:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj209
	call	LFPC_RERAISE$stub
Lj209:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	call	Lj240
Lj240:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj241
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	L_$PSCANVAS$_Ld11$non_lazy_ptr-Lj240(%ebx),%eax
	movl	%eax,-100(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj240(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$PSCANVAS$_Ld13$non_lazy_ptr-Lj240(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-112(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj240(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-116(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld15$non_lazy_ptr-Lj240(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-100(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	$8,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub
Lj241:
	call	LFPC_POPADDRSTACK$stub
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj242
	call	LFPC_RERAISE$stub
Lj242:
	movl	-120(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DORECTANGLEFILL$TRECT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DORECTANGLEFILL$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWRECTANGLE$TRECT$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DORECTANGLE$TRECT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DORECTANGLE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWRECTANGLE$TRECT$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWRECTANGLE$TRECT$BOOLEAN
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWRECTANGLE$TRECT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj301
Lj301:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj302
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	L_$PSCANVAS$_Ld17$non_lazy_ptr-Lj301(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld7$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld9$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-88(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld9$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-88(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld9$non_lazy_ptr-Lj301(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-88(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	L_$PSCANVAS$_Ld19$non_lazy_ptr-Lj301(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	cmpb	$0,-8(%ebp)
	jne	Lj399
	jmp	Lj398
Lj399:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	jne	Lj397
	jmp	Lj398
Lj397:
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL$stub
Lj398:
	movl	-12(%ebp),%eax
	movl	L_$PSCANVAS$_Ld21$non_lazy_ptr-Lj301(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub
Lj302:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj303
	call	LFPC_RERAISE$stub
Lj303:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOPOLYLINE$array_of_TPOINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOPOLYLINE$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$LONGINT$LONGINT$stub
	movl	-8(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj419
	decl	-16(%ebp)
	.align 2
Lj420:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	4(%eax,%edx,8),%ecx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,8),%edx
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj420
Lj419:
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOELLIPSE$TRECT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOELLIPSE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWELLIPSE$TRECT$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOELLIPSEFILL$TRECT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOELLIPSEFILL$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWELLIPSE$TRECT$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWELLIPSE$TRECT$BOOLEAN
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWELLIPSE$TRECT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-172(%ebp)
	call	Lj446
Lj446:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-168(%ebp)
	movl	$0,-164(%ebp)
	movl	$0,-132(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-80(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj447
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj452
	jmp	Lj453
Lj452:
	jmp	Lj447
Lj453:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%edx
	movl	4(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-76(%ebp)
	fildl	-76(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	8(%eax),%edx
	movl	(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-76(%ebp)
	fildl	-76(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	(%edx),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	12(%edx),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-32(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	L_$PSCANVAS$_Ld11$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-100(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	leal	-108(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$PSCANVAS$_Ld23$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-100(%ebp),%edx
	leal	-80(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-80(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-104(%ebp),%edx
	leal	-108(%ebp),%eax
	movl	L_$PSCANVAS$_Ld25$non_lazy_ptr-Lj446(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	L_$PSCANVAS$_Ld27$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-100(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	fldl	-24(%ebp)
	fstpt	-128(%ebp)
	leal	-128(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$3,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	$0,%ecx
	movl	L_$PSCANVAS$_Ld29$non_lazy_ptr-Lj446(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$PSCANVAS$_Ld31$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-100(%ebp),%edx
	leal	-108(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	L_$PSCANVAS$_Ld33$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-124(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-132(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	L_$PSCANVAS$_Ld35$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-116(%ebp)
	leal	-124(%ebp),%edx
	leal	-108(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	cmpb	$0,-8(%ebp)
	jne	Lj530
	jmp	Lj529
Lj530:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	jne	Lj528
	jmp	Lj529
Lj528:
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL$stub
Lj529:
	fld1
	fldl	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-24(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	L_$PSCANVAS$_Ld37$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-124(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	fldl	-24(%ebp)
	fstpt	-160(%ebp)
	leal	-160(%ebp),%eax
	movl	%eax,-136(%ebp)
	movl	$3,-140(%ebp)
	leal	-140(%ebp),%edx
	movl	$0,%ecx
	movl	L_$PSCANVAS$_Ld39$non_lazy_ptr-Lj446(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	L_$PSCANVAS$_Ld41$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-116(%ebp)
	leal	-124(%ebp),%edx
	leal	-132(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-132(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-164(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-164(%ebp)
	movl	-28(%ebp),%eax
	negl	%eax
	leal	-164(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-164(%ebp),%eax
	movl	%eax,-152(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-148(%ebp)
	leal	-168(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-168(%ebp)
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	negl	%eax
	leal	-168(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-168(%ebp),%eax
	movl	%eax,-144(%ebp)
	movl	L_$PSCANVAS$_Ld43$non_lazy_ptr-Lj446(%ebx),%eax
	movl	%eax,-140(%ebp)
	leal	-152(%ebp),%edx
	leal	-132(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-132(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub
Lj447:
	call	LFPC_POPADDRSTACK$stub
	leal	-168(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-168(%ebp)
	leal	-164(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-164(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj448
	call	LFPC_RERAISE$stub
Lj448:
	movl	-172(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	call	Lj580
Lj580:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj581
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	L_$PSCANVAS$_Ld11$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	leal	-84(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$PSCANVAS$_Ld23$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-76(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	L_$PSCANVAS$_Ld1$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	20(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$PSCANVAS$_Ld31$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-76(%ebp),%edx
	leal	-84(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-84(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	L_$PSCANVAS$_Ld45$non_lazy_ptr-Lj580(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	L_$PSCANVAS$_Ld47$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$PSCANVAS$_Ld49$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-76(%ebp),%edx
	leal	-84(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-84(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	cmpl	$1,%eax
	jne	Lj646
	jmp	Lj647
Lj646:
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL$stub
Lj647:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	fildl	-4(%ebp)
	fld1
	fdivp	%st,%st(1)
	movl	L_$PSCANVAS$_Ld51$non_lazy_ptr-Lj580(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpt	-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$3,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	$0,%ecx
	movl	L_$PSCANVAS$_Ld52$non_lazy_ptr-Lj580(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	fildl	-8(%ebp)
	fld1
	fdivp	%st,%st(1)
	movl	L_$PSCANVAS$_Ld51$non_lazy_ptr-Lj580(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpt	-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$3,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	$0,%ecx
	movl	L_$PSCANVAS$_Ld52$non_lazy_ptr-Lj580(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$PSCANVAS$_Ld41$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%edx
	leal	-84(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-84(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	movl	-4(%ebp),%eax
	negl	%eax
	leal	-116(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-116(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-100(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	negl	%eax
	leal	-120(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-120(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$PSCANVAS$_Ld43$non_lazy_ptr-Lj580(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-104(%ebp),%edx
	leal	-84(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-84(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub
Lj581:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj582
	call	LFPC_RERAISE$stub
Lj582:
	movl	-124(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITELN$ANSISTRING
_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITELN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj704
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	80(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING$stub
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub
	movl	84(%ebx),%edx
	movl	56(%eax),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,84(%eax)
	movl	-8(%ebp),%eax
	movl	84(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	80(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$LONGINT$LONGINT$stub
Lj704:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj705
	call	LFPC_RERAISE$stub
Lj705:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
_PSCANVAS_TPOSTSCRIPTCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	call	Lj726
Lj726:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj727
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj726(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$PSCANVAS$_Ld7$non_lazy_ptr-Lj726(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-76(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	L_$PSCANVAS$_Ld54$non_lazy_ptr-Lj726(%ebx),%eax
	movl	%eax,-72(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$PSCANVAS$_Ld56$non_lazy_ptr-Lj726(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	leal	-84(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-84(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub
Lj727:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj728
	call	LFPC_RERAISE$stub
Lj728:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj767
Lj767:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_PSCANVAS_TPSFONT$non_lazy_ptr-Lj767(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_PSCANVAS_TPSFONT$non_lazy_ptr-Lj767(%ebx),%ecx
	call	*156(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj775
Lj775:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_PSCANVAS_TPSPEN$non_lazy_ptr-Lj775(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_PSCANVAS_TPSPEN$non_lazy_ptr-Lj775(%ebx),%ecx
	call	*156(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj783
Lj783:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_PSCANVAS_TPSBRUSH$non_lazy_ptr-Lj783(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_PSCANVAS_TPSBRUSH$non_lazy_ptr-Lj783(%ebx),%ecx
	call	*156(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__SETHEIGHT$LONGINT
_PSCANVAS_TPOSTSCRIPT_$__SETHEIGHT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj792
	jmp	Lj793
Lj792:
	jmp	Lj790
Lj793:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,68(%eax)
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX$stub
	movl	-8(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj798
	jmp	Lj799
Lj798:
	movl	-8(%ebp),%eax
	movl	68(%eax),%edx
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj799:
Lj790:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__SETLINESPACING$LONGINT
_PSCANVAS_TPOSTSCRIPT_$__SETLINESPACING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj806
	jmp	Lj807
Lj806:
	jmp	Lj804
Lj807:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,72(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj810
	jmp	Lj811
Lj810:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,76(%eax)
Lj811:
Lj804:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__SETWIDTH$LONGINT
_PSCANVAS_TPOSTSCRIPT_$__SETWIDTH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj816
	jmp	Lj817
Lj816:
	jmp	Lj814
Lj817:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,84(%eax)
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX$stub
Lj814:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX
_PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__PATTERNCHANGED$TOBJECT
_PSCANVAS_TPOSTSCRIPT_$__PATTERNCHANGED$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj825
Lj825:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_PSCANVAS_TPSPATTERN$non_lazy_ptr-Lj825(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__INSERTPATTERN$TPSPATTERN$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__INSERTPATTERN$TPSPATTERN
_PSCANVAS_TPOSTSCRIPT_$__INSERTPATTERN$TPSPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__CREATE$TCOMPONENT$$TPOSTSCRIPT
_PSCANVAS_TPOSTSCRIPT_$__CREATE$TCOMPONENT$$TPOSTSCRIPT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj838
	jmp	Lj839
Lj838:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj839:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj844
	jmp	Lj845
Lj844:
	jmp	Lj836
Lj845:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj848
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj852
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	-12(%ebp),%eax
	movl	$792,68(%eax)
	movl	-12(%ebp),%eax
	movl	$612,84(%eax)
Lj852:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj853
	call	LFPC_RERAISE$stub
Lj853:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj867
	jmp	Lj866
Lj867:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj865
	jmp	Lj866
Lj865:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj866:
Lj848:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj850
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj871
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj872
	jmp	Lj873
Lj872:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj873:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj871:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj870
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj870:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj850
Lj850:
Lj836:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING
_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj882
	movl	-4(%eax),%eax
Lj882:
	cmpl	$0,%eax
	jg	Lj880
	jmp	Lj881
Lj880:
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj887
	movl	-4(%ecx),%ecx
Lj887:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	60(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj881:
	movw	$2561,-264(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movzbl	-264(%ebp),%ecx
	leal	-263(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	60(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$array_of_const
_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj900
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
Lj900:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj901
	call	LFPC_RERAISE$stub
Lj901:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__WRITEDOCUMENTHEADER
_PSCANVAS_TPOSTSCRIPT_$__WRITEDOCUMENTHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj916
Lj916:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj917
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld58$non_lazy_ptr-Lj916(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld60$non_lazy_ptr-Lj916(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__GETCREATOR$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	leal	-48(%ebp),%eax
	movl	L_$PSCANVAS$_Ld62$non_lazy_ptr-Lj916(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%ecx
	leal	-52(%ebp),%eax
	movl	L_$PSCANVAS$_Ld64$non_lazy_ptr-Lj916(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld66$non_lazy_ptr-Lj916(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld68$non_lazy_ptr-Lj916(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*220(%edx)
Lj917:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj918
	call	LFPC_RERAISE$stub
Lj918:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__WRITESTANDARDFONT
_PSCANVAS_TPOSTSCRIPT_$__WRITESTANDARDFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj963
Lj963:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld70$non_lazy_ptr-Lj963(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld72$non_lazy_ptr-Lj963(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld74$non_lazy_ptr-Lj963(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__FREEPATTERNS
_PSCANVAS_TPOSTSCRIPT_$__FREEPATTERNS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,88(%eax)
	jne	Lj978
	jmp	Lj979
Lj978:
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj981
	decl	-8(%ebp)
	.align 2
Lj982:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj982
Lj981:
	movl	-4(%ebp),%eax
	leal	88(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj979:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__DESTROY
_PSCANVAS_TPOSTSCRIPT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj997
	jmp	Lj998
Lj997:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj998:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__SETSTREAM$TSTREAM$stub
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__FREEPATTERNS$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1013
	jmp	Lj1012
Lj1013:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1011
	jmp	Lj1012
Lj1011:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1012:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__ADDPATTERN$TPSPATTERN
_PSCANVAS_TPOSTSCRIPT_$__ADDPATTERN$TPSPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1017
Lj1017:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,88(%eax)
	jne	Lj1019
	jmp	Lj1018
Lj1018:
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1017(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,88(%edx)
Lj1019:
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__FINDPATTERN$ANSISTRING$$TPSPATTERN
_PSCANVAS_TPOSTSCRIPT_$__FINDPATTERN$ANSISTRING$$TPSPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1032
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,88(%eax)
	jne	Lj1037
	jmp	Lj1038
Lj1037:
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1044
	.align 2
Lj1043:
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	84(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1046
	jmp	Lj1047
Lj1046:
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1062
Lj1047:
	decl	-16(%ebp)
Lj1062:
Lj1044:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1063
	jmp	Lj1045
Lj1063:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1043
	jmp	Lj1045
Lj1045:
Lj1038:
Lj1032:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1033
	call	LFPC_RERAISE$stub
Lj1033:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__DELPATTERN$ANSISTRING$$BOOLEAN
_PSCANVAS_TPOSTSCRIPT_$__DELPATTERN$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1066
	movb	$0,-9(%ebp)
Lj1066:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1067
	call	LFPC_RERAISE$stub
Lj1067:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__NEWPATTERN$ANSISTRING$$TPSPATTERN
_PSCANVAS_TPOSTSCRIPT_$__NEWPATTERN$ANSISTRING$$TPSPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj1072
Lj1072:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1073
	movl	L_VMT_PSCANVAS_TPSPATTERN$non_lazy_ptr-Lj1072(%ebx),%edx
	movl	$0,%eax
	call	L_PSCANVAS_TPSPATTERN_$__CREATE$$TPSPATTERN$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__ADDPATTERN$TPSPATTERN$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_PSCANVAS_TPSPATTERN_$__SETNAME$ANSISTRING$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_PSCANVAS_TPOSTSCRIPT_$__PATTERNCHANGED$TOBJECT$non_lazy_ptr-Lj1072(%ebx),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-60(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-16(%ebp),%esi
	leal	56(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,56(%esi)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__INSERTPATTERN$TPSPATTERN$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1073:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1074
	call	LFPC_RERAISE$stub
Lj1074:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__BEGINDOC
_PSCANVAS_TPOSTSCRIPT_$__BEGINDOC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1101
Lj1101:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__CHECKSTREAM$stub
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj1104
	jmp	Lj1105
Lj1104:
	movl	L_RESSTR_PSCANVAS_SERRDOCUMENTALREADYSTARTED$non_lazy_ptr-Lj1101(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj1101(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1101(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1105:
	movl	-4(%ebp),%eax
	movl	60(%eax),%ecx
	movl	L_VMT_PSCANVAS_TPOSTSCRIPTCANVAS$non_lazy_ptr-Lj1101(%ebx),%edx
	movl	$0,%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__CREATE$TSTREAM$$TPOSTSCRIPTCANVAS$stub
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-4(%ebp),%eax
	movl	68(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__FREEPATTERNS$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*216(%edx)
	movl	-4(%ebp),%eax
	movl	$1,76(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__WRITEPAGE
_PSCANVAS_TPOSTSCRIPT_$__WRITEPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj1139
Lj1139:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj1140
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	L_$PSCANVAS$_Ld76$non_lazy_ptr-Lj1139(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	leal	-68(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1139(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	leal	-72(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld78$non_lazy_ptr-Lj1139(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
Lj1140:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1141
	call	LFPC_RERAISE$stub
Lj1141:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__NEWPAGE
_PSCANVAS_TPOSTSCRIPT_$__NEWPAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1166
Lj1166:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld21$non_lazy_ptr-Lj1166(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld80$non_lazy_ptr-Lj1166(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__ENDDOC
_PSCANVAS_TPOSTSCRIPT_$__ENDDOC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1180
Lj1180:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj1181
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld21$non_lazy_ptr-Lj1180(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	L_$PSCANVAS$_Ld80$non_lazy_ptr-Lj1180(%ebx),%edx
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	leal	-48(%ebp),%eax
	movl	L_$PSCANVAS$_Ld82$non_lazy_ptr-Lj1180(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movb	$0,52(%eax)
	movl	-4(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1181:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1182
	call	LFPC_RERAISE$stub
Lj1182:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__GETCREATOR$$ANSISTRING
_PSCANVAS_TPOSTSCRIPT_$__GETCREATOR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj1212
	jmp	Lj1213
Lj1212:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-264(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj1222
Lj1213:
	movl	-4(%ebp),%esi
	movl	56(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	56(%esi),%eax
	movl	%eax,(%ebx)
Lj1222:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__SETSTREAM$TSTREAM
_PSCANVAS_TPOSTSCRIPT_$__SETSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1227
	jmp	Lj1228
Lj1227:
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj1231
	jmp	Lj1230
Lj1231:
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj1229
	jmp	Lj1230
Lj1229:
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPOSTSCRIPT_$__ENDDOC$stub
Lj1230:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	movb	$0,52(%eax)
Lj1228:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPOSTSCRIPT_$__CHECKSTREAM
_PSCANVAS_TPOSTSCRIPT_$__CHECKSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1239
Lj1239:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,60(%eax)
	jne	Lj1241
	jmp	Lj1240
Lj1240:
	movl	L_RESSTR_PSCANVAS_SERRNOSTREAMASSIGNED$non_lazy_ptr-Lj1239(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj1239(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj1239(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1241:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPEN_$__SETPATTERN$TPSPATTERN
_PSCANVAS_TPSPEN_$__SETPATTERN$TPSPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1250
	jmp	Lj1251
Lj1250:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,72(%eax)
Lj1251:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPEN_$__DESTROY
_PSCANVAS_TPSPEN_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1256
	jmp	Lj1257
Lj1256:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1257:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCANVASHELPER_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1266
	jmp	Lj1265
Lj1266:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1264
	jmp	Lj1265
Lj1264:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1265:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPEN_$__ASSTRING$$ANSISTRING
_PSCANVAS_TPSPEN_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	call	Lj1270
Lj1270:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-100(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1271
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	testl	%eax,%eax
	jne	Lj1276
	jmp	Lj1277
Lj1276:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	je	Lj1278
	jmp	Lj1279
Lj1278:
	movl	L_$PSCANVAS$_Ld84$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	84(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	L_$PSCANVAS$_Ld86$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj1286
Lj1279:
	movl	L_$PSCANVAS$_Ld88$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-96(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-4(%ebp),%eax
	movzwl	14(%eax),%eax
	leal	-100(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-100(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-88(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-4(%ebp),%eax
	movzwl	16(%eax),%eax
	leal	-104(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-80(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-4(%ebp),%eax
	movzwl	18(%eax),%eax
	leal	-108(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	84(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	L_$PSCANVAS$_Ld86$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-64(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$8,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1286:
	jmp	Lj1305
Lj1277:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-4(%ebp),%eax
	movzwl	14(%eax),%eax
	leal	-108(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-68(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-4(%ebp),%eax
	movzwl	16(%eax),%eax
	leal	-104(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-60(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-4(%ebp),%eax
	movzwl	18(%eax),%eax
	leal	-100(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-100(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$PSCANVAS$_Ld90$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-52(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1305:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-120(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-124(%ebp)
	movl	$0,-128(%ebp)
	leal	-128(%ebp),%edx
	movl	$0,%ecx
	movl	L_$PSCANVAS$_Ld92$non_lazy_ptr-Lj1270(%esi),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-116(%ebp)
	movl	L_$PSCANVAS$_Ld94$non_lazy_ptr-Lj1270(%esi),%eax
	movl	%eax,-112(%ebp)
	leal	-120(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1271:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1272
	call	LFPC_RERAISE$stub
Lj1272:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__GETPOSTSCRIPT$$TSTRINGLIST
_PSCANVAS_TPSPATTERN_$__GETPOSTSCRIPT$$TSTRINGLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-148(%ebp)
	movl	%esi,-144(%ebp)
	movl	%edi,-140(%ebp)
	call	Lj1339
Lj1339:
	popl	-136(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-132(%ebp)
	movl	$0,-128(%ebp)
	movl	$0,-124(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1340
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	movl	48(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	$0,%edx
	jne	Lj1344
	cmpl	$0,%eax
	jne	Lj1344
	jmp	Lj1343
Lj1343:
	movl	-136(%ebp),%eax
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj1339(%eax),%edx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld96$non_lazy_ptr-Lj1339(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	movl	-136(%ebp),%ebx
	leal	La3-Lj1339(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1344:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movl	-4(%ebp),%edx
	movl	92(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movl	92(%eax),%edi
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ecx
	leal	-60(%ebp),%edx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld98$non_lazy_ptr-Lj1339(%eax),%ebx
	movl	%edx,%eax
	movl	%ebx,%edx
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld100$non_lazy_ptr-Lj1339(%eax),%edx
	movl	%edx,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld102$non_lazy_ptr-Lj1339(%eax),%edx
	movl	%edx,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld104$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-80(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-60(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	%edi,%eax
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld106$non_lazy_ptr-Lj1339(%edx),%ebx
	movl	%edi,%edx
	movl	(%edx),%ecx
	movl	%ebx,%edx
	call	*164(%ecx)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	$0,%ecx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld108$non_lazy_ptr-Lj1339(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	$0,%ecx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld110$non_lazy_ptr-Lj1339(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld112$non_lazy_ptr-Lj1339(%eax),%edx
	movl	%edx,-116(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	leal	-120(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-120(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-108(%ebp)
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	leal	-124(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-124(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-100(%ebp)
	leal	-128(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-128(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	leal	-128(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-128(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld5$non_lazy_ptr-Lj1339(%eax),%edx
	movl	%edx,-92(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	leal	-132(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-132(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld114$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-84(%ebp)
	leal	-116(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	$8,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-60(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld116$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-72(%ebp)
	leal	-128(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-128(%ebp)
	leal	-128(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	fldl	100(%eax)
	fstpt	-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$3,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	$0,%ecx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld92$non_lazy_ptr-Lj1339(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-128(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld118$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	leal	-132(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-132(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld120$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-72(%ebp)
	leal	-128(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-128(%ebp)
	leal	-128(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	fldl	108(%eax)
	fstpt	-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$3,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	$0,%ecx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld92$non_lazy_ptr-Lj1339(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-128(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld118$non_lazy_ptr-Lj1339(%eax),%edx
	movl	%edx,-64(%ebp)
	leal	-72(%ebp),%edx
	leal	-132(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-132(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	%edi,%eax
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld122$non_lazy_ptr-Lj1339(%edx),%ecx
	movl	%edi,%edx
	movl	(%edx),%ebx
	movl	%ecx,%edx
	call	*164(%ebx)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	movl	48(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,%edx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	48(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	movl	48(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,%ebx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	48(%ecx),%ecx
	movl	(%ecx),%esi
	movl	%ebx,%ecx
	call	*128(%esi)
	movl	-16(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld124$non_lazy_ptr-Lj1339(%eax),%edx
	movl	%edx,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld126$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-136(%ebp),%edx
	movl	L_$PSCANVAS$_Ld128$non_lazy_ptr-Lj1339(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-80(%ebp),%edx
	leal	-132(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-132(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ecx
	leal	-132(%ebp),%edx
	movl	-136(%ebp),%eax
	movl	L_$PSCANVAS$_Ld130$non_lazy_ptr-Lj1339(%eax),%ebx
	movl	%edx,%eax
	movl	%ebx,%edx
	call	Lfpc_ansistr_concat$stub
	movl	-132(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1340:
	call	LFPC_POPADDRSTACK$stub
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-128(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-128(%ebp)
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1341
	call	LFPC_RERAISE$stub
Lj1341:
	movl	-8(%ebp),%eax
	movl	-148(%ebp),%ebx
	movl	-144(%ebp),%esi
	movl	-140(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__SETBBOX$TRECT
_PSCANVAS_TPSPATTERN_$__SETBBOX$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__SETNAME$ANSISTRING
_PSCANVAS_TPSPATTERN_$__SETNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%esi
	movl	84(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	56(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	84(%esi),%eax
	movl	%eax,56(%ebx)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj1531
	jmp	Lj1532
Lj1531:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	84(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,84(%ebx)
Lj1532:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__CHANGED
_PSCANVAS_TPSPATTERN_$__CHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,60(%eax)
	jne	Lj1541
	jmp	Lj1542
Lj1541:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	60(%ecx),%ecx
	call	*%ecx
Lj1542:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__SETPAINTTYPE$TPSPAINTTYPE
_PSCANVAS_TPSPATTERN_$__SETPAINTTYPE$TPSPAINTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1549
	jmp	Lj1550
Lj1549:
	jmp	Lj1547
Lj1550:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,88(%eax)
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPSPATTERN_$__CHANGED$stub
Lj1547:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__SETTILINGTYPE$TPSTILETYPE
_PSCANVAS_TPSPATTERN_$__SETTILINGTYPE$TPSTILETYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1557
	jmp	Lj1558
Lj1557:
	jmp	Lj1555
Lj1558:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,96(%eax)
	movl	-8(%ebp),%eax
	call	L_PSCANVAS_TPSPATTERN_$__CHANGED$stub
Lj1555:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__SETXSTEP$REAL
_PSCANVAS_TPSPATTERN_$__SETXSTEP$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	100(%eax)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1565
	jmp	Lj1566
Lj1565:
	jmp	Lj1563
Lj1566:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,100(%edx)
	movl	12(%ebp),%eax
	movl	%eax,104(%edx)
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPSPATTERN_$__CHANGED$stub
Lj1563:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__SETYSTEP$REAL
_PSCANVAS_TPSPATTERN_$__SETYSTEP$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fldl	108(%eax)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1573
	jmp	Lj1574
Lj1573:
	jmp	Lj1571
Lj1574:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,108(%edx)
	movl	12(%ebp),%eax
	movl	%eax,112(%edx)
	movl	-4(%ebp),%eax
	call	L_PSCANVAS_TPSPATTERN_$__CHANGED$stub
Lj1571:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__CREATE$$TPSPATTERN
_PSCANVAS_TPSPATTERN_$__CREATE$$TPSPATTERN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj1580
Lj1580:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1581
	jmp	Lj1582
Lj1581:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1582:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1587
	jmp	Lj1588
Lj1587:
	jmp	Lj1579
Lj1588:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1591
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1595
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1580(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,92(%edx)
	movl	-8(%ebp),%eax
	movl	$0,88(%eax)
	movl	-8(%ebp),%eax
	movl	$0,96(%eax)
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj1580(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,48(%edx)
	movl	-8(%ebp),%eax
	movl	48(%eax),%ecx
	movl	L_VMT_PSCANVAS_TPOSTSCRIPTCANVAS$non_lazy_ptr-Lj1580(%ebx),%edx
	movl	$0,%eax
	call	L_PSCANVAS_TPOSTSCRIPTCANVAS_$__CREATE$TSTREAM$$TPOSTSCRIPTCANVAS$stub
	movl	-8(%ebp),%edx
	movl	%eax,52(%edx)
	movl	L_$PSCANVAS$_Ld132$non_lazy_ptr-Lj1580(%ebx),%esi
	movl	-8(%ebp),%edi
	leal	84(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,84(%edi)
Lj1595:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1596
	call	LFPC_RERAISE$stub
Lj1596:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1626
	jmp	Lj1625
Lj1626:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1624
	jmp	Lj1625
Lj1624:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1625:
Lj1591:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1593
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1630
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1631
	jmp	Lj1632
Lj1631:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1632:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1630:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1629
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1629:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1593
Lj1593:
Lj1579:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSPATTERN_$__DESTROY
_PSCANVAS_TPSPATTERN_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1639
	jmp	Lj1640
Lj1639:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1640:
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCANVASHELPER_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1655
	jmp	Lj1654
Lj1655:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1653
	jmp	Lj1654
Lj1653:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1654:
	leave
	ret

.text
	.align 4
.globl	_PSCANVAS_TPSBRUSH_$__GETASSTRING$$ANSISTRING
_PSCANVAS_TPSBRUSH_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld134
_$PSCANVAS$_Ld134:
	.byte	11
	.ascii	"TPostScript"

.const_data
	.align 2
.globl	_VMT_PSCANVAS_TPOSTSCRIPT
_VMT_PSCANVAS_TPOSTSCRIPT:
	.long	92,-92
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$PSCANVAS$_Ld134
	.long	0,0
	.long	_$PSCANVAS$_Ld135
	.long	_RTTI_PSCANVAS_TPOSTSCRIPT
	.long	_INIT_PSCANVAS_TPOSTSCRIPT
	.long	0,0,0
	.long	_PSCANVAS_TPOSTSCRIPT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_CLASSES_TCOMPONENT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_CLASSES_TCOMPONENT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOMPONENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_CLASSES_TCOMPONENT_$__SETNAME$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_PSCANVAS_TPOSTSCRIPT_$__WRITEDOCUMENTHEADER
	.long	_PSCANVAS_TPOSTSCRIPT_$__WRITESTANDARDFONT
	.long	_PSCANVAS_TPOSTSCRIPT_$__WRITEPAGE
	.long	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld137
_$PSCANVAS$_Ld137:
	.byte	17
	.ascii	"TPostScriptCanvas"

.const_data
	.align 2
.globl	_VMT_PSCANVAS_TPOSTSCRIPTCANVAS
_VMT_PSCANVAS_TPOSTSCRIPTCANVAS:
	.long	88,-88
	.long	_VMT_FPCANVAS_TFPCUSTOMCANVAS
	.long	_$PSCANVAS$_Ld137
	.long	0,0
	.long	_$PSCANVAS$_Ld138
	.long	_RTTI_PSCANVAS_TPOSTSCRIPTCANVAS
	.long	0,0,0,0
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETFONT$TFPCUSTOMFONT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETBRUSH$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPEN$TFPCUSTOMPEN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__SETHEIGHT$LONGINT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__GETHEIGHT$$LONGINT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__SETWIDTH$LONGINT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__GETWIDTH$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPRECT$$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPPING$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPPING$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPENPOS$TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLOCKCANVAS
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOUNLOCKCANVAS
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DORECTANGLE$TRECT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DORECTANGLEFILL$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORECTANGLEANDFILL$TRECT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOELLIPSEFILL$TRECT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOELLIPSEANDFILL$TRECT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYGONANDFILL$array_of_TPOINT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOPOLYLINE$array_of_TPOINT
	.long	FPC_ABSTRACTERROR
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOMOVETO$LONGINT$LONGINT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOLINETO$LONGINT$LONGINT
	.long	_PSCANVAS_TPOSTSCRIPTCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__CHECKHELPER$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTEXTENT$ANSISTRING$$TSIZE
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYGON$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYLINE$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$array_of_TPOINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FLOODFILL$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ERASE
	.long	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld140
_$PSCANVAS$_Ld140:
	.byte	10
	.ascii	"TPSPattern"

.const_data
	.align 2
.globl	_VMT_PSCANVAS_TPSPATTERN
_VMT_PSCANVAS_TPSPATTERN:
	.long	116,-116
	.long	_VMT_FPCANVAS_TFPCANVASHELPER
	.long	_$PSCANVAS$_Ld140
	.long	0,0
	.long	_$PSCANVAS$_Ld141
	.long	_RTTI_PSCANVAS_TPSPATTERN
	.long	_INIT_PSCANVAS_TPSPATTERN
	.long	0,0,0
	.long	_PSCANVAS_TPSPATTERN_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld143
_$PSCANVAS$_Ld143:
	.byte	6
	.ascii	"TPSPen"

.const_data
	.align 2
.globl	_VMT_PSCANVAS_TPSPEN
_VMT_PSCANVAS_TPSPEN:
	.long	76,-76
	.long	_VMT_FPCANVAS_TFPCUSTOMPEN
	.long	_$PSCANVAS$_Ld143
	.long	0,0
	.long	_$PSCANVAS$_Ld144
	.long	_RTTI_PSCANVAS_TPSPEN
	.long	0,0,0,0
	.long	_PSCANVAS_TPSPEN_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMPEN_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETMODE$TFPPENMODE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETWIDTH$LONGINT
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETSTYLE$TFPPENSTYLE
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETPATTERN$LONGWORD
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETENDCAP$TFPPENENDCAP
	.long	_FPCANVAS_TFPCUSTOMPEN_$__SETJOINSTYLE$TFPPENJOINSTYLE
	.long	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld146
_$PSCANVAS$_Ld146:
	.byte	8
	.ascii	"TPSBrush"

.const_data
	.align 2
.globl	_VMT_PSCANVAS_TPSBRUSH
_VMT_PSCANVAS_TPSBRUSH:
	.long	184,-184
	.long	_VMT_FPCANVAS_TFPCUSTOMBRUSH
	.long	_$PSCANVAS$_Ld146
	.long	0,0
	.long	_$PSCANVAS$_Ld147
	.long	_RTTI_PSCANVAS_TPSBRUSH
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETSTYLE$TFPBRUSHSTYLE
	.long	_FPCANVAS_TFPCUSTOMBRUSH_$__SETIMAGE$TFPCUSTOMIMAGE
	.long	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld149
_$PSCANVAS$_Ld149:
	.byte	7
	.ascii	"TPSFont"

.const_data
	.align 2
.globl	_VMT_PSCANVAS_TPSFONT
_VMT_PSCANVAS_TPSFONT:
	.long	60,-60
	.long	_VMT_FPCANVAS_TFPCUSTOMFONT
	.long	_$PSCANVAS$_Ld149
	.long	0,0
	.long	_$PSCANVAS$_Ld150
	.long	_RTTI_PSCANVAS_TPSFONT
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCANVASHELPER_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FPCANVAS_TFPCANVASHELPER_$__DOALLOCATERESOURCES
	.long	_FPCANVAS_TFPCANVASHELPER_$__DODEALLOCATERESOURCES
	.long	_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_PSCANVAS
_THREADVARLIST_PSCANVAS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$PSCANVAS$_Ld153
_$PSCANVAS$_Ld153:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld152
.globl	_$PSCANVAS$_Ld152
_$PSCANVAS$_Ld152:
.reference _$PSCANVAS$_Ld153
	.ascii	"PSCANVAS\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld155
_$PSCANVAS$_Ld155:
	.short	0,1
	.long	0,-1,37
.reference _$PSCANVAS$_Ld154
.globl	_$PSCANVAS$_Ld154
_$PSCANVAS$_Ld154:
.reference _$PSCANVAS$_Ld155
	.ascii	"Invalid operation: No stream assigned\000"
	.align 2
.globl	_$PSCANVAS$_Ld157
_$PSCANVAS$_Ld157:
	.short	0,1
	.long	0,-1,29
.reference _$PSCANVAS$_Ld156
.globl	_$PSCANVAS$_Ld156
_$PSCANVAS$_Ld156:
.reference _$PSCANVAS$_Ld157
	.ascii	"pscanvas.serrnostreamassigned\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld159
_$PSCANVAS$_Ld159:
	.short	0,1
	.long	0,-1,28
.reference _$PSCANVAS$_Ld158
.globl	_$PSCANVAS$_Ld158
_$PSCANVAS$_Ld158:
.reference _$PSCANVAS$_Ld159
	.ascii	"Cannot start document twice.\000"
	.align 2
.globl	_$PSCANVAS$_Ld161
_$PSCANVAS$_Ld161:
	.short	0,1
	.long	0,-1,35
.reference _$PSCANVAS$_Ld160
.globl	_$PSCANVAS$_Ld160
_$PSCANVAS$_Ld160:
.reference _$PSCANVAS$_Ld161
	.ascii	"pscanvas.serrdocumentalreadystarted\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld2
_$PSCANVAS$_Ld2:
	.short	0,1
	.long	0,-1,6
.reference _$PSCANVAS$_Ld1
.globl	_$PSCANVAS$_Ld1
_$PSCANVAS$_Ld1:
.reference _$PSCANVAS$_Ld2
	.ascii	"gsave \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld4
_$PSCANVAS$_Ld4:
	.short	0,1
	.long	0,-1,14
.reference _$PSCANVAS$_Ld3
.globl	_$PSCANVAS$_Ld3
_$PSCANVAS$_Ld3:
.reference _$PSCANVAS$_Ld4
	.ascii	" fill grestore\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld6
_$PSCANVAS$_Ld6:
	.short	0,1
	.long	0,-1,1
.reference _$PSCANVAS$_Ld5
.globl	_$PSCANVAS$_Ld5
_$PSCANVAS$_Ld5:
.reference _$PSCANVAS$_Ld6
	.ascii	" \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld8
_$PSCANVAS$_Ld8:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld7
.globl	_$PSCANVAS$_Ld7
_$PSCANVAS$_Ld7:
.reference _$PSCANVAS$_Ld8
	.ascii	" moveto\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld10
_$PSCANVAS$_Ld10:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld9
.globl	_$PSCANVAS$_Ld9
_$PSCANVAS$_Ld9:
.reference _$PSCANVAS$_Ld10
	.ascii	" lineto\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld12
_$PSCANVAS$_Ld12:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld11
.globl	_$PSCANVAS$_Ld11
_$PSCANVAS$_Ld11:
.reference _$PSCANVAS$_Ld12
	.ascii	"newpath \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld14
_$PSCANVAS$_Ld14:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld13
.globl	_$PSCANVAS$_Ld13
_$PSCANVAS$_Ld13:
.reference _$PSCANVAS$_Ld14
	.ascii	" moveto \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld16
_$PSCANVAS$_Ld16:
	.short	0,1
	.long	0,-1,24
.reference _$PSCANVAS$_Ld15
.globl	_$PSCANVAS$_Ld15
_$PSCANVAS$_Ld15:
.reference _$PSCANVAS$_Ld16
	.ascii	" lineto closepath stroke\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld18
_$PSCANVAS$_Ld18:
	.short	0,1
	.long	0,-1,14
.reference _$PSCANVAS$_Ld17
.globl	_$PSCANVAS$_Ld17
_$PSCANVAS$_Ld17:
.reference _$PSCANVAS$_Ld18
	.ascii	"stroke newpath\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld20
_$PSCANVAS$_Ld20:
	.short	0,1
	.long	0,-1,9
.reference _$PSCANVAS$_Ld19
.globl	_$PSCANVAS$_Ld19
_$PSCANVAS$_Ld19:
.reference _$PSCANVAS$_Ld20
	.ascii	"closepath\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld22
_$PSCANVAS$_Ld22:
	.short	0,1
	.long	0,-1,6
.reference _$PSCANVAS$_Ld21
.globl	_$PSCANVAS$_Ld21
_$PSCANVAS$_Ld21:
.reference _$PSCANVAS$_Ld22
	.ascii	"stroke\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld24
_$PSCANVAS$_Ld24:
	.short	0,1
	.long	0,-1,10
.reference _$PSCANVAS$_Ld23
.globl	_$PSCANVAS$_Ld23
_$PSCANVAS$_Ld23:
.reference _$PSCANVAS$_Ld24
	.ascii	" translate\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld26
_$PSCANVAS$_Ld26:
	.short	0,1
	.long	0,-1,9
.reference _$PSCANVAS$_Ld25
.globl	_$PSCANVAS$_Ld25
_$PSCANVAS$_Ld25:
.reference _$PSCANVAS$_Ld26
	.ascii	" 0 moveto\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld28
_$PSCANVAS$_Ld28:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld27
.globl	_$PSCANVAS$_Ld27
_$PSCANVAS$_Ld27:
.reference _$PSCANVAS$_Ld28
	.ascii	"gsave 1 \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld30
_$PSCANVAS$_Ld30:
	.short	0,1
	.long	0,-1,4
.reference _$PSCANVAS$_Ld29
.globl	_$PSCANVAS$_Ld29
_$PSCANVAS$_Ld29:
.reference _$PSCANVAS$_Ld30
	.ascii	"%.3f\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld32
_$PSCANVAS$_Ld32:
	.short	0,1
	.long	0,-1,6
.reference _$PSCANVAS$_Ld31
.globl	_$PSCANVAS$_Ld31
_$PSCANVAS$_Ld31:
.reference _$PSCANVAS$_Ld32
	.ascii	" scale\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld34
_$PSCANVAS$_Ld34:
	.short	0,1
	.long	0,-1,4
.reference _$PSCANVAS$_Ld33
.globl	_$PSCANVAS$_Ld33
_$PSCANVAS$_Ld33:
.reference _$PSCANVAS$_Ld34
	.ascii	"0 0 \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld36
_$PSCANVAS$_Ld36:
	.short	0,1
	.long	0,-1,10
.reference _$PSCANVAS$_Ld35
.globl	_$PSCANVAS$_Ld35
_$PSCANVAS$_Ld35:
.reference _$PSCANVAS$_Ld36
	.ascii	" 0 360 arc\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld38
_$PSCANVAS$_Ld38:
	.short	0,1
	.long	0,-1,2
.reference _$PSCANVAS$_Ld37
.globl	_$PSCANVAS$_Ld37
_$PSCANVAS$_Ld37:
.reference _$PSCANVAS$_Ld38
	.ascii	"1 \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld40
_$PSCANVAS$_Ld40:
	.short	0,1
	.long	0,-1,4
.reference _$PSCANVAS$_Ld39
.globl	_$PSCANVAS$_Ld39
_$PSCANVAS$_Ld39:
.reference _$PSCANVAS$_Ld40
	.ascii	"%.2f\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld42
_$PSCANVAS$_Ld42:
	.short	0,1
	.long	0,-1,22
.reference _$PSCANVAS$_Ld41
.globl	_$PSCANVAS$_Ld41
_$PSCANVAS$_Ld41:
.reference _$PSCANVAS$_Ld42
	.ascii	" scale stroke grestore\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld44
_$PSCANVAS$_Ld44:
	.short	0,1
	.long	0,-1,27
.reference _$PSCANVAS$_Ld43
.globl	_$PSCANVAS$_Ld43
_$PSCANVAS$_Ld43:
.reference _$PSCANVAS$_Ld44
	.ascii	" translate closepath stroke\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld46
_$PSCANVAS$_Ld46:
	.short	0,1
	.long	0,-1,10
.reference _$PSCANVAS$_Ld45
.globl	_$PSCANVAS$_Ld45
_$PSCANVAS$_Ld45:
.reference _$PSCANVAS$_Ld46
	.ascii	"0 0 moveto\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld48
_$PSCANVAS$_Ld48:
	.short	0,1
	.long	0,-1,6
.reference _$PSCANVAS$_Ld47
.globl	_$PSCANVAS$_Ld47
_$PSCANVAS$_Ld47:
.reference _$PSCANVAS$_Ld48
	.ascii	"0 0 1 \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld50
_$PSCANVAS$_Ld50:
	.short	0,1
	.long	0,-1,14
.reference _$PSCANVAS$_Ld49
.globl	_$PSCANVAS$_Ld49
_$PSCANVAS$_Ld49:
.reference _$PSCANVAS$_Ld50
	.ascii	" arc closepath\000"

.const
	.align 3
.globl	_$PSCANVAS$_Ld51
_$PSCANVAS$_Ld51:
	.byte	10,215,163,112,61,10,215,163,248,63

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld53
_$PSCANVAS$_Ld53:
	.short	0,1
	.long	0,-1,4
.reference _$PSCANVAS$_Ld52
.globl	_$PSCANVAS$_Ld52
_$PSCANVAS$_Ld52:
.reference _$PSCANVAS$_Ld53
	.ascii	"%.6f\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld55
_$PSCANVAS$_Ld55:
	.short	0,1
	.long	0,-1,1
.reference _$PSCANVAS$_Ld54
.globl	_$PSCANVAS$_Ld54
_$PSCANVAS$_Ld54:
.reference _$PSCANVAS$_Ld55
	.ascii	"(\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld57
_$PSCANVAS$_Ld57:
	.short	0,1
	.long	0,-1,6
.reference _$PSCANVAS$_Ld56
.globl	_$PSCANVAS$_Ld56
_$PSCANVAS$_Ld56:
.reference _$PSCANVAS$_Ld57
	.ascii	") show\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld59
_$PSCANVAS$_Ld59:
	.short	0,1
	.long	0,-1,14
.reference _$PSCANVAS$_Ld58
.globl	_$PSCANVAS$_Ld58
_$PSCANVAS$_Ld58:
.reference _$PSCANVAS$_Ld59
	.ascii	"%!PS-Adobe-3.0\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld61
_$PSCANVAS$_Ld61:
	.short	0,1
	.long	0,-1,26
.reference _$PSCANVAS$_Ld60
.globl	_$PSCANVAS$_Ld60
_$PSCANVAS$_Ld60:
.reference _$PSCANVAS$_Ld61
	.ascii	"%%BoundingBox: 0 0 612 792\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld63
_$PSCANVAS$_Ld63:
	.short	0,1
	.long	0,-1,11
.reference _$PSCANVAS$_Ld62
.globl	_$PSCANVAS$_Ld62
_$PSCANVAS$_Ld62:
.reference _$PSCANVAS$_Ld63
	.ascii	"%%Creator: \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld65
_$PSCANVAS$_Ld65:
	.short	0,1
	.long	0,-1,9
.reference _$PSCANVAS$_Ld64
.globl	_$PSCANVAS$_Ld64
_$PSCANVAS$_Ld64:
.reference _$PSCANVAS$_Ld65
	.ascii	"%%Title: \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld67
_$PSCANVAS$_Ld67:
	.short	0,1
	.long	0,-1,16
.reference _$PSCANVAS$_Ld66
.globl	_$PSCANVAS$_Ld66
_$PSCANVAS$_Ld66:
.reference _$PSCANVAS$_Ld67
	.ascii	"%%Pages: (atend)\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld69
_$PSCANVAS$_Ld69:
	.short	0,1
	.long	0,-1,19
.reference _$PSCANVAS$_Ld68
.globl	_$PSCANVAS$_Ld68
_$PSCANVAS$_Ld68:
.reference _$PSCANVAS$_Ld69
	.ascii	"%%PageOrder: Ascend\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld71
_$PSCANVAS$_Ld71:
	.short	0,1
	.long	0,-1,25
.reference _$PSCANVAS$_Ld70
.globl	_$PSCANVAS$_Ld70
_$PSCANVAS$_Ld70:
.reference _$PSCANVAS$_Ld71
	.ascii	"/AvantGarde-Book findfont\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld73
_$PSCANVAS$_Ld73:
	.short	0,1
	.long	0,-1,12
.reference _$PSCANVAS$_Ld72
.globl	_$PSCANVAS$_Ld72
_$PSCANVAS$_Ld72:
.reference _$PSCANVAS$_Ld73
	.ascii	"10 scalefont\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld75
_$PSCANVAS$_Ld75:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld74
.globl	_$PSCANVAS$_Ld74
_$PSCANVAS$_Ld74:
.reference _$PSCANVAS$_Ld75
	.ascii	"setfont\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld77
_$PSCANVAS$_Ld77:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld76
.globl	_$PSCANVAS$_Ld76
_$PSCANVAS$_Ld76:
.reference _$PSCANVAS$_Ld77
	.ascii	"%%Page: \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld79
_$PSCANVAS$_Ld79:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld78
.globl	_$PSCANVAS$_Ld78
_$PSCANVAS$_Ld78:
.reference _$PSCANVAS$_Ld79
	.ascii	"newpath\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld81
_$PSCANVAS$_Ld81:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld80
.globl	_$PSCANVAS$_Ld80
_$PSCANVAS$_Ld80:
.reference _$PSCANVAS$_Ld81
	.ascii	"showpage\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld83
_$PSCANVAS$_Ld83:
	.short	0,1
	.long	0,-1,9
.reference _$PSCANVAS$_Ld82
.globl	_$PSCANVAS$_Ld82
_$PSCANVAS$_Ld82:
.reference _$PSCANVAS$_Ld83
	.ascii	"%%Pages: \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld85
_$PSCANVAS$_Ld85:
	.short	0,1
	.long	0,-1,23
.reference _$PSCANVAS$_Ld84
.globl	_$PSCANVAS$_Ld84
_$PSCANVAS$_Ld84:
.reference _$PSCANVAS$_Ld85
	.ascii	"/Pattern setcolorspace \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld87
_$PSCANVAS$_Ld87:
	.short	0,1
	.long	0,-1,10
.reference _$PSCANVAS$_Ld86
.globl	_$PSCANVAS$_Ld86
_$PSCANVAS$_Ld86:
.reference _$PSCANVAS$_Ld87
	.ascii	" setcolor \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld89
_$PSCANVAS$_Ld89:
	.short	0,1
	.long	0,-1,36
.reference _$PSCANVAS$_Ld88
.globl	_$PSCANVAS$_Ld88
_$PSCANVAS$_Ld88:
.reference _$PSCANVAS$_Ld89
	.ascii	"[/Pattern /DeviceRGB] setcolorspace \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld91
_$PSCANVAS$_Ld91:
	.short	0,1
	.long	0,-1,13
.reference _$PSCANVAS$_Ld90
.globl	_$PSCANVAS$_Ld90
_$PSCANVAS$_Ld90:
.reference _$PSCANVAS$_Ld91
	.ascii	" setrgbcolor \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld93
_$PSCANVAS$_Ld93:
	.short	0,1
	.long	0,-1,2
.reference _$PSCANVAS$_Ld92
.globl	_$PSCANVAS$_Ld92
_$PSCANVAS$_Ld92:
.reference _$PSCANVAS$_Ld93
	.ascii	"%f\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld95
_$PSCANVAS$_Ld95:
	.short	0,1
	.long	0,-1,14
.reference _$PSCANVAS$_Ld94
.globl	_$PSCANVAS$_Ld94
_$PSCANVAS$_Ld94:
.reference _$PSCANVAS$_Ld95
	.ascii	" setlinewidth \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld97
_$PSCANVAS$_Ld97:
	.short	0,1
	.long	0,-1,13
.reference _$PSCANVAS$_Ld96
.globl	_$PSCANVAS$_Ld96
_$PSCANVAS$_Ld96:
.reference _$PSCANVAS$_Ld97
	.ascii	"Empty pattern\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld99
_$PSCANVAS$_Ld99:
	.short	0,1
	.long	0,-1,11
.reference _$PSCANVAS$_Ld98
.globl	_$PSCANVAS$_Ld98
_$PSCANVAS$_Ld98:
.reference _$PSCANVAS$_Ld99
	.ascii	"%% PATTERN \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld101
_$PSCANVAS$_Ld101:
	.short	0,1
	.long	0,-1,1
.reference _$PSCANVAS$_Ld100
.globl	_$PSCANVAS$_Ld100
_$PSCANVAS$_Ld100:
.reference _$PSCANVAS$_Ld101
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld103
_$PSCANVAS$_Ld103:
	.short	0,1
	.long	0,-1,18
.reference _$PSCANVAS$_Ld102
.globl	_$PSCANVAS$_Ld102
_$PSCANVAS$_Ld102:
.reference _$PSCANVAS$_Ld103
	.ascii	"proto 12 dict def \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld105
_$PSCANVAS$_Ld105:
	.short	0,1
	.long	0,-1,11
.reference _$PSCANVAS$_Ld104
.globl	_$PSCANVAS$_Ld104
_$PSCANVAS$_Ld104:
.reference _$PSCANVAS$_Ld105
	.ascii	"proto begin\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld107
_$PSCANVAS$_Ld107:
	.short	0,1
	.long	0,-1,18
.reference _$PSCANVAS$_Ld106
.globl	_$PSCANVAS$_Ld106
_$PSCANVAS$_Ld106:
.reference _$PSCANVAS$_Ld107
	.ascii	"/PatternType 1 def\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld109
_$PSCANVAS$_Ld109:
	.short	0,1
	.long	0,-1,17
.reference _$PSCANVAS$_Ld108
.globl	_$PSCANVAS$_Ld108
_$PSCANVAS$_Ld108:
.reference _$PSCANVAS$_Ld109
	.ascii	"/PaintType %d def\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld111
_$PSCANVAS$_Ld111:
	.short	0,1
	.long	0,-1,18
.reference _$PSCANVAS$_Ld110
.globl	_$PSCANVAS$_Ld110
_$PSCANVAS$_Ld110:
.reference _$PSCANVAS$_Ld111
	.ascii	"/TilingType %d def\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld113
_$PSCANVAS$_Ld113:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld112
.globl	_$PSCANVAS$_Ld112
_$PSCANVAS$_Ld112:
.reference _$PSCANVAS$_Ld113
	.ascii	"/BBox [\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld115
_$PSCANVAS$_Ld115:
	.short	0,1
	.long	0,-1,5
.reference _$PSCANVAS$_Ld114
.globl	_$PSCANVAS$_Ld114
_$PSCANVAS$_Ld114:
.reference _$PSCANVAS$_Ld115
	.ascii	"] def\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld117
_$PSCANVAS$_Ld117:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld116
.globl	_$PSCANVAS$_Ld116
_$PSCANVAS$_Ld116:
.reference _$PSCANVAS$_Ld117
	.ascii	"/XStep \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld119
_$PSCANVAS$_Ld119:
	.short	0,1
	.long	0,-1,4
.reference _$PSCANVAS$_Ld118
.globl	_$PSCANVAS$_Ld118
_$PSCANVAS$_Ld118:
.reference _$PSCANVAS$_Ld119
	.ascii	" def\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld121
_$PSCANVAS$_Ld121:
	.short	0,1
	.long	0,-1,7
.reference _$PSCANVAS$_Ld120
.globl	_$PSCANVAS$_Ld120
_$PSCANVAS$_Ld120:
.reference _$PSCANVAS$_Ld121
	.ascii	"/YStep \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld123
_$PSCANVAS$_Ld123:
	.short	0,1
	.long	0,-1,18
.reference _$PSCANVAS$_Ld122
.globl	_$PSCANVAS$_Ld122
_$PSCANVAS$_Ld122:
.reference _$PSCANVAS$_Ld123
	.ascii	"/PaintProc { begin\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld125
_$PSCANVAS$_Ld125:
	.short	0,1
	.long	0,-1,14
.reference _$PSCANVAS$_Ld124
.globl	_$PSCANVAS$_Ld124
_$PSCANVAS$_Ld124:
.reference _$PSCANVAS$_Ld125
	.ascii	"end } def end \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld127
_$PSCANVAS$_Ld127:
	.short	0,1
	.long	0,-1,33
.reference _$PSCANVAS$_Ld126
.globl	_$PSCANVAS$_Ld126
_$PSCANVAS$_Ld126:
.reference _$PSCANVAS$_Ld127
	.ascii	"proto [1 0 0 1 0 0] makepattern /\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld129
_$PSCANVAS$_Ld129:
	.short	0,1
	.long	0,-1,9
.reference _$PSCANVAS$_Ld128
.globl	_$PSCANVAS$_Ld128
_$PSCANVAS$_Ld128:
.reference _$PSCANVAS$_Ld129
	.ascii	" exch def\000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld131
_$PSCANVAS$_Ld131:
	.short	0,1
	.long	0,-1,15
.reference _$PSCANVAS$_Ld130
.globl	_$PSCANVAS$_Ld130
_$PSCANVAS$_Ld130:
.reference _$PSCANVAS$_Ld131
	.ascii	"%% END PATTERN \000"

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld133
_$PSCANVAS$_Ld133:
	.short	0,1
	.long	0,-1,8
.reference _$PSCANVAS$_Ld132
.globl	_$PSCANVAS$_Ld132
_$PSCANVAS$_Ld132:
.reference _$PSCANVAS$_Ld133
	.ascii	"Pattern1\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
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

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__WRITEPS$ANSISTRING
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

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPSBRUSH_$__GETASSTRING$$ANSISTRING$stub:
.indirect_symbol _PSCANVAS_TPSBRUSH_$__GETASSTRING$$ANSISTRING
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__TRANSLATEY$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS
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

L_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__RESETPOS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWRECTANGLE$TRECT$BOOLEAN$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWRECTANGLE$TRECT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__ADDFILL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__MOVETO$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__LINETO$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWELLIPSE$TRECT$BOOLEAN$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__DRAWELLIPSE$TRECT$BOOLEAN
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETFONT$$TFPCUSTOMFONT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__UPDATEBOUNDINGBOX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__INSERTPATTERN$TPSPATTERN$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__INSERTPATTERN$TPSPATTERN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__WRITEPS$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__GETCREATOR$$ANSISTRING$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__GETCREATOR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__SETSTREAM$TSTREAM$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__SETSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__FREEPATTERNS$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__FREEPATTERNS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPSPATTERN_$__CREATE$$TPSPATTERN$stub:
.indirect_symbol _PSCANVAS_TPSPATTERN_$__CREATE$$TPSPATTERN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__ADDPATTERN$TPSPATTERN$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__ADDPATTERN$TPSPATTERN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPSPATTERN_$__SETNAME$ANSISTRING$stub:
.indirect_symbol _PSCANVAS_TPSPATTERN_$__SETNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPOSTSCRIPT_$__CHECKSTREAM$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__CHECKSTREAM
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

L_PSCANVAS_TPOSTSCRIPTCANVAS_$__CREATE$TSTREAM$$TPOSTSCRIPTCANVAS$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPTCANVAS_$__CREATE$TSTREAM$$TPOSTSCRIPTCANVAS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
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

L_PSCANVAS_TPOSTSCRIPT_$__ENDDOC$stub:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__ENDDOC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$__DESTROY$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__DESTROY
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PSCANVAS_TPSPATTERN_$__CHANGED$stub:
.indirect_symbol _PSCANVAS_TPSPATTERN_$__CHANGED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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
.globl	_INIT_PSCANVAS_DEF274
_INIT_PSCANVAS_DEF274:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld135
_$PSCANVAS$_Ld135:
	.short	0
	.long	_$PSCANVAS$_Ld136
	.align 2
.globl	_$PSCANVAS$_Ld136
_$PSCANVAS$_Ld136:
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPOSTSCRIPT
_INIT_PSCANVAS_TPOSTSCRIPT:
	.byte	15,11
	.ascii	"TPostScript"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	56
	.long	_INIT_SYSTEM_ANSISTRING
	.long	80

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPOSTSCRIPT
_RTTI_PSCANVAS_TPOSTSCRIPT:
	.byte	15,11
	.ascii	"TPostScript"
	.long	_VMT_PSCANVAS_TPOSTSCRIPT
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	2
	.byte	8
	.ascii	"pscanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPSPAINTTYPE
_INIT_PSCANVAS_TPSPAINTTYPE:
	.byte	3,12
	.ascii	"TPSPaintType"
	.byte	5
	.long	0,1,0
	.byte	9
	.ascii	"ptColored"
	.byte	11
	.ascii	"ptUncolored"
	.byte	8
	.ascii	"pscanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSPAINTTYPE
_RTTI_PSCANVAS_TPSPAINTTYPE:
	.byte	3,12
	.ascii	"TPSPaintType"
	.byte	5
	.long	0,1,0
	.byte	9
	.ascii	"ptColored"
	.byte	11
	.ascii	"ptUncolored"
	.byte	8
	.ascii	"pscanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSPAINTTYPE_s2o
_RTTI_PSCANVAS_TPSPAINTTYPE_s2o:
	.long	2,0
	.long	_RTTI_PSCANVAS_TPSPAINTTYPE+27
	.long	1
	.long	_RTTI_PSCANVAS_TPSPAINTTYPE+37

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSPAINTTYPE_o2s
_RTTI_PSCANVAS_TPSPAINTTYPE_o2s:
	.long	0
	.long	_RTTI_PSCANVAS_TPSPAINTTYPE+27
	.long	_RTTI_PSCANVAS_TPSPAINTTYPE+37

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPSTILETYPE
_INIT_PSCANVAS_TPSTILETYPE:
	.byte	3,11
	.ascii	"TPSTileType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"ttConstant"
	.byte	14
	.ascii	"ttNoDistortion"
	.byte	6
	.ascii	"ttFast"
	.byte	8
	.ascii	"pscanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSTILETYPE
_RTTI_PSCANVAS_TPSTILETYPE:
	.byte	3,11
	.ascii	"TPSTileType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"ttConstant"
	.byte	14
	.ascii	"ttNoDistortion"
	.byte	6
	.ascii	"ttFast"
	.byte	8
	.ascii	"pscanvas"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSTILETYPE_s2o
_RTTI_PSCANVAS_TPSTILETYPE_s2o:
	.long	3,0
	.long	_RTTI_PSCANVAS_TPSTILETYPE+26
	.long	2
	.long	_RTTI_PSCANVAS_TPSTILETYPE+52
	.long	1
	.long	_RTTI_PSCANVAS_TPSTILETYPE+37

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSTILETYPE_o2s
_RTTI_PSCANVAS_TPSTILETYPE_o2s:
	.long	0
	.long	_RTTI_PSCANVAS_TPSTILETYPE+26
	.long	_RTTI_PSCANVAS_TPSTILETYPE+37
	.long	_RTTI_PSCANVAS_TPSTILETYPE+52

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF133
_INIT_PSCANVAS_DEF133:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF136
_INIT_PSCANVAS_DEF136:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF170
_INIT_PSCANVAS_DEF170:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF171
_INIT_PSCANVAS_DEF171:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF172
_INIT_PSCANVAS_DEF172:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF173
_INIT_PSCANVAS_DEF173:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF193
_INIT_PSCANVAS_DEF193:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF194
_INIT_PSCANVAS_DEF194:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF195
_INIT_PSCANVAS_DEF195:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF196
_INIT_PSCANVAS_DEF196:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF197
_INIT_PSCANVAS_DEF197:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF151
_INIT_PSCANVAS_DEF151:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF154
_INIT_PSCANVAS_DEF154:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF159
_INIT_PSCANVAS_DEF159:
	.byte	12
	.ascii	"\000"
	.long	4,9
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF212
_INIT_PSCANVAS_DEF212:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF213
_INIT_PSCANVAS_DEF213:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF214
_INIT_PSCANVAS_DEF214:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF215
_INIT_PSCANVAS_DEF215:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF216
_INIT_PSCANVAS_DEF216:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF221
_INIT_PSCANVAS_DEF221:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF222
_INIT_PSCANVAS_DEF222:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld138
_$PSCANVAS$_Ld138:
	.short	0
	.long	_$PSCANVAS$_Ld139
	.align 2
.globl	_$PSCANVAS$_Ld139
_$PSCANVAS$_Ld139:
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPOSTSCRIPTCANVAS
_INIT_PSCANVAS_TPOSTSCRIPTCANVAS:
	.byte	15,17
	.ascii	"TPostScriptCanvas"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPOSTSCRIPTCANVAS
_RTTI_PSCANVAS_TPOSTSCRIPTCANVAS:
	.byte	15,17
	.ascii	"TPostScriptCanvas"
	.long	_VMT_PSCANVAS_TPOSTSCRIPTCANVAS
	.long	_RTTI_FPCANVAS_TFPCUSTOMCANVAS
	.short	0
	.byte	8
	.ascii	"pscanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF332
_INIT_PSCANVAS_DEF332:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF333
_INIT_PSCANVAS_DEF333:
	.byte	12
	.ascii	"\000"
	.long	4,9
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF334
_INIT_PSCANVAS_DEF334:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF335
_INIT_PSCANVAS_DEF335:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF336
_INIT_PSCANVAS_DEF336:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld141
_$PSCANVAS$_Ld141:
	.short	0
	.long	_$PSCANVAS$_Ld142
	.align 2
.globl	_$PSCANVAS$_Ld142
_$PSCANVAS$_Ld142:
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPSPATTERN
_INIT_PSCANVAS_TPSPATTERN:
	.byte	15,10
	.ascii	"TPSPattern"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	56
	.long	_INIT_SYSTEM_ANSISTRING
	.long	84

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSPATTERN
_RTTI_PSCANVAS_TPSPATTERN:
	.byte	15,10
	.ascii	"TPSPattern"
	.long	_VMT_PSCANVAS_TPSPATTERN
	.long	_RTTI_FPCANVAS_TFPCANVASHELPER
	.short	0
	.byte	8
	.ascii	"pscanvas"
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_PPSPATTERN
_INIT_PSCANVAS_PPSPATTERN:
	.byte	0
	.ascii	"\012PPSPattern"

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_PPSPATTERN
_RTTI_PSCANVAS_PPSPATTERN:
	.byte	0
	.ascii	"\012PPSPattern"

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF302
_INIT_PSCANVAS_DEF302:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF303
_INIT_PSCANVAS_DEF303:
	.byte	12
	.ascii	"\000"
	.long	4,9
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF304
_INIT_PSCANVAS_DEF304:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PSCANVAS_DEF305
_INIT_PSCANVAS_DEF305:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld144
_$PSCANVAS$_Ld144:
	.short	0
	.long	_$PSCANVAS$_Ld145
	.align 2
.globl	_$PSCANVAS$_Ld145
_$PSCANVAS$_Ld145:
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPSPEN
_INIT_PSCANVAS_TPSPEN:
	.byte	15,6
	.ascii	"TPSPen"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSPEN
_RTTI_PSCANVAS_TPSPEN:
	.byte	15,6
	.ascii	"TPSPen"
	.long	_VMT_PSCANVAS_TPSPEN
	.long	_RTTI_FPCANVAS_TFPCUSTOMPEN
	.short	0
	.byte	8
	.ascii	"pscanvas"
	.short	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld147
_$PSCANVAS$_Ld147:
	.short	0
	.long	_$PSCANVAS$_Ld148
	.align 2
.globl	_$PSCANVAS$_Ld148
_$PSCANVAS$_Ld148:
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPSBRUSH
_INIT_PSCANVAS_TPSBRUSH:
	.byte	15,8
	.ascii	"TPSBrush"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSBRUSH
_RTTI_PSCANVAS_TPSBRUSH:
	.byte	15,8
	.ascii	"TPSBrush"
	.long	_VMT_PSCANVAS_TPSBRUSH
	.long	_RTTI_FPCANVAS_TFPCUSTOMBRUSH
	.short	0
	.byte	8
	.ascii	"pscanvas"
	.short	0

.const_data
	.align 2
.globl	_$PSCANVAS$_Ld150
_$PSCANVAS$_Ld150:
	.short	0
	.long	_$PSCANVAS$_Ld151
	.align 2
.globl	_$PSCANVAS$_Ld151
_$PSCANVAS$_Ld151:
	.short	0

.const_data
	.align 2
.globl	_INIT_PSCANVAS_TPSFONT
_INIT_PSCANVAS_TPSFONT:
	.byte	15,7
	.ascii	"TPSFont"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PSCANVAS_TPSFONT
_RTTI_PSCANVAS_TPSFONT:
	.byte	15,7
	.ascii	"TPSFont"
	.long	_VMT_PSCANVAS_TPSFONT
	.long	_RTTI_FPCANVAS_TFPCUSTOMFONT
	.short	0
	.byte	8
	.ascii	"pscanvas"
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
L_$PSCANVAS$_Ld1$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PSCANVAS_TPSBRUSH$non_lazy_ptr:
.indirect_symbol _VMT_PSCANVAS_TPSBRUSH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld3$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld5$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld7$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld9$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld11$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld13$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld15$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld17$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld19$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld21$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld23$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld25$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld27$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld29$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld31$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld33$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld35$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld37$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld39$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld41$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld43$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld45$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld47$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld49$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld51$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld52$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld54$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld54
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld56$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld56
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PSCANVAS_TPSFONT$non_lazy_ptr:
.indirect_symbol _VMT_PSCANVAS_TPSFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PSCANVAS_TPSPEN$non_lazy_ptr:
.indirect_symbol _VMT_PSCANVAS_TPSPEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PSCANVAS_TPSPATTERN$non_lazy_ptr:
.indirect_symbol _VMT_PSCANVAS_TPSPATTERN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld58$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld58
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld60$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld60
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld62$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld62
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld64$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld66$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld66
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld68$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld68
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld70$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld70
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld72$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld72
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld74$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld74
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PSCANVAS_TPOSTSCRIPT_$__PATTERNCHANGED$TOBJECT$non_lazy_ptr:
.indirect_symbol _PSCANVAS_TPOSTSCRIPT_$__PATTERNCHANGED$TOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PSCANVAS_SERRDOCUMENTALREADYSTARTED$non_lazy_ptr:
.indirect_symbol _RESSTR_PSCANVAS_SERRDOCUMENTALREADYSTARTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PSCANVAS_TPOSTSCRIPTCANVAS$non_lazy_ptr:
.indirect_symbol _VMT_PSCANVAS_TPOSTSCRIPTCANVAS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld76$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld76
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld78$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld78
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld80$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld80
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld82$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld82
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PSCANVAS_SERRNOSTREAMASSIGNED$non_lazy_ptr:
.indirect_symbol _RESSTR_PSCANVAS_SERRNOSTREAMASSIGNED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld84$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld84
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld86$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld86
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld88$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld88
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld90$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld90
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld92$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld92
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld94$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld94
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld96$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld96
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld98$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld98
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld100$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld100
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld102$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld102
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld104$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld104
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld106$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld106
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld108$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld108
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld110$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld110
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld112$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld112
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld114$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld114
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld116$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld116
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld118$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld118
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld120$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld120
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld122$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld122
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld124$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld124
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld126$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld126
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld128$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld128
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld130$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld130
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PSCANVAS$_Ld132$non_lazy_ptr:
.indirect_symbol _$PSCANVAS$_Ld132
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_PSCANVAS_START
_RESSTR_PSCANVAS_START:
	.long	_$PSCANVAS$_Ld152
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_PSCANVAS_SERRNOSTREAMASSIGNED
_RESSTR_PSCANVAS_SERRNOSTREAMASSIGNED:
	.long	_$PSCANVAS$_Ld156
	.long	_$PSCANVAS$_Ld154
	.long	_$PSCANVAS$_Ld154
	.long	161458020

.data
	.align 2
.globl	_RESSTR_PSCANVAS_SERRDOCUMENTALREADYSTARTED
_RESSTR_PSCANVAS_SERRDOCUMENTALREADYSTARTED:
	.long	_$PSCANVAS$_Ld160
	.long	_$PSCANVAS$_Ld158
	.long	_$PSCANVAS$_Ld158
	.long	15381950

.data
	.align 2
.globl	_RESSTR_PSCANVAS_END
_RESSTR_PSCANVAS_END:
	.long	_RESSTR_PSCANVAS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

