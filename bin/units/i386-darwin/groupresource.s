# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__FINDSUBRESOURCES
_GROUPRESOURCE_TGROUPRESOURCE_$__FINDSUBRESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	jmp	Lj3
Lj6:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj23
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	leal	-10(%ebp),%edx
	movl	%esi,%eax
	movl	$6,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
Lj23:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	movl	L_VMT_CLASSES_EREADERROR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj37
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj39
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj40:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj25
Lj39:
	jmp	Lj22
Lj37:
	call	LFPC_RERAISE$stub
Lj22:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3
Lj25:
	movzwl	-6(%ebp),%esi
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj42
	decl	-16(%ebp)
	.align 2
Lj43:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*140(%edx)
	cmpl	-16(%ebp),%esi
	jg	Lj43
Lj42:
Lj3:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__CHECKBUILDITEMSTREAM
_GROUPRESOURCE_TGROUPRESOURCE_$__CHECKBUILDITEMSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj47
Lj47:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj48
	jmp	Lj49
Lj48:
	jmp	Lj46
Lj49:
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__FINDSUBRESOURCES$stub
	movl	L_VMT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM$non_lazy_ptr-Lj47(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD$stub
	movl	$0,%edx
	movl	%edx,8(%esp)
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ecx
	movl	L_VMT_RESDATASTREAM_TRESOURCEDATASTREAM$non_lazy_ptr-Lj47(%ebx),%edx
	movl	$0,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D$stub
	movl	-4(%ebp),%edx
	movl	%eax,60(%edx)
Lj46:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM
_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__CHECKBUILDITEMSTREAM$stub
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__WRITERESHEADER$$WORD
_GROUPRESOURCE_TGROUPRESOURCE_$__WRITERESHEADER$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%ebx
	leal	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	$6,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	leal	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	$6,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movw	-8(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__CREATESUBITEMS
_GROUPRESOURCE_TGROUPRESOURCE_$__CREATESUBITEMS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj125
Lj125:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj126
	jmp	Lj127
Lj126:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj125(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
Lj127:
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__WRITERESHEADER$$WORD$stub
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%esi
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj139
	decl	-12(%ebp)
	.align 2
Lj140:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	cmpl	-12(%ebp),%esi
	jg	Lj140
Lj139:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__GETSUBSTREAMCOUNT$$LONGINT
_GROUPRESOURCE_TGROUPRESOURCE_$__GETSUBSTREAMCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__SETOWNERLIST$TRESOURCES
_GROUPRESOURCE_TGROUPRESOURCE_$__SETOWNERLIST$TRESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETOWNERLIST$TRESOURCES$stub
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj153
	jmp	Lj154
Lj153:
	jmp	Lj147
Lj154:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj156
	decl	-12(%ebp)
	.align 2
Lj157:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*152(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj157
Lj156:
Lj147:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__NOTIFYRESOURCESLOADED
_GROUPRESOURCE_TGROUPRESOURCE_$__NOTIFYRESOURCESLOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__FINDSUBRESOURCES$stub
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__DESTROY
_GROUPRESOURCE_TGROUPRESOURCE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj168
	jmp	Lj169
Lj168:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj169:
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj172
	jmp	Lj173
Lj172:
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj173:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TABSTRACTRESOURCE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj194
	jmp	Lj193
Lj194:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj192
	jmp	Lj193
Lj192:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj193:
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
_GROUPRESOURCE_TGROUPRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj198
Lj198:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_GROUPRESOURCE_TGROUPRESOURCE$non_lazy_ptr-Lj198(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj199
	jmp	Lj200
Lj199:
	movl	-8(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%edx
	movl	%esi,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	jmp	Lj217
Lj200:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj217:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__SETCUSTOMITEMDATASTREAM$TSTREAM
_GROUPRESOURCE_TGROUPRESOURCE_$__SETCUSTOMITEMDATASTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPRESOURCE_$__UPDATERAWDATA
_GROUPRESOURCE_TGROUPRESOURCE_$__UPDATERAWDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj236
	jmp	Lj238
Lj238:
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETITEMDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj236
	jmp	Lj237
Lj236:
	jmp	Lj234
Lj237:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*160(%edx)
	movl	-4(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__CREATESUBITEMS$stub
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj234:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READFROMSUBSTREAM$TSTREAM$formal$INT64$LONGINT$$LONGINT
_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READFROMSUBSTREAM$TSTREAM$formal$INT64$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	12(%ebp),%eax
	sbbl	16(%ebp),%edx
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj257
	jmp	Lj258
Lj257:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj258:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj261
	jmp	Lj262
Lj261:
	movl	$0,-16(%ebp)
Lj262:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__CREATE$crc9B591F43
_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__CREATE$crc9B591F43:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj286
Lj286:
	popl	-108(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj287
	jmp	Lj288
Lj287:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj288:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj293
	jmp	Lj294
Lj293:
	jmp	Lj285
Lj294:
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj297
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj301
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
	movl	-108(%ebp),%eax
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj286(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-108(%ebp),%eax
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj286(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	16(%ebp),%eax
	movl	16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	16(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPRESOURCE_$__GETSUBSTREAMCOUNT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-12(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj339
	decl	-16(%ebp)
	.align 2
Lj340:
	incl	-16(%ebp)
	leal	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	16(%ebp),%eax
	movl	16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	%eax,-24(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-24(%ebp),%ecx
	movl	-108(%ebp),%eax
	movl	L_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM$non_lazy_ptr-Lj286(%eax),%edx
	movl	$0,%eax
	movl	-108(%ebp),%edi
	movl	L_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM$non_lazy_ptr-Lj286(%edi),%ebx
	call	*144(%ebx)
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%eax
	movl	8(%ebx),%edx
	movl	12(%ebx),%ecx
	addl	%edi,%edx
	adcl	%eax,%ecx
	movl	%edx,8(%ebx)
	movl	%ecx,12(%ebx)
	cmpl	-16(%ebp),%esi
	jg	Lj340
Lj339:
Lj301:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj302
	call	LFPC_RERAISE$stub
Lj302:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj367
	jmp	Lj366
Lj367:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj365
	jmp	Lj366
Lj365:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj366:
Lj297:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj299
	leal	-76(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj371
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj372
	jmp	Lj373
Lj372:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj373:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj371:
	call	LFPC_POPADDRSTACK$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj370
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj370:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj299
Lj299:
Lj285:
	movl	-12(%ebp),%eax
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__DESTROY
_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj380
	jmp	Lj381
Lj380:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj381:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj385
	decl	-12(%ebp)
	.align 2
Lj386:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj386
Lj385:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj401
	jmp	Lj400
Lj401:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj400:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READ$formal$LONGINT$$LONGINT
_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
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
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj412
	jmp	Lj413
Lj412:
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj413:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj416
	jmp	Lj417
Lj416:
	movl	$0,-20(%ebp)
Lj417:
	movl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,8(%esp)
	movl	16(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READFROMSUBSTREAM$TSTREAM$formal$INT64$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-12(%ebp),%ecx
	movl	16(%ecx),%ebx
	movl	20(%ecx),%esi
	addl	%edx,%ebx
	adcl	%eax,%esi
	movl	%ebx,16(%ecx)
	movl	%esi,20(%ecx)
	movl	-24(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	subl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj439
	decl	-36(%ebp)
	.align 2
Lj440:
	incl	-36(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj441
	jmp	Lj442
Lj441:
	jmp	Lj404
Lj442:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%esi
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	16(%esi),%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	movl	20(%esi),%ecx
	sbbl	%eax,%ecx
	movl	%ecx,%eax
	movl	%eax,8(%esp)
	movl	%edx,4(%esp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-36(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READFROMSUBSTREAM$TSTREAM$formal$INT64$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-12(%ebp),%ecx
	movl	16(%ecx),%esi
	movl	20(%ecx),%edi
	addl	%edx,%esi
	adcl	%eax,%edi
	movl	%esi,16(%ecx)
	movl	%edi,20(%ecx)
	movl	-24(%ebp),%eax
	addl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	subl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-36(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	addl	%eax,-28(%ebp)
	cmpl	-36(%ebp),%ebx
	jg	Lj440
Lj439:
Lj404:
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$GROUPRESOURCE$_Ld1
_$GROUPRESOURCE$_Ld1:
	.byte	14
	.ascii	"TGroupResource"

.const_data
	.align 2
.globl	_VMT_GROUPRESOURCE_TGROUPRESOURCE
_VMT_GROUPRESOURCE_TGROUPRESOURCE:
	.long	76,-76
	.long	_VMT_RESOURCE_TABSTRACTRESOURCE
	.long	_$GROUPRESOURCE$_Ld1
	.long	0,0
	.long	_$GROUPRESOURCE$_Ld2
	.long	_RTTI_GROUPRESOURCE_TGROUPRESOURCE
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__NOTIFYRESOURCESLOADED
	.long	_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE
	.long	FPC_ABSTRACTERROR
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	.long	_GROUPRESOURCE_TGROUPRESOURCE_$__UPDATERAWDATA
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$GROUPRESOURCE$_Ld4
_$GROUPRESOURCE$_Ld4:
	.byte	22
	.ascii	"TGroupCachedDataStream"

.const_data
	.align 2
.globl	_VMT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM
_VMT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM:
	.long	32,-32
	.long	_VMT_RESDATASTREAM_TCACHEDDATASTREAM
	.long	_$GROUPRESOURCE$_Ld4
	.long	0,0
	.long	_$GROUPRESOURCE$_Ld5
	.long	_RTTI_GROUPRESOURCE_TGROUPCACHEDDATASTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__DESTROY
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
	.long	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_RESDATASTREAM_TCACHEDDATASTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__CREATE$crc9B591F43
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_GROUPRESOURCE
_THREADVARLIST_GROUPRESOURCE:
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
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

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
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

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
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

L_GROUPRESOURCE_TGROUPRESOURCE_$__FINDSUBRESOURCES$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPRESOURCE_$__FINDSUBRESOURCES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GROUPRESOURCE_TGROUPRESOURCE_$__CHECKBUILDITEMSTREAM$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPRESOURCE_$__CHECKBUILDITEMSTREAM
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

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GROUPRESOURCE_TGROUPRESOURCE_$__WRITERESHEADER$$WORD$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPRESOURCE_$__WRITERESHEADER$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__SETOWNERLIST$TRESOURCES$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETOWNERLIST$TRESOURCES
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

L_RESOURCE_TABSTRACTRESOURCE_$__DESTROY$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM
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

L_GROUPRESOURCE_TGROUPRESOURCE_$__CREATESUBITEMS$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPRESOURCE_$__CREATESUBITEMS
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

L_RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM$stub:
.indirect_symbol _RESDATASTREAM_TCACHEDDATASTREAM_$__CREATE$TSTREAM$TABSTRACTRESOURCE$INT64$$TCACHEDDATASTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GROUPRESOURCE_TGROUPRESOURCE_$__GETSUBSTREAMCOUNT$$LONGINT$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPRESOURCE_$__GETSUBSTREAMCOUNT$$LONGINT
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READFROMSUBSTREAM$TSTREAM$formal$INT64$LONGINT$$LONGINT$stub:
.indirect_symbol _GROUPRESOURCE_TGROUPCACHEDDATASTREAM_$__READFROMSUBSTREAM$TSTREAM$formal$INT64$LONGINT$$LONGINT
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
.globl	_$GROUPRESOURCE$_Ld2
_$GROUPRESOURCE$_Ld2:
	.short	0
	.long	_$GROUPRESOURCE$_Ld3
	.align 2
.globl	_$GROUPRESOURCE$_Ld3
_$GROUPRESOURCE$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_GROUPRESOURCE_TGROUPRESOURCE
_INIT_GROUPRESOURCE_TGROUPRESOURCE:
	.byte	15,14
	.ascii	"TGroupResource"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GROUPRESOURCE_TGROUPRESOURCE
_RTTI_GROUPRESOURCE_TGROUPRESOURCE:
	.byte	15,14
	.ascii	"TGroupResource"
	.long	_VMT_GROUPRESOURCE_TGROUPRESOURCE
	.long	_RTTI_RESOURCE_TABSTRACTRESOURCE
	.short	0
	.byte	13
	.ascii	"groupresource"
	.short	0

.const_data
	.align 2
.globl	_$GROUPRESOURCE$_Ld5
_$GROUPRESOURCE$_Ld5:
	.short	0
	.long	_$GROUPRESOURCE$_Ld6
	.align 2
.globl	_$GROUPRESOURCE$_Ld6
_$GROUPRESOURCE$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM
_INIT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM:
	.byte	15,22
	.ascii	"TGroupCachedDataStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GROUPRESOURCE_TGROUPCACHEDDATASTREAM
_RTTI_GROUPRESOURCE_TGROUPCACHEDDATASTREAM:
	.byte	15,22
	.ascii	"TGroupCachedDataStream"
	.long	_VMT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM
	.long	_RTTI_RESDATASTREAM_TCACHEDDATASTREAM
	.short	0
	.byte	13
	.ascii	"groupresource"
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
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_EREADERROR$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_EREADERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM$non_lazy_ptr:
.indirect_symbol _VMT_GROUPRESOURCE_TGROUPCACHEDDATASTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESDATASTREAM_TRESOURCEDATASTREAM$non_lazy_ptr:
.indirect_symbol _VMT_RESDATASTREAM_TRESOURCEDATASTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_GROUPRESOURCE_TGROUPRESOURCE$non_lazy_ptr:
.indirect_symbol _VMT_GROUPRESOURCE_TGROUPRESOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM$non_lazy_ptr:
.indirect_symbol _VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
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

