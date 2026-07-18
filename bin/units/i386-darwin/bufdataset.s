# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_BUFDATASET_REGISTERDATAPACKETREADER$TDATAPACKETREADERCLASS$TDATAPACKETFORMAT
_BUFDATASET_REGISTERDATAPACKETREADER$TDATAPACKETREADERCLASS$TDATAPACKETFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	incl	%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF385$non_lazy_ptr-Lj4(%ebx),%edx
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%esi
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	leal	(%esi,%eax,8),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_GETREGISTERDATAPACKETREADER$crcFDA0C343
_BUFDATASET_GETREGISTERDATAPACKETREADER$crcFDA0C343:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj26
Lj26:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj26(%edi),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj30
	decl	-20(%ebp)
	.align 2
Lj31:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	je	Lj34
	jmp	Lj36
Lj36:
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj26(%edi),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	cmpl	-8(%ebp),%eax
	je	Lj34
	jmp	Lj35
Lj34:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	jmp	Lj39
Lj39:
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj26(%edi),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	movl	-4(%ebp),%edx
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj26(%edi),%ecx
	movl	(%ecx),%esi
	movl	-20(%ebp),%ecx
	movl	(%esi,%ecx,8),%ecx
	call	*140(%ecx)
	testb	%al,%al
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj26(%edi),%eax
	movl	(%eax),%ecx
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%ecx,%eax,8),%esi
	movl	%esi,(%edx)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,4(%edx)
	movb	$1,-13(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj48
	jmp	Lj49
Lj48:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*136(%esi)
Lj49:
	jmp	Lj30
Lj38:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*136(%esi)
Lj35:
	cmpl	-20(%ebp),%ebx
	jg	Lj31
Lj30:
	movb	-13(%ebp),%al
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPARETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPARETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj63
Lj63:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj64
	movl	$3,%eax
	cmpl	-12(%ebp),%eax
	je	Lj67
	jmp	Lj68
Lj67:
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_length$stub
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj63(%ebx),%esi
	movl	60(%esi),%esi
	call	*%esi
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj83
Lj68:
	movl	$2,%eax
	cmpl	-12(%ebp),%eax
	je	Lj84
	jmp	Lj85
Lj84:
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_length$stub
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj63(%ebx),%esi
	movl	56(%esi),%esi
	call	*%esi
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj100
Lj85:
	movl	$1,%eax
	cmpl	-12(%ebp),%eax
	je	Lj101
	jmp	Lj102
Lj101:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-68(%ebp),%edx
	movl	-72(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj63(%ebx),%ecx
	movl	44(%ecx),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj123
Lj102:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pchar_to_ansistr$stub
	movl	-80(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-76(%ebp),%edx
	movl	-72(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj63(%ebx),%ecx
	movl	40(%ecx),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
Lj123:
Lj100:
Lj83:
Lj64:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj65
	call	LFPC_RERAISE$stub
Lj65:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREWIDETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREWIDETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj145
Lj145:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj146
	movl	$3,%eax
	cmpl	-12(%ebp),%eax
	je	Lj149
	jmp	Lj150
Lj149:
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	call	Lfpc_pwidechar_length$stub
	movl	%eax,%esi
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pwidechar_to_ansistr$stub
	movl	-76(%ebp),%eax
	leal	-72(%ebp),%ecx
	movl	%esi,%edx
	call	L_SYSUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	leal	-68(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-68(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-80(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-80(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-64(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj145(%ebx),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj183
Lj150:
	movl	$2,%eax
	cmpl	-12(%ebp),%eax
	je	Lj184
	jmp	Lj185
Lj184:
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	call	Lfpc_pwidechar_length$stub
	movl	%eax,%esi
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pwidechar_to_ansistr$stub
	movl	-72(%ebp),%eax
	leal	-76(%ebp),%ecx
	movl	%esi,%edx
	call	L_SYSUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	leal	-68(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-68(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-84(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-84(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-80(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj145(%ebx),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj218
Lj185:
	movl	$1,%eax
	cmpl	-12(%ebp),%eax
	je	Lj219
	jmp	Lj220
Lj219:
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-80(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-80(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-88(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-88(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	-84(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj145(%ebx),%ecx
	movl	20(%ecx),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj241
Lj220:
	leal	-88(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-84(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-88(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-84(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-80(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-80(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	-88(%ebp),%edx
	movl	-84(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj145(%ebx),%ecx
	movl	16(%ecx),%ecx
	call	*%ecx
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
Lj241:
Lj218:
Lj183:
Lj146:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj147
	call	LFPC_RERAISE$stub
Lj147:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREBYTE$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREBYTE$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-20(%ebp)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPARESMALLINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPARESMALLINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movswl	(%eax),%edx
	movl	-8(%ebp),%eax
	movswl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-20(%ebp)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-20(%ebp)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPARELARGEINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPARELARGEINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	4(%ecx),%eax
	jl	Lj276
	jg	Lj277
	cmpl	(%ecx),%edx
	jb	Lj276
	jmp	Lj277
	jmp	Lj277
Lj276:
	movl	$-1,-20(%ebp)
	movl	$-1,-16(%ebp)
	jmp	Lj280
Lj277:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	4(%ecx),%eax
	jg	Lj281
	jl	Lj282
	cmpl	(%ecx),%edx
	ja	Lj281
	jmp	Lj282
	jmp	Lj282
Lj281:
	movl	$1,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj285
Lj282:
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
Lj285:
Lj280:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-20(%ebp)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREQWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREQWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	4(%ecx),%eax
	jb	Lj294
	ja	Lj295
	cmpl	(%ecx),%edx
	jb	Lj294
	jmp	Lj295
	jmp	Lj295
Lj294:
	movl	$-1,-20(%ebp)
	movl	$-1,-16(%ebp)
	jmp	Lj298
Lj295:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	4(%ecx),%eax
	ja	Lj299
	jb	Lj300
	cmpl	(%ecx),%edx
	ja	Lj299
	jmp	Lj300
	jmp	Lj300
Lj299:
	movl	$1,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj303
Lj300:
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
Lj303:
Lj298:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREDOUBLE$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREDOUBLE$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj308
	jmp	Lj309
Lj308:
	movl	$-1,-20(%ebp)
	movl	$-1,-16(%ebp)
	jmp	Lj312
Lj309:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj313
	jmp	Lj314
Lj313:
	movl	$1,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj317
Lj314:
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
Lj317:
Lj312:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_DBCOMPAREBCD$POINTER$POINTER$TLOCATEOPTIONS$$INT64
_BUFDATASET_DBCOMPAREBCD$POINTER$POINTER$TLOCATEOPTIONS$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_UNSETFIELDISNULL$PBYTE$LONGINT
_BUFDATASET_UNSETFIELDISNULL$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	notl	%eax
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%ecx
	sarl	$3,%ecx
	movzbl	(%ebx,%ecx,1),%edx
	andl	%edx,%eax
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%ecx
	sarl	$3,%ecx
	movb	%al,(%ebx,%ecx,1)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_SETFIELDISNULL$PBYTE$LONGINT
_BUFDATASET_SETFIELDISNULL$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%ebx
	movl	-8(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%ecx
	movl	%ecx,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%ecx
	sarl	$3,%ecx
	movb	%al,(%ebx,%ecx,1)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN
_BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%ebx
	movl	-8(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%ebx
	cmpl	$0,%ebx
	setgb	-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64
_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj341
Lj341:
	popl	-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj342
	movl	8(%ebp),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%edi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%edi
	jl	Lj346
	decl	-20(%ebp)
	.align 2
Lj347:
	incl	-20(%ebp)
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	imull	$36,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,%esi
	movl	12(%esi),%edx
	movl	-4(%ebp),%eax
	movl	20(%esi),%ecx
	addl	%ecx,%eax
	call	L_BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN$stub
	movb	%al,-21(%ebp)
	movl	16(%esi),%edx
	movl	-8(%ebp),%eax
	movl	24(%esi),%ecx
	addl	%ecx,%eax
	call	L_BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN$stub
	movb	%al,-22(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj366
	jmp	Lj365
Lj366:
	cmpb	$0,-22(%ebp)
	jne	Lj364
	jmp	Lj365
Lj364:
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj369
Lj365:
	cmpb	$0,-21(%ebp)
	jne	Lj370
	jmp	Lj371
Lj370:
	movl	$-1,-16(%ebp)
	movl	$-1,-12(%ebp)
	jmp	Lj374
Lj371:
	cmpb	$0,-22(%ebp)
	jne	Lj375
	jmp	Lj376
Lj375:
	movl	$1,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj379
Lj376:
	movl	28(%esi),%ecx
	movl	-8(%ebp),%eax
	movl	8(%esi),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%ebx
	movl	4(%esi),%eax
	addl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%esi),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj379:
Lj374:
Lj369:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj388
	cmpl	$0,%eax
	jne	Lj388
	jmp	Lj389
Lj388:
	cmpb	$0,32(%esi)
	jne	Lj390
	jmp	Lj391
Lj390:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj391:
	jmp	Lj346
Lj389:
	cmpl	-20(%ebp),%edi
	jg	Lj347
Lj346:
Lj342:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	movl	L_INIT_BUFDATASET_TDBCOMPARESTRUCT$non_lazy_ptr-Lj341(%eax),%edx
	leal	8(%ebp),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj343
	call	LFPC_RERAISE$stub
Lj343:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATE$TCOMPONENT$$TCUSTOMBUFDATASET
_BUFDATASET_TCUSTOMBUFDATASET_$__CREATE$TCOMPONENT$$TCUSTOMBUFDATASET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj395
Lj395:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj396
	jmp	Lj397
Lj396:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj397:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj402
	jmp	Lj403
Lj402:
	jmp	Lj394
Lj403:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj406
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj410
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub
	movl	-12(%ebp),%eax
	movl	$2,376(%eax)
	movl	-12(%ebp),%eax
	movl	$0,380(%eax)
	movl	-12(%ebp),%ecx
	movl	L_VMT_DB_TINDEXDEFS$non_lazy_ptr-Lj395(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_DB_TINDEXDEFS$non_lazy_ptr-Lj395(%esi),%ebx
	call	*156(%ebx)
	movl	-12(%ebp),%edx
	movl	%eax,432(%edx)
	movl	-12(%ebp),%eax
	movl	$-1,424(%eax)
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj395(%esi),%edx
	movl	-12(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF199$non_lazy_ptr-Lj395(%esi),%edx
	movl	-12(%ebp),%eax
	leal	456(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF200$non_lazy_ptr-Lj395(%esi),%edx
	movl	-12(%ebp),%eax
	leal	460(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	$0,436(%eax)
	movl	-12(%ebp),%eax
	movl	$10,404(%eax)
Lj410:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj411
	call	LFPC_RERAISE$stub
Lj411:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj469
	jmp	Lj468
Lj469:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj467
	jmp	Lj468
Lj467:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj468:
Lj406:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj408
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj473
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj474
	jmp	Lj475
Lj474:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj475:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj473:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj472
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj472:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj408
Lj408:
Lj394:
	movl	-12(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETPACKETRECORDS$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__SETPACKETRECORDS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj481
Lj481:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj482
	jmp	Lj484
Lj484:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj482
	jmp	Lj483
Lj482:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,404(%edx)
	jmp	Lj487
Lj483:
	movl	L_RESSTR_DBCONST_SINVPACKETRECORDSVALUE$non_lazy_ptr-Lj481(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj487:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__DESTROY
_BUFDATASET_TCUSTOMBUFDATASET_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj491
Lj491:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj492
	jmp	Lj493
Lj492:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj493:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj496
	jmp	Lj497
Lj496:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CLOSE$stub
Lj497:
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj491(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF199$non_lazy_ptr-Lj491(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	456(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF200$non_lazy_ptr-Lj491(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	460(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj533
	decl	-12(%ebp)
	.align 2
Lj534:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	cmpl	-12(%ebp),%esi
	jg	Lj534
Lj533:
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF197$non_lazy_ptr-Lj491(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	372(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	leal	432(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDBDATASET_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj557
	jmp	Lj556
Lj557:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj555
	jmp	Lj556
Lj555:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj556:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL
_BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj562:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT$stub
	movl	-4(%ebp),%edx
	cmpl	404(%edx),%eax
	jl	Lj564
	jmp	Lj565
Lj565:
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	cmpl	$-1,%eax
	je	Lj564
	jmp	Lj562
Lj564:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX
_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	call	Lj569
Lj569:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj569(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj569(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-64(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj569(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-52(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj569(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-56(%ebp)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj569(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-60(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj602
	movl	-68(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj624
	jmp	Lj625
Lj624:
	movl	L_RESSTR_DBCONST_SNOINDEXFIELDNAMEGIVEN$non_lazy_ptr-Lj569(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj625:
	movl	-60(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-68(%ebp),%esi
	movl	L_INIT_BUFDATASET_TDBCOMPARESTRUCT$non_lazy_ptr-Lj569(%ebx),%edx
	leal	8(%esi),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	leal	8(%esi),%eax
	movl	%eax,(%esp)
	movl	-68(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__PROCESSFIELDSTOCOMPARESTRUCT$crc08BA7DC3$stub
Lj602:
	call	LFPC_POPADDRSTACK$stub
	movl	-60(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj603
	decl	%eax
	testl	%eax,%eax
	je	Lj604
Lj604:
	call	LFPC_RERAISE$stub
Lj603:
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-12(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%ecx,%edx,8)
	movl	-64(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj656
	jmp	Lj657
Lj656:
	jmp	Lj659
	.align 2
Lj658:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-12(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%ecx,%edx,8)
Lj659:
	movl	-64(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	4(%edx),%eax
	jne	Lj658
	jmp	Lj660
Lj660:
	jmp	Lj667
Lj657:
	jmp	Lj568
Lj667:
	movl	-68(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,52(%edx)
	movl	-68(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,44(%edx)
	movl	-12(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-68(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-68(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%ecx,%eax,8)
	movl	$1,-32(%ebp)
	.align 2
Lj678:
	movl	-68(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-68(%ebp),%eax
	movl	$0,52(%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-44(%ebp)
	jmp	Lj690
	.align 2
Lj689:
	incl	-44(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj695
	.align 2
Lj694:
	incl	-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-24(%ebp)
Lj695:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj699
	jmp	Lj696
Lj699:
	movl	-68(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj694
	jmp	Lj696
Lj696:
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj705
	.align 2
Lj704:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj707
	jmp	Lj708
Lj707:
	movb	$1,-45(%ebp)
	jmp	Lj711
Lj708:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj712
	jmp	Lj714
Lj714:
	movl	-68(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj712
	jmp	Lj713
Lj712:
	movb	$0,-45(%ebp)
	jmp	Lj717
Lj713:
	movl	-68(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64$stub
	cmpl	$0,%edx
	jl	Lj718
	jg	Lj719
	cmpl	$0,%eax
	jbe	Lj718
	jmp	Lj719
Lj718:
	movb	$0,-45(%ebp)
	jmp	Lj728
Lj719:
	movb	$1,-45(%ebp)
Lj728:
Lj717:
Lj711:
	cmpb	$0,-45(%ebp)
	jne	Lj731
	jmp	Lj732
Lj731:
	leal	-40(%ebp),%ecx
	leal	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_BUILDINDEX$TBUFINDEX_PLACENEWREC$PBUFRECLINKITEM$LONGINT$stub
	jmp	Lj739
Lj732:
	leal	-36(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_BUILDINDEX$TBUFINDEX_PLACENEWREC$PBUFRECLINKITEM$LONGINT$stub
Lj739:
Lj705:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj704
	jmp	Lj746
Lj746:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj747
	jmp	Lj706
Lj747:
	movl	-68(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj704
	jmp	Lj706
Lj706:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj690:
	movl	-68(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj689
	jmp	Lj691
Lj691:
	movl	-20(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-68(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-32(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-32(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$1,%eax
	je	Lj680
	jmp	Lj678
Lj680:
	movl	-68(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-68(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-68(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-68(%ebp),%eax
	movl	32(%eax),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%ecx,%edx,8)
Lj568:
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$_BUILDINDEX$TBUFINDEX_PLACENEWREC$PBUFRECLINKITEM$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$_BUILDINDEX$TBUFINDEX_PLACENEWREC$PBUFRECLINKITEM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-68(%eax),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj758
	jmp	Lj759
Lj758:
	movl	-12(%ebp),%eax
	movl	-68(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,52(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-68(%eax),%eax
	movl	32(%eax),%eax
	movl	$0,(%edx,%eax,8)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%edx)
	jmp	Lj766
Lj759:
	movl	-12(%ebp),%eax
	movl	-20(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-68(%eax),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-68(%eax),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-20(%eax),%eax
	movl	%eax,(%ecx,%edx,8)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%edx)
Lj766:
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-68(%eax),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	decl	(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEXES
_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEXES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%ebx
	decl	%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj778
	decl	-8(%ebp)
	.align 2
Lj779:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj780
	jmp	Lj782
Lj782:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	384(%ecx),%eax
	je	Lj780
	jmp	Lj781
Lj780:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-8(%ebp),%edx
	leal	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX$stub
Lj781:
	cmpl	-8(%ebp),%ebx
	jg	Lj779
Lj778:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__REMOVERECORDFROMINDEXES$TBUFBOOKMARK
_BUFDATASET_TCUSTOMBUFDATASET_$__REMOVERECORDFROMINDEXES$TBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	380(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj790
	decl	-12(%ebp)
	.align 2
Lj791:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj792
	jmp	Lj794
Lj794:
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	384(%ecx),%eax
	je	Lj792
	jmp	Lj793
Lj792:
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	-12(%ebp),%esi
	movl	(%ecx,%esi,4),%ecx
	movl	(%ecx),%ecx
	call	*212(%ecx)
Lj793:
	cmpl	-12(%ebp),%ebx
	jg	Lj791
Lj790:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXDEFS$$TINDEXDEFS
_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXDEFS$$TINDEXDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	432(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATEINDEXDEFS
_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATEINDEXDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	432(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,-12(%ebp)
	movl	$0,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj808
	decl	-8(%ebp)
	.align 2
Lj809:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	432(%eax),%eax
	call	L_DB_TINDEXDEFS_$__ADDINDEXDEF$$TINDEXDEF$stub
	movl	%eax,%esi
	movl	%esi,%ebx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	12(%eax),%edx
	movl	%ebx,%edi
	movl	%ebx,%eax
	movl	(%eax),%ecx
	movl	%edi,%eax
	call	*132(%ecx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%edi
	movl	16(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	40(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%edi),%eax
	movl	%eax,40(%ebx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	24(%eax),%edx
	movl	%ebx,%eax
	call	L_DB_TINDEXDEF_$__SETDESCFIELDS$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	20(%eax),%edx
	movl	%ebx,%edi
	movl	%ebx,%eax
	movl	(%eax),%ecx
	movl	%edi,%eax
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	28(%eax),%eax
	movl	%eax,44(%ebx)
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj809
Lj808:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCANMODIFY$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETCANMODIFY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETBUFUNIDIRECTIONAL$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj837
	jmp	Lj838
Lj838:
	movl	-4(%ebp),%eax
	cmpb	$0,396(%eax)
	jne	Lj837
	jmp	Lj836
Lj836:
	movb	$1,-5(%ebp)
	jmp	Lj841
Lj837:
	movb	$0,-5(%ebp)
Lj841:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	shll	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	%eax,%edx
	movl	408(%ebx),%eax
	addl	%edx,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__ALLOCRECORDBUFFER$$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__ALLOCRECORDBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	408(%eax),%eax
	movl	216(%edx),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	232(%edx),%edx
	addl	%edx,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*408(%ecx)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__FREERECORDBUFFER$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__FREERECORDBUFFER$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CLEARCALCFIELDS$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__CLEARCALCFIELDS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	232(%eax),%eax
	cmpl	$0,%eax
	jg	Lj872
	jmp	Lj873
Lj872:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movw	%ax,%dx
	movzwl	%dx,%edx
	movl	-4(%ebp),%eax
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	232(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
Lj873:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALOPEN
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALOPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj883
Lj883:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,428(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,368(%eax)
	jne	Lj887
	jmp	Lj888
Lj888:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	jne	Lj886
	jmp	Lj887
Lj886:
	movw	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	356(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj883(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,364(%edx)
	movl	-4(%ebp),%eax
	movl	364(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$3,%edx
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETPACKETREADER$TDATAPACKETFORMAT$TSTREAM$$TDATAPACKETREADER$stub
	movl	-4(%ebp),%edx
	movl	%eax,368(%edx)
Lj887:
	movl	-4(%ebp),%eax
	cmpl	$0,368(%eax)
	jne	Lj907
	jmp	Lj908
Lj907:
	movl	-4(%ebp),%eax
	movb	$1,360(%eax)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADFIELDDEFSFROMFILE$stub
Lj908:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	call	L_DB_TFIELDS_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj913
	jmp	Lj914
Lj913:
	movl	L_RESSTR_DBCONST_SERRNODATASET$non_lazy_ptr-Lj883(%esi),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj914:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	call	L_DB_TFIELDS_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj920
	decl	-12(%ebp)
	.align 2
Lj921:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	104(%eax),%eax
	testl	%eax,%eax
	je	Lj924
	jmp	Lj925
Lj924:
	movl	L_RESSTR_DBCONST_SERRNODATASET$non_lazy_ptr-Lj883(%esi),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	jmp	Lj932
Lj925:
	movl	-4(%ebp),%eax
	movl	424(%eax),%eax
	cmpl	$-1,%eax
	jg	Lj936
	jmp	Lj934
Lj936:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	%eax,%edx
	movl	L_VMT_DB_TAUTOINCFIELD$non_lazy_ptr-Lj883(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj935
	jmp	Lj934
Lj935:
	movl	-4(%ebp),%eax
	cmpl	$0,428(%eax)
	jne	Lj934
	jmp	Lj933
Lj933:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	-4(%ebp),%edx
	movl	%eax,428(%edx)
Lj934:
Lj932:
	cmpl	-12(%ebp),%ebx
	jg	Lj921
Lj920:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES$stub
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__CALCRECORDSIZE$stub
	movl	-4(%ebp),%eax
	movl	$0,392(%eax)
	movl	-4(%ebp),%eax
	movl	380(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj958
	decl	-8(%ebp)
	.align 2
Lj959:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%edi
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*192(%ecx)
	cmpl	-8(%ebp),%ebx
	jg	Lj959
Lj958:
	movl	-4(%ebp),%eax
	movb	$0,444(%eax)
	movl	-4(%ebp),%eax
	movb	$1,413(%eax)
	movl	-4(%ebp),%eax
	movl	276(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__PARSEFILTER$ANSISTRING$stub
	movl	-4(%ebp),%eax
	cmpl	$0,368(%eax)
	jne	Lj976
	jmp	Lj977
Lj976:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADRECORDSFROMFILE$stub
Lj977:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCLOSE
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj981
Lj981:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,413(%eax)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	cmpl	$0,%eax
	jg	Lj984
	jmp	Lj985
Lj984:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	testb	%al,%al
	jne	Lj988
	jmp	Lj989
Lj988:
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*140(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj997
	.align 2
Lj996:
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-16(%ebp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*132(%edx)
	movl	%eax,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
Lj997:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj996
	jmp	Lj998
Lj998:
Lj989:
Lj985:
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj1012
	decl	-8(%ebp)
	.align 2
Lj1013:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%edi
	movl	%edi,%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	testb	%al,%al
	jne	Lj1016
	jmp	Lj1017
Lj1016:
	movl	%edi,%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-16(%ebp)
	movl	%edi,%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*196(%edx)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
Lj1017:
	cmpl	-8(%ebp),%esi
	jg	Lj1013
Lj1012:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	jg	Lj1030
	jmp	Lj1031
Lj1030:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj1035
	decl	-8(%ebp)
	.align 2
Lj1036:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-8(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,%edi
	cmpl	$0,28(%edi)
	jne	Lj1041
	jmp	Lj1042
Lj1041:
	leal	28(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
Lj1042:
	movl	(%edi),%eax
	cmpl	$2,%eax
	je	Lj1049
	jmp	Lj1048
Lj1049:
	cmpl	$0,4(%edi)
	jne	Lj1047
	jmp	Lj1048
Lj1047:
	leal	4(%edi),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
Lj1048:
	cmpl	-8(%ebp),%esi
	jg	Lj1036
Lj1035:
Lj1031:
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj981(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj1065
	decl	-8(%ebp)
	.align 2
Lj1066:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	456(%eax),%edx
	movl	-8(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER$stub
	cmpl	-8(%ebp),%esi
	jg	Lj1066
Lj1065:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj1074
	decl	-8(%ebp)
	.align 2
Lj1075:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	460(%eax),%edx
	movl	-8(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER$stub
	cmpl	-8(%ebp),%esi
	jg	Lj1075
Lj1074:
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF199$non_lazy_ptr-Lj981(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	456(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF200$non_lazy_ptr-Lj981(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	460(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF198$non_lazy_ptr-Lj981(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	440(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	$-1,424(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,436(%eax)
	jne	Lj1114
	jmp	Lj1115
Lj1114:
	movl	-4(%ebp),%eax
	leal	436(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1115:
	movl	-4(%ebp),%eax
	movb	$0,360(%eax)
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALFIRST
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALFIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	384(%eax),%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALLAST
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL$stub
	movl	-4(%ebp),%eax
	movl	384(%eax),%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$12,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENTBUFFER$$POINTER
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENTBUFFER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	44(%ebx),%edx
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENTRECORD$$PCHAR
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENTRECORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETISINITIALIZED$$BOOLEAN
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETISINITIALIZED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETSPAREBUFFER$$PCHAR
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETSPAREBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	48(%ebx),%edx
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETSPARERECORD$$PCHAR
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETSPARERECORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX
_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1164
	jmp	Lj1165
Lj1164:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1165:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1170
	jmp	Lj1171
Lj1170:
	jmp	Lj1162
Lj1171:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1174
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1178
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj1178:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1179
	call	LFPC_RERAISE$stub
Lj1179:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1189
	jmp	Lj1188
Lj1189:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1187
	jmp	Lj1188
Lj1187:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1188:
Lj1174:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1176
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1193
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1194
	jmp	Lj1195
Lj1194:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1195:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1193:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1192
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1192:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1176
Lj1176:
Lj1162:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFINDEX_$__BOOKMARKVALID$PBUFBOOKMARK$$BOOLEAN
_BUFDATASET_TBUFINDEX_$__BOOKMARKVALID$PBUFBOOKMARK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj1204
	jmp	Lj1203
Lj1204:
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj1202
	jmp	Lj1203
Lj1202:
	movb	$1,-9(%ebp)
	jmp	Lj1205
Lj1203:
	movb	$0,-9(%ebp)
Lj1205:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFINDEX_$__COMPAREBOOKMARKS$PBUFBOOKMARK$PBUFBOOKMARK$$BOOLEAN
_BUFDATASET_TBUFINDEX_$__COMPAREBOOKMARKS$PBUFBOOKMARK$PBUFBOOKMARK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	seteb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$0,(%edx,%eax,8)
	jne	Lj1213
	jmp	Lj1212
Lj1212:
	movl	$1,-8(%ebp)
	jmp	Lj1216
Lj1213:
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%ecx,%eax,8),%eax
	movl	%eax,44(%edx)
Lj1216:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLFORWARD$$TGETRESULT
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLFORWARD$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	48(%edx),%eax
	je	Lj1223
	jmp	Lj1225
Lj1225:
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%ecx,%eax,8),%eax
	cmpl	48(%edx),%eax
	je	Lj1223
	jmp	Lj1224
Lj1223:
	movl	$2,-8(%ebp)
	jmp	Lj1228
Lj1224:
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,44(%edx)
	movl	$0,-8(%ebp)
Lj1228:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENT$$TGETRESULT
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENT$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%eax
	cmpl	48(%edx),%eax
	je	Lj1235
	jmp	Lj1236
Lj1235:
	movl	$3,-8(%ebp)
	jmp	Lj1239
Lj1236:
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	48(%edx),%eax
	je	Lj1242
	jmp	Lj1243
Lj1242:
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%ecx,%eax,8),%eax
	movl	%eax,44(%edx)
Lj1243:
Lj1239:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLFIRST$$TGETRESULT
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLFIRST$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,44(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	48(%edx),%eax
	je	Lj1250
	jmp	Lj1251
Lj1250:
	movl	$2,-8(%ebp)
	jmp	Lj1254
Lj1251:
	movl	$0,-8(%ebp)
Lj1254:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLLAST
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SETTOFIRSTRECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SETTOFIRSTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SETTOLASTRECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SETTOLASTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	52(%edx),%eax
	jne	Lj1269
	jmp	Lj1270
Lj1269:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,44(%edx)
Lj1270:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORECURRENTRECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORECURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,40(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__RESTORECURRENTRECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__RESTORECURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__DOSCROLLFORWARD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__DOSCROLLFORWARD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INITIALISEINDEX
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INITIALISEINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%ecx,%eax,8),%eax
	cmpl	48(%edx),%eax
	je	Lj1301
	jmp	Lj1302
Lj1301:
	movb	$0,-5(%ebp)
	jmp	Lj1305
Lj1302:
	movb	$1,-5(%ebp)
Lj1305:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INITIALISESPARERECORD$PCHAR
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INITIALISESPARERECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,48(%edx)
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,(%edx,%eax,8)
	movl	-8(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,44(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__RELEASESPARERECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__RELEASESPARERECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,52(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj1331
	.align 2
Lj1330:
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-16(%ebp)
Lj1331:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj1330
	jmp	Lj1332
Lj1332:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__BEGINUPDATE
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__BEGINUPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	48(%edx),%eax
	je	Lj1339
	jmp	Lj1340
Lj1339:
	movl	-4(%ebp),%eax
	movb	$1,36(%eax)
	jmp	Lj1343
Lj1340:
	movl	-4(%ebp),%eax
	movb	$0,36(%eax)
Lj1343:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ADDRECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ADDRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%ecx,%eax,8)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,(%ecx,%edx,8)
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	4(%edx,%eax,8),%eax
	movl	%eax,48(%ecx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	32(%eax),%ecx
	movl	(%ebx,%edx,8),%eax
	movl	%eax,(%esi,%ecx,8)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	52(%edx),%eax
	je	Lj1366
	jmp	Lj1367
Lj1366:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,(%edx,%eax,8)
	jmp	Lj1372
Lj1367:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	(%edx,%eax,8),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%ecx,%eax,8)
Lj1372:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%ecx,%edx,8)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1381
	jmp	Lj1382
Lj1381:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
Lj1382:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj1385
	jmp	Lj1386
Lj1385:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	(%edx,%eax,8),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,4(%ecx,%ebx,8)
	jmp	Lj1389
Lj1386:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	4(%edx,%eax,8),%eax
	movl	%eax,52(%ecx)
	movl	-8(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
Lj1389:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%ecx
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	(%edx,%eax,8),%eax
	movl	%eax,(%ecx,%ebx,8)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ORDERCURRENTRECORD
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ORDERCURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-8(%ebp)
	.align 2
Lj1400:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	(%edx,%eax,8),%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj1405
	jmp	Lj1402
Lj1405:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64$stub
	cmpl	$0,%edx
	jl	Lj1402
	jg	Lj1400
	cmpl	$0,%eax
	jbe	Lj1402
	jmp	Lj1400
Lj1402:
	cmpl	$0,-8(%ebp)
	jne	Lj1412
	jmp	Lj1413
Lj1412:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1416
Lj1413:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1416:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1419
	jmp	Lj1420
Lj1419:
	.align 2
Lj1421:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1423
	jmp	Lj1426
Lj1426:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64$stub
	cmpl	$0,%edx
	jg	Lj1423
	jl	Lj1421
	cmpl	$0,%eax
	jae	Lj1423
	jmp	Lj1421
Lj1423:
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	4(%edx,%eax,8),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1433
	jmp	Lj1434
Lj1433:
	jmp	Lj1396
Lj1434:
Lj1420:
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*212(%ecx)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,44(%eax)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
Lj1396:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ENDUPDATE
_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ENDUPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,4(%ecx,%edx,8)
	movl	-4(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj1457
	jmp	Lj1458
Lj1457:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,44(%edx)
Lj1458:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CURRENTRECORDTOBUFFER$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__CURRENTRECORDTOBUFFER$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%edx
	movl	408(%edx),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	408(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*360(%ecx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBUFUNIDIRECTIONAL$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__SETBUFUNIDIRECTIONAL$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1486
Lj1486:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-8(%ebp),%eax
	movb	336(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj1489
	jmp	Lj1490
Lj1489:
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__SETUNIDIRECTIONAL$BOOLEAN$stub
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF197$non_lazy_ptr-Lj1486(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	372(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%eax
	movl	$1,404(%eax)
	movl	-8(%ebp),%eax
	movl	$0,380(%eax)
Lj1490:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETREADONLY$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__SETREADONLY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,396(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj1514
Lj1514:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	384(%eax),%ebx
	.align 2
Lj1519:
	movb	$1,-17(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1527
	decl	%eax
	je	Lj1528
	decl	%eax
	je	Lj1526
	jmp	Lj1525
Lj1526:
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-16(%ebp)
	jmp	Lj1524
Lj1527:
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	%eax,-16(%ebp)
	jmp	Lj1524
Lj1528:
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*164(%edx)
	testb	%al,%al
	je	Lj1539
	jmp	Lj1538
Lj1539:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1537
	jmp	Lj1538
Lj1537:
	movl	$2,-16(%ebp)
	jmp	Lj1546
Lj1538:
	movl	$0,-16(%ebp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*168(%edx)
Lj1546:
	jmp	Lj1524
Lj1525:
Lj1524:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1551
	jmp	Lj1552
Lj1551:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__CURRENTRECORDTOBUFFER$PCHAR$stub
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj1557
	jmp	Lj1558
Lj1557:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,388(%eax)
	movl	-12(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-24(%ebp)
	leal	-17(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*776(%ecx)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1573
	jmp	Lj1572
Lj1573:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj1571
	jmp	Lj1572
Lj1571:
	movb	$1,-17(%ebp)
	movl	$3,-16(%ebp)
Lj1572:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
Lj1558:
	jmp	Lj1582
Lj1552:
	movl	-16(%ebp),%eax
	cmpl	$3,%eax
	je	Lj1585
	jmp	Lj1584
Lj1585:
	cmpb	$0,8(%ebp)
	jne	Lj1583
	jmp	Lj1584
Lj1583:
	movl	L_$BUFDATASET$_Ld1$non_lazy_ptr-Lj1514(%esi),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj1584:
Lj1582:
	cmpb	$0,-17(%ebp)
	jne	Lj1521
	jmp	Lj1519
Lj1521:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__DOBEFORECLOSE
_BUFDATASET_TCUSTOMBUFDATASET_$__DOBEFORECLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__DOBEFORECLOSE$stub
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	jne	Lj1592
	jmp	Lj1593
Lj1592:
	movl	-4(%ebp),%eax
	movl	356(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOFILE$ANSISTRING$TDATAPACKETFORMAT$stub
Lj1593:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%esi
	movl	%ebx,%ecx
	call	*496(%esi)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFERCACHED$TBUFBOOKMARK$BOOLEAN$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__PROCESSFIELDSTOCOMPARESTRUCT$crc08BA7DC3
_BUFDATASET_TCUSTOMBUFDATASET_$__PROCESSFIELDSTOCOMPARESTRUCT$crc08BA7DC3:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj1619
Lj1619:
	popl	-80(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-80(%ebp),%eax
	movl	L_INIT_BUFDATASET_TDBCOMPARESTRUCT$non_lazy_ptr-Lj1619(%eax),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1633
	decl	-16(%ebp)
	.align 2
Lj1634:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	jb	Lj1644
	decl	%eax
	je	Lj1645
	decl	%eax
	je	Lj1647
	decl	%eax
	je	Lj1648
	decl	%eax
	je	Lj1649
	decl	%eax
	je	Lj1650
	decl	%eax
	jb	Lj1644
	subl	$1,%eax
	jbe	Lj1651
	decl	%eax
	je	Lj1648
	decl	%eax
	je	Lj1652
	decl	%eax
	jb	Lj1644
	subl	$1,%eax
	jbe	Lj1652
	subl	$3,%eax
	je	Lj1648
	subl	$9,%eax
	je	Lj1645
	decl	%eax
	je	Lj1646
	decl	%eax
	je	Lj1653
	subl	$12,%eax
	je	Lj1654
	decl	%eax
	je	Lj1646
	jmp	Lj1644
Lj1645:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPARETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1646:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPAREWIDETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1647:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPARESMALLINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1648:
	movl	-80(%ebp),%eax
	movl	L_BUFDATASET_DBCOMPAREINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%eax),%edx
	movl	%edx,-56(%ebp)
	jmp	Lj1643
Lj1649:
	movl	-80(%ebp),%eax
	movl	L_BUFDATASET_DBCOMPAREWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%eax),%edx
	movl	%edx,-56(%ebp)
	jmp	Lj1643
Lj1650:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPAREBYTE$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1651:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPAREDOUBLE$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1652:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPAREDOUBLE$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1653:
	movl	-80(%ebp),%eax
	movl	L_BUFDATASET_DBCOMPARELARGEINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%eax),%edx
	movl	%edx,-56(%ebp)
	jmp	Lj1643
Lj1654:
	movl	-80(%ebp),%edx
	movl	L_BUFDATASET_DBCOMPAREBCD$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr-Lj1619(%edx),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj1643
Lj1644:
	movl	-20(%ebp),%eax
	movl	100(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	movl	-20(%ebp),%eax
	movl	76(%eax),%eax
	shll	$4,%eax
	movl	-80(%ebp),%edx
	movl	L_TC_DB_FIELDTYPENAMES$non_lazy_ptr-Lj1619(%edx),%ecx
	leal	(%ecx,%eax),%eax
	movl	%eax,-64(%ebp)
	movl	$4,-68(%ebp)
	leal	-76(%ebp),%edx
	movl	-80(%ebp),%eax
	movl	L_RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD$non_lazy_ptr-Lj1619(%eax),%ecx
	movl	4(%ecx),%eax
	movl	$1,%ecx
	call	L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$stub
Lj1643:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	440(%edx),%edx
	movl	-20(%ebp),%ecx
	movl	104(%ecx),%ecx
	decl	%ecx
	movl	(%edx,%ecx,4),%edx
	addl	%edx,%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	104(%eax),%eax
	decl	%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-32(%ebp)
	testl	$4,16(%ebp)
	setneb	-24(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj1699
	jmp	Lj1700
Lj1699:
	cmpb	$0,-24(%ebp)
	jne	Lj1701
	jmp	Lj1703
Lj1703:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	cmpl	$-1,%eax
	jg	Lj1701
	jmp	Lj1702
Lj1701:
	movb	$1,-24(%ebp)
	jmp	Lj1708
Lj1702:
	movb	$0,-24(%ebp)
Lj1708:
Lj1700:
	movl	12(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,20(%ebp)
	jne	Lj1713
	jmp	Lj1712
Lj1713:
	movl	-20(%ebp),%edx
	movl	20(%ebp),%eax
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	cmpl	$-1,%eax
	jg	Lj1711
	jmp	Lj1712
Lj1711:
	movl	$1,%eax
	orl	-28(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj1712:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	imull	$36,%eax
	leal	(%edx,%eax),%edi
	leal	-56(%ebp),%esi
	cld
	movl	$9,%ecx
	rep
	movsl
	cmpl	-16(%ebp),%ebx
	jg	Lj1634
Lj1633:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES
_BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj1723
Lj1723:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	testl	%eax,%eax
	je	Lj1724
	jmp	Lj1725
Lj1724:
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$BUFDATASET$_Ld3$non_lazy_ptr-Lj1723(%esi),%edx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*764(%ebx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,384(%edx)
	movl	-4(%ebp),%eax
	movb	336(%eax),%al
	testb	%al,%al
	je	Lj1740
	jmp	Lj1741
Lj1740:
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*764(%ebx)
Lj1741:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,216(%edx)
Lj1725:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__ADDINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$ANSISTRING$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__ADDINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj1759
Lj1759:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBIDIRECTIONAL$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1762
	jmp	Lj1763
Lj1762:
	movl	L_RESSTR_DBCONST_SNOINDEXFIELDNAMEGIVEN$non_lazy_ptr-Lj1759(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj1763:
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	testl	%eax,%eax
	je	Lj1766
	jmp	Lj1767
Lj1766:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES$stub
Lj1767:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1772
	jmp	Lj1771
Lj1772:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	380(%eax),%eax
	cmpl	376(%edx),%eax
	je	Lj1770
	jmp	Lj1771
Lj1770:
	movl	L_RESSTR_DBCONST_SMAXINDEXES$non_lazy_ptr-Lj1759(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj1771:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1777
	jmp	Lj1778
Lj1777:
	movl	-12(%ebp),%eax
	movl	$-1,404(%eax)
Lj1778:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*764(%esi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALADDINDEX$crcFE83B273
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALADDINDEX$crcFE83B273:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj1796
Lj1796:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1797
	jmp	Lj1798
Lj1797:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL$stub
Lj1798:
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1803
	jmp	Lj1804
Lj1803:
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	32(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1807
Lj1804:
	movl	$0,-16(%ebp)
Lj1807:
	movl	-12(%ebp),%eax
	incl	380(%eax)
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF197$non_lazy_ptr-Lj1796(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	372(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	372(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	movl	%eax,384(%ecx)
	movl	-12(%ebp),%eax
	cmpb	$0,336(%eax)
	jne	Lj1822
	jmp	Lj1823
Lj1822:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX$non_lazy_ptr-Lj1796(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX$non_lazy_ptr-Lj1796(%ebx),%esi
	call	*124(%esi)
	movl	-12(%ebp),%edx
	movl	372(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	380(%edx),%edx
	decl	%edx
	movl	%eax,(%ecx,%edx,4)
	jmp	Lj1832
Lj1823:
	movl	-12(%ebp),%ecx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj1796(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj1796(%ebx),%esi
	call	*124(%esi)
	movl	-12(%ebp),%edx
	movl	372(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	380(%edx),%edx
	decl	%edx
	movl	%eax,(%ecx,%edx,4)
Lj1832:
	movl	-12(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	decl	%eax
	movl	(%edx,%eax,4),%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*188(%edx)
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	decl	%eax
	movl	%eax,32(%esi)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,12(%esi)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,16(%esi)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,24(%esi)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,20(%esi)
	movl	16(%ebp),%eax
	movl	%eax,28(%esi)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1857
	jmp	Lj1858
Lj1857:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	372(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	decl	%eax
	movl	(%ecx,%eax,4),%eax
	movl	-12(%ebp),%ecx
	movl	372(%ecx),%esi
	movl	-12(%ebp),%ecx
	movl	380(%ecx),%ecx
	decl	%ecx
	movl	(%esi,%ecx,4),%ecx
	movl	(%ecx),%ecx
	call	*192(%ecx)
	movl	-12(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	decl	%eax
	leal	(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX$stub
	jmp	Lj1871
Lj1858:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	380(%eax),%eax
	cmpl	376(%edx),%eax
	jg	Lj1872
	jmp	Lj1873
Lj1872:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	380(%eax),%eax
	movl	%eax,376(%edx)
Lj1873:
Lj1871:
	movl	-12(%ebp),%eax
	movl	432(%eax),%eax
	movb	$0,40(%eax)
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXFIELDNAMES$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXFIELDNAMES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1880
	jmp	Lj1881
Lj1880:
	movl	-8(%ebp),%eax
	movl	380(%eax),%eax
	testl	%eax,%eax
	je	Lj1882
	jmp	Lj1883
Lj1882:
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES$stub
Lj1883:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	4(%eax),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,384(%edx)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1890
	jmp	Lj1891
Lj1890:
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL$stub
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	leal	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX$stub
	movl	$2,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj1891:
	movl	-8(%ebp),%eax
	movl	432(%eax),%eax
	movb	$0,40(%eax)
	jmp	Lj1906
Lj1881:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXNAME$ANSISTRING$stub
Lj1906:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXNAME$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj1912
Lj1912:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1913
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1916
	jmp	Lj1917
Lj1916:
	movl	L_$BUFDATASET$_Ld3$non_lazy_ptr-Lj1912(%edi),%ebx
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,-4(%ebp)
Lj1917:
	movl	-8(%ebp),%eax
	movl	380(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1921
	decl	-12(%ebp)
	.align 2
Lj1922:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1923
	jmp	Lj1924
Lj1923:
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj1912(%edi),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%esi
	movl	-8(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj1912(%edi),%eax
	call	Lfpc_do_as$stub
	movl	44(%eax),%eax
	movl	%eax,44(%esi)
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	movl	%eax,384(%ecx)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1941
	jmp	Lj1942
Lj1941:
	movl	$2,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj1942:
	jmp	Lj1913
Lj1924:
	cmpl	-12(%ebp),%ebx
	jg	Lj1922
Lj1921:
Lj1913:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1914
	call	LFPC_RERAISE$stub
Lj1914:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETMAXINDEXESCOUNT$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__SETMAXINDEXESCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1950
Lj1950:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1953
	jmp	Lj1954
Lj1953:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,376(%eax)
	jmp	Lj1957
Lj1954:
	movl	L_RESSTR_DBCONST_SMININDEXES$non_lazy_ptr-Lj1950(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj1957:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALSETTORECORD$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALSETTORECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	408(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	408(%eax),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movl	8(%edx),%eax
	movl	%eax,8(%ecx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	408(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	408(%eax),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	(%ecx),%eax
	movl	%eax,(%edx)
	movl	4(%ecx),%eax
	movl	%eax,4(%edx)
	movl	8(%ecx),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	408(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALGOTOBOOKMARK$POINTER
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALGOTOBOOKMARK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,444(%eax)
	jne	Lj1990
	jmp	Lj1991
Lj1990:
	movl	$0,-8(%ebp)
	jmp	Lj1988
Lj1991:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*200(%edx)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	jmp	Lj2003
	.align 2
Lj2002:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*204(%edx)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	incl	-12(%ebp)
Lj2003:
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2013
	jmp	Lj2014
Lj2014:
	movl	-4(%ebp),%eax
	movl	404(%eax),%eax
	cmpl	$-1,%eax
	je	Lj2013
	jmp	Lj2004
Lj2013:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__LOADBUFFER$PCHAR$$TGETRESULT$stub
	testl	%eax,%eax
	je	Lj2002
	jmp	Lj2004
Lj2004:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*220(%edx)
	movl	-4(%ebp),%eax
	movl	392(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,392(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1988:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2026
Lj2026:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj2029
	decl	%eax
	je	Lj2030
	decl	%eax
	jb	Lj2028
	subl	$2,%eax
	jbe	Lj2032
	decl	%eax
	je	Lj2033
	decl	%eax
	jb	Lj2028
	subl	$1,%eax
	jbe	Lj2036
	decl	%eax
	je	Lj2034
	decl	%eax
	jb	Lj2028
	subl	$2,%eax
	jbe	Lj2038
	decl	%eax
	je	Lj2039
	decl	%eax
	je	Lj2040
	decl	%eax
	je	Lj2032
	decl	%eax
	jb	Lj2028
	subl	$6,%eax
	jbe	Lj2042
	subl	$2,%eax
	je	Lj2030
	decl	%eax
	je	Lj2031
	decl	%eax
	je	Lj2037
	subl	$5,%eax
	jb	Lj2028
	subl	$1,%eax
	jbe	Lj2042
	decl	%eax
	je	Lj2041
	subl	$3,%eax
	je	Lj2030
	subl	$2,%eax
	je	Lj2035
	decl	%eax
	je	Lj2031
	decl	%eax
	je	Lj2042
	jmp	Lj2028
Lj2029:
	movl	$0,-12(%ebp)
	jmp	Lj2027
Lj2030:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2027
Lj2031:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	incl	%eax
	shll	$1,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2027
Lj2032:
	movl	$4,-12(%ebp)
	jmp	Lj2027
Lj2033:
	movl	$2,-12(%ebp)
	jmp	Lj2027
Lj2034:
	movl	$8,-12(%ebp)
	jmp	Lj2027
Lj2035:
	movl	$34,-12(%ebp)
	jmp	Lj2027
Lj2036:
	movl	$8,-12(%ebp)
	jmp	Lj2027
Lj2037:
	movl	$8,-12(%ebp)
	jmp	Lj2027
Lj2038:
	movl	$8,-12(%ebp)
	jmp	Lj2027
Lj2039:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2027
Lj2040:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	addl	$2,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2027
Lj2041:
	movl	$16,-12(%ebp)
	jmp	Lj2027
Lj2042:
	movl	$16,-12(%ebp)
	jmp	Lj2027
Lj2028:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	shll	$4,%eax
	movl	L_TC_DB_FIELDTYPENAMES$non_lazy_ptr-Lj2026(%ebx),%edx
	leal	(%edx,%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%edx
	movl	L_RESSTR_DBCONST_SUNSUPPORTEDFIELDTYPE$non_lazy_ptr-Lj2026(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$stub
Lj2027:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj2079
	jmp	Lj2080
Lj2079:
	movl	-12(%ebp),%eax
	movl	420(%eax),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2083
Lj2080:
	movl	$0,-24(%ebp)
Lj2083:
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%esi
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj2089
	decl	-20(%ebp)
	.align 2
Lj2090:
	incl	-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-20(%ebp),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	384(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*224(%ebx)
	testb	%al,%al
	jne	Lj2093
	jmp	Lj2095
Lj2095:
	cmpb	$0,-8(%ebp)
	jne	Lj2103
	jmp	Lj2094
Lj2103:
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-20(%ebp),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj2102
	jmp	Lj2094
Lj2102:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-20(%ebp),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%edx
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	384(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*224(%ebx)
	testb	%al,%al
	jne	Lj2093
	jmp	Lj2094
Lj2093:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,420(%edx)
	movb	$1,-13(%ebp)
	jmp	Lj2089
Lj2094:
	cmpl	-20(%ebp),%esi
	jg	Lj2090
Lj2089:
	movb	-13(%ebp),%al
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFERCACHED$TBUFBOOKMARK$BOOLEAN$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFERCACHED$TBUFBOOKMARK$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	420(%ebx),%eax
	jg	Lj2118
	jmp	Lj2117
Lj2118:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	384(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*224(%ebx)
	testb	%al,%al
	jne	Lj2116
	jmp	Lj2121
Lj2121:
	cmpb	$0,-8(%ebp)
	jne	Lj2129
	jmp	Lj2117
Lj2129:
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj2128
	jmp	Lj2117
Lj2128:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%eax
	movl	-12(%ebp),%edx
	movl	384(%edx),%ebx
	movl	-12(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*224(%esi)
	testb	%al,%al
	jne	Lj2116
	jmp	Lj2117
Lj2116:
	movb	$1,-13(%ebp)
	jmp	Lj2138
Lj2117:
	movb	$0,(%esp)
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj2138:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__LOADBUFFER$PCHAR$$TGETRESULT
_BUFDATASET_TCUSTOMBUFDATASET_$__LOADBUFFER$PCHAR$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*784(%edx)
	testb	%al,%al
	je	Lj2151
	jmp	Lj2152
Lj2151:
	movl	$2,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,444(%eax)
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEXES$stub
	jmp	Lj2149
Lj2152:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	412(%eax),%edx
	movl	-16(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	movzbl	412(%eax),%eax
	addl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj2170
	decl	-20(%ebp)
	.align 2
Lj2171:
	incl	-20(%ebp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*788(%esi)
	testb	%al,%al
	je	Lj2174
	jmp	Lj2175
Lj2174:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_BUFDATASET_SETFIELDISNULL$PBYTE$LONGINT$stub
	jmp	Lj2192
Lj2175:
	cmpb	$0,-21(%ebp)
	jne	Lj2193
	jmp	Lj2194
Lj2193:
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWBLOBBUFFER$$PBLOBBUFFER$stub
	movl	-28(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*792(%esi)
Lj2194:
Lj2192:
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT$stub
	addl	%eax,-4(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj2171
Lj2170:
	movl	$0,-12(%ebp)
Lj2149:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$6,%eax
	je	Lj2223
	jmp	Lj2224
Lj2223:
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2227
Lj2224:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$5,%eax
	je	Lj2228
	jmp	Lj2229
Lj2228:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2232
Lj2229:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
Lj2232:
Lj2227:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*660(%ebx)
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$8,%eax
	je	Lj2251
	jmp	Lj2252
Lj2251:
	movl	-12(%ebp),%eax
	movl	400(%eax),%eax
	cmpl	$3,%eax
	je	Lj2253
	jmp	Lj2254
Lj2253:
	movl	$0,-20(%ebp)
	jmp	Lj2257
Lj2254:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2258
	jmp	Lj2259
Lj2258:
	movl	-12(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	28(%edx,%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2264
Lj2259:
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-12(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
Lj2264:
Lj2257:
	jmp	Lj2269
Lj2252:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,-20(%ebp)
Lj2269:
	cmpl	$0,-20(%ebp)
	jne	Lj2275
	jmp	Lj2274
Lj2274:
	jmp	Lj2247
Lj2275:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2276
	jmp	Lj2277
Lj2276:
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-20(%ebp),%eax
	call	L_BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2278
	jmp	Lj2279
Lj2278:
	jmp	Lj2247
Lj2279:
	cmpl	$0,-8(%ebp)
	jne	Lj2284
	jmp	Lj2285
Lj2284:
	movl	-12(%ebp),%eax
	movl	440(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	addl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-12(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj2285:
	movb	$1,-13(%ebp)
	jmp	Lj2302
Lj2277:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movzwl	148(%edx),%edx
	addl	%edx,%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2311
	jmp	Lj2310
Lj2311:
	cmpl	$0,-8(%ebp)
	jne	Lj2309
	jmp	Lj2310
Lj2309:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*288(%edx)
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj2310:
Lj2302:
Lj2247:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*668(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER
_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj2329
Lj2329:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2330
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$6,%eax
	jb	Lj2335
	cmpl	$9,%eax
	stc
	je	Lj2335
	clc
Lj2335:
	jnc	Lj2333
	jmp	Lj2334
Lj2333:
	movl	-12(%ebp),%edx
	movl	L_RESSTR_DBCONST_SNOTEDITING$non_lazy_ptr-Lj2329(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub
Lj2334:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2344
	jmp	Lj2345
Lj2344:
	movl	-4(%ebp),%eax
	cmpb	$0,188(%eax)
	jne	Lj2348
	jmp	Lj2347
Lj2348:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$4,%eax
	je	Lj2349
	cmpl	$6,%eax
	je	Lj2349
Lj2349:
	jne	Lj2346
	jmp	Lj2347
Lj2346:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__GETDISPLAYNAME$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	L_RESSTR_DBCONST_SREADONLYFIELD$non_lazy_ptr-Lj2329(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$stub
Lj2347:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj2362
	cmpl	$5,%eax
	stc
	je	Lj2362
	clc
Lj2362:
	jc	Lj2360
	jmp	Lj2361
Lj2360:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__VALIDATE$POINTER$stub
Lj2361:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	440(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	addl	%eax,-16(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj2369
	jmp	Lj2370
Lj2369:
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-12(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT$stub
	movl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-20(%ebp),%eax
	call	L_BUFDATASET_UNSETFIELDISNULL$PBYTE$LONGINT$stub
	jmp	Lj2389
Lj2370:
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	-20(%ebp),%eax
	call	L_BUFDATASET_SETFIELDISNULL$PBYTE$LONGINT$stub
Lj2389:
	jmp	Lj2394
Lj2345:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movzwl	148(%edx),%edx
	addl	%edx,%eax
	addl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	setneb	(%edx)
	incl	-16(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj2399
	jmp	Lj2400
Lj2399:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*288(%edx)
	movl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj2400:
Lj2394:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj2411
Lj2411:
	jnc	Lj2409
	jmp	Lj2410
Lj2409:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*260(%esi)
Lj2410:
Lj2330:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2331
	call	LFPC_RERAISE$stub
Lj2331:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALDELETE
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALDELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj2419
Lj2419:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*544(%ecx)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__REMOVERECORDFROMINDEXES$TBUFBOOKMARK$stub
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2438
	jmp	Lj2439
Lj2438:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-4(%ebp),%edx
	movl	%eax,420(%edx)
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj2419(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	420(%edx),%edx
	shll	$5,%edx
	movl	%eax,28(%ecx,%edx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	28(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	408(%eax),%ecx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj2466
Lj2439:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	testl	%eax,%eax
	jne	Lj2467
	jmp	Lj2468
Lj2467:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$0,28(%edx,%eax)
Lj2468:
Lj2466:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	-24(%ebp),%ecx
	movl	%ecx,4(%edx,%eax)
	movl	-20(%ebp),%ecx
	movl	%ecx,8(%edx,%eax)
	movl	-16(%ebp),%ecx
	movl	%ecx,12(%edx,%eax)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$2,(%edx,%eax)
	movl	-4(%ebp),%eax
	decl	392(%eax)
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYRECUPDATE$TUPDATEKIND
_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYRECUPDATE$TUPDATEKIND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2480
Lj2480:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_RESSTR_DBCONST_SAPPLYRECNOTSUPPORTED$non_lazy_ptr-Lj2480(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_DB_EDATABASEERROR$non_lazy_ptr-Lj2480(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj2480(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CANCELUPDATES
_BUFDATASET_TCUSTOMBUFDATASET_$__CANCELUPDATES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2488
Lj2488:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	jg	Lj2493
	jmp	Lj2494
Lj2493:
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jl	Lj2502
	incl	-20(%ebp)
	.align 2
Lj2503:
	decl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-20(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	%ebp,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_CANCELUPDATES_CANCELUPDBUFFER$TRECUPDATEBUFFER$stub
	cmpl	$0,-20(%ebp)
	jg	Lj2503
Lj2502:
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj2488(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	$0,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj2494:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$_CANCELUPDATES_CANCELUPDBUFFER$TRECUPDATEBUFFER
_BUFDATASET_TCUSTOMBUFDATASET_$_CANCELUPDATES_CANCELUPDBUFFER$TRECUPDATEBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj2529
	jmp	Lj2528
Lj2528:
	jmp	Lj2489
Lj2529:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2532
	decl	%eax
	je	Lj2534
	decl	%eax
	je	Lj2533
	jmp	Lj2531
Lj2532:
	movl	-4(%ebp),%eax
	leal	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%edx),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	408(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	leal	28(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
	jmp	Lj2530
Lj2533:
	movl	-4(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj2551
	jmp	Lj2552
Lj2551:
	movl	-4(%ebp),%eax
	leal	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%edx),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%edx),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	408(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	leal	28(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	incl	392(%eax)
Lj2552:
	jmp	Lj2530
Lj2534:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	420(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movb	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-28(%ebp),%edx
	movb	$1,%cl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2581
	jmp	Lj2582
Lj2581:
	.align 2
Lj2591:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	420(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj2594
	jmp	Lj2595
Lj2594:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	416(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_CANCELUPDATES_CANCELUPDBUFFER$TRECUPDATEBUFFER$stub
Lj2595:
	movb	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-28(%ebp),%edx
	movb	$1,%cl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2591
	jmp	Lj2593
Lj2593:
Lj2582:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,420(%edx)
	leal	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%edx),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	-16(%eax),%ecx
	leal	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	384(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*224(%ebx)
	testb	%al,%al
	jne	Lj2618
	jmp	Lj2619
Lj2618:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	384(%eax),%ebx
	movl	-8(%ebp),%eax
	leal	-16(%eax),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*132(%edx)
	cmpl	$2,%eax
	je	Lj2632
	jmp	Lj2633
Lj2632:
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj2636
	jmp	Lj2637
Lj2636:
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*144(%edx)
Lj2637:
Lj2633:
	movl	-8(%ebp),%eax
	leal	-16(%eax),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
Lj2619:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-28(%ebp),%edx
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__REMOVERECORDFROMINDEXES$TBUFBOOKMARK$stub
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	decl	392(%eax)
	jmp	Lj2530
Lj2531:
Lj2530:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj2489:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETONUPDATEERROR$TRESOLVERERROREVENT
_BUFDATASET_TCUSTOMBUFDATASET_$__SETONUPDATEERROR$TRESOLVERERROREVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,448(%ecx)
	movl	4(%edx),%eax
	movl	%eax,452(%ecx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES
_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*800(%ecx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-168(%ebp)
	movl	%esi,-164(%ebp)
	call	Lj2667
Lj2667:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	leal	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$3,-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__DISABLECONTROLS$stub
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj2682
	jmp	Lj2687
	.align 2
Lj2686:
	movl	-8(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj2691
	jmp	Lj2689
Lj2691:
	movl	-8(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$5,%eax
	cmpl	$0,28(%edx,%eax)
	jne	Lj2689
	jmp	Lj2690
Lj2689:
	movl	-8(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__CURRENTRECORDTOBUFFER$PCHAR$stub
	movl	$3,-20(%ebp)
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj2710
	movl	-8(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*768(%ecx)
Lj2710:
	call	LFPC_POPADDRSTACK$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj2712
	movl	L_VMT_DB_EDATABASEERROR$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj2718
	movl	%eax,-120(%ebp)
	leal	-132(%ebp),%ecx
	leal	-156(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-160(%ebp)
	testl	%eax,%eax
	jne	Lj2719
	incl	-16(%ebp)
	movzwl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj2723
	jmp	Lj2724
Lj2723:
	movl	$1,-20(%ebp)
	jmp	Lj2727
Lj2724:
	movl	$0,-20(%ebp)
Lj2727:
	movl	-8(%ebp),%eax
	cmpl	$0,448(%eax)
	jne	Lj2730
	jmp	Lj2731
Lj2730:
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	-120(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%esp)
	call	L_SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER$stub
	movl	%eax,(%esp)
	movl	L_RESSTR_DBCONST_SONUPDATEERROR$non_lazy_ptr-Lj2667(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_DB_EUPDATEERROR$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	$0,%eax
	call	L_DB_EUPDATEERROR_$__CREATE$ANSISTRING$ANSISTRING$LONGINT$LONGINT$EXCEPTION$$EUPDATEERROR$stub
	movl	%eax,-36(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	452(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	448(%esi),%esi
	call	*%esi
	movl	-36(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-20(%ebp),%eax
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj2764
Lj2764:
	jc	Lj2762
	jmp	Lj2763
Lj2762:
	decl	-16(%ebp)
Lj2763:
	movl	-20(%ebp),%eax
	cmpl	$3,%eax
	je	Lj2765
	jmp	Lj2766
Lj2765:
	decl	-12(%ebp)
Lj2766:
	jmp	Lj2767
Lj2731:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2768
	jmp	Lj2769
Lj2768:
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	-120(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%esp)
	call	L_SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER$stub
	movl	%eax,(%esp)
	movl	L_RESSTR_DBCONST_SONUPDATEERROR$non_lazy_ptr-Lj2667(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_DB_EUPDATEERROR$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	$0,%eax
	call	L_DB_EUPDATEERROR_$__CREATE$ANSISTRING$ANSISTRING$LONGINT$LONGINT$EXCEPTION$$EUPDATEERROR$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj2667(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2769:
Lj2767:
Lj2719:
	call	LFPC_POPADDRSTACK$stub
	movl	-160(%ebp),%eax
	testl	%eax,%eax
	je	Lj2784
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2784:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2712
Lj2718:
	leal	-128(%ebp),%ecx
	leal	-152(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-156(%ebp)
	testl	%eax,%eax
	jne	Lj2786
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2786:
	call	LFPC_POPADDRSTACK$stub
	movl	-156(%ebp),%eax
	testl	%eax,%eax
	je	Lj2785
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2785:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2712
Lj2712:
	movl	-20(%ebp),%edx
	subl	$3,%edx
	cmpl	$2,%edx
	jb	Lj2789
Lj2789:
	jc	Lj2787
	jmp	Lj2788
Lj2787:
	movl	-8(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-12(%ebp),%edx
	shll	$5,%edx
	leal	28(%ecx,%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movl	%ecx,%eax
	call	*492(%esi)
	movl	-8(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-12(%ebp),%edx
	shll	$5,%edx
	movl	(%ecx,%edx),%edx
	cmpl	$2,%edx
	je	Lj2794
	jmp	Lj2795
Lj2794:
	movl	-8(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-12(%ebp),%edx
	shll	$5,%edx
	leal	4(%ecx,%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movl	%ecx,%eax
	call	*492(%esi)
Lj2795:
	movl	-8(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-12(%ebp),%edx
	shll	$5,%edx
	movl	$0,4(%ecx,%edx)
Lj2788:
Lj2690:
	incl	-12(%ebp)
Lj2687:
	movl	-8(%ebp),%edx
	movl	416(%edx),%edx
	movl	%edx,%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%edx
	cmpl	-12(%ebp),%edx
	jg	Lj2802
	jmp	Lj2688
Lj2802:
	movl	-20(%ebp),%edx
	cmpl	$1,%edx
	jne	Lj2686
	jmp	Lj2688
Lj2688:
Lj2682:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	je	Lj2805
	jmp	Lj2806
Lj2805:
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__MERGECHANGELOG$stub
Lj2806:
	leal	-32(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movl	%ecx,%eax
	call	*524(%esi)
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movl	%ecx,%eax
	call	*740(%esi)
	movl	-8(%ebp),%edx
	movl	%edx,%eax
	call	L_DB_TDATASET_$__ENABLECONTROLS$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj2683
	decl	%eax
	testl	%eax,%eax
	je	Lj2684
Lj2684:
	call	LFPC_RERAISE$stub
Lj2683:
	movl	-168(%ebp),%ebx
	movl	-164(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__MERGECHANGELOG
_BUFDATASET_TCUSTOMBUFDATASET_$__MERGECHANGELOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj2820
Lj2820:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj2822
	decl	-8(%ebp)
	.align 2
Lj2823:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-8(%ebp),%eax
	shll	$5,%eax
	cmpl	$0,28(%edx,%eax)
	jne	Lj2826
	jmp	Lj2827
Lj2826:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-8(%ebp),%eax
	shll	$5,%eax
	movl	28(%edx,%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj2827:
	cmpl	-8(%ebp),%ebx
	jg	Lj2823
Lj2822:
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj2820(%esi),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	cmpl	$0,460(%eax)
	jne	Lj2840
	jmp	Lj2841
Lj2840:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj2843
	decl	-8(%ebp)
	.align 2
Lj2844:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj2847
	jmp	Lj2848
Lj2847:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jge	Lj2849
	jmp	Lj2850
Lj2849:
	movl	-4(%ebp),%eax
	movl	456(%eax),%edx
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,4),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER$stub
	movl	-4(%ebp),%eax
	movl	456(%eax),%edx
	movl	-4(%ebp),%eax
	movl	460(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-8(%ebp),%edi
	movl	(%eax,%edi,4),%eax
	movl	%eax,(%edx,%ecx,4)
	jmp	Lj2857
Lj2850:
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_length$stub
	incl	%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF199$non_lazy_ptr-Lj2820(%esi),%edx
	movl	-4(%ebp),%eax
	leal	456(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	-4(%ebp),%edx
	movl	460(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	456(%eax),%edi
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	-4(%ebp),%edx
	movl	460(%edx),%ecx
	movl	-8(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,(%edi,%eax,4)
Lj2857:
Lj2848:
	cmpl	-8(%ebp),%ebx
	jg	Lj2844
Lj2843:
Lj2841:
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF200$non_lazy_ptr-Lj2820(%esi),%edx
	movl	-4(%ebp),%eax
	leal	460(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCANCEL
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCANCEL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,460(%eax)
	jne	Lj2890
	jmp	Lj2891
Lj2890:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj2893
	decl	-8(%ebp)
	.align 2
Lj2894:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj2899
	jmp	Lj2898
Lj2899:
	movl	-4(%ebp),%eax
	movl	460(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2897
	jmp	Lj2898
Lj2897:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-8(%ebp),%edx
	leal	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER$stub
Lj2898:
	cmpl	-8(%ebp),%ebx
	jg	Lj2894
Lj2893:
Lj2891:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALPOST
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALPOST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	call	Lj2905
Lj2905:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__INTERNALPOST$stub
	movl	-4(%ebp),%eax
	cmpl	$0,460(%eax)
	jne	Lj2908
	jmp	Lj2909
Lj2908:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2911
	decl	-12(%ebp)
	.align 2
Lj2912:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj2917
	jmp	Lj2916
Lj2917:
	movl	-4(%ebp),%eax
	movl	460(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2915
	jmp	Lj2916
Lj2915:
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	440(%eax),%edx
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	addl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	460(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	leal	-28(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	(%eax),%edx
	decl	%edx
	movl	-32(%ebp),%eax
	call	L_BUFDATASET_UNSETFIELDISNULL$PBYTE$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	460(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	$-1,(%eax)
Lj2916:
	cmpl	-12(%ebp),%ebx
	jg	Lj2912
Lj2911:
Lj2909:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$3,%eax
	je	Lj2946
	jmp	Lj2947
Lj2946:
	movl	-4(%ebp),%eax
	cmpl	$0,428(%eax)
	jne	Lj2948
	jmp	Lj2949
Lj2948:
	movl	-4(%ebp),%eax
	movl	424(%eax),%edx
	movl	-4(%ebp),%eax
	movl	428(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	428(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*340(%ecx)
	movl	-4(%ebp),%eax
	incl	424(%eax)
Lj2949:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	408(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2963
	decl	-12(%ebp)
	.align 2
Lj2964:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj2965
	jmp	Lj2967
Lj2967:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	384(%ecx),%eax
	je	Lj2965
	jmp	Lj2966
Lj2965:
	movl	-36(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$2,%eax
	je	Lj2968
	jmp	Lj2969
Lj2968:
	movl	-4(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	(%edx),%edx
	call	*144(%edx)
	jmp	Lj2972
Lj2969:
	movl	-4(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	-12(%ebp),%edi
	movl	(%ecx,%edi,4),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
Lj2972:
	movl	-4(%ebp),%eax
	movl	372(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	-12(%ebp),%edi
	movl	(%ecx,%edi,4),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%ecx
	movl	-12(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	(%edx),%edx
	call	*128(%edx)
Lj2966:
	cmpl	-12(%ebp),%ebx
	jg	Lj2964
Lj2963:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-36(%ebp),%eax
	movl	$3,8(%eax)
	movl	-4(%ebp),%eax
	incl	392(%eax)
	jmp	Lj2989
Lj2947:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*544(%ecx)
Lj2989:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2996
	jmp	Lj2997
Lj2996:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-4(%ebp),%edx
	movl	%eax,420(%edx)
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	incl	%eax
	movl	%eax,-40(%ebp)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj2905(%esi),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$2,%eax
	je	Lj3018
	jmp	Lj3019
Lj3018:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	420(%edx),%edx
	shll	$5,%edx
	movl	%eax,28(%ecx,%edx)
	movl	-4(%ebp),%eax
	movl	384(%eax),%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-4(%ebp),%edx
	movl	416(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	420(%edx),%edx
	shll	$5,%edx
	movl	28(%ecx,%edx),%edx
	movl	-4(%ebp),%ecx
	movl	408(%ecx),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$0,(%edx,%eax)
	jmp	Lj3036
Lj3019:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$1,(%edx,%eax)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$0,28(%edx,%eax)
Lj3036:
Lj2997:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	408(%edx),%ecx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	380(%eax),%ebx
	decl	%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj3052
	decl	-12(%ebp)
	.align 2
Lj3053:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj3054
	jmp	Lj3056
Lj3056:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	384(%ecx),%eax
	je	Lj3054
	jmp	Lj3055
Lj3054:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	(%edx),%edx
	call	*216(%edx)
Lj3055:
	cmpl	-12(%ebp),%ebx
	jg	Lj3053
Lj3052:
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CALCRECORDSIZE
_BUFDATASET_TCUSTOMBUFDATASET_$__CALCRECORDSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3060
Lj3060:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	incl	%eax
	movl	-4(%ebp),%edx
	movb	%al,412(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	412(%eax),%eax
	movl	%eax,408(%edx)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF198$non_lazy_ptr-Lj3060(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	440(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj3080
	decl	-8(%ebp)
	.align 2
Lj3081:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	440(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	408(%eax),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT$stub
	movl	-4(%ebp),%edx
	addl	%eax,408(%edx)
	cmpl	-8(%ebp),%esi
	jg	Lj3081
Lj3080:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXFIELDNAMES$$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXFIELDNAMES$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	testl	%eax,%eax
	je	Lj3096
	jmp	Lj3098
Lj3098:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%ecx
	movl	384(%edx),%eax
	cmpl	4(%ecx),%eax
	jne	Lj3096
	jmp	Lj3097
Lj3096:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj3101
Lj3097:
	movl	-4(%ebp),%eax
	movl	384(%eax),%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,(%ebx)
Lj3101:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXNAME$$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	380(%eax),%eax
	cmpl	$0,%eax
	jg	Lj3106
	jmp	Lj3107
Lj3106:
	movl	-4(%ebp),%eax
	movl	384(%eax),%esi
	movl	12(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj3110
Lj3107:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj3110:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBUFUNIDIRECTIONAL$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__GETBUFUNIDIRECTIONAL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	336(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETPACKETREADER$TDATAPACKETFORMAT$TSTREAM$$TDATAPACKETREADER
_BUFDATASET_TCUSTOMBUFDATASET_$__GETPACKETREADER$TDATAPACKETFORMAT$TSTREAM$$TDATAPACKETREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj3118
Lj3118:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_GETREGISTERDATAPACKETREADER$crcFDA0C343$stub
	testb	%al,%al
	jne	Lj3119
	jmp	Lj3120
Lj3119:
	movl	-8(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	-28(%ebp),%esi
	call	*100(%esi)
	movl	%eax,-20(%ebp)
	jmp	Lj3135
Lj3120:
	movl	-8(%ebp),%edx
	movl	L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr-Lj3118(%ebx),%eax
	movl	L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr-Lj3118(%ebx),%ecx
	call	*140(%ecx)
	testb	%al,%al
	jne	Lj3136
	jmp	Lj3137
Lj3136:
	movl	-8(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*136(%esi)
	movl	-8(%ebp),%ecx
	movl	L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr-Lj3118(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr-Lj3118(%ebx),%esi
	call	*100(%esi)
	movl	%eax,-20(%ebp)
	jmp	Lj3156
Lj3137:
	movl	L_RESSTR_DBCONST_SSTREAMNOTRECOGNISED$non_lazy_ptr-Lj3118(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj3156:
Lj3135:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDSIZE$$WORD
_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDSIZE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	408(%eax),%eax
	movl	216(%edx),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCHANGECOUNT$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__GETCHANGECOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALINITRECORD$PCHAR
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALINITRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	408(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-8(%ebp),%eax
	movzbl	412(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$255,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETRECNO$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__SETRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj3186
Lj3186:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*396(%edx)
	cmpl	-4(%ebp),%eax
	jl	Lj3189
	jmp	Lj3190
Lj3189:
	.align 2
Lj3193:
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT$stub
	movl	-8(%ebp),%edx
	cmpl	404(%edx),%eax
	jl	Lj3195
	jmp	Lj3197
Lj3197:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*396(%edx)
	cmpl	-4(%ebp),%eax
	jge	Lj3195
	jmp	Lj3196
Lj3196:
	movl	-8(%ebp),%eax
	movl	404(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3195
	jmp	Lj3193
Lj3195:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*396(%edx)
	cmpl	-4(%ebp),%eax
	jl	Lj3202
	jmp	Lj3203
Lj3202:
	movl	-8(%ebp),%edx
	movl	L_RESSTR_DBCONST_SNOSUCHRECORD$non_lazy_ptr-Lj3186(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$TCOMPONENT$stub
	jmp	Lj3185
Lj3203:
Lj3190:
	movl	-8(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj3186(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	52(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	decl	%eax
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj3217
	decl	-12(%ebp)
	.align 2
Lj3218:
	incl	-12(%ebp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	384(%edx),%edx
	movl	32(%edx),%edx
	movl	4(%ecx,%edx,8),%edx
	movl	%edx,-16(%ebp)
	cmpl	-12(%ebp),%eax
	jg	Lj3218
Lj3217:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GOTOBOOKMARK$POINTER$stub
Lj3185:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECNO$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj3234
	jmp	Lj3232
Lj3234:
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	cmpl	$0,%eax
	jg	Lj3233
	jmp	Lj3232
Lj3233:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$3,%eax
	jne	Lj3231
	jmp	Lj3232
Lj3231:
	movl	-4(%ebp),%eax
	movl	408(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	movl	%eax,-8(%ebp)
	jmp	Lj3241
Lj3232:
	movl	$0,-8(%ebp)
Lj3241:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__ISCURSOROPEN$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__ISCURSOROPEN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	413(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDCOUNT$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATESTATUS$$TUPDATESTATUS
_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATESTATUS$$TUPDATESTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3256
	jmp	Lj3257
Lj3256:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	testl	%eax,%eax
	je	Lj3262
	decl	%eax
	je	Lj3263
	decl	%eax
	je	Lj3264
	jmp	Lj3261
Lj3262:
	movl	$1,-8(%ebp)
	jmp	Lj3260
Lj3263:
	movl	$2,-8(%ebp)
	jmp	Lj3260
Lj3264:
	movl	$3,-8(%ebp)
	jmp	Lj3260
Lj3261:
Lj3260:
Lj3257:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWBLOBBUFFER$$PBLOBBUFFER
_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWBLOBBUFFER$$PBLOBBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj3272
Lj3272:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_length$stub
	incl	%eax
	movl	%eax,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF199$non_lazy_ptr-Lj3272(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	456(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$16,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	456(%eax),%esi
	movl	-4(%ebp),%eax
	movl	456(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	-12(%ebp),%edx
	movl	%edx,(%esi,%eax,4)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWWRITEBLOBBUFFER$$PBLOBBUFFER
_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWWRITEBLOBBUFFER$$PBLOBBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj3308
Lj3308:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	call	Lfpc_dynarray_length$stub
	incl	%eax
	movl	%eax,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF200$non_lazy_ptr-Lj3308(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	460(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$16,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	460(%eax),%esi
	movl	-4(%ebp),%eax
	movl	460(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	-12(%ebp),%edx
	movl	%edx,(%esi,%eax,4)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER
_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj3342
	jmp	Lj3341
Lj3341:
	jmp	Lj3339
Lj3342:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj3339:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFBLOBSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
_BUFDATASET_TBUFBLOBSTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movw	-8(%ebp),%ax
	testw	%ax,%ax
	je	Lj3355
	decw	%ax
	je	Lj3357
	decw	%ax
	je	Lj3356
	jmp	Lj3354
Lj3355:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj3353
Lj3356:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,8(%eax)
	jmp	Lj3353
Lj3357:
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,8(%eax)
	jmp	Lj3353
Lj3354:
Lj3353:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFBLOBSTREAM_$__READ$formal$LONGINT$$LONGINT
_BUFDATASET_TBUFBLOBSTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	12(%eax),%edx
	jg	Lj3368
	jmp	Lj3369
Lj3368:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%ecx
	movl	8(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-8(%ebp)
Lj3369:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	8(%eax),%edx
	movl	8(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFBLOBSTREAM_$__WRITE$formal$LONGINT$$LONGINT
_BUFDATASET_TBUFBLOBSTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	8(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	8(%eax),%edx
	movl	8(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,12(%edx)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TBUFBLOBSTREAM_$__CREATE$TBLOBFIELD$TBLOBSTREAMMODE$$TBUFBLOBSTREAM
_BUFDATASET_TBUFBLOBSTREAM_$__CREATE$TBLOBFIELD$TBLOBSTREAMMODE$$TBUFBLOBSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj3399
Lj3399:
	popl	-112(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3400
	jmp	Lj3401
Lj3400:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3401:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3406
	jmp	Lj3407
Lj3406:
	jmp	Lj3398
Lj3407:
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj3410
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj3414
	movl	-4(%ebp),%eax
	movl	72(%eax),%edx
	movl	-112(%ebp),%ecx
	movl	L_VMT_BUFDATASET_TCUSTOMBUFDATASET$non_lazy_ptr-Lj3399(%ecx),%eax
	call	Lfpc_do_as$stub
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3423
	jmp	Lj3424
Lj3423:
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__GETDATA$POINTER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3425
	jmp	Lj3426
Lj3425:
	movl	-112(%ebp),%edx
	movl	L_RESSTR_DBCONST_SFIELDISNULL$non_lazy_ptr-Lj3399(%edx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj3426:
	cmpl	$0,-16(%ebp)
	jne	Lj3434
	jmp	Lj3433
Lj3433:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edi
	movl	%edi,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWBLOBBUFFER$$PBLOBBUFFER$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	104(%eax),%edx
	decl	%edx
	movl	268(%edi),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ebx
	movl	%esi,%ecx
	call	*792(%ebx)
	jmp	Lj3453
Lj3434:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
Lj3453:
	jmp	Lj3456
Lj3424:
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3457
	jmp	Lj3458
Lj3457:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-112(%ebp),%ecx
	movl	L_VMT_BUFDATASET_TCUSTOMBUFDATASET$non_lazy_ptr-Lj3399(%ecx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%esi
	movl	%esi,%ebx
	movl	%ebx,%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWWRITEBLOBBUFFER$$PBLOBBUFFER$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,(%edx)
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__GETDATA$POINTER$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3475
	jmp	Lj3474
Lj3475:
	cmpl	$0,-16(%ebp)
	jne	Lj3473
	jmp	Lj3474
Lj3473:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	jmp	Lj3482
Lj3474:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	$-1,4(%eax)
Lj3482:
Lj3458:
Lj3456:
Lj3414:
	call	LFPC_POPADDRSTACK$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj3415
	call	LFPC_RERAISE$stub
Lj3415:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3487
	jmp	Lj3486
Lj3487:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3485
	jmp	Lj3486
Lj3485:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3486:
Lj3410:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj3412
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj3491
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3492
	jmp	Lj3493
Lj3492:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3493:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3491:
	call	LFPC_POPADDRSTACK$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj3490
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3490:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3412
Lj3412:
Lj3398:
	movl	-12(%ebp),%eax
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
_BUFDATASET_TCUSTOMBUFDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	call	Lj3499
Lj3499:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3502
	jmp	Lj3503
Lj3502:
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__GETDATA$POINTER$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3504
	jmp	Lj3505
Lj3504:
	jmp	Lj3498
Lj3505:
	movl	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	L_VMT_DB_TBLOBFIELD$non_lazy_ptr-Lj3499(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%ecx
	movl	L_VMT_BUFDATASET_TBUFBLOBSTREAM$non_lazy_ptr-Lj3499(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_TBUFBLOBSTREAM_$__CREATE$TBLOBFIELD$TBLOBSTREAMMODE$$TBUFBLOBSTREAM$stub
	movl	%eax,-16(%ebp)
	jmp	Lj3524
Lj3503:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3525
	jmp	Lj3526
Lj3525:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj3529
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj3529
Lj3529:
	jnc	Lj3527
	jmp	Lj3528
Lj3527:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$11,-40(%ebp)
	leal	-40(%ebp),%edx
	movl	L_RESSTR_DBCONST_SNOTEDITING$non_lazy_ptr-Lj3499(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$TCOMPONENT$stub
Lj3528:
	movl	$1,(%esp)
	movl	-4(%ebp),%edx
	movl	L_VMT_DB_TBLOBFIELD$non_lazy_ptr-Lj3499(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%ecx
	movl	L_VMT_BUFDATASET_TBUFBLOBSTREAM$non_lazy_ptr-Lj3499(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_TBUFBLOBSTREAM_$__CREATE$TBLOBFIELD$TBLOBSTREAMMODE$$TBUFBLOBSTREAM$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj3554
Lj3554:
	jnc	Lj3552
	jmp	Lj3553
Lj3552:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*260(%esi)
Lj3553:
Lj3526:
Lj3524:
Lj3498:
	movl	-16(%ebp),%eax
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETDATASETPACKET$TDATAPACKETREADER
_BUFDATASET_TCUSTOMBUFDATASET_$__SETDATASETPACKET$TDATAPACKETREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,368(%edx)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3565
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__OPEN$stub
Lj3565:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	$0,368(%eax)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3566
	decl	%eax
	testl	%eax,%eax
	je	Lj3567
Lj3567:
	call	LFPC_RERAISE$stub
Lj3566:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__GETDATASETPACKET$TDATAPACKETREADER
_BUFDATASET_TCUSTOMBUFDATASET_$__GETDATASETPACKET$TDATAPACKETREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,368(%edx)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj3581
	leal	-32(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	424(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	268(%eax),%edx
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	movl	-8(%ebp),%ebx
	movl	368(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-8(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*140(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj3604
	.align 2
Lj3603:
	movl	$0,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	%ebp,%eax
	movb	$1,%dl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7$stub
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%edx
	movl	%eax,388(%edx)
	movl	$0,%eax
	cmpl	-36(%ebp),%eax
	je	Lj3624
	jmp	Lj3625
Lj3624:
	movl	$0,(%esp)
	movl	$0,%ecx
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	368(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	jmp	Lj3634
Lj3625:
	movl	-8(%ebp),%eax
	movl	420(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	movl	-36(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	368(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj3634:
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*132(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3647
	jmp	Lj3648
Lj3647:
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3649
	jmp	Lj3650
Lj3649:
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*132(%edx)
	movl	%eax,-12(%ebp)
Lj3650:
Lj3648:
Lj3604:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3603
	jmp	Lj3605
Lj3605:
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	%ebp,%eax
	movb	$1,%dl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	movl	-8(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj3581:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	$0,368(%eax)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj3582
	decl	%eax
	testl	%eax,%eax
	je	Lj3583
Lj3583:
	call	LFPC_RERAISE$stub
Lj3582:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7
_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-32(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-24(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj3677
	jmp	Lj3678
Lj3677:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
Lj3678:
	movb	-4(%ebp),%al
	testb	%al,%al
	seteb	%al
	movb	%al,(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-32(%ebp),%edx
	movb	$1,%cl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3681
	jmp	Lj3682
Lj3681:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj3691
	jmp	Lj3692
Lj3691:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7$stub
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,420(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	416(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9$stub
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,420(%eax)
	jmp	Lj3715
Lj3692:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-32(%ebp),%ecx
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7$stub
Lj3715:
Lj3682:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9
_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-52(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3730
	jmp	Lj3731
Lj3730:
	movl	$1,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$8,(%eax)
	jmp	Lj3736
Lj3731:
	movl	-52(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3737
	jmp	Lj3738
Lj3737:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-48(%ebp),%edx
	movb	$1,%cl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3741
	jmp	Lj3742
Lj3741:
	.align 2
Lj3751:
	leal	-48(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%edx),%edx
	movl	384(%edx),%ebx
	movl	-12(%ebp),%edx
	movl	-8(%edx),%edx
	movl	384(%edx),%edx
	movl	(%edx),%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*224(%esi)
	testb	%al,%al
	jne	Lj3754
	jmp	Lj3755
Lj3754:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	416(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	(%edx,%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9$stub
Lj3755:
	movb	$1,(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-48(%ebp),%edx
	movb	$1,%cl
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3751
	jmp	Lj3753
Lj3753:
Lj3742:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-20(%ebp),%eax
	movl	%eax,420(%edx)
	movl	$2,-16(%ebp)
	jmp	Lj3780
Lj3738:
	movl	-8(%ebp),%eax
	movl	$4,(%eax)
Lj3780:
Lj3736:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-24(%ebp),%eax
	movl	%eax,388(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	$0,388(%eax)
	jne	Lj3785
	jmp	Lj3786
Lj3785:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	420(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	368(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	368(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj3786:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMSTREAM$TSTREAM$TDATAPACKETFORMAT
_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMSTREAM$TSTREAM$TDATAPACKETFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBIDIRECTIONAL$stub
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETPACKETREADER$TDATAPACKETFORMAT$TSTREAM$$TDATAPACKETREADER$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3807
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__SETDATASETPACKET$TDATAPACKETREADER$stub
Lj3807:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3808
	decl	%eax
	testl	%eax,%eax
	je	Lj3809
Lj3809:
	call	LFPC_RERAISE$stub
Lj3808:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOSTREAM$TSTREAM$TDATAPACKETFORMAT
_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOSTREAM$TSTREAM$TDATAPACKETFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj3818
Lj3818:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBIDIRECTIONAL$stub
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	L_BUFDATASET_GETREGISTERDATAPACKETREADER$crcFDA0C343$stub
	testb	%al,%al
	jne	Lj3821
	jmp	Lj3822
Lj3821:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	-20(%ebp),%ebx
	call	*100(%ebx)
	movl	%eax,-24(%ebp)
	jmp	Lj3837
Lj3822:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3838
	jmp	Lj3839
Lj3838:
	movl	-4(%ebp),%ecx
	movl	L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr-Lj3818(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr-Lj3818(%esi),%ebx
	call	*100(%ebx)
	movl	%eax,-24(%ebp)
	jmp	Lj3848
Lj3839:
	movl	L_RESSTR_DBCONST_SNOREADERCLASSREGISTERED$non_lazy_ptr-Lj3818(%esi),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj3848:
Lj3837:
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3851
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETDATASETPACKET$TDATAPACKETREADER$stub
Lj3851:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3852
	decl	%eax
	testl	%eax,%eax
	je	Lj3853
Lj3853:
	call	LFPC_RERAISE$stub
Lj3852:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMFILE$ANSISTRING$TDATAPACKETFORMAT
_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMFILE$ANSISTRING$TDATAPACKETFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj3862
Lj3862:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3863
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3866
	jmp	Lj3867
Lj3866:
	movl	-12(%ebp),%esi
	movl	356(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	356(%esi),%eax
	movl	%eax,-4(%ebp)
Lj3867:
	movw	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj3862(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj3880
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMSTREAM$TSTREAM$TDATAPACKETFORMAT$stub
Lj3880:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj3881
	decl	%eax
	testl	%eax,%eax
	je	Lj3882
Lj3882:
	call	LFPC_RERAISE$stub
Lj3881:
Lj3863:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3864
	call	LFPC_RERAISE$stub
Lj3864:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOFILE$ANSISTRING$TDATAPACKETFORMAT
_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOFILE$ANSISTRING$TDATAPACKETFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj3893
Lj3893:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3894
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3897
	jmp	Lj3898
Lj3897:
	movl	-12(%ebp),%esi
	movl	356(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	356(%esi),%eax
	movl	%eax,-4(%ebp)
Lj3898:
	movw	$65280,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj3893(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj3911
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOSTREAM$TSTREAM$TDATAPACKETFORMAT$stub
Lj3911:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj3912
	decl	%eax
	testl	%eax,%eax
	je	Lj3913
Lj3913:
	call	LFPC_RERAISE$stub
Lj3912:
Lj3894:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3895
	call	LFPC_RERAISE$stub
Lj3895:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATEDATASET
_BUFDATASET_TCUSTOMBUFDATASET_$__CREATEDATASET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj3924
Lj3924:
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
	jne	Lj3925
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj3930
	jmp	Lj3932
Lj3932:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj3930
	jmp	Lj3931
Lj3930:
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3937
	jmp	Lj3938
Lj3937:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
	jmp	Lj3943
Lj3938:
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	call	L_DB_TFIELDS_$__GETCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3944
	jmp	Lj3945
Lj3944:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__INITFIELDDEFSFROMFIELDS$stub
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
	jmp	Lj3954
Lj3945:
	movl	L_RESSTR_DBCONST_SERRNOFIELDSDEFINED$non_lazy_ptr-Lj3924(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj3924(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj3924(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3954:
Lj3943:
	movl	-4(%ebp),%eax
	movl	$1,424(%eax)
Lj3931:
	movl	-4(%ebp),%esi
	movl	356(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	356(%esi),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	356(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,356(%esi)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3967
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__OPEN$stub
Lj3967:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	356(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,356(%esi)
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3968
	decl	%eax
	testl	%eax,%eax
	je	Lj3969
Lj3969:
	call	LFPC_RERAISE$stub
Lj3968:
Lj3925:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3926
	call	LFPC_RERAISE$stub
Lj3926:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,384(%eax)
	jne	Lj3985
	jmp	Lj3984
Lj3985:
	movl	-8(%ebp),%eax
	movl	384(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	384(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*184(%ecx)
	testb	%al,%al
	jne	Lj3983
	jmp	Lj3984
Lj3983:
	movb	$1,-9(%ebp)
	jmp	Lj3990
Lj3984:
	movb	$0,-9(%ebp)
Lj3990:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,384(%eax)
	jne	Lj3995
	jmp	Lj3994
Lj3995:
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	384(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*224(%ebx)
	testb	%al,%al
	jne	Lj3993
	jmp	Lj3994
Lj3993:
	movl	$0,-16(%ebp)
	jmp	Lj4004
Lj3994:
	movl	$-1,-16(%ebp)
Lj4004:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADFIELDDEFSFROMFILE
_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADFIELDDEFSFROMFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	leal	424(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	268(%eax),%edx
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	368(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj4017
	jmp	Lj4018
Lj4017:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
	jmp	Lj4021
Lj4018:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
Lj4021:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADRECORDSFROMFILE
_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADRECORDSFROMFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj4027
Lj4027:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBIDIRECTIONAL$stub
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-8(%ebp)
	jmp	Lj4039
	.align 2
Lj4038:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	368(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	%eax,-16(%ebp)
	testl	$1,-16(%ebp)
	jne	Lj4047
	jmp	Lj4048
Lj4047:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-20(%ebp),%edx
	incl	%edx
	cmpl	%edx,%eax
	jl	Lj4049
	jmp	Lj4050
Lj4049:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj4027(%edi),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj4050:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,420(%eax)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	412(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	416(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	%edx,28(%ecx,%eax)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	368(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testb	%al,%al
	je	Lj4083
	jmp	Lj4084
Lj4083:
	movl	L_RESSTR_DBCONST_SSTREAMNOTRECOGNISED$non_lazy_ptr-Lj4027(%edi),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj4084:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	368(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	%eax,-16(%ebp)
	testl	$8,-16(%ebp)
	jne	Lj4095
	jmp	Lj4096
Lj4095:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$0,(%edx,%eax)
	jmp	Lj4099
Lj4096:
	movl	L_RESSTR_DBCONST_SSTREAMNOTRECOGNISED$non_lazy_ptr-Lj4027(%edi),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj4099:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	412(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	368(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*204(%edx)
	movl	-4(%ebp),%eax
	incl	392(%eax)
	movb	$0,-9(%ebp)
	jmp	Lj4124
Lj4048:
	testl	$2,-16(%ebp)
	jne	Lj4125
	jmp	Lj4126
Lj4125:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-20(%ebp),%edx
	incl	%edx
	cmpl	%edx,%eax
	jl	Lj4127
	jmp	Lj4128
Lj4127:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj4027(%edi),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj4128:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,420(%eax)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	412(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	416(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	%edx,28(%ecx,%eax)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	368(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$2,(%edx,%eax)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*204(%edx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*212(%ecx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4176
	decl	-24(%ebp)
	.align 2
Lj4177:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-24(%ebp),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%ecx
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%esi
	movl	372(%esi),%esi
	movl	(%esi),%esi
	movl	(%esi),%esi
	call	*224(%esi)
	testb	%al,%al
	jne	Lj4180
	jmp	Lj4181
Lj4180:
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-24(%ebp),%eax
	shll	$5,%eax
	leal	16(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
Lj4181:
	cmpl	-24(%ebp),%ebx
	jg	Lj4177
Lj4176:
	movb	$0,-9(%ebp)
	jmp	Lj4194
Lj4126:
	movb	$1,-9(%ebp)
Lj4194:
Lj4124:
	cmpb	$0,-9(%ebp)
	jne	Lj4197
	jmp	Lj4198
Lj4197:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	412(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	368(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*120(%ecx)
	testl	$4,-16(%ebp)
	jne	Lj4213
	jmp	Lj4214
Lj4213:
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-20(%ebp),%edx
	incl	%edx
	cmpl	%edx,%eax
	jl	Lj4215
	jmp	Lj4216
Lj4215:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr-Lj4027(%edi),%edx
	movl	-4(%ebp),%eax
	leal	416(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj4216:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,420(%edx)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	movl	$1,(%edx,%eax)
	movl	-4(%ebp),%eax
	movl	416(%eax),%edx
	movl	-4(%ebp),%eax
	movl	420(%eax),%eax
	shll	$5,%eax
	leal	4(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	372(%ecx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*176(%ecx)
Lj4214:
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*204(%edx)
	movl	-4(%ebp),%eax
	incl	392(%eax)
Lj4198:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*124(%edx)
Lj4039:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testb	%al,%al
	jne	Lj4038
	jmp	Lj4040
Lj4040:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-4(%ebp),%eax
	movb	$1,444(%eax)
	movl	-4(%ebp),%eax
	cmpl	$0,364(%eax)
	jne	Lj4251
	jmp	Lj4252
Lj4251:
	movl	-4(%ebp),%eax
	leal	364(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	leal	368(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj4252:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEXES$stub
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__DOFILTERRECORD$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__DOFILTERRECORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,308(%eax)
	jne	Lj4263
	jmp	Lj4264
Lj4263:
	movl	-8(%ebp),%eax
	movl	312(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	308(%ebx),%ebx
	call	*%ebx
Lj4264:
	movl	-4(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj4273
	jmp	Lj4272
Lj4273:
	movl	-8(%ebp),%eax
	movl	276(%eax),%eax
	testl	%eax,%eax
	je	Lj4274
	movl	-4(%eax),%eax
Lj4274:
	cmpl	$0,%eax
	jg	Lj4271
	jmp	Lj4272
Lj4271:
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	436(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	436(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	movb	%al,(%edx)
Lj4272:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERTEXT$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERTEXT$ANSISTRING:
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
	je	Lj4287
	jmp	Lj4288
Lj4287:
	jmp	Lj4285
Lj4288:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__PARSEFILTER$ANSISTRING$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*572(%edx)
	testb	%al,%al
	jne	Lj4303
	jmp	Lj4302
Lj4303:
	movl	-8(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj4301
	jmp	Lj4302
Lj4301:
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj4302:
Lj4285:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERED$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	280(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj4312
	jmp	Lj4313
Lj4312:
	jmp	Lj4310
Lj4313:
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__SETFILTERED$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*572(%edx)
	testb	%al,%al
	jne	Lj4318
	jmp	Lj4319
Lj4318:
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj4319:
Lj4310:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALREFRESH
_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALREFRESH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4327
Lj4327:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	416(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	jg	Lj4328
	jmp	Lj4329
Lj4328:
	movl	L_RESSTR_DBCONST_SERRAPPLYUPDBEFOREREFRESH$non_lazy_ptr-Lj4327(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj4329:
	movl	-4(%ebp),%eax
	movb	256(%eax),%al
	movb	%al,-5(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_DB_TDATASET_$__SETDEFAULTFIELDS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*352(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*240(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*560(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*772(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*564(%edx)
	movb	-5(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__SETDEFAULTFIELDS$BOOLEAN$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__BEFOREREFRESHOPENCURSOR
_BUFDATASET_TCUSTOMBUFDATASET_$__BEFOREREFRESHOPENCURSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
_BUFDATASET_TCUSTOMBUFDATASET_$__DATAEVENT$TDATAEVENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$6,%eax
	je	Lj4358
	jmp	Lj4359
Lj4358:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	movl	%eax,400(%edx)
Lj4359:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__FETCH$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__FETCH$$BOOLEAN:
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
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFIELD$TFIELDDEF$POINTER$BOOLEAN$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFIELD$TFIELDDEF$POINTER$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movb	$0,(%eax)
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__ISREADFROMPACKET$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__ISREADFROMPACKET$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	testl	%eax,%eax
	jne	Lj4380
	jmp	Lj4383
Lj4383:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	jne	Lj4380
	jmp	Lj4382
Lj4382:
	movl	-4(%ebp),%eax
	cmpb	$0,360(%eax)
	jne	Lj4380
	jmp	Lj4381
Lj4380:
	movb	$1,-5(%ebp)
	jmp	Lj4384
Lj4381:
	movb	$0,-5(%ebp)
Lj4384:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__PARSEFILTER$ANSISTRING
_BUFDATASET_TCUSTOMBUFDATASET_$__PARSEFILTER$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4386
Lj4386:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4389
	movl	-4(%eax),%eax
Lj4389:
	cmpl	$0,%eax
	jg	Lj4387
	jmp	Lj4388
Lj4387:
	movl	-8(%ebp),%eax
	movl	436(%eax),%eax
	testl	%eax,%eax
	je	Lj4392
	jmp	Lj4391
Lj4392:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*572(%edx)
	testb	%al,%al
	jne	Lj4390
	jmp	Lj4391
Lj4390:
	movl	-8(%ebp),%ecx
	movl	L_VMT_BUFDATASET_PARSER_TBUFDATASETPARSER$non_lazy_ptr-Lj4386(%ebx),%edx
	movl	$0,%eax
	call	L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CREATE$TDATASET$$TBUFDATASETPARSER$stub
	movl	-8(%ebp),%edx
	movl	%eax,436(%edx)
Lj4391:
	movl	-8(%ebp),%eax
	movl	436(%eax),%eax
	testl	%eax,%eax
	jne	Lj4403
	jmp	Lj4404
Lj4403:
	movl	-8(%ebp),%eax
	testl	$2,272(%eax)
	seteb	%dl
	movl	-8(%ebp),%eax
	movl	436(%eax),%eax
	call	L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETPARTIALMATCH$BOOLEAN$stub
	movl	-8(%ebp),%eax
	testl	$1,272(%eax)
	setneb	%dl
	movl	-8(%ebp),%eax
	movl	436(%eax),%eax
	call	L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETCASEINSENSITIVE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	436(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	436(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
Lj4404:
Lj4388:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
_BUFDATASET_TCUSTOMBUFDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	call	Lj4418
Lj4418:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-40(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4419
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4434
	jmp	Lj4435
Lj4434:
	jmp	Lj4419
Lj4435:
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj4418(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-36(%ebp)
	leal	-104(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-132(%ebp)
	testl	%eax,%eax
	jne	Lj4444
	movl	-4(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub
	movl	-36(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj4454
	jmp	Lj4455
Lj4454:
	jmp	Lj4447
Lj4455:
	movl	$0,12(%esp)
	movl	L_INIT_BUFDATASET_TDBCOMPARESTRUCT$non_lazy_ptr-Lj4418(%ebx),%edx
	leal	-40(%ebp),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$0,8(%esp)
	movl	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__PROCESSFIELDSTOCOMPARESTRUCT$crc08BA7DC3$stub
Lj4444:
	call	LFPC_POPADDRSTACK$stub
	movl	-36(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-132(%ebp),%eax
	testl	%eax,%eax
	je	Lj4445
	decl	%eax
	testl	%eax,%eax
	je	Lj4446
	decl	%eax
	testl	%eax,%eax
	je	Lj4419
Lj4446:
	call	LFPC_RERAISE$stub
Lj4447:
	movl	-132(%ebp),%eax
	movl	$2,-132(%ebp)
	jmp	Lj4444
Lj4445:
	movl	-12(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-12(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-12(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*468(%esi)
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%esi
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	408(%esi),%esi
	addl	%eax,%esi
	movl	-12(%ebp),%eax
	movl	384(%eax),%eax
	movl	-12(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-48(%ebp),%edx
	movl	%esi,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj4418(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	52(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj4511
	.align 2
Lj4510:
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-48(%ebp),%eax
	call	L_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64$stub
	cmpl	$0,%edx
	jne	Lj4514
	cmpl	$0,%eax
	jne	Lj4514
	jmp	Lj4513
Lj4513:
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj4521
	jmp	Lj4522
Lj4521:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub
	movl	-20(%ebp),%edx
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,388(%eax)
	leal	-49(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*776(%ecx)
	cmpb	$0,-49(%ebp)
	jne	Lj4531
	jmp	Lj4532
Lj4531:
	movb	$1,-13(%ebp)
	jmp	Lj4512
Lj4532:
	jmp	Lj4535
Lj4522:
	movb	$1,-13(%ebp)
	jmp	Lj4512
Lj4535:
Lj4514:
	movl	-20(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj4418(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	32(%eax),%eax
	movl	4(%esi,%eax,8),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj4418(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	48(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj4544
	jmp	Lj4545
Lj4544:
	movl	-12(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT$stub
Lj4545:
Lj4511:
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr-Lj4418(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	48(%eax),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj4510
	jmp	Lj4512
Lj4512:
	movl	-44(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	leal	-48(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*492(%ecx)
	cmpb	$0,-13(%ebp)
	jne	Lj4564
	jmp	Lj4565
Lj4564:
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-24(%ebp)
	leal	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GOTOBOOKMARK$POINTER$stub
Lj4565:
Lj4419:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_BUFDATASET_TDBCOMPARESTRUCT$non_lazy_ptr-Lj4418(%ebx),%edx
	leal	-40(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4420
	call	LFPC_RERAISE$stub
Lj4420:
	movb	-13(%ebp),%al
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TCUSTOMBUFDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
_BUFDATASET_TCUSTOMBUFDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*716(%edx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__DISABLECONTROLS$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4590
	movl	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*728(%ebx)
	testb	%al,%al
	jne	Lj4594
	jmp	Lj4595
Lj4594:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*372(%ebx)
Lj4595:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GOTOBOOKMARK$POINTER$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*712(%ecx)
Lj4590:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__ENABLECONTROLS$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4591
	decl	%eax
	testl	%eax,%eax
	je	Lj4592
Lj4592:
	call	LFPC_RERAISE$stub
Lj4591:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT
_BUFDATASET_TARRAYBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$12,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENTBUFFER$$POINTER
_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENTBUFFER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENTRECORD$$PCHAR
_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENTRECORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETISINITIALIZED$$BOOLEAN
_BUFDATASET_TARRAYBUFINDEX_$__GETISINITIALIZED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETSPAREBUFFER$$PCHAR
_BUFDATASET_TARRAYBUFINDEX_$__GETSPAREBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$-1,%eax
	jg	Lj4642
	jmp	Lj4643
Lj4642:
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj4646
Lj4643:
	movl	$0,-8(%ebp)
Lj4646:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETSPARERECORD$$PCHAR
_BUFDATASET_TARRAYBUFINDEX_$__GETSPARERECORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TARRAYBUFINDEX
_BUFDATASET_TARRAYBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TARRAYBUFINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4657
	jmp	Lj4658
Lj4657:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4658:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4663
	jmp	Lj4664
Lj4663:
	jmp	Lj4655
Lj4664:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4667
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4671
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX$stub
	movl	-12(%ebp),%eax
	movl	$10000,40(%eax)
	movl	-12(%ebp),%eax
	movl	$1000,44(%eax)
Lj4671:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4672
	call	LFPC_RERAISE$stub
Lj4672:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4686
	jmp	Lj4685
Lj4686:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4684
	jmp	Lj4685
Lj4684:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4685:
Lj4667:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4669
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4690
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4691
	jmp	Lj4692
Lj4691:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4692:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4690:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4689
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4689:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4669
Lj4669:
Lj4655:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT
_BUFDATASET_TARRAYBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	$0,%eax
	jg	Lj4699
	jmp	Lj4700
Lj4699:
	movl	-4(%ebp),%eax
	decl	48(%eax)
	movl	$0,-8(%ebp)
	jmp	Lj4703
Lj4700:
	movl	$1,-8(%ebp)
Lj4703:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLFORWARD$$TGETRESULT
_BUFDATASET_TARRAYBUFINDEX_$__SCROLLFORWARD$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	cmpl	48(%eax),%edx
	je	Lj4708
	jmp	Lj4709
Lj4708:
	movl	$2,-8(%ebp)
	jmp	Lj4712
Lj4709:
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	incl	48(%eax)
Lj4712:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENT$$TGETRESULT
_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENT$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj4717
	jmp	Lj4718
Lj4717:
	movl	$3,-8(%ebp)
	jmp	Lj4721
Lj4718:
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	56(%edx),%eax
	je	Lj4724
	jmp	Lj4725
Lj4724:
	movl	-4(%ebp),%eax
	decl	48(%eax)
Lj4725:
Lj4721:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLFIRST$$TGETRESULT
_BUFDATASET_TARRAYBUFINDEX_$__SCROLLFIRST$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,48(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	56(%edx),%eax
	je	Lj4730
	jmp	Lj4731
Lj4730:
	movl	$2,-8(%ebp)
	jmp	Lj4734
Lj4731:
	movl	$0,-8(%ebp)
Lj4734:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLLAST
_BUFDATASET_TARRAYBUFINDEX_$__SCROLLLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,48(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__SETTOFIRSTRECORD
_BUFDATASET_TARRAYBUFINDEX_$__SETTOFIRSTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%eax
	cmpl	56(%edx),%eax
	jne	Lj4743
	jmp	Lj4744
Lj4743:
	movl	-4(%ebp),%eax
	movl	$-1,48(%eax)
Lj4744:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__SETTOLASTRECORD
_BUFDATASET_TARRAYBUFINDEX_$__SETTOLASTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	jne	Lj4749
	jmp	Lj4750
Lj4749:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,48(%edx)
Lj4750:
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__STORECURRENTRECORD
_BUFDATASET_TARRAYBUFINDEX_$__STORECURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,36(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__RESTORECURRENTRECORD
_BUFDATASET_TARRAYBUFINDEX_$__RESTORECURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,48(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN
_BUFDATASET_TARRAYBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	cmpl	48(%edx),%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__DOSCROLLFORWARD
_BUFDATASET_TARRAYBUFINDEX_$__DOSCROLLFORWARD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	48(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TARRAYBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	48(%edx),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	52(%edx),%ecx
	movl	-8(%ebp),%edx
	movl	48(%edx),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TARRAYBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	56(%edx),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%edx
	movl	52(%edx),%ecx
	movl	-8(%ebp),%edx
	movl	56(%edx),%edx
	movl	(%ecx,%edx,4),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT
_BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj4784
Lj4784:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4787
	jmp	Lj4786
Lj4787:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj4785
	jmp	Lj4786
Lj4785:
	movl	-20(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj4788
	jmp	Lj4789
Lj4788:
	movl	-20(%ebp),%eax
	subl	$2,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj4792
Lj4789:
	movl	$0,-12(%ebp)
Lj4792:
	jmp	Lj4796
	.align 2
Lj4795:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	-24(%ebp),%eax
	je	Lj4798
	jmp	Lj4799
Lj4798:
	jmp	Lj4783
Lj4799:
	incl	-12(%ebp)
Lj4796:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4795
	jmp	Lj4797
Lj4797:
	movl	$0,-12(%ebp)
	jmp	Lj4803
	.align 2
Lj4802:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	-24(%ebp),%eax
	je	Lj4805
	jmp	Lj4806
Lj4805:
	jmp	Lj4783
Lj4806:
	incl	-12(%ebp)
Lj4803:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj4802
	jmp	Lj4804
Lj4804:
	movl	L_RESSTR_DBCONST_SINVALIDBOOKMARK$non_lazy_ptr-Lj4784(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	jmp	Lj4809
Lj4786:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj4809:
Lj4783:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TARRAYBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,48(%edx)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__INITIALISEINDEX
_BUFDATASET_TARRAYBUFINDEX_$__INITIALISEINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4821
Lj4821:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-8(%ebp)
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF137$non_lazy_ptr-Lj4821(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	$-1,48(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,56(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__INITIALISESPARERECORD$PCHAR
_BUFDATASET_TARRAYBUFINDEX_$__INITIALISESPARERECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,56(%eax)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__RELEASESPARERECORD
_BUFDATASET_TARRAYBUFINDEX_$__RELEASESPARERECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4843
Lj4843:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-8(%ebp)
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF137$non_lazy_ptr-Lj4843(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT
_BUFDATASET_TARRAYBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT$stub
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR
_BUFDATASET_TARRAYBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4863
Lj4863:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	incl	56(%eax)
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	56(%ebx),%eax
	jle	Lj4864
	jmp	Lj4865
Lj4864:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF137$non_lazy_ptr-Lj4863(%esi),%edx
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj4865:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	56(%eax),%ecx
	movl	48(%edx),%eax
	subl	%eax,%ecx
	shll	$2,%ecx
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	incl	%eax
	leal	(%edx,%eax,4),%edx
	movl	-8(%ebp),%eax
	movl	52(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	leal	(%ebx,%eax,4),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	52(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	-8(%ebp),%eax
	incl	48(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK
_BUFDATASET_TARRAYBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	shll	$2,%ecx
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,4),%eax
	movl	-8(%ebp),%edx
	movl	52(%edx),%edx
	movl	-12(%ebp),%ebx
	leal	(%edx,%ebx,4),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	decl	56(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__BEGINUPDATE
_BUFDATASET_TARRAYBUFINDEX_$__BEGINUPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__ADDRECORD
_BUFDATASET_TARRAYBUFINDEX_$__ADDRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4905
Lj4905:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	incl	56(%eax)
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	56(%esi),%eax
	jle	Lj4910
	jmp	Lj4911
Lj4910:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	-4(%ebp),%edx
	movl	44(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF137$non_lazy_ptr-Lj4905(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj4911:
	movl	-4(%ebp),%eax
	movl	52(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TARRAYBUFINDEX_$__ENDUPDATE
_BUFDATASET_TARRAYBUFINDEX_$__ENDUPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDATAPACKETREADER_$__ROWSTATETOBYTE$TROWSTATE$$BYTE
_BUFDATASET_TDATAPACKETREADER_$__ROWSTATETOBYTE$TROWSTATE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-10(%ebp)
	testl	$1,-4(%ebp)
	jne	Lj4934
	jmp	Lj4935
Lj4934:
	movzbl	-10(%ebp),%eax
	incl	%eax
	movb	%al,-10(%ebp)
Lj4935:
	testl	$2,-4(%ebp)
	jne	Lj4938
	jmp	Lj4939
Lj4938:
	movzbl	-10(%ebp),%eax
	addl	$2,%eax
	movb	%al,-10(%ebp)
Lj4939:
	testl	$4,-4(%ebp)
	jne	Lj4942
	jmp	Lj4943
Lj4942:
	movzbl	-10(%ebp),%eax
	addl	$4,%eax
	movb	%al,-10(%ebp)
Lj4943:
	testl	$8,-4(%ebp)
	jne	Lj4946
	jmp	Lj4947
Lj4946:
	movzbl	-10(%ebp),%eax
	addl	$8,%eax
	movb	%al,-10(%ebp)
Lj4947:
	movb	-10(%ebp),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDATAPACKETREADER_$__BYTETOROWSTATE$BYTE$$TROWSTATE
_BUFDATASET_TDATAPACKETREADER_$__BYTETOROWSTATE$BYTE$$TROWSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-12(%ebp)
	movb	-4(%ebp),%al
	andb	$1,%al
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj4956
	jmp	Lj4957
Lj4956:
	movl	$1,%eax
	orl	-12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj4957:
	movb	-4(%ebp),%al
	andb	$2,%al
	movzbl	%al,%eax
	cmpl	$2,%eax
	je	Lj4960
	jmp	Lj4961
Lj4960:
	movl	$2,%eax
	orl	-12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj4961:
	movb	-4(%ebp),%al
	andb	$4,%al
	movzbl	%al,%eax
	cmpl	$4,%eax
	je	Lj4964
	jmp	Lj4965
Lj4964:
	movl	$4,%eax
	orl	-12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj4965:
	movb	-4(%ebp),%al
	andb	$8,%al
	movzbl	%al,%eax
	cmpl	$8,%eax
	je	Lj4968
	jmp	Lj4969
Lj4968:
	movl	$8,%eax
	orl	-12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj4969:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TDATAPACKETREADER_$__CREATE$TSTREAM$$TDATAPACKETREADER
_BUFDATASET_TDATAPACKETREADER_$__CREATE$TSTREAM$$TDATAPACKETREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4974
	jmp	Lj4975
Lj4974:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj4975:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4980
	jmp	Lj4981
Lj4980:
	jmp	Lj4972
Lj4981:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4984
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4988
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj4988:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4989
	call	LFPC_RERAISE$stub
Lj4989:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4995
	jmp	Lj4994
Lj4995:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4993
	jmp	Lj4994
Lj4993:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4994:
Lj4984:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4986
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4999
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5000
	jmp	Lj5001
Lj5000:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj5001:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4999:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4998
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4998:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4986
Lj4986:
Lj4972:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__LOADFIELDDEFS$TFIELDDEFS$LONGINT
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__LOADFIELDDEFS$TFIELDDEFS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj5007
Lj5007:
	popl	-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj5008
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	testb	%al,%al
	je	Lj5011
	jmp	Lj5012
Lj5011:
	movl	-68(%ebp),%edx
	movl	L_RESSTR_DBCONST_SSTREAMNOTRECOGNISED$non_lazy_ptr-Lj5007(%edx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
Lj5012:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READWORD$$WORD$stub
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movzwl	-14(%ebp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%edi
	jl	Lj5026
	decl	-20(%ebp)
	.align 2
Lj5027:
	incl	-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-68(%ebp),%eax
	movl	L_VMT_DB_TFIELDDEF$non_lazy_ptr-Lj5007(%eax),%edx
	movl	$0,%eax
	movl	-68(%ebp),%esi
	movl	L_VMT_DB_TFIELDDEF$non_lazy_ptr-Lj5007(%esi),%ebx
	call	*136(%ebx)
	movl	%eax,%esi
	movl	%esi,%ebx
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__READANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__READANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READWORD$$WORD$stub
	movw	%ax,%dx
	movzwl	%dx,%edx
	movl	%ebx,%eax
	call	L_DB_TFIELDDEF_$__SETSIZE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READWORD$$WORD$stub
	movw	%ax,%dx
	movzwl	%dx,%edx
	movl	%ebx,%eax
	call	L_DB_TFIELDDEF_$__SETDATATYPE$TFIELDTYPE$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READBYTE$$BYTE$stub
	movzbl	%al,%eax
	cmpl	$1,%eax
	je	Lj5066
	jmp	Lj5067
Lj5066:
	movl	$2,%edx
	orl	52(%ebx),%edx
	movl	%ebx,%eax
	call	L_DB_TFIELDDEF_$__SETATTRIBUTES$TFIELDATTRIBUTES$stub
Lj5067:
	cmpl	-20(%ebp),%edi
	jg	Lj5027
Lj5026:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-20(%ebp),%edx
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
Lj5008:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj5009
	call	LFPC_RERAISE$stub
Lj5009:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__STOREFIELDDEFS$TFIELDDEFS$LONGINT
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__STOREFIELDDEFS$TFIELDDEFS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj5083
Lj5083:
	popl	-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj5084
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	$13,%ecx
	movl	-64(%ebp),%edx
	movl	L_$BUFDATASET$_Ld5$non_lazy_ptr-Lj5083(%edx),%ebx
	leal	1(%ebx),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__WRITEWORD$WORD$stub
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj5100
	decl	-16(%ebp)
	.align 2
Lj5101:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%esi
	movl	%esi,%ebx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	24(%ebx),%edx
	call	L_CLASSES_TSTREAM_$__WRITEANSISTRING$ANSISTRING$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__WRITEANSISTRING$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	48(%ebx),%dx
	call	L_CLASSES_TSTREAM_$__WRITEWORD$WORD$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	28(%ebx),%dx
	call	L_CLASSES_TSTREAM_$__WRITEWORD$WORD$stub
	testl	$2,52(%ebx)
	jne	Lj5132
	jmp	Lj5133
Lj5132:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movb	$1,%dl
	call	L_CLASSES_TSTREAM_$__WRITEBYTE$BYTE$stub
	jmp	Lj5138
Lj5133:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movb	$0,%dl
	call	L_CLASSES_TSTREAM_$__WRITEBYTE$BYTE$stub
Lj5138:
	cmpl	-16(%ebp),%edi
	jg	Lj5101
Lj5100:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-16(%ebp),%edx
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj5084:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj5085
	call	LFPC_RERAISE$stub
Lj5085:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GETRECORDROWSTATE$LONGINT$$TROWSTATE
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GETRECORDROWSTATE$LONGINT$$TROWSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-13(%ebp),%edx
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movb	-13(%ebp),%dl
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_BUFDATASET_TDATAPACKETREADER_$__BYTETOROWSTATE$BYTE$$TROWSTATE$stub
	movl	%eax,-12(%ebp)
	movl	$0,%eax
	cmpl	-12(%ebp),%eax
	jne	Lj5165
	jmp	Lj5166
Lj5165:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	jmp	Lj5173
Lj5166:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj5173:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__FINALIZESTORERECORDS
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__FINALIZESTORERECORDS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GETCURRENTRECORD$$BOOLEAN
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GETCURRENTRECORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-6(%ebp),%edx
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	cmpl	$1,%eax
	je	Lj5182
	jmp	Lj5181
Lj5182:
	movb	-6(%ebp),%al
	cmpb	$254,%al
	je	Lj5180
	jmp	Lj5181
Lj5180:
	movb	$1,-5(%ebp)
	jmp	Lj5189
Lj5181:
	movb	$0,-5(%ebp)
Lj5189:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GOTONEXTRECORD
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GOTONEXTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__INITLOADRECORDS
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__INITLOADRECORDS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__RESTORERECORD$TCUSTOMBUFDATASET
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__RESTORERECORD$TCUSTOMBUFDATASET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	408(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__STORERECORD$TCUSTOMBUFDATASET$TROWSTATE$LONGINT
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__STORERECORD$TCUSTOMBUFDATASET$TROWSTATE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movb	$254,%dl
	call	L_CLASSES_TSTREAM_$__WRITEBYTE$BYTE$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_BUFDATASET_TDATAPACKETREADER_$__ROWSTATETOBYTE$TROWSTATE$$BYTE$stub
	movb	%al,%dl
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBYTE$BYTE$stub
	movl	$0,%eax
	cmpl	-8(%ebp),%eax
	jne	Lj5218
	jmp	Lj5219
Lj5218:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	8(%ebp),%edx
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj5219:
	movl	-4(%ebp),%eax
	call	L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	408(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__RECOGNIZESTREAM$TSTREAM$$BOOLEAN
_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__RECOGNIZESTREAM$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj5235
Lj5235:
	popl	%ebx
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
	jne	Lj5236
	movl	$13,-20(%ebp)
	movl	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	cmpl	-20(%ebp),%eax
	je	Lj5247
	jmp	Lj5246
Lj5247:
	movl	-16(%ebp),%eax
	movl	L_$BUFDATASET$_Ld6$non_lazy_ptr-Lj5235(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj5245
	jmp	Lj5246
Lj5245:
	movb	$1,-9(%ebp)
	jmp	Lj5262
Lj5246:
	movb	$0,-9(%ebp)
Lj5262:
Lj5236:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj5237
	call	LFPC_RERAISE$stub
Lj5237:
	movb	-9(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$12,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENTBUFFER$$POINTER
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENTBUFFER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENTRECORD$$PCHAR
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENTRECORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETISINITIALIZED$$BOOLEAN
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETISINITIALIZED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj5283
	jmp	Lj5284
Lj5283:
	movb	$1,-5(%ebp)
	jmp	Lj5285
Lj5284:
	movb	$0,-5(%ebp)
Lj5285:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETSPAREBUFFER$$PCHAR
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETSPAREBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETSPARERECORD$$PCHAR
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETSPARERECORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$3,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLFORWARD$$TGETRESULT
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLFORWARD$$TGETRESULT:
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
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENT$$TGETRESULT
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENT$$TGETRESULT:
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
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLFIRST$$TGETRESULT
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLFIRST$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$3,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLLAST
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5311
Lj5311:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr-Lj5311(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SETTOFIRSTRECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SETTOFIRSTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SETTOLASTRECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SETTOLASTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5317
Lj5317:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr-Lj5317(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORECURRENTRECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORECURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5321
Lj5321:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr-Lj5321(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__RESTORECURRENTRECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__RESTORECURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5325
Lj5325:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr-Lj5325(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN:
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
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__DOSCROLLFORWARD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__DOSCROLLFORWARD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj5339
Lj5339:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr-Lj5339(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INITIALISEINDEX
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INITIALISEINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INITIALISESPARERECORD$PCHAR
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INITIALISESPARERECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,36(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__RELEASESPARERECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__RELEASESPARERECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__BEGINUPDATE
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__BEGINUPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ADDRECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ADDRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj5363
Lj5363:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr-Lj5363(%ebx),%eax
	movl	4(%eax),%eax
	call	L_DB_DATABASEERROR$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ORDERCURRENTRECORD
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ORDERCURRENTRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ENDUPDATE
_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ENDUPDATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_INIT$_BUFDATASET
_INIT$_BUFDATASET:
.reference __BUFDATASET_init
.globl	__BUFDATASET_init
__BUFDATASET_init:
.reference _INIT$_BUFDATASET
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	$0,-4(%ebp)
	leal	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF385$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_BUFDATASET
_FINALIZE$_BUFDATASET:
.reference __BUFDATASET_finalize
.globl	__BUFDATASET_finalize
__BUFDATASET_finalize:
.reference _FINALIZE$_BUFDATASET
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5371
Lj5371:
	popl	%ebx
	movl	$0,-4(%ebp)
	leal	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_BUFDATASET_DEF385$non_lazy_ptr-Lj5371(%ebx),%edx
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj5371(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_INIT_BUFDATASET_DEF385$non_lazy_ptr-Lj5371(%ebx),%edx
	movl	L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr-Lj5371(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-8(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_BUFDATASET_REGISTEREDDATAPACKETREADERS
.data
.zerofill __DATA, __common, _U_BUFDATASET_REGISTEREDDATAPACKETREADERS, 4,2



.const_data
	.align 2
.globl	_$BUFDATASET$_Ld8
_$BUFDATASET$_Ld8:
	.byte	17
	.ascii	"TCustomBufDataset"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TCUSTOMBUFDATASET
_VMT_BUFDATASET_TCUSTOMBUFDATASET:
	.long	464,-464
	.long	_VMT_DB_TDBDATASET
	.long	_$BUFDATASET$_Ld8
	.long	0,0
	.long	_$BUFDATASET$_Ld9
	.long	_RTTI_BUFDATASET_TCUSTOMBUFDATASET
	.long	_INIT_BUFDATASET_TCUSTOMBUFDATASET
	.long	0,0,0
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DESTROY
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATE$TCOMPONENT$$TCUSTOMBUFDATASET
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CLEARCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__CLOSEBLOB$TFIELD
	.long	_DB_TDATASET_$__CLOSECURSOR
	.long	_DB_TDATASET_$__CREATEFIELDS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DOBEFORECLOSE
	.long	_DB_TDATASET_$__DOBEFOREDELETE
	.long	_DB_TDATASET_$__DOBEFOREEDIT
	.long	_DB_TDATASET_$__DOBEFOREINSERT
	.long	_DB_TDATASET_$__DOBEFOREOPEN
	.long	_DB_TDATASET_$__DOBEFOREPOST
	.long	_DB_TDATASET_$__DOBEFORESCROLL
	.long	_DB_TDATASET_$__DOBEFOREREFRESH
	.long	_DB_TDATASET_$__DOONCALCFIELDS
	.long	_DB_TDATASET_$__DOONNEWRECORD
	.long	_DB_TDATASET_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
	.long	_DB_TDATASET_$__FREEFIELDBUFFERS
	.long	_DB_TDATASET_$__GETBOOKMARKSTR$$ANSISTRING
	.long	_DB_TDATASET_$__GETCALCFIELDS$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCANMODIFY$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDCLASS$TFIELDTYPE$$TFIELDCLASS
	.long	_DB_TDATASET_$__GETFIELDVALUES$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__GETISINDEXFIELD$TFIELD$$BOOLEAN
	.long	_DB_TDATASET_$__GETNEXTRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETNEXTRECORD$$BOOLEAN
	.long	_DB_TDATASET_$__GETPRIORRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETPRIORRECORD$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDCOUNT$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECNO$$LONGINT
	.long	_DB_TDATASET_$__INITFIELDDEFS
	.long	_DB_TDATASET_$__INITRECORD$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCANCEL
	.long	_DB_TDATASET_$__INTERNALEDIT
	.long	_DB_TDATASET_$__INTERNALINSERT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALREFRESH
	.long	_DB_TDATASET_$__OPENCURSOR$BOOLEAN
	.long	_DB_TDATASET_$__OPENCURSORCOMPLETE
	.long	_DB_TDATASET_$__REFRESHINTERNALCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__SETACTIVE$BOOLEAN
	.long	_DB_TDATASET_$__SETBOOKMARKSTR$ANSISTRING
	.long	_DB_TDATASET_$__SETBUFLISTSIZE$LONGINT
	.long	_DB_TDATASET_$__SETCURRENTRECORD$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERED$BOOLEAN
	.long	_DB_TDATASET_$__SETFILTEROPTIONS$TFILTEROPTIONS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERTEXT$ANSISTRING
	.long	_DB_TDATASET_$__SETFIELDVALUES$ANSISTRING$VARIANT
	.long	_DB_TDATASET_$__SETFOUND$BOOLEAN
	.long	_DB_TDATASET_$__SETONFILTERRECORD$TFILTERRECORDEVENT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETRECNO$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATEINDEXDEFS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__ALLOCRECORDBUFFER$$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__FREERECORDBUFFER$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
	.long	_DB_TDATASET_$__GETDATASOURCE$$TDATASOURCE
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDSIZE$$WORD
	.long	_DB_TDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALDELETE
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALFIRST
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALGOTOBOOKMARK$POINTER
	.long	_DB_TDATASET_$__INTERNALHANDLEEXCEPTION
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALINITRECORD$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALLAST
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALPOST
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALSETTORECORD$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCLOSE
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALOPEN
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__ISCURSOROPEN$$BOOLEAN
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__CANCEL
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
	.long	_DB_TDATASET_$__DATACONVERT$TFIELD$POINTER$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__FINDFIRST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDLAST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDNEXT$$BOOLEAN
	.long	_DB_TDATASET_$__FINDPRIOR$$BOOLEAN
	.long	_DB_TDATASET_$__FREEBOOKMARK$POINTER
	.long	_DB_TDATASET_$__GETBOOKMARK$$POINTER
	.long	_DB_TDATASET_$__GETCURRENTRECORD$PCHAR$$BOOLEAN
	.long	_DB_TDATASET_$__ISSEQUENCED$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__POST
	.long	_DB_TDATASET_$__RESYNC$TRESYNCMODE
	.long	_DB_TDATASET_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATESTATUS$$TUPDATESTATUS
	.long	_DB_TDBDATASET_$__SETDATABASE$TDATABASE
	.long	_DB_TDBDATASET_$__SETTRANSACTION$TDBTRANSACTION
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCHANGECOUNT$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALADDINDEX$crcFE83B273
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYRECUPDATE$TUPDATEKIND
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__BEFOREREFRESHOPENCURSOR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DOFILTERRECORD$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETREADONLY$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__FETCH$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFIELD$TFIELDDEF$POINTER$BOOLEAN$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CANCELUPDATES
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__ADDINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$ANSISTRING$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld11
_$BUFDATASET$_Ld11:
	.byte	14
	.ascii	"TBufBlobStream"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TBUFBLOBSTREAM
_VMT_BUFDATASET_TBUFBLOBSTREAM:
	.long	16,-16
	.long	_VMT_CLASSES_TSTREAM
	.long	_$BUFDATASET$_Ld11
	.long	0,0
	.long	_$BUFDATASET$_Ld12
	.long	_RTTI_BUFDATASET_TBUFBLOBSTREAM
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
	.long	_CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_BUFDATASET_TBUFBLOBSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_BUFDATASET_TBUFBLOBSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_BUFDATASET_TBUFBLOBSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld14
_$BUFDATASET$_Ld14:
	.byte	9
	.ascii	"TBufIndex"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TBUFINDEX
_VMT_BUFDATASET_TBUFINDEX:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$BUFDATASET$_Ld14
	.long	0,0
	.long	_$BUFDATASET$_Ld15
	.long	_RTTI_BUFDATASET_TBUFINDEX
	.long	_INIT_BUFDATASET_TBUFINDEX
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TBUFINDEX_$__BOOKMARKVALID$PBUFBOOKMARK$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TBUFINDEX_$__COMPAREBOOKMARKS$PBUFBOOKMARK$PBUFBOOKMARK$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld17
_$BUFDATASET$_Ld17:
	.byte	21
	.ascii	"TDoubleLinkedBufIndex"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX
_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX:
	.long	60,-60
	.long	_VMT_BUFDATASET_TBUFINDEX
	.long	_$BUFDATASET$_Ld17
	.long	0,0
	.long	_$BUFDATASET$_Ld18
	.long	_RTTI_BUFDATASET_TDOUBLELINKEDBUFINDEX
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
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENTBUFFER$$POINTER
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENTRECORD$$PCHAR
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETISINITIALIZED$$BOOLEAN
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETSPAREBUFFER$$PCHAR
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETSPARERECORD$$PCHAR
	.long	_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLFORWARD$$TGETRESULT
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETCURRENT$$TGETRESULT
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLFIRST$$TGETRESULT
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SCROLLLAST
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SETTOFIRSTRECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__SETTOLASTRECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORECURRENTRECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__RESTORECURRENTRECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__DOSCROLLFORWARD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TBUFINDEX_$__BOOKMARKVALID$PBUFBOOKMARK$$BOOLEAN
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INITIALISEINDEX
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INITIALISESPARERECORD$PCHAR
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__RELEASESPARERECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__BEGINUPDATE
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ADDRECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ORDERCURRENTRECORD
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__ENDUPDATE
	.long	_BUFDATASET_TBUFINDEX_$__COMPAREBOOKMARKS$PBUFBOOKMARK$PBUFBOOKMARK$$BOOLEAN
	.long	_BUFDATASET_TDOUBLELINKEDBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld20
_$BUFDATASET$_Ld20:
	.byte	23
	.ascii	"TUniDirectionalBufIndex"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX
_VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX:
	.long	40,-40
	.long	_VMT_BUFDATASET_TBUFINDEX
	.long	_$BUFDATASET$_Ld20
	.long	0,0
	.long	_$BUFDATASET$_Ld21
	.long	_RTTI_BUFDATASET_TUNIDIRECTIONALBUFINDEX
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
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENTBUFFER$$POINTER
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENTRECORD$$PCHAR
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETISINITIALIZED$$BOOLEAN
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETSPAREBUFFER$$PCHAR
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETSPARERECORD$$PCHAR
	.long	_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLFORWARD$$TGETRESULT
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETCURRENT$$TGETRESULT
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLFIRST$$TGETRESULT
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SCROLLLAST
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SETTOFIRSTRECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__SETTOLASTRECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORECURRENTRECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__RESTORECURRENTRECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__DOSCROLLFORWARD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TBUFINDEX_$__BOOKMARKVALID$PBUFBOOKMARK$$BOOLEAN
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INITIALISEINDEX
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INITIALISESPARERECORD$PCHAR
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__RELEASESPARERECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__BEGINUPDATE
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ADDRECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ORDERCURRENTRECORD
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__ENDUPDATE
	.long	_BUFDATASET_TBUFINDEX_$__COMPAREBOOKMARKS$PBUFBOOKMARK$PBUFBOOKMARK$$BOOLEAN
	.long	_BUFDATASET_TUNIDIRECTIONALBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld23
_$BUFDATASET$_Ld23:
	.byte	14
	.ascii	"TArrayBufIndex"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TARRAYBUFINDEX
_VMT_BUFDATASET_TARRAYBUFINDEX:
	.long	64,-64
	.long	_VMT_BUFDATASET_TBUFINDEX
	.long	_$BUFDATASET$_Ld23
	.long	0,0
	.long	_$BUFDATASET$_Ld24
	.long	_RTTI_BUFDATASET_TARRAYBUFINDEX
	.long	_INIT_BUFDATASET_TARRAYBUFINDEX
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
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETBOOKMARKSIZE$$LONGINT
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENTBUFFER$$POINTER
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENTRECORD$$PCHAR
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETISINITIALIZED$$BOOLEAN
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETSPAREBUFFER$$PCHAR
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETSPARERECORD$$PCHAR
	.long	_BUFDATASET_TARRAYBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TARRAYBUFINDEX
	.long	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLBACKWARD$$TGETRESULT
	.long	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLFORWARD$$TGETRESULT
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETCURRENT$$TGETRESULT
	.long	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLFIRST$$TGETRESULT
	.long	_BUFDATASET_TARRAYBUFINDEX_$__SCROLLLAST
	.long	_BUFDATASET_TARRAYBUFINDEX_$__SETTOFIRSTRECORD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__SETTOLASTRECORD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__STORECURRENTRECORD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__RESTORECURRENTRECORD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__CANSCROLLFORWARD$$BOOLEAN
	.long	_BUFDATASET_TARRAYBUFINDEX_$__DOSCROLLFORWARD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__STORECURRENTRECINTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TARRAYBUFINDEX_$__STORESPARERECINTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GOTOBOOKMARK$PBUFBOOKMARK
	.long	_BUFDATASET_TBUFINDEX_$__BOOKMARKVALID$PBUFBOOKMARK$$BOOLEAN
	.long	_BUFDATASET_TARRAYBUFINDEX_$__INITIALISEINDEX
	.long	_BUFDATASET_TARRAYBUFINDEX_$__INITIALISESPARERECORD$PCHAR
	.long	_BUFDATASET_TARRAYBUFINDEX_$__RELEASESPARERECORD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__BEGINUPDATE
	.long	_BUFDATASET_TARRAYBUFINDEX_$__ADDRECORD
	.long	_BUFDATASET_TARRAYBUFINDEX_$__INSERTRECORDBEFORECURRENTRECORD$PCHAR
	.long	_BUFDATASET_TARRAYBUFINDEX_$__REMOVERECORDFROMINDEX$TBUFBOOKMARK
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TARRAYBUFINDEX_$__ENDUPDATE
	.long	_BUFDATASET_TBUFINDEX_$__COMPAREBOOKMARKS$PBUFBOOKMARK$PBUFBOOKMARK$$BOOLEAN
	.long	_BUFDATASET_TARRAYBUFINDEX_$__GETRECNO$PBUFBOOKMARK$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld26
_$BUFDATASET$_Ld26:
	.byte	17
	.ascii	"TDataPacketReader"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TDATAPACKETREADER
_VMT_BUFDATASET_TDATAPACKETREADER:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$BUFDATASET$_Ld26
	.long	0,0
	.long	_$BUFDATASET$_Ld27
	.long	_RTTI_BUFDATASET_TDATAPACKETREADER
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
	.long	_BUFDATASET_TDATAPACKETREADER_$__CREATE$TSTREAM$$TDATAPACKETREADER
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
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
.globl	_$BUFDATASET$_Ld29
_$BUFDATASET$_Ld29:
	.byte	26
	.ascii	"TFpcBinaryDatapacketReader"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER
_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER:
	.long	8,-8
	.long	_VMT_BUFDATASET_TDATAPACKETREADER
	.long	_$BUFDATASET$_Ld29
	.long	0,0
	.long	_$BUFDATASET$_Ld30
	.long	_RTTI_BUFDATASET_TFPCBINARYDATAPACKETREADER
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
	.long	_BUFDATASET_TDATAPACKETREADER_$__CREATE$TSTREAM$$TDATAPACKETREADER
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__LOADFIELDDEFS$TFIELDDEFS$LONGINT
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__INITLOADRECORDS
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GETRECORDROWSTATE$LONGINT$$TROWSTATE
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GETCURRENTRECORD$$BOOLEAN
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__RESTORERECORD$TCUSTOMBUFDATASET
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__GOTONEXTRECORD
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__STOREFIELDDEFS$TFIELDDEFS$LONGINT
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__STORERECORD$TCUSTOMBUFDATASET$TROWSTATE$LONGINT
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__FINALIZESTORERECORDS
	.long	_BUFDATASET_TFPCBINARYDATAPACKETREADER_$__RECOGNIZESTREAM$TSTREAM$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld32
_$BUFDATASET$_Ld32:
	.byte	11
	.ascii	"TBufDataset"

.const_data
	.align 2
.globl	_VMT_BUFDATASET_TBUFDATASET
_VMT_BUFDATASET_TBUFDATASET:
	.long	464,-464
	.long	_VMT_BUFDATASET_TCUSTOMBUFDATASET
	.long	_$BUFDATASET$_Ld32
	.long	0,0
	.long	_$BUFDATASET$_Ld33
	.long	_RTTI_BUFDATASET_TBUFDATASET
	.long	0,0,0,0
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DESTROY
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATE$TCOMPONENT$$TCUSTOMBUFDATASET
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CLEARCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__CLOSEBLOB$TFIELD
	.long	_DB_TDATASET_$__CLOSECURSOR
	.long	_DB_TDATASET_$__CREATEFIELDS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DOBEFORECLOSE
	.long	_DB_TDATASET_$__DOBEFOREDELETE
	.long	_DB_TDATASET_$__DOBEFOREEDIT
	.long	_DB_TDATASET_$__DOBEFOREINSERT
	.long	_DB_TDATASET_$__DOBEFOREOPEN
	.long	_DB_TDATASET_$__DOBEFOREPOST
	.long	_DB_TDATASET_$__DOBEFORESCROLL
	.long	_DB_TDATASET_$__DOBEFOREREFRESH
	.long	_DB_TDATASET_$__DOONCALCFIELDS
	.long	_DB_TDATASET_$__DOONNEWRECORD
	.long	_DB_TDATASET_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
	.long	_DB_TDATASET_$__FREEFIELDBUFFERS
	.long	_DB_TDATASET_$__GETBOOKMARKSTR$$ANSISTRING
	.long	_DB_TDATASET_$__GETCALCFIELDS$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCANMODIFY$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDCLASS$TFIELDTYPE$$TFIELDCLASS
	.long	_DB_TDATASET_$__GETFIELDVALUES$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__GETISINDEXFIELD$TFIELD$$BOOLEAN
	.long	_DB_TDATASET_$__GETNEXTRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETNEXTRECORD$$BOOLEAN
	.long	_DB_TDATASET_$__GETPRIORRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETPRIORRECORD$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDCOUNT$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECNO$$LONGINT
	.long	_DB_TDATASET_$__INITFIELDDEFS
	.long	_DB_TDATASET_$__INITRECORD$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCANCEL
	.long	_DB_TDATASET_$__INTERNALEDIT
	.long	_DB_TDATASET_$__INTERNALINSERT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALREFRESH
	.long	_DB_TDATASET_$__OPENCURSOR$BOOLEAN
	.long	_DB_TDATASET_$__OPENCURSORCOMPLETE
	.long	_DB_TDATASET_$__REFRESHINTERNALCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__SETACTIVE$BOOLEAN
	.long	_DB_TDATASET_$__SETBOOKMARKSTR$ANSISTRING
	.long	_DB_TDATASET_$__SETBUFLISTSIZE$LONGINT
	.long	_DB_TDATASET_$__SETCURRENTRECORD$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERED$BOOLEAN
	.long	_DB_TDATASET_$__SETFILTEROPTIONS$TFILTEROPTIONS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFILTERTEXT$ANSISTRING
	.long	_DB_TDATASET_$__SETFIELDVALUES$ANSISTRING$VARIANT
	.long	_DB_TDATASET_$__SETFOUND$BOOLEAN
	.long	_DB_TDATASET_$__SETONFILTERRECORD$TFILTERRECORDEVENT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETRECNO$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATEINDEXDEFS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__ALLOCRECORDBUFFER$$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__FREERECORDBUFFER$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
	.long	_DB_TDATASET_$__GETDATASOURCE$$TDATASOURCE
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDSIZE$$WORD
	.long	_DB_TDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALDELETE
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALFIRST
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALGOTOBOOKMARK$POINTER
	.long	_DB_TDATASET_$__INTERNALHANDLEEXCEPTION
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALINITRECORD$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALLAST
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALPOST
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALSETTORECORD$PCHAR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALCLOSE
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALOPEN
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__ISCURSOROPEN$$BOOLEAN
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
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__CANCEL
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
	.long	_DB_TDATASET_$__DATACONVERT$TFIELD$POINTER$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__FINDFIRST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDLAST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDNEXT$$BOOLEAN
	.long	_DB_TDATASET_$__FINDPRIOR$$BOOLEAN
	.long	_DB_TDATASET_$__FREEBOOKMARK$POINTER
	.long	_DB_TDATASET_$__GETBOOKMARK$$POINTER
	.long	_DB_TDATASET_$__GETCURRENTRECORD$PCHAR$$BOOLEAN
	.long	_DB_TDATASET_$__ISSEQUENCED$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__POST
	.long	_DB_TDATASET_$__RESYNC$TRESYNCMODE
	.long	_DB_TDATASET_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__UPDATESTATUS$$TUPDATESTATUS
	.long	_DB_TDBDATASET_$__SETDATABASE$TDATABASE
	.long	_DB_TDBDATASET_$__SETTRANSACTION$TDBTRANSACTION
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETCHANGECOUNT$$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__INTERNALADDINDEX$crcFE83B273
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYRECUPDATE$TUPDATEKIND
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__BEFOREREFRESHOPENCURSOR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__DOFILTERRECORD$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETREADONLY$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__FETCH$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFIELD$TFIELDDEF$POINTER$BOOLEAN$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__APPLYUPDATES$LONGINT
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__CANCELUPDATES
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__ADDINDEX$ANSISTRING$ANSISTRING$TINDEXOPTIONS$ANSISTRING$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_BUFDATASET
_THREADVARLIST_BUFDATASET:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld2
_$BUFDATASET$_Ld2:
	.short	0,1
	.long	0,-1,9
.reference _$BUFDATASET$_Ld1
.globl	_$BUFDATASET$_Ld1
_$BUFDATASET$_Ld1:
.reference _$BUFDATASET$_Ld2
	.ascii	"No record\000"

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld4
_$BUFDATASET$_Ld4:
	.short	0,1
	.long	0,-1,13
.reference _$BUFDATASET$_Ld3
.globl	_$BUFDATASET$_Ld3
_$BUFDATASET$_Ld3:
.reference _$BUFDATASET$_Ld4
	.ascii	"DEFAULT_ORDER\000"

.const
	.align 2
.globl	_$BUFDATASET$_Ld5
_$BUFDATASET$_Ld5:
	.ascii	"\015BinBufDataset\000"

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld7
_$BUFDATASET$_Ld7:
	.short	0,1
	.long	0,-1,13
.reference _$BUFDATASET$_Ld6
.globl	_$BUFDATASET$_Ld6
_$BUFDATASET$_Ld6:
.reference _$BUFDATASET$_Ld7
	.ascii	"BinBufDataset\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

Lfpc_pchar_length$stub:
.indirect_symbol fpc_pchar_length
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

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
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

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pwidechar_length$stub:
.indirect_symbol fpc_pwidechar_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pwidechar_to_ansistr$stub:
.indirect_symbol fpc_pwidechar_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING
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

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pwidechar_to_unicodestr$stub:
.indirect_symbol fpc_pwidechar_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub:
.indirect_symbol _FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_INCR_REF$stub:
.indirect_symbol FPC_DYNARRAY_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_DECR_REF$stub:
.indirect_symbol FPC_DYNARRAY_DECR_REF
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

L_DB_DATABASEERROR$ANSISTRING$stub:
.indirect_symbol _DB_DATABASEERROR$ANSISTRING
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDBDATASET_$__DESTROY$stub:
.indirect_symbol _DB_TDBDATASET_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETNEXTPACKET$$LONGINT
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

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
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

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__PROCESSFIELDSTOCOMPARESTRUCT$crc08BA7DC3$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__PROCESSFIELDSTOCOMPARESTRUCT$crc08BA7DC3
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

L_BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64$stub:
.indirect_symbol _BUFDATASET_INDEXCOMPARERECORDS$POINTER$POINTER$TDBCOMPARESTRUCT$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$_BUILDINDEX$TBUFINDEX_PLACENEWREC$PBUFRECLINKITEM$LONGINT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$_BUILDINDEX$TBUFINDEX_PLACENEWREC$PBUFRECLINKITEM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEX$TBUFINDEX
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

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TINDEXDEFS_$__ADDINDEXDEF$$TINDEXDEF$stub:
.indirect_symbol _DB_TINDEXDEFS_$__ADDINDEXDEF$$TINDEXDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TINDEXDEF_$__SETDESCFIELDS$ANSISTRING$stub:
.indirect_symbol _DB_TINDEXDEF_$__SETDESCFIELDS$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETBUFUNIDIRECTIONAL$$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETBUFUNIDIRECTIONAL$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__BUFFEROFFSET$$LONGINT
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

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLBYTE$formal$LONGINT$BYTE
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

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETPACKETREADER$TDATAPACKETFORMAT$TSTREAM$$TDATAPACKETREADER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETPACKETREADER$TDATAPACKETFORMAT$TSTREAM$$TDATAPACKETREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADFIELDDEFSFROMFILE$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADFIELDDEFSFROMFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDS_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _DB_TFIELDS_$__GETCOUNT$$LONGINT
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__INITDEFAULTINDEXES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__CALCRECORDSIZE$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__CALCRECORDSIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__INTALLOCRECORDBUFFER$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__PARSEFILTER$ANSISTRING$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__PARSEFILTER$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADRECORDSFROMFILE$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__INTLOADRECORDSFROMFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__FREEBLOBBUFFER$PBLOBBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__FETCHALL
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETUNIDIRECTIONAL$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__SETUNIDIRECTIONAL$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__CURRENTRECORDTOBUFFER$PCHAR$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__CURRENTRECORDTOBUFFER$PCHAR
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

L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__RESTORESTATE$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__DOBEFORECLOSE$stub:
.indirect_symbol _DB_TDATASET_$__DOBEFORECLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOFILE$ANSISTRING$TDATAPACKETFORMAT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOFILE$ANSISTRING$TDATAPACKETFORMAT
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

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFERCACHED$TBUFBOOKMARK$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFERCACHED$TBUFBOOKMARK$BOOLEAN$$BOOLEAN
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

L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$stub:
.indirect_symbol _DB_DATABASEERRORFMT$ANSISTRING$array_of_const
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

L_DB_TDATASET_$__CHECKBIDIRECTIONAL$stub:
.indirect_symbol _DB_TDATASET_$__CHECKBIDIRECTIONAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXNAME$ANSISTRING$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__LOADBUFFER$PCHAR$$TGETRESULT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__LOADBUFFER$PCHAR$$TGETRESULT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETRECORDUPDATEBUFFER$TBUFBOOKMARK$BOOLEAN$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEXES$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__BUILDINDEXES
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

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
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

L_BUFDATASET_SETFIELDISNULL$PBYTE$LONGINT$stub:
.indirect_symbol _BUFDATASET_SETFIELDISNULL$PBYTE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWBLOBBUFFER$$PBLOBBUFFER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWBLOBBUFFER$$PBLOBBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETFIELDSIZE$TFIELDDEF$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETACTIVERECORDUPDATEBUFFER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETCURRENTBUFFER$$PCHAR
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

L_DB_TFIELD_$__GETDISPLAYNAME$$ANSISTRING$stub:
.indirect_symbol _DB_TFIELD_$__GETDISPLAYNAME$$ANSISTRING
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

L_BUFDATASET_UNSETFIELDISNULL$PBYTE$LONGINT$stub:
.indirect_symbol _BUFDATASET_UNSETFIELDISNULL$PBYTE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__REMOVERECORDFROMINDEXES$TBUFBOOKMARK$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__REMOVERECORDFROMINDEXES$TBUFBOOKMARK
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

L_DB_TDATASET_$__CHECKBROWSEMODE$stub:
.indirect_symbol _DB_TDATASET_$__CHECKBROWSEMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$_CANCELUPDATES_CANCELUPDBUFFER$TRECUPDATEBUFFER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$_CANCELUPDATES_CANCELUPDBUFFER$TRECUPDATEBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__DISABLECONTROLS$stub:
.indirect_symbol _DB_TDATASET_$__DISABLECONTROLS
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

L_SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER$stub:
.indirect_symbol _SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_EUPDATEERROR_$__CREATE$ANSISTRING$ANSISTRING$LONGINT$LONGINT$EXCEPTION$$EUPDATEERROR$stub:
.indirect_symbol _DB_EUPDATEERROR_$__CREATE$ANSISTRING$ANSISTRING$LONGINT$LONGINT$EXCEPTION$$EUPDATEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__MERGECHANGELOG$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__MERGECHANGELOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ENABLECONTROLS$stub:
.indirect_symbol _DB_TDATASET_$__ENABLECONTROLS
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

L_DB_TDATASET_$__INTERNALPOST$stub:
.indirect_symbol _DB_TDATASET_$__INTERNALPOST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_GETREGISTERDATAPACKETREADER$crcFDA0C343$stub:
.indirect_symbol _BUFDATASET_GETREGISTERDATAPACKETREADER$crcFDA0C343
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

L_DB_TDATASET_$__GOTOBOOKMARK$POINTER$stub:
.indirect_symbol _DB_TDATASET_$__GOTOBOOKMARK$POINTER
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

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
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

L_DB_TFIELD_$__GETDATA$POINTER$$BOOLEAN$stub:
.indirect_symbol _DB_TFIELD_$__GETDATA$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWWRITEBLOBBUFFER$$PBLOBBUFFER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETNEWWRITEBLOBBUFFER$$PBLOBBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TBUFBLOBSTREAM_$__CREATE$TBLOBFIELD$TBLOBSTREAMMODE$$TBUFBLOBSTREAM$stub:
.indirect_symbol _BUFDATASET_TBUFBLOBSTREAM_$__CREATE$TBLOBFIELD$TBLOBSTREAMMODE$$TBUFBLOBSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_DATABASEERRORFMT$ANSISTRING$array_of_const$TCOMPONENT$stub:
.indirect_symbol _DB_DATABASEERRORFMT$ANSISTRING$array_of_const$TCOMPONENT
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

L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_HANDLEUPDATEBUFFERSFROMRECORD$crc65D407A7
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$_GETDATASETPACKET$TDATAPACKETREADER_STOREUPDATEBUFFER$crc6501A7C9
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__SETDATASETPACKET$TDATAPACKETREADER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__SETDATASETPACKET$TDATAPACKETREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__GETDATASETPACKET$TDATAPACKETREADER$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__GETDATASETPACKET$TDATAPACKETREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMSTREAM$TSTREAM$TDATAPACKETFORMAT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__LOADFROMSTREAM$TSTREAM$TDATAPACKETFORMAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOSTREAM$TSTREAM$TDATAPACKETFORMAT$stub:
.indirect_symbol _BUFDATASET_TCUSTOMBUFDATASET_$__SAVETOSTREAM$TSTREAM$TDATAPACKETFORMAT
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

L_DB_TDATASET_$__INITFIELDDEFSFROMFIELDS$stub:
.indirect_symbol _DB_TDATASET_$__INITFIELDDEFSFROMFIELDS
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
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

L_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING$stub:
.indirect_symbol _DB_TDATASET_$__SETFILTERTEXT$ANSISTRING
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

L_DB_TDATASET_$__SETDEFAULTFIELDS$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__SETDEFAULTFIELDS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT$stub:
.indirect_symbol _DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__CREATE$TDATASET$$TBUFDATASETPARSER$stub:
.indirect_symbol _BUFDATASET_PARSER_TBUFDATASETPARSER_$__CREATE$TDATASET$$TBUFDATASETPARSER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETPARTIALMATCH$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETPARTIALMATCH$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETCASEINSENSITIVE$BOOLEAN$stub:
.indirect_symbol _BUFDATASET_PARSER_TBUFDATASETPARSER_$__SETCASEINSENSITIVE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
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

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
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

L_BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX$stub:
.indirect_symbol _BUFDATASET_TBUFINDEX_$__CREATE$TCUSTOMBUFDATASET$$TBUFINDEX
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT$stub:
.indirect_symbol _BUFDATASET_TARRAYBUFINDEX_$__GETRECORDFROMBOOKMARK$TBUFBOOKMARK$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READWORD$$WORD$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READWORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READANSISTRING$$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEF_$__SETSIZE$LONGINT$stub:
.indirect_symbol _DB_TFIELDDEF_$__SETSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEF_$__SETDATATYPE$TFIELDTYPE$stub:
.indirect_symbol _DB_TFIELDDEF_$__SETDATATYPE$TFIELDTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBYTE$$BYTE$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBYTE$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEF_$__SETATTRIBUTES$TFIELDATTRIBUTES$stub:
.indirect_symbol _DB_TFIELDDEF_$__SETATTRIBUTES$TFIELDATTRIBUTES
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

L_CLASSES_TSTREAM_$__WRITEWORD$WORD$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEWORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEANSISTRING$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEANSISTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEBYTE$BYTE$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBYTE$BYTE
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

L_BUFDATASET_TDATAPACKETREADER_$__BYTETOROWSTATE$BYTE$$TROWSTATE$stub:
.indirect_symbol _BUFDATASET_TDATAPACKETREADER_$__BYTETOROWSTATE$BYTE$$TROWSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BUFDATASET_TDATAPACKETREADER_$__ROWSTATETOBYTE$TROWSTATE$$BYTE$stub:
.indirect_symbol _BUFDATASET_TDATAPACKETREADER_$__ROWSTATETOBYTE$TROWSTATE$$BYTE
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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
.globl	_INIT_BUFDATASET_TDBCOMPAREREC
_INIT_BUFDATASET_TDBCOMPAREREC:
	.byte	13,13
	.ascii	"TDBCompareRec"
	.long	36,0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TDBCOMPARESTRUCT
_INIT_BUFDATASET_TDBCOMPARESTRUCT:
	.byte	21
	.ascii	"\020TDBCompareStruct"
	.long	36
	.long	_INIT_BUFDATASET_TDBCOMPAREREC
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBUFINDEX
_INIT_BUFDATASET_TBUFINDEX:
	.byte	15,9
	.ascii	"TBufIndex"
	.long	4,5
	.long	_INIT_BUFDATASET_TDBCOMPARESTRUCT
	.long	8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF197
_INIT_BUFDATASET_DEF197:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_BUFDATASET_TBUFINDEX
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF198
_INIT_BUFDATASET_DEF198:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PBLOBBUFFER
_INIT_BUFDATASET_PBLOBBUFFER:
	.byte	0
	.ascii	"\013PBlobBuffer"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF199
_INIT_BUFDATASET_DEF199:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_BUFDATASET_PBLOBBUFFER
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF200
_INIT_BUFDATASET_DEF200:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_BUFDATASET_PBLOBBUFFER
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF564
_INIT_BUFDATASET_DEF564:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF621
_INIT_BUFDATASET_DEF621:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF681
_INIT_BUFDATASET_DEF681:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld9
_$BUFDATASET$_Ld9:
	.short	0
	.long	_$BUFDATASET$_Ld10
	.align 2
.globl	_$BUFDATASET$_Ld10
_$BUFDATASET$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TRECUPDATEBUFFER
_INIT_BUFDATASET_TRECUPDATEBUFFER:
	.byte	13,16
	.ascii	"TRecUpdateBuffer"
	.long	32,0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TRECORDSUPDATEBUFFER
_INIT_BUFDATASET_TRECORDSUPDATEBUFFER:
	.byte	21
	.ascii	"\024TRecordsUpdateBuffer"
	.long	32
	.long	_INIT_BUFDATASET_TRECUPDATEBUFFER
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TCUSTOMBUFDATASET
_INIT_BUFDATASET_TCUSTOMBUFDATASET:
	.byte	15,17
	.ascii	"TCustomBufDataset"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	356
	.long	_INIT_BUFDATASET_DEF197
	.long	372
	.long	_INIT_BUFDATASET_TRECORDSUPDATEBUFFER
	.long	416
	.long	_INIT_BUFDATASET_DEF198
	.long	440
	.long	_INIT_BUFDATASET_DEF199
	.long	456
	.long	_INIT_BUFDATASET_DEF200
	.long	460

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TRESOLVERERROREVENT
_RTTI_BUFDATASET_TRESOLVERERROREVENT:
	.byte	6,19
	.ascii	"TResolverErrorEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,7
	.ascii	"DataSet"
	.ascii	"\021TCustomBufDataset"
	.byte	8,1
	.ascii	"E"
	.ascii	"\014EUpdateError"
	.byte	0,10
	.ascii	"UpdateKind"
	.ascii	"\013TUpdateKind"
	.byte	1,8
	.ascii	"Response"
	.ascii	"\021TResolverResponse"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_BUFDATASET_TCUSTOMBUFDATASET
	.long	_RTTI_DB_EUPDATEERROR
	.long	_RTTI_DB_TUPDATEKIND
	.long	_RTTI_DB_TRESOLVERRESPONSE

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TCUSTOMBUFDATASET
_RTTI_BUFDATASET_TCUSTOMBUFDATASET:
	.byte	15,17
	.ascii	"TCustomBufDataset"
	.long	_VMT_BUFDATASET_TCUSTOMBUFDATASET
	.long	_RTTI_DB_TDBDATASET
	.short	9
	.byte	10
	.ascii	"BufDataset"
	.short	7
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	356,356,1,0,-2147483648
	.short	2
	.byte	48,8
	.ascii	"FileName"
	.long	_RTTI_SYSTEM_LONGINT
	.long	404
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETPACKETRECORDS$LONGINT
	.long	1,0,10
	.short	3
	.byte	52,13
	.ascii	"PacketRecords"
	.long	_RTTI_BUFDATASET_TRESOLVERERROREVENT
	.long	448
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETONUPDATEERROR$TRESOLVERERROREVENT
	.long	1,0,-2147483648
	.short	4
	.byte	52,13
	.ascii	"OnUpdateError"
	.long	_RTTI_DB_TINDEXDEFS
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXDEFS$$TINDEXDEFS
	.long	0,1,0,-2147483648
	.short	5
	.byte	61,9
	.ascii	"IndexDefs"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXNAME$$ANSISTRING
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXNAME$ANSISTRING
	.long	1,0,-2147483648
	.short	6
	.byte	53,9
	.ascii	"IndexName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETINDEXFIELDNAMES$$ANSISTRING
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETINDEXFIELDNAMES$ANSISTRING
	.long	1,0,-2147483648
	.short	7
	.byte	53,15
	.ascii	"IndexFieldNames"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__GETBUFUNIDIRECTIONAL$$BOOLEAN
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETBUFUNIDIRECTIONAL$BOOLEAN
	.long	1,0,0
	.short	8
	.byte	53,14
	.ascii	"UniDirectional"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TRESOLVERERROREVENT
_INIT_BUFDATASET_TRESOLVERERROREVENT:
	.byte	6,19
	.ascii	"TResolverErrorEvent"
	.byte	0,5,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,7
	.ascii	"DataSet"
	.ascii	"\021TCustomBufDataset"
	.byte	8,1
	.ascii	"E"
	.ascii	"\014EUpdateError"
	.byte	0,10
	.ascii	"UpdateKind"
	.ascii	"\013TUpdateKind"
	.byte	1,8
	.ascii	"Response"
	.ascii	"\021TResolverResponse"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_BUFDATASET_TCUSTOMBUFDATASET
	.long	_RTTI_DB_EUPDATEERROR
	.long	_RTTI_DB_TUPDATEKIND
	.long	_RTTI_DB_TRESOLVERRESPONSE

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PBLOBBUFFER
_RTTI_BUFDATASET_PBLOBBUFFER:
	.byte	0
	.ascii	"\013PBlobBuffer"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBLOBBUFFER
_INIT_BUFDATASET_TBLOBBUFFER:
	.byte	13,11
	.ascii	"TBlobBuffer"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBLOBBUFFER
_RTTI_BUFDATASET_TBLOBBUFFER:
	.byte	13,11
	.ascii	"TBlobBuffer"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld12
_$BUFDATASET$_Ld12:
	.short	0
	.long	_$BUFDATASET$_Ld13
	.align 2
.globl	_$BUFDATASET$_Ld13
_$BUFDATASET$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBUFBLOBSTREAM
_INIT_BUFDATASET_TBUFBLOBSTREAM:
	.byte	15,14
	.ascii	"TBufBlobStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBUFBLOBSTREAM
_RTTI_BUFDATASET_TBUFBLOBSTREAM:
	.byte	15,14
	.ascii	"TBufBlobStream"
	.long	_VMT_BUFDATASET_TBUFBLOBSTREAM
	.long	_RTTI_CLASSES_TSTREAM
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PBUFRECLINKITEM
_INIT_BUFDATASET_PBUFRECLINKITEM:
	.byte	0
	.ascii	"\017PBufRecLinkItem"

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PBUFRECLINKITEM
_RTTI_BUFDATASET_PBUFRECLINKITEM:
	.byte	0
	.ascii	"\017PBufRecLinkItem"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBUFRECLINKITEM
_INIT_BUFDATASET_TBUFRECLINKITEM:
	.byte	13,15
	.ascii	"TBufRecLinkItem"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBUFRECLINKITEM
_RTTI_BUFDATASET_TBUFRECLINKITEM:
	.byte	13,15
	.ascii	"TBufRecLinkItem"
	.long	8,2
	.long	_RTTI_BUFDATASET_PBUFRECLINKITEM
	.long	0
	.long	_RTTI_BUFDATASET_PBUFRECLINKITEM
	.long	4

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PBUFBOOKMARK
_INIT_BUFDATASET_PBUFBOOKMARK:
	.byte	0
	.ascii	"\014PBufBookmark"

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PBUFBOOKMARK
_RTTI_BUFDATASET_PBUFBOOKMARK:
	.byte	0
	.ascii	"\014PBufBookmark"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBUFBOOKMARK
_INIT_BUFDATASET_TBUFBOOKMARK:
	.byte	13,12
	.ascii	"TBufBookmark"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBUFBOOKMARK
_RTTI_BUFDATASET_TBUFBOOKMARK:
	.byte	13,12
	.ascii	"TBufBookmark"
	.long	12,3
	.long	_RTTI_BUFDATASET_PBUFRECLINKITEM
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_DB_TBOOKMARKFLAG
	.long	8

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TRECUPDATEBUFFER
_RTTI_BUFDATASET_TRECUPDATEBUFFER:
	.byte	13,16
	.ascii	"TRecUpdateBuffer"
	.long	32,4
	.long	_RTTI_DB_TUPDATEKIND
	.long	0
	.long	_RTTI_BUFDATASET_TBUFBOOKMARK
	.long	4
	.long	_RTTI_BUFDATASET_TBUFBOOKMARK
	.long	16
	.long	_RTTI_SYSTEM_PCHAR
	.long	28

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TRECORDSUPDATEBUFFER
_RTTI_BUFDATASET_TRECORDSUPDATEBUFFER:
	.byte	21
	.ascii	"\024TRecordsUpdateBuffer"
	.long	32
	.long	_RTTI_BUFDATASET_TRECUPDATEBUFFER
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_PBUFBLOBFIELD
_INIT_BUFDATASET_PBUFBLOBFIELD:
	.byte	0
	.ascii	"\015PBufBlobField"

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_PBUFBLOBFIELD
_RTTI_BUFDATASET_PBUFBLOBFIELD:
	.byte	0
	.ascii	"\015PBufBlobField"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBUFBLOBFIELD
_INIT_BUFDATASET_TBUFBLOBFIELD:
	.byte	13,13
	.ascii	"TBufBlobField"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_DEF17
_RTTI_BUFDATASET_DEF17:
	.byte	12
	.ascii	"\000"
	.long	1,12
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBUFBLOBFIELD
_RTTI_BUFDATASET_TBUFBLOBFIELD:
	.byte	13,13
	.ascii	"TBufBlobField"
	.long	16,2
	.long	_RTTI_BUFDATASET_DEF17
	.long	0
	.long	_RTTI_BUFDATASET_PBLOBBUFFER
	.long	12

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TCOMPAREFUNC
_INIT_BUFDATASET_TCOMPAREFUNC:
	.byte	23,12
	.ascii	"TCompareFunc"

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TCOMPAREFUNC
_RTTI_BUFDATASET_TCOMPAREFUNC:
	.byte	23,12
	.ascii	"TCompareFunc"

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDBCOMPAREREC
_RTTI_BUFDATASET_TDBCOMPAREREC:
	.byte	13,13
	.ascii	"TDBCompareRec"
	.long	36,9
	.long	_RTTI_BUFDATASET_TCOMPAREFUNC
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_DB_TLOCATEOPTIONS
	.long	28
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	32

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDBCOMPARESTRUCT
_RTTI_BUFDATASET_TDBCOMPARESTRUCT:
	.byte	21
	.ascii	"\020TDBCompareStruct"
	.long	36
	.long	_RTTI_BUFDATASET_TDBCOMPAREREC
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld15
_$BUFDATASET$_Ld15:
	.short	0
	.long	_$BUFDATASET$_Ld16
	.align 2
.globl	_$BUFDATASET$_Ld16
_$BUFDATASET$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBUFINDEX
_RTTI_BUFDATASET_TBUFINDEX:
	.byte	15,9
	.ascii	"TBufIndex"
	.long	_VMT_BUFDATASET_TBUFINDEX
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld18
_$BUFDATASET$_Ld18:
	.short	0
	.long	_$BUFDATASET$_Ld19
	.align 2
.globl	_$BUFDATASET$_Ld19
_$BUFDATASET$_Ld19:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TDOUBLELINKEDBUFINDEX
_INIT_BUFDATASET_TDOUBLELINKEDBUFINDEX:
	.byte	15,21
	.ascii	"TDoubleLinkedBufIndex"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDOUBLELINKEDBUFINDEX
_RTTI_BUFDATASET_TDOUBLELINKEDBUFINDEX:
	.byte	15,21
	.ascii	"TDoubleLinkedBufIndex"
	.long	_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX
	.long	_RTTI_BUFDATASET_TBUFINDEX
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld21
_$BUFDATASET$_Ld21:
	.short	0
	.long	_$BUFDATASET$_Ld22
	.align 2
.globl	_$BUFDATASET$_Ld22
_$BUFDATASET$_Ld22:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TUNIDIRECTIONALBUFINDEX
_INIT_BUFDATASET_TUNIDIRECTIONALBUFINDEX:
	.byte	15,23
	.ascii	"TUniDirectionalBufIndex"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TUNIDIRECTIONALBUFINDEX
_RTTI_BUFDATASET_TUNIDIRECTIONALBUFINDEX:
	.byte	15,23
	.ascii	"TUniDirectionalBufIndex"
	.long	_VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX
	.long	_RTTI_BUFDATASET_TBUFINDEX
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF137
_INIT_BUFDATASET_DEF137:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_SYSTEM_POINTER
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld24
_$BUFDATASET$_Ld24:
	.short	0
	.long	_$BUFDATASET$_Ld25
	.align 2
.globl	_$BUFDATASET$_Ld25
_$BUFDATASET$_Ld25:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TARRAYBUFINDEX
_INIT_BUFDATASET_TARRAYBUFINDEX:
	.byte	15,14
	.ascii	"TArrayBufIndex"
	.long	4,1
	.long	_INIT_BUFDATASET_DEF137
	.long	52

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TARRAYBUFINDEX
_RTTI_BUFDATASET_TARRAYBUFINDEX:
	.byte	15,14
	.ascii	"TArrayBufIndex"
	.long	_VMT_BUFDATASET_TARRAYBUFINDEX
	.long	_RTTI_BUFDATASET_TBUFINDEX
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TROWSTATEVALUE
_INIT_BUFDATASET_TROWSTATEVALUE:
	.byte	3,14
	.ascii	"TRowStateValue"
	.byte	5
	.long	0,4,0
	.byte	11
	.ascii	"rsvOriginal"
	.byte	10
	.ascii	"rsvDeleted"
	.byte	11
	.ascii	"rsvInserted"
	.byte	10
	.ascii	"rsvUpdated"
	.byte	16
	.ascii	"rsvDetailUpdates"
	.byte	10
	.ascii	"BufDataset"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TROWSTATEVALUE
_RTTI_BUFDATASET_TROWSTATEVALUE:
	.byte	3,14
	.ascii	"TRowStateValue"
	.byte	5
	.long	0,4,0
	.byte	11
	.ascii	"rsvOriginal"
	.byte	10
	.ascii	"rsvDeleted"
	.byte	11
	.ascii	"rsvInserted"
	.byte	10
	.ascii	"rsvUpdated"
	.byte	16
	.ascii	"rsvDetailUpdates"
	.byte	10
	.ascii	"BufDataset"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TROWSTATEVALUE_s2o
_RTTI_BUFDATASET_TROWSTATEVALUE_s2o:
	.long	5,1
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+41
	.long	4
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+75
	.long	2
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+52
	.long	0
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+29
	.long	3
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+64

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TROWSTATEVALUE_o2s
_RTTI_BUFDATASET_TROWSTATEVALUE_o2s:
	.long	0
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+29
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+41
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+52
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+64
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE+75

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TROWSTATE
_INIT_BUFDATASET_TROWSTATE:
	.byte	5,9
	.ascii	"TRowState"
	.byte	5
	.long	_INIT_BUFDATASET_TROWSTATEVALUE

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TROWSTATE
_RTTI_BUFDATASET_TROWSTATE:
	.byte	5,9
	.ascii	"TRowState"
	.byte	5
	.long	_RTTI_BUFDATASET_TROWSTATEVALUE

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TDATAPACKETFORMAT
_INIT_BUFDATASET_TDATAPACKETFORMAT:
	.byte	3,17
	.ascii	"TDataPacketFormat"
	.byte	5
	.long	0,3,0
	.byte	8
	.ascii	"dfBinary"
	.byte	5
	.ascii	"dfXML"
	.byte	9
	.ascii	"dfXMLUTF8"
	.byte	5
	.ascii	"dfAny"
	.byte	10
	.ascii	"BufDataset"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDATAPACKETFORMAT
_RTTI_BUFDATASET_TDATAPACKETFORMAT:
	.byte	3,17
	.ascii	"TDataPacketFormat"
	.byte	5
	.long	0,3,0
	.byte	8
	.ascii	"dfBinary"
	.byte	5
	.ascii	"dfXML"
	.byte	9
	.ascii	"dfXMLUTF8"
	.byte	5
	.ascii	"dfAny"
	.byte	10
	.ascii	"BufDataset"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDATAPACKETFORMAT_s2o
_RTTI_BUFDATASET_TDATAPACKETFORMAT_s2o:
	.long	4,3
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+57
	.long	0
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+32
	.long	1
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+41
	.long	2
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+47

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDATAPACKETFORMAT_o2s
_RTTI_BUFDATASET_TDATAPACKETFORMAT_o2s:
	.long	0
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+32
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+41
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+47
	.long	_RTTI_BUFDATASET_TDATAPACKETFORMAT+57

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TDATAPACKETREADERCLASS
_INIT_BUFDATASET_TDATAPACKETREADERCLASS:
	.byte	0
	.ascii	"\026TDatapacketReaderClass"

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDATAPACKETREADERCLASS
_RTTI_BUFDATASET_TDATAPACKETREADERCLASS:
	.byte	0
	.ascii	"\026TDatapacketReaderClass"

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld27
_$BUFDATASET$_Ld27:
	.short	0
	.long	_$BUFDATASET$_Ld28
	.align 2
.globl	_$BUFDATASET$_Ld28
_$BUFDATASET$_Ld28:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TDATAPACKETREADER
_INIT_BUFDATASET_TDATAPACKETREADER:
	.byte	15,17
	.ascii	"TDataPacketReader"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TDATAPACKETREADER
_RTTI_BUFDATASET_TDATAPACKETREADER:
	.byte	15,17
	.ascii	"TDataPacketReader"
	.long	_VMT_BUFDATASET_TDATAPACKETREADER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld30
_$BUFDATASET$_Ld30:
	.short	0
	.long	_$BUFDATASET$_Ld31
	.align 2
.globl	_$BUFDATASET$_Ld31
_$BUFDATASET$_Ld31:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TFPCBINARYDATAPACKETREADER
_INIT_BUFDATASET_TFPCBINARYDATAPACKETREADER:
	.byte	15,26
	.ascii	"TFpcBinaryDatapacketReader"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TFPCBINARYDATAPACKETREADER
_RTTI_BUFDATASET_TFPCBINARYDATAPACKETREADER:
	.byte	15,26
	.ascii	"TFpcBinaryDatapacketReader"
	.long	_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER
	.long	_RTTI_BUFDATASET_TDATAPACKETREADER
	.short	0
	.byte	10
	.ascii	"BufDataset"
	.short	0

.const_data
	.align 2
.globl	_$BUFDATASET$_Ld33
_$BUFDATASET$_Ld33:
	.short	0
	.long	_$BUFDATASET$_Ld34
	.align 2
.globl	_$BUFDATASET$_Ld34
_$BUFDATASET$_Ld34:
	.short	0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TBUFDATASET
_INIT_BUFDATASET_TBUFDATASET:
	.byte	15,11
	.ascii	"TBufDataset"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BUFDATASET_TBUFDATASET
_RTTI_BUFDATASET_TBUFDATASET:
	.byte	15,11
	.ascii	"TBufDataset"
	.long	_VMT_BUFDATASET_TBUFDATASET
	.long	_RTTI_BUFDATASET_TCUSTOMBUFDATASET
	.short	38
	.byte	10
	.ascii	"BufDataset"
	.short	29
	.long	_RTTI_SYSTEM_LONGINT
	.long	376
	.long	_BUFDATASET_TCUSTOMBUFDATASET_$__SETMAXINDEXESCOUNT$LONGINT
	.long	1,0,2
	.short	9
	.byte	52,15
	.ascii	"MaxIndexesCount"
	.long	_RTTI_DB_TFIELDDEFS
	.long	268
	.long	_DB_TDATASET_$__SETFIELDDEFS$TFIELDDEFS
	.long	1,0,-2147483648
	.short	10
	.byte	52,9
	.ascii	"FieldDefs"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_DB_TDATASET_$__GETACTIVE$$BOOLEAN
	.long	440,1,0,0
	.short	11
	.byte	57,6
	.ascii	"Active"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	132,132,1,0,1
	.short	12
	.byte	48,14
	.ascii	"AutoCalcFields"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	276,464,1,0,-2147483648
	.short	13
	.byte	56,6
	.ascii	"Filter"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	280,456,1,0,0
	.short	14
	.byte	56,8
	.ascii	"Filtered"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	396,780,1,0,0
	.short	15
	.byte	56,8
	.ascii	"ReadOnly"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	60,60,1,0,-2147483648
	.short	16
	.byte	48,11
	.ascii	"AfterCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	68,68,1,0,-2147483648
	.short	17
	.byte	48,10
	.ascii	"AfterClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	76,76,1,0,-2147483648
	.short	18
	.byte	48,11
	.ascii	"AfterDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	84,84,1,0,-2147483648
	.short	19
	.byte	48,9
	.ascii	"AfterEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	92,92,1,0,-2147483648
	.short	20
	.byte	48,11
	.ascii	"AfterInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	100,100,1,0,-2147483648
	.short	21
	.byte	48,9
	.ascii	"AfterOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	108,108,1,0,-2147483648
	.short	22
	.byte	48,9
	.ascii	"AfterPost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	124,124,1,0,-2147483648
	.short	23
	.byte	48,11
	.ascii	"AfterScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	136,136,1,0,-2147483648
	.short	24
	.byte	48,12
	.ascii	"BeforeCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	144,144,1,0,-2147483648
	.short	25
	.byte	48,11
	.ascii	"BeforeClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	152,152,1,0,-2147483648
	.short	26
	.byte	48,12
	.ascii	"BeforeDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	160,160,1,0,-2147483648
	.short	27
	.byte	48,10
	.ascii	"BeforeEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	168,168,1,0,-2147483648
	.short	28
	.byte	48,12
	.ascii	"BeforeInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	176,176,1,0,-2147483648
	.short	29
	.byte	48,10
	.ascii	"BeforeOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	184,184,1,0,-2147483648
	.short	30
	.byte	48,10
	.ascii	"BeforePost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	200,200,1,0,-2147483648
	.short	31
	.byte	48,12
	.ascii	"BeforeScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	284,284,1,0,-2147483648
	.short	32
	.byte	48,12
	.ascii	"OnCalcFields"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	292,292,1,0,-2147483648
	.short	33
	.byte	48,13
	.ascii	"OnDeleteError"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	300,300,1,0,-2147483648
	.short	34
	.byte	48,11
	.ascii	"OnEditError"
	.long	_RTTI_DB_TFILTERRECORDEVENT
	.long	308,476,1,0,-2147483648
	.short	35
	.byte	56,14
	.ascii	"OnFilterRecord"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	316,316,1,0,-2147483648
	.short	36
	.byte	48,11
	.ascii	"OnNewRecord"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	324,324,1,0,-2147483648
	.short	37
	.byte	48,11
	.ascii	"OnPostError"

.const_data
	.align 2
.globl	_INIT_BUFDATASET_TDATAPACKETREADERREGISTRATION
_INIT_BUFDATASET_TDATAPACKETREADERREGISTRATION:
	.byte	13,29
	.ascii	"TDatapacketReaderRegistration"
	.long	8,0

.const_data
	.align 2
.globl	_INIT_BUFDATASET_DEF385
_INIT_BUFDATASET_DEF385:
	.byte	21
	.ascii	"\000"
	.long	8
	.long	_INIT_BUFDATASET_TDATAPACKETREADERREGISTRATION
	.long	-1,0
	.byte	10
	.ascii	"BufDataset"
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
L_U_BUFDATASET_REGISTEREDDATAPACKETREADERS$non_lazy_ptr:
.indirect_symbol _U_BUFDATASET_REGISTEREDDATAPACKETREADERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_DEF385$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_DEF385
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_TDBCOMPARESTRUCT$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_TDBCOMPARESTRUCT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_TINDEXDEFS$non_lazy_ptr:
.indirect_symbol _VMT_DB_TINDEXDEFS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_TRECORDSUPDATEBUFFER$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_TRECORDSUPDATEBUFFER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_DEF199$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_DEF199
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_DEF200$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_DEF200
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SINVPACKETRECORDSVALUE$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SINVPACKETRECORDSVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_DEF197$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_DEF197
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_TDOUBLELINKEDBUFINDEX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SNOINDEXFIELDNAMEGIVEN$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SNOINDEXFIELDNAMEGIVEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRNODATASET$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRNODATASET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_TAUTOINCFIELD$non_lazy_ptr:
.indirect_symbol _VMT_DB_TAUTOINCFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_DEF198$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_DEF198
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BUFDATASET$_Ld1$non_lazy_ptr:
.indirect_symbol _$BUFDATASET$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPARETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPARETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPAREWIDETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPAREWIDETEXT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPARESMALLINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPARESMALLINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPAREINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPAREINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPAREWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPAREWORD$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPAREBYTE$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPAREBYTE$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPAREDOUBLE$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPAREDOUBLE$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPARELARGEINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPARELARGEINT$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_BUFDATASET_DBCOMPAREBCD$POINTER$POINTER$TLOCATEOPTIONS$$INT64$non_lazy_ptr:
.indirect_symbol _BUFDATASET_DBCOMPAREBCD$POINTER$POINTER$TLOCATEOPTIONS$$INT64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DB_FIELDTYPENAMES$non_lazy_ptr:
.indirect_symbol _TC_DB_FIELDTYPENAMES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BUFDATASET$_Ld3$non_lazy_ptr:
.indirect_symbol _$BUFDATASET$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SMAXINDEXES$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SMAXINDEXES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_TUNIDIRECTIONALBUFINDEX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SMININDEXES$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SMININDEXES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SUNSUPPORTEDFIELDTYPE$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SUNSUPPORTEDFIELDTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SNOTEDITING$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SNOTEDITING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SREADONLYFIELD$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SREADONLYFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SAPPLYRECNOTSUPPORTED$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SAPPLYRECNOTSUPPORTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_EDATABASEERROR$non_lazy_ptr:
.indirect_symbol _VMT_DB_EDATABASEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SONUPDATEERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SONUPDATEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_EUPDATEERROR$non_lazy_ptr:
.indirect_symbol _VMT_DB_EUPDATEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_TFPCBINARYDATAPACKETREADER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SSTREAMNOTRECOGNISED$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SSTREAMNOTRECOGNISED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SNOSUCHRECORD$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SNOSUCHRECORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_TCUSTOMBUFDATASET$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_TCUSTOMBUFDATASET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SFIELDISNULL$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SFIELDISNULL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_TBLOBFIELD$non_lazy_ptr:
.indirect_symbol _VMT_DB_TBLOBFIELD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_TBUFBLOBSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_TBUFBLOBSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SNOREADERCLASSREGISTERED$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SNOREADERCLASSREGISTERED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRNOFIELDSDEFINED$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRNOFIELDSDEFINED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SERRAPPLYUPDBEFOREREFRESH$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SERRAPPLYUPDBEFOREREFRESH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_BUFDATASET_PARSER_TBUFDATASETPARSER$non_lazy_ptr:
.indirect_symbol _VMT_BUFDATASET_PARSER_TBUFDATASETPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SINVALIDBOOKMARK$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SINVALIDBOOKMARK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_BUFDATASET_DEF137$non_lazy_ptr:
.indirect_symbol _INIT_BUFDATASET_DEF137
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_TFIELDDEF$non_lazy_ptr:
.indirect_symbol _VMT_DB_TFIELDDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BUFDATASET$_Ld5$non_lazy_ptr:
.indirect_symbol _$BUFDATASET$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$BUFDATASET$_Ld6$non_lazy_ptr:
.indirect_symbol _$BUFDATASET$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_DBCONST_SUNIDIRECTIONAL$non_lazy_ptr:
.indirect_symbol _RESSTR_DBCONST_SUNIDIRECTIONAL
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

