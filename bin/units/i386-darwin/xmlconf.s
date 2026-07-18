# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__CREATE$TCOMPONENT$$TXMLCONFIG
_XMLCONF_TXMLCONFIG_$__CREATE$TCOMPONENT$$TXMLCONFIG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
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
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	L_$XMLCONF$_Ld1$non_lazy_ptr-Lj4(%ebx),%esi
	movl	-12(%ebp),%edi
	leal	60(%edi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%esi,60(%edi)
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj4(%ebx),%ecx
	call	*224(%ecx)
	movl	-12(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-12(%ebp),%eax
	movl	60(%eax),%edx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj46
	jmp	Lj45
Lj46:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj44
	jmp	Lj45
Lj44:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj45:
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
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj50
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj52:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj50:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj49:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__DESTROY
_XMLCONF_TXMLCONFIG_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj59
	jmp	Lj60
Lj59:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj60:
	movl	-8(%ebp),%eax
	cmpl	$0,84(%eax)
	jne	Lj63
	jmp	Lj64
Lj63:
	movl	-8(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__FLUSH$stub
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj64:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj74
Lj75:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj73
	jmp	Lj74
Lj73:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj74:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__CLEAR
_XMLCONF_TXMLCONFIG_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%esi
	movl	%ebx,%ecx
	call	*164(%esi)
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__FLUSH
_XMLCONF_TXMLCONFIG_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,88(%eax)
	jne	Lj96
	jmp	Lj95
Lj96:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	jne	Lj94
	jmp	Lj95
Lj94:
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	call	L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movb	$0,88(%eax)
Lj95:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING
_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj105
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	$1,(%esp)
	leal	-24(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj120
	jmp	Lj121
Lj120:
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj128
	jmp	Lj129
Lj128:
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
Lj129:
Lj121:
Lj105:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj106
	call	LFPC_RERAISE$stub
Lj106:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$LONGINT$$LONGINT
_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj142
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	L_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj142:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj143
	call	LFPC_RERAISE$stub
Lj143:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$BOOLEAN$$BOOLEAN
_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj164
Lj164:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj165
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	L_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	L_$XMLCONF$_Ld3$non_lazy_ptr-Lj164(%ebx),%esi
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%esi,-64(%ebp)
	movl	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj164(%ebx),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj176
	jmp	Lj177
Lj176:
	movb	$1,-13(%ebp)
	jmp	Lj188
Lj177:
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	L_$XMLCONF$_Ld5$non_lazy_ptr-Lj164(%ebx),%esi
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%esi,-64(%ebp)
	movl	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj164(%ebx),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj189
	jmp	Lj190
Lj189:
	movb	$0,-13(%ebp)
	jmp	Lj201
Lj190:
	movb	-8(%ebp),%al
	movb	%al,-13(%ebp)
Lj201:
Lj188:
Lj165:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj166
	call	LFPC_RERAISE$stub
Lj166:
	movb	-13(%ebp),%al
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING
_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj212
	movl	$3,(%esp)
	leal	-24(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj231
	jmp	Lj233
Lj233:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-68(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj231
	jmp	Lj232
Lj231:
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__SETATTRIBUTE$WIDESTRING$WIDESTRING$stub
	movl	-12(%ebp),%eax
	movb	$1,88(%eax)
Lj232:
Lj212:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj213
	call	LFPC_RERAISE$stub
Lj213:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETDELETEVALUE$WIDESTRING$WIDESTRING$WIDESTRING
_XMLCONF_TXMLCONFIG_$__SETDELETEVALUE$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj258
	jmp	Lj259
Lj258:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj268
Lj259:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub
Lj268:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$LONGINT
_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj277
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub
Lj277:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj278
	call	LFPC_RERAISE$stub
Lj278:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETDELETEVALUE$WIDESTRING$LONGINT$LONGINT
_XMLCONF_TXMLCONFIG_$__SETDELETEVALUE$WIDESTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	je	Lj296
	jmp	Lj297
Lj296:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj302
Lj297:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$LONGINT$stub
Lj302:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN
_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj310
Lj310:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj311
	jmp	Lj312
Lj311:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_$XMLCONF$_Ld7$non_lazy_ptr-Lj310(%ebx),%ecx
	call	L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub
	jmp	Lj319
Lj312:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_$XMLCONF$_Ld9$non_lazy_ptr-Lj310(%ebx),%ecx
	call	L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub
Lj319:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETDELETEVALUE$WIDESTRING$BOOLEAN$BOOLEAN
_XMLCONF_TXMLCONFIG_$__SETDELETEVALUE$WIDESTRING$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	cmpb	8(%ebp),%al
	je	Lj328
	jmp	Lj329
Lj328:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj334
Lj329:
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN$stub
Lj334:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__DELETEPATH$WIDESTRING
_XMLCONF_TXMLCONFIG_$__DELETEPATH$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj343
	movl	$0,(%esp)
	leal	-16(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj358
	jmp	Lj357
Lj358:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testl	%eax,%eax
	jne	Lj356
	jmp	Lj357
Lj356:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-12(%ebp),%edx
	movl	%ebx,%eax
	call	L_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movb	$1,76(%eax)
	movl	-8(%ebp),%eax
	movl	$0,80(%eax)
	movl	-8(%ebp),%eax
	movb	$1,88(%eax)
Lj357:
Lj343:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj344
	call	LFPC_RERAISE$stub
Lj344:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING
_XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj383
	movl	$1,(%esp)
	leal	-16(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj396
	jmp	Lj397
Lj396:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR$stub
	testl	%eax,%eax
	jne	Lj398
	jmp	Lj399
Lj398:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__REMOVEATTRIBUTE$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movb	$1,88(%eax)
Lj399:
	jmp	Lj411
	.align 2
Lj410:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	testb	%al,%al
	jne	Lj413
	jmp	Lj414
Lj413:
	jmp	Lj412
Lj414:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE$stub
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,76(%eax)
	movl	-8(%ebp),%eax
	movl	$0,80(%eax)
	movl	-8(%ebp),%eax
	movb	$1,88(%eax)
Lj411:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testl	%eax,%eax
	je	Lj434
	jmp	Lj412
Lj434:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testl	%eax,%eax
	jne	Lj433
	jmp	Lj412
Lj433:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testl	%eax,%eax
	jne	Lj410
	jmp	Lj412
Lj412:
Lj397:
Lj383:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj384
	call	LFPC_RERAISE$stub
Lj384:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__LOADED
_XMLCONF_TXMLCONFIG_$__LOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__LOADED$stub
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj457
	movl	-4(%eax),%eax
Lj457:
	cmpl	$0,%eax
	jg	Lj455
	jmp	Lj456
Lj455:
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub
Lj456:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT
_XMLCONF_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj471
	.align 2
Lj470:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzwl	(%eax,%edx,2),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	subl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	incl	-20(%ebp)
Lj471:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj475
	jmp	Lj472
Lj475:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj470
	jmp	Lj472
Lj472:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT
_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,76(%eax)
	jne	Lj478
	jmp	Lj479
Lj478:
	movl	-12(%ebp),%eax
	movl	72(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj481
	decl	-20(%ebp)
	.align 2
Lj482:
	incl	-20(%ebp)
	movl	$-2,%eax
	movl	8(%ebp),%edx
	andl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	leal	64(%eax),%ecx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__DOFINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub
	movl	-12(%ebp),%edx
	movl	%eax,80(%edx)
	cmpl	-20(%ebp),%ebx
	jg	Lj482
Lj481:
	movl	-12(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj493
	jmp	Lj494
Lj493:
	movl	-12(%ebp),%eax
	movb	$0,76(%eax)
Lj494:
Lj479:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__DOFINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__DOFINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT
_XMLCONF_TXMLCONFIG_$__DOFINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj508
Lj508:
	popl	-80(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj509
	movl	-12(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj515
	jmp	Lj513
Lj515:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj516
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj516:
	cmpl	$0,%eax
	jg	Lj514
	jmp	Lj513
Lj514:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$47,%ax
	jne	Lj512
	jmp	Lj513
Lj512:
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj519
Lj513:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
Lj519:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj526
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj526:
	movl	%eax,-28(%ebp)
	movl	$1,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$47,%ax
	je	Lj529
	jmp	Lj530
Lj529:
	incl	-20(%ebp)
Lj530:
	jmp	Lj532
	.align 2
Lj531:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj537
	.align 2
Lj536:
	incl	-24(%ebp)
Lj537:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj539
	jmp	Lj538
Lj539:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$47,%ax
	jne	Lj536
	jmp	Lj538
Lj538:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj542
	jmp	Lj541
Lj542:
	testl	$1,8(%ebp)
	jne	Lj540
	jmp	Lj541
Lj540:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	-2(%eax,%edx,2),%eax
	movl	%eax,%ebx
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,%edi
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%esi,%eax
	movl	%ebx,%edx
	movl	%edi,%ecx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	jmp	Lj509
Lj541:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj549
	jmp	Lj550
Lj549:
	jmp	Lj533
Lj550:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-32(%ebp)
	jmp	Lj556
	.align 2
Lj555:
	movl	-32(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-32(%ebp)
Lj556:
	cmpl	$0,-32(%ebp)
	jne	Lj560
	jmp	Lj557
Lj560:
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj561
	jmp	Lj555
Lj561:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,(%esp)
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-76(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj572
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj572:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	-2(%edx,%eax,2),%eax
	movl	%eax,%esi
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	jne	Lj581
	movl	-80(%ebp),%ecx
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj508(%ecx),%edx
	movl	%edx,%eax
Lj581:
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	L_XMLCONF_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj557
	jmp	Lj555
Lj557:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj584
	jmp	Lj583
Lj584:
	testl	$2,8(%ebp)
	jne	Lj582
	jmp	Lj583
Lj582:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	-2(%edx,%eax,2),%edx
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
Lj583:
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj601
	jmp	Lj602
Lj601:
	jmp	Lj509
Lj602:
Lj532:
	cmpl	$0,-16(%ebp)
	jne	Lj531
	jmp	Lj533
Lj533:
	movl	$0,-16(%ebp)
Lj509:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj510
	call	LFPC_RERAISE$stub
Lj510:
	movl	-16(%ebp),%eax
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN
_XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj606
Lj606:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj607
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj612
	jmp	Lj611
Lj612:
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj610
	jmp	Lj611
Lj610:
	jmp	Lj607
Lj611:
	movl	-12(%ebp),%eax
	call	L_XMLCONF_TXMLCONFIG_$__FLUSH$stub
	movl	-12(%ebp),%eax
	leal	84(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,52(%esi)
	movl	-12(%ebp),%eax
	testl	$1,40(%eax)
	jne	Lj623
	jmp	Lj624
Lj623:
	jmp	Lj607
Lj624:
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj627
	jmp	Lj626
Lj627:
	movl	-12(%ebp),%eax
	movb	56(%eax),%al
	testb	%al,%al
	je	Lj625
	jmp	Lj626
Lj625:
	movl	-12(%ebp),%eax
	leal	84(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_XMLREAD_READXMLFILE$TXMLDOCUMENT$ANSISTRING$stub
Lj626:
	movl	-12(%ebp),%eax
	cmpl	$0,84(%eax)
	jne	Lj635
	jmp	Lj634
Lj634:
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj606(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj606(%ebx),%ecx
	call	*224(%ecx)
	movl	-12(%ebp),%edx
	movl	%eax,84(%edx)
Lj635:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	testl	%eax,%eax
	jne	Lj643
	jmp	Lj642
Lj642:
	movl	-12(%ebp),%eax
	movl	60(%eax),%edx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
	jmp	Lj654
Lj643:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	movl	%eax,%esi
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-56(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	60(%edx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj655
	jmp	Lj656
Lj655:
	movl	L_RESSTR_XMLCONF_SWRONGROOTNAME$non_lazy_ptr-Lj606(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_XMLCONF_EXMLCONFIGERROR$non_lazy_ptr-Lj606(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj606(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj656:
Lj654:
Lj607:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj608
	call	LFPC_RERAISE$stub
Lj608:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETFILENAME$ANSISTRING
_XMLCONF_TXMLCONFIG_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETROOTNAME$WIDESTRING
_XMLCONF_TXMLCONFIG_$__SETROOTNAME$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj685
	jmp	Lj686
Lj685:
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	60(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,60(%ebx)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,-12(%ebp)
	jmp	Lj704
	.align 2
Lj703:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
Lj704:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testl	%eax,%eax
	jne	Lj703
	jmp	Lj705
Lj705:
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	84(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-8(%ebp),%eax
	movb	$1,88(%eax)
Lj686:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__SETSTARTEMPTY$BOOLEAN
_XMLCONF_TXMLCONFIG_$__SETSTARTEMPTY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	56(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj724
	jmp	Lj725
Lj724:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,56(%eax)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj730
	jmp	Lj729
Lj730:
	movl	-8(%ebp),%eax
	movb	88(%eax),%al
	testb	%al,%al
	je	Lj728
	jmp	Lj729
Lj728:
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub
Lj729:
Lj725:
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__CLOSEKEY
_XMLCONF_TXMLCONFIG_$__CLOSEKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	cmpl	$0,%eax
	jg	Lj739
	jmp	Lj740
Lj739:
	movl	-4(%ebp),%eax
	movl	68(%eax),%esi
	movl	-4(%ebp),%eax
	movl	72(%eax),%ebx
	decl	%ebx
	leal	(%esi,%ebx,4),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%esi,%ebx,4)
	movl	-4(%ebp),%eax
	decl	72(%eax)
	movl	-4(%ebp),%eax
	movl	$0,80(%eax)
	movl	-4(%ebp),%eax
	movb	$1,76(%eax)
Lj740:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__OPENKEY$WIDESTRING
_XMLCONF_TXMLCONFIG_$__OPENKEY$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj748
Lj748:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj749
	jmp	Lj750
Lj749:
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	72(%ebx),%eax
	jle	Lj751
	jmp	Lj752
Lj751:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	addl	$5,%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLCONF_DEF5$non_lazy_ptr-Lj748(%esi),%edx
	movl	-8(%ebp),%eax
	leal	68(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj752:
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%edi
	movl	-8(%ebp),%eax
	movl	72(%eax),%ebx
	leal	(%edi,%ebx,4),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%edi,%ebx,4)
	movl	-8(%ebp),%eax
	incl	72(%eax)
	movl	-8(%ebp),%eax
	movl	$0,80(%eax)
	movl	-8(%ebp),%eax
	movb	$1,76(%eax)
Lj750:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLCONF_TXMLCONFIG_$__RESETKEY
_XMLCONF_TXMLCONFIG_$__RESETKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj774
	incl	-8(%ebp)
	.align 2
Lj775:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%esi
	movl	-8(%ebp),%ebx
	leal	(%esi,%ebx,4),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%esi,%ebx,4)
	cmpl	$0,-8(%ebp)
	jg	Lj775
Lj774:
	movl	-4(%ebp),%eax
	movl	$0,80(%eax)
	movl	-4(%ebp),%eax
	movb	$0,76(%eax)
	movl	-4(%ebp),%eax
	movl	$0,72(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$XMLCONF$_Ld11
_$XMLCONF$_Ld11:
	.byte	15
	.ascii	"EXMLConfigError"

.const_data
	.align 2
.globl	_VMT_XMLCONF_EXMLCONFIGERROR
_VMT_XMLCONF_EXMLCONFIGERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$XMLCONF$_Ld11
	.long	0,0
	.long	_$XMLCONF$_Ld12
	.long	_RTTI_XMLCONF_EXMLCONFIGERROR
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
.globl	_$XMLCONF$_Ld14
_$XMLCONF$_Ld14:
	.byte	10
	.ascii	"TXMLConfig"

.const_data
	.align 2
.globl	_VMT_XMLCONF_TXMLCONFIG
_VMT_XMLCONF_TXMLCONFIG:
	.long	92,-92
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$XMLCONF$_Ld14
	.long	0,0
	.long	_$XMLCONF$_Ld15
	.long	_RTTI_XMLCONF_TXMLCONFIG
	.long	_INIT_XMLCONF_TXMLCONFIG
	.long	0,0,0
	.long	_XMLCONF_TXMLCONFIG_$__DESTROY
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
	.long	_XMLCONF_TXMLCONFIG_$__LOADED
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
	.long	_XMLCONF_TXMLCONFIG_$__CREATE$TCOMPONENT$$TXMLCONFIG
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_XMLCONF
_THREADVARLIST_XMLCONF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$XMLCONF$_Ld18
_$XMLCONF$_Ld18:
	.short	0,1
	.long	0,-1,7
.reference _$XMLCONF$_Ld17
.globl	_$XMLCONF$_Ld17
_$XMLCONF$_Ld17:
.reference _$XMLCONF$_Ld18
	.ascii	"XMLCONF\000"

.const_data
	.align 2
.globl	_$XMLCONF$_Ld20
_$XMLCONF$_Ld20:
	.short	0,1
	.long	0,-1,36
.reference _$XMLCONF$_Ld19
.globl	_$XMLCONF$_Ld19
_$XMLCONF$_Ld19:
.reference _$XMLCONF$_Ld20
	.ascii	"XML file has wrong root element name\000"
	.align 2
.globl	_$XMLCONF$_Ld22
_$XMLCONF$_Ld22:
	.short	0,1
	.long	0,-1,22
.reference _$XMLCONF$_Ld21
.globl	_$XMLCONF$_Ld21
_$XMLCONF$_Ld21:
.reference _$XMLCONF$_Ld22
	.ascii	"xmlconf.swrongrootname\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$XMLCONF$_Ld2
_$XMLCONF$_Ld2:
	.long	-1,12
.reference _$XMLCONF$_Ld1
.globl	_$XMLCONF$_Ld1
_$XMLCONF$_Ld1:
.reference _$XMLCONF$_Ld2
	.short	67,79,78,70,73,71,0

.const_data
	.align 2
.globl	_$XMLCONF$_Ld4
_$XMLCONF$_Ld4:
	.long	-1,8
.reference _$XMLCONF$_Ld3
.globl	_$XMLCONF$_Ld3
_$XMLCONF$_Ld3:
.reference _$XMLCONF$_Ld4
	.short	84,82,85,69,0

.const_data
	.align 2
.globl	_$XMLCONF$_Ld6
_$XMLCONF$_Ld6:
	.long	-1,10
.reference _$XMLCONF$_Ld5
.globl	_$XMLCONF$_Ld5
_$XMLCONF$_Ld5:
.reference _$XMLCONF$_Ld6
	.short	70,65,76,83,69,0

.const_data
	.align 2
.globl	_$XMLCONF$_Ld8
_$XMLCONF$_Ld8:
	.long	-1,8
.reference _$XMLCONF$_Ld7
.globl	_$XMLCONF$_Ld7
_$XMLCONF$_Ld7:
.reference _$XMLCONF$_Ld8
	.short	84,114,117,101,0

.const_data
	.align 2
.globl	_$XMLCONF$_Ld10
_$XMLCONF$_Ld10:
	.long	-1,10
.reference _$XMLCONF$_Ld9
.globl	_$XMLCONF$_Ld9
_$XMLCONF$_Ld9:
.reference _$XMLCONF$_Ld10
	.short	70,97,108,115,101,0
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

L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
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

L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE
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

L_XMLCONF_TXMLCONFIG_$__FLUSH$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__FLUSH
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

L_CLASSES_TCOMPONENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING$stub:
.indirect_symbol _XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING
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

L_XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__FINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_decr_ref$stub:
.indirect_symbol fpc_unicodestr_decr_ref
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

L_XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING
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

L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
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

L_DOM_TDOMELEMENT_$__SETATTRIBUTE$WIDESTRING$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__SETATTRIBUTE$WIDESTRING$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__DELETEVALUE$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING
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

Lfpc_ansistr_to_unicodestr$stub:
.indirect_symbol fpc_ansistr_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$LONGINT$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMELEMENT_$__REMOVEATTRIBUTE$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__REMOVEATTRIBUTE$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__LOADED$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__LOADED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_TXMLCONFIG_$__DOFINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT$stub:
.indirect_symbol _XMLCONF_TXMLCONFIG_$__DOFINDNODE$WIDESTRING$WIDESTRING$TPATHFLAGS$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub:
.indirect_symbol _SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLCONF_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _XMLCONF_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
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

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_READXMLFILE$TXMLDOCUMENT$ANSISTRING$stub:
.indirect_symbol _XMLREAD_READXMLFILE$TXMLDOCUMENT$ANSISTRING
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

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
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
.globl	_$XMLCONF$_Ld12
_$XMLCONF$_Ld12:
	.short	0
	.long	_$XMLCONF$_Ld13
	.align 2
.globl	_$XMLCONF$_Ld13
_$XMLCONF$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLCONF_EXMLCONFIGERROR
_INIT_XMLCONF_EXMLCONFIGERROR:
	.byte	15,15
	.ascii	"EXMLConfigError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_XMLCONF_EXMLCONFIGERROR
_RTTI_XMLCONF_EXMLCONFIGERROR:
	.byte	15,15
	.ascii	"EXMLConfigError"
	.long	_VMT_XMLCONF_EXMLCONFIGERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"XMLConf"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLCONF_DEF2
_INIT_XMLCONF_DEF2:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,1,0
	.byte	10
	.ascii	"pfHasValue"
	.byte	13
	.ascii	"pfWriteAccess"
	.byte	7
	.ascii	"XMLConf"
	.byte	0

.const_data
	.align 2
.globl	_INIT_XMLCONF_TPATHFLAGS
_INIT_XMLCONF_TPATHFLAGS:
	.byte	5,10
	.ascii	"TPathFlags"
	.byte	5
	.long	_INIT_XMLCONF_DEF2

.const_data
	.align 2
.globl	_RTTI_XMLCONF_DEF2
_RTTI_XMLCONF_DEF2:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,1,0
	.byte	10
	.ascii	"pfHasValue"
	.byte	13
	.ascii	"pfWriteAccess"
	.byte	7
	.ascii	"XMLConf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLCONF_DEF2_s2o
_RTTI_XMLCONF_DEF2_s2o:
	.long	2,0
	.long	_RTTI_XMLCONF_DEF2+15
	.long	1
	.long	_RTTI_XMLCONF_DEF2+26

.const_data
	.align 2
.globl	_RTTI_XMLCONF_DEF2_o2s
_RTTI_XMLCONF_DEF2_o2s:
	.long	0
	.long	_RTTI_XMLCONF_DEF2+15
	.long	_RTTI_XMLCONF_DEF2+26

.const_data
	.align 2
.globl	_RTTI_XMLCONF_TPATHFLAGS
_RTTI_XMLCONF_TPATHFLAGS:
	.byte	5,10
	.ascii	"TPathFlags"
	.byte	5
	.long	_RTTI_XMLCONF_DEF2

.const_data
	.align 2
.globl	_INIT_XMLCONF_DEF5
_INIT_XMLCONF_DEF5:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258
	.long	_INIT_SYSTEM_WIDESTRING
	.byte	7
	.ascii	"XMLConf"

.const_data
	.align 2
.globl	_$XMLCONF$_Ld15
_$XMLCONF$_Ld15:
	.short	0
	.long	_$XMLCONF$_Ld16
	.align 2
.globl	_$XMLCONF$_Ld16
_$XMLCONF$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLCONF_TXMLCONFIG
_INIT_XMLCONF_TXMLCONFIG:
	.byte	15,10
	.ascii	"TXMLConfig"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	52
	.long	_INIT_SYSTEM_WIDESTRING
	.long	60
	.long	_INIT_SYSTEM_WIDESTRING
	.long	64
	.long	_INIT_XMLCONF_DEF5
	.long	68

.const_data
	.align 2
.globl	_RTTI_XMLCONF_TXMLCONFIG
_RTTI_XMLCONF_TXMLCONFIG:
	.byte	15,10
	.ascii	"TXMLConfig"
	.long	_VMT_XMLCONF_TXMLCONFIG
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	5
	.byte	7
	.ascii	"XMLConf"
	.short	3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	52
	.long	_XMLCONF_TXMLCONFIG_$__SETFILENAME$ANSISTRING
	.long	1,0,-2147483648
	.short	2
	.byte	52,8
	.ascii	"Filename"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	56
	.long	_XMLCONF_TXMLCONFIG_$__SETSTARTEMPTY$BOOLEAN
	.long	1,0,-2147483648
	.short	3
	.byte	52,10
	.ascii	"StartEmpty"
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	60
	.long	_XMLCONF_TXMLCONFIG_$__SETROOTNAME$WIDESTRING
	.long	1,0,-2147483648
	.short	4
	.byte	52,8
	.ascii	"RootName"
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
L_$XMLCONF$_Ld1$non_lazy_ptr:
.indirect_symbol _$XMLCONF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TXMLDOCUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLCONF$_Ld3$non_lazy_ptr:
.indirect_symbol _$XMLCONF$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLCONF$_Ld5$non_lazy_ptr:
.indirect_symbol _$XMLCONF$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLCONF$_Ld7$non_lazy_ptr:
.indirect_symbol _$XMLCONF$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLCONF$_Ld9$non_lazy_ptr:
.indirect_symbol _$XMLCONF$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_XMLCONF_SWRONGROOTNAME$non_lazy_ptr:
.indirect_symbol _RESSTR_XMLCONF_SWRONGROOTNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLCONF_EXMLCONFIGERROR$non_lazy_ptr:
.indirect_symbol _VMT_XMLCONF_EXMLCONFIGERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLCONF_DEF5$non_lazy_ptr:
.indirect_symbol _INIT_XMLCONF_DEF5
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_XMLCONF_START
_RESSTR_XMLCONF_START:
	.long	_$XMLCONF$_Ld17
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_XMLCONF_SWRONGROOTNAME
_RESSTR_XMLCONF_SWRONGROOTNAME:
	.long	_$XMLCONF$_Ld21
	.long	_$XMLCONF$_Ld19
	.long	_$XMLCONF$_Ld19
	.long	70696405

.data
	.align 2
.globl	_RESSTR_XMLCONF_END
_RESSTR_XMLCONF_END:
	.long	_RESSTR_XMLCONF_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

