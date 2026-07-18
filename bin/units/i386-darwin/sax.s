# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SAX_ESAXATTRIBUTEINDEXERROR_$__CREATE$LONGINT$$ESAXATTRIBUTEINDEXERROR
_SAX_ESAXATTRIBUTEINDEXERROR_$__CREATE$LONGINT$$ESAXATTRIBUTEINDEXERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj6:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SAX_SSAXATTRIBUTEINDEXERROR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj33
Lj34:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj33
Lj32:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj33:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj38
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj40:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj37:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	movl	-104(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXINPUTSOURCE_$__CREATE$$TSAXINPUTSOURCE
_SAX_TSAXINPUTSOURCE_$__CREATE$$TSAXINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj47
	jmp	Lj48
Lj47:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj48:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj53
	jmp	Lj54
Lj53:
	jmp	Lj45
Lj54:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj57
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj61
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
Lj61:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj62
	call	LFPC_RERAISE$stub
Lj62:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj70
	jmp	Lj69
Lj70:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj68
	jmp	Lj69
Lj68:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj69:
Lj57:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj74
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj76:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj74:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj73
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj73:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj59
Lj59:
Lj45:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXINPUTSOURCE_$__CREATE$TSTREAM$$TSAXINPUTSOURCE
_SAX_TSAXINPUTSOURCE_$__CREATE$TSTREAM$$TSAXINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj83
	jmp	Lj84
Lj83:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj84:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	jmp	Lj90
Lj89:
	jmp	Lj81
Lj90:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj93
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj97
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj97:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	call	LFPC_RERAISE$stub
Lj98:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj108
	jmp	Lj107
Lj108:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj106
	jmp	Lj107
Lj106:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj107:
Lj93:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj112
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj113
	jmp	Lj114
Lj113:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj114:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj112:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj111
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj111:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj95
Lj95:
Lj81:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXINPUTSOURCE_$__CREATE$WIDESTRING$$TSAXINPUTSOURCE
_SAX_TSAXINPUTSOURCE_$__CREATE$WIDESTRING$$TSAXINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj121
	jmp	Lj122
Lj121:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj122:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj127
	jmp	Lj128
Lj127:
	jmp	Lj119
Lj128:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj131
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj135
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
Lj135:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj136
	call	LFPC_RERAISE$stub
Lj136:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj146
	jmp	Lj145
Lj146:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj144
	jmp	Lj145
Lj144:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj145:
Lj131:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj133
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj150
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj151
	jmp	Lj152
Lj151:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj152:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj150:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj149
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj149:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj133
Lj133:
Lj119:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__CREATE$$TSAXATTRIBUTES
_SAX_TSAXATTRIBUTES_$__CREATE$$TSAXATTRIBUTES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj158
Lj158:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj159
	jmp	Lj160
Lj159:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj160:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj165
	jmp	Lj166
Lj165:
	jmp	Lj157
Lj166:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj169
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj173
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj158(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj173:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj174
	call	LFPC_RERAISE$stub
Lj174:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj188
	jmp	Lj187
Lj188:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj186
	jmp	Lj187
Lj186:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj187:
Lj169:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj171
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj192
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj193
	jmp	Lj194
Lj193:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj194:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj192:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj191
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj191:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj171
Lj171:
Lj157:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__CREATE$TSAXATTRIBUTES$$TSAXATTRIBUTES
_SAX_TSAXATTRIBUTES_$__CREATE$TSAXATTRIBUTES$$TSAXATTRIBUTES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj200
Lj200:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj201
	jmp	Lj202
Lj201:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj202:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj207
	jmp	Lj208
Lj207:
	jmp	Lj199
Lj208:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj211
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj215
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj200(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__SETATTRIBUTES$TSAXATTRIBUTES$stub
Lj215:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj216
	call	LFPC_RERAISE$stub
Lj216:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj234
	jmp	Lj233
Lj234:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj232
	jmp	Lj233
Lj232:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj233:
Lj211:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj213
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj238
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj239
	jmp	Lj240
Lj239:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj240:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj238:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj237
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj237:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj213
Lj213:
Lj199:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__DESTROY
_SAX_TSAXATTRIBUTES_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj247
	jmp	Lj248
Lj247:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj248:
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj261
	jmp	Lj260
Lj261:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj259
	jmp	Lj260
Lj259:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj260:
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETINDEX$WIDESTRING$$LONGINT
_SAX_TSAXATTRIBUTES_$__GETINDEX$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj269
	.align 2
Lj268:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj271
	jmp	Lj272
Lj271:
	jmp	Lj264
Lj272:
	incl	-12(%ebp)
Lj269:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj268
	jmp	Lj270
Lj270:
	movl	$-1,-12(%ebp)
Lj264:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETINDEX$WIDESTRING$WIDESTRING$$LONGINT
_SAX_TSAXATTRIBUTES_$__GETINDEX$WIDESTRING$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj288
	.align 2
Lj287:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj292
	jmp	Lj291
Lj292:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj290
	jmp	Lj291
Lj290:
	jmp	Lj283
Lj291:
	incl	-16(%ebp)
Lj288:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj287
	jmp	Lj289
Lj289:
	movl	$-1,-16(%ebp)
Lj283:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETLENGTH$$LONGINT
_SAX_TSAXATTRIBUTES_$__GETLENGTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETLOCALNAME$LONGINT$$WIDESTRING
_SAX_TSAXATTRIBUTES_$__GETLOCALNAME$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj319
	jmp	Lj318
Lj319:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj317
	jmp	Lj318
Lj317:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	4(%ebx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	4(%ebx),%eax
	movl	%eax,(%esi)
	jmp	Lj326
Lj318:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
Lj326:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETQNAME$LONGINT$$WIDESTRING
_SAX_TSAXATTRIBUTES_$__GETQNAME$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj335
	jmp	Lj334
Lj335:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj333
	jmp	Lj334
Lj333:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	8(%ebx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebx),%eax
	movl	%eax,(%esi)
	jmp	Lj342
Lj334:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
Lj342:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETTYPE$LONGINT$$ANSISTRING
_SAX_TSAXATTRIBUTES_$__GETTYPE$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj351
	jmp	Lj350
Lj351:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj349
	jmp	Lj350
Lj349:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	16(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%ebx),%eax
	movl	%eax,(%esi)
	jmp	Lj358
Lj350:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_ansistr_setlength$stub
Lj358:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETTYPE$WIDESTRING$$ANSISTRING
_SAX_TSAXATTRIBUTES_$__GETTYPE$WIDESTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj366
	decl	-16(%ebp)
	.align 2
Lj367:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj368
	jmp	Lj369
Lj368:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,(%edi)
	jmp	Lj363
Lj369:
	cmpl	-16(%ebp),%ebx
	jg	Lj367
Lj366:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_ansistr_setlength$stub
Lj363:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETTYPE$WIDESTRING$WIDESTRING$$ANSISTRING
_SAX_TSAXATTRIBUTES_$__GETTYPE$WIDESTRING$WIDESTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj391
	decl	-16(%ebp)
	.align 2
Lj392:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj395
	jmp	Lj394
Lj395:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj393
	jmp	Lj394
Lj393:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,(%edi)
	jmp	Lj388
Lj394:
	cmpl	-16(%ebp),%ebx
	jg	Lj392
Lj391:
	movl	8(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_ansistr_setlength$stub
Lj388:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETURI$LONGINT$$WIDESTRING
_SAX_TSAXATTRIBUTES_$__GETURI$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj426
	jmp	Lj425
Lj426:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj424
	jmp	Lj425
Lj424:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	(%ebx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%ebx),%eax
	movl	%eax,(%esi)
	jmp	Lj433
Lj425:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
Lj433:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETVALUE$LONGINT$$WIDESTRING
_SAX_TSAXATTRIBUTES_$__GETVALUE$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj442
	jmp	Lj441
Lj442:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj440
	jmp	Lj441
Lj440:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	12(%ebx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	12(%ebx),%eax
	movl	%eax,(%esi)
	jmp	Lj449
Lj441:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
Lj449:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETVALUE$WIDESTRING$$WIDESTRING
_SAX_TSAXATTRIBUTES_$__GETVALUE$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj457
	decl	-16(%ebp)
	.align 2
Lj458:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj459
	jmp	Lj460
Lj459:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%esi
	movl	12(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%edi)
	jmp	Lj454
Lj460:
	cmpl	-16(%ebp),%ebx
	jg	Lj458
Lj457:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
Lj454:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING
_SAX_TSAXATTRIBUTES_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj482
	decl	-16(%ebp)
	.align 2
Lj483:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj486
	jmp	Lj485
Lj486:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj484
	jmp	Lj485
Lj484:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%esi
	movl	12(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%edi)
	jmp	Lj479
Lj485:
	cmpl	-16(%ebp),%ebx
	jg	Lj483
Lj482:
	movl	8(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
Lj479:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__CLEAR
_SAX_TSAXATTRIBUTES_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj514
Lj514:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj516
	decl	-8(%ebp)
	.align 2
Lj517:
	incl	-8(%ebp)
	movl	L_INIT_SAX_TSAXATTRIBUTEDATA$non_lazy_ptr-Lj514(%esi),%edi
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%edi,%edx
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	call	Lfpc_freemem$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj517
Lj516:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETATTRIBUTES$TSAXATTRIBUTES
_SAX_TSAXATTRIBUTES_$__SETATTRIBUTES$TSAXATTRIBUTES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj534
	movl	-4(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETLENGTH$$LONGINT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj544
	decl	-12(%ebp)
	.align 2
Lj545:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%esi
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETURI$LONGINT$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esi)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETLOCALNAME$LONGINT$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	4(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,4(%esi)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETQNAME$LONGINT$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	8(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,8(%esi)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETTYPE$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,16(%esi)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETVALUE$LONGINT$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	12(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,12(%esi)
	cmpl	-12(%ebp),%ebx
	jg	Lj545
Lj544:
Lj534:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj535
	call	LFPC_RERAISE$stub
Lj535:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__ADDATTRIBUTE$WIDESTRING$WIDESTRING$WIDESTRING$ANSISTRING$WIDESTRING
_SAX_TSAXATTRIBUTES_$__ADDATTRIBUTE$WIDESTRING$WIDESTRING$WIDESTRING$ANSISTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj593
Lj593:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$20,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%ebx
	movl	L_INIT_SAX_TSAXATTRIBUTEDATA$non_lazy_ptr-Lj593(%esi),%edx
	movl	%ebx,%eax
	call	Lfpc_initialize$stub
	movl	%ebx,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	16(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	16(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETATTRIBUTE$LONGINT$WIDESTRING$WIDESTRING$WIDESTRING$ANSISTRING$WIDESTRING
_SAX_TSAXATTRIBUTES_$__SETATTRIBUTE$LONGINT$WIDESTRING$WIDESTRING$WIDESTRING$ANSISTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj622
	jmp	Lj621
Lj622:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj620
	jmp	Lj621
Lj620:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	20(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	4(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	20(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	16(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	8(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	16(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	12(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,12(%ebx)
	jmp	Lj639
Lj621:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj639:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__REMOVEATTRIBUTE$LONGINT
_SAX_TSAXATTRIBUTES_$__REMOVEATTRIBUTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj648
	jmp	Lj647
Lj648:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj646
	jmp	Lj647
Lj646:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
	jmp	Lj653
Lj647:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj653:
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETURI$LONGINT$WIDESTRING
_SAX_TSAXATTRIBUTES_$__SETURI$LONGINT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj662
	jmp	Lj661
Lj662:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj660
	jmp	Lj661
Lj660:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj669
Lj661:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj669:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETLOCALNAME$LONGINT$WIDESTRING
_SAX_TSAXATTRIBUTES_$__SETLOCALNAME$LONGINT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj678
	jmp	Lj677
Lj678:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj676
	jmp	Lj677
Lj676:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	leal	4(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,4(%ebx)
	jmp	Lj685
Lj677:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj685:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETQNAME$LONGINT$WIDESTRING
_SAX_TSAXATTRIBUTES_$__SETQNAME$LONGINT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj694
	jmp	Lj693
Lj694:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj692
	jmp	Lj693
Lj692:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	leal	8(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,8(%ebx)
	jmp	Lj701
Lj693:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj701:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETTYPE$LONGINT$ANSISTRING
_SAX_TSAXATTRIBUTES_$__SETTYPE$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj710
	jmp	Lj709
Lj710:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj708
	jmp	Lj709
Lj708:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,16(%ebx)
	jmp	Lj717
Lj709:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj717:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__SETVALUE$LONGINT$WIDESTRING
_SAX_TSAXATTRIBUTES_$__SETVALUE$LONGINT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj726
	jmp	Lj725
Lj726:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj724
	jmp	Lj725
Lj724:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub
	movl	%eax,%ebx
	leal	12(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	jmp	Lj733
Lj725:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub
Lj733:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA
_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT
_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj747
Lj747:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ebp,%eax
	call	L_SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%ecx
	movl	L_VMT_SAX_ESAXATTRIBUTEINDEXERROR$non_lazy_ptr-Lj747(%esi),%edx
	movl	$0,%eax
	call	L_SAX_ESAXATTRIBUTEINDEXERROR_$__CREATE$LONGINT$$ESAXATTRIBUTEINDEXERROR$stub
	movl	$0,%ecx
	movl	%ebx,%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__PARSE$WIDESTRING
_SAX_TSAXREADER_$__PARSE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	call	Lj757
Lj757:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj758
	movl	-4(%ebp),%ecx
	movl	L_VMT_SAX_TSAXINPUTSOURCE$non_lazy_ptr-Lj757(%ebx),%edx
	movl	$0,%eax
	call	L_SAX_TSAXINPUTSOURCE_$__CREATE$WIDESTRING$$TSAXINPUTSOURCE$stub
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj769
	movw	$0,(%esp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-96(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj757(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj787
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*184(%ecx)
Lj787:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj788
	decl	%eax
	testl	%eax,%eax
	je	Lj789
Lj789:
	call	LFPC_RERAISE$stub
Lj788:
Lj769:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj770
	decl	%eax
	testl	%eax,%eax
	je	Lj771
Lj771:
	call	LFPC_RERAISE$stub
Lj770:
Lj758:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj759
	call	LFPC_RERAISE$stub
Lj759:
	movl	-140(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__PARSESTREAM$TSTREAM
_SAX_TSAXREADER_$__PARSESTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj800
Lj800:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_SAX_TSAXINPUTSOURCE$non_lazy_ptr-Lj800(%ebx),%edx
	movl	$0,%eax
	call	L_SAX_TSAXINPUTSOURCE_$__CREATE$TSTREAM$$TSAXINPUTSOURCE$stub
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj809
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*184(%ecx)
Lj809:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj810
	decl	%eax
	testl	%eax,%eax
	je	Lj811
Lj811:
	call	LFPC_RERAISE$stub
Lj810:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__ABORT
_SAX_TSAXREADER_$__ABORT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,156(%eax)
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DORESOLVEENTITY$WIDESTRING$WIDESTRING$$TSAXINPUTSOURCE
_SAX_TSAXREADER_$__DORESOLVEENTITY$WIDESTRING$WIDESTRING$$TSAXINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,108(%eax)
	jne	Lj825
	jmp	Lj826
Lj825:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	108(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	jmp	Lj837
Lj826:
	movl	$0,-16(%ebp)
Lj837:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING
_SAX_TSAXREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,92(%eax)
	jne	Lj842
	jmp	Lj843
Lj842:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	92(%ebx),%ebx
	call	*%ebx
Lj843:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOUNPARSEDENTITYDECL$WIDESTRING$WIDESTRING$WIDESTRING$WIDESTRING
_SAX_TSAXREADER_$__DOUNPARSEDENTITYDECL$WIDESTRING$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,100(%eax)
	jne	Lj856
	jmp	Lj857
Lj856:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	100(%ebx),%ebx
	call	*%ebx
Lj857:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__GETFEATURE$ANSISTRING$$BOOLEAN
_SAX_TSAXREADER_$__GETFEATURE$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj871
Lj871:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SAX_SSAXUNRECOGNIZEDFEATURE$non_lazy_ptr-Lj871(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION$non_lazy_ptr-Lj871(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj871(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movb	$0,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__GETPROPERTY$ANSISTRING$$TOBJECT
_SAX_TSAXREADER_$__GETPROPERTY$ANSISTRING$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj885
Lj885:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SAX_SSAXUNRECOGNIZEDPROPERTY$non_lazy_ptr-Lj885(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION$non_lazy_ptr-Lj885(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj885(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__SETFEATURE$ANSISTRING$BOOLEAN
_SAX_TSAXREADER_$__SETFEATURE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj899
Lj899:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SAX_SSAXUNRECOGNIZEDFEATURE$non_lazy_ptr-Lj899(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION$non_lazy_ptr-Lj899(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj899(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__SETPROPERTY$ANSISTRING$TOBJECT
_SAX_TSAXREADER_$__SETPROPERTY$ANSISTRING$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj911
Lj911:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SAX_SSAXUNRECOGNIZEDPROPERTY$non_lazy_ptr-Lj911(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION$non_lazy_ptr-Lj911(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj911(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOCHARACTERS$PSAXCHAR$LONGINT$LONGINT
_SAX_TSAXREADER_$__DOCHARACTERS$PSAXCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj924
	jmp	Lj925
Lj924:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
Lj925:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOCOMMENT$PSAXCHAR$LONGINT$LONGINT
_SAX_TSAXREADER_$__DOCOMMENT$PSAXCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj938
	jmp	Lj939
Lj938:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	12(%ebx),%ebx
	call	*%ebx
Lj939:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOENDDOCUMENT
_SAX_TSAXREADER_$__DOENDDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj952
	jmp	Lj953
Lj952:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
Lj953:
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOENDELEMENT$WIDESTRING$WIDESTRING$WIDESTRING
_SAX_TSAXREADER_$__DOENDELEMENT$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj960
	jmp	Lj961
Lj960:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
Lj961:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOENDPREFIXMAPPING$WIDESTRING
_SAX_TSAXREADER_$__DOENDPREFIXMAPPING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj974
	jmp	Lj975
Lj974:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	36(%ebx),%ebx
	call	*%ebx
Lj975:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOIGNORABLEWHITESPACE$PSAXCHAR$LONGINT$LONGINT
_SAX_TSAXREADER_$__DOIGNORABLEWHITESPACE$PSAXCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,44(%eax)
	jne	Lj984
	jmp	Lj985
Lj984:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	44(%ebx),%ebx
	call	*%ebx
Lj985:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING
_SAX_TSAXREADER_$__DOPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,52(%eax)
	jne	Lj998
	jmp	Lj999
Lj998:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	52(%ebx),%ebx
	call	*%ebx
Lj999:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOSKIPPEDENTITY$WIDESTRING
_SAX_TSAXREADER_$__DOSKIPPEDENTITY$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,60(%eax)
	jne	Lj1010
	jmp	Lj1011
Lj1010:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	60(%ebx),%ebx
	call	*%ebx
Lj1011:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOSTARTDOCUMENT
_SAX_TSAXREADER_$__DOSTARTDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,68(%eax)
	jne	Lj1020
	jmp	Lj1021
Lj1020:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	68(%ecx),%ecx
	call	*%ecx
Lj1021:
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOSTARTELEMENT$WIDESTRING$WIDESTRING$WIDESTRING$TSAXATTRIBUTES
_SAX_TSAXREADER_$__DOSTARTELEMENT$WIDESTRING$WIDESTRING$WIDESTRING$TSAXATTRIBUTES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,76(%eax)
	jne	Lj1028
	jmp	Lj1029
Lj1028:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	76(%ebx),%ebx
	call	*%ebx
Lj1029:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOSTARTPREFIXMAPPING$WIDESTRING$WIDESTRING
_SAX_TSAXREADER_$__DOSTARTPREFIXMAPPING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,84(%eax)
	jne	Lj1044
	jmp	Lj1045
Lj1044:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	88(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	84(%ebx),%ebx
	call	*%ebx
Lj1045:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOERROR$ESAXPARSEEXCEPTION
_SAX_TSAXREADER_$__DOERROR$ESAXPARSEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,116(%eax)
	jne	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-8(%ebp),%eax
	movl	120(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	116(%ebx),%ebx
	call	*%ebx
Lj1057:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOFATALERROR$ESAXPARSEEXCEPTION
_SAX_TSAXREADER_$__DOFATALERROR$ESAXPARSEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj1067
Lj1067:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,124(%eax)
	jne	Lj1068
	jmp	Lj1069
Lj1068:
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	124(%ebx),%ebx
	call	*%ebx
	jmp	Lj1076
Lj1069:
La5:
	movl	%ebp,%ecx
	leal	La5-Lj1067(%esi),%edx
	movl	-4(%ebp),%eax
	call	LFPC_RAISEEXCEPTION$stub
Lj1076:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXREADER_$__DOWARNING$ESAXPARSEEXCEPTION
_SAX_TSAXREADER_$__DOWARNING$ESAXPARSEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,132(%eax)
	jne	Lj1081
	jmp	Lj1082
Lj1081:
	movl	-8(%ebp),%eax
	movl	136(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	132(%ebx),%ebx
	call	*%ebx
Lj1082:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DORESOLVEENTITY$WIDESTRING$WIDESTRING$$TSAXINPUTSOURCE
_SAX_TSAXFILTER_$__DORESOLVEENTITY$WIDESTRING$WIDESTRING$$TSAXINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,108(%eax)
	jne	Lj1093
	jmp	Lj1094
Lj1093:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	108(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	jmp	Lj1105
Lj1094:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1106
	jmp	Lj1107
Lj1106:
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*168(%ebx)
	movl	%eax,-16(%ebp)
	jmp	Lj1116
Lj1107:
	movl	$0,-16(%ebp)
Lj1116:
Lj1105:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING
_SAX_TSAXFILTER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,92(%eax)
	jne	Lj1121
	jmp	Lj1122
Lj1121:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	92(%ebx),%ebx
	call	*%ebx
	jmp	Lj1133
Lj1122:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1134
	jmp	Lj1135
Lj1134:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
Lj1135:
Lj1133:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOUNPARSEDENTITYDECL$WIDESTRING$WIDESTRING$WIDESTRING$WIDESTRING
_SAX_TSAXFILTER_$__DOUNPARSEDENTITYDECL$WIDESTRING$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,100(%eax)
	jne	Lj1146
	jmp	Lj1147
Lj1146:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	100(%ebx),%ebx
	call	*%ebx
	jmp	Lj1160
Lj1147:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1161
	jmp	Lj1162
Lj1161:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
Lj1162:
Lj1160:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOCHARACTERS$PSAXCHAR$LONGINT$LONGINT
_SAX_TSAXFILTER_$__DOCHARACTERS$PSAXCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1175
	jmp	Lj1176
Lj1175:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	jmp	Lj1187
Lj1176:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1188
	jmp	Lj1189
Lj1188:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
Lj1189:
Lj1187:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOENDDOCUMENT
_SAX_TSAXFILTER_$__DOENDDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj1200
	jmp	Lj1201
Lj1200:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
	jmp	Lj1206
Lj1201:
	movl	-4(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1207
	jmp	Lj1208
Lj1207:
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	160(%edx),%edx
	movl	(%edx),%edx
	call	*124(%edx)
Lj1208:
Lj1206:
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOENDELEMENT$WIDESTRING$WIDESTRING$WIDESTRING
_SAX_TSAXFILTER_$__DOENDELEMENT$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1213
	jmp	Lj1214
Lj1213:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
	jmp	Lj1225
Lj1214:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1226
	jmp	Lj1227
Lj1226:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
Lj1227:
Lj1225:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOENDPREFIXMAPPING$WIDESTRING
_SAX_TSAXFILTER_$__DOENDPREFIXMAPPING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj1238
	jmp	Lj1239
Lj1238:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	36(%ebx),%ebx
	call	*%ebx
	jmp	Lj1246
Lj1239:
	movl	-8(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1247
	jmp	Lj1248
Lj1247:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	160(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj1248:
Lj1246:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOIGNORABLEWHITESPACE$PSAXCHAR$LONGINT$LONGINT
_SAX_TSAXFILTER_$__DOIGNORABLEWHITESPACE$PSAXCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,44(%eax)
	jne	Lj1255
	jmp	Lj1256
Lj1255:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	44(%ebx),%ebx
	call	*%ebx
	jmp	Lj1267
Lj1256:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1268
	jmp	Lj1269
Lj1268:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
Lj1269:
Lj1267:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING
_SAX_TSAXFILTER_$__DOPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,52(%eax)
	jne	Lj1280
	jmp	Lj1281
Lj1280:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	52(%ebx),%ebx
	call	*%ebx
	jmp	Lj1290
Lj1281:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1291
	jmp	Lj1292
Lj1291:
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj1292:
Lj1290:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOSKIPPEDENTITY$WIDESTRING
_SAX_TSAXFILTER_$__DOSKIPPEDENTITY$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,60(%eax)
	jne	Lj1301
	jmp	Lj1302
Lj1301:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	60(%ebx),%ebx
	call	*%ebx
	jmp	Lj1309
Lj1302:
	movl	-8(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1310
	jmp	Lj1311
Lj1310:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	160(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
Lj1311:
Lj1309:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOSTARTDOCUMENT
_SAX_TSAXFILTER_$__DOSTARTDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,68(%eax)
	jne	Lj1318
	jmp	Lj1319
Lj1318:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	68(%ecx),%ecx
	call	*%ecx
	jmp	Lj1324
Lj1319:
	movl	-4(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1325
	jmp	Lj1326
Lj1325:
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	160(%edx),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj1326:
Lj1324:
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOSTARTELEMENT$WIDESTRING$WIDESTRING$WIDESTRING$TSAXATTRIBUTES
_SAX_TSAXFILTER_$__DOSTARTELEMENT$WIDESTRING$WIDESTRING$WIDESTRING$TSAXATTRIBUTES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,76(%eax)
	jne	Lj1331
	jmp	Lj1332
Lj1331:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	76(%ebx),%ebx
	call	*%ebx
	jmp	Lj1345
Lj1332:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1346
	jmp	Lj1347
Lj1346:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*152(%ebx)
Lj1347:
Lj1345:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOSTARTPREFIXMAPPING$WIDESTRING$WIDESTRING
_SAX_TSAXFILTER_$__DOSTARTPREFIXMAPPING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,84(%eax)
	jne	Lj1360
	jmp	Lj1361
Lj1360:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	88(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	84(%ebx),%ebx
	call	*%ebx
	jmp	Lj1370
Lj1361:
	movl	-12(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1371
	jmp	Lj1372
Lj1371:
	movl	-12(%ebp),%eax
	movl	160(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	160(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj1372:
Lj1370:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOERROR$ESAXPARSEEXCEPTION
_SAX_TSAXFILTER_$__DOERROR$ESAXPARSEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,116(%eax)
	jne	Lj1381
	jmp	Lj1382
Lj1381:
	movl	-8(%ebp),%eax
	movl	120(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	116(%ebx),%ebx
	call	*%ebx
	jmp	Lj1389
Lj1382:
	movl	-8(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1390
	jmp	Lj1391
Lj1390:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	160(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
Lj1391:
Lj1389:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOFATALERROR$ESAXPARSEEXCEPTION
_SAX_TSAXFILTER_$__DOFATALERROR$ESAXPARSEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj1399
Lj1399:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,124(%eax)
	jne	Lj1400
	jmp	Lj1401
Lj1400:
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	124(%ebx),%ebx
	call	*%ebx
	jmp	Lj1408
Lj1401:
	movl	-8(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1409
	jmp	Lj1410
Lj1409:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	160(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	jmp	Lj1415
Lj1410:
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1399(%esi),%edx
	movl	-4(%ebp),%eax
	call	LFPC_RAISEEXCEPTION$stub
Lj1415:
Lj1408:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SAX_TSAXFILTER_$__DOWARNING$ESAXPARSEEXCEPTION
_SAX_TSAXFILTER_$__DOWARNING$ESAXPARSEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,132(%eax)
	jne	Lj1420
	jmp	Lj1421
Lj1420:
	movl	-8(%ebp),%eax
	movl	136(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	132(%ebx),%ebx
	call	*%ebx
	jmp	Lj1428
Lj1421:
	movl	-8(%ebp),%eax
	cmpl	$0,160(%eax)
	jne	Lj1429
	jmp	Lj1430
Lj1429:
	movl	-8(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	160(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
Lj1430:
Lj1428:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$SAX$_Ld1
_$SAX$_Ld1:
	.byte	9
	.ascii	"ESAXError"

.const_data
	.align 2
.globl	_VMT_SAX_ESAXERROR
_VMT_SAX_ESAXERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$SAX$_Ld1
	.long	0,0
	.long	_$SAX$_Ld2
	.long	_RTTI_SAX_ESAXERROR
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
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld4
_$SAX$_Ld4:
	.byte	23
	.ascii	"ESAXAttributeIndexError"

.const_data
	.align 2
.globl	_VMT_SAX_ESAXATTRIBUTEINDEXERROR
_VMT_SAX_ESAXATTRIBUTEINDEXERROR:
	.long	12,-12
	.long	_VMT_SAX_ESAXERROR
	.long	_$SAX$_Ld4
	.long	0,0
	.long	_$SAX$_Ld5
	.long	_RTTI_SAX_ESAXATTRIBUTEINDEXERROR
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
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld7
_$SAX$_Ld7:
	.byte	18
	.ascii	"ESAXParseException"

.const_data
	.align 2
.globl	_VMT_SAX_ESAXPARSEEXCEPTION
_VMT_SAX_ESAXPARSEEXCEPTION:
	.long	12,-12
	.long	_VMT_SAX_ESAXERROR
	.long	_$SAX$_Ld7
	.long	0,0
	.long	_$SAX$_Ld8
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION
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
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld10
_$SAX$_Ld10:
	.byte	26
	.ascii	"ESAXNotRecognizedException"

.const_data
	.align 2
.globl	_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION
_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION:
	.long	12,-12
	.long	_VMT_SAX_ESAXERROR
	.long	_$SAX$_Ld10
	.long	0,0
	.long	_$SAX$_Ld11
	.long	_RTTI_SAX_ESAXNOTRECOGNIZEDEXCEPTION
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
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld13
_$SAX$_Ld13:
	.byte	15
	.ascii	"TSAXInputSource"

.const_data
	.align 2
.globl	_VMT_SAX_TSAXINPUTSOURCE
_VMT_SAX_TSAXINPUTSOURCE:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$SAX$_Ld13
	.long	0,0
	.long	_$SAX$_Ld14
	.long	_RTTI_SAX_TSAXINPUTSOURCE
	.long	_INIT_SAX_TSAXINPUTSOURCE
	.long	0
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
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld16
_$SAX$_Ld16:
	.byte	14
	.ascii	"TSAXAttributes"

.const_data
	.align 2
.globl	_VMT_SAX_TSAXATTRIBUTES
_VMT_SAX_TSAXATTRIBUTES:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$SAX$_Ld16
	.long	0,0
	.long	_$SAX$_Ld17
	.long	_RTTI_SAX_TSAXATTRIBUTES
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SAX_TSAXATTRIBUTES_$__DESTROY
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
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld19
_$SAX$_Ld19:
	.byte	10
	.ascii	"TSAXReader"

.const_data
	.align 2
.globl	_VMT_SAX_TSAXREADER
_VMT_SAX_TSAXREADER:
	.long	160,-160
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$SAX$_Ld19
	.long	0,0
	.long	_$SAX$_Ld20
	.long	_RTTI_SAX_TSAXREADER
	.long	_INIT_SAX_TSAXREADER
	.long	0
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
	.long	_SAX_TSAXREADER_$__GETFEATURE$ANSISTRING$$BOOLEAN
	.long	_SAX_TSAXREADER_$__GETPROPERTY$ANSISTRING$$TOBJECT
	.long	_SAX_TSAXREADER_$__SETFEATURE$ANSISTRING$BOOLEAN
	.long	_SAX_TSAXREADER_$__SETPROPERTY$ANSISTRING$TOBJECT
	.long	_SAX_TSAXREADER_$__DOCHARACTERS$PSAXCHAR$LONGINT$LONGINT
	.long	_SAX_TSAXREADER_$__DOCOMMENT$PSAXCHAR$LONGINT$LONGINT
	.long	_SAX_TSAXREADER_$__DOENDDOCUMENT
	.long	_SAX_TSAXREADER_$__DOENDELEMENT$WIDESTRING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXREADER_$__DOENDPREFIXMAPPING$WIDESTRING
	.long	_SAX_TSAXREADER_$__DOIGNORABLEWHITESPACE$PSAXCHAR$LONGINT$LONGINT
	.long	_SAX_TSAXREADER_$__DOPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXREADER_$__DOSKIPPEDENTITY$WIDESTRING
	.long	_SAX_TSAXREADER_$__DOSTARTDOCUMENT
	.long	_SAX_TSAXREADER_$__DOSTARTELEMENT$WIDESTRING$WIDESTRING$WIDESTRING$TSAXATTRIBUTES
	.long	_SAX_TSAXREADER_$__DOSTARTPREFIXMAPPING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXREADER_$__DOUNPARSEDENTITYDECL$WIDESTRING$WIDESTRING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXREADER_$__DORESOLVEENTITY$WIDESTRING$WIDESTRING$$TSAXINPUTSOURCE
	.long	_SAX_TSAXREADER_$__DOERROR$ESAXPARSEEXCEPTION
	.long	_SAX_TSAXREADER_$__DOFATALERROR$ESAXPARSEEXCEPTION
	.long	_SAX_TSAXREADER_$__DOWARNING$ESAXPARSEEXCEPTION
	.long	FPC_ABSTRACTERROR
	.long	_SAX_TSAXREADER_$__PARSE$WIDESTRING
	.long	0

.const_data
	.align 2
.globl	_$SAX$_Ld22
_$SAX$_Ld22:
	.byte	10
	.ascii	"TSAXFilter"

.const_data
	.align 2
.globl	_VMT_SAX_TSAXFILTER
_VMT_SAX_TSAXFILTER:
	.long	164,-164
	.long	_VMT_SAX_TSAXREADER
	.long	_$SAX$_Ld22
	.long	0,0
	.long	_$SAX$_Ld23
	.long	_RTTI_SAX_TSAXFILTER
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
	.long	_SAX_TSAXREADER_$__GETFEATURE$ANSISTRING$$BOOLEAN
	.long	_SAX_TSAXREADER_$__GETPROPERTY$ANSISTRING$$TOBJECT
	.long	_SAX_TSAXREADER_$__SETFEATURE$ANSISTRING$BOOLEAN
	.long	_SAX_TSAXREADER_$__SETPROPERTY$ANSISTRING$TOBJECT
	.long	_SAX_TSAXFILTER_$__DOCHARACTERS$PSAXCHAR$LONGINT$LONGINT
	.long	_SAX_TSAXREADER_$__DOCOMMENT$PSAXCHAR$LONGINT$LONGINT
	.long	_SAX_TSAXFILTER_$__DOENDDOCUMENT
	.long	_SAX_TSAXFILTER_$__DOENDELEMENT$WIDESTRING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DOENDPREFIXMAPPING$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DOIGNORABLEWHITESPACE$PSAXCHAR$LONGINT$LONGINT
	.long	_SAX_TSAXFILTER_$__DOPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DOSKIPPEDENTITY$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DOSTARTDOCUMENT
	.long	_SAX_TSAXFILTER_$__DOSTARTELEMENT$WIDESTRING$WIDESTRING$WIDESTRING$TSAXATTRIBUTES
	.long	_SAX_TSAXFILTER_$__DOSTARTPREFIXMAPPING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DOUNPARSEDENTITYDECL$WIDESTRING$WIDESTRING$WIDESTRING$WIDESTRING
	.long	_SAX_TSAXFILTER_$__DORESOLVEENTITY$WIDESTRING$WIDESTRING$$TSAXINPUTSOURCE
	.long	_SAX_TSAXFILTER_$__DOERROR$ESAXPARSEEXCEPTION
	.long	_SAX_TSAXFILTER_$__DOFATALERROR$ESAXPARSEEXCEPTION
	.long	_SAX_TSAXFILTER_$__DOWARNING$ESAXPARSEEXCEPTION
	.long	FPC_ABSTRACTERROR
	.long	_SAX_TSAXREADER_$__PARSE$WIDESTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_SAX
_THREADVARLIST_SAX:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$SAX$_Ld26
_$SAX$_Ld26:
	.short	0,1
	.long	0,-1,3
.reference _$SAX$_Ld25
.globl	_$SAX$_Ld25
_$SAX$_Ld25:
.reference _$SAX$_Ld26
	.ascii	"SAX\000"

.const_data
	.align 2
.globl	_$SAX$_Ld28
_$SAX$_Ld28:
	.short	0,1
	.long	0,-1,26
.reference _$SAX$_Ld27
.globl	_$SAX$_Ld27
_$SAX$_Ld27:
.reference _$SAX$_Ld28
	.ascii	"Invalid attribute index %d\000"
	.align 2
.globl	_$SAX$_Ld30
_$SAX$_Ld30:
	.short	0,1
	.long	0,-1,27
.reference _$SAX$_Ld29
.globl	_$SAX$_Ld29
_$SAX$_Ld29:
.reference _$SAX$_Ld30
	.ascii	"sax.ssaxattributeindexerror\000"

.const_data
	.align 2
.globl	_$SAX$_Ld32
_$SAX$_Ld32:
	.short	0,1
	.long	0,-1,25
.reference _$SAX$_Ld31
.globl	_$SAX$_Ld31
_$SAX$_Ld31:
.reference _$SAX$_Ld32
	.ascii	"Unknown SAX feature: \"%s\"\000"
	.align 2
.globl	_$SAX$_Ld34
_$SAX$_Ld34:
	.short	0,1
	.long	0,-1,27
.reference _$SAX$_Ld33
.globl	_$SAX$_Ld33
_$SAX$_Ld33:
.reference _$SAX$_Ld34
	.ascii	"sax.ssaxunrecognizedfeature\000"

.const_data
	.align 2
.globl	_$SAX$_Ld36
_$SAX$_Ld36:
	.short	0,1
	.long	0,-1,26
.reference _$SAX$_Ld35
.globl	_$SAX$_Ld35
_$SAX$_Ld35:
.reference _$SAX$_Ld36
	.ascii	"Unknown SAX property: \"%s\"\000"
	.align 2
.globl	_$SAX$_Ld38
_$SAX$_Ld38:
	.short	0,1
	.long	0,-1,28
.reference _$SAX$_Ld37
.globl	_$SAX$_Ld37
_$SAX$_Ld37:
.reference _$SAX$_Ld38
	.ascii	"sax.ssaxunrecognizedproperty\000"
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__SETATTRIBUTES$TSAXATTRIBUTES$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__SETATTRIBUTES$TSAXATTRIBUTES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__CLEAR$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__CLEAR
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETDATA$LONGINT$$PSAXATTRIBUTEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_compare_equal$stub:
.indirect_symbol fpc_unicodestr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_setlength$stub:
.indirect_symbol fpc_unicodestr_setlength
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETLENGTH$$LONGINT$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETLENGTH$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETURI$LONGINT$$WIDESTRING$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETURI$LONGINT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETLOCALNAME$LONGINT$$WIDESTRING$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETLOCALNAME$LONGINT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETQNAME$LONGINT$$WIDESTRING$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETQNAME$LONGINT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETTYPE$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETTYPE$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__GETVALUE$LONGINT$$WIDESTRING$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__GETVALUE$LONGINT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT$stub:
.indirect_symbol _SAX_TSAXATTRIBUTES_$__BADINDEX$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER$stub:
.indirect_symbol _SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_ESAXATTRIBUTEINDEXERROR_$__CREATE$LONGINT$$ESAXATTRIBUTEINDEXERROR$stub:
.indirect_symbol _SAX_ESAXATTRIBUTEINDEXERROR_$__CREATE$LONGINT$$ESAXATTRIBUTEINDEXERROR
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

L_SAX_TSAXINPUTSOURCE_$__CREATE$WIDESTRING$$TSAXINPUTSOURCE$stub:
.indirect_symbol _SAX_TSAXINPUTSOURCE_$__CREATE$WIDESTRING$$TSAXINPUTSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_to_ansistr$stub:
.indirect_symbol fpc_unicodestr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SAX_TSAXINPUTSOURCE_$__CREATE$TSTREAM$$TSAXINPUTSOURCE$stub:
.indirect_symbol _SAX_TSAXINPUTSOURCE_$__CREATE$TSTREAM$$TSAXINPUTSOURCE
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
.globl	_INIT_SAX_PSAXCHAR
_INIT_SAX_PSAXCHAR:
	.byte	0
	.ascii	"\010PSAXChar"

.const_data
	.align 2
.globl	_RTTI_SAX_PSAXCHAR
_RTTI_SAX_PSAXCHAR:
	.byte	0
	.ascii	"\010PSAXChar"

.const_data
	.align 2
.globl	_$SAX$_Ld2
_$SAX$_Ld2:
	.short	0
	.long	_$SAX$_Ld3
	.align 2
.globl	_$SAX$_Ld3
_$SAX$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_ESAXERROR
_INIT_SAX_ESAXERROR:
	.byte	15,9
	.ascii	"ESAXError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SAX_ESAXERROR
_RTTI_SAX_ESAXERROR:
	.byte	15,9
	.ascii	"ESAXError"
	.long	_VMT_SAX_ESAXERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_$SAX$_Ld5
_$SAX$_Ld5:
	.short	0
	.long	_$SAX$_Ld6
	.align 2
.globl	_$SAX$_Ld6
_$SAX$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_ESAXATTRIBUTEINDEXERROR
_INIT_SAX_ESAXATTRIBUTEINDEXERROR:
	.byte	15,23
	.ascii	"ESAXAttributeIndexError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SAX_ESAXATTRIBUTEINDEXERROR
_RTTI_SAX_ESAXATTRIBUTEINDEXERROR:
	.byte	15,23
	.ascii	"ESAXAttributeIndexError"
	.long	_VMT_SAX_ESAXATTRIBUTEINDEXERROR
	.long	_RTTI_SAX_ESAXERROR
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_$SAX$_Ld8
_$SAX$_Ld8:
	.short	0
	.long	_$SAX$_Ld9
	.align 2
.globl	_$SAX$_Ld9
_$SAX$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_ESAXPARSEEXCEPTION
_INIT_SAX_ESAXPARSEEXCEPTION:
	.byte	15,18
	.ascii	"ESAXParseException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SAX_ESAXPARSEEXCEPTION
_RTTI_SAX_ESAXPARSEEXCEPTION:
	.byte	15,18
	.ascii	"ESAXParseException"
	.long	_VMT_SAX_ESAXPARSEEXCEPTION
	.long	_RTTI_SAX_ESAXERROR
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_$SAX$_Ld11
_$SAX$_Ld11:
	.short	0
	.long	_$SAX$_Ld12
	.align 2
.globl	_$SAX$_Ld12
_$SAX$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_ESAXNOTRECOGNIZEDEXCEPTION
_INIT_SAX_ESAXNOTRECOGNIZEDEXCEPTION:
	.byte	15,26
	.ascii	"ESAXNotRecognizedException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SAX_ESAXNOTRECOGNIZEDEXCEPTION
_RTTI_SAX_ESAXNOTRECOGNIZEDEXCEPTION:
	.byte	15,26
	.ascii	"ESAXNotRecognizedException"
	.long	_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION
	.long	_RTTI_SAX_ESAXERROR
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_$SAX$_Ld14
_$SAX$_Ld14:
	.short	0
	.long	_$SAX$_Ld15
	.align 2
.globl	_$SAX$_Ld15
_$SAX$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_TSAXINPUTSOURCE
_INIT_SAX_TSAXINPUTSOURCE:
	.byte	15,15
	.ascii	"TSAXInputSource"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8
	.long	_INIT_SYSTEM_WIDESTRING
	.long	12
	.long	_INIT_SYSTEM_WIDESTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_SAX_TSAXINPUTSOURCE
_RTTI_SAX_TSAXINPUTSOURCE:
	.byte	15,15
	.ascii	"TSAXInputSource"
	.long	_VMT_SAX_TSAXINPUTSOURCE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_TSAXATTRIBUTEDATA
_INIT_SAX_TSAXATTRIBUTEDATA:
	.byte	13,17
	.ascii	"TSAXAttributeData"
	.long	20,5
	.long	_INIT_SYSTEM_WIDESTRING
	.long	0
	.long	_INIT_SYSTEM_WIDESTRING
	.long	4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	8
	.long	_INIT_SYSTEM_WIDESTRING
	.long	12
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_SAX_TSAXATTRIBUTEDATA
_RTTI_SAX_TSAXATTRIBUTEDATA:
	.byte	13,17
	.ascii	"TSAXAttributeData"
	.long	20,5
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	0
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	4
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	8
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	12
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_INIT_SAX_PSAXATTRIBUTEDATA
_INIT_SAX_PSAXATTRIBUTEDATA:
	.byte	0
	.ascii	"\021PSAXAttributeData"

.const_data
	.align 2
.globl	_RTTI_SAX_PSAXATTRIBUTEDATA
_RTTI_SAX_PSAXATTRIBUTEDATA:
	.byte	0
	.ascii	"\021PSAXAttributeData"

.const_data
	.align 2
.globl	_$SAX$_Ld17
_$SAX$_Ld17:
	.short	0
	.long	_$SAX$_Ld18
	.align 2
.globl	_$SAX$_Ld18
_$SAX$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_TSAXATTRIBUTES
_INIT_SAX_TSAXATTRIBUTES:
	.byte	15,14
	.ascii	"TSAXAttributes"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SAX_TSAXATTRIBUTES
_RTTI_SAX_TSAXATTRIBUTES:
	.byte	15,14
	.ascii	"TSAXAttributes"
	.long	_VMT_SAX_TSAXATTRIBUTES
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_TCHARACTERSEVENT
_INIT_SAX_TCHARACTERSEVENT:
	.byte	6,16
	.ascii	"TCharactersEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,2
	.ascii	"ch"
	.ascii	"\010PSAXChar"
	.byte	0,6
	.ascii	"AStart"
	.ascii	"\007LongInt"
	.byte	0,7
	.ascii	"ALength"
	.ascii	"\007LongInt"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_PSAXCHAR
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT

.const_data
	.align 2
.globl	_RTTI_SAX_TCHARACTERSEVENT
_RTTI_SAX_TCHARACTERSEVENT:
	.byte	6,16
	.ascii	"TCharactersEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,2
	.ascii	"ch"
	.ascii	"\010PSAXChar"
	.byte	0,6
	.ascii	"AStart"
	.ascii	"\007LongInt"
	.byte	0,7
	.ascii	"ALength"
	.ascii	"\007LongInt"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_PSAXCHAR
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT

.const_data
	.align 2
.globl	_INIT_SAX_TCOMMENTEVENT
_INIT_SAX_TCOMMENTEVENT:
	.byte	6,13
	.ascii	"TCommentEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,2
	.ascii	"ch"
	.ascii	"\010PSAXChar"
	.byte	0,6
	.ascii	"AStart"
	.ascii	"\007LongInt"
	.byte	0,7
	.ascii	"ALength"
	.ascii	"\007LongInt"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_PSAXCHAR
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT

.const_data
	.align 2
.globl	_RTTI_SAX_TCOMMENTEVENT
_RTTI_SAX_TCOMMENTEVENT:
	.byte	6,13
	.ascii	"TCommentEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,2
	.ascii	"ch"
	.ascii	"\010PSAXChar"
	.byte	0,6
	.ascii	"AStart"
	.ascii	"\007LongInt"
	.byte	0,7
	.ascii	"ALength"
	.ascii	"\007LongInt"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_PSAXCHAR
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT

.const_data
	.align 2
.globl	_INIT_SAX_TENDELEMENTEVENT
_INIT_SAX_TENDELEMENTEVENT:
	.byte	6,16
	.ascii	"TEndElementEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,12
	.ascii	"NamespaceURI"
	.ascii	"\012WideString"
	.byte	2,9
	.ascii	"LocalName"
	.ascii	"\012WideString"
	.byte	2,5
	.ascii	"QName"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TENDELEMENTEVENT
_RTTI_SAX_TENDELEMENTEVENT:
	.byte	6,16
	.ascii	"TEndElementEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,12
	.ascii	"NamespaceURI"
	.ascii	"\012WideString"
	.byte	2,9
	.ascii	"LocalName"
	.ascii	"\012WideString"
	.byte	2,5
	.ascii	"QName"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TENDPREFIXMAPPINGEVENT
_INIT_SAX_TENDPREFIXMAPPINGEVENT:
	.byte	6,22
	.ascii	"TEndPrefixMappingEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,6
	.ascii	"Prefix"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TENDPREFIXMAPPINGEVENT
_RTTI_SAX_TENDPREFIXMAPPINGEVENT:
	.byte	6,22
	.ascii	"TEndPrefixMappingEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,6
	.ascii	"Prefix"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TIGNORABLEWHITESPACEEVENT
_INIT_SAX_TIGNORABLEWHITESPACEEVENT:
	.byte	6,25
	.ascii	"TIgnorableWhitespaceEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,2
	.ascii	"ch"
	.ascii	"\010PSAXChar"
	.byte	0,6
	.ascii	"AStart"
	.ascii	"\007LongInt"
	.byte	0,7
	.ascii	"ALength"
	.ascii	"\007LongInt"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_PSAXCHAR
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT

.const_data
	.align 2
.globl	_RTTI_SAX_TIGNORABLEWHITESPACEEVENT
_RTTI_SAX_TIGNORABLEWHITESPACEEVENT:
	.byte	6,25
	.ascii	"TIgnorableWhitespaceEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,2
	.ascii	"ch"
	.ascii	"\010PSAXChar"
	.byte	0,6
	.ascii	"AStart"
	.ascii	"\007LongInt"
	.byte	0,7
	.ascii	"ALength"
	.ascii	"\007LongInt"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_PSAXCHAR
	.long	_RTTI_SYSTEM_LONGINT
	.long	_RTTI_SYSTEM_LONGINT

.const_data
	.align 2
.globl	_INIT_SAX_TPROCESSINGINSTRUCTIONEVENT
_INIT_SAX_TPROCESSINGINSTRUCTIONEVENT:
	.byte	6,27
	.ascii	"TProcessingInstructionEvent"
	.byte	0,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,6
	.ascii	"Target"
	.ascii	"\012WideString"
	.byte	2,4
	.ascii	"Data"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TPROCESSINGINSTRUCTIONEVENT
_RTTI_SAX_TPROCESSINGINSTRUCTIONEVENT:
	.byte	6,27
	.ascii	"TProcessingInstructionEvent"
	.byte	0,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,6
	.ascii	"Target"
	.ascii	"\012WideString"
	.byte	2,4
	.ascii	"Data"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TSKIPPEDENTITYEVENT
_INIT_SAX_TSKIPPEDENTITYEVENT:
	.byte	6,19
	.ascii	"TSkippedEntityEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,4
	.ascii	"Name"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TSKIPPEDENTITYEVENT
_RTTI_SAX_TSKIPPEDENTITYEVENT:
	.byte	6,19
	.ascii	"TSkippedEntityEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,4
	.ascii	"Name"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TSTARTELEMENTEVENT
_INIT_SAX_TSTARTELEMENTEVENT:
	.byte	6,18
	.ascii	"TStartElementEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,12
	.ascii	"NamespaceURI"
	.ascii	"\012WideString"
	.byte	2,9
	.ascii	"LocalName"
	.ascii	"\012WideString"
	.byte	2,5
	.ascii	"QName"
	.ascii	"\012WideString"
	.byte	8,4
	.ascii	"Atts"
	.ascii	"\016TSAXAttributes"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SAX_TSAXATTRIBUTES

.const_data
	.align 2
.globl	_RTTI_SAX_TSTARTELEMENTEVENT
_RTTI_SAX_TSTARTELEMENTEVENT:
	.byte	6,18
	.ascii	"TStartElementEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,12
	.ascii	"NamespaceURI"
	.ascii	"\012WideString"
	.byte	2,9
	.ascii	"LocalName"
	.ascii	"\012WideString"
	.byte	2,5
	.ascii	"QName"
	.ascii	"\012WideString"
	.byte	8,4
	.ascii	"Atts"
	.ascii	"\016TSAXAttributes"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SAX_TSAXATTRIBUTES

.const_data
	.align 2
.globl	_INIT_SAX_TSTARTPREFIXMAPPINGEVENT
_INIT_SAX_TSTARTPREFIXMAPPINGEVENT:
	.byte	6,24
	.ascii	"TStartPrefixMappingEvent"
	.byte	0,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,6
	.ascii	"Prefix"
	.ascii	"\012WideString"
	.byte	2,3
	.ascii	"URI"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TSTARTPREFIXMAPPINGEVENT
_RTTI_SAX_TSTARTPREFIXMAPPINGEVENT:
	.byte	6,24
	.ascii	"TStartPrefixMappingEvent"
	.byte	0,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,6
	.ascii	"Prefix"
	.ascii	"\012WideString"
	.byte	2,3
	.ascii	"URI"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TNOTATIONDECLEVENT
_INIT_SAX_TNOTATIONDECLEVENT:
	.byte	6,18
	.ascii	"TNotationDeclEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,4
	.ascii	"Name"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"PublicID"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"SystemID"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TNOTATIONDECLEVENT
_RTTI_SAX_TNOTATIONDECLEVENT:
	.byte	6,18
	.ascii	"TNotationDeclEvent"
	.byte	0,4,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,4
	.ascii	"Name"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"PublicID"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"SystemID"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TUNPARSEDENTITYDECLEVENT
_INIT_SAX_TUNPARSEDENTITYDECLEVENT:
	.byte	6,24
	.ascii	"TUnparsedEntityDeclEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,4
	.ascii	"Name"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"PublicID"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"SystemID"
	.ascii	"\012WideString"
	.byte	2,12
	.ascii	"NotationName"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TUNPARSEDENTITYDECLEVENT
_RTTI_SAX_TUNPARSEDENTITYDECLEVENT:
	.byte	6,24
	.ascii	"TUnparsedEntityDeclEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,4
	.ascii	"Name"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"PublicID"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"SystemID"
	.ascii	"\012WideString"
	.byte	2,12
	.ascii	"NotationName"
	.ascii	"\012WideString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TRESOLVEENTITYEVENT
_INIT_SAX_TRESOLVEENTITYEVENT:
	.byte	6,19
	.ascii	"TResolveEntityEvent"
	.byte	1,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,8
	.ascii	"PublicID"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"SystemID"
	.ascii	"\012WideString"
	.ascii	"\017TSAXInputSource"
	.long	_RTTI_SAX_TSAXINPUTSOURCE
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_RTTI_SAX_TRESOLVEENTITYEVENT
_RTTI_SAX_TRESOLVEENTITYEVENT:
	.byte	6,19
	.ascii	"TResolveEntityEvent"
	.byte	1,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,8
	.ascii	"PublicID"
	.ascii	"\012WideString"
	.byte	2,8
	.ascii	"SystemID"
	.ascii	"\012WideString"
	.ascii	"\017TSAXInputSource"
	.long	_RTTI_SAX_TSAXINPUTSOURCE
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	_RTTI_SYSTEM_WIDESTRING

.const_data
	.align 2
.globl	_INIT_SAX_TERROREVENT
_INIT_SAX_TERROREVENT:
	.byte	6,11
	.ascii	"TErrorEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,10
	.ascii	"AException"
	.ascii	"\022ESAXParseException"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION

.const_data
	.align 2
.globl	_RTTI_SAX_TERROREVENT
_RTTI_SAX_TERROREVENT:
	.byte	6,11
	.ascii	"TErrorEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,10
	.ascii	"AException"
	.ascii	"\022ESAXParseException"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION

.const_data
	.align 2
.globl	_INIT_SAX_TFATALERROREVENT
_INIT_SAX_TFATALERROREVENT:
	.byte	6,16
	.ascii	"TFatalErrorEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,10
	.ascii	"AException"
	.ascii	"\022ESAXParseException"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION

.const_data
	.align 2
.globl	_RTTI_SAX_TFATALERROREVENT
_RTTI_SAX_TFATALERROREVENT:
	.byte	6,16
	.ascii	"TFatalErrorEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,10
	.ascii	"AException"
	.ascii	"\022ESAXParseException"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION

.const_data
	.align 2
.globl	_INIT_SAX_TWARNINGEVENT
_INIT_SAX_TWARNINGEVENT:
	.byte	6,13
	.ascii	"TWarningEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,10
	.ascii	"AException"
	.ascii	"\022ESAXParseException"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION

.const_data
	.align 2
.globl	_RTTI_SAX_TWARNINGEVENT
_RTTI_SAX_TWARNINGEVENT:
	.byte	6,13
	.ascii	"TWarningEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,10
	.ascii	"AException"
	.ascii	"\022ESAXParseException"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SAX_ESAXPARSEEXCEPTION

.const_data
	.align 2
.globl	_INIT_SAX_DEF247
_INIT_SAX_DEF247:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SAX_DEF250
_INIT_SAX_DEF250:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SAX_DEF253
_INIT_SAX_DEF253:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SAX_DEF256
_INIT_SAX_DEF256:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$SAX$_Ld20
_$SAX$_Ld20:
	.short	0
	.long	_$SAX$_Ld21
	.align 2
.globl	_$SAX$_Ld21
_$SAX$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_TSAXREADER
_INIT_SAX_TSAXREADER:
	.byte	15,10
	.ascii	"TSAXReader"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	148
	.long	_INIT_SYSTEM_WIDESTRING
	.long	152

.const_data
	.align 2
.globl	_RTTI_SAX_TSAXREADER
_RTTI_SAX_TSAXREADER:
	.byte	15,10
	.ascii	"TSAXReader"
	.long	_VMT_SAX_TSAXREADER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"SAX"
	.short	0

.const_data
	.align 2
.globl	_$SAX$_Ld23
_$SAX$_Ld23:
	.short	0
	.long	_$SAX$_Ld24
	.align 2
.globl	_$SAX$_Ld24
_$SAX$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_SAX_TSAXFILTER
_INIT_SAX_TSAXFILTER:
	.byte	15,10
	.ascii	"TSAXFilter"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SAX_TSAXFILTER
_RTTI_SAX_TSAXFILTER:
	.byte	15,10
	.ascii	"TSAXFilter"
	.long	_VMT_SAX_TSAXFILTER
	.long	_RTTI_SAX_TSAXREADER
	.short	0
	.byte	3
	.ascii	"SAX"
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
L_RESSTR_SAX_SSAXATTRIBUTEINDEXERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SAX_SSAXATTRIBUTEINDEXERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SAX_TSAXATTRIBUTEDATA$non_lazy_ptr:
.indirect_symbol _INIT_SAX_TSAXATTRIBUTEDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SAX_ESAXATTRIBUTEINDEXERROR$non_lazy_ptr:
.indirect_symbol _VMT_SAX_ESAXATTRIBUTEINDEXERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SAX_TSAXINPUTSOURCE$non_lazy_ptr:
.indirect_symbol _VMT_SAX_TSAXINPUTSOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SAX_SSAXUNRECOGNIZEDFEATURE$non_lazy_ptr:
.indirect_symbol _RESSTR_SAX_SSAXUNRECOGNIZEDFEATURE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SAX_ESAXNOTRECOGNIZEDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SAX_SSAXUNRECOGNIZEDPROPERTY$non_lazy_ptr:
.indirect_symbol _RESSTR_SAX_SSAXUNRECOGNIZEDPROPERTY
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_SAX_START
_RESSTR_SAX_START:
	.long	_$SAX$_Ld25
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_SAX_SSAXATTRIBUTEINDEXERROR
_RESSTR_SAX_SSAXATTRIBUTEINDEXERROR:
	.long	_$SAX$_Ld29
	.long	_$SAX$_Ld27
	.long	_$SAX$_Ld27
	.long	237323972

.data
	.align 2
.globl	_RESSTR_SAX_SSAXUNRECOGNIZEDFEATURE
_RESSTR_SAX_SSAXUNRECOGNIZEDFEATURE:
	.long	_$SAX$_Ld33
	.long	_$SAX$_Ld31
	.long	_$SAX$_Ld31
	.long	142593058

.data
	.align 2
.globl	_RESSTR_SAX_SSAXUNRECOGNIZEDPROPERTY
_RESSTR_SAX_SSAXUNRECOGNIZEDPROPERTY:
	.long	_$SAX$_Ld37
	.long	_$SAX$_Ld35
	.long	_$SAX$_Ld35
	.long	100092754

.data
	.align 2
.globl	_RESSTR_SAX_END
_RESSTR_SAX_END:
	.long	_RESSTR_SAX_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

