# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__GETPOSITION$$INT64
_RESDATASTREAM_TCACHEDDATASTREAM_$__GETPOSITION$$INT64:
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
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__SETPOSITION$INT64
_RESDATASTREAM_TCACHEDDATASTREAM_$__SETPOSITION$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,16(%edx)
	movl	12(%ebp),%eax
	movl	%eax,20(%edx)
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__GETSIZE$$INT64
_RESDATASTREAM_TCACHEDDATASTREAM_$__GETSIZE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__SETSIZE64$INT64
_RESDATASTREAM_TCACHEDDATASTREAM_$__SETSIZE64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj16
Lj16:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_CLASSES_EINVALIDOPERATION$non_lazy_ptr-Lj16(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj16(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM
_RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj25
	jmp	Lj26
Lj25:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj26:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj31
	jmp	Lj32
Lj31:
	jmp	Lj23
Lj32:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj35
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj39
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	12(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	$0,20(%eax)
Lj39:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	call	LFPC_RERAISE$stub
Lj40:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj49
Lj50:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj48
	jmp	Lj49
Lj48:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj49:
Lj35:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj54
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj56:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj54:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj53
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj53:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj37
Lj37:
Lj23:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT
_RESDATASTREAM_TCACHEDDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj62
Lj62:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_CLASSES_EINVALIDOPERATION$non_lazy_ptr-Lj62(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj62(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
_RESDATASTREAM_TCACHEDDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj73
	decl	%eax
	je	Lj74
	decl	%eax
	je	Lj75
	jmp	Lj72
Lj73:
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj71
Lj74:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	addl	8(%ebp),%eax
	adcl	12(%ebp),%edx
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	jmp	Lj71
Lj75:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	12(%eax),%eax
	addl	8(%ebp),%edx
	adcl	12(%ebp),%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj71
Lj72:
Lj71:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM_$__CREATE$crc9B591F43
_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM_$__CREATE$crc9B591F43:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj94
	jmp	Lj95
Lj94:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj95:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj100
	jmp	Lj101
Lj100:
	jmp	Lj92
Lj101:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj104
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj108
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%ecx
	movl	%eax,24(%ecx)
	movl	%edx,28(%ecx)
Lj108:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj109
	call	LFPC_RERAISE$stub
Lj109:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj127
	jmp	Lj126
Lj127:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj125
	jmp	Lj126
Lj125:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj126:
Lj104:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj106
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj131
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj132
	jmp	Lj133
Lj132:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj133:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj131:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj130
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj130:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj106
Lj106:
Lj92:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM_$__READ$formal$LONGINT$$LONGINT
_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	8(%ebx),%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	12(%ebx),%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj144
	jmp	Lj145
Lj144:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj145:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj148
	jmp	Lj149
Lj148:
	movl	$0,-16(%ebp)
Lj149:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj152
	jmp	Lj153
Lj152:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%ecx
	addl	24(%ecx),%eax
	adcl	28(%ecx),%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%ecx
	subl	24(%ecx),%eax
	sbbl	28(%ecx),%edx
	movl	-12(%ebp),%ecx
	movl	%eax,16(%ecx)
	movl	%edx,20(%ecx)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj153:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM
_RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	call	Lj181
Lj181:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj182
	jmp	Lj183
Lj182:
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj181(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj192
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj192:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj194
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj217
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj217:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj216
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj216:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj194
Lj194:
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	%ecx,4(%edx)
	movl	-4(%ebp),%edx
	movl	$1,8(%edx)
Lj183:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN
_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCACHED$BOOLEAN
_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCACHED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj232
	jmp	Lj233
Lj232:
	movl	-8(%ebp),%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM$stub
Lj233:
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETPOSITION$$INT64
_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETPOSITION$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETPOSITION$INT64
_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETPOSITION$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETSIZE$$INT64
_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETSIZE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETSIZE64$INT64
_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETSIZE64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM$stub
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D
_RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj263
Lj263:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj264
	jmp	Lj265
Lj264:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj265:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj270
	jmp	Lj271
Lj270:
	jmp	Lj262
Lj271:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj274
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj278
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj281
	jmp	Lj282
Lj281:
	movl	-12(%ebp),%eax
	movl	$1,8(%eax)
	jmp	Lj285
Lj282:
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
Lj285:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj291
	decl	%eax
	je	Lj290
	jmp	Lj289
Lj290:
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj263(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	jmp	Lj288
Lj291:
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	$0,%eax
	movl	8(%ebp),%esi
	call	*144(%esi)
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	jmp	Lj288
Lj289:
Lj288:
	movl	-12(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,12(%edx)
Lj278:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj279
	call	LFPC_RERAISE$stub
Lj279:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj314
	jmp	Lj313
Lj314:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj312
	jmp	Lj313
Lj312:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj313:
Lj274:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj276
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj318
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj319
	jmp	Lj320
Lj319:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj320:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj318:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj317
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj317:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj276
Lj276:
Lj262:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__DESTROY
_RESDATASTREAM_TRESOURCEDATASTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj327
	jmp	Lj328
Lj327:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj328:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$2,%eax
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj332:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj337
	jmp	Lj336
Lj337:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj335
	jmp	Lj336
Lj335:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj336:
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN
_RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj344
	jmp	Lj345
Lj344:
	jmp	Lj340
Lj345:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj348
	jmp	Lj349
Lj348:
	jmp	Lj340
Lj349:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	%edx,%esi
	jne	Lj351
	cmpl	%eax,%ebx
	jne	Lj351
	jmp	Lj350
Lj350:
	movb	$1,-9(%ebp)
	jmp	Lj356
Lj351:
	movb	$0,-9(%ebp)
Lj356:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj357
	jmp	Lj358
Lj357:
	jmp	Lj340
Lj358:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-44(%ebp)
	jmp	Lj380
	.align 2
Lj379:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj396
	jmp	Lj397
Lj396:
	movl	$0,-44(%ebp)
	jmp	Lj381
Lj397:
	subl	$4,-44(%ebp)
Lj380:
	movl	-44(%ebp),%eax
	cmpl	$4,%eax
	jae	Lj379
	jmp	Lj381
Lj381:
	jmp	Lj401
	.align 2
Lj400:
	leal	-21(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	leal	-22(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-21(%ebp),%al
	cmpb	-22(%ebp),%al
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj417
	jmp	Lj418
Lj417:
	jmp	Lj402
Lj418:
	decl	-44(%ebp)
Lj401:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj400
	jmp	Lj402
Lj402:
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-36(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj340:
	movb	-9(%ebp),%al
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM
_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj428
Lj428:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$2,%eax
	jne	Lj429
	jmp	Lj430
Lj429:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj430:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj433
	jmp	Lj434
Lj433:
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj428(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	$1,8(%eax)
	jmp	Lj443
Lj434:
	movl	-8(%ebp),%eax
	movl	$2,8(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj443:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__READ$formal$LONGINT$$LONGINT
_RESDATASTREAM_TRESOURCEDATASTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT
_RESDATASTREAM_TRESOURCEDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
_RESDATASTREAM_TRESOURCEDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj474
	decl	%eax
	je	Lj475
	decl	%eax
	je	Lj476
	jmp	Lj473
Lj474:
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj472
Lj475:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	addl	8(%ebp),%eax
	adcl	12(%ebp),%edx
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	jmp	Lj472
Lj476:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	addl	8(%ebp),%eax
	adcl	12(%ebp),%edx
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	jmp	Lj472
Lj473:
Lj472:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$RESDATASTREAM$_Ld1
_$RESDATASTREAM$_Ld1:
	.byte	17
	.ascii	"TCachedDataStream"

.const_data
	.align 2
.globl	_VMT_RESDATASTREAM_TCACHEDDATASTREAM
_VMT_RESDATASTREAM_TCACHEDDATASTREAM:
	.long	24,-24
	.long	_VMT_CLASSES_TSTREAM
	.long	_$RESDATASTREAM$_Ld1
	.long	0,0
	.long	_$RESDATASTREAM$_Ld2
	.long	_RTTI_RESDATASTREAM_TCACHEDDATASTREAM
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__GETPOSITION$$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SETPOSITION$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__GETSIZE$$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM
	.long	0

.const_data
	.align 2
.globl	_$RESDATASTREAM$_Ld4
_$RESDATASTREAM$_Ld4:
	.byte	25
	.ascii	"TCachedResourceDataStream"

.const_data
	.align 2
.globl	_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM:
	.long	32,-32
	.long	_VMT_RESDATASTREAM_TCACHEDDATASTREAM
	.long	_$RESDATASTREAM$_Ld4
	.long	0,0
	.long	_$RESDATASTREAM$_Ld5
	.long	_RTTI_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__GETPOSITION$$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SETPOSITION$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__GETSIZE$$INT64
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM_$__CREATE$crc9B591F43
	.long	0

.const_data
	.align 2
.globl	_$RESDATASTREAM$_Ld7
_$RESDATASTREAM$_Ld7:
	.byte	19
	.ascii	"TResourceDataStream"

.const_data
	.align 2
.globl	_VMT_RESDATASTREAM_TRESOURCEDATASTREAM
_VMT_RESDATASTREAM_TRESOURCEDATASTREAM:
	.long	16,-16
	.long	_VMT_CLASSES_TSTREAM
	.long	_$RESDATASTREAM$_Ld7
	.long	0,0
	.long	_$RESDATASTREAM$_Ld8
	.long	_RTTI_RESDATASTREAM_TRESOURCEDATASTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__DESTROY
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
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETPOSITION$$INT64
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETPOSITION$INT64
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETSIZE$$INT64
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_RESDATASTREAM_TRESOURCEDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_RESDATASTREAM
_THREADVARLIST_RESDATASTREAM:
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

L_RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM$stub:
.indirect_symbol _RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
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

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__CHECKCHANGESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
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
.globl	_$RESDATASTREAM$_Ld2
_$RESDATASTREAM$_Ld2:
	.short	0
	.long	_$RESDATASTREAM$_Ld3
	.align 2
.globl	_$RESDATASTREAM$_Ld3
_$RESDATASTREAM$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESDATASTREAM_TCACHEDDATASTREAM
_INIT_RESDATASTREAM_TCACHEDDATASTREAM:
	.byte	15,17
	.ascii	"TCachedDataStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TCACHEDDATASTREAM
_RTTI_RESDATASTREAM_TCACHEDDATASTREAM:
	.byte	15,17
	.ascii	"TCachedDataStream"
	.long	_VMT_RESDATASTREAM_TCACHEDDATASTREAM
	.long	_RTTI_CLASSES_TSTREAM
	.short	0
	.byte	13
	.ascii	"resdatastream"
	.short	0

.const_data
	.align 2
.globl	_$RESDATASTREAM$_Ld5
_$RESDATASTREAM$_Ld5:
	.short	0
	.long	_$RESDATASTREAM$_Ld6
	.align 2
.globl	_$RESDATASTREAM$_Ld6
_$RESDATASTREAM$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
_INIT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM:
	.byte	15,25
	.ascii	"TCachedResourceDataStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
_RTTI_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM:
	.byte	15,25
	.ascii	"TCachedResourceDataStream"
	.long	_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
	.long	_RTTI_RESDATASTREAM_TCACHEDDATASTREAM
	.short	0
	.byte	13
	.ascii	"resdatastream"
	.short	0

.const_data
	.align 2
.globl	_INIT_RESDATASTREAM_TCACHEDSTREAMCLASS
_INIT_RESDATASTREAM_TCACHEDSTREAMCLASS:
	.byte	0
	.ascii	"\022TCachedStreamClass"

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TCACHEDSTREAMCLASS
_RTTI_RESDATASTREAM_TCACHEDSTREAMCLASS:
	.byte	0
	.ascii	"\022TCachedStreamClass"

.const_data
	.align 2
.globl	_INIT_RESDATASTREAM_TUNDERLYINGSTREAMTYPE
_INIT_RESDATASTREAM_TUNDERLYINGSTREAMTYPE:
	.byte	3,21
	.ascii	"TUnderlyingStreamType"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"usCached"
	.byte	8
	.ascii	"usMemory"
	.byte	8
	.ascii	"usCustom"
	.byte	13
	.ascii	"resdatastream"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE
_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE:
	.byte	3,21
	.ascii	"TUnderlyingStreamType"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"usCached"
	.byte	8
	.ascii	"usMemory"
	.byte	8
	.ascii	"usCustom"
	.byte	13
	.ascii	"resdatastream"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE_s2o
_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE_s2o:
	.long	3,0
	.long	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE+36
	.long	2
	.long	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE+54
	.long	1
	.long	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE+45

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE_o2s
_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE_o2s:
	.long	0
	.long	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE+36
	.long	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE+45
	.long	_RTTI_RESDATASTREAM_TUNDERLYINGSTREAMTYPE+54

.const_data
	.align 2
.globl	_$RESDATASTREAM$_Ld8
_$RESDATASTREAM$_Ld8:
	.short	0
	.long	_$RESDATASTREAM$_Ld9
	.align 2
.globl	_$RESDATASTREAM$_Ld9
_$RESDATASTREAM$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESDATASTREAM_TRESOURCEDATASTREAM
_INIT_RESDATASTREAM_TRESOURCEDATASTREAM:
	.byte	15,19
	.ascii	"TResourceDataStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESDATASTREAM_TRESOURCEDATASTREAM
_RTTI_RESDATASTREAM_TRESOURCEDATASTREAM:
	.byte	15,19
	.ascii	"TResourceDataStream"
	.long	_VMT_RESDATASTREAM_TRESOURCEDATASTREAM
	.long	_RTTI_CLASSES_TSTREAM
	.short	0
	.byte	13
	.ascii	"resdatastream"
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
L_VMT_CLASSES_EINVALIDOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_EINVALIDOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
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

