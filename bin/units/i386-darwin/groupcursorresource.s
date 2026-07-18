# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__READRESOURCEITEMHEADER
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__READRESOURCEITEMHEADER:
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
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	leal	4(%eax),%edx
	movl	%ebx,%eax
	movl	$14,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movw	16(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	-14(%ebp),%ecx
	movl	$1,%edx
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
	jne	Lj50
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj50:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj49:
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
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITECURCURSORHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITECURCURSORHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,-38(%ebp)
	movl	-20(%ebp),%eax
	movw	6(%eax),%ax
	movw	%ax,-40(%ebp)
	movzwl	-40(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movw	%ax,-40(%ebp)
	movb	-38(%ebp),%al
	movb	%al,-36(%ebp)
	movb	-40(%ebp),%al
	movb	%al,-35(%ebp)
	movw	$0,-34(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	leal	-32(%ebp),%edx
	movl	%ebx,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	leal	-30(%ebp),%edx
	movl	%ebx,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	subl	$4,-28(%ebp)
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
	subl	$4,%esi
	sbbl	$0,%ebx
	movl	%esi,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITEHEADER$TSTREAM
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITEHEADER$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	$0,-14(%ebp)
	movw	$2,-12(%ebp)
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
	jl	Lj140
	decl	-20(%ebp)
	.align 2
Lj141:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITECURCURSORHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD$stub
	movl	%eax,-24(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj141
Lj140:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CLEARITEMLIST
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CLEARITEMLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj154
	jmp	Lj155
Lj154:
	jmp	Lj152
Lj155:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj157
	decl	-12(%ebp)
	.align 2
Lj158:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj165
	jmp	Lj166
Lj165:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj166:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj158
Lj157:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
Lj152:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__DELETESUBITEMS
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__DELETESUBITEMS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj175
	jmp	Lj176
Lj175:
	jmp	Lj173
Lj176:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj178
	decl	-12(%ebp)
	.align 2
Lj179:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj186
	jmp	Lj187
Lj186:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub
Lj187:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj179
Lj178:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
Lj173:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATESUBITEM
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATESUBITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj199
Lj199:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%eax
	incl	%eax
	movw	%ax,-46(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movzwl	-46(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	68(%eax),%edx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj199(%ebx),%eax
	call	L_RESFACTORY_TRESOURCEFACTORY_$__CREATERESOURCE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD$stub
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj218
	jmp	Lj219
Lj218:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD$stub
	movw	%ax,-46(%ebp)
Lj219:
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
	leal	-28(%ebp),%edx
	movl	%esi,%eax
	movl	$16,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movzbw	-28(%ebp),%dx
	movw	%dx,4(%eax)
	movzbl	-27(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movw	%ax,6(%edx)
	movl	-12(%ebp),%eax
	movw	$1,8(%eax)
	movl	-12(%ebp),%eax
	movw	$1,10(%eax)
	movl	-12(%ebp),%edx
	movw	-46(%ebp),%ax
	movw	%ax,16(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj268
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-44(%ebp),%edx
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
	leal	-24(%ebp),%edx
	movl	%esi,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	leal	-22(%ebp),%edx
	movl	%esi,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-40(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%edx
	movl	%esi,%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
Lj268:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj269
	decl	%eax
	testl	%eax,%eax
	je	Lj270
Lj270:
	call	LFPC_RERAISE$stub
Lj269:
	addl	$4,-40(%ebp)
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	leal	4(%eax),%edx
	movl	%esi,%eax
	movl	$14,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__UPDATEITEMOWNER$LONGINT
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__UPDATEITEMOWNER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
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
	je	Lj356
	jmp	Lj357
Lj356:
	jmp	Lj348
Lj357:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj358
	jmp	Lj359
Lj358:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	44(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub
	jmp	Lj348
Lj359:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	L_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD$stub
	movzwl	-14(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	cmpl	%eax,%esi
	jne	Lj376
	jmp	Lj377
Lj376:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%edx
	movw	-14(%ebp),%ax
	movw	%ax,16(%edx)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj394
	jmp	Lj396
Lj396:
	movl	-8(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj394
	jmp	Lj395
Lj394:
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
	jne	Lj411
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
Lj411:
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
	je	Lj412
	decl	%eax
	testl	%eax,%eax
	je	Lj413
Lj413:
	call	LFPC_RERAISE$stub
Lj412:
Lj395:
Lj377:
Lj348:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETSUBSTREAM$LONGINT$INT64$$TSTREAM
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETSUBSTREAM$LONGINT$INT64$$TSTREAM:
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
	movl	$4,(%esp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	$4,%eax
	sbbl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETTYPE$$TRESOURCEDESC
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETTYPE$$TRESOURCEDESC:
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
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETNAME$$TRESOURCEDESC
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETNAME$$TRESOURCEDESC:
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
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN:
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
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN:
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
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATE$$TGROUPCURSORRESOURCE
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATE$$TGROUPCURSORRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj478
Lj478:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj479
	jmp	Lj480
Lj479:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj480:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj485
	jmp	Lj486
Lj485:
	jmp	Lj477
Lj486:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj489
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj493
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE$stub
	movl	-8(%ebp),%eax
	movl	$0,64(%eax)
	movl	-8(%ebp),%eax
	movl	$0,60(%eax)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj478(%ebx),%edx
	movl	$12,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,52(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj478(%ebx),%edx
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
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj478(%ebx),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,68(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj478(%ebx),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,72(%edx)
Lj493:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj494
	call	LFPC_RERAISE$stub
Lj494:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj546
	jmp	Lj545
Lj546:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj544
	jmp	Lj545
Lj544:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj545:
Lj489:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj491
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj550
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj551
	jmp	Lj552
Lj551:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj552:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj550:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj549
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj549:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj491
Lj491:
Lj477:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATE$crcC533B837
_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATE$crcC533B837:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj559
	jmp	Lj560
Lj559:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj560:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj565
	jmp	Lj566
Lj565:
	jmp	Lj557
Lj566:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj569
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj573
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
Lj573:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj574
	call	LFPC_RERAISE$stub
Lj574:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj586
	jmp	Lj585
Lj586:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj584
	jmp	Lj585
Lj584:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj585:
Lj569:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj571
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj590
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj591
	jmp	Lj592
Lj591:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj592:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj590:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj589
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj589:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj571
Lj571:
Lj557:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_GROUPCURSORRESOURCE
_INIT$_GROUPCURSORRESOURCE:
.reference __GROUPCURSORRESOURCE_init
.globl	__GROUPCURSORRESOURCE_init
__GROUPCURSORRESOURCE_init:
.reference _INIT$_GROUPCURSORRESOURCE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$12,%edx
	call	L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$GROUPCURSORRESOURCE$_Ld1
_$GROUPCURSORRESOURCE$_Ld1:
	.byte	20
	.ascii	"TGroupCursorResource"

.const_data
	.align 2
.globl	_VMT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE
_VMT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE:
	.long	76,-76
	.long	_VMT_GROUPRESOURCE_TGROUPRESOURCE
	.long	_$GROUPCURSORRESOURCE$_Ld1
	.long	0,0
	.long	_$GROUPCURSORRESOURCE$_Ld2
	.long	_RTTI_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE
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
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETTYPE$$TRESOURCEDESC
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETNAME$$TRESOURCEDESC
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__NOTIFYRESOURCESLOADED
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATE$$TGROUPCURSORRESOURCE
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATE$crcC533B837
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__UPDATERAWDATA
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__READRESOURCEITEMHEADER
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITEHEADER$TSTREAM
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CREATESUBITEM
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__UPDATEITEMOWNER$LONGINT
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__CLEARITEMLIST
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__DELETESUBITEMS
	.long	_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__GETSUBSTREAM$LONGINT$INT64$$TSTREAM
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_GROUPCURSORRESOURCE
_THREADVARLIST_GROUPCURSORRESOURCE:
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

L_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITECURCURSORHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD$stub:
.indirect_symbol _GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE_$__WRITECURCURSORHEADER$TSTREAM$LONGINT$LONGWORD$$LONGWORD
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
.globl	_$GROUPCURSORRESOURCE$_Ld2
_$GROUPCURSORRESOURCE$_Ld2:
	.short	0
	.long	_$GROUPCURSORRESOURCE$_Ld3
	.align 2
.globl	_$GROUPCURSORRESOURCE$_Ld3
_$GROUPCURSORRESOURCE$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE
_INIT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE:
	.byte	15,20
	.ascii	"TGroupCursorResource"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE
_RTTI_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE:
	.byte	15,20
	.ascii	"TGroupCursorResource"
	.long	_VMT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE
	.long	_RTTI_GROUPRESOURCE_TGROUPRESOURCE
	.short	0
	.byte	19
	.ascii	"groupcursorresource"
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
L_VMT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE$non_lazy_ptr:
.indirect_symbol _VMT_GROUPCURSORRESOURCE_TGROUPCURSORRESOURCE
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

