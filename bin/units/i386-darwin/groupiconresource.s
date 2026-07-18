# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__READRESOURCEITEMHEADER
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__READRESOURCEITEMHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	jmp	Lj3
Lj6:
	leal	-8(%ebp),%eax
	movl	$20,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj13
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	leal	4(%eax),%edx
	movl	%ebx,%eax
	movl	$14,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	$3,%edx
	call	L_RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETCHILDOWNER$TABSTRACTRESOURCE$stub
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj13:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj15
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj52
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj52:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj51
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj51:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj15
Lj15:
Lj3:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEICOICONHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEICOICONHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	leal	-36(%ebp),%edi
	leal	4(%eax),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	leal	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$16,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	8(%ebp),%esi
	movl	$0,%ebx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%edi
	movl	%edi,%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	addl	%eax,%esi
	adcl	%edx,%ebx
	movl	%esi,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEHEADER$TSTREAM
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEHEADER$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	$0,-14(%ebp)
	movw	$1,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movw	8(%eax),%ax
	movw	%ax,-10(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-14(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$6,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%eax
	shll	$4,%eax
	addl	$6,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj102
	decl	-20(%ebp)
	.align 2
Lj103:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEICOICONHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD$stub
	movl	%eax,-24(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj103
Lj102:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CLEARITEMLIST
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CLEARITEMLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj116
	jmp	Lj117
Lj116:
	jmp	Lj114
Lj117:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj119
	decl	-12(%ebp)
	.align 2
Lj120:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj127
	jmp	Lj128
Lj127:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj128:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj120
Lj119:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
Lj114:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__DELETESUBITEMS
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__DELETESUBITEMS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj137
	jmp	Lj138
Lj137:
	jmp	Lj135
Lj138:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj140
	decl	-12(%ebp)
	.align 2
Lj141:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj148
	jmp	Lj149
Lj148:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub
Lj149:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj141
Lj140:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
Lj135:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATESUBITEM
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATESUBITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj161
Lj161:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%eax
	incl	%eax
	movw	%ax,-30(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movzwl	-30(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	68(%eax),%edx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj161(%ebx),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD$stub
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj180
	jmp	Lj181
Lj180:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD$stub
	movw	%ax,-30(%ebp)
Lj181:
	leal	-12(%ebp),%eax
	movl	$20,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	leal	4(%eax),%edx
	movl	%esi,%eax
	movl	$16,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj220
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-24(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%edx
	movl	%esi,%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
Lj220:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj221
	decl	%eax
	testl	%eax,%eax
	je	Lj222
Lj222:
	call	LFPC_RERAISE$stub
Lj221:
	movl	-12(%ebp),%eax
	movzwl	-30(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	leal	4(%eax),%edx
	movl	%esi,%eax
	movl	$14,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__UPDATEITEMOWNER$LONGINT
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__UPDATEITEMOWNER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	44(%edx),%eax
	je	Lj288
	jmp	Lj289
Lj288:
	jmp	Lj280
Lj289:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj290
	jmp	Lj291
Lj290:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	44(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub
	jmp	Lj280
Lj291:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	L_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	cmpl	-16(%ebp),%eax
	jne	Lj308
	jmp	Lj309
Lj308:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj326
	jmp	Lj328
Lj328:
	movl	-8(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj326
	jmp	Lj327
Lj326:
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj343
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	incl	%edx
	imull	$14,%edx
	addl	$6,%edx
	subl	$2,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	leal	16(%eax),%edx
	movl	%ebx,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj343:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj344
	decl	%eax
	testl	%eax,%eax
	je	Lj345
Lj345:
	call	LFPC_RERAISE$stub
Lj344:
Lj327:
Lj309:
Lj280:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETSUBSTREAM$LONGINT$INT64$$TSTREAM
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETSUBSTREAM$LONGINT$INT64$$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	(%eax),%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,-16(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETTYPE$$TRESOURCEDESC
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETTYPE$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETNAME$$TRESOURCEDESC
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETNAME$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	-4(%ebp),%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	-4(%ebp),%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATE$$TGROUPICONRESOURCE
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATE$$TGROUPICONRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj410
Lj410:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj411
	jmp	Lj412
Lj411:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj412:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj417
	jmp	Lj418
Lj417:
	jmp	Lj409
Lj418:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj421
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj425
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE$stub
	movl	-8(%ebp),%eax
	movl	$0,64(%eax)
	movl	-8(%ebp),%eax
	movl	$0,60(%eax)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj410(%ebx),%edx
	movl	$14,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,52(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj410(%ebx),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj410(%ebx),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,68(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj410(%ebx),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,72(%edx)
Lj425:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj426
	call	LFPC_RERAISE$stub
Lj426:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj478
	jmp	Lj477
Lj478:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj476
	jmp	Lj477
Lj476:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj477:
Lj421:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj423
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj482
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj483
	jmp	Lj484
Lj483:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj484:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj482:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj481
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj481:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj423
Lj423:
Lj409:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATE$TRESOURCEDESC$TRESOURCEDESC$$TGROUPICONRESOURCE
_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATE$TRESOURCEDESC$TRESOURCEDESC$$TGROUPICONRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj491
	jmp	Lj492
Lj491:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj492:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj497
	jmp	Lj498
Lj497:
	jmp	Lj489
Lj498:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj501
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj505
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
Lj505:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj506
	call	LFPC_RERAISE$stub
Lj506:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj518
	jmp	Lj517
Lj518:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj516
	jmp	Lj517
Lj516:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj517:
Lj501:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj503
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj522
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj523
	jmp	Lj524
Lj523:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj524:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj522:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj521
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj521:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj503
Lj503:
Lj489:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_GROUPICONRESOURCE
_INIT$_GROUPICONRESOURCE:
.reference __GROUPICONRESOURCE_init
.globl	__GROUPICONRESOURCE_init
__GROUPICONRESOURCE_init:
.reference _INIT$_GROUPICONRESOURCE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_GROUPICONRESOURCE_TGROUPICONRESOURCE$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$14,%edx
	call	L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$GROUPICONRESOURCE$_Ld1
_$GROUPICONRESOURCE$_Ld1:
	.byte	18
	.ascii	"TGroupIconResource"

.const_data
	.align 2
.globl	_VMT_GROUPICONRESOURCE_TGROUPICONRESOURCE
_VMT_GROUPICONRESOURCE_TGROUPICONRESOURCE:
	.long	76,-76
	.long	_VMT_GROUPRESOURCE_TGROUPRESOURCE
	.long	_$GROUPICONRESOURCE$_Ld1
	.long	0,0
	.long	_$GROUPICONRESOURCE$_Ld2
	.long	_RTTI_GROUPICONRESOURCE_TGROUPICONRESOURCE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__DESTROY
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
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__SETOWNERLIST$TRESOURCES
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETTYPE$$TRESOURCEDESC
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETNAME$$TRESOURCEDESC
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__NOTIFYRESOURCESLOADED
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATE$$TGROUPICONRESOURCE
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATE$TRESOURCEDESC$TRESOURCEDESC$$TGROUPICONRESOURCE
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__UPDATERAWDATA
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__READRESOURCEITEMHEADER
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEHEADER$TSTREAM
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CREATESUBITEM
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__UPDATEITEMOWNER$LONGINT
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__CLEARITEMLIST
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__DELETESUBITEMS
	.long	_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__GETSUBSTREAM$LONGINT$INT64$$TSTREAM
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_GROUPICONRESOURCE
_THREADVARLIST_GROUPICONRESOURCE:
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
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

L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$WORD$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$WORD$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__SETCHILDOWNER$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETCHILDOWNER$TABSTRACTRESOURCE
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

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEICOICONHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD$stub:
.indirect_symbol _GROUPICONRESOURCE_TGROUPICONRESOURCE_$__WRITEICOICONHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD
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

L_CLASSES_TFPLIST_$__CLEAR$stub:
.indirect_symbol _CLASSES_TFPLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM
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

L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE
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

L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC
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

L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS
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
.globl	_$GROUPICONRESOURCE$_Ld2
_$GROUPICONRESOURCE$_Ld2:
	.short	0
	.long	_$GROUPICONRESOURCE$_Ld3
	.align 2
.globl	_$GROUPICONRESOURCE$_Ld3
_$GROUPICONRESOURCE$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_GROUPICONRESOURCE_TGROUPICONRESOURCE
_INIT_GROUPICONRESOURCE_TGROUPICONRESOURCE:
	.byte	15,18
	.ascii	"TGroupIconResource"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GROUPICONRESOURCE_TGROUPICONRESOURCE
_RTTI_GROUPICONRESOURCE_TGROUPICONRESOURCE:
	.byte	15,18
	.ascii	"TGroupIconResource"
	.long	_VMT_GROUPICONRESOURCE_TGROUPICONRESOURCE
	.long	_RTTI_GROUPRESOURCE_TGROUPRESOURCE
	.short	0
	.byte	17
	.ascii	"groupiconresource"
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
L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr:
.indirect_symbol _VMT_RESFACTORY_TRESOURCEFACTORY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TRESOURCEDESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_GROUPICONRESOURCE_TGROUPICONRESOURCE$non_lazy_ptr:
.indirect_symbol _VMT_GROUPICONRESOURCE_TGROUPICONRESOURCE
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

