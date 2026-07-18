# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_RESOURCETREE_COMPAREDESC$TRESOURCEDESC$TRESOURCEDESC$$LONGINT
_RESOURCETREE_COMPAREDESC$TRESOURCEDESC$TRESOURCEDESC$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj8
	jmp	Lj9
Lj8:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj13
	decl	%eax
	je	Lj12
	jmp	Lj11
Lj12:
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	subl	%eax,%ebx
	movl	%ebx,-12(%ebp)
	jmp	Lj10
Lj13:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	movl	%ebx,%edx
	call	L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj10
Lj11:
Lj10:
	jmp	Lj34
Lj9:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj38
	decl	%eax
	je	Lj37
	jmp	Lj36
Lj37:
	movl	$1,-12(%ebp)
	jmp	Lj35
Lj38:
	movl	$-1,-12(%ebp)
	jmp	Lj35
Lj36:
Lj35:
Lj34:
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_RESLISTCOMPARE$POINTER$POINTER$$LONGINT
_RESOURCETREE_RESLISTCOMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	28(%eax),%edx
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	call	L_RESOURCETREE_COMPAREDESC$TRESOURCEDESC$TRESOURCEDESC$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE
_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__GETDATA$$TABSTRACTRESOURCE
_RESOURCETREE_TRESOURCETREENODE_$__GETDATA$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN
_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj76
	.align 2
