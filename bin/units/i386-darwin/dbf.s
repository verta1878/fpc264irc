# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_TABLELEVELTODBFVERSION$LONGINT$$TXBASEVERSION
_DBF_TABLELEVELTODBFVERSION$LONGINT$$TXBASEVERSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$3,%eax
	jl	Lj6
	subl	$3,%eax
	je	Lj7
	subl	$4,%eax
	je	Lj8
	subl	$18,%eax
	je	Lj9
	subl	$5,%eax
	je	Lj10
	jmp	Lj6
Lj7:
	movb	$2,-5(%ebp)
	jmp	Lj5
Lj8:
	movb	$6,-5(%ebp)
	jmp	Lj5
Lj9:
	movb	$5,-5(%ebp)
	jmp	Lj5
Lj10:
	movb	$7,-5(%ebp)
	jmp	Lj5
Lj6:
	movb	$3,-5(%ebp)
Lj5:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__CREATE$TFIELD$$TDBFBLOBSTREAM
_DBF_TDBFBLOBSTREAM_$__CREATE$TFIELD$$TDBFBLOBSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj22
Lj22:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj23
	jmp	Lj24
Lj23:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj24:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj29
	jmp	Lj30
Lj29:
	jmp	Lj21
Lj30:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj33
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj37
	movl	-4(%ebp),%edx
	movl	L_VMT_DB_TBLOBFIELD$non_lazy_ptr-Lj22(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	-12(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-12(%ebp),%eax
	movl	$0,36(%eax)
	movl	-12(%ebp),%eax
	movl	$0,32(%eax)
	movl	-12(%ebp),%eax
	movl	$1,40(%eax)
	movl	-12(%ebp),%eax
	movb	$0,28(%eax)
Lj37:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj38
	call	LFPC_RERAISE$stub
Lj38:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj56
	jmp	Lj55
Lj56:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj54
	jmp	Lj55
Lj54:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj55:
Lj33:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj35
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj60
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj62:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj60:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj59:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj35
Lj35:
Lj21:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__DESTROY
_DBF_TDBFBLOBSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj69
	jmp	Lj70
Lj69:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj70:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$1,%eax
	je	Lj73
	jmp	Lj74
Lj73:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TMEMORYSTREAM_$__DESTROY$stub
	jmp	Lj79
Lj74:
	movl	-8(%ebp),%eax
	cmpb	$0,28(%eax)
	jne	Lj82
	jmp	Lj81
Lj82:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$2,%eax
	je	Lj80
	jmp	Lj81
Lj80:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	72(%eax),%eax
	movl	340(%eax),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj85
Lj85:
	jnc	Lj83
	jmp	Lj84
Lj83:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	movl	20(%edx),%ecx
	movl	$0,%edx
	movl	-8(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*260(%ebx)
Lj84:
Lj81:
Lj79:
	movl	-8(%ebp),%eax
	decl	40(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj94
	jmp	Lj93
Lj94:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj92
	jmp	Lj93
Lj92:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj93:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__FREEINSTANCE
_DBF_TDBFBLOBSTREAM_$__FREEINSTANCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj99
	jmp	Lj100
Lj99:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREEINSTANCE$stub
Lj100:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__SETMODE$TBLOBSTREAMMODE
_DBF_TDBFBLOBSTREAM_$__SETMODE$TBLOBSTREAMMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpb	$0,28(%eax)
	jne	Lj107
	jmp	Lj110
Lj110:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	je	Lj107
	jmp	Lj109
Lj109:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	je	Lj107
	jmp	Lj108
Lj107:
	movb	$1,28(%edx)
	jmp	Lj111
Lj108:
	movb	$0,28(%edx)
Lj111:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__CANCEL
_DBF_TDBFBLOBSTREAM_$__CANCEL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,32(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__COMMIT
_DBF_TDBFBLOBSTREAM_$__COMMIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,28(%eax)
	jne	Lj120
	jmp	Lj121
Lj120:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	72(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DBF_TDBFBLOBSTREAM_$__TRANSLATE$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	96(%eax),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%ecx
	movl	-4(%ebp),%edx
	leal	32(%edx),%edx
	call	L_DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM$stub
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	72(%eax),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	leal	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	$3,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	$0,28(%eax)
Lj121:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__ADDREFERENCE$$TDBFBLOBSTREAM
_DBF_TDBFBLOBSTREAM_$__ADDREFERENCE$$TDBFBLOBSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	40(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__GETTRANSLITERATE$$BOOLEAN
_DBF_TDBFBLOBSTREAM_$__GETTRANSLITERATE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movb	293(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFBLOBSTREAM_$__TRANSLATE$BOOLEAN
_DBF_TDBFBLOBSTREAM_$__TRANSLATE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_TDBFBLOBSTREAM_$__GETTRANSLITERATE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj170
	jmp	Lj169
Lj170:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	$0,%edx
	jg	Lj168
	jl	Lj169
	cmpl	$0,%eax
	ja	Lj168
	jmp	Lj169
Lj168:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	addl	$1,%eax
	adcl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj187:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$512,%eax
	jg	Lj192
	jmp	Lj193
Lj192:
	movl	$512,-16(%ebp)
Lj193:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-21(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	movb	-4(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	72(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	72(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*744(%ebx)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-21(%ebp),%cl
	movb	%cl,(%eax,%edx,1)
	movl	-16(%ebp),%eax
	subl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj189
	jmp	Lj187
Lj189:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	$1,%eax
	sbbl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj169:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CREATE$TCOMPONENT$$TDBF
_DBF_TDBF_$__CREATE$TCOMPONENT$$TDBF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj217
Lj217:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj218
	jmp	Lj219
Lj218:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj219:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj224
	jmp	Lj225
Lj224:
	jmp	Lj216
Lj225:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj228
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj232
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj217(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj241
	jmp	Lj242
Lj241:
	movl	L_VMT_DBF_DBFFILE_TDBFGLOBALS$non_lazy_ptr-Lj217(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_DBFFILE_TDBFGLOBALS_$__CREATE$$TDBFGLOBALS$stub
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj217(%ebx),%edx
	movl	%eax,(%edx)
Lj242:
	movl	-12(%ebp),%eax
	movl	$4,216(%eax)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_TDBFINDEXDEFS$non_lazy_ptr-Lj217(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_TDBFINDEXDEFS_$__CREATE$TDBF$$TDBFINDEXDEFS$stub
	movl	-12(%ebp),%edx
	movl	%eax,448(%edx)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DBF_TDBFMASTERLINK$non_lazy_ptr-Lj217(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_TDBFMASTERLINK_$__CREATE$TDBF$$TDBFMASTERLINK$stub
	movl	-12(%ebp),%edx
	movl	%eax,360(%edx)
	movl	-12(%ebp),%eax
	movl	360(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_DBF_TDBF_$__MASTERCHANGED$TOBJECT$non_lazy_ptr-Lj217(%ebx),%eax
	movl	%eax,-100(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,48(%edx)
	movl	-96(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%eax
	movl	360(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_DBF_TDBF_$__MASTERDISABLED$TOBJECT$non_lazy_ptr-Lj217(%ebx),%eax
	movl	%eax,-100(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,56(%edx)
	movl	-96(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-12(%ebp),%eax
	movb	$1,444(%eax)
	movl	-12(%ebp),%eax
	movb	$1,357(%eax)
	movl	-12(%ebp),%eax
	movb	$0,356(%eax)
	movl	-12(%ebp),%eax
	movl	$0,364(%eax)
	movl	-12(%ebp),%eax
	movb	$0,430(%eax)
	movl	-12(%ebp),%eax
	movb	$0,400(%eax)
	movl	-12(%ebp),%eax
	movb	$0,428(%eax)
	movl	-12(%ebp),%eax
	movb	$0,431(%eax)
	movl	-12(%ebp),%eax
	movb	$0,432(%eax)
	movl	-12(%ebp),%eax
	movb	$0,435(%eax)
	movl	-12(%ebp),%eax
	movb	$0,433(%eax)
	movl	-12(%ebp),%eax
	movb	$0,436(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,412(%eax)
	movl	-12(%ebp),%eax
	movl	$4,424(%eax)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj217(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	396(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj217(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,396(%esi)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj217(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SETFILEPATH$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	$0,408(%eax)
	movl	-12(%ebp),%eax
	movl	$0,404(%eax)
	movl	-12(%ebp),%eax
	movl	$0,440(%eax)
	movl	-12(%ebp),%edx
	movl	$0,-100(%ebp)
	movl	$0,-96(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,460(%edx)
	movl	-96(%ebp),%eax
	movl	%eax,464(%edx)
	movl	-12(%ebp),%edx
	movl	$0,-100(%ebp)
	movl	$0,-96(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,500(%edx)
	movl	-96(%ebp),%eax
	movl	%eax,504(%edx)
Lj232:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj233
	call	LFPC_RERAISE$stub
Lj233:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj317
	jmp	Lj316
Lj317:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj315
	jmp	Lj316
Lj315:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj316:
Lj228:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj230
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj321
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj322
	jmp	Lj323
Lj322:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj323:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj321:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj320
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj320:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj230
Lj230:
Lj216:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__DESTROY
_DBF_TDBF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj330
	jmp	Lj331
Lj330:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj331:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__DESTROY$stub
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	testl	%eax,%eax
	jne	Lj338
	jmp	Lj339
Lj338:
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj341
	incl	-12(%ebp)
	.align 2
Lj342:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj342
Lj341:
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj339:
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj359
	jmp	Lj358
Lj359:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj357
	jmp	Lj358
Lj357:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj358:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__ALLOCRECORDBUFFER$$PCHAR
_DBF_TDBF_$__ALLOCRECORDBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	16(%eax),%edx
	addl	$16,%edx
	movl	-4(%ebp),%eax
	movl	232(%eax),%eax
	addl	%eax,%edx
	incl	%edx
	leal	-8(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FREERECORDBUFFER$PCHAR
_DBF_TDBF_$__FREERECORDBUFFER$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETBOOKMARKDATA$PCHAR$POINTER
_DBF_TDBF_$__GETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
_DBF_TDBF_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR
_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$5,%eax
	jb	Lj383
	subl	$5,%eax
	je	Lj385
	decl	%eax
	je	Lj384
	jmp	Lj383
Lj384:
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj382
Lj385:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj382
Lj383:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj390
	jmp	Lj391
Lj390:
	movl	$0,-8(%ebp)
	jmp	Lj396
Lj391:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
Lj396:
Lj382:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj401
	jmp	Lj402
Lj401:
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	movl	%eax,-8(%ebp)
Lj402:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
_DBF_TDBF_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*664(%ebx)
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
_DBF_TDBF_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj423
	jmp	Lj424
Lj423:
	movb	$0,-13(%ebp)
	jmp	Lj417
Lj424:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$0,%eax
	jg	Lj427
	jmp	Lj428
Lj427:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj443
Lj428:
	movl	-4(%ebp),%eax
	movzwl	148(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	addl	%eax,%ebx
	addl	%ebx,-20(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj452
	jmp	Lj451
Lj452:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj450
	jmp	Lj451
Lj450:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*288(%edx)
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	1(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj451:
Lj443:
Lj417:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETFIELDDATA$TFIELD$POINTER
_DBF_TDBF_$__SETFIELDDATA$TFIELD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*672(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FINDFIRST$$BOOLEAN
_DBF_TDBF_$__FINDFIRST$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__FINDFIRST$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj473
	jmp	Lj475
Lj475:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movb	$1,%dl
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*348(%ebx)
	testb	%al,%al
	jne	Lj473
	jmp	Lj474
Lj473:
	movb	$1,-5(%ebp)
	jmp	Lj484
Lj474:
	movb	$0,-5(%ebp)
Lj484:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FINDLAST$$BOOLEAN
_DBF_TDBF_$__FINDLAST$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__FINDLAST$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj487
	jmp	Lj489
Lj489:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movb	$1,%dl
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*348(%ebx)
	testb	%al,%al
	jne	Lj487
	jmp	Lj488
Lj487:
	movb	$1,-5(%ebp)
	jmp	Lj498
Lj488:
	movb	$0,-5(%ebp)
Lj498:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FINDNEXT$$BOOLEAN
_DBF_TDBF_$__FINDNEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__FINDNEXT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj501
	jmp	Lj503
Lj503:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movb	$0,%dl
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*348(%ebx)
	testb	%al,%al
	jne	Lj501
	jmp	Lj502
Lj501:
	movb	$1,-5(%ebp)
	jmp	Lj512
Lj502:
	movb	$0,-5(%ebp)
Lj512:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FINDPRIOR$$BOOLEAN
_DBF_TDBF_$__FINDPRIOR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__FINDPRIOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj515
	jmp	Lj517
Lj517:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movb	$0,%dl
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*348(%ebx)
	testb	%al,%al
	jne	Lj515
	jmp	Lj516
Lj515:
	movb	$1,-5(%ebp)
	jmp	Lj526
Lj516:
	movb	$0,-5(%ebp)
Lj526:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
_DBF_TDBF_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$0,%eax
	jge	Lj529
	jmp	Lj530
Lj529:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj533
	cmpl	$5,%eax
	stc
	je	Lj533
	clc
Lj533:
	jc	Lj531
	jmp	Lj532
Lj531:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__VALIDATE$POINTER$stub
Lj532:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	leal	12(%eax),%eax
	movl	%eax,-16(%ebp)
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$stub
	jmp	Lj554
Lj530:
	movl	-12(%ebp),%eax
	movl	228(%eax),%eax
	leal	12(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movzwl	148(%edx),%edx
	addl	%edx,%eax
	addl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	setneb	(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj563
	jmp	Lj564
Lj563:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*288(%edx)
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj564:
Lj554:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj575
Lj575:
	jnc	Lj573
	jmp	Lj574
Lj573:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*260(%ebx)
Lj574:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__DOFILTERRECORD$BOOLEAN
_DBF_TDBF_$__DOFILTERRECORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	276(%eax),%eax
	testl	%eax,%eax
	je	Lj586
	movl	-4(%eax),%eax
Lj586:
	cmpl	$0,%eax
	jg	Lj584
	jmp	Lj585
Lj584:
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	movb	%al,(%edx)
Lj585:
	movl	-4(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj599
	jmp	Lj598
Lj599:
	movl	-8(%ebp),%eax
	cmpl	$0,308(%eax)
	jne	Lj597
	jmp	Lj598
Lj597:
	movl	-8(%ebp),%eax
	movl	312(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	308(%ebx),%ebx
	call	*%ebx
Lj598:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__READCURRENTRECORD$PCHAR$BOOLEAN$$TGETRESULT
_DBF_TDBF_$__READCURRENTRECORD$PCHAR$BOOLEAN$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj612
	jmp	Lj614
Lj614:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj612
	jmp	Lj613
Lj612:
	movl	$3,-16(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj623
Lj613:
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	leal	12(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	348(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpb	$0,429(%eax)
	jne	Lj634
	jmp	Lj636
Lj636:
	movl	-24(%ebp),%eax
	movb	12(%eax),%al
	cmpb	$42,%al
	jne	Lj634
	jmp	Lj635
Lj634:
	movb	$1,(%edx)
	jmp	Lj637
Lj635:
	movb	$0,(%edx)
Lj637:
Lj623:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
_DBF_TDBF_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj640
	jmp	Lj641
Lj640:
	movl	$2,-16(%ebp)
	jmp	Lj638
Lj641:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movb	$0,-21(%ebp)
	.align 2
Lj648:
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj654
	decl	%eax
	je	Lj655
	decl	%eax
	je	Lj656
	jmp	Lj654
Lj655:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movb	%al,-21(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj661
	jmp	Lj662
Lj661:
	movl	$0,-16(%ebp)
	jmp	Lj665
Lj662:
	movl	$2,-16(%ebp)
Lj665:
	jmp	Lj653
Lj656:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movb	%al,-21(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj672
	jmp	Lj673
Lj672:
	movl	$0,-16(%ebp)
	jmp	Lj676
Lj673:
	movl	$1,-16(%ebp)
Lj676:
	jmp	Lj653
Lj654:
Lj653:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj679
	jmp	Lj680
Lj679:
	leal	-21(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__READCURRENTRECORD$PCHAR$BOOLEAN$$TGETRESULT$stub
	movl	%eax,-16(%ebp)
Lj680:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj691
	jmp	Lj690
Lj691:
	cmpb	$0,-21(%ebp)
	jne	Lj689
	jmp	Lj690
Lj689:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-20(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*360(%ecx)
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj706
	jmp	Lj708
Lj708:
	movl	-12(%ebp),%eax
	cmpb	$0,436(%eax)
	jne	Lj706
	jmp	Lj707
Lj706:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,404(%eax)
	movl	-12(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-28(%ebp)
	leal	-21(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__DOFILTERRECORD$BOOLEAN$stub
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
Lj707:
Lj690:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj727
	jmp	Lj726
Lj727:
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj725
	jmp	Lj726
Lj725:
	movl	$3,-16(%ebp)
Lj726:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj650
	jmp	Lj730
Lj730:
	cmpb	$0,-21(%ebp)
	jne	Lj650
	jmp	Lj648
Lj650:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj731
	jmp	Lj732
Lj731:
	movl	-20(%ebp),%eax
	movl	$-1,(%eax)
Lj732:
Lj638:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETRECORDSIZE$$WORD
_DBF_TDBF_$__GETRECORDSIZE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movw	16(%eax),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALADDRECORD$POINTER$BOOLEAN
_DBF_TDBF_$__INTERNALADDRECORD$POINTER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leal	12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__INSERT$PCHAR$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj749
	jmp	Lj750
Lj749:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj750:
	movl	-12(%ebp),%eax
	movb	$1,430(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALCLOSE
_DBF_TDBF_$__INTERNALCLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj759
	movl	$0,-12(%ebp)
	jmp	Lj765
	.align 2
Lj764:
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,-8(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	leal	-56(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj780
	movl	-4(%eax),%eax
Lj780:
	testl	%eax,%eax
	je	Lj775
	jmp	Lj774
Lj775:
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	cmpb	$0,36(%eax)
	jne	Lj773
	jmp	Lj774
Lj773:
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	jmp	Lj793
Lj774:
	incl	-12(%ebp)
Lj793:
Lj765:
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	-12(%ebp),%eax
	jg	Lj764
	jmp	Lj766
Lj766:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	testl	%eax,%eax
	jne	Lj796
	jmp	Lj797
Lj796:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj799
	decl	-12(%ebp)
	.align 2
Lj800:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj800
Lj799:
	movl	-4(%ebp),%eax
	leal	368(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
Lj797:
	movl	-4(%ebp),%eax
	leal	408(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj815
	jmp	Lj816
Lj815:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*264(%edx)
Lj816:
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	jne	Lj819
	jmp	Lj820
Lj819:
	movl	-4(%ebp),%eax
	leal	364(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj820:
	movl	-4(%ebp),%eax
	leal	352(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj825
	jmp	Lj826
Lj825:
	movl	-4(%ebp),%eax
	leal	348(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj826:
Lj759:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj760
	call	LFPC_RERAISE$stub
Lj760:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALCANCEL
_DBF_TDBF_$__INTERNALCANCEL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj832
	decl	-8(%ebp)
	.align 2
Lj833:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj836
	jmp	Lj837
Lj836:
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	L_DBF_TDBFBLOBSTREAM_$__CANCEL$stub
Lj837:
	cmpl	-8(%ebp),%ebx
	jg	Lj833
Lj832:
	movl	-4(%ebp),%eax
	movl	412(%eax),%eax
	cmpl	$0,%eax
	jge	Lj840
	jmp	Lj841
Lj840:
	movl	-4(%ebp),%eax
	movl	412(%eax),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$-1,412(%eax)
Lj841:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALDELETE
_DBF_TDBF_$__INTERNALDELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*416(%edx)
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_DB_TDATASET_$__SETSTATE$TDATASETSTATE$stub
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$42,12(%eax)
	movl	-8(%ebp),%eax
	leal	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	412(%eax),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__RECORDDELETED$LONGINT$PCHAR$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*540(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALFIRST
_DBF_TDBF_$__INTERNALFIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALGOTOBOOKMARK$POINTER
_DBF_TDBF_$__INTERNALGOTOBOOKMARK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj878
	jmp	Lj879
Lj878:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__FIRST$stub
	jmp	Lj882
Lj879:
	movl	(%ebx),%eax
	cmpl	$2147483647,%eax
	je	Lj883
	jmp	Lj884
Lj883:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__LAST$stub
	jmp	Lj887
Lj884:
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	-8(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	cmpl	(%ebx),%eax
	jne	Lj888
	jmp	Lj889
Lj888:
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	(%ebx),%edx
	movl	-8(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj889:
Lj887:
Lj882:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALHANDLEEXCEPTION
_DBF_TDBF_$__INTERNALHANDLEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	call	L_SYSUTILS_EXCEPTADDR$$POINTER$stub
	movl	%eax,%ebx
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%ebx,%edx
	call	L_SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETFIELDDEFSFROMDBFFIELDDEFS
_DBF_TDBF_$__GETFIELDDEFSFROMDBFFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj906
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	$-1,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	104(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj914
	decl	-8(%ebp)
	.align 2
Lj915:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	104(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-12(%ebp)
	movl	%ebp,%eax
	call	L_DBF_TDBF_$_GETFIELDDEFSFROMDBFFIELDDEFS_FIXDUPLICATENAMES$stub
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$1,%eax
	jb	Lj927
	decl	%eax
	je	Lj928
	subl	$7,%eax
	je	Lj929
	subl	$4,%eax
	jb	Lj927
	subl	$1,%eax
	jbe	Lj928
	jmp	Lj927
Lj928:
	movb	$0,(%esp)
	movl	-12(%ebp),%eax
	movw	60(%eax),%ax
	movw	%ax,4(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub
	jmp	Lj926
Lj929:
	movb	$0,(%esp)
	movw	$0,4(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub
	jmp	Lj926
Lj927:
	movb	$0,(%esp)
	movw	$0,4(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub
Lj926:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	movl	64(%eax),%edx
	movl	%esi,%eax
	call	L_DB_TFIELDDEF_$__SETPRECISION$LONGINT$stub
	movl	-12(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj972
	jmp	Lj973
Lj972:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TCOLLECTION_$__DELETE$LONGINT$stub
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
Lj973:
	cmpl	-8(%ebp),%ebx
	jg	Lj915
Lj914:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	92(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	108(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj983
	decl	-8(%ebp)
	.align 2
Lj984:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	108(%eax),%eax
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	348(%esi),%esi
	movl	108(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	108(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	348(%ecx),%ecx
	movl	108(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	-16(%ebp),%eax
	je	Lj993
	jmp	Lj994
Lj993:
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETINDEXBYNAME$ANSISTRING$$TDBFINDEXDEF$stub
	testl	%eax,%eax
	je	Lj999
	jmp	Lj1000
Lj999:
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	call	L_DBF_TDBFINDEXDEFS_$__ADD$$TDBFINDEXDEF$stub
	movl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF$stub
Lj1000:
Lj994:
	cmpl	-8(%ebp),%ebx
	jg	Lj984
Lj983:
Lj906:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj907
	call	LFPC_RERAISE$stub
Lj907:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$_GETFIELDDEFSFROMDBFFIELDDEFS_FIXDUPLICATENAMES
_DBF_TDBF_$_GETFIELDDEFSFROMDBFFIELDDEFS_FIXDUPLICATENAMES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1019
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%ebx
	movl	28(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%ebx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1027
	.align 2
Lj1026:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-8(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,28(%ebx)
Lj1027:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	268(%eax),%eax
	call	L_DB_TDEFCOLLECTION_$__INDEXOF$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jge	Lj1026
	jmp	Lj1028
Lj1028:
Lj1019:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1020
	call	LFPC_RERAISE$stub
Lj1020:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INITFIELDDEFS
_DBF_TDBF_$__INITFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*568(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE
_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1056
Lj1056:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1057
	movl	L_VMT_DBF_DBFFILE_TDBFFILE$non_lazy_ptr-Lj1056(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE$stub
	movl	-8(%ebp),%edx
	movl	%eax,348(%edx)
	movl	-8(%ebp),%eax
	movb	357(%eax),%al
	testb	%al,%al
	je	Lj1066
	jmp	Lj1067
Lj1066:
	movl	-8(%ebp),%eax
	movl	376(%eax),%edx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%edx
	movl	-8(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,100(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%edx
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,116(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%ecx
	movzbl	-4(%ebp),%edx
	movl	L_TC_DBF_TDBF_$_INITDBFFILE$TPAGEDFILEMODE_FILEMODETOMEMMODE$non_lazy_ptr-Lj1056(%ebx),%eax
	movb	(%eax,%edx,1),%al
	movb	%al,48(%ecx)
	jmp	Lj1078
Lj1067:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	392(%eax),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,48(%eax)
Lj1078:
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movb	$0,51(%eax)
	movl	-8(%ebp),%eax
	movl	348(%eax),%edx
	movl	-8(%ebp),%eax
	movb	444(%eax),%al
	movb	%al,174(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	476(%eax),%edx
	movl	%edx,176(%ecx)
	movl	480(%eax),%eax
	movl	%eax,180(%ecx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	484(%eax),%edx
	movl	%edx,184(%ecx)
	movl	488(%eax),%eax
	movl	%eax,188(%ecx)
Lj1057:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1058
	call	LFPC_RERAISE$stub
Lj1058:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALINITFIELDDEFS
_DBF_TDBF_$__INTERNALINITFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	je	Lj1105
	jmp	Lj1106
Lj1105:
	movl	-4(%ebp),%eax
	movb	$7,%dl
	call	L_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE$stub
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub
	movb	$1,-5(%ebp)
Lj1106:
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__GETFIELDDEFSFROMDBFFIELDDEFS$stub
	cmpb	$0,-5(%ebp)
	jne	Lj1117
	jmp	Lj1118
Lj1117:
	movl	-4(%ebp),%eax
	leal	348(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1118:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALINITRECORD$PCHAR
_DBF_TDBF_$__INTERNALINITRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	leal	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALLAST
_DBF_TDBF_$__INTERNALLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*132(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__DETERMINETRANSLATIONMODE
_DBF_TDBF_$__DETERMINETRANSLATIONMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1140
Lj1140:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	144(%eax),%eax
	movl	%eax,-8(%ebp)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	cmpl	-8(%ebp),%eax
	je	Lj1143
	jmp	Lj1144
Lj1143:
	movl	-4(%ebp),%eax
	movb	$1,445(%eax)
	jmp	Lj1147
Lj1144:
	call	L_DBF_WTIL_GETOEMCP$$LONGWORD$stub
	cmpl	-8(%ebp),%eax
	je	Lj1148
	jmp	Lj1149
Lj1148:
	movl	-4(%ebp),%eax
	movb	$2,445(%eax)
	jmp	Lj1152
Lj1149:
	movl	-8(%ebp),%edx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj1140(%ebx),%eax
	movl	(%eax),%eax
	call	L_DBF_DBFFILE_TDBFGLOBALS_$__CODEPAGEINSTALLED$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1153
	jmp	Lj1154
Lj1153:
	movl	-4(%ebp),%eax
	movb	$3,445(%eax)
	jmp	Lj1161
Lj1154:
	movl	-4(%ebp),%eax
	movb	$0,445(%eax)
Lj1161:
Lj1152:
Lj1147:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALOPEN
_DBF_TDBF_$__INTERNALOPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%esi,-152(%ebp)
	call	Lj1165
Lj1165:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1166
	movl	-4(%ebp),%eax
	leal	348(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movb	357(%eax),%al
	cmpb	$1,%al
	je	Lj1175
	jmp	Lj1173
Lj1175:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	384(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	392(%eax),%edx
	leal	-64(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-64(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1174
	jmp	Lj1173
Lj1174:
	movl	-4(%ebp),%eax
	movzbl	356(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj1184
Lj1184:
	jc	Lj1171
	jmp	Lj1173
Lj1173:
	movl	-4(%ebp),%eax
	movb	357(%eax),%al
	testb	%al,%al
	je	Lj1185
	jmp	Lj1172
Lj1185:
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	testl	%eax,%eax
	je	Lj1171
	jmp	Lj1172
Lj1171:
	movb	$1,-14(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,452(%eax)
	jne	Lj1188
	jmp	Lj1189
Lj1188:
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	leal	-14(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	452(%ebx),%ebx
	call	*%ebx
Lj1189:
	cmpb	$0,-14(%ebp)
	jne	Lj1196
	jmp	Lj1197
Lj1196:
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__CREATETABLE$stub
	jmp	Lj1200
Lj1197:
	jmp	Lj1166
Lj1200:
Lj1172:
	movl	-4(%ebp),%eax
	movzbl	400(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	428(%edx),%ecx
	shll	$1,%eax
	movl	L_TC_DBF_TDBF_$_INTERNALOPEN_DBFOPENMODE$non_lazy_ptr-Lj1165(%esi),%edx
	leal	(%eax,%edx),%edx
	movb	(%edx,%ecx,1),%dl
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE$stub
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movb	120(%eax),%al
	cmpb	$2,%al
	jb	Lj1208
	subb	$2,%al
	je	Lj1209
	decb	%al
	je	Lj1210
	subb	$2,%al
	je	Lj1212
	decb	%al
	je	Lj1211
	decb	%al
	je	Lj1213
	jmp	Lj1208
Lj1209:
	movl	-4(%ebp),%eax
	movl	$3,424(%eax)
	jmp	Lj1207
Lj1210:
	movl	-4(%ebp),%eax
	movl	$4,424(%eax)
	jmp	Lj1207
Lj1211:
	movl	-4(%ebp),%eax
	movl	$7,424(%eax)
	jmp	Lj1207
Lj1212:
	movl	-4(%ebp),%eax
	movl	$25,424(%eax)
	jmp	Lj1207
Lj1213:
	movl	-4(%ebp),%eax
	movl	$30,424(%eax)
	jmp	Lj1207
Lj1208:
Lj1207:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT$stub
	movl	-4(%ebp),%edx
	movb	%al,420(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*568(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj1230
	jmp	Lj1231
Lj1230:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
Lj1231:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	shll	$2,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,368(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__DETERMINETRANSLATIONMODE$stub
	movl	-4(%ebp),%eax
	movb	445(%eax),%al
	testb	%al,%al
	je	Lj1246
	jmp	Lj1247
Lj1246:
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,468(%eax)
	jne	Lj1250
	jmp	Lj1251
Lj1250:
	movl	-4(%ebp),%eax
	movl	472(%eax),%eax
	leal	-13(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	468(%ebx),%ebx
	call	*%ebx
Lj1251:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1260
	decb	%al
	je	Lj1261
	decb	%al
	je	Lj1262
	decb	%al
	je	Lj1263
	jmp	Lj1259
Lj1260:
	movl	-4(%ebp),%eax
	movb	$0,445(%eax)
	jmp	Lj1258
Lj1261:
	call	L_DBF_WTIL_GETOEMCP$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	%eax,144(%edx)
	movl	-4(%ebp),%eax
	movb	$2,445(%eax)
	jmp	Lj1258
Lj1262:
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	%eax,144(%edx)
	movl	-4(%ebp),%eax
	movb	$1,445(%eax)
	jmp	Lj1258
Lj1263:
	movl	-4(%ebp),%eax
	movl	348(%eax),%edx
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj1165(%esi),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,144(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__DETERMINETRANSLATIONMODE$stub
	jmp	Lj1258
Lj1259:
Lj1258:
Lj1247:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*488(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,408(%edx)
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1283
	decl	-20(%ebp)
	.align 2
Lj1284:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movb	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj1284
Lj1283:
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1311
	movl	-4(%ebp),%eax
	movl	276(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEFILTER$ANSISTRING$stub
Lj1311:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1313
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj1165(%esi),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj1319
	movl	%eax,-108(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj1320
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj1165(%esi),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*464(%ecx)
Lj1320:
	call	LFPC_POPADDRSTACK$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj1326
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1326:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1313
Lj1319:
	call	LFPC_RERAISE$stub
Lj1313:
	movl	-4(%ebp),%eax
	movl	396(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__SETINDEXNAME$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	cmpb	$0,20(%eax)
	jne	Lj1333
	jmp	Lj1332
Lj1333:
	movl	-4(%ebp),%eax
	cmpl	$0,440(%eax)
	jne	Lj1331
	jmp	Lj1332
Lj1331:
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__CHECKMASTERRANGE$stub
Lj1332:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*520(%edx)
Lj1166:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1167
	call	LFPC_RERAISE$stub
Lj1167:
	movl	-156(%ebp),%ebx
	movl	-152(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETCODEPAGE$$LONGWORD
_DBF_TDBF_$__GETCODEPAGE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj1346
	jmp	Lj1347
Lj1346:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	144(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1350
Lj1347:
	movl	$0,-8(%ebp)
Lj1350:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETLANGUAGESTR$$ANSISTRING
_DBF_TDBF_$__GETLANGUAGESTR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj1355
	jmp	Lj1356
Lj1355:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING$stub
Lj1356:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__LOCKTABLE$BOOLEAN$$BOOLEAN
_DBF_TDBF_$__LOCKTABLE$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movb	-4(%ebp),%dl
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKALLPAGES$BOOLEAN$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__UNLOCKTABLE
_DBF_TDBF_$__UNLOCKTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALEDIT
_DBF_TDBF_$__INTERNALEDIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,412(%edx)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1384
	decl	-8(%ebp)
	.align 2
Lj1385:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj1388
	jmp	Lj1389
Lj1388:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_DBF_TDBFBLOBSTREAM_$__CANCEL$stub
Lj1389:
	cmpl	-8(%ebp),%ebx
	jg	Lj1385
Lj1384:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	leal	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	412(%eax),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__LOCKRECORD$LONGINT$PCHAR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALPOST
_DBF_TDBF_$__INTERNALPOST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1407
	decl	-12(%ebp)
	.align 2
Lj1408:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	$0,(%edx,%eax,4)
	jne	Lj1411
	jmp	Lj1412
Lj1411:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_DBF_TDBFBLOBSTREAM_$__COMMIT$stub
Lj1412:
	cmpl	-12(%ebp),%ebx
	jg	Lj1408
Lj1407:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$2,%eax
	je	Lj1415
	jmp	Lj1416
Lj1415:
	movl	-8(%ebp),%eax
	leal	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	412(%eax),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__UNLOCKRECORD$LONGINT$PCHAR$stub
	movl	-4(%ebp),%eax
	movl	$-1,412(%eax)
	jmp	Lj1425
Lj1416:
	movl	-8(%ebp),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__INSERT$PCHAR$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1432
	jmp	Lj1433
Lj1432:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj1433:
Lj1425:
	movl	-4(%ebp),%eax
	movb	$1,430(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__RESYNC$TRESYNCMODE
_DBF_TDBF_$__RESYNC$TRESYNCMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	431(%eax),%al
	testb	%al,%al
	je	Lj1442
	jmp	Lj1444
Lj1444:
	movl	-8(%ebp),%eax
	movb	430(%eax),%al
	testb	%al,%al
	je	Lj1442
	jmp	Lj1443
Lj1442:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__RESYNC$TRESYNCMODE$stub
Lj1443:
	movl	-8(%ebp),%eax
	movb	$0,430(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INITFIELDDEFSFROMFIELDS
_DBF_TDBF_$__INITFIELDDEFSFROMFIELDS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1454
	decl	-8(%ebp)
	.align 2
Lj1455:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj1464
	jmp	Lj1465
Lj1464:
	movl	-12(%ebp),%eax
	movb	189(%eax),%al
	movb	%al,(%esp)
	movl	-12(%ebp),%eax
	movw	192(%eax),%ax
	movw	%ax,4(%esp)
	movl	-12(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub
Lj1465:
	cmpl	-8(%ebp),%ebx
	jg	Lj1455
Lj1454:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CREATETABLE
_DBF_TDBF_$__CREATETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_TDBF_$__CREATETABLEEX$TDBFFIELDDEFS$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CHECKDBFFIELDDEFS$TDBFFIELDDEFS
_DBF_TDBF_$__CHECKDBFFIELDDEFS$TDBFFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj1483
Lj1483:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-76(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1486
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1489
	jmp	Lj1490
Lj1489:
	jmp	Lj1486
Lj1490:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1492
	decl	-12(%ebp)
	.align 2
Lj1493:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	424(%eax),%eax
	cmpl	$7,%eax
	jl	Lj1502
	jmp	Lj1503
Lj1502:
	movl	-16(%ebp),%eax
	movzbl	44(%eax),%eax
	subl	$67,%eax
	cmpl	$2,%eax
	jb	Lj1506
	cmpl	$3,%eax
	stc
	je	Lj1506
	subl	$9,%eax
	cmpl	$3,%eax
	jb	Lj1506
Lj1506:
	jnc	Lj1504
	jmp	Lj1505
Lj1504:
	movl	$1,(%esp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-16(%ebp),%eax
	movb	44(%eax),%dl
	leal	-76(%ebp),%eax
	movl	%ebp,%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_DBF_TDBF_$_CHECKDBFFIELDDEFS$TDBFFIELDDEFS_FIELDTYPESTR$CHAR$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr-Lj1483(%esi),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj1483(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1483(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1505:
Lj1503:
	cmpl	-12(%ebp),%ebx
	jg	Lj1493
Lj1492:
Lj1486:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1487
	call	LFPC_RERAISE$stub
Lj1487:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$_CHECKDBFFIELDDEFS$TDBFFIELDDEFS_FIELDTYPESTR$CHAR$$ANSISTRING
_DBF_TDBF_$_CHECKDBFFIELDDEFS$TDBFFIELDDEFS_FIELDTYPESTR$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj1485
Lj1485:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1523
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj1526
	jmp	Lj1527
Lj1526:
	movl	L_$DBF$_Ld1$non_lazy_ptr-Lj1485(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	jmp	Lj1530
Lj1527:
	movb	-4(%ebp),%al
	cmpb	$127,%al
	ja	Lj1531
	jmp	Lj1532
Lj1531:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movzbl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$DBF$_Ld3$non_lazy_ptr-Lj1485(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj1543
Lj1532:
	movl	L_$DBF$_Ld5$non_lazy_ptr-Lj1485(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$DBF$_Ld7$non_lazy_ptr-Lj1485(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1543:
Lj1530:
	movl	L_$DBF$_Ld9$non_lazy_ptr-Lj1485(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	L_$DBF$_Ld11$non_lazy_ptr-Lj1485(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movzbl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$DBF$_Ld13$non_lazy_ptr-Lj1485(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1523:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1524
	call	LFPC_RERAISE$stub
Lj1524:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CREATETABLEEX$TDBFFIELDDEFS
_DBF_TDBF_$__CREATETABLEEX$TDBFFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-208(%ebp)
	movl	%esi,-204(%ebp)
	movl	%edi,-200(%ebp)
	call	Lj1567
Lj1567:
	popl	-196(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-188(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1568
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	seteb	-21(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1575
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj1581
	cmpb	$0,-21(%ebp)
	jne	Lj1585
	jmp	Lj1586
Lj1585:
	movl	-8(%ebp),%ecx
	movl	-196(%ebp),%eax
	movl	L_VMT_DBF_FIELDS_TDBFFIELDDEFS$non_lazy_ptr-Lj1567(%eax),%edx
	movl	$0,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS$stub
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	424(%eax),%eax
	call	L_DBF_TABLELEVELTODBFVERSION$LONGINT$$TXBASEVERSION$stub
	movl	-4(%ebp),%edx
	movb	%al,36(%edx)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-192(%ebp)
	movl	$0,-12(%ebp)
	movl	-192(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj1600
	decl	-12(%ebp)
	.align 2
Lj1601:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edi
	movl	24(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%edi),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	28(%eax),%edx
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	48(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1624
	jmp	Lj1625
Lj1624:
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	48(%eax),%edx
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	40(%eax),%edx
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT$stub
	jmp	Lj1646
Lj1625:
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE$stub
Lj1646:
	movl	-192(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1601
Lj1600:
Lj1586:
	movl	-8(%ebp),%eax
	movb	$3,%dl
	call	L_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%edx
	movl	-8(%ebp),%eax
	cmpb	$0,433(%eax)
	jne	Lj1655
	jmp	Lj1654
Lj1655:
	movl	-8(%ebp),%eax
	cmpb	$0,435(%eax)
	jne	Lj1653
	jmp	Lj1654
Lj1653:
	movb	$1,173(%edx)
	jmp	Lj1656
Lj1654:
	movb	$0,173(%edx)
Lj1656:
	movl	-8(%ebp),%eax
	movl	424(%eax),%eax
	call	L_DBF_TABLELEVELTODBFVERSION$LONGINT$$TXBASEVERSION$stub
	movl	-8(%ebp),%edx
	movl	348(%edx),%edx
	movb	%al,120(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%edx
	movl	-8(%ebp),%eax
	movb	420(%eax),%al
	movb	%al,148(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movzbl	120(%eax),%eax
	cmpl	$5,%eax
	je	Lj1667
	cmpl	$7,%eax
	je	Lj1667
Lj1667:
	je	Lj1665
	jmp	Lj1666
Lj1665:
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$64,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub
	jmp	Lj1674
Lj1666:
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$512,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub
Lj1674:
	movl	-8(%ebp),%eax
	movb	357(%eax),%al
	testb	%al,%al
	je	Lj1681
	jmp	Lj1682
Lj1681:
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,376(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%edx
	movl	116(%eax),%eax
	movl	%eax,372(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%edx
	movl	100(%eax),%eax
	movl	%eax,380(%edx)
Lj1682:
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1690
	decl	-12(%ebp)
	.align 2
Lj1691:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movb	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1691
Lj1690:
Lj1581:
	call	LFPC_POPADDRSTACK$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj1583
	leal	-156(%ebp),%ecx
	leal	-180(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-184(%ebp)
	testl	%eax,%eax
	jne	Lj1717
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj1720
	jmp	Lj1719
Lj1720:
	movl	-8(%ebp),%eax
	movb	357(%eax),%al
	cmpb	$1,%al
	je	Lj1718
	jmp	Lj1719
Lj1718:
	movl	-8(%ebp),%eax
	leal	348(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	leal	-188(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-188(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	392(%eax),%edx
	leal	-188(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-188(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
Lj1719:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1717:
	call	LFPC_POPADDRSTACK$stub
	movl	-184(%ebp),%eax
	testl	%eax,%eax
	je	Lj1716
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1716:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1583
Lj1583:
Lj1575:
	call	LFPC_POPADDRSTACK$stub
	cmpb	$0,-21(%ebp)
	jne	Lj1733
	jmp	Lj1732
Lj1733:
	cmpl	$0,-4(%ebp)
	jne	Lj1731
	jmp	Lj1732
Lj1731:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1732:
	movl	-8(%ebp),%edx
	leal	348(%edx),%edx
	movl	%edx,%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1576
	decl	%eax
	testl	%eax,%eax
	je	Lj1577
Lj1577:
	call	LFPC_RERAISE$stub
Lj1576:
Lj1568:
	call	LFPC_POPADDRSTACK$stub
	leal	-188(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-188(%ebp)
	leal	-20(%ebp),%edx
	movl	%edx,%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1569
	call	LFPC_RERAISE$stub
Lj1569:
	movl	-208(%ebp),%ebx
	movl	-204(%ebp),%esi
	movl	-200(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__EMPTYTABLE
_DBF_TDBF_$__EMPTYTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__ZAP$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__ZAP
_DBF_TDBF_$__ZAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__ZAP$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN
_DBF_TDBF_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__CHECKDBFFIELDDEFS$TDBFFIELDDEFS$stub
	movl	-12(%ebp),%eax
	movb	$4,%dl
	call	L_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE$stub
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1768
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN$stub
Lj1768:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	leal	348(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1769
	decl	%eax
	testl	%eax,%eax
	je	Lj1770
Lj1770:
	call	LFPC_RERAISE$stub
Lj1769:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__PACKTABLE
_DBF_TDBF_$__PACKTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj1781
Lj1781:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1782
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__GETINDEXNAME$$ANSISTRING$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj1781(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__SETINDEXNAME$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__SETINDEXNAME$ANSISTRING$stub
Lj1782:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1783
	call	LFPC_RERAISE$stub
Lj1783:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__COPYFROM$TDATASET$ANSISTRING$BOOLEAN$LONGINT
_DBF_TDBF_$__COPYFROM$TDATASET$ANSISTRING$BOOLEAN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj1812
Lj1812:
	popl	-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-116(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1813
	movl	-12(%ebp),%eax
	movb	$1,433(%eax)
	movl	-124(%ebp),%eax
	movl	L_VMT_DBF_FIELDS_TDBFFIELDDEFS$non_lazy_ptr-Lj1812(%eax),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS$stub
	movl	%eax,-20(%ebp)
	movl	-124(%ebp),%eax
	movl	L_VMT_DBF_FIELDS_TDBFFIELDDEFS$non_lazy_ptr-Lj1812(%eax),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS$stub
	movl	%eax,-16(%ebp)
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj1834
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1838
	jmp	Lj1839
Lj1838:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CLOSE$stub
Lj1839:
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-116(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SETFILEPATH$ANSISTRING$stub
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub
	movl	-116(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SETTABLENAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movb	12(%ebp),%dl
	movb	%dl,435(%eax)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SETTABLELEVEL$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1866
	jmp	Lj1867
Lj1866:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__OPEN$stub
Lj1867:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__UPDATE$stub
	movl	-4(%ebp),%edx
	movl	-124(%ebp),%ecx
	movl	L_VMT_DBF_TDBF$non_lazy_ptr-Lj1812(%ecx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1874
	jmp	Lj1875
Lj1874:
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__GETDBFFIELDDEFS$$TDBFFIELDDEFS$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-4(%ebp),%eax
	movl	448(%eax),%edx
	movl	-12(%ebp),%eax
	movl	448(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	448(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	jmp	Lj1890
Lj1875:
	movl	-4(%ebp),%eax
	movl	268(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-12(%ebp),%eax
	movl	448(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
Lj1890:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-120(%ebp)
	movl	$0,-32(%ebp)
	movl	-120(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj1898
	decl	-32(%ebp)
	.align 2
Lj1899:
	incl	-32(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj1916
	movl	-4(%eax),%eax
Lj1916:
	cmpl	$0,%eax
	jg	Lj1914
	jmp	Lj1915
Lj1914:
	movl	-24(%ebp),%edi
	movl	16(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%edi),%eax
	movl	%eax,28(%esi)
	jmp	Lj1919
Lj1915:
	movl	-24(%ebp),%edi
	movl	100(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	100(%edi),%eax
	movl	%eax,28(%esi)
Lj1919:
	movl	-24(%ebp),%eax
	movl	76(%eax),%edx
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE$stub
	movl	-24(%ebp),%eax
	movb	189(%eax),%al
	movb	%al,88(%esi)
	movl	-24(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$1,%eax
	jge	Lj1930
	jmp	Lj1929
Lj1930:
	movl	-24(%ebp),%edi
	movl	-16(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	104(%edi),%eax
	jge	Lj1928
	jmp	Lj1929
Lj1928:
	movl	-24(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-16(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	60(%eax),%edx
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-16(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub
	movl	64(%eax),%edx
	movl	%esi,%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT$stub
Lj1929:
	movl	-120(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj1899
Lj1898:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__CREATETABLEEX$TDBFFIELDDEFS$stub
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__OPEN$stub
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__FIRST$stub
	jmp	Lj1958
	.align 2
Lj1957:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__APPEND$stub
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%esi
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%esi
	jl	Lj1963
	decl	-32(%ebp)
	.align 2
Lj1964:
	incl	-32(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	264(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*304(%edx)
	testb	%al,%al
	je	Lj1979
	jmp	Lj1980
Lj1979:
	movl	-24(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$11,%eax
	je	Lj1983
	jmp	Lj1984
Lj1983:
	movl	-12(%ebp),%eax
	cmpb	$0,435(%eax)
	jne	Lj1985
	jmp	Lj1986
Lj1985:
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-116(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*352(%ecx)
	movl	-12(%ebp),%eax
	cmpl	$0,500(%eax)
	jne	Lj1995
	jmp	Lj1996
Lj1995:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	504(%eax),%eax
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	500(%ebx),%ebx
	call	*%ebx
Lj1996:
	jmp	Lj2005
Lj1986:
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*248(%edx)
	fstpl	(%esp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*328(%edx)
Lj2005:
	jmp	Lj2012
Lj1984:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj2012:
Lj1980:
	cmpl	-32(%ebp),%esi
	jg	Lj1964
Lj1963:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*736(%edx)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__NEXT$stub
Lj1958:
	movl	-4(%ebp),%eax
	cmpb	$0,257(%eax)
	jne	Lj1959
	jmp	Lj1957
Lj1959:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CLOSE$stub
Lj1834:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movb	$0,433(%eax)
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj1835
	decl	%eax
	testl	%eax,%eax
	je	Lj1836
Lj1836:
	call	LFPC_RERAISE$stub
Lj1835:
Lj1813:
	call	LFPC_POPADDRSTACK$stub
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1814
	call	LFPC_RERAISE$stub
Lj1814:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
_DBF_TDBF_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*332(%edx)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__UPDATECURSORPOS$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*400(%edx)
	movl	%eax,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2043
	movl	-12(%ebp),%eax
	movb	$1,436(%eax)
	cmpb	$0,-8(%ebp)
	jne	Lj2049
	jmp	Lj2050
Lj2049:
	cmpb	$0,-4(%ebp)
	jne	Lj2051
	jmp	Lj2052
Lj2051:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
Lj2052:
	movb	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	408(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*556(%ebx)
	testl	%eax,%eax
	seteb	-13(%ebp)
	jmp	Lj2065
Lj2050:
	cmpb	$0,-4(%ebp)
	jne	Lj2066
	jmp	Lj2067
Lj2066:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*132(%edx)
Lj2067:
	movb	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	408(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*556(%ebx)
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2065:
Lj2043:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movb	$0,436(%eax)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2082
	jmp	Lj2083
Lj2082:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*480(%ecx)
	jmp	Lj2088
Lj2083:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CURSORPOSCHANGED$stub
	movl	$0,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*296(%edx)
Lj2088:
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2044
	decl	%eax
	testl	%eax,%eax
	je	Lj2045
Lj2045:
	call	LFPC_RERAISE$stub
Lj2044:
	movb	-13(%ebp),%al
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
_DBF_TDBF_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-168(%ebp)
	movl	%esi,-164(%ebp)
	call	Lj2098
Lj2098:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2098(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2099
	movl	8(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj2104
	jmp	Lj2106
Lj2106:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj2104
	jmp	Lj2105
Lj2104:
	jmp	Lj2099
Lj2105:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj2113
	movl	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__LOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2117
	jmp	Lj2118
Lj2117:
	movl	-12(%ebp),%eax
	movl	$5,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-20(%ebp)
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj2133
	movl	-12(%ebp),%eax
	movl	404(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2098(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-160(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*372(%esi)
	leal	-160(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2141
	jmp	Lj2142
Lj2141:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*372(%esi)
Lj2142:
Lj2133:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj2134
	decl	%eax
	testl	%eax,%eax
	je	Lj2135
Lj2135:
	call	LFPC_RERAISE$stub
Lj2134:
Lj2118:
Lj2113:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj2114
	decl	%eax
	testl	%eax,%eax
	je	Lj2115
Lj2115:
	call	LFPC_RERAISE$stub
Lj2114:
Lj2099:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2098(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2100
	call	LFPC_RERAISE$stub
Lj2100:
	movl	-168(%ebp),%ebx
	movl	-164(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
_DBF_TDBF_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj2169
	jmp	Lj2170
Lj2169:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movb	$0,-13(%ebp)
	jmp	Lj2167
Lj2170:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*332(%edx)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	$-1,416(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__LOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CURSORPOSCHANGED$stub
	cmpb	$0,-13(%ebp)
	jne	Lj2195
	jmp	Lj2196
Lj2195:
	movl	-12(%ebp),%eax
	movl	416(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj2197
	jmp	Lj2198
Lj2197:
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj2198:
	movl	$0,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*296(%edx)
	jmp	Lj2209
Lj2196:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
Lj2209:
Lj2167:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__LOCATERECORDLINEAR$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
_DBF_TDBF_$__LOCATERECORDLINEAR$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-168(%ebp)
	movl	%esi,-164(%ebp)
	call	Lj2215
Lj2215:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2215(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2215(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj2218
	movb	$0,-13(%ebp)
	movb	$0,-30(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj2215(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__TEMPBUFFER$$PCHAR$stub
	movl	-12(%ebp),%edx
	movl	%eax,404(%edx)
	movl	-12(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-52(%ebp)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj2241
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj2251
	jmp	Lj2252
Lj2251:
	movl	-20(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$1,%eax
	seteb	-29(%ebp)
	jmp	Lj2259
Lj2252:
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj2260
	jmp	Lj2261
Lj2260:
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	incl	%esi
	movl	-20(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	%eax,%esi
	seteb	-29(%ebp)
	movb	$1,-30(%ebp)
	jmp	Lj2274
Lj2261:
	movb	$0,-29(%ebp)
Lj2274:
Lj2259:
	cmpb	$0,-29(%ebp)
	jne	Lj2277
	jmp	Lj2278
Lj2277:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	jmp	Lj2282
	.align 2
Lj2281:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2288
	jmp	Lj2290
Lj2290:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-56(%ebp),%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2288
	jmp	Lj2289
Lj2288:
	jmp	Lj2283
Lj2289:
	movl	-12(%ebp),%eax
	movl	404(%eax),%eax
	leal	12(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	348(%esi),%esi
	movl	(%esi),%esi
	call	*140(%esi)
	movl	-12(%ebp),%eax
	cmpb	$0,429(%eax)
	jne	Lj2301
	jmp	Lj2303
Lj2303:
	movl	-12(%ebp),%eax
	movl	404(%eax),%eax
	movb	12(%eax),%al
	cmpb	$42,%al
	jne	Lj2301
	jmp	Lj2302
Lj2301:
	movb	$1,-13(%ebp)
	jmp	Lj2304
Lj2302:
	movb	$0,-13(%ebp)
Lj2304:
	cmpb	$0,-13(%ebp)
	jne	Lj2307
	jmp	Lj2306
Lj2307:
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj2305
	jmp	Lj2306
Lj2305:
	leal	-13(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__DOFILTERRECORD$BOOLEAN$stub
Lj2306:
	movl	$0,-24(%ebp)
	jmp	Lj2315
	.align 2
Lj2314:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	cmpb	$0,-30(%ebp)
	jne	Lj2323
	jmp	Lj2324
Lj2323:
	movl	-24(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2215(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	$1,(%esp)
	leal	-140(%ebp),%ecx
	movl	-8(%ebp),%edx
	leal	-160(%ebp),%eax
	call	Lfpc_vararray_get$stub
	leal	-160(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj2339
Lj2324:
	movl	-8(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_variant_copy$stub
Lj2339:
	movl	%ebp,%eax
	call	L_DBF_TDBF_$_LOCATERECORDLINEAR$crc4659D974_COMPAREVALUES$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	incl	-24(%ebp)
Lj2315:
	cmpb	$0,-13(%ebp)
	jne	Lj2348
	jmp	Lj2316
Lj2348:
	movl	-20(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-24(%ebp),%eax
	jg	Lj2314
	jmp	Lj2316
Lj2316:
Lj2282:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2351
	jmp	Lj2283
Lj2351:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	testb	%al,%al
	jne	Lj2281
	jmp	Lj2283
Lj2283:
Lj2278:
Lj2241:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj2242
	decl	%eax
	testl	%eax,%eax
	je	Lj2243
Lj2243:
	call	LFPC_RERAISE$stub
Lj2242:
Lj2218:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2215(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2215(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj2219
	call	LFPC_RERAISE$stub
Lj2219:
	movb	-13(%ebp),%al
	movl	-168(%ebp),%ebx
	movl	-164(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$_LOCATERECORDLINEAR$crc4659D974_COMPAREVALUES$$BOOLEAN
_DBF_TDBF_$_LOCATERECORDLINEAR$crc4659D974_COMPAREVALUES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj2217
Lj2217:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2217(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2368
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	je	Lj2373
	cmpl	$24,%eax
	je	Lj2373
Lj2373:
	je	Lj2371
	jmp	Lj2372
Lj2371:
	movl	-4(%ebp),%eax
	leal	-48(%eax),%eax
	leal	-12(%ebp),%edx
	call	L_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING$stub
	movl	-4(%ebp),%eax
	testl	$1,8(%eax)
	jne	Lj2378
	jmp	Lj2379
Lj2378:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-12(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2217(%ebx),%ecx
	movl	44(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj2398
	jmp	Lj2395
Lj2398:
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-24(%esi),%eax
	je	Lj2397
	jmp	Lj2395
Lj2397:
	movl	-4(%ebp),%eax
	testl	$2,8(%eax)
	jne	Lj2396
	jmp	Lj2395
Lj2396:
	movl	-12(%ebp),%esi
	testl	%esi,%esi
	je	Lj2401
	movl	-4(%esi),%esi
Lj2401:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2406
	movl	-4(%eax),%eax
Lj2406:
	cmpl	%eax,%esi
	jl	Lj2394
	jmp	Lj2395
Lj2394:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2409
	movl	-4(%eax),%eax
Lj2409:
	testl	%eax,%eax
	je	Lj2407
	jmp	Lj2408
Lj2407:
	movb	$1,-5(%ebp)
	jmp	Lj2412
Lj2408:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2427
	movl	-4(%ecx),%ecx
Lj2427:
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-12(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2217(%ebx),%ecx
	movl	44(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-5(%ebp)
Lj2412:
Lj2395:
	jmp	Lj2436
Lj2379:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj2451
	jmp	Lj2448
Lj2451:
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-24(%esi),%eax
	je	Lj2450
	jmp	Lj2448
Lj2450:
	movl	-4(%ebp),%eax
	testl	$2,8(%eax)
	jne	Lj2449
	jmp	Lj2448
Lj2449:
	movl	-12(%ebp),%esi
	testl	%esi,%esi
	je	Lj2454
	movl	-4(%esi),%esi
Lj2454:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2459
	movl	-4(%eax),%eax
Lj2459:
	cmpl	%eax,%esi
	jl	Lj2447
	jmp	Lj2448
Lj2447:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2462
	movl	-4(%eax),%eax
Lj2462:
	testl	%eax,%eax
	je	Lj2460
	jmp	Lj2461
Lj2460:
	movb	$1,-5(%ebp)
	jmp	Lj2465
Lj2461:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-60(%ebp),%eax
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2480
	movl	-4(%ecx),%ecx
Lj2480:
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-5(%ebp)
Lj2465:
Lj2448:
Lj2436:
	jmp	Lj2485
Lj2372:
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2217(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-28(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*264(%ecx)
	leal	-80(%ebp),%eax
	movl	-4(%ebp),%edx
	leal	-48(%edx),%edx
	call	L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj2485:
Lj2368:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj2217(%ebx),%eax
	movl	%eax,%edx
	leal	-80(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2369
	call	LFPC_RERAISE$stub
Lj2369:
	movb	-5(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__LOCATERECORDINDEX$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
_DBF_TDBF_$__LOCATERECORDINDEX$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	testl	$2,8(%ebp)
	jne	Lj2506
	jmp	Lj2505
Lj2506:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR$stub
	cmpb	$67,%al
	je	Lj2504
	jmp	Lj2505
Lj2504:
	movb	$1,-14(%ebp)
	jmp	Lj2511
Lj2505:
	movb	$0,-14(%ebp)
Lj2511:
	leal	-121(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE$stub
	cmpb	$1,%al
	je	Lj2514
	jmp	Lj2515
Lj2514:
	movb	$1,(%esp)
	leal	-121(%ebp),%ecx
	leal	-121(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*744(%ebx)
Lj2515:
	leal	-121(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	movb	-14(%ebp),%cl
	call	L_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2538
	jmp	Lj2539
Lj2538:
	jmp	Lj2502
Lj2539:
	movb	$0,-123(%ebp)
	.align 2
Lj2542:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__TEMPBUFFER$$PCHAR$stub
	movl	%eax,%edx
	leal	-122(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__READCURRENTRECORD$PCHAR$BOOLEAN$$TGETRESULT$stub
	cmpl	$3,%eax
	je	Lj2545
	jmp	Lj2546
Lj2545:
	movb	$0,-13(%ebp)
	jmp	Lj2502
Lj2546:
	cmpb	$0,-122(%ebp)
	jne	Lj2557
	jmp	Lj2558
Lj2557:
	jmp	Lj2544
Lj2558:
	movb	$1,-123(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	jmp	Lj2542
Lj2544:
	cmpb	$0,-123(%ebp)
	jne	Lj2563
	jmp	Lj2564
Lj2563:
	leal	-121(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT$stub
	movl	%eax,-20(%ebp)
	testl	$2,8(%ebp)
	jne	Lj2571
	jmp	Lj2572
Lj2571:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	setleb	-13(%ebp)
	jmp	Lj2575
Lj2572:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2575:
Lj2564:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__TEMPBUFFER$$PCHAR$stub
	movl	-12(%ebp),%edx
	movl	%eax,404(%edx)
Lj2502:
	movb	-13(%ebp),%al
	movl	-128(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__LOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
_DBF_TDBF_$__LOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj2583
Lj2583:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-88(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj2584
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-40(%ebp)
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%edx
	movl	L_VMT_DBF_IDXCUR_TINDEXCURSOR$non_lazy_ptr-Lj2583(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2597
	jmp	Lj2596
Lj2597:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	leal	-88(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETEXPRESSION$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2595
	jmp	Lj2596
Lj2595:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2612
Lj2596:
	movl	-12(%ebp),%eax
	movl	448(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETINDEXBYFIELD$ANSISTRING$$TDBFINDEXDEF$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2619
	jmp	Lj2620
Lj2619:
	movl	-36(%ebp),%eax
	movl	24(%eax),%edx
	leal	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE$stub
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2633
	jmp	Lj2634
Lj2633:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-40(%ebp),%ecx
	movl	L_VMT_DBF_IDXCUR_TINDEXCURSOR$non_lazy_ptr-Lj2583(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__CREATE$TINDEXFILE$$TINDEXCURSOR$stub
	movl	%eax,-20(%ebp)
	movl	-40(%ebp),%esi
	movl	92(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	92(%esi),%eax
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%edx
	movl	-40(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,440(%eax)
Lj2634:
Lj2620:
Lj2612:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2653
	jmp	Lj2654
Lj2653:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,352(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__LOCATERECORDINDEX$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2667
	jmp	Lj2668
Lj2667:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,352(%eax)
Lj2668:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2673
	jmp	Lj2674
Lj2673:
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,416(%edx)
	movl	-28(%ebp),%edx
	movl	-40(%ebp),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-12(%ebp),%edx
	movl	-44(%ebp),%eax
	movl	%eax,440(%edx)
Lj2674:
	jmp	Lj2685
Lj2654:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__LOCATERECORDLINEAR$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj2685:
Lj2584:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj2585
	call	LFPC_RERAISE$stub
Lj2585:
	movb	-13(%ebp),%al
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__TRYEXCLUSIVE
_DBF_TDBF_$__TRYEXCLUSIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2710
	jmp	Lj2711
Lj2710:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*132(%edx)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	testb	%al,%al
	seteb	428(%ebx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movb	48(%eax),%al
	cmpb	$7,%al
	seteb	400(%edx)
	jmp	Lj2722
Lj2711:
	movl	-4(%ebp),%eax
	movb	$1,428(%eax)
	movl	-4(%ebp),%eax
	movb	$0,400(%eax)
Lj2722:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__ENDEXCLUSIVE
_DBF_TDBF_$__ENDEXCLUSIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2729
	jmp	Lj2730
Lj2729:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	movl	348(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	testb	%al,%al
	seteb	428(%ebx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movb	48(%eax),%al
	cmpb	$7,%al
	seteb	400(%edx)
	jmp	Lj2741
Lj2730:
	movl	-4(%ebp),%eax
	movb	$0,428(%eax)
Lj2741:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
_DBF_TDBF_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj2745
Lj2745:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2746
	jmp	Lj2748
Lj2748:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2746
	jmp	Lj2747
Lj2746:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj2751
Lj2751:
	jnc	Lj2749
	jmp	Lj2750
Lj2749:
	movl	-12(%ebp),%edx
	movl	L_$DBF$_Ld15$non_lazy_ptr-Lj2745(%ebx),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub
Lj2750:
Lj2747:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	368(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj2758
	jmp	Lj2759
Lj2758:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DBF_TDBFBLOBSTREAM$non_lazy_ptr-Lj2745(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_TDBFBLOBSTREAM_$__CREATE$TFIELD$$TDBFBLOBSTREAM$stub
	movl	-12(%ebp),%edx
	movl	368(%edx),%edx
	movl	-24(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
Lj2759:
	movl	-12(%ebp),%eax
	movl	368(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	L_DBF_TDBFBLOBSTREAM_$__ADDREFERENCE$$TDBFBLOBSTREAM$stub
	movl	%eax,-28(%ebp)
	movb	$0,(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	$3,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2772
	jmp	Lj2773
Lj2772:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2788
	jmp	Lj2790
Lj2790:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2788
	jmp	Lj2789
Lj2788:
	movl	-28(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj2791
	jmp	Lj2792
Lj2791:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	96(%eax),%eax
	movl	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	call	L_DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM$stub
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-28(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-28(%ebp),%eax
	movb	$0,%dl
	call	L_DBF_TDBFBLOBSTREAM_$__TRANSLATE$BOOLEAN$stub
Lj2792:
	jmp	Lj2807
Lj2789:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-28(%ebp),%eax
	movl	$0,36(%eax)
Lj2807:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,32(%eax)
	jmp	Lj2816
Lj2773:
	movl	-28(%ebp),%eax
	movb	28(%eax),%al
	testb	%al,%al
	je	Lj2817
	jmp	Lj2819
Lj2819:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2817
	jmp	Lj2818
Lj2817:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-28(%ebp),%eax
	movl	$0,36(%eax)
	movl	-28(%ebp),%eax
	movl	$0,32(%eax)
Lj2818:
Lj2816:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_DBF_TDBFBLOBSTREAM_$__SETMODE$TBLOBSTREAMMODE$stub
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
_DBF_TDBF_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2842
	jmp	Lj2841
Lj2842:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2840
	jmp	Lj2841
Lj2840:
	movl	-12(%ebp),%eax
	cmpl	$0,460(%eax)
	jne	Lj2843
	jmp	Lj2844
Lj2843:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	464(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	460(%ebx),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj2857
	jmp	Lj2858
Lj2857:
	movl	-8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-16(%ebp)
Lj2858:
	jmp	Lj2863
Lj2844:
	movl	-12(%ebp),%eax
	movb	445(%eax),%al
	cmpb	$1,%al
	jne	Lj2864
	jmp	Lj2865
Lj2864:
	cmpb	$0,8(%ebp)
	jne	Lj2866
	jmp	Lj2867
Lj2866:
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	144(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2872
Lj2867:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	144(%eax),%eax
	movl	%eax,-20(%ebp)
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	%eax,-24(%ebp)
Lj2872:
	jmp	Lj2877
Lj2865:
	call	L_DBF_WTIL_GETACP$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj2877:
	movl	$-1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj2863:
	jmp	Lj2894
Lj2841:
	movl	$0,-16(%ebp)
Lj2894:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CLEARCALCFIELDS$PCHAR
_DBF_TDBF_$__CLEARCALCFIELDS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	232(%eax),%edx
	movl	-16(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__INTERNALSETTORECORD$PCHAR
_DBF_TDBF_$__INTERNALSETTORECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2911
	jmp	Lj2912
Lj2911:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$3,%eax
	je	Lj2915
	jmp	Lj2916
Lj2915:
	jmp	Lj2917
Lj2916:
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
Lj2917:
Lj2912:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__ISCURSOROPEN$$BOOLEAN
_DBF_TDBF_$__ISCURSOROPEN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__FIELDDEFSSTORED$$BOOLEAN
_DBF_TDBF_$__FIELDDEFSSTORED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,434(%eax)
	jne	Lj2930
	jmp	Lj2929
Lj2930:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj2928
	jmp	Lj2929
Lj2928:
	movb	$1,-5(%ebp)
	jmp	Lj2933
Lj2929:
	movb	$0,-5(%ebp)
Lj2933:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
_DBF_TDBF_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETBOOKMARKDATA$PCHAR$POINTER
_DBF_TDBF_$__SETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETEXACTRECORDCOUNT$$LONGINT
_DBF_TDBF_$__GETEXACTRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj2946
	jmp	Lj2947
Lj2946:
	jmp	Lj2942
Lj2947:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	.align 2
Lj2954:
	movb	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	408(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*556(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2967
	jmp	Lj2968
Lj2967:
	incl	-8(%ebp)
Lj2968:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2956
	jmp	Lj2954
Lj2956:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
Lj2942:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETPHYSICALRECORDCOUNT$$LONGINT
_DBF_TDBF_$__GETPHYSICALRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj2975
	jmp	Lj2976
Lj2975:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj2981
Lj2976:
	movl	$0,-8(%ebp)
Lj2981:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETRECORDCOUNT$$LONGINT
_DBF_TDBF_$__GETRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj2986
	jmp	Lj2987
Lj2986:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
	jmp	Lj2992
Lj2987:
	movl	$0,-8(%ebp)
Lj2992:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETRECNO$$LONGINT
_DBF_TDBF_$__GETRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj2997
	jmp	Lj2998
Lj2997:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$5,%eax
	je	Lj2999
	jmp	Lj3000
Lj2999:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3003
Lj3000:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-12(%ebp)
Lj3003:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj3010
Lj2998:
	movl	$0,-8(%ebp)
Lj3010:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETRECNO$LONGINT
_DBF_TDBF_$__SETRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*400(%edx)
	cmpl	-4(%ebp),%eax
	je	Lj3017
	jmp	Lj3018
Lj3017:
	jmp	Lj3013
Lj3018:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*332(%edx)
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CURSORPOSCHANGED$stub
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*296(%edx)
Lj3013:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETCANMODIFY$$BOOLEAN
_DBF_TDBF_$__GETCANMODIFY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,400(%eax)
	jne	Lj3037
	jmp	Lj3039
Lj3039:
	movl	-4(%ebp),%eax
	testl	$16,40(%eax)
	jne	Lj3037
	jmp	Lj3038
Lj3037:
	movb	$0,-5(%ebp)
	jmp	Lj3042
Lj3038:
	movl	-4(%ebp),%eax
	movb	445(%eax),%al
	cmpb	$0,%al
	setab	-5(%ebp)
Lj3042:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__PARSEFILTER$ANSISTRING
_DBF_TDBF_$__PARSEFILTER$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3046
Lj3046:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3049
	movl	-4(%eax),%eax
Lj3049:
	cmpl	$0,%eax
	jg	Lj3047
	jmp	Lj3048
Lj3047:
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	je	Lj3052
	jmp	Lj3051
Lj3052:
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj3050
	jmp	Lj3051
Lj3050:
	movl	-8(%ebp),%eax
	movl	348(%eax),%ecx
	movl	L_VMT_DBF_PARSER_TDBFPARSER$non_lazy_ptr-Lj3046(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub
	movl	-8(%ebp),%edx
	movl	%eax,364(%edx)
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movb	$2,%dl
	call	L_DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE$stub
Lj3051:
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	jne	Lj3065
	jmp	Lj3066
Lj3065:
	movl	-8(%ebp),%eax
	testl	$2,272(%eax)
	seteb	%dl
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	call	L_DBF_PARSER_TDBFPARSER_$__SETPARTIALMATCH$BOOLEAN$stub
	movl	-8(%ebp),%eax
	testl	$1,272(%eax)
	setneb	%dl
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	call	L_DBF_PARSER_TDBFPARSER_$__SETCASEINSENSITIVE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	364(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj3066:
Lj3048:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETFILTERTEXT$ANSISTRING
_DBF_TDBF_$__SETFILTERTEXT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	276(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3081
	jmp	Lj3082
Lj3081:
	jmp	Lj3079
Lj3082:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEFILTER$ANSISTRING$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj3097
	jmp	Lj3096
Lj3097:
	movl	-8(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj3095
	jmp	Lj3096
Lj3095:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__REFRESH$stub
Lj3096:
Lj3079:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETFILTERED$BOOLEAN
_DBF_TDBF_$__SETFILTERED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	280(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj3102
	jmp	Lj3103
Lj3102:
	jmp	Lj3100
Lj3103:
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__SETFILTERED$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj3108
	jmp	Lj3109
Lj3108:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__REFRESH$stub
Lj3109:
Lj3100:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETFILEPATH$ANSISTRING
_DBF_TDBF_$__SETFILEPATH$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj3113
Lj3113:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3114
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	388(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,388(%esi)
	movl	-8(%ebp),%eax
	movl	388(%eax),%eax
	testl	%eax,%eax
	je	Lj3123
	movl	-4(%eax),%eax
Lj3123:
	cmpl	$0,%eax
	jg	Lj3121
	jmp	Lj3122
Lj3121:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	388(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	388(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,388(%esi)
Lj3122:
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3130
	jmp	Lj3131
Lj3130:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	392(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,392(%esi)
	jmp	Lj3140
Lj3131:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	L_U_DBF_DBFBASEPATH$non_lazy_ptr-Lj3113(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-56(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	388(%edx),%edx
	leal	-52(%ebp),%ecx
	call	L_DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	392(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,392(%esi)
Lj3140:
Lj3114:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3115
	call	LFPC_RERAISE$stub
Lj3115:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETTABLENAME$ANSISTRING
_DBF_TDBF_$__SETTABLENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3153
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	384(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,384(%ebx)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3168
	movl	-4(%eax),%eax
Lj3168:
	cmpl	$0,%eax
	jg	Lj3166
	jmp	Lj3167
Lj3166:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__SETFILEPATH$ANSISTRING$stub
Lj3167:
Lj3153:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3154
	call	LFPC_RERAISE$stub
Lj3154:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETDBFINDEXDEFS$TDBFINDEXDEFS
_DBF_TDBF_$__SETDBFINDEXDEFS$TDBFINDEXDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	448(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETLANGUAGEID$BYTE
_DBF_TDBF_$__SETLANGUAGEID$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,420(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETTABLELEVEL$LONGINT
_DBF_TDBF_$__SETTABLELEVEL$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	424(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj3193
	jmp	Lj3194
Lj3193:
	movl	-4(%ebp),%eax
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj3197
	cmpl	$4,%eax
	stc
	je	Lj3197
	cmpl	$22,%eax
	stc
	je	Lj3197
	cmpl	$27,%eax
	stc
	je	Lj3197
	clc
Lj3197:
	jnc	Lj3195
	jmp	Lj3196
Lj3195:
	jmp	Lj3191
Lj3196:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,424(%edx)
Lj3194:
Lj3191:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETINDEXNAME$$ANSISTRING
_DBF_TDBF_$__GETINDEXNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	396(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	396(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
_DBF_TDBF_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj3207
Lj3207:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	seteb	%al
	movzbl	%al,%eax
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	seteb	%dl
	movzbl	%dl,%edx
	shll	$1,%eax
	movl	L_TC_DBF_TDBF_$_COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT_RETCODES$non_lazy_ptr-Lj3207(%ebx),%ecx
	leal	(%eax,%ecx),%ecx
	movsbl	(%ecx,%edx,1),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3210
	jmp	Lj3211
Lj3210:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj3216
	jmp	Lj3217
Lj3216:
	movl	$-1,-16(%ebp)
	jmp	Lj3220
Lj3217:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj3221
	jmp	Lj3222
Lj3221:
	movl	$1,-16(%ebp)
	jmp	Lj3225
Lj3222:
	movl	$0,-16(%ebp)
Lj3225:
Lj3220:
Lj3211:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETVERSION$$ANSISTRING
_DBF_TDBF_$__GETVERSION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj3229
Lj3229:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	$7,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%edx
	movl	$1,%ecx
	movl	L_$DBF$_Ld17$non_lazy_ptr-Lj3229(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETVERSION$ANSISTRING
_DBF_TDBF_$__SETVERSION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING
_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3242
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3251
	movl	-4(%eax),%eax
Lj3251:
	cmpl	$0,%eax
	jg	Lj3245
	jmp	Lj3246
Lj3245:
	movl	-8(%ebp),%eax
	movl	392(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	jmp	Lj3258
Lj3246:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj3258:
Lj3242:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3243
	call	LFPC_RERAISE$stub
Lj3243:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__REGENERATEINDEXES
_DBF_TDBF_$__REGENERATEINDEXES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__ADDINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$ANSISTRING
_DBF_TDBF_$__ADDINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3269
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movb	$1,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*568(%edx)
Lj3269:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3270
	call	LFPC_RERAISE$stub
Lj3270:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETINDEXNAME$ANSISTRING
_DBF_TDBF_$__SETINDEXNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj3299
Lj3299:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3300
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	396(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,396(%esi)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	je	Lj3305
	jmp	Lj3306
Lj3305:
	jmp	Lj3300
Lj3306:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	leal	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE$stub
	movl	-8(%ebp),%edx
	movl	%eax,440(%edx)
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj3325
	jmp	Lj3326
Lj3325:
	movl	$1,-12(%ebp)
	jmp	Lj3329
Lj3326:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__UPDATECURSORPOS$stub
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	-8(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,-12(%ebp)
Lj3329:
	movl	-8(%ebp),%eax
	leal	352(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	jne	Lj3338
	jmp	Lj3339
Lj3338:
	movl	-8(%ebp),%eax
	movl	440(%eax),%ecx
	movl	L_VMT_DBF_IDXCUR_TINDEXCURSOR$non_lazy_ptr-Lj3299(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__CREATE$TINDEXFILE$$TINDEXCURSOR$stub
	movl	-8(%ebp),%edx
	movl	%eax,352(%edx)
	movl	-8(%ebp),%eax
	movl	440(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__CHECKMASTERRANGE$stub
	jmp	Lj3354
Lj3339:
	movl	-8(%ebp),%eax
	movl	348(%eax),%ecx
	movl	L_VMT_DBF_DBFFILE_TDBFCURSOR$non_lazy_ptr-Lj3299(%ebx),%edx
	movl	$0,%eax
	call	L_DBF_DBFFILE_TDBFCURSOR_$__CREATE$TDBFFILE$$TDBFCURSOR$stub
	movl	-8(%ebp),%edx
	movl	%eax,352(%edx)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3299(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	396(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3299(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,396(%esi)
Lj3354:
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$1,%eax
	je	Lj3369
	jmp	Lj3370
Lj3369:
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj3370:
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj3377
	jmp	Lj3376
Lj3377:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3299(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj3375
	jmp	Lj3376
Lj3375:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr-Lj3299(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj3299(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj3299(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3376:
Lj3300:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3301
	call	LFPC_RERAISE$stub
Lj3301:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETINDEXFIELDNAMES$$ANSISTRING
_DBF_TDBF_$__GETINDEXFIELDNAMES$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj3393
Lj3393:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3394
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__GETINDEXNAME$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	448(%eax),%eax
	call	L_DBF_TDBFINDEXDEFS_$__GETINDEXBYNAME$ANSISTRING$$TDBFINDEXDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3407
	jmp	Lj3408
Lj3407:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3393(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3393(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esi)
	jmp	Lj3411
Lj3408:
	movl	-12(%ebp),%edi
	movl	28(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%edi),%eax
	movl	%eax,(%esi)
Lj3411:
Lj3394:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3395
	call	LFPC_RERAISE$stub
Lj3395:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETINDEXFIELDNAMES$ANSISTRING
_DBF_TDBF_$__SETINDEXFIELDNAMES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3415
Lj3415:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	448(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_TDBFINDEXDEFS_$__GETINDEXBYFIELD$ANSISTRING$$TDBFINDEXDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3422
	jmp	Lj3423
Lj3422:
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj3415(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__SETINDEXNAME$ANSISTRING$stub
	jmp	Lj3428
Lj3423:
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__SETINDEXNAME$ANSISTRING$stub
Lj3428:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__DELETEINDEX$ANSISTRING
_DBF_TDBF_$__DELETEINDEX$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3435
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__DELETEINDEX$ANSISTRING$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*568(%edx)
Lj3435:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3436
	call	LFPC_RERAISE$stub
Lj3436:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__OPENINDEXFILE$ANSISTRING
_DBF_TDBF_$__OPENINDEXFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3458
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-8(%ebp),%eax
	movl	392(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movb	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-12(%ebp),%edx
	movl	$0,%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub
Lj3458:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3459
	call	LFPC_RERAISE$stub
Lj3459:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CLOSEINDEXFILE$ANSISTRING
_DBF_TDBF_$__CLOSEINDEXFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3487
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-8(%ebp),%eax
	movl	392(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING$stub
Lj3487:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3488
	call	LFPC_RERAISE$stub
Lj3488:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__REPAGEINDEXFILE$ANSISTRING
_DBF_TDBF_$__REPAGEINDEXFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3510
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj3513
	jmp	Lj3514
Lj3513:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__REPAGEINDEX$ANSISTRING$stub
Lj3514:
Lj3510:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3511
	call	LFPC_RERAISE$stub
Lj3511:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__COMPACTINDEXFILE$ANSISTRING
_DBF_TDBF_$__COMPACTINDEXFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3527
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj3530
	jmp	Lj3531
Lj3530:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	call	L_DBF_DBFFILE_TDBFFILE_$__COMPACTINDEX$ANSISTRING$stub
Lj3531:
Lj3527:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3528
	call	LFPC_RERAISE$stub
Lj3528:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETFILENAMES$TSTRINGS$TDBFFILENAMES
_DBF_TDBF_$__GETFILENAMES$TSTRINGS$TDBFFILENAMES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3544
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj3549
	jmp	Lj3550
Lj3549:
	testb	$1,-8(%ebp)
	jne	Lj3551
	jmp	Lj3552
Lj3551:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj3552:
	testb	$2,-8(%ebp)
	jne	Lj3559
	jmp	Lj3558
Lj3559:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	jne	Lj3557
	jmp	Lj3558
Lj3557:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	96(%eax),%eax
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj3558:
	testb	$4,-8(%ebp)
	jne	Lj3564
	jmp	Lj3565
Lj3564:
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj3567
	decl	-16(%ebp)
	.align 2
Lj3568:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	348(%eax),%eax
	movl	112(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	56(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-16(%ebp),%ebx
	jg	Lj3568
Lj3567:
Lj3565:
	jmp	Lj3579
Lj3550:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	392(%eax),%eax
	leal	-64(%ebp),%edx
	call	L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	384(%eax),%ecx
	leal	-60(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj3579:
Lj3544:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3545
	call	LFPC_RERAISE$stub
Lj3545:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETFILENAMES$TDBFFILENAMES$$ANSISTRING
_DBF_TDBF_$__GETFILENAMES$TDBFFILENAMES$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj3595
Lj3595:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj3595(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3602
	movb	-4(%ebp),%cl
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__GETFILENAMES$TSTRINGS$TDBFFILENAMES$stub
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
Lj3602:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3603
	decl	%eax
	testl	%eax,%eax
	je	Lj3604
Lj3604:
	call	LFPC_RERAISE$stub
Lj3603:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETINDEXNAMES$TSTRINGS
_DBF_TDBF_$__GETINDEXNAMES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	108(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETALLINDEXFILES$TSTRINGS
_DBF_TDBF_$__GETALLINDEXFILES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj3627
Lj3627:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr-Lj3627(%ebx),%edx
	leal	-44(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-96(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-88(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj3628
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	movl	348(%eax),%eax
	movl	56(%eax),%eax
	leal	-96(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	leal	-92(%ebp),%edx
	call	L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-92(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	L_$DBF$_Ld19$non_lazy_ptr-Lj3627(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%esi
	movl	L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr-Lj3627(%ebx),%eax
	movl	%eax,%edx
	leal	-44(%ebp),%eax
	call	LFPC_DECREF$stub
	leal	-44(%ebp),%ecx
	movl	$63,%edx
	movl	%esi,%eax
	call	L_SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT$stub
	testl	%eax,%eax
	je	Lj3635
	jmp	Lj3636
Lj3635:
	.align 2
Lj3657:
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	leal	-44(%ebp),%eax
	call	L_SYSUTILS_FINDNEXT$TSEARCHREC$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj3659
	jmp	Lj3657
Lj3659:
	leal	-44(%ebp),%eax
	call	L_SYSUTILS_FINDCLOSE$TSEARCHREC$stub
Lj3636:
Lj3628:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr-Lj3627(%ebx),%edx
	leal	-44(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj3629
	call	LFPC_RERAISE$stub
Lj3629:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETPHYSICALRECNO$$LONGINT
_DBF_TDBF_$__GETPHYSICALRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj3680
	jmp	Lj3679
Lj3680:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$3,%eax
	jne	Lj3678
	jmp	Lj3679
Lj3678:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$5,%eax
	je	Lj3681
	jmp	Lj3682
Lj3681:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3685
Lj3682:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-12(%ebp)
Lj3685:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj3692
Lj3679:
	movl	$-1,-8(%ebp)
Lj3692:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETPHYSICALRECNO$LONGINT
_DBF_TDBF_$__SETPHYSICALRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*332(%edx)
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	352(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CURSORPOSCHANGED$stub
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*296(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETDBFFIELDDEFS$$TDBFFIELDDEFS
_DBF_TDBF_$__GETDBFFIELDDEFS$$TDBFFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj3715
	jmp	Lj3716
Lj3715:
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	104(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj3719
Lj3716:
	movl	$0,-8(%ebp)
Lj3719:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETSHOWDELETED$BOOLEAN
_DBF_TDBF_$__SETSHOWDELETED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	429(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj3724
	jmp	Lj3725
Lj3724:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,429(%eax)
	movl	-8(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj3728
	jmp	Lj3729
Lj3728:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__REFRESH$stub
Lj3729:
Lj3725:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__ISDELETED$$BOOLEAN
_DBF_TDBF_$__ISDELETED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3738
	jmp	Lj3740
Lj3740:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	je	Lj3738
	jmp	Lj3739
Lj3738:
	movb	$1,-5(%ebp)
	jmp	Lj3741
Lj3739:
	movb	$0,-5(%ebp)
Lj3741:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__UNDELETE
_DBF_TDBF_$__UNDELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$2,%eax
	jne	Lj3744
	jmp	Lj3745
Lj3744:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__EDIT$stub
Lj3745:
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3754
	jmp	Lj3753
Lj3754:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$42,%al
	je	Lj3752
	jmp	Lj3753
Lj3752:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_DBF_DBFFILE_TDBFFILE_$__RECORDRECALLED$LONGINT$PCHAR$stub
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	movl	352(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	348(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
Lj3753:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CANCELRANGE
_DBF_TDBF_$__CANCELRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj3775
	jmp	Lj3776
Lj3775:
	jmp	Lj3773
Lj3776:
	movl	-4(%ebp),%eax
	movl	440(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE$stub
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__REFRESH$stub
Lj3773:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR
_DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj3783
	jmp	Lj3784
Lj3783:
	jmp	Lj3781
Lj3784:
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__SETRANGE$PCHAR$PCHAR$stub
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3791
	jmp	Lj3792
Lj3791:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__FIRST$stub
Lj3792:
Lj3781:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETRANGE$VARIANT$VARIANT$BOOLEAN
_DBF_TDBF_$__SETRANGE$VARIANT$VARIANT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-292(%ebp)
	movl	%esi,-288(%ebp)
	call	Lj3798
Lj3798:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-232(%ebp),%edx
	call	LFPC_VARIANT_COPY_OVERWRITE$stub
	movl	-8(%ebp),%eax
	leal	-248(%ebp),%edx
	call	LFPC_VARIANT_COPY_OVERWRITE$stub
	leal	-260(%ebp),%ecx
	leal	-284(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj3799
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj3802
	jmp	Lj3805
Lj3805:
	movzwl	-232(%ebp),%eax
	cmpl	$1,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj3802
	jmp	Lj3804
Lj3804:
	movzwl	-248(%ebp),%eax
	cmpl	$1,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj3802
	jmp	Lj3803
Lj3802:
	jmp	Lj3799
Lj3803:
	leal	-113(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	leal	-232(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE$stub
	cmpb	$1,%al
	je	Lj3812
	jmp	Lj3811
Lj3812:
	cmpb	$0,8(%ebp)
	jne	Lj3810
	jmp	Lj3811
Lj3810:
	movb	$1,(%esp)
	leal	-113(%ebp),%ecx
	leal	-113(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*744(%esi)
Lj3811:
	leal	-214(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	leal	-248(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE$stub
	cmpb	$1,%al
	je	Lj3829
	jmp	Lj3828
Lj3829:
	cmpb	$0,8(%ebp)
	jne	Lj3827
	jmp	Lj3828
Lj3827:
	movb	$1,(%esp)
	leal	-214(%ebp),%ecx
	leal	-214(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*744(%esi)
Lj3828:
	leal	-214(%ebp),%ecx
	leal	-113(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR$stub
Lj3799:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3798(%ebx),%eax
	movl	%eax,%edx
	leal	-232(%ebp),%eax
	call	LFPC_DECREF$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3798(%ebx),%eax
	movl	%eax,%edx
	leal	-248(%ebp),%eax
	call	LFPC_DECREF$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3800
	call	LFPC_RERAISE$stub
Lj3800:
	movl	-292(%ebp),%ebx
	movl	-288(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETRANGEPCHAR$PCHAR$PCHAR$BOOLEAN
_DBF_TDBF_$__SETRANGEPCHAR$PCHAR$PCHAR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-228(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj3852
	jmp	Lj3853
Lj3852:
	jmp	Lj3850
Lj3853:
	cmpb	$0,8(%ebp)
	jne	Lj3854
	jmp	Lj3855
Lj3854:
	movb	$1,(%esp)
	leal	-113(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*744(%ebx)
	movb	$1,(%esp)
	leal	-214(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*744(%ebx)
	leal	-113(%ebp),%eax
	movl	%eax,-4(%ebp)
	leal	-214(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj3855:
	leal	-113(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR$stub
	movl	%eax,-220(%ebp)
	leal	-214(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR$stub
	movl	%eax,-224(%ebp)
	movl	-224(%ebp),%ecx
	movl	-220(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR$stub
Lj3850:
	movl	-228(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__EXTRACTKEY$PCHAR
_DBF_TDBF_$__EXTRACTKEY$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	jne	Lj3900
	jmp	Lj3901
Lj3900:
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	440(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub
	jmp	Lj3912
Lj3901:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
Lj3912:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETKEYSIZE$$LONGINT
_DBF_TDBF_$__GETKEYSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3916
Lj3916:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%edx
	movl	L_VMT_DBF_IDXCUR_TINDEXCURSOR$non_lazy_ptr-Lj3916(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj3917
	jmp	Lj3918
Lj3917:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	call	L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj3927
Lj3918:
	movl	$0,-8(%ebp)
Lj3927:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SEARCHKEY$VARIANT$TSEARCHKEYTYPE$BOOLEAN$$BOOLEAN
_DBF_TDBF_$__SEARCHKEY$VARIANT$TSEARCHKEYTYPE$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-180(%ebp)
	movl	%esi,-176(%ebp)
	call	Lj3931
Lj3931:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-136(%ebp),%edx
	call	LFPC_VARIANT_COPY_OVERWRITE$stub
	leal	-148(%ebp),%ecx
	leal	-172(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj3932
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj3935
	jmp	Lj3937
Lj3937:
	movzwl	-136(%ebp),%eax
	cmpl	$1,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj3935
	jmp	Lj3936
Lj3935:
	movb	$0,-13(%ebp)
	jmp	Lj3932
Lj3936:
	leal	-114(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	leal	-136(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE$stub
	cmpb	$1,%al
	je	Lj3944
	jmp	Lj3943
Lj3944:
	cmpb	$0,8(%ebp)
	jne	Lj3942
	jmp	Lj3943
Lj3942:
	movb	$1,(%esp)
	leal	-114(%ebp),%ecx
	leal	-114(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*744(%esi)
Lj3943:
	leal	-114(%ebp),%edx
	movb	-8(%ebp),%cl
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SEARCHKEYBUFFER$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj3932:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj3931(%ebx),%eax
	movl	%eax,%edx
	leal	-136(%ebp),%eax
	call	LFPC_DECREF$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3933
	call	LFPC_RERAISE$stub
Lj3933:
	movb	-13(%ebp),%al
	movl	-180(%ebp),%ebx
	movl	-176(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__PREPAREKEY$POINTER$TEXPRESSIONTYPE$$PCHAR
_DBF_TDBF_$__PREPAREKEY$POINTER$TEXPRESSIONTYPE$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj3969
	jmp	Lj3970
Lj3969:
	movl	$0,-16(%ebp)
	jmp	Lj3967
Lj3970:
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj3967:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SEARCHKEYPCHAR$PCHAR$TSEARCHKEYTYPE$BOOLEAN$$BOOLEAN
_DBF_TDBF_$__SEARCHKEYPCHAR$PCHAR$TSEARCHKEYTYPE$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	je	Lj3983
	jmp	Lj3984
Lj3983:
	movb	$0,-13(%ebp)
	jmp	Lj3981
Lj3984:
	cmpb	$0,8(%ebp)
	jne	Lj3987
	jmp	Lj3988
Lj3987:
	movb	$1,(%esp)
	leal	-114(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*744(%ebx)
	leal	-114(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj3988:
	leal	-114(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR$stub
	movl	%eax,%edx
	movb	-8(%ebp),%cl
	movl	-12(%ebp),%eax
	call	L_DBF_TDBF_$__SEARCHKEYBUFFER$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj3981:
	movb	-13(%ebp),%al
	movl	-120(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SEARCHKEYBUFFER$PCHAR$TSEARCHKEYTYPE$$BOOLEAN
_DBF_TDBF_$__SEARCHKEYBUFFER$PCHAR$TSEARCHKEYTYPE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	je	Lj4015
	jmp	Lj4016
Lj4015:
	movb	$0,-13(%ebp)
	jmp	Lj4013
Lj4016:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-12(%ebp),%eax
	movl	440(%eax),%eax
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj4029
	jmp	Lj4030
Lj4029:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CURSORPOSCHANGED$stub
	movl	$0,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__UPDATECURSORPOS$stub
	movl	-12(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj4047
	decb	%al
	je	Lj4049
	decb	%al
	je	Lj4048
	jmp	Lj4046
Lj4047:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
	jmp	Lj4045
Lj4048:
	movl	-12(%ebp),%eax
	movb	257(%eax),%al
	testb	%al,%al
	je	Lj4054
	jmp	Lj4053
Lj4054:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4052
	jmp	Lj4053
Lj4052:
	movb	$1,-13(%ebp)
	jmp	Lj4055
Lj4053:
	movb	$0,-13(%ebp)
Lj4055:
	jmp	Lj4045
Lj4049:
	movl	-12(%ebp),%eax
	movb	257(%eax),%al
	testb	%al,%al
	je	Lj4058
	jmp	Lj4057
Lj4058:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj4056
	jmp	Lj4057
Lj4056:
	movb	$1,-13(%ebp)
	jmp	Lj4059
Lj4057:
	movb	$0,-13(%ebp)
Lj4059:
	jmp	Lj4045
Lj4046:
Lj4045:
Lj4030:
Lj4013:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__UPDATEINDEXDEFS
_DBF_TDBF_$__UPDATEINDEXDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__UPDATE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__CHECKMASTERRANGE
_DBF_TDBF_$__CHECKMASTERRANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	cmpb	$0,20(%eax)
	jne	Lj4069
	jmp	Lj4067
Lj4069:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	cmpb	$0,44(%eax)
	jne	Lj4068
	jmp	Lj4067
Lj4068:
	movl	-4(%ebp),%eax
	movl	440(%eax),%eax
	testl	%eax,%eax
	jne	Lj4066
	jmp	Lj4067
Lj4066:
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__UPDATERANGE$stub
Lj4067:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__UPDATERANGE
_DBF_TDBF_$__UPDATERANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	call	L_DBF_TDBFMASTERLINK_$__GETFIELDSVAL$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	call	L_DB_TDATALINK_$__GETDATASET$$TDATASET$stub
	movl	348(%eax),%edx
	movl	-4(%ebp),%eax
	movl	348(%eax),%ecx
	movl	144(%edx),%eax
	cmpl	144(%ecx),%eax
	jne	Lj4080
	jmp	Lj4079
Lj4080:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	movl	360(%edx),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	cmpb	$1,%al
	je	Lj4078
	jmp	Lj4079
Lj4078:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	call	L_DB_TDATALINK_$__GETDATASET$$TDATASET$stub
	movl	%eax,%ebx
	movb	$0,(%esp)
	leal	-309(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%esi
	movl	(%esi),%esi
	call	*744(%esi)
	leal	-309(%ebp),%eax
	movl	%eax,-8(%ebp)
	movb	$1,(%esp)
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*744(%ebx)
Lj4079:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	movl	360(%edx),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movb	%al,%cl
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR$stub
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__MASTERCHANGED$TOBJECT
_DBF_TDBF_$__MASTERCHANGED$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__CHECKMASTERRANGE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__MASTERDISABLED$TOBJECT
_DBF_TDBF_$__MASTERDISABLED$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_TDBF_$__CANCELRANGE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETDATASOURCE$$TDATASOURCE
_DBF_TDBF_$__GETDATASOURCE$$TDATASOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETDATASOURCE$TDATASOURCE
_DBF_TDBF_$__SETDATASOURCE$TDATASOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DB_TDATALINK_$__SETDATASOURCE$TDATASOURCE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__GETMASTERFIELDS$$ANSISTRING
_DBF_TDBF_$__GETMASTERFIELDS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%esi
	movl	40(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	40(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBF_$__SETMASTERFIELDS$ANSISTRING
_DBF_TDBF_$__SETMASTERFIELDS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DBF_TDBFMASTERLINK_$__SETFIELDNAMES$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__CREATE$TDBF$$TDBFINDEXDEFS
_DBF_TDBFINDEXDEFS_$__CREATE$TDBF$$TDBFINDEXDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj4154
Lj4154:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4155
	jmp	Lj4156
Lj4155:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4156:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4161
	jmp	Lj4162
Lj4161:
	jmp	Lj4153
Lj4162:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4165
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4169
	movl	L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr-Lj4154(%ebx),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
Lj4169:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4170
	call	LFPC_RERAISE$stub
Lj4170:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4182
	jmp	Lj4181
Lj4182:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4180
	jmp	Lj4181
Lj4180:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4181:
Lj4165:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4167
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4186
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4187
	jmp	Lj4188
Lj4187:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4188:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4186:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4185
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4185:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4167
Lj4167:
Lj4153:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__ADD$$TDBFINDEXDEF
_DBF_TDBFINDEXDEFS_$__ADD$$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__SETITEM$LONGINT$TDBFINDEXDEF
_DBF_TDBFINDEXDEFS_$__SETITEM$LONGINT$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF
_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__GETOWNER$$TPERSISTENT
_DBF_TDBFINDEXDEFS_$__GETOWNER$$TPERSISTENT:
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
.globl	_DBF_TDBFINDEXDEFS_$__GETINDEXBYNAME$ANSISTRING$$TDBFINDEXDEF
_DBF_TDBFINDEXDEFS_$__GETINDEXBYNAME$ANSISTRING$$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4222
	decl	-16(%ebp)
	.align 2
Lj4223:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4232
	jmp	Lj4233
Lj4232:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj4219
Lj4233:
	cmpl	-16(%ebp),%ebx
	jg	Lj4223
Lj4222:
	movl	$0,-12(%ebp)
Lj4219:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__GETINDEXBYFIELD$ANSISTRING$$TDBFINDEXDEF
_DBF_TDBFINDEXDEFS_$__GETINDEXBYFIELD$ANSISTRING$$TDBFINDEXDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj4243
Lj4243:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4244
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-20(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4243(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	$0,-12(%ebp)
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4243(%ebx),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4259
	jmp	Lj4260
Lj4259:
	jmp	Lj4244
Lj4260:
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj4266
	decl	-24(%ebp)
	.align 2
Lj4267:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	leal	-76(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-72(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj4243(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-72(%ebp),%eax
	movl	-20(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4276
	jmp	Lj4277
Lj4276:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj4244
Lj4277:
	cmpl	-24(%ebp),%esi
	jg	Lj4267
Lj4266:
Lj4244:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4245
	call	LFPC_RERAISE$stub
Lj4245:
	movl	-12(%ebp),%eax
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFINDEXDEFS_$__UPDATE
_DBF_TDBFINDEXDEFS_$__UPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,32(%eax)
	jne	Lj4302
	jmp	Lj4303
Lj4302:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	movl	(%edx),%edx
	call	*484(%edx)
Lj4303:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__CREATE$TDBF$$TDBFMASTERLINK
_DBF_TDBFMASTERLINK_$__CREATE$TDBF$$TDBFMASTERLINK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj4307
Lj4307:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4308
	jmp	Lj4309
Lj4308:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4309:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4314
	jmp	Lj4315
Lj4314:
	jmp	Lj4306
Lj4315:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4318
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4322
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATALINK_$__CREATE$$TDATALINK$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
	movl	L_VMT_DBF_PARSER_TDBFPARSER$non_lazy_ptr-Lj4307(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub
	movl	-12(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-12(%ebp),%eax
	movb	$0,44(%eax)
Lj4322:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4323
	call	LFPC_RERAISE$stub
Lj4323:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4343
	jmp	Lj4342
Lj4343:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4341
	jmp	Lj4342
Lj4341:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4342:
Lj4318:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4320
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4347
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4348
	jmp	Lj4349
Lj4348:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4349:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4347:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4346
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4346:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4320
Lj4320:
Lj4306:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__DESTROY
_DBF_TDBFMASTERLINK_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4356
	jmp	Lj4357
Lj4356:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj4357:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATALINK_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4368
	jmp	Lj4367
Lj4368:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4366
	jmp	Lj4367
Lj4366:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj4367:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__ACTIVECHANGED
_DBF_TDBFMASTERLINK_$__ACTIVECHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj4372
Lj4372:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj4375
	jmp	Lj4374
Lj4375:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4372(%ebx),%edx
	movl	(%edx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj4373
	jmp	Lj4374
Lj4373:
	movl	-4(%ebp),%eax
	movb	$0,44(%eax)
	movl	-4(%ebp),%eax
	call	L_DB_TDATALINK_$__GETDATASET$$TDATASET$stub
	movl	%eax,%edx
	movl	L_VMT_DBF_TDBF$non_lazy_ptr-Lj4372(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	movl	348(%eax),%eax
	movl	%eax,36(%edx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	36(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-4(%ebp),%eax
	movb	$1,44(%eax)
	jmp	Lj4396
Lj4374:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-4(%ebp),%eax
	movb	$0,44(%eax)
Lj4396:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4403
	jmp	Lj4402
Lj4403:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	$8,40(%eax)
	je	Lj4401
	jmp	Lj4402
Lj4401:
	movl	-4(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj4406
	jmp	Lj4407
Lj4406:
	movl	-4(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4408
	jmp	Lj4409
Lj4408:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
Lj4409:
	jmp	Lj4414
Lj4407:
	movl	-4(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj4415
	jmp	Lj4416
Lj4415:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	56(%ecx),%ecx
	call	*%ecx
Lj4416:
Lj4414:
Lj4402:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__CHECKBROWSEMODE
_DBF_TDBFMASTERLINK_$__CHECKBROWSEMODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4423
	jmp	Lj4424
Lj4423:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
Lj4424:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__LAYOUTCHANGED
_DBF_TDBFMASTERLINK_$__LAYOUTCHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__RECORDCHANGED$TFIELD
_DBF_TDBFMASTERLINK_$__RECORDCHANGED$TFIELD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	64(%eax),%eax
	cmpl	$4,%eax
	jne	Lj4438
	jmp	Lj4436
Lj4438:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4437
	jmp	Lj4436
Lj4437:
	movl	-8(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4435
	jmp	Lj4436
Lj4435:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	48(%ecx),%ecx
	call	*%ecx
Lj4436:
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__SETFIELDNAMES$ANSISTRING
_DBF_TDBFMASTERLINK_$__SETFIELDNAMES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj4447
	jmp	Lj4448
Lj4447:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	40(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,40(%ebx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
Lj4448:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_TDBFMASTERLINK_$__GETFIELDSVAL$$PCHAR
_DBF_TDBFMASTERLINK_$__GETFIELDSVAL$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATALINK_$__GETDATASET$$TDATASET$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	36(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_APPLICATIONPATH$$ANSISTRING
_DBF_APPLICATIONPATH$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj4473
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	$0,%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
Lj4473:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj4474
	call	LFPC_RERAISE$stub
Lj4474:
	leave
	ret

.text
	.align 4
.globl	_INIT$_DBF
_INIT$_DBF:
.reference __DBF_init
.globl	__DBF_init
__DBF_init:
.reference _INIT$_DBF
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%edx
	movl	L_DBF_APPLICATIONPATH$$ANSISTRING$non_lazy_ptr-Lj2(%edx),%eax
	movl	L_U_DBF_DBFBASEPATH$non_lazy_ptr-Lj2(%edx),%ecx
	movl	%eax,(%ecx)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_DBF_DBFBASEPATH
.data
.zerofill __DATA, __common, _U_DBF_DBFBASEPATH, 4,2



.const_data
	.align 2
.globl	_$DBF$_Ld21
_$DBF$_Ld21:
	.byte	4
	.ascii	"TDbf"

.const_data
	.align 2
.globl	_VMT_DBF_TDBF
_VMT_DBF_TDBF:
	.long	508,-508
	.long	_VMT_DB_TDATASET
	.long	_$DBF$_Ld21
	.long	0,0
	.long	_$DBF$_Ld22
	.long	_RTTI_DBF_TDBF
	.long	_INIT_DBF_TDBF
	.long	0,0,0
	.long	_DBF_TDBF_$__DESTROY
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
	.long	_DB_TDATASET_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_DB_TDATASET_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_DB_TDATASET_$__SETNAME$ANSISTRING
	.long	_DB_TDATASET_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_DBF_TDBF_$__CREATE$TCOMPONENT$$TDBF
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_DB_TDATASET_$__SETBLOCKREADSIZE$LONGINT
	.long	_DB_TDATASET_$__ACTIVATEBUFFERS
	.long	_DB_TDATASET_$__BLOCKREADNEXT
	.long	_DB_TDATASET_$__CALCULATEFIELDS$PCHAR
	.long	_DB_TDATASET_$__CHECKACTIVE
	.long	_DB_TDATASET_$__CHECKINACTIVE
	.long	_DB_TDATASET_$__CLEARBUFFERS
	.long	_DBF_TDBF_$__CLEARCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__CLOSEBLOB$TFIELD
	.long	_DB_TDATASET_$__CLOSECURSOR
	.long	_DB_TDATASET_$__CREATEFIELDS
	.long	_DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
	.long	_DB_TDATASET_$__DESTROYFIELDS
	.long	_DB_TDATASET_$__DOAFTERCANCEL
	.long	_DB_TDATASET_$__DOAFTERCLOSE
	.long	_DB_TDATASET_$__DOAFTERDELETE
	.long	_DB_TDATASET_$__DOAFTEREDIT
	.long	_DB_TDATASET_$__DOAFTERINSERT
	.long	_DB_TDATASET_$__DOAFTEROPEN
	.long	_DB_TDATASET_$__DOAFTERPOST
	.long	_DB_TDATASET_$__DOAFTERSCROLL
	.long	_DB_TDATASET_$__DOAFTERREFRESH
	.long	_DB_TDATASET_$__DOBEFORECANCEL
	.long	_DB_TDATASET_$__DOBEFORECLOSE
	.long	_DB_TDATASET_$__DOBEFOREDELETE
	.long	_DB_TDATASET_$__DOBEFOREEDIT
	.long	_DB_TDATASET_$__DOBEFOREINSERT
	.long	_DB_TDATASET_$__DOBEFOREOPEN
	.long	_DB_TDATASET_$__DOBEFOREPOST
	.long	_DB_TDATASET_$__DOBEFORESCROLL
	.long	_DB_TDATASET_$__DOBEFOREREFRESH
	.long	_DB_TDATASET_$__DOONCALCFIELDS
	.long	_DB_TDATASET_$__DOONNEWRECORD
	.long	_DBF_TDBF_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
	.long	_DB_TDATASET_$__FREEFIELDBUFFERS
	.long	_DB_TDATASET_$__GETBOOKMARKSTR$$ANSISTRING
	.long	_DB_TDATASET_$__GETCALCFIELDS$PCHAR
	.long	_DBF_TDBF_$__GETCANMODIFY$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDCLASS$TFIELDTYPE$$TFIELDCLASS
	.long	_DB_TDATASET_$__GETFIELDVALUES$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__GETISINDEXFIELD$TFIELD$$BOOLEAN
	.long	_DB_TDATASET_$__GETNEXTRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETNEXTRECORD$$BOOLEAN
	.long	_DB_TDATASET_$__GETPRIORRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETPRIORRECORD$$BOOLEAN
	.long	_DBF_TDBF_$__GETRECORDCOUNT$$LONGINT
	.long	_DBF_TDBF_$__GETRECNO$$LONGINT
	.long	_DBF_TDBF_$__INITFIELDDEFS
	.long	_DB_TDATASET_$__INITRECORD$PCHAR
	.long	_DBF_TDBF_$__INTERNALCANCEL
	.long	_DBF_TDBF_$__INTERNALEDIT
	.long	_DB_TDATASET_$__INTERNALINSERT
	.long	_DB_TDATASET_$__INTERNALREFRESH
	.long	_DB_TDATASET_$__OPENCURSOR$BOOLEAN
	.long	_DB_TDATASET_$__OPENCURSORCOMPLETE
	.long	_DB_TDATASET_$__REFRESHINTERNALCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__SETACTIVE$BOOLEAN
	.long	_DB_TDATASET_$__SETBOOKMARKSTR$ANSISTRING
	.long	_DB_TDATASET_$__SETBUFLISTSIZE$LONGINT
	.long	_DB_TDATASET_$__SETCURRENTRECORD$LONGINT
	.long	_DBF_TDBF_$__SETFILTERED$BOOLEAN
	.long	_DB_TDATASET_$__SETFILTEROPTIONS$TFILTEROPTIONS
	.long	_DBF_TDBF_$__SETFILTERTEXT$ANSISTRING
	.long	_DB_TDATASET_$__SETFIELDVALUES$ANSISTRING$VARIANT
	.long	_DB_TDATASET_$__SETFOUND$BOOLEAN
	.long	_DB_TDATASET_$__SETONFILTERRECORD$TFILTERRECORDEVENT
	.long	_DBF_TDBF_$__SETRECNO$LONGINT
	.long	_DBF_TDBF_$__UPDATEINDEXDEFS
	.long	_DBF_TDBF_$__ALLOCRECORDBUFFER$$PCHAR
	.long	_DBF_TDBF_$__FREERECORDBUFFER$PCHAR
	.long	_DBF_TDBF_$__GETBOOKMARKDATA$PCHAR$POINTER
	.long	_DBF_TDBF_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
	.long	_DBF_TDBF_$__GETDATASOURCE$$TDATASOURCE
	.long	_DBF_TDBF_$__GETRECORDSIZE$$WORD
	.long	_DBF_TDBF_$__INTERNALADDRECORD$POINTER$BOOLEAN
	.long	_DBF_TDBF_$__INTERNALDELETE
	.long	_DBF_TDBF_$__INTERNALFIRST
	.long	_DBF_TDBF_$__INTERNALGOTOBOOKMARK$POINTER
	.long	_DBF_TDBF_$__INTERNALHANDLEEXCEPTION
	.long	_DBF_TDBF_$__INTERNALINITRECORD$PCHAR
	.long	_DBF_TDBF_$__INTERNALLAST
	.long	_DBF_TDBF_$__INTERNALPOST
	.long	_DBF_TDBF_$__INTERNALSETTORECORD$PCHAR
	.long	_DBF_TDBF_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
	.long	_DBF_TDBF_$__SETBOOKMARKDATA$PCHAR$POINTER
	.long	_DBF_TDBF_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
	.long	_DBF_TDBF_$__INTERNALCLOSE
	.long	_DBF_TDBF_$__INTERNALOPEN
	.long	_DBF_TDBF_$__INTERNALINITFIELDDEFS
	.long	_DBF_TDBF_$__ISCURSOROPEN$$BOOLEAN
	.long	_DB_TDATASET_$__PSENDTRANSACTION$BOOLEAN
	.long	_DB_TDATASET_$__PSEXECUTE
	.long	_DB_TDATASET_$__PSEXECUTESTATEMENT$ANSISTRING$TPARAMS$POINTER$$LONGINT
	.long	_DB_TDATASET_$__PSGETATTRIBUTES$TLIST
	.long	_DB_TDATASET_$__PSGETCOMMANDTEXT$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETCOMMANDTYPE$$TPSCOMMANDTYPE
	.long	_DB_TDATASET_$__PSGETDEFAULTORDER$$TINDEXDEF
	.long	_DB_TDATASET_$__PSGETINDEXDEFS$TINDEXOPTIONS$$TINDEXDEFS
	.long	_DB_TDATASET_$__PSGETKEYFIELDS$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETPARAMS$$TPARAMS
	.long	_DB_TDATASET_$__PSGETQUOTECHAR$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETTABLENAME$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETUPDATEEXCEPTION$EXCEPTION$EUPDATEERROR$$EUPDATEERROR
	.long	_DB_TDATASET_$__PSINTRANSACTION$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLBASED$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLSUPPORTED$$BOOLEAN
	.long	_DB_TDATASET_$__PSRESET
	.long	_DB_TDATASET_$__PSSETCOMMANDTEXT$ANSISTRING
	.long	_DB_TDATASET_$__PSSETPARAMS$TPARAMS
	.long	_DB_TDATASET_$__PSSTARTTRANSACTION
	.long	_DB_TDATASET_$__PSUPDATERECORD$TUPDATEKIND$TDATASET$$BOOLEAN
	.long	_DBF_TDBF_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
	.long	_DBF_TDBF_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
	.long	_DBF_TDBF_$__SETFIELDDATA$TFIELD$POINTER
	.long	_DBF_TDBF_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__CANCEL
	.long	_DBF_TDBF_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
	.long	_DBF_TDBF_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
	.long	_DB_TDATASET_$__DATACONVERT$TFIELD$POINTER$POINTER$BOOLEAN
	.long	_DBF_TDBF_$__FINDFIRST$$BOOLEAN
	.long	_DBF_TDBF_$__FINDLAST$$BOOLEAN
	.long	_DBF_TDBF_$__FINDNEXT$$BOOLEAN
	.long	_DBF_TDBF_$__FINDPRIOR$$BOOLEAN
	.long	_DB_TDATASET_$__FREEBOOKMARK$POINTER
	.long	_DB_TDATASET_$__GETBOOKMARK$$POINTER
	.long	_DB_TDATASET_$__GETCURRENTRECORD$PCHAR$$BOOLEAN
	.long	_DB_TDATASET_$__ISSEQUENCED$$BOOLEAN
	.long	_DBF_TDBF_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	.long	_DBF_TDBF_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__POST
	.long	_DBF_TDBF_$__RESYNC$TRESYNCMODE
	.long	_DBF_TDBF_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
	.long	_DB_TDATASET_$__UPDATESTATUS$$TUPDATESTATUS
	.long	0

.const_data
	.align 2
.globl	_$DBF$_Ld24
_$DBF$_Ld24:
	.byte	14
	.ascii	"TDbfBlobStream"

.const_data
	.align 2
.globl	_VMT_DBF_TDBFBLOBSTREAM
_VMT_DBF_TDBFBLOBSTREAM:
	.long	44,-44
	.long	_VMT_CLASSES_TMEMORYSTREAM
	.long	_$DBF$_Ld24
	.long	0,0
	.long	_$DBF$_Ld25
	.long	_RTTI_DBF_TDBFBLOBSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_TDBFBLOBSTREAM_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_DBF_TDBFBLOBSTREAM_$__FREEINSTANCE
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
	.long	_CLASSES_TCUSTOMMEMORYSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TCUSTOMMEMORYSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TMEMORYSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TCUSTOMMEMORYSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_TMEMORYSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TCUSTOMMEMORYSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	_CLASSES_TMEMORYSTREAM_$__REALLOC$LONGINT$$POINTER
	.long	0

.const_data
	.align 2
.globl	_$DBF$_Ld27
_$DBF$_Ld27:
	.byte	13
	.ascii	"TDbfIndexDefs"

.const_data
	.align 2
.globl	_VMT_DBF_TDBFINDEXDEFS
_VMT_DBF_TDBFINDEXDEFS:
	.long	36,-36
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$DBF$_Ld27
	.long	0,0
	.long	_$DBF$_Ld28
	.long	_RTTI_DBF_TDBFINDEXDEFS
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTION_$__DESTROY
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
	.long	_DBF_TDBFINDEXDEFS_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	_CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	_CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	_CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	_CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.const_data
	.align 2
.globl	_$DBF$_Ld30
_$DBF$_Ld30:
	.byte	14
	.ascii	"TDbfMasterLink"

.const_data
	.align 2
.globl	_VMT_DBF_TDBFMASTERLINK
_VMT_DBF_TDBFMASTERLINK:
	.long	64,-64
	.long	_VMT_DB_TDATALINK
	.long	_$DBF$_Ld30
	.long	0,0
	.long	_$DBF$_Ld31
	.long	_RTTI_DBF_TDBFMASTERLINK
	.long	_INIT_DBF_TDBFMASTERLINK
	.long	0,0,0
	.long	_DBF_TDBFMASTERLINK_$__DESTROY
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
	.long	_DBF_TDBFMASTERLINK_$__ACTIVECHANGED
	.long	_DBF_TDBFMASTERLINK_$__CHECKBROWSEMODE
	.long	_DB_TDATALINK_$__DATAEVENT$TDATAEVENT$LONGINT
	.long	_DB_TDATALINK_$__DATASETCHANGED
	.long	_DB_TDATALINK_$__DATASETSCROLLED$LONGINT
	.long	_DB_TDATALINK_$__EDITINGCHANGED
	.long	_DB_TDATALINK_$__FOCUSCONTROL$TFIELDREF
	.long	_DB_TDATALINK_$__GETACTIVERECORD$$LONGINT
	.long	_DB_TDATALINK_$__GETBOF$$BOOLEAN
	.long	_DB_TDATALINK_$__GETBUFFERCOUNT$$LONGINT
	.long	_DB_TDATALINK_$__GETEOF$$BOOLEAN
	.long	_DB_TDATALINK_$__GETRECORDCOUNT$$LONGINT
	.long	_DBF_TDBFMASTERLINK_$__LAYOUTCHANGED
	.long	_DB_TDATALINK_$__MOVEBY$LONGINT$$LONGINT
	.long	_DBF_TDBFMASTERLINK_$__RECORDCHANGED$TFIELD
	.long	_DB_TDATALINK_$__SETACTIVERECORD$LONGINT
	.long	_DB_TDATALINK_$__SETBUFFERCOUNT$LONGINT
	.long	_DB_TDATALINK_$__UPDATEDATA
	.long	_DB_TDATALINK_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_DB_TDATALINK_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF
_THREADVARLIST_DBF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_DBF_TDBF_$_INITDBFFILE$TPAGEDFILEMODE_FILEMODETOMEMMODE
_TC_DBF_TDBF_$_INITDBFFILE$TPAGEDFILEMODE_FILEMODETOMEMMODE:
	.byte	0,1,2,1,2,1,2,2

.data
.globl	_TC_DBF_TDBF_$_INTERNALOPEN_DBFOPENMODE
_TC_DBF_TDBF_$_INTERNALOPEN_DBFOPENMODE:
	.byte	6,4,7,7

.const_data
	.align 2
.globl	_$DBF$_Ld2
_$DBF$_Ld2:
	.short	0,1
	.long	0,-1,4
.reference _$DBF$_Ld1
.globl	_$DBF$_Ld1
_$DBF$_Ld1:
.reference _$DBF$_Ld2
	.ascii	"NULL\000"

.const_data
	.align 2
.globl	_$DBF$_Ld4
_$DBF$_Ld4:
	.short	0,1
	.long	0,-1,6
.reference _$DBF$_Ld3
.globl	_$DBF$_Ld3
_$DBF$_Ld3:
.reference _$DBF$_Ld4
	.ascii	"ASCII \000"

.const_data
	.align 2
.globl	_$DBF$_Ld6
_$DBF$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$DBF$_Ld5
.globl	_$DBF$_Ld5
_$DBF$_Ld5:
.reference _$DBF$_Ld6
	.ascii	" \"\000"

.const_data
	.align 2
.globl	_$DBF$_Ld8
_$DBF$_Ld8:
	.short	0,1
	.long	0,-1,2
.reference _$DBF$_Ld7
.globl	_$DBF$_Ld7
_$DBF$_Ld7:
.reference _$DBF$_Ld8
	.ascii	"\" \000"

.const_data
	.align 2
.globl	_$DBF$_Ld10
_$DBF$_Ld10:
	.short	0,1
	.long	0,-1,1
.reference _$DBF$_Ld9
.globl	_$DBF$_Ld9
_$DBF$_Ld9:
.reference _$DBF$_Ld10
	.ascii	" \000"

.const_data
	.align 2
.globl	_$DBF$_Ld12
_$DBF$_Ld12:
	.short	0,1
	.long	0,-1,2
.reference _$DBF$_Ld11
.globl	_$DBF$_Ld11
_$DBF$_Ld11:
.reference _$DBF$_Ld12
	.ascii	"(#\000"

.const_data
	.align 2
.globl	_$DBF$_Ld14
_$DBF$_Ld14:
	.short	0,1
	.long	0,-1,2
.reference _$DBF$_Ld13
.globl	_$DBF$_Ld13
_$DBF$_Ld13:
.reference _$DBF$_Ld14
	.ascii	") \000"

.const_data
	.align 2
.globl	_$DBF$_Ld16
_$DBF$_Ld16:
	.short	0,1
	.long	0,-1,34
.reference _$DBF$_Ld15
.globl	_$DBF$_Ld15
_$DBF$_Ld15:
.reference _$DBF$_Ld16
	.ascii	"Dataset not in edit or insert mode\000"

.data
.globl	_TC_DBF_TDBF_$_COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT_RETCODES
_TC_DBF_TDBF_$_COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT_RETCODES:
	.byte	2,255,1,0

.const_data
	.align 2
.globl	_$DBF$_Ld18
_$DBF$_Ld18:
	.short	0,1
	.long	0,-1,7
.reference _$DBF$_Ld17
.globl	_$DBF$_Ld17
_$DBF$_Ld17:
.reference _$DBF$_Ld18
	.ascii	"%d.%02d\000"

.const_data
	.align 2
.globl	_$DBF$_Ld20
_$DBF$_Ld20:
	.short	0,1
	.long	0,-1,5
.reference _$DBF$_Ld19
.globl	_$DBF$_Ld19
_$DBF$_Ld19:
.reference _$DBF$_Ld20
	.ascii	"*.NDX\000"
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

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
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

L_CLASSES_TMEMORYSTREAM_$__DESTROY$stub:
.indirect_symbol _CLASSES_TMEMORYSTREAM_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREEINSTANCE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREEINSTANCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFBLOBSTREAM_$__TRANSLATE$BOOLEAN$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__TRANSLATE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub:
.indirect_symbol _DB_TDATASET_$__ACTIVEBUFFER$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__SETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFBLOBSTREAM_$__GETTRANSLITERATE$$BOOLEAN$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__GETTRANSLITERATE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub:
.indirect_symbol _DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFGLOBALS_$__CREATE$$TDBFGLOBALS$stub:
.indirect_symbol _DBF_DBFFILE_TDBFGLOBALS_$__CREATE$$TDBFGLOBALS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFINDEXDEFS_$__CREATE$TDBF$$TDBFINDEXDEFS$stub:
.indirect_symbol _DBF_TDBFINDEXDEFS_$__CREATE$TDBF$$TDBFINDEXDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFMASTERLINK_$__CREATE$TDBF$$TDBFMASTERLINK$stub:
.indirect_symbol _DBF_TDBFMASTERLINK_$__CREATE$TDBF$$TDBFMASTERLINK
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

L_DBF_TDBF_$__SETFILEPATH$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$__SETFILEPATH$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__DESTROY$stub:
.indirect_symbol _DB_TDATASET_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF$stub:
.indirect_symbol _DBF_TDBFINDEXDEFS_$__GETITEM$LONGINT$$TDBFINDEXDEF
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub:
.indirect_symbol _DBF_COMMON_FREEMEMANDNIL$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__ISEMPTY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR$stub:
.indirect_symbol _DBF_TDBF_$__GETCURRENTBUFFER$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETFIELDDATA$LONGINT$TFIELDTYPE$POINTER$POINTER$BOOLEAN$$BOOLEAN
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

L_DB_TDATASET_$__FINDFIRST$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__FINDFIRST$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__FINDLAST$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__FINDLAST$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__FINDNEXT$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__FINDNEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__FINDPRIOR$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__FINDPRIOR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELD_$__VALIDATE$POINTER$stub:
.indirect_symbol _DB_TFIELD_$__VALIDATE$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__READCURRENTRECORD$PCHAR$BOOLEAN$$TGETRESULT$stub:
.indirect_symbol _DBF_TDBF_$__READCURRENTRECORD$PCHAR$BOOLEAN$$TGETRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__DOFILTERRECORD$BOOLEAN$stub:
.indirect_symbol _DBF_TDBF_$__DOFILTERRECORD$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__RESTORESTATE$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__INSERT$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__INSERT$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__BINDFIELDS$BOOLEAN
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

L_DBF_TDBFBLOBSTREAM_$__CANCEL$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__CANCEL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETSTATE$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__SETSTATE$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__RECORDDELETED$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__RECORDDELETED$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__FIRST$stub:
.indirect_symbol _DB_TDATASET_$__FIRST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__LAST$stub:
.indirect_symbol _DB_TDATASET_$__LAST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTADDR$$POINTER$stub:
.indirect_symbol _SYSUTILS_EXCEPTADDR$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub:
.indirect_symbol _SYSUTILS_EXCEPTOBJECT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER$stub:
.indirect_symbol _SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CLEAR$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$_GETFIELDDEFSFROMDBFFIELDDEFS_FIXDUPLICATENAMES$stub:
.indirect_symbol _DBF_TDBF_$_GETFIELDDEFSFROMDBFFIELDDEFS_FIXDUPLICATENAMES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN$stub:
.indirect_symbol _DB_TFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$WORD$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub:
.indirect_symbol _DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEF_$__SETPRECISION$LONGINT$stub:
.indirect_symbol _DB_TFIELDDEF_$__SETPRECISION$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFINDEXDEFS_$__GETINDEXBYNAME$ANSISTRING$$TDBFINDEXDEF$stub:
.indirect_symbol _DBF_TDBFINDEXDEFS_$__GETINDEXBYNAME$ANSISTRING$$TDBFINDEXDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFINDEXDEFS_$__ADD$$TDBFINDEXDEF$stub:
.indirect_symbol _DBF_TDBFINDEXDEFS_$__ADD$$TDBFINDEXDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETINDEXINFO$ANSISTRING$TDBFINDEXDEF
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
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

L_DB_TDEFCOLLECTION_$__INDEXOF$ANSISTRING$$LONGINT$stub:
.indirect_symbol _DB_TDEFCOLLECTION_$__INDEXOF$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__CREATE$$TDBFFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE$stub:
.indirect_symbol _DBF_TDBF_$__INITDBFFILE$TPAGEDFILEMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__OPEN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__OPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__GETFIELDDEFSFROMDBFFIELDDEFS$stub:
.indirect_symbol _DBF_TDBF_$__GETFIELDDEFSFROMDBFFIELDDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__INITRECORD$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETACP$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETACP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_GETOEMCP$$LONGWORD$stub:
.indirect_symbol _DBF_WTIL_GETOEMCP$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFGLOBALS_$__CODEPAGEINSTALLED$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFGLOBALS_$__CODEPAGEINSTALLED$LONGINT$$BOOLEAN
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

L_DBF_TDBF_$__CREATETABLE$stub:
.indirect_symbol _DBF_TDBF_$__CREATETABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETLANGUAGEID$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_ALLOCMEM$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__DETERMINETRANSLATIONMODE$stub:
.indirect_symbol _DBF_TDBF_$__DETERMINETRANSLATIONMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$__PARSEINDEXNAME$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__OPENINDEX$ANSISTRING$ANSISTRING$BOOLEAN$TINDEXOPTIONS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__PARSEFILTER$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$__PARSEFILTER$ANSISTRING
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

L_DBF_TDBF_$__SETINDEXNAME$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$__SETINDEXNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__CHECKMASTERRANGE$stub:
.indirect_symbol _DBF_TDBF_$__CHECKMASTERRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETLANGUAGESTR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__LOCKALLPAGES$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__LOCKALLPAGES$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__LOCKRECORD$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__LOCKRECORD$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFBLOBSTREAM_$__COMMIT$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__COMMIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__UNLOCKRECORD$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__UNLOCKRECORD$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__RESYNC$TRESYNCMODE$stub:
.indirect_symbol _DB_TDATASET_$__RESYNC$TRESYNCMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub:
.indirect_symbol _DB_TDATASET_$__GETFIELDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub:
.indirect_symbol _DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__CREATETABLEEX$TDBFFIELDDEFS$stub:
.indirect_symbol _DBF_TDBF_$__CREATETABLEEX$TDBFFIELDDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$_CHECKDBFFIELDDEFS$TDBFFIELDDEFS_FIELDTYPESTR$CHAR$$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$_CHECKDBFFIELDDEFS$TDBFFIELDDEFS_FIELDTYPESTR$CHAR$$ANSISTRING
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

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
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

L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TABLELEVELTODBFVERSION$LONGINT$$TXBASEVERSION$stub:
.indirect_symbol _DBF_TABLELEVELTODBFVERSION$LONGINT$$TXBASEVERSION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__FINISHCREATE$TDBFFIELDDEFS$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__ZAP$stub:
.indirect_symbol _DBF_TDBF_$__ZAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__ZAP$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__ZAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__CHECKDBFFIELDDEFS$TDBFFIELDDEFS$stub:
.indirect_symbol _DBF_TDBF_$__CHECKDBFFIELDDEFS$TDBFFIELDDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__RESTRUCTURETABLE$TDBFFIELDDEFS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CHECKBROWSEMODE$stub:
.indirect_symbol _DB_TDATASET_$__CHECKBROWSEMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__GETINDEXNAME$$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$__GETINDEXNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__GETACTIVE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CLOSE$stub:
.indirect_symbol _DB_TDATASET_$__CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__SETTABLENAME$ANSISTRING$stub:
.indirect_symbol _DBF_TDBF_$__SETTABLENAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__SETTABLELEVEL$LONGINT$stub:
.indirect_symbol _DBF_TDBF_$__SETTABLELEVEL$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__OPEN$stub:
.indirect_symbol _DB_TDATASET_$__OPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEFS_$__UPDATE$stub:
.indirect_symbol _DB_TFIELDDEFS_$__UPDATE
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

L_DBF_TDBF_$__GETDBFFIELDDEFS$$TDBFFIELDDEFS$stub:
.indirect_symbol _DBF_TDBF_$__GETDBFFIELDDEFS$$TDBFFIELDDEFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__APPEND$stub:
.indirect_symbol _DB_TDATASET_$__APPEND
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__NEXT$stub:
.indirect_symbol _DB_TDATASET_$__NEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__UPDATECURSORPOS$stub:
.indirect_symbol _DB_TDATASET_$__UPDATECURSORPOS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CURSORPOSCHANGED$stub:
.indirect_symbol _DB_TDATASET_$__CURSORPOSCHANGED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_NULL$$VARIANT$stub:
.indirect_symbol _VARIANTS_NULL$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__LOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub:
.indirect_symbol _DBF_TDBF_$__LOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FINALIZE$stub:
.indirect_symbol FPC_FINALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INITIALIZE$stub:
.indirect_symbol FPC_INITIALIZE
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

L_DB_TDATASET_$__TEMPBUFFER$$PCHAR$stub:
.indirect_symbol _DB_TDATASET_$__TEMPBUFFER$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub:
.indirect_symbol _DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT
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

L_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT
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

Lfpc_vararray_get$stub:
.indirect_symbol fpc_vararray_get
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_variant_copy$stub:
.indirect_symbol fpc_variant_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$_LOCATERECORDLINEAR$crc4659D974_COMPAREVALUES$$BOOLEAN$stub:
.indirect_symbol _DBF_TDBF_$_LOCATERECORDLINEAR$crc4659D974_COMPAREVALUES$$BOOLEAN
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

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING$stub:
.indirect_symbol _VARIANTS_VARTOSTR$VARIANT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
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

L_DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETKEYTYPE$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE$stub:
.indirect_symbol _DBF_IDXCUR_TINDEXCURSOR_$__VARIANTTOBUFFER$VARIANT$PCHAR$$TEXPRESSIONTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SEARCHKEY$PCHAR$TSEARCHKEYTYPE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__MATCHKEY$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETEXPRESSION$$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETEXPRESSION$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFINDEXDEFS_$__GETINDEXBYFIELD$ANSISTRING$$TDBFINDEXDEF$stub:
.indirect_symbol _DBF_TDBFINDEXDEFS_$__GETINDEXBYFIELD$ANSISTRING$$TDBFINDEXDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__GETINDEXBYNAME$ANSISTRING$$TINDEXFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXCUR_TINDEXCURSOR_$__CREATE$TINDEXFILE$$TINDEXCURSOR$stub:
.indirect_symbol _DBF_IDXCUR_TINDEXCURSOR_$__CREATE$TINDEXFILE$$TINDEXCURSOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETINDEXNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__LOCATERECORDINDEX$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub:
.indirect_symbol _DBF_TDBF_$__LOCATERECORDINDEX$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETPHYSICALRECNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__LOCATERECORDLINEAR$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub:
.indirect_symbol _DBF_TDBF_$__LOCATERECORDLINEAR$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub:
.indirect_symbol _DB_DATABASEERROR$ANSISTRING$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFBLOBSTREAM_$__CREATE$TFIELD$$TDBFBLOBSTREAM$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__CREATE$TFIELD$$TDBFBLOBSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFBLOBSTREAM_$__ADDREFERENCE$$TDBFBLOBSTREAM$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__ADDREFERENCE$$TDBFBLOBSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFBLOBSTREAM_$__SETMODE$TBLOBSTREAMMODE$stub:
.indirect_symbol _DBF_TDBFBLOBSTREAM_$__SETMODE$TBLOBSTREAMMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_COMMON_TRANSLATESTRING$LONGWORD$LONGWORD$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__CREATE$POINTER$$TDBFPARSER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__SETSTRINGFIELDMODE$TSTRINGFIELDMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__SETPARTIALMATCH$BOOLEAN$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__SETPARTIALMATCH$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PARSER_TDBFPARSER_$__SETCASEINSENSITIVE$BOOLEAN$stub:
.indirect_symbol _DBF_PARSER_TDBFPARSER_$__SETCASEINSENSITIVE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING$stub:
.indirect_symbol _DB_TDATASET_$__SETFILTERTEXT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__REFRESH$stub:
.indirect_symbol _DB_TDATASET_$__REFRESH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETFILTERED$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__SETFILTERED$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _DBF_COMMON_ISFULLFILEPATH$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _DBF_COMMON_GETCOMPLETEPATH$ANSISTRING$ANSISTRING$$ANSISTRING
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

L_DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _DBF_COMMON_GETCOMPLETEFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__REGENERATEINDEXES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFCURSOR_$__CREATE$TDBFFILE$$TDBFCURSOR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFCURSOR_$__CREATE$TDBFFILE$$TDBFCURSOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__DELETEINDEX$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__DELETEINDEX$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__CLOSEINDEX$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__REPAGEINDEX$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__REPAGEINDEX$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__COMPACTINDEX$ANSISTRING$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__COMPACTINDEX$ANSISTRING
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

L_DBF_TDBF_$__GETFILENAMES$TSTRINGS$TDBFFILENAMES$stub:
.indirect_symbol _DBF_TDBF_$__GETFILENAMES$TSTRINGS$TDBFFILENAMES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DECREF$stub:
.indirect_symbol FPC_DECREF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FINDNEXT$TSEARCHREC$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FINDNEXT$TSEARCHREC$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FINDCLOSE$TSEARCHREC$stub:
.indirect_symbol _SYSUTILS_FINDCLOSE$TSEARCHREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__EDIT$stub:
.indirect_symbol _DB_TDATASET_$__EDIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_DBFFILE_TDBFFILE_$__RECORDRECALLED$LONGINT$PCHAR$stub:
.indirect_symbol _DBF_DBFFILE_TDBFFILE_$__RECORDRECALLED$LONGINT$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__CANCELRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__SETRANGE$PCHAR$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__SETRANGE$PCHAR$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_VARIANT_COPY_OVERWRITE$stub:
.indirect_symbol FPC_VARIANT_COPY_OVERWRITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR$stub:
.indirect_symbol _DBF_TDBF_$__SETRANGEBUFFER$PCHAR$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR$stub:
.indirect_symbol _DBF_IDXCUR_TINDEXCURSOR_$__CHECKUSERKEY$PCHAR$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__EXTRACTKEYFROMBUFFER$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__GETKEYLEN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__SEARCHKEYBUFFER$PCHAR$TSEARCHKEYTYPE$$BOOLEAN$stub:
.indirect_symbol _DBF_TDBF_$__SEARCHKEYBUFFER$PCHAR$TSEARCHKEYTYPE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR$stub:
.indirect_symbol _DBF_IDXFILE_TINDEXFILE_$__PREPAREKEY$PCHAR$TEXPRESSIONTYPE$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__UPDATERANGE$stub:
.indirect_symbol _DBF_TDBF_$__UPDATERANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFMASTERLINK_$__GETFIELDSVAL$$PCHAR$stub:
.indirect_symbol _DBF_TDBFMASTERLINK_$__GETFIELDSVAL$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATALINK_$__GETDATASET$$TDATASET$stub:
.indirect_symbol _DB_TDATALINK_$__GETDATASET$$TDATASET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBF_$__CANCELRANGE$stub:
.indirect_symbol _DBF_TDBF_$__CANCELRANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATALINK_$__SETDATASOURCE$TDATASOURCE$stub:
.indirect_symbol _DB_TDATALINK_$__SETDATASOURCE$TDATASOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_TDBFMASTERLINK_$__SETFIELDNAMES$ANSISTRING$stub:
.indirect_symbol _DBF_TDBFMASTERLINK_$__SETFIELDNAMES$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATALINK_$__CREATE$$TDATALINK$stub:
.indirect_symbol _DB_TDATALINK_$__CREATE$$TDATALINK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATALINK_$__DESTROY$stub:
.indirect_symbol _DB_TDATALINK_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
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
.globl	_INIT_DBF_PBOOKMARKDATA
_INIT_DBF_PBOOKMARKDATA:
	.byte	0
	.ascii	"\015pBookmarkData"

.const_data
	.align 2
.globl	_RTTI_DBF_PBOOKMARKDATA
_RTTI_DBF_PBOOKMARKDATA:
	.byte	0
	.ascii	"\015pBookmarkData"

.const_data
	.align 2
.globl	_INIT_DBF_TBOOKMARKDATA
_INIT_DBF_TBOOKMARKDATA:
	.byte	13,13
	.ascii	"TBookmarkData"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_TBOOKMARKDATA
_RTTI_DBF_TBOOKMARKDATA:
	.byte	13,13
	.ascii	"TBookmarkData"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGINT
	.long	0

.const_data
	.align 2
.globl	_INIT_DBF_PDBFRECORD
_INIT_DBF_PDBFRECORD:
	.byte	0
	.ascii	"\012pDbfRecord"

.const_data
	.align 2
.globl	_RTTI_DBF_PDBFRECORD
_RTTI_DBF_PDBFRECORD:
	.byte	0
	.ascii	"\012pDbfRecord"

.const_data
	.align 2
.globl	_INIT_DBF_TDBFRECORDHEADER
_INIT_DBF_TDBFRECORDHEADER:
	.byte	13,16
	.ascii	"TDbfRecordHeader"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFRECORDHEADER
_RTTI_DBF_TDBFRECORDHEADER:
	.byte	13,16
	.ascii	"TDbfRecordHeader"
	.long	16,4
	.long	_RTTI_DBF_TBOOKMARKDATA
	.long	0
	.long	_RTTI_DB_TBOOKMARKFLAG
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_CHAR
	.long	12

.const_data
	.align 2
.globl	_INIT_DBF_DEF537
_INIT_DBF_DEF537:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DBF_DEF444
_INIT_DBF_DEF444:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DBF_DEF445
_INIT_DBF_DEF445:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DBF_DEF443
_INIT_DBF_DEF443:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF$_Ld22
_$DBF$_Ld22:
	.short	0
	.long	_$DBF$_Ld23
	.align 2
.globl	_$DBF$_Ld23
_$DBF$_Ld23:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_TDBF
_INIT_DBF_TDBF:
	.byte	15,4
	.ascii	"TDbf"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	384
	.long	_INIT_SYSTEM_ANSISTRING
	.long	388
	.long	_INIT_SYSTEM_ANSISTRING
	.long	392
	.long	_INIT_SYSTEM_ANSISTRING
	.long	396

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFINDEXDEFS
_RTTI_DBF_TDBFINDEXDEFS:
	.byte	15,13
	.ascii	"TDbfIndexDefs"
	.long	_VMT_DBF_TDBFINDEXDEFS
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	3
	.ascii	"dbf"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFOPENMODE
_RTTI_DBF_TDBFOPENMODE:
	.byte	3,12
	.ascii	"TDbfOpenMode"
	.byte	1
	.long	0,2,0
	.byte	8
	.ascii	"omNormal"
	.byte	12
	.ascii	"omAutoCreate"
	.byte	11
	.ascii	"omTemporary"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFOPENMODE_s2o
_RTTI_DBF_TDBFOPENMODE_s2o:
	.long	3,1
	.long	_RTTI_DBF_TDBFOPENMODE+36
	.long	0
	.long	_RTTI_DBF_TDBFOPENMODE+27
	.long	2
	.long	_RTTI_DBF_TDBFOPENMODE+49

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFOPENMODE_o2s
_RTTI_DBF_TDBFOPENMODE_o2s:
	.long	0
	.long	_RTTI_DBF_TDBFOPENMODE+27
	.long	_RTTI_DBF_TDBFOPENMODE+36
	.long	_RTTI_DBF_TDBFOPENMODE+49

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFSTORAGE
_RTTI_DBF_TDBFSTORAGE:
	.byte	3,11
	.ascii	"TDbfStorage"
	.byte	1
	.long	0,1,0
	.byte	9
	.ascii	"stoMemory"
	.byte	7
	.ascii	"stoFile"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFSTORAGE_s2o
_RTTI_DBF_TDBFSTORAGE_s2o:
	.long	2,1
	.long	_RTTI_DBF_TDBFSTORAGE+36
	.long	0
	.long	_RTTI_DBF_TDBFSTORAGE+26

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFSTORAGE_o2s
_RTTI_DBF_TDBFSTORAGE_o2s:
	.long	0
	.long	_RTTI_DBF_TDBFSTORAGE+26
	.long	_RTTI_DBF_TDBFSTORAGE+36

.const_data
	.align 2
.globl	_RTTI_DBF_TBEFOREAUTOCREATEEVENT
_RTTI_DBF_TBEFOREAUTOCREATEEVENT:
	.byte	6,22
	.ascii	"TBeforeAutoCreateEvent"
	.byte	0,2,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	1,8
	.ascii	"DoCreate"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_DBF_TLANGUAGEWARNINGEVENT
_RTTI_DBF_TLANGUAGEWARNINGEVENT:
	.byte	6,21
	.ascii	"TLanguageWarningEvent"
	.byte	0,2,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	1,6
	.ascii	"Action"
	.ascii	"\022TDbfLanguageAction"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_DBF_TDBFLANGUAGEACTION

.const_data
	.align 2
.globl	_RTTI_DBF_TCONVERTFIELDEVENT
_RTTI_DBF_TCONVERTFIELDEVENT:
	.byte	6,18
	.ascii	"TConvertFieldEvent"
	.byte	0,3,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	8,8
	.ascii	"DstField"
	.ascii	"\006TField"
	.byte	8,8
	.ascii	"SrcField"
	.ascii	"\006TField"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_DB_TFIELD
	.long	_RTTI_DB_TFIELD

.const_data
	.align 2
.globl	_RTTI_DBF_TTRANSLATEEVENT
_RTTI_DBF_TTRANSLATEEVENT:
	.byte	6,15
	.ascii	"TTranslateEvent"
	.byte	1,4,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	0,3
	.ascii	"Src"
	.ascii	"\005PChar"
	.byte	0,4
	.ascii	"Dest"
	.ascii	"\005PChar"
	.byte	0,5
	.ascii	"ToOem"
	.ascii	"\007Boolean"
	.ascii	"\007LongInt"
	.long	_RTTI_SYSTEM_LONGINT
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_SYSTEM_PCHAR
	.long	_RTTI_SYSTEM_PCHAR
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_DBF_TDBF
_RTTI_DBF_TDBF:
	.byte	15,4
	.ascii	"TDbf"
	.long	_VMT_DBF_TDBF
	.long	_RTTI_DB_TDATASET
	.short	56
	.byte	3
	.ascii	"dbf"
	.short	54
	.long	_RTTI_DBF_COMMON_TDATETIMEHANDLING
	.long	444,444,1,0,1
	.short	2
	.byte	48,16
	.ascii	"DateTimeHandling"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	428,428,1,0,0
	.short	3
	.byte	48,9
	.ascii	"Exclusive"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	388
	.long	_DBF_TDBF_$__SETFILEPATH$ANSISTRING
	.long	1,0,-2147483648
	.short	4
	.byte	52,8
	.ascii	"FilePath"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	392
	.long	_DBF_TDBF_$__SETFILEPATH$ANSISTRING
	.long	0,0,-2147483648
	.short	5
	.byte	52,12
	.ascii	"FilePathFull"
	.long	_RTTI_DBF_TDBFINDEXDEFS
	.long	448
	.long	_DBF_TDBF_$__SETDBFINDEXDEFS$TDBFINDEXDEFS
	.long	0,0,-2147483648
	.short	6
	.byte	52,7
	.ascii	"Indexes"
	.long	_RTTI_DBF_TDBFINDEXDEFS
	.long	448
	.long	_DBF_TDBF_$__SETDBFINDEXDEFS$TDBFINDEXDEFS
	.long	1,0,-2147483648
	.short	7
	.byte	52,9
	.ascii	"IndexDefs"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_DBF_TDBF_$__GETINDEXFIELDNAMES$$ANSISTRING
	.long	_DBF_TDBF_$__SETINDEXFIELDNAMES$ANSISTRING
	.long	0,0,-2147483648
	.short	8
	.byte	53,15
	.ascii	"IndexFieldNames"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_DBF_TDBF_$__GETINDEXNAME$$ANSISTRING
	.long	_DBF_TDBF_$__SETINDEXNAME$ANSISTRING
	.long	1,0,-2147483648
	.short	9
	.byte	53,9
	.ascii	"IndexName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_DBF_TDBF_$__GETMASTERFIELDS$$ANSISTRING
	.long	_DBF_TDBF_$__SETMASTERFIELDS$ANSISTRING
	.long	1,0,-2147483648
	.short	10
	.byte	53,12
	.ascii	"MasterFields"
	.long	_RTTI_DB_TDATASOURCE
	.long	504
	.long	_DBF_TDBF_$__SETDATASOURCE$TDATASOURCE
	.long	1,0,-2147483648
	.short	11
	.byte	54,12
	.ascii	"MasterSource"
	.long	_RTTI_DBF_TDBFOPENMODE
	.long	356,356,1,0,0
	.short	12
	.byte	48,8
	.ascii	"OpenMode"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	400,400,1,0,0
	.short	13
	.byte	48,8
	.ascii	"ReadOnly"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	429
	.long	_DBF_TDBF_$__SETSHOWDELETED$BOOLEAN
	.long	1,0,0
	.short	14
	.byte	52,11
	.ascii	"ShowDeleted"
	.long	_RTTI_DBF_TDBFSTORAGE
	.long	357,357,1,0,1
	.short	15
	.byte	48,7
	.ascii	"Storage"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	434,434,1,0,0
	.short	16
	.byte	48,9
	.ascii	"StoreDefs"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	384
	.long	_DBF_TDBF_$__SETTABLENAME$ANSISTRING
	.long	1,0,-2147483648
	.short	17
	.byte	52,9
	.ascii	"TableName"
	.long	_RTTI_SYSTEM_LONGINT
	.long	424
	.long	_DBF_TDBF_$__SETTABLELEVEL$LONGINT
	.long	1,0,-2147483648
	.short	18
	.byte	52,10
	.ascii	"TableLevel"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_DBF_TDBF_$__GETVERSION$$ANSISTRING
	.long	_DBF_TDBF_$__SETVERSION$ANSISTRING
	.long	0,0,-2147483648
	.short	19
	.byte	53,7
	.ascii	"Version"
	.long	_RTTI_DBF_TBEFOREAUTOCREATEEVENT
	.long	452,452,1,0,-2147483648
	.short	20
	.byte	48,16
	.ascii	"BeforeAutoCreate"
	.long	_RTTI_CLASSES_TNOTIFYEVENT
	.long	492,492,1,0,-2147483648
	.short	21
	.byte	48,15
	.ascii	"OnCompareRecord"
	.long	_RTTI_DBF_TLANGUAGEWARNINGEVENT
	.long	468,468,1,0,-2147483648
	.short	22
	.byte	48,17
	.ascii	"OnLanguageWarning"
	.long	_RTTI_DBF_IDXFILE_TDBFLOCALEERROREVENT
	.long	476,476,1,0,-2147483648
	.short	23
	.byte	48,13
	.ascii	"OnLocaleError"
	.long	_RTTI_DBF_DBFFILE_TDBFINDEXMISSINGEVENT
	.long	484,484,1,0,-2147483648
	.short	24
	.byte	48,14
	.ascii	"OnIndexMissing"
	.long	_RTTI_DBF_TCONVERTFIELDEVENT
	.long	500,500,1,0,-2147483648
	.short	25
	.byte	48,22
	.ascii	"OnCopyDateTimeAsString"
	.long	_RTTI_DBF_TTRANSLATEEVENT
	.long	460,460,1,0,-2147483648
	.short	26
	.byte	48,11
	.ascii	"OnTranslate"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_DB_TDATASET_$__GETACTIVE$$BOOLEAN
	.long	440,1,0,0
	.short	27
	.byte	57,6
	.ascii	"Active"
	.long	_RTTI_DB_TFIELDDEFS
	.long	268
	.long	_DB_TDATASET_$__SETFIELDDEFS$TFIELDDEFS
	.long	_DBF_TDBF_$__FIELDDEFSSTORED$$BOOLEAN
	.long	0,-2147483648
	.short	28
	.byte	20,9
	.ascii	"FieldDefs"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	276,464,1,0,-2147483648
	.short	29
	.byte	56,6
	.ascii	"Filter"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	280,456,1,0,0
	.short	30
	.byte	56,8
	.ascii	"Filtered"
	.long	_RTTI_DB_TFILTEROPTIONS
	.long	272,460,1,0,-2147483648
	.short	31
	.byte	56,13
	.ascii	"FilterOptions"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	176,176,1,0,-2147483648
	.short	32
	.byte	48,10
	.ascii	"BeforeOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	100,100,1,0,-2147483648
	.short	33
	.byte	48,9
	.ascii	"AfterOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	144,144,1,0,-2147483648
	.short	34
	.byte	48,11
	.ascii	"BeforeClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	68,68,1,0,-2147483648
	.short	35
	.byte	48,10
	.ascii	"AfterClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	168,168,1,0,-2147483648
	.short	36
	.byte	48,12
	.ascii	"BeforeInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	92,92,1,0,-2147483648
	.short	37
	.byte	48,11
	.ascii	"AfterInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	160,160,1,0,-2147483648
	.short	38
	.byte	48,10
	.ascii	"BeforeEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	84,84,1,0,-2147483648
	.short	39
	.byte	48,9
	.ascii	"AfterEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	184,184,1,0,-2147483648
	.short	40
	.byte	48,10
	.ascii	"BeforePost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	108,108,1,0,-2147483648
	.short	41
	.byte	48,9
	.ascii	"AfterPost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	136,136,1,0,-2147483648
	.short	42
	.byte	48,12
	.ascii	"BeforeCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	60,60,1,0,-2147483648
	.short	43
	.byte	48,11
	.ascii	"AfterCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	152,152,1,0,-2147483648
	.short	44
	.byte	48,12
	.ascii	"BeforeDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	76,76,1,0,-2147483648
	.short	45
	.byte	48,11
	.ascii	"AfterDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	192,192,1,0,-2147483648
	.short	46
	.byte	48,13
	.ascii	"BeforeRefresh"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	116,116,1,0,-2147483648
	.short	47
	.byte	48,12
	.ascii	"AfterRefresh"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	200,200,1,0,-2147483648
	.short	48
	.byte	48,12
	.ascii	"BeforeScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	124,124,1,0,-2147483648
	.short	49
	.byte	48,11
	.ascii	"AfterScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	284,284,1,0,-2147483648
	.short	50
	.byte	48,12
	.ascii	"OnCalcFields"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	292,292,1,0,-2147483648
	.short	51
	.byte	48,13
	.ascii	"OnDeleteError"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	300,300,1,0,-2147483648
	.short	52
	.byte	48,11
	.ascii	"OnEditError"
	.long	_RTTI_DB_TFILTERRECORDEVENT
	.long	308,476,1,0,-2147483648
	.short	53
	.byte	56,14
	.ascii	"OnFilterRecord"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	316,316,1,0,-2147483648
	.short	54
	.byte	48,11
	.ascii	"OnNewRecord"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	324,324,1,0,-2147483648
	.short	55
	.byte	48,11
	.ascii	"OnPostError"

.const_data
	.align 2
.globl	_INIT_DBF_TDBFSTORAGE
_INIT_DBF_TDBFSTORAGE:
	.byte	3,11
	.ascii	"TDbfStorage"
	.byte	1
	.long	0,1,0
	.byte	9
	.ascii	"stoMemory"
	.byte	7
	.ascii	"stoFile"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_INIT_DBF_TDBFOPENMODE
_INIT_DBF_TDBFOPENMODE:
	.byte	3,12
	.ascii	"TDbfOpenMode"
	.byte	1
	.long	0,2,0
	.byte	8
	.ascii	"omNormal"
	.byte	12
	.ascii	"omAutoCreate"
	.byte	11
	.ascii	"omTemporary"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_INIT_DBF_TDBFLANGUAGEACTION
_INIT_DBF_TDBFLANGUAGEACTION:
	.byte	3,18
	.ascii	"TDbfLanguageAction"
	.byte	1
	.long	0,3,0
	.byte	10
	.ascii	"laReadOnly"
	.byte	10
	.ascii	"laForceOEM"
	.byte	11
	.ascii	"laForceANSI"
	.byte	9
	.ascii	"laDefault"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFLANGUAGEACTION
_RTTI_DBF_TDBFLANGUAGEACTION:
	.byte	3,18
	.ascii	"TDbfLanguageAction"
	.byte	1
	.long	0,3,0
	.byte	10
	.ascii	"laReadOnly"
	.byte	10
	.ascii	"laForceOEM"
	.byte	11
	.ascii	"laForceANSI"
	.byte	9
	.ascii	"laDefault"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFLANGUAGEACTION_s2o
_RTTI_DBF_TDBFLANGUAGEACTION_s2o:
	.long	4,3
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+67
	.long	2
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+55
	.long	1
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+44
	.long	0
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+33

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFLANGUAGEACTION_o2s
_RTTI_DBF_TDBFLANGUAGEACTION_o2s:
	.long	0
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+33
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+44
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+55
	.long	_RTTI_DBF_TDBFLANGUAGEACTION+67

.const_data
	.align 2
.globl	_INIT_DBF_TDBFTRANSLATIONMODE
_INIT_DBF_TDBFTRANSLATIONMODE:
	.byte	3,19
	.ascii	"TDbfTranslationMode"
	.byte	1
	.long	0,3,0
	.byte	15
	.ascii	"tmNoneAvailable"
	.byte	12
	.ascii	"tmNoneNeeded"
	.byte	8
	.ascii	"tmSimple"
	.byte	10
	.ascii	"tmAdvanced"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFTRANSLATIONMODE
_RTTI_DBF_TDBFTRANSLATIONMODE:
	.byte	3,19
	.ascii	"TDbfTranslationMode"
	.byte	1
	.long	0,3,0
	.byte	15
	.ascii	"tmNoneAvailable"
	.byte	12
	.ascii	"tmNoneNeeded"
	.byte	8
	.ascii	"tmSimple"
	.byte	10
	.ascii	"tmAdvanced"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFTRANSLATIONMODE_s2o
_RTTI_DBF_TDBFTRANSLATIONMODE_s2o:
	.long	4,3
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+72
	.long	0
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+34
	.long	1
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+50
	.long	2
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+63

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFTRANSLATIONMODE_o2s
_RTTI_DBF_TDBFTRANSLATIONMODE_o2s:
	.long	0
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+34
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+50
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+63
	.long	_RTTI_DBF_TDBFTRANSLATIONMODE+72

.const_data
	.align 2
.globl	_INIT_DBF_TDBFFILENAME
_INIT_DBF_TDBFFILENAME:
	.byte	3,12
	.ascii	"TDbfFileName"
	.byte	1
	.long	0,2,0
	.byte	5
	.ascii	"dfDbf"
	.byte	6
	.ascii	"dfMemo"
	.byte	7
	.ascii	"dfIndex"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFFILENAME
_RTTI_DBF_TDBFFILENAME:
	.byte	3,12
	.ascii	"TDbfFileName"
	.byte	1
	.long	0,2,0
	.byte	5
	.ascii	"dfDbf"
	.byte	6
	.ascii	"dfMemo"
	.byte	7
	.ascii	"dfIndex"
	.byte	3
	.ascii	"dbf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFFILENAME_s2o
_RTTI_DBF_TDBFFILENAME_s2o:
	.long	3,0
	.long	_RTTI_DBF_TDBFFILENAME+27
	.long	2
	.long	_RTTI_DBF_TDBFFILENAME+40
	.long	1
	.long	_RTTI_DBF_TDBFFILENAME+33

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFFILENAME_o2s
_RTTI_DBF_TDBFFILENAME_o2s:
	.long	0
	.long	_RTTI_DBF_TDBFFILENAME+27
	.long	_RTTI_DBF_TDBFFILENAME+33
	.long	_RTTI_DBF_TDBFFILENAME+40

.const_data
	.align 2
.globl	_INIT_DBF_TDBFFILENAMES
_INIT_DBF_TDBFFILENAMES:
	.byte	5,13
	.ascii	"TDbfFileNames"
	.byte	1
	.long	_INIT_DBF_TDBFFILENAME

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFFILENAMES
_RTTI_DBF_TDBFFILENAMES:
	.byte	5,13
	.ascii	"TDbfFileNames"
	.byte	1
	.long	_RTTI_DBF_TDBFFILENAME

.const_data
	.align 2
.globl	_INIT_DBF_TCOMPARERECORDEVENT
_INIT_DBF_TCOMPARERECORDEVENT:
	.byte	6,19
	.ascii	"TCompareRecordEvent"
	.byte	0,2,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	1,6
	.ascii	"Accept"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_DBF_TCOMPARERECORDEVENT
_RTTI_DBF_TCOMPARERECORDEVENT:
	.byte	6,19
	.ascii	"TCompareRecordEvent"
	.byte	0,2,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	1,6
	.ascii	"Accept"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_DBF_TTRANSLATEEVENT
_INIT_DBF_TTRANSLATEEVENT:
	.byte	6,15
	.ascii	"TTranslateEvent"
	.byte	1,4,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	0,3
	.ascii	"Src"
	.ascii	"\005PChar"
	.byte	0,4
	.ascii	"Dest"
	.ascii	"\005PChar"
	.byte	0,5
	.ascii	"ToOem"
	.ascii	"\007Boolean"
	.ascii	"\007LongInt"
	.long	_RTTI_SYSTEM_LONGINT
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_SYSTEM_PCHAR
	.long	_RTTI_SYSTEM_PCHAR
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_DBF_TLANGUAGEWARNINGEVENT
_INIT_DBF_TLANGUAGEWARNINGEVENT:
	.byte	6,21
	.ascii	"TLanguageWarningEvent"
	.byte	0,2,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	1,6
	.ascii	"Action"
	.ascii	"\022TDbfLanguageAction"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_DBF_TDBFLANGUAGEACTION

.const_data
	.align 2
.globl	_INIT_DBF_TCONVERTFIELDEVENT
_INIT_DBF_TCONVERTFIELDEVENT:
	.byte	6,18
	.ascii	"TConvertFieldEvent"
	.byte	0,3,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	8,8
	.ascii	"DstField"
	.ascii	"\006TField"
	.byte	8,8
	.ascii	"SrcField"
	.ascii	"\006TField"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_DB_TFIELD
	.long	_RTTI_DB_TFIELD

.const_data
	.align 2
.globl	_INIT_DBF_TBEFOREAUTOCREATEEVENT
_INIT_DBF_TBEFOREAUTOCREATEEVENT:
	.byte	6,22
	.ascii	"TBeforeAutoCreateEvent"
	.byte	0,2,8,3
	.ascii	"Dbf"
	.ascii	"\004TDbf"
	.byte	1,8
	.ascii	"DoCreate"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_DBF_TDBF
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_$DBF$_Ld25
_$DBF$_Ld25:
	.short	0
	.long	_$DBF$_Ld26
	.align 2
.globl	_$DBF$_Ld26
_$DBF$_Ld26:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_TDBFBLOBSTREAM
_INIT_DBF_TDBFBLOBSTREAM:
	.byte	15,14
	.ascii	"TDbfBlobStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFBLOBSTREAM
_RTTI_DBF_TDBFBLOBSTREAM:
	.byte	15,14
	.ascii	"TDbfBlobStream"
	.long	_VMT_DBF_TDBFBLOBSTREAM
	.long	_RTTI_CLASSES_TMEMORYSTREAM
	.short	0
	.byte	3
	.ascii	"dbf"
	.short	0

.const_data
	.align 2
.globl	_$DBF$_Ld28
_$DBF$_Ld28:
	.short	0
	.long	_$DBF$_Ld29
	.align 2
.globl	_$DBF$_Ld29
_$DBF$_Ld29:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_TDBFINDEXDEFS
_INIT_DBF_TDBFINDEXDEFS:
	.byte	15,13
	.ascii	"TDbfIndexDefs"
	.long	4,0

.const_data
	.align 2
.globl	_$DBF$_Ld31
_$DBF$_Ld31:
	.short	0
	.long	_$DBF$_Ld32
	.align 2
.globl	_$DBF$_Ld32
_$DBF$_Ld32:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_TDBFMASTERLINK
_INIT_DBF_TDBFMASTERLINK:
	.byte	15,14
	.ascii	"TDbfMasterLink"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	40

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFMASTERLINK
_RTTI_DBF_TDBFMASTERLINK:
	.byte	15,14
	.ascii	"TDbfMasterLink"
	.long	_VMT_DBF_TDBFMASTERLINK
	.long	_RTTI_DB_TDATALINK
	.short	0
	.byte	3
	.ascii	"dbf"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PDBFBLOBLIST
_INIT_DBF_PDBFBLOBLIST:
	.byte	0
	.ascii	"\014PDbfBlobList"

.const_data
	.align 2
.globl	_RTTI_DBF_PDBFBLOBLIST
_RTTI_DBF_PDBFBLOBLIST:
	.byte	0
	.ascii	"\014PDbfBlobList"

.const_data
	.align 2
.globl	_INIT_DBF_TDBFBLOBLIST
_INIT_DBF_TDBFBLOBLIST:
	.byte	12
	.ascii	"\014TDbfBlobList"
	.long	4,134217727
	.long	_INIT_DBF_TDBFBLOBSTREAM
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DBF_TDBFBLOBLIST
_RTTI_DBF_TDBFBLOBLIST:
	.byte	12
	.ascii	"\014TDbfBlobList"
	.long	4,134217727
	.long	_RTTI_DBF_TDBFBLOBSTREAM
	.long	-1

.const_data
	.align 2
.globl	_INIT_DBF_TDBF_GETBASEPATHFUNCTION
_INIT_DBF_TDBF_GETBASEPATHFUNCTION:
	.byte	23,24
	.ascii	"TDbf_GetBasePathFunction"

.const_data
	.align 2
.globl	_RTTI_DBF_TDBF_GETBASEPATHFUNCTION
_RTTI_DBF_TDBF_GETBASEPATHFUNCTION:
	.byte	23,24
	.ascii	"TDbf_GetBasePathFunction"
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
L_VMT_DB_TBLOBFIELD$non_lazy_ptr:
.indirect_symbol _VMT_DB_TBLOBFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr:
.indirect_symbol _U_DBF_DBFFILE_DBFGLOBALS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_DBFFILE_TDBFGLOBALS$non_lazy_ptr:
.indirect_symbol _VMT_DBF_DBFFILE_TDBFGLOBALS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_TDBFINDEXDEFS$non_lazy_ptr:
.indirect_symbol _VMT_DBF_TDBFINDEXDEFS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_TDBFMASTERLINK$non_lazy_ptr:
.indirect_symbol _VMT_DBF_TDBFMASTERLINK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_TDBF_$__MASTERCHANGED$TOBJECT$non_lazy_ptr:
.indirect_symbol _DBF_TDBF_$__MASTERCHANGED$TOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_TDBF_$__MASTERDISABLED$TOBJECT$non_lazy_ptr:
.indirect_symbol _DBF_TDBF_$__MASTERDISABLED$TOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_DBFFILE_TDBFFILE$non_lazy_ptr:
.indirect_symbol _VMT_DBF_DBFFILE_TDBFFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_TDBF_$_INITDBFFILE$TPAGEDFILEMODE_FILEMODETOMEMMODE$non_lazy_ptr:
.indirect_symbol _TC_DBF_TDBF_$_INITDBFFILE$TPAGEDFILEMODE_FILEMODETOMEMMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_TDBF_$_INTERNALOPEN_DBFOPENMODE$non_lazy_ptr:
.indirect_symbol _TC_DBF_TDBF_$_INTERNALOPEN_DBFOPENMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_FIELD_TYPE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_FIELD_TYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld1$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld3$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld5$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld7$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld9$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld11$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld13$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_FIELDS_TDBFFIELDDEFS$non_lazy_ptr:
.indirect_symbol _VMT_DBF_FIELDS_TDBFFIELDDEFS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_TDBF$non_lazy_ptr:
.indirect_symbol _VMT_DBF_TDBF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_VARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXCUR_TINDEXCURSOR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXCUR_TINDEXCURSOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld15$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_TDBFBLOBSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_DBF_TDBFBLOBSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_PARSER_TDBFPARSER$non_lazy_ptr:
.indirect_symbol _VMT_DBF_PARSER_TDBFPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_DBFBASEPATH$non_lazy_ptr:
.indirect_symbol _U_DBF_DBFBASEPATH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_TDBF_$_COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT_RETCODES$non_lazy_ptr:
.indirect_symbol _TC_DBF_TDBF_$_COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT_RETCODES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld17$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_DBFFILE_TDBFCURSOR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_DBFFILE_TDBFCURSOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INDEX_NOT_EXIST$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INDEX_NOT_EXIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DBF$_Ld19$non_lazy_ptr:
.indirect_symbol _$DBF$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr:
.indirect_symbol _INIT_SYSUTILS_TSEARCHREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_IDXFILE_TDBFINDEXDEF$non_lazy_ptr:
.indirect_symbol _VMT_DBF_IDXFILE_TDBFINDEXDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DBF_APPLICATIONPATH$$ANSISTRING$non_lazy_ptr:
.indirect_symbol _DBF_APPLICATIONPATH$$ANSISTRING
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

