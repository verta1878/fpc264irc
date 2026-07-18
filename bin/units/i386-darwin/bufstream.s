# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__SETCAPACITY$LONGINT
_BUFSTREAM_TBUFSTREAM_$__SETCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj7
	jmp	Lj8
Lj7:
	movl	L_RESSTR_BUFSTREAM_SERRCAPACITYTOOSMALL$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING$stub
Lj8:
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
Lj6:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__GETPOSITION$$INT64
_BUFSTREAM_TBUFSTREAM_$__GETPOSITION$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	16(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__GETSIZE$$INT64
_BUFSTREAM_TBUFSTREAM_$__GETSIZE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
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
.globl	_BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING
_BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj30
Lj30:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_ESTREAMERROR$non_lazy_ptr-Lj30(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj30(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__FILLBUFFER
_BUFSTREAM_TBUFSTREAM_$__FILLBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	cmpl	$0,%ecx
	jle	Lj41
	jmp	Lj42
Lj41:
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
Lj42:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	addl	%eax,-12(%ebp)
	movl	$1,-8(%ebp)
	jmp	Lj50
	.align 2
Lj49:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%eax),%ecx
	movl	28(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	addl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,28(%eax)
Lj50:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj60
	jmp	Lj51
Lj60:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%eax
	cmpl	32(%edx),%eax
	jl	Lj49
	jmp	Lj51
Lj51:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__FLUSHBUFFER
_BUFSTREAM_TBUFSTREAM_$__FLUSHBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj62
Lj62:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	addl	%eax,-12(%ebp)
	movl	$1,-8(%ebp)
	jmp	Lj68
	.align 2
Lj67:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	addl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,24(%eax)
Lj68:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj78
	jmp	Lj69
Lj78:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	28(%eax),%edx
	movl	24(%ecx),%eax
	subl	%eax,%edx
	cmpl	$0,%edx
	jg	Lj67
	jmp	Lj69
Lj69:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	cmpl	$0,%ecx
	jle	Lj79
	jmp	Lj80
Lj79:
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	jmp	Lj85
Lj80:
	movl	L_RESSTR_BUFSTREAM_SERRCOULDNOTFLUSHBUFFER$non_lazy_ptr-Lj62(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING$stub
Lj85:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$LONGINT$$TBUFSTREAM
_BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$LONGINT$$TBUFSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj92
	jmp	Lj93
Lj92:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj93:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	jmp	Lj99
Lj98:
	jmp	Lj90
Lj99:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj102
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj106
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFSTREAM_TBUFSTREAM_$__SETCAPACITY$LONGINT$stub
Lj106:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj107
	call	LFPC_RERAISE$stub
Lj107:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj121
	jmp	Lj120
Lj121:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj119
	jmp	Lj120
Lj119:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj120:
Lj102:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj104
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj125
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj126
	jmp	Lj127
Lj126:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj127:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj125:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj124
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj124:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj104
Lj104:
Lj90:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$$TBUFSTREAM
_BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$$TBUFSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj133
Lj133:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj134
	jmp	Lj135
Lj134:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj135:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj140
	jmp	Lj141
Lj140:
	jmp	Lj132
Lj141:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj144
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj148
	movl	L_TC_BUFSTREAM_DEFAULTBUFFERCAPACITY$non_lazy_ptr-Lj133(%ebx),%eax
	movl	(%eax),%eax
	shll	$10,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$LONGINT$$TBUFSTREAM$stub
Lj148:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj149
	call	LFPC_RERAISE$stub
Lj149:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj161
	jmp	Lj160
Lj161:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj159
	jmp	Lj160
Lj159:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj160:
Lj144:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj146
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj165
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj166
	jmp	Lj167
Lj166:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj167:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj165:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj164
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj164:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj146
Lj146:
Lj132:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TBUFSTREAM_$__DESTROY
_BUFSTREAM_TBUFSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj174
	jmp	Lj175
Lj174:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj175:
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_BUFSTREAM_TBUFSTREAM_$__SETCAPACITY$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TOWNERSTREAM_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj190
	jmp	Lj189
Lj190:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj188
	jmp	Lj189
Lj188:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj189:
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TREADBUFSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
_BUFSTREAM_TREADBUFSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	%edx,4(%esp)
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TREADBUFSTREAM_$__READ$formal$LONGINT$$LONGINT
_BUFSTREAM_TREADBUFSTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$1,-28(%ebp)
	jmp	Lj214
	.align 2
Lj213:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	cmpl	$0,%ecx
	jle	Lj216
	jmp	Lj217
Lj216:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*144(%edx)
Lj217:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%ecx
	movl	24(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj222
	jmp	Lj223
Lj222:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj226
	jmp	Lj227
Lj226:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj227:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	addl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,24(%eax)
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj223:
Lj214:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj238
	jmp	Lj215
Lj238:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj213
	jmp	Lj215
Lj215:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-12(%ebp),%ecx
	movl	12(%ecx),%esi
	movl	16(%ecx),%ebx
	addl	%edx,%esi
	adcl	%eax,%ebx
	movl	%esi,12(%ecx)
	movl	%ebx,16(%ecx)
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TWRITEBUFSTREAM_$__DESTROY
_BUFSTREAM_TWRITEBUFSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj241
	jmp	Lj242
Lj241:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj242:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_BUFSTREAM_TBUFSTREAM_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj253
	jmp	Lj252
Lj253:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj251
	jmp	Lj252
Lj251:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj252:
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TWRITEBUFSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
_BUFSTREAM_TWRITEBUFSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj257
Lj257:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj259
	cmpl	$0,%eax
	jne	Lj259
	jmp	Lj260
Lj260:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	je	Lj258
	jmp	Lj259
Lj258:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj263
Lj259:
	movl	L_RESSTR_BUFSTREAM_SERRINVALIDSEEK$non_lazy_ptr-Lj257(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING$stub
Lj263:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFSTREAM_TWRITEBUFSTREAM_$__WRITE$formal$LONGINT$$LONGINT
_BUFSTREAM_TWRITEBUFSTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj275
	.align 2
Lj274:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%eax
	cmpl	32(%edx),%eax
	je	Lj277
	jmp	Lj278
Lj277:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj278:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	32(%eax),%ecx
	movl	28(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj285
	jmp	Lj286
Lj285:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj286:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,28(%eax)
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-32(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj275:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj274
	jmp	Lj276
Lj276:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-12(%ebp),%ecx
	movl	12(%ecx),%esi
	movl	16(%ecx),%ebx
	addl	%edx,%esi
	adcl	%eax,%ebx
	movl	%esi,12(%ecx)
	movl	%ebx,16(%ecx)
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld1
_$BUFSTREAM$_Ld1:
	.byte	10
	.ascii	"TBufStream"

.const_data
	.align 2
.globl	_VMT_BUFSTREAM_TBUFSTREAM
_VMT_BUFSTREAM_TBUFSTREAM:
	.long	36,-36
	.long	_VMT_CLASSES_TOWNERSTREAM
	.long	_$BUFSTREAM$_Ld1
	.long	0,0
	.long	_$BUFSTREAM$_Ld2
	.long	_RTTI_BUFSTREAM_TBUFSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_BUFSTREAM_TBUFSTREAM_$__DESTROY
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
	.long	_BUFSTREAM_TBUFSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_BUFSTREAM_TBUFSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_BUFSTREAM_TBUFSTREAM_$__FILLBUFFER
	.long	_BUFSTREAM_TBUFSTREAM_$__FLUSHBUFFER
	.long	0

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld4
_$BUFSTREAM$_Ld4:
	.byte	14
	.ascii	"TReadBufStream"

.const_data
	.align 2
.globl	_VMT_BUFSTREAM_TREADBUFSTREAM
_VMT_BUFSTREAM_TREADBUFSTREAM:
	.long	36,-36
	.long	_VMT_BUFSTREAM_TBUFSTREAM
	.long	_$BUFSTREAM$_Ld4
	.long	0,0
	.long	_$BUFSTREAM$_Ld5
	.long	_RTTI_BUFSTREAM_TREADBUFSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_BUFSTREAM_TBUFSTREAM_$__DESTROY
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
	.long	_BUFSTREAM_TBUFSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_BUFSTREAM_TBUFSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_BUFSTREAM_TREADBUFSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_BUFSTREAM_TREADBUFSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_BUFSTREAM_TBUFSTREAM_$__FILLBUFFER
	.long	_BUFSTREAM_TBUFSTREAM_$__FLUSHBUFFER
	.long	0

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld7
_$BUFSTREAM$_Ld7:
	.byte	15
	.ascii	"TWriteBufStream"

.const_data
	.align 2
.globl	_VMT_BUFSTREAM_TWRITEBUFSTREAM
_VMT_BUFSTREAM_TWRITEBUFSTREAM:
	.long	36,-36
	.long	_VMT_BUFSTREAM_TBUFSTREAM
	.long	_$BUFSTREAM$_Ld7
	.long	0,0
	.long	_$BUFSTREAM$_Ld8
	.long	_RTTI_BUFSTREAM_TWRITEBUFSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_BUFSTREAM_TWRITEBUFSTREAM_$__DESTROY
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
	.long	_BUFSTREAM_TBUFSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_BUFSTREAM_TBUFSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_BUFSTREAM_TWRITEBUFSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_BUFSTREAM_TWRITEBUFSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_BUFSTREAM_TBUFSTREAM_$__FILLBUFFER
	.long	_BUFSTREAM_TBUFSTREAM_$__FLUSHBUFFER
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_BUFSTREAM
_THREADVARLIST_BUFSTREAM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$BUFSTREAM$_Ld11
_$BUFSTREAM$_Ld11:
	.short	0,1
	.long	0,-1,9
.reference _$BUFSTREAM$_Ld10
.globl	_$BUFSTREAM$_Ld10
_$BUFSTREAM$_Ld10:
.reference _$BUFSTREAM$_Ld11
	.ascii	"BUFSTREAM\000"

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld13
_$BUFSTREAM$_Ld13:
	.short	0,1
	.long	0,-1,41
.reference _$BUFSTREAM$_Ld12
.globl	_$BUFSTREAM$_Ld12
_$BUFSTREAM$_Ld12:
.reference _$BUFSTREAM$_Ld13
	.ascii	"Capacity is less than actual buffer size.\000"
	.align 2
.globl	_$BUFSTREAM$_Ld15
_$BUFSTREAM$_Ld15:
	.short	0,1
	.long	0,-1,30
.reference _$BUFSTREAM$_Ld14
.globl	_$BUFSTREAM$_Ld14
_$BUFSTREAM$_Ld14:
.reference _$BUFSTREAM$_Ld15
	.ascii	"bufstream.serrcapacitytoosmall\000"

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld17
_$BUFSTREAM$_Ld17:
	.short	0,1
	.long	0,-1,22
.reference _$BUFSTREAM$_Ld16
.globl	_$BUFSTREAM$_Ld16
_$BUFSTREAM$_Ld16:
.reference _$BUFSTREAM$_Ld17
	.ascii	"Could not flush buffer\000"
	.align 2
.globl	_$BUFSTREAM$_Ld19
_$BUFSTREAM$_Ld19:
	.short	0,1
	.long	0,-1,33
.reference _$BUFSTREAM$_Ld18
.globl	_$BUFSTREAM$_Ld18
_$BUFSTREAM$_Ld18:
.reference _$BUFSTREAM$_Ld19
	.ascii	"bufstream.serrcouldnotflushbuffer\000"

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld21
_$BUFSTREAM$_Ld21:
	.short	0,1
	.long	0,-1,29
.reference _$BUFSTREAM$_Ld20
.globl	_$BUFSTREAM$_Ld20
_$BUFSTREAM$_Ld20:
.reference _$BUFSTREAM$_Ld21
	.ascii	"Invalid buffer seek operation\000"
	.align 2
.globl	_$BUFSTREAM$_Ld23
_$BUFSTREAM$_Ld23:
	.short	0,1
	.long	0,-1,25
.reference _$BUFSTREAM$_Ld22
.globl	_$BUFSTREAM$_Ld22
_$BUFSTREAM$_Ld22:
.reference _$BUFSTREAM$_Ld23
	.ascii	"bufstream.serrinvalidseek\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_BUFSTREAM_DEFAULTBUFFERCAPACITY
_TC_BUFSTREAM_DEFAULTBUFFERCAPACITY:
	.long	16
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING$stub:
.indirect_symbol _BUFSTREAM_TBUFSTREAM_$__BUFFERERROR$ANSISTRING
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

L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub:
.indirect_symbol _CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFSTREAM_TBUFSTREAM_$__SETCAPACITY$LONGINT$stub:
.indirect_symbol _BUFSTREAM_TBUFSTREAM_$__SETCAPACITY$LONGINT
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

L_BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$LONGINT$$TBUFSTREAM$stub:
.indirect_symbol _BUFSTREAM_TBUFSTREAM_$__CREATE$TSTREAM$LONGINT$$TBUFSTREAM
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

L_CLASSES_TSTREAM_$__FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64
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

L_BUFSTREAM_TBUFSTREAM_$__DESTROY$stub:
.indirect_symbol _BUFSTREAM_TBUFSTREAM_$__DESTROY
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
.globl	_$BUFSTREAM$_Ld2
_$BUFSTREAM$_Ld2:
	.short	0
	.long	_$BUFSTREAM$_Ld3
	.align 2
.globl	_$BUFSTREAM$_Ld3
_$BUFSTREAM$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFSTREAM_TBUFSTREAM
_INIT_BUFSTREAM_TBUFSTREAM:
	.byte	15,10
	.ascii	"TBufStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFSTREAM_TBUFSTREAM
_RTTI_BUFSTREAM_TBUFSTREAM:
	.byte	15,10
	.ascii	"TBufStream"
	.long	_VMT_BUFSTREAM_TBUFSTREAM
	.long	_RTTI_CLASSES_TOWNERSTREAM
	.short	0
	.byte	9
	.ascii	"bufstream"
	.short	0

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld5
_$BUFSTREAM$_Ld5:
	.short	0
	.long	_$BUFSTREAM$_Ld6
	.align 2
.globl	_$BUFSTREAM$_Ld6
_$BUFSTREAM$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFSTREAM_TREADBUFSTREAM
_INIT_BUFSTREAM_TREADBUFSTREAM:
	.byte	15,14
	.ascii	"TReadBufStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFSTREAM_TREADBUFSTREAM
_RTTI_BUFSTREAM_TREADBUFSTREAM:
	.byte	15,14
	.ascii	"TReadBufStream"
	.long	_VMT_BUFSTREAM_TREADBUFSTREAM
	.long	_RTTI_BUFSTREAM_TBUFSTREAM
	.short	0
	.byte	9
	.ascii	"bufstream"
	.short	0

.const_data
	.align 2
.globl	_$BUFSTREAM$_Ld8
_$BUFSTREAM$_Ld8:
	.short	0
	.long	_$BUFSTREAM$_Ld9
	.align 2
.globl	_$BUFSTREAM$_Ld9
_$BUFSTREAM$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFSTREAM_TWRITEBUFSTREAM
_INIT_BUFSTREAM_TWRITEBUFSTREAM:
	.byte	15,15
	.ascii	"TWriteBufStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFSTREAM_TWRITEBUFSTREAM
_RTTI_BUFSTREAM_TWRITEBUFSTREAM:
	.byte	15,15
	.ascii	"TWriteBufStream"
	.long	_VMT_BUFSTREAM_TWRITEBUFSTREAM
	.long	_RTTI_BUFSTREAM_TBUFSTREAM
	.short	0
	.byte	9
	.ascii	"bufstream"
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
L_RESSTR_BUFSTREAM_SERRCAPACITYTOOSMALL$non_lazy_ptr:
.indirect_symbol _RESSTR_BUFSTREAM_SERRCAPACITYTOOSMALL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_ESTREAMERROR$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_ESTREAMERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_BUFSTREAM_SERRCOULDNOTFLUSHBUFFER$non_lazy_ptr:
.indirect_symbol _RESSTR_BUFSTREAM_SERRCOULDNOTFLUSHBUFFER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_BUFSTREAM_DEFAULTBUFFERCAPACITY$non_lazy_ptr:
.indirect_symbol _TC_BUFSTREAM_DEFAULTBUFFERCAPACITY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_BUFSTREAM_SERRINVALIDSEEK$non_lazy_ptr:
.indirect_symbol _RESSTR_BUFSTREAM_SERRINVALIDSEEK
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_BUFSTREAM_START
_RESSTR_BUFSTREAM_START:
	.long	_$BUFSTREAM$_Ld10
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_BUFSTREAM_SERRCAPACITYTOOSMALL
_RESSTR_BUFSTREAM_SERRCAPACITYTOOSMALL:
	.long	_$BUFSTREAM$_Ld14
	.long	_$BUFSTREAM$_Ld12
	.long	_$BUFSTREAM$_Ld12
	.long	232321054

.data
	.align 2
.globl	_RESSTR_BUFSTREAM_SERRCOULDNOTFLUSHBUFFER
_RESSTR_BUFSTREAM_SERRCOULDNOTFLUSHBUFFER:
	.long	_$BUFSTREAM$_Ld18
	.long	_$BUFSTREAM$_Ld16
	.long	_$BUFSTREAM$_Ld16
	.long	36435394

.data
	.align 2
.globl	_RESSTR_BUFSTREAM_SERRINVALIDSEEK
_RESSTR_BUFSTREAM_SERRINVALIDSEEK:
	.long	_$BUFSTREAM$_Ld22
	.long	_$BUFSTREAM$_Ld20
	.long	_$BUFSTREAM$_Ld20
	.long	157256862

.data
	.align 2
.globl	_RESSTR_BUFSTREAM_END
_RESSTR_BUFSTREAM_END:
	.long	_RESSTR_BUFSTREAM_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

