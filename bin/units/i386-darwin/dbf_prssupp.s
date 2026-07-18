# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj6:
	movl	-8(%ebp),%eax
	call	L_DBF_PRSSUPP_TOCOLLECTION_$__FREEALL$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17
	jmp	Lj16
Lj17:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj16:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TOCOLLECTION_$__ATFREE$LONGINT
_DBF_PRSSUPP_TOCOLLECTION_$__ATFREE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TOCOLLECTION_$__FREEALL
_DBF_PRSSUPP_TOCOLLECTION_$__FREEALL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj38
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj43
	decl	-8(%ebp)
	.align 2
Lj44:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	cmpl	-8(%ebp),%ebx
	jg	Lj44
Lj43:
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj39
	decl	%eax
	testl	%eax,%eax
	je	Lj40
Lj40:
	call	LFPC_RERAISE$stub
Lj39:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TOCOLLECTION_$__DOFREE$POINTER
_DBF_PRSSUPP_TOCOLLECTION_$__DOFREE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PRSSUPP_TOCOLLECTION_$__ATFREE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER
_DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj70
Lj70:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-4(%ebp),%edx
	movl	L_VMT_SYSTEM_TOBJECT$non_lazy_ptr-Lj70(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%esi
	movl	%esi,%edi
	movl	%edi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj72:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TNOOWNERCOLLECTION_$__FREEITEM$POINTER
_DBF_PRSSUPP_TNOOWNERCOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
_DBF_PRSSUPP_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	testb	%al,%al
	jne	Lj89
	jmp	Lj90
Lj89:
	jmp	Lj102
	.align 2
Lj101:
	incl	-16(%ebp)
Lj102:
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj104
	jmp	Lj103
Lj104:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	cmpl	-4(%ebp),%eax
	jne	Lj101
	jmp	Lj103
Lj103:
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj111
	jmp	Lj112
Lj111:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj112:
Lj90:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDREPLACE$POINTER
_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDREPLACE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%edx
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	testb	%al,%al
	jne	Lj119
	jmp	Lj120
Lj119:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
Lj120:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER
_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%edx
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT
_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDLIST$TLIST$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj160
	decl	-16(%ebp)
	.align 2
Lj161:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	cmpl	-16(%ebp),%ebx
	jg	Lj161
Lj160:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
_DBF_PRSSUPP_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj185
	.align 2
Lj184:
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
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj205
	jmp	Lj206
Lj205:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj209
Lj206:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj209:
Lj185:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj184
	jmp	Lj186
Lj186:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSTRCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
_DBF_PRSSUPP_TSTRCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_TSTRCOLLECTION_$__FREEITEM$POINTER
_DBF_PRSSUPP_TSTRCOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRDISPOSE$PCHAR$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT
_DBF_PRSSUPP_GETSTRFROMINT$LONGINT$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	.align 2
Lj236:
	movl	-4(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	addl	$48,%edx
	movl	-28(%ebp),%eax
	movb	%dl,-23(%ebp,%eax,1)
	movl	-4(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj236
Lj238:
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj245:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%ecx
	movb	-23(%ebp,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	incl	-32(%ebp)
	decl	-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj247
	jmp	Lj245
Lj247:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR
_DBF_PRSSUPP_GETSTRFROMINT_WIDTH$LONGINT$LONGINT$PCHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj252
	jmp	Lj253
Lj252:
	jmp	Lj250
Lj253:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	setlb	-33(%ebp)
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	$0,-28(%ebp)
	.align 2
Lj260:
	movl	-4(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	addl	$48,%edx
	movl	-28(%ebp),%eax
	movb	%dl,-23(%ebp,%eax,1)
	movl	-4(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj262
	jmp	Lj267
Lj267:
	movl	-28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj262
	jmp	Lj260
Lj262:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movb	8(%ebp),%cl
	movl	-32(%ebp),%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	cmpb	$0,-33(%ebp)
	jne	Lj276
	jmp	Lj277
Lj276:
	movb	8(%ebp),%al
	cmpb	$48,%al
	je	Lj278
	jmp	Lj279
Lj278:
	movl	-12(%ebp),%eax
	movb	$45,(%eax)
	jmp	Lj282
Lj279:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj283
	jmp	Lj284
Lj283:
	incl	-32(%ebp)
	decl	-28(%ebp)
Lj284:
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%eax
	decl	%eax
	movb	$45,(%edx,%eax,1)
Lj282:
Lj277:
	.align 2
Lj287:
	decl	-28(%ebp)
	movl	-12(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-23(%ebp,%eax,1),%al
	movb	%al,(%ecx,%edx,1)
	incl	-32(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj289
	jmp	Lj287
Lj289:
Lj250:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR
_DBF_PRSSUPP_GETSTRFROMINT64_WIDTH$INT64$LONGINT$PCHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj294
	jmp	Lj295
Lj294:
	jmp	Lj292
Lj295:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj296
	jg	Lj297
	cmpl	$0,%edx
	jb	Lj296
	jmp	Lj297
Lj296:
	movb	$1,-41(%ebp)
	jmp	Lj298
Lj297:
	movb	$0,-41(%ebp)
Lj298:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj301
	jg	Lj302
	cmpl	$0,%eax
	jb	Lj301
	jmp	Lj302
Lj301:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj305
Lj302:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
Lj305:
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	$0,-36(%ebp)
	.align 2
Lj310:
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_mod_int64$stub
	addl	$48,%eax
	adcl	$0,%edx
	movl	-36(%ebp),%edx
	movb	%al,-32(%ebp,%edx,1)
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	incl	-36(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj325
	cmpl	$0,%edx
	jne	Lj325
	jmp	Lj312
Lj325:
	movl	-36(%ebp),%eax
	cmpl	-4(%ebp),%eax
	je	Lj312
	jmp	Lj310
Lj312:
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movb	-12(%ebp),%cl
	movl	-40(%ebp),%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	cmpb	$0,-41(%ebp)
	jne	Lj334
	jmp	Lj335
Lj334:
	movb	-12(%ebp),%al
	cmpb	$48,%al
	je	Lj336
	jmp	Lj337
Lj336:
	movl	-8(%ebp),%eax
	movb	$45,(%eax)
	jmp	Lj340
Lj337:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj341
	jmp	Lj342
Lj341:
	incl	-40(%ebp)
	decl	-36(%ebp)
Lj342:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	decl	%eax
	movb	$45,(%edx,%eax,1)
Lj340:
Lj335:
	.align 2
Lj345:
	decl	-36(%ebp)
	movl	-8(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	movb	%al,(%ecx,%edx,1)
	incl	-40(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj347
	jmp	Lj345
Lj347:
Lj292:
	leave
	ret

.text
	.align 4
.globl	_DBF_PRSSUPP_GETSTRFROMINT64$INT64$PCHAR$$LONGINT
_DBF_PRSSUPP_GETSTRFROMINT64$INT64$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj354
	jg	Lj355
	cmpl	$0,%eax
	jb	Lj354
	jmp	Lj355
Lj354:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj358
Lj355:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
Lj358:
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	.align 2
Lj365:
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_mod_int64$stub
	addl	$48,%eax
	adcl	$0,%edx
	movl	-32(%ebp),%edx
	movb	%al,-28(%ebp,%edx,1)
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	incl	-32(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj365
	cmpl	$0,%edx
	jne	Lj365
	jmp	Lj367
Lj367:
	movl	-32(%ebp),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj382:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%ecx
	movb	-28(%ebp,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	incl	-36(%ebp)
	decl	-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj384
	jmp	Lj382
Lj384:
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld1
_$DBF_PRSSUPP$_Ld1:
	.byte	12
	.ascii	"TOCollection"

.const_data
	.align 2
.globl	_VMT_DBF_PRSSUPP_TOCOLLECTION
_VMT_DBF_PRSSUPP_TOCOLLECTION:
	.long	16,-16
	.long	_VMT_CLASSES_TLIST
	.long	_$DBF_PRSSUPP$_Ld1
	.long	0,0
	.long	_$DBF_PRSSUPP$_Ld2
	.long	_RTTI_DBF_PRSSUPP_TOCOLLECTION
	.long	0,0,0,0
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld4
_$DBF_PRSSUPP$_Ld4:
	.byte	18
	.ascii	"TNoOwnerCollection"

.const_data
	.align 2
.globl	_VMT_DBF_PRSSUPP_TNOOWNERCOLLECTION
_VMT_DBF_PRSSUPP_TNOOWNERCOLLECTION:
	.long	16,-16
	.long	_VMT_DBF_PRSSUPP_TOCOLLECTION
	.long	_$DBF_PRSSUPP$_Ld4
	.long	0,0
	.long	_$DBF_PRSSUPP$_Ld5
	.long	_RTTI_DBF_PRSSUPP_TNOOWNERCOLLECTION
	.long	0,0,0,0
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSSUPP_TNOOWNERCOLLECTION_$__FREEITEM$POINTER
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld7
_$DBF_PRSSUPP$_Ld7:
	.byte	17
	.ascii	"TSortedCollection"

.const_data
	.align 2
.globl	_VMT_DBF_PRSSUPP_TSORTEDCOLLECTION
_VMT_DBF_PRSSUPP_TSORTEDCOLLECTION:
	.long	16,-16
	.long	_VMT_DBF_PRSSUPP_TOCOLLECTION
	.long	_$DBF_PRSSUPP$_Ld7
	.long	0,0
	.long	_$DBF_PRSSUPP$_Ld8
	.long	_RTTI_DBF_PRSSUPP_TSORTEDCOLLECTION
	.long	0,0,0,0
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__FREEITEM$POINTER
	.long	FPC_ABSTRACTERROR
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDREPLACE$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld10
_$DBF_PRSSUPP$_Ld10:
	.byte	14
	.ascii	"TStrCollection"

.const_data
	.align 2
.globl	_VMT_DBF_PRSSUPP_TSTRCOLLECTION
_VMT_DBF_PRSSUPP_TSTRCOLLECTION:
	.long	16,-16
	.long	_VMT_DBF_PRSSUPP_TSORTEDCOLLECTION
	.long	_$DBF_PRSSUPP$_Ld10
	.long	0,0
	.long	_$DBF_PRSSUPP$_Ld11
	.long	_RTTI_DBF_PRSSUPP_TSTRCOLLECTION
	.long	0,0,0,0
	.long	_DBF_PRSSUPP_TOCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_CLASSES_TLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	_DBF_PRSSUPP_TSTRCOLLECTION_$__FREEITEM$POINTER
	.long	_DBF_PRSSUPP_TSTRCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADD$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__ADDREPLACE$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_DBF_PRSSUPP_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_PRSSUPP
_THREADVARLIST_DBF_PRSSUPP:
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

L_DBF_PRSSUPP_TOCOLLECTION_$__FREEALL$stub:
.indirect_symbol _DBF_PRSSUPP_TOCOLLECTION_$__FREEALL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__DESTROY$stub:
.indirect_symbol _CLASSES_TLIST_$__DESTROY
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

L_CLASSES_TLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__DELETE$LONGINT
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

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
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

L_CLASSES_TLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__SETCOUNT$LONGINT
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

L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PRSSUPP_TOCOLLECTION_$__ATFREE$LONGINT$stub:
.indirect_symbol _DBF_PRSSUPP_TOCOLLECTION_$__ATFREE$LONGINT
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__INSERT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__INSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRDISPOSE$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRDISPOSE$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mod_int64$stub:
.indirect_symbol fpc_mod_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
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
.globl	_$DBF_PRSSUPP$_Ld2
_$DBF_PRSSUPP$_Ld2:
	.short	0
	.long	_$DBF_PRSSUPP$_Ld3
	.align 2
.globl	_$DBF_PRSSUPP$_Ld3
_$DBF_PRSSUPP$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSSUPP_TOCOLLECTION
_INIT_DBF_PRSSUPP_TOCOLLECTION:
	.byte	15,12
	.ascii	"TOCollection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSSUPP_TOCOLLECTION
_RTTI_DBF_PRSSUPP_TOCOLLECTION:
	.byte	15,12
	.ascii	"TOCollection"
	.long	_VMT_DBF_PRSSUPP_TOCOLLECTION
	.long	_RTTI_CLASSES_TLIST
	.short	0
	.byte	11
	.ascii	"dbf_prssupp"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld5
_$DBF_PRSSUPP$_Ld5:
	.short	0
	.long	_$DBF_PRSSUPP$_Ld6
	.align 2
.globl	_$DBF_PRSSUPP$_Ld6
_$DBF_PRSSUPP$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSSUPP_TNOOWNERCOLLECTION
_INIT_DBF_PRSSUPP_TNOOWNERCOLLECTION:
	.byte	15,18
	.ascii	"TNoOwnerCollection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSSUPP_TNOOWNERCOLLECTION
_RTTI_DBF_PRSSUPP_TNOOWNERCOLLECTION:
	.byte	15,18
	.ascii	"TNoOwnerCollection"
	.long	_VMT_DBF_PRSSUPP_TNOOWNERCOLLECTION
	.long	_RTTI_DBF_PRSSUPP_TOCOLLECTION
	.short	0
	.byte	11
	.ascii	"dbf_prssupp"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld8
_$DBF_PRSSUPP$_Ld8:
	.short	0
	.long	_$DBF_PRSSUPP$_Ld9
	.align 2
.globl	_$DBF_PRSSUPP$_Ld9
_$DBF_PRSSUPP$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSSUPP_TSORTEDCOLLECTION
_INIT_DBF_PRSSUPP_TSORTEDCOLLECTION:
	.byte	15,17
	.ascii	"TSortedCollection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSSUPP_TSORTEDCOLLECTION
_RTTI_DBF_PRSSUPP_TSORTEDCOLLECTION:
	.byte	15,17
	.ascii	"TSortedCollection"
	.long	_VMT_DBF_PRSSUPP_TSORTEDCOLLECTION
	.long	_RTTI_DBF_PRSSUPP_TOCOLLECTION
	.short	0
	.byte	11
	.ascii	"dbf_prssupp"
	.short	0

.const_data
	.align 2
.globl	_$DBF_PRSSUPP$_Ld11
_$DBF_PRSSUPP$_Ld11:
	.short	0
	.long	_$DBF_PRSSUPP$_Ld12
	.align 2
.globl	_$DBF_PRSSUPP$_Ld12
_$DBF_PRSSUPP$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PRSSUPP_TSTRCOLLECTION
_INIT_DBF_PRSSUPP_TSTRCOLLECTION:
	.byte	15,14
	.ascii	"TStrCollection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_PRSSUPP_TSTRCOLLECTION
_RTTI_DBF_PRSSUPP_TSTRCOLLECTION:
	.byte	15,14
	.ascii	"TStrCollection"
	.long	_VMT_DBF_PRSSUPP_TSTRCOLLECTION
	.long	_RTTI_DBF_PRSSUPP_TSORTEDCOLLECTION
	.short	0
	.byte	11
	.ascii	"dbf_prssupp"
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
L_VMT_SYSTEM_TOBJECT$non_lazy_ptr:
.indirect_symbol _VMT_SYSTEM_TOBJECT
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