Lj75:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	28(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCETREE_COMPAREDESC$TRESOURCEDESC$TRESOURCEDESC$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj90
	jmp	Lj91
Lj90:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj94
Lj91:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj95
	jmp	Lj96
Lj95:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj99
Lj96:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj100
	jmp	Lj101
Lj100:
	movl	8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj67
Lj101:
Lj99:
Lj94:
Lj76:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj75
	jmp	Lj77
Lj77:
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movb	$0,-13(%ebp)
Lj67:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$WORD$LONGINT$$BOOLEAN
_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$WORD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movb	$1,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj117
	.align 2
Lj116:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	28(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj121
	jmp	Lj122
Lj121:
	movl	$-1,-32(%ebp)
	jmp	Lj129
Lj122:
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	28(%eax),%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movzwl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
Lj129:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj140
	jmp	Lj141
Lj140:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj144
Lj141:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj145
	jmp	Lj146
Lj145:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj149
Lj146:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj150
	jmp	Lj151
Lj150:
	movl	8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj108
Lj151:
Lj149:
Lj144:
Lj117:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj116
	jmp	Lj118
Lj118:
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movb	$0,-13(%ebp)
Lj108:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDENTRY$LONGINT$$TRESOURCETREENODE
_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDENTRY$LONGINT$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDCOUNT$$LONGWORD
_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDCOUNT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD
_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE
_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj175
Lj175:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj176
	jmp	Lj177
Lj176:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj177:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj182
	jmp	Lj183
Lj182:
	jmp	Lj174
Lj183:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj186
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj190
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj175(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj175(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj175(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
Lj190:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj191
	call	LFPC_RERAISE$stub
Lj191:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj223
	jmp	Lj222
Lj223:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj221
	jmp	Lj222
Lj221:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj222:
Lj186:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj188
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj227
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj228
	jmp	Lj229
Lj228:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj229:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj227:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj226
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj226:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj188
Lj188:
Lj174:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__DESTROY
_RESOURCETREE_TRESOURCETREENODE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj236
	jmp	Lj237
Lj236:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj237:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj250
	jmp	Lj249
Lj250:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj248
	jmp	Lj249
Lj248:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj249:
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
_RESOURCETREE_TRESOURCETREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__CLEAR
_RESOURCETREE_TRESOURCETREENODE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj260
	decl	-8(%ebp)
	.align 2
Lj261:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj261
Lj260:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj271
	decl	-8(%ebp)
	.align 2
Lj272:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj272
Lj271:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movb	$1,4(%esp)
	movw	$0,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movb	$0,4(%esp)
	movw	8(%ebp),%ax
	movw	%ax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,(%esp)
	movb	$1,4(%esp)
	movw	$0,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,(%esp)
	movb	$0,4(%esp)
	movw	8(%ebp),%ax
	movw	%ax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
_RESOURCETREE_TRESOURCETREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TRESOURCETREENODE_$__ISLEAF$$BOOLEAN
_RESOURCETREE_TRESOURCETREENODE_$__ISLEAF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TROOTRESTREENODE_$__CREATE$$TROOTRESTREENODE
_RESOURCETREE_TROOTRESTREENODE_$__CREATE$$TROOTRESTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj359
	jmp	Lj360
Lj359:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj360:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj365
	jmp	Lj366
Lj365:
	jmp	Lj357
Lj366:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj369
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj373
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE$stub
Lj373:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj374
	call	LFPC_RERAISE$stub
Lj374:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj382
	jmp	Lj381
Lj382:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj380
	jmp	Lj381
Lj380:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj381:
Lj369:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj371
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj386
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj387
	jmp	Lj388
Lj387:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj388:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj386:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj385
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj385:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj371
Lj371:
Lj357:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TROOTRESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
_RESOURCETREE_TROOTRESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj394
Lj394:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj398
	decl	%eax
	je	Lj397
	jmp	Lj396
Lj397:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj395
Lj398:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj395
Lj396:
Lj395:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_RESOURCETREE_TTYPERESTREENODE$non_lazy_ptr-Lj394(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCETREE_TTYPERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TTYPERESTREENODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TROOTRESTREENODE_$__ADD$TABSTRACTRESOURCE
_RESOURCETREE_TROOTRESTREENODE_$__ADD$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj418
Lj418:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj422
	decl	%eax
	je	Lj421
	jmp	Lj420
Lj421:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj419
Lj422:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj419
Lj420:
Lj419:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj429
	jmp	Lj430
Lj429:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	jmp	Lj447
Lj430:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%ecx
	movl	L_VMT_RESOURCETREE_TTYPERESTREENODE$non_lazy_ptr-Lj418(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCETREE_TTYPERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TTYPERESTREENODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
Lj447:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TROOTRESTREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
_RESOURCETREE_TROOTRESTREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj477
	decl	%eax
	je	Lj476
	jmp	Lj475
Lj476:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj474
Lj477:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj474
Lj475:
Lj474:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj482
	jmp	Lj483
Lj482:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	jmp	Lj498
Lj483:
	jmp	Lj470
Lj498:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	%eax,-12(%ebp)
Lj470:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TROOTRESTREENODE_$__INTERNALFIND$crc772F0993
_RESOURCETREE_TROOTRESTREENODE_$__INTERNALFIND$crc772F0993:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj512
	decl	%eax
	je	Lj511
	jmp	Lj510
Lj511:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj509
Lj512:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj509
Lj510:
Lj509:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj517
	jmp	Lj518
Lj517:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	jmp	Lj533
Lj518:
	jmp	Lj505
Lj533:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movw	16(%ebp),%ax
	movw	%ax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,-16(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj550
	jmp	Lj549
Lj550:
	movl	-28(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	movl	-28(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDCOUNT$$LONGWORD$stub
	addl	%eax,%ebx
	testl	%ebx,%ebx
	je	Lj548
	jmp	Lj549
Lj548:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj549:
Lj505:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TTYPERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TTYPERESTREENODE
_RESOURCETREE_TTYPERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TTYPERESTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj563
	jmp	Lj564
Lj563:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj564:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj569
	jmp	Lj570
Lj569:
	jmp	Lj561
Lj570:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj573
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj577
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,4(%edx)
Lj577:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj578
	call	LFPC_RERAISE$stub
Lj578:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj592
	jmp	Lj591
Lj592:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj590
	jmp	Lj591
Lj590:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj591:
Lj573:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj575
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj596
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj597
	jmp	Lj598
Lj597:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj598:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj596:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj595
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj595:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj575
Lj575:
Lj561:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TTYPERESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
_RESOURCETREE_TTYPERESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj604
Lj604:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj608
	decl	%eax
	je	Lj607
	jmp	Lj606
Lj607:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj605
Lj608:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj605
Lj606:
Lj605:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_RESOURCETREE_TNAMERESTREENODE$non_lazy_ptr-Lj604(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCETREE_TNAMERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TNAMERESTREENODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TTYPERESTREENODE_$__ADD$TABSTRACTRESOURCE
_RESOURCETREE_TTYPERESTREENODE_$__ADD$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj628
Lj628:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj632
	decl	%eax
	je	Lj631
	jmp	Lj630
Lj631:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj629
Lj632:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj629
Lj630:
Lj629:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj639
	jmp	Lj640
Lj639:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	jmp	Lj657
Lj640:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ecx
	movl	L_VMT_RESOURCETREE_TNAMERESTREENODE$non_lazy_ptr-Lj628(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCETREE_TNAMERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TNAMERESTREENODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
Lj657:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TTYPERESTREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
_RESOURCETREE_TTYPERESTREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj681
Lj681:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$1,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub
	cmpl	$0,%eax
	jbe	Lj684
	jmp	Lj685
Lj684:
	jmp	Lj680
Lj685:
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub
	movl	%eax,%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub
	movl	28(%eax),%esi
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$65535,%eax
	ja	Lj700
	jmp	Lj701
Lj700:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub
	movl	28(%eax),%esi
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	cmpl	$1,%eax
	ja	Lj702
	jmp	Lj703
Lj702:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub
	movl	28(%eax),%esi
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj722
Lj703:
	movl	$1,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj726
	decl	-16(%ebp)
	.align 2
Lj727:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub
	movl	28(%eax),%edi
	movl	%edi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	cmpl	-12(%ebp),%eax
	jne	Lj730
	jmp	Lj731
Lj730:
	jmp	Lj680
Lj731:
	incl	-12(%ebp)
	cmpl	-16(%ebp),%esi
	jg	Lj727
Lj726:
	movl	L_VMT_RESOURCE_ENOMOREFREEIDSEXCEPTION$non_lazy_ptr-Lj681(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj681(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj722:
Lj701:
Lj680:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TTYPERESTREENODE_$__INTERNALFIND$crc772F0993
_RESOURCETREE_TTYPERESTREENODE_$__INTERNALFIND$crc772F0993:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj753
	decl	%eax
	je	Lj752
	jmp	Lj751
Lj752:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj750
Lj753:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj750
Lj751:
Lj750:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj758
	jmp	Lj759
Lj758:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	jmp	Lj774
Lj759:
	jmp	Lj746
Lj774:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movw	16(%ebp),%ax
	movw	%ax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,-16(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj791
	jmp	Lj790
Lj791:
	movl	-28(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	movl	-28(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDCOUNT$$LONGWORD$stub
	addl	%eax,%ebx
	testl	%ebx,%ebx
	je	Lj789
	jmp	Lj790
Lj789:
	movl	-28(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj790:
Lj746:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TNAMERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TNAMERESTREENODE
_RESOURCETREE_TNAMERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TNAMERESTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj804
	jmp	Lj805
Lj804:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj805:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj810
	jmp	Lj811
Lj810:
	jmp	Lj802
Lj811:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj814
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj818
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,4(%edx)
Lj818:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj819
	call	LFPC_RERAISE$stub
Lj819:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj833
	jmp	Lj832
Lj833:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj831
	jmp	Lj832
Lj831:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj832:
Lj814:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj816
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj837
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj838
	jmp	Lj839
Lj838:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj839:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj837:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj836
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj836:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj816
Lj816:
Lj802:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TNAMERESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
_RESOURCETREE_TNAMERESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj845
Lj845:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj849
	decl	%eax
	je	Lj848
	jmp	Lj847
Lj848:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj846
Lj849:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj846
Lj847:
Lj846:
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movl	%eax,%ecx
	movl	L_VMT_RESOURCETREE_TLANGIDRESTREENODE$non_lazy_ptr-Lj845(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCETREE_TLANGIDRESTREENODE_$__CREATE$crc7D4D7999$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TNAMERESTREENODE_$__ADD$TABSTRACTRESOURCE
_RESOURCETREE_TNAMERESTREENODE_$__ADD$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj873
Lj873:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%cx
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$WORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj874
	jmp	Lj875
Lj874:
	movl	L_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION$non_lazy_ptr-Lj873(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj873(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj875:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%cx
	movl	L_VMT_RESOURCETREE_TLANGIDRESTREENODE$non_lazy_ptr-Lj873(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCETREE_TLANGIDRESTREENODE_$__CREATE$crc7D4D7999$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TNAMERESTREENODE_$__INTERNALFIND$crc772F0993
_RESOURCETREE_TNAMERESTREENODE_$__INTERNALFIND$crc772F0993:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	cmpb	$0,12(%ebp)
	jne	Lj912
	jmp	Lj913
Lj912:
	movl	-12(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub
	cmpl	$0,%eax
	jbe	Lj914
	jmp	Lj915
Lj914:
	jmp	Lj908
	jmp	Lj918
Lj915:
	movl	$0,-20(%ebp)
Lj918:
	jmp	Lj921
Lj913:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movw	16(%ebp),%cx
	movl	-12(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$WORD$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj922
	jmp	Lj923
Lj922:
	jmp	Lj908
Lj923:
Lj921:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-16(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj942
	jmp	Lj943
Lj942:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj943:
Lj908:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__GETDATA$$TABSTRACTRESOURCE
_RESOURCETREE_TLANGIDRESTREENODE_$__GETDATA$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__CREATE$crc7D4D7999
_RESOURCETREE_TLANGIDRESTREENODE_$__CREATE$crc7D4D7999:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj962
	jmp	Lj963
Lj962:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj963:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj968
	jmp	Lj969
Lj968:
	jmp	Lj960
Lj969:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj972
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj976
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movzwl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,4(%eax)
Lj976:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj977
	call	LFPC_RERAISE$stub
Lj977:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj993
	jmp	Lj992
Lj993:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj991
	jmp	Lj992
Lj991:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj992:
Lj972:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj974
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj997
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj998
	jmp	Lj999
Lj998:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj999:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj997:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj996
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj996:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj974
Lj974:
Lj960:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
_RESOURCETREE_TLANGIDRESTREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1005
Lj1005:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1008
	jmp	Lj1009
Lj1008:
	jmp	Lj1004
Lj1009:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj1005(%ebx),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1004:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
_RESOURCETREE_TLANGIDRESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__ADD$TABSTRACTRESOURCE
_RESOURCETREE_TLANGIDRESTREENODE_$__ADD$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__INTERNALFIND$crc772F0993
_RESOURCETREE_TLANGIDRESTREENODE_$__INTERNALFIND$crc772F0993:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCETREE_TLANGIDRESTREENODE_$__ISLEAF$$BOOLEAN
_RESOURCETREE_TLANGIDRESTREENODE_$__ISLEAF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld1
_$RESOURCETREE$_Ld1:
	.byte	17
	.ascii	"TResourceTreeNode"

.const_data
	.align 2
.globl	_VMT_RESOURCETREE_TRESOURCETREENODE
_VMT_RESOURCETREE_TRESOURCETREENODE:
	.long	32,-32
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESOURCETREE$_Ld1
	.long	0,0
	.long	_$RESOURCETREE$_Ld2
	.long	_RTTI_RESOURCETREE_TRESOURCETREENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCETREE_TRESOURCETREENODE_$__DESTROY
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
	.long	_RESOURCETREE_TRESOURCETREENODE_$__GETDATA$$TABSTRACTRESOURCE
	.long	FPC_ABSTRACTERROR
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TRESOURCETREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
	.long	_RESOURCETREE_TRESOURCETREENODE_$__ISLEAF$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld4
_$RESOURCETREE$_Ld4:
	.byte	16
	.ascii	"TRootResTreeNode"

.const_data
	.align 2
.globl	_VMT_RESOURCETREE_TROOTRESTREENODE
_VMT_RESOURCETREE_TROOTRESTREENODE:
	.long	32,-32
	.long	_VMT_RESOURCETREE_TRESOURCETREENODE
	.long	_$RESOURCETREE$_Ld4
	.long	0,0
	.long	_$RESOURCETREE$_Ld5
	.long	_RTTI_RESOURCETREE_TROOTRESTREENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCETREE_TRESOURCETREENODE_$__DESTROY
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
	.long	_RESOURCETREE_TRESOURCETREENODE_$__GETDATA$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TROOTRESTREENODE_$__INTERNALFIND$crc772F0993
	.long	_RESOURCETREE_TROOTRESTREENODE_$__CREATE$$TROOTRESTREENODE
	.long	_RESOURCETREE_TROOTRESTREENODE_$__ADD$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TROOTRESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TROOTRESTREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
	.long	_RESOURCETREE_TRESOURCETREENODE_$__ISLEAF$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld7
_$RESOURCETREE$_Ld7:
	.byte	16
	.ascii	"TTypeResTreeNode"

.const_data
	.align 2
.globl	_VMT_RESOURCETREE_TTYPERESTREENODE
_VMT_RESOURCETREE_TTYPERESTREENODE:
	.long	32,-32
	.long	_VMT_RESOURCETREE_TRESOURCETREENODE
	.long	_$RESOURCETREE$_Ld7
	.long	0,0
	.long	_$RESOURCETREE$_Ld8
	.long	_RTTI_RESOURCETREE_TTYPERESTREENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCETREE_TRESOURCETREENODE_$__DESTROY
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
	.long	_RESOURCETREE_TRESOURCETREENODE_$__GETDATA$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TTYPERESTREENODE_$__INTERNALFIND$crc772F0993
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE
	.long	_RESOURCETREE_TTYPERESTREENODE_$__ADD$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TTYPERESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TTYPERESTREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
	.long	_RESOURCETREE_TRESOURCETREENODE_$__ISLEAF$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld10
_$RESOURCETREE$_Ld10:
	.byte	16
	.ascii	"TNameResTreeNode"

.const_data
	.align 2
.globl	_VMT_RESOURCETREE_TNAMERESTREENODE
_VMT_RESOURCETREE_TNAMERESTREENODE:
	.long	32,-32
	.long	_VMT_RESOURCETREE_TRESOURCETREENODE
	.long	_$RESOURCETREE$_Ld10
	.long	0,0
	.long	_$RESOURCETREE$_Ld11
	.long	_RTTI_RESOURCETREE_TNAMERESTREENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCETREE_TRESOURCETREENODE_$__DESTROY
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
	.long	_RESOURCETREE_TRESOURCETREENODE_$__GETDATA$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TNAMERESTREENODE_$__INTERNALFIND$crc772F0993
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE
	.long	_RESOURCETREE_TNAMERESTREENODE_$__ADD$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TNAMERESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TRESOURCETREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
	.long	_RESOURCETREE_TRESOURCETREENODE_$__ISLEAF$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld13
_$RESOURCETREE$_Ld13:
	.byte	18
	.ascii	"TLangIDResTreeNode"

.const_data
	.align 2
.globl	_VMT_RESOURCETREE_TLANGIDRESTREENODE
_VMT_RESOURCETREE_TLANGIDRESTREENODE:
	.long	36,-36
	.long	_VMT_RESOURCETREE_TRESOURCETREENODE
	.long	_$RESOURCETREE$_Ld13
	.long	0,0
	.long	_$RESOURCETREE$_Ld14
	.long	_RTTI_RESOURCETREE_TLANGIDRESTREENODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCETREE_TRESOURCETREENODE_$__DESTROY
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
	.long	_RESOURCETREE_TLANGIDRESTREENODE_$__GETDATA$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TLANGIDRESTREENODE_$__INTERNALFIND$crc772F0993
	.long	_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE
	.long	_RESOURCETREE_TLANGIDRESTREENODE_$__ADD$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TLANGIDRESTREENODE_$__CREATESUBNODE$TRESOURCEDESC$$TRESOURCETREENODE
	.long	_RESOURCETREE_TLANGIDRESTREENODE_$__CREATERESOURCE$$TABSTRACTRESOURCE
	.long	_RESOURCETREE_TRESOURCETREENODE_$__FINDFREEID$TRESOURCEDESC$$LONGWORD
	.long	_RESOURCETREE_TLANGIDRESTREENODE_$__ISLEAF$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_RESOURCETREE
_THREADVARLIST_RESOURCETREE:
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

L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD
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

L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT
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

L_RESOURCETREE_COMPAREDESC$TRESOURCEDESC$TRESOURCEDESC$$LONGINT$stub:
.indirect_symbol _RESOURCETREE_COMPAREDESC$TRESOURCEDESC$TRESOURCEDESC$$LONGINT
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

L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__CLEAR$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__CLEAR$stub:
.indirect_symbol _CLASSES_TFPLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__CREATE$$TRESOURCETREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TTYPERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TTYPERESTREENODE$stub:
.indirect_symbol _RESOURCETREE_TTYPERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TTYPERESTREENODE
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

L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$TRESOURCEDESC$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__GETIDCOUNT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDCOUNT$$LONGWORD$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__GETNAMEDCOUNT$$LONGWORD
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

L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TNAMERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TNAMERESTREENODE$stub:
.indirect_symbol _RESOURCETREE_TNAMERESTREENODE_$__CREATE$TRESOURCEDESC$TRESOURCETREENODE$$TNAMERESTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__GETIDENTRY$LONGINT$$TRESOURCETREENODE
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

L_RESOURCETREE_TLANGIDRESTREENODE_$__CREATE$crc7D4D7999$stub:
.indirect_symbol _RESOURCETREE_TLANGIDRESTREENODE_$__CREATE$crc7D4D7999
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$WORD$LONGINT$$BOOLEAN$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__INTERNALFIND$TFPLIST$WORD$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD
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
.globl	_$RESOURCETREE$_Ld2
_$RESOURCETREE$_Ld2:
	.short	0
	.long	_$RESOURCETREE$_Ld3
	.align 2
.globl	_$RESOURCETREE$_Ld3
_$RESOURCETREE$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCETREE_TRESOURCETREENODE
_INIT_RESOURCETREE_TRESOURCETREENODE:
	.byte	15,17
	.ascii	"TResourceTreeNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCETREE_TRESOURCETREENODE
_RTTI_RESOURCETREE_TRESOURCETREENODE:
	.byte	15,17
	.ascii	"TResourceTreeNode"
	.long	_VMT_RESOURCETREE_TRESOURCETREENODE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	12
	.ascii	"resourcetree"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld5
_$RESOURCETREE$_Ld5:
	.short	0
	.long	_$RESOURCETREE$_Ld6
	.align 2
.globl	_$RESOURCETREE$_Ld6
_$RESOURCETREE$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCETREE_TROOTRESTREENODE
_INIT_RESOURCETREE_TROOTRESTREENODE:
	.byte	15,16
	.ascii	"TRootResTreeNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCETREE_TROOTRESTREENODE
_RTTI_RESOURCETREE_TROOTRESTREENODE:
	.byte	15,16
	.ascii	"TRootResTreeNode"
	.long	_VMT_RESOURCETREE_TROOTRESTREENODE
	.long	_RTTI_RESOURCETREE_TRESOURCETREENODE
	.short	0
	.byte	12
	.ascii	"resourcetree"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld8
_$RESOURCETREE$_Ld8:
	.short	0
	.long	_$RESOURCETREE$_Ld9
	.align 2
.globl	_$RESOURCETREE$_Ld9
_$RESOURCETREE$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_RTTI_RESOURCETREE_TTYPERESTREENODE
_RTTI_RESOURCETREE_TTYPERESTREENODE:
	.byte	15,16
	.ascii	"TTypeResTreeNode"
	.long	_VMT_RESOURCETREE_TTYPERESTREENODE
	.long	_RTTI_RESOURCETREE_TRESOURCETREENODE
	.short	0
	.byte	12
	.ascii	"resourcetree"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld11
_$RESOURCETREE$_Ld11:
	.short	0
	.long	_$RESOURCETREE$_Ld12
	.align 2
.globl	_$RESOURCETREE$_Ld12
_$RESOURCETREE$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_RTTI_RESOURCETREE_TNAMERESTREENODE
_RTTI_RESOURCETREE_TNAMERESTREENODE:
	.byte	15,16
	.ascii	"TNameResTreeNode"
	.long	_VMT_RESOURCETREE_TNAMERESTREENODE
	.long	_RTTI_RESOURCETREE_TRESOURCETREENODE
	.short	0
	.byte	12
	.ascii	"resourcetree"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCETREE$_Ld14
_$RESOURCETREE$_Ld14:
	.short	0
	.long	_$RESOURCETREE$_Ld15
	.align 2
.globl	_$RESOURCETREE$_Ld15
_$RESOURCETREE$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_RTTI_RESOURCETREE_TLANGIDRESTREENODE
_RTTI_RESOURCETREE_TLANGIDRESTREENODE:
	.byte	15,18
	.ascii	"TLangIDResTreeNode"
	.long	_VMT_RESOURCETREE_TLANGIDRESTREENODE
	.long	_RTTI_RESOURCETREE_TRESOURCETREENODE
	.short	0
	.byte	12
	.ascii	"resourcetree"
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
L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TRESOURCEDESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCETREE_TTYPERESTREENODE$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCETREE_TTYPERESTREENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCETREE_TNAMERESTREENODE$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCETREE_TNAMERESTREENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ENOMOREFREEIDSEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ENOMOREFREEIDSEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCETREE_TLANGIDRESTREENODE$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCETREE_TLANGIDRESTREENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr:
.indirect_symbol _VMT_RESFACTORY_TRESOURCEFACTORY
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

