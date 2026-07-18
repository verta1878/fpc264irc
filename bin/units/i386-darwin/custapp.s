# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETEXENAME$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETEXENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movb	$0,-25(%ebp)
	call	L_CFBundleGetMainBundle$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj12
	jmp	Lj13
Lj12:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_CFBundleCopyExecutableURL$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj18
	jmp	Lj19
Lj18:
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_CFURLCopyFileSystemPath$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_CFRelease$stub
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_CFStringGetLength$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	imull	$3,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	$134217984,12(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj44
	movl	-4(%eax),%eax
Lj44:
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	call	L_CFStringGetCString$stub
	testb	%al,%al
	jne	Lj36
	jmp	Lj37
Lj36:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movb	$0,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	jmp	Lj55
Lj37:
	movb	$1,-25(%ebp)
Lj55:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_CFRelease$stub
	jmp	Lj60
Lj19:
	movb	$1,-25(%ebp)
Lj60:
	jmp	Lj63
Lj13:
	movb	$1,-25(%ebp)
Lj63:
	cmpb	$0,-25(%ebp)
	jne	Lj66
	jmp	Lj67
Lj66:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	$0,%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,(%ebx)
Lj67:
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_SYSGETENVIRONMENTLIST$TSTRINGS$BOOLEAN
_CUSTAPP_SYSGETENVIRONMENTLIST$TSTRINGS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj76
	call	L_SYSUTILS_GETENVIRONMENTVARIABLECOUNT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj81
	jmp	Lj82
Lj81:
	movl	-28(%ebp),%ebx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj84
	decl	-24(%ebp)
	.align 2
Lj85:
	incl	-24(%ebp)
	leal	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_GETENVIRONMENTSTRING$LONGINT$$ANSISTRING$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj92
	movl	-4(%eax),%eax
Lj92:
	movl	%eax,-20(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-12(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj101
	jmp	Lj102
Lj101:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj102:
Lj94:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%ebx
	jg	Lj85
Lj84:
Lj82:
Lj76:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj77
	call	LFPC_RERAISE$stub
Lj77:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTVAR$ANSISTRING$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTVAR$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj125
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub
Lj125:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj126
	call	LFPC_RERAISE$stub
Lj126:
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS$BOOLEAN
_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_CUSTAPP_SYSGETENVIRONMENTLIST$TSTRINGS$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS
_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETLOCATION$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETLOCATION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj148
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__GETEXENAME$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
Lj148:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj149
	call	LFPC_RERAISE$stub
Lj149:
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETPARAMCOUNT$$LONGINT
_CUSTAPP_TCUSTOMAPPLICATION_$__GETPARAMCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSTEM_PARAMCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETTITLE$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETTITLE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	72(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	72(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETPARAMS$LONGINT$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETPARAMS$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__SETTITLE$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__SETTITLE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	72(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,72(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETCONSOLEAPPLICATION$$BOOLEAN
_CUSTAPP_TCUSTOMAPPLICATION_$__GETCONSOLEAPPLICATION$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj178
Lj178:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	Loperatingsystem_isconsole$non_lazy_ptr-Lj178(%edx),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__DORUN
_CUSTAPP_TCUSTOMAPPLICATION_$__DORUN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__DOLOG$TEVENTTYPE$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__DOLOG$TEVENTTYPE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__LOG$TEVENTTYPE$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__LOG$TEVENTTYPE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	cmpl	52(%eax),%edx
	je	Lj187
	jmp	Lj189
Lj189:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	btl	%edx,52(%eax)
	jc	Lj187
	jmp	Lj188
Lj187:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*236(%ebx)
Lj188:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__CREATE$TCOMPONENT$$TCUSTOMAPPLICATION
_CUSTAPP_TCUSTOMAPPLICATION_$__CREATE$TCOMPONENT$$TCUSTOMAPPLICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj198
	jmp	Lj199
Lj198:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj199:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj204
	jmp	Lj205
Lj204:
	jmp	Lj196
Lj205:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj208
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj212
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	-12(%ebp),%eax
	movb	$45,76(%eax)
	movl	-12(%ebp),%eax
	movb	$1,77(%eax)
	movl	-12(%ebp),%eax
	movb	$0,78(%eax)
Lj212:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj213
	call	LFPC_RERAISE$stub
Lj213:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj229
	jmp	Lj228
Lj229:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj227
	jmp	Lj228
Lj227:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj228:
Lj208:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj210
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj233
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj234
	jmp	Lj235
Lj234:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj235:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj233:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj232
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj232:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj210
Lj210:
Lj196:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__DESTROY
_CUSTAPP_TCUSTOMAPPLICATION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj242
	jmp	Lj243
Lj242:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj243:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj252
	jmp	Lj251
Lj252:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj250
	jmp	Lj251
Lj250:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj251:
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__HANDLEEXCEPTION$TOBJECT
_CUSTAPP_TCUSTOMAPPLICATION_$__HANDLEEXCEPTION$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj256
Lj256:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj256(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj257
	jmp	Lj258
Lj257:
	call	L_SYSUTILS_EXCEPTADDR$$POINTER$stub
	movl	%eax,%esi
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%esi,%edx
	call	L_SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER$stub
	jmp	Lj267
Lj258:
	movl	-8(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj269
	jmp	Lj268
Lj268:
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*248(%ecx)
	jmp	Lj274
Lj269:
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	56(%esi),%esi
	call	*%esi
Lj274:
Lj267:
	movl	-8(%ebp),%eax
	cmpb	$0,78(%eax)
	jne	Lj281
	jmp	Lj282
Lj281:
	movl	-8(%ebp),%eax
	movb	$1,64(%eax)
Lj282:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__INITIALIZE
_CUSTAPP_TCUSTOMAPPLICATION_$__INITIALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,64(%eax)
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__RUN
_CUSTAPP_TCUSTOMAPPLICATION_$__RUN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj291:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj300
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
Lj300:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj302
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj307
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*240(%ecx)
Lj307:
	call	LFPC_POPADDRSTACK$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj306
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj306:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj302
Lj302:
	movl	-4(%ebp),%edx
	cmpb	$0,64(%edx)
	jne	Lj293
	jmp	Lj291
Lj293:
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__SHOWEXCEPTION$EXCEPTION
_CUSTAPP_TCUSTOMAPPLICATION_$__SHOWEXCEPTION$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	L_SYSUTILS_EXCEPTADDR$$POINTER$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__TERMINATE
_CUSTAPP_TCUSTOMAPPLICATION_$__TERMINATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,64(%eax)
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$ANSISTRING$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$255,%dl
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$CHAR$ANSISTRING$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$CHAR$ANSISTRING$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$CHAR$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj333
Lj333:
	popl	%esi
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj334
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-72(%ebp),%edx
	leal	-13(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj351
	jmp	Lj352
Lj351:
	leal	-13(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
Lj352:
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj361
	jmp	Lj362
Lj361:
	cmpb	$0,-13(%ebp)
	jne	Lj363
	jmp	Lj364
Lj363:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*228(%ebx)
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj379
	jmp	Lj380
Lj379:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj383
	movl	-4(%eax),%eax
Lj383:
	movl	%eax,-24(%ebp)
Lj380:
	movl	-24(%ebp),%ecx
	leal	-28(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-28(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-28(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj392
Lj364:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	cmpl	-20(%ebp),%eax
	jg	Lj393
	jmp	Lj394
Lj393:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-20(%ebp),%edx
	incl	%edx
	leal	-76(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*228(%ebx)
	movl	-76(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	movl	L_$CUSTAPP$_Ld1$non_lazy_ptr-Lj333(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj397
	jmp	Lj398
Lj397:
	movl	-20(%ebp),%edx
	incl	%edx
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*228(%ebx)
Lj398:
Lj394:
Lj392:
Lj362:
Lj334:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj335
	call	LFPC_RERAISE$stub
Lj335:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__HASOPTION$ANSISTRING$$BOOLEAN
_CUSTAPP_TCUSTOMAPPLICATION_$__HASOPTION$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-10(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT$stub
	cmpl	$-1,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT
_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj441
	movl	-12(%ebp),%eax
	movb	77(%eax),%al
	testb	%al,%al
	je	Lj444
	jmp	Lj445
Lj444:
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	jmp	Lj450
Lj445:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj450:
	movl	$-1,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	%eax,-28(%ebp)
	jmp	Lj460
	.align 2
Lj459:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*228(%ebx)
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj473
	movl	-4(%eax),%eax
Lj473:
	cmpl	$0,%eax
	jg	Lj472
	jmp	Lj471
Lj472:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	76(%eax),%al
	cmpb	(%edx),%al
	je	Lj470
	jmp	Lj471
Lj470:
	leal	-24(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj483
	movl	-4(%eax),%eax
Lj483:
	cmpl	$0,%eax
	jg	Lj482
	jmp	Lj481
Lj482:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	76(%eax),%al
	cmpb	(%edx),%al
	je	Lj480
	jmp	Lj481
Lj480:
	movb	$1,(%ecx)
	jmp	Lj484
Lj481:
	movb	$0,(%ecx)
Lj484:
	movl	-8(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj485
	jmp	Lj486
Lj485:
	leal	-24(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-24(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj499
	jmp	Lj500
Lj499:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%ecx
	decl	%ecx
	movl	-24(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj500:
Lj486:
	movl	-12(%ebp),%eax
	movb	77(%eax),%al
	testb	%al,%al
	je	Lj511
	jmp	Lj512
Lj511:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj512:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj519
	jmp	Lj520
Lj519:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj520:
Lj471:
	decl	-28(%ebp)
Lj460:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj527
	jmp	Lj461
Lj527:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj459
	jmp	Lj461
Lj461:
Lj441:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj442
	call	LFPC_RERAISE$stub
Lj442:
	movl	-16(%ebp),%eax
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__HASOPTION$CHAR$ANSISTRING$$BOOLEAN
_CUSTAPP_TCUSTOMAPPLICATION_$__HASOPTION$CHAR$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj542
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movb	-4(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%edx
	leal	-14(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj545
	jmp	Lj547
Lj547:
	leal	-14(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj545
	jmp	Lj546
Lj545:
	movb	$1,-13(%ebp)
	jmp	Lj564
Lj546:
	movb	$0,-13(%ebp)
Lj564:
Lj542:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj543
	call	LFPC_RERAISE$stub
Lj543:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$TSTRINGS$BOOLEAN$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$TSTRINGS$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,8(%esp)
	movl	$0,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crc45A21D65$stub
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crc45A21D65
_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crc45A21D65:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-116(%ebp)
	movl	%esi,-112(%ebp)
	call	Lj582
Lj582:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-88(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj587
	movl	-12(%ebp),%eax
	cmpb	$0,77(%eax)
	jne	Lj590
	jmp	Lj591
Lj590:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj594
Lj591:
	leal	-40(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
Lj594:
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	$1,-16(%ebp)
	jmp	Lj604
	.align 2
Lj603:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-88(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj615
	movl	-4(%eax),%eax
Lj615:
	testl	%eax,%eax
	je	Lj612
	jmp	Lj614
Lj614:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	76(%eax),%al
	cmpb	(%edx),%al
	jne	Lj612
	jmp	Lj613
Lj612:
	cmpl	$0,16(%ebp)
	jne	Lj616
	jmp	Lj617
Lj616:
	movl	-32(%ebp),%edx
	movl	16(%ebp),%eax
	movl	16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj617:
	jmp	Lj622
Lj613:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj625
	movl	-4(%eax),%eax
Lj625:
	cmpl	$2,%eax
	jl	Lj623
	jmp	Lj624
Lj623:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_CUSTAPP_SERRINVALIDOPTION$non_lazy_ptr-Lj582(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub
	jmp	Lj638
Lj624:
	movb	$0,-42(%ebp)
	leal	-36(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-36(%ebp)
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	76(%eax),%al
	cmpb	1(%edx),%al
	je	Lj643
	jmp	Lj644
Lj643:
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-32(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj657
	jmp	Lj658
Lj657:
	movb	$1,-42(%ebp)
	movl	-32(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-36(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%ecx
	leal	-36(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-32(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-88(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-88(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj658:
	movl	-32(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj679
	jmp	Lj680
Lj679:
	cmpb	$0,-42(%ebp)
	jne	Lj685
	jmp	Lj686
Lj685:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_CUSTAPP_SERRNOOPTIONALLOWED$non_lazy_ptr-Lj582(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub
Lj686:
	jmp	Lj699
Lj680:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-32(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	L_$CUSTAPP$_Ld3$non_lazy_ptr-Lj582(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj700
	jmp	Lj701
Lj700:
	movb	-42(%ebp),%al
	testb	%al,%al
	je	Lj712
	jmp	Lj713
Lj712:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_CUSTAPP_SERROPTIONNEEDED$non_lazy_ptr-Lj582(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub
Lj713:
	jmp	Lj726
Lj701:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-32(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	L_$CUSTAPP$_Ld5$non_lazy_ptr-Lj582(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj727
	jmp	Lj728
Lj727:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_CUSTAPP_SERRINVALIDOPTION$non_lazy_ptr-Lj582(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-88(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub
Lj728:
Lj726:
Lj699:
	jmp	Lj751
Lj644:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj755
	jmp	Lj753
Lj755:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	leal	-88(%ebp),%edx
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj762
	movl	-4(%eax),%eax
Lj762:
	cmpl	$0,%eax
	jg	Lj754
	jmp	Lj753
Lj754:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	leal	-88(%ebp),%edx
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	(%eax),%al
	cmpb	76(%edx),%al
	jne	Lj752
	jmp	Lj753
Lj752:
	movb	$1,-42(%ebp)
	jmp	Lj767
Lj753:
	movb	$0,-42(%ebp)
Lj767:
	movb	$0,-41(%ebp)
	cmpb	$0,-42(%ebp)
	jne	Lj770
	jmp	Lj771
Lj770:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	leal	-108(%ebp),%edx
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-36(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-108(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj771:
	movl	-12(%ebp),%eax
	movb	77(%eax),%al
	testb	%al,%al
	je	Lj778
	jmp	Lj779
Lj778:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-108(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj779:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj788
	movl	-4(%eax),%eax
Lj788:
	movl	%eax,-24(%ebp)
	movl	$2,-20(%ebp)
	jmp	Lj792
	.align 2
Lj791:
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	-4(%ebp),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj800
	jmp	Lj802
Lj802:
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$58,%al
	je	Lj800
	jmp	Lj801
Lj800:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	movl	%eax,-92(%ebp)
	movl	$2,-96(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_CUSTAPP_SERRINVALIDOPTION$non_lazy_ptr-Lj582(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub
	jmp	Lj815
Lj801:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj819
	movl	-4(%eax),%eax
Lj819:
	cmpl	-28(%ebp),%eax
	jg	Lj818
	jmp	Lj817
Lj818:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$58,%al
	je	Lj816
	jmp	Lj817
Lj816:
	movl	-28(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj823
	movl	-4(%eax),%eax
Lj823:
	cmpl	%eax,%edx
	je	Lj820
	jmp	Lj822
Lj822:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	$2,%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$58,%al
	jne	Lj820
	jmp	Lj821
Lj820:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj824
	jmp	Lj826
Lj826:
	movb	-42(%ebp),%al
	testb	%al,%al
	je	Lj824
	jmp	Lj825
Lj824:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$0,-104(%ebp)
	movl	-32(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	movl	%eax,-92(%ebp)
	movl	$2,-96(%ebp)
	leal	-104(%ebp),%edx
	movl	L_RESSTR_CUSTAPP_SERROPTIONNEEDED$non_lazy_ptr-Lj582(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-108(%ebp),%edx
	movl	%ebp,%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub
Lj825:
Lj821:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-32(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-108(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-108(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-108(%ebp),%eax
	movl	%eax,-32(%ebp)
	movb	$1,-41(%ebp)
Lj817:
Lj815:
	incl	-20(%ebp)
Lj792:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj847
	jmp	Lj848
Lj848:
	cmpb	$0,12(%ebp)
	jne	Lj847
	jmp	Lj793
Lj847:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj791
	jmp	Lj793
Lj793:
	cmpb	$0,-42(%ebp)
	jne	Lj851
	jmp	Lj850
Lj851:
	cmpb	$0,-41(%ebp)
	jne	Lj849
	jmp	Lj850
Lj849:
	incl	-16(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-32(%ebp),%edx
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj856
	movl	-4(%eax),%eax
Lj856:
	movb	-1(%edx,%eax,1),%al
	leal	-108(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-108(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-108(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj850:
Lj751:
	cmpb	$0,-42(%ebp)
	jne	Lj861
	jmp	Lj860
Lj861:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj859
	jmp	Lj862
Lj862:
	cmpb	$0,12(%ebp)
	jne	Lj859
	jmp	Lj860
Lj859:
	cmpl	$0,20(%ebp)
	jne	Lj863
	jmp	Lj864
Lj863:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	L_$CUSTAPP$_Ld7$non_lazy_ptr-Lj582(%ebx),%eax
	movl	%eax,-96(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-92(%ebp)
	leal	-100(%ebp),%edx
	leal	-108(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-108(%ebp),%edx
	movl	20(%ebp),%eax
	movl	20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj864:
Lj860:
Lj638:
Lj622:
	incl	-16(%ebp)
Lj604:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	cmpl	-16(%ebp),%eax
	jge	Lj875
	jmp	Lj605
Lj875:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj603
	jmp	Lj878
Lj878:
	cmpb	$0,12(%ebp)
	jne	Lj603
	jmp	Lj605
Lj605:
Lj587:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	leal	-36(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-36(%ebp)
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-40(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj588
	call	LFPC_RERAISE$stub
Lj588:
	movl	-116(%ebp),%ebx
	movl	-112(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj586
Lj586:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj897
	jmp	Lj898
Lj897:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_$CUSTAPP$_Ld9$non_lazy_ptr-Lj586(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj898:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN
_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj911
	movl	-8(%ebp),%eax
	cmpl	$0,-8(%eax)
	jne	Lj914
	jmp	Lj915
Lj914:
	movb	$1,-9(%ebp)
	jmp	Lj916
Lj915:
	movb	$0,-9(%ebp)
Lj916:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj917
	jmp	Lj918
Lj917:
	jmp	Lj911
Lj918:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	cmpb	$0,77(%eax)
	jne	Lj919
	jmp	Lj920
Lj919:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj926
	.align 2
Lj925:
	decl	-16(%ebp)
Lj926:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj928
	jmp	Lj927
Lj928:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-60(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-60(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj925
	jmp	Lj927
Lj927:
	jmp	Lj939
Lj920:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj951
	.align 2
Lj950:
	decl	-16(%ebp)
Lj951:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj953
	jmp	Lj952
Lj953:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-64(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-64(%ebp),%eax
	leal	-60(%ebp),%edx
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj950
	jmp	Lj952
Lj952:
Lj939:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	setneb	-9(%ebp)
Lj911:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj912
	call	LFPC_RERAISE$stub
Lj912:
	movb	-9(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crcDD7F5F67
_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crcDD7F5F67:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj971
Lj971:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj971(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj978
	movl	24(%ebp),%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj983
	decl	-20(%ebp)
	.align 2
Lj984:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-20(%ebp),%esi
	jg	Lj984
Lj983:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crc45A21D65$stub
Lj978:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj979
	decl	%eax
	testl	%eax,%eax
	je	Lj980
Lj980:
	call	LFPC_RERAISE$stub
Lj979:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$array_of_ANSISTRING$BOOLEAN$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$array_of_ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj1006
Lj1006:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1006(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1013
	movl	16(%ebp),%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1018
	decl	-20(%ebp)
	.align 2
Lj1019:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-20(%ebp),%esi
	jg	Lj1019
Lj1018:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$TSTRINGS$BOOLEAN$$ANSISTRING$stub
Lj1013:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1014
	decl	%eax
	testl	%eax,%eax
	je	Lj1015
Lj1015:
	call	LFPC_RERAISE$stub
Lj1014:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-116(%ebp)
	call	Lj1037
Lj1037:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-112(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1038
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1037(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj1047
	movl	$1,-24(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1055
	movl	-4(%eax),%eax
Lj1055:
	movl	%eax,-20(%ebp)
	jmp	Lj1057
	.align 2
Lj1056:
	jmp	Lj1060
	.align 2
Lj1059:
	incl	-24(%ebp)
Lj1060:
	movl	-24(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	L_$CUSTAPP$_Ld11$non_lazy_ptr-Lj1037(%ebx),%eax
	call	L_SYSUTILS_ISDELIMITER$ANSISTRING$ANSISTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1059
	jmp	Lj1061
Lj1061:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1071
	.align 2
Lj1070:
	incl	-28(%ebp)
Lj1071:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1073
	jmp	Lj1072
Lj1073:
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	L_$CUSTAPP$_Ld11$non_lazy_ptr-Lj1037(%ebx),%eax
	call	L_SYSUTILS_ISDELIMITER$ANSISTRING$ANSISTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1070
	jmp	Lj1072
Lj1072:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj1080
	jmp	Lj1081
Lj1080:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%eax
	subl	%eax,%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-112(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1081:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
Lj1057:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1056
	jmp	Lj1058
Lj1058:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	12(%ebp),%al
	movb	%al,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$TSTRINGS$BOOLEAN$$ANSISTRING$stub
Lj1047:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj1048
	decl	%eax
	testl	%eax,%eax
	je	Lj1049
Lj1049:
	call	LFPC_RERAISE$stub
Lj1048:
Lj1038:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1039
	call	LFPC_RERAISE$stub
Lj1039:
	movl	-116(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld13
_$CUSTAPP$_Ld13:
	.byte	18
	.ascii	"TCustomApplication"

.const_data
	.align 2
.globl	_VMT_CUSTAPP_TCUSTOMAPPLICATION
_VMT_CUSTAPP_TCUSTOMAPPLICATION:
	.long	80,-80
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$CUSTAPP$_Ld13
	.long	0,0
	.long	_$CUSTAPP$_Ld14
	.long	_RTTI_CUSTAPP_TCUSTOMAPPLICATION
	.long	_INIT_CUSTAPP_TCUSTOMAPPLICATION
	.long	0,0,0
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__DESTROY
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
	.long	_CLASSES_TCOMPONENT_$__LOADED
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
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__CREATE$TCOMPONENT$$TCUSTOMAPPLICATION
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__SETTITLE$ANSISTRING
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__GETCONSOLEAPPLICATION$$BOOLEAN
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__DORUN
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__GETPARAMS$LONGINT$$ANSISTRING
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__GETPARAMCOUNT$$LONGINT
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__DOLOG$TEVENTTYPE$ANSISTRING
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__HANDLEEXCEPTION$TOBJECT
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__INITIALIZE
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__SHOWEXCEPTION$EXCEPTION
	.long	_CUSTAPP_TCUSTOMAPPLICATION_$__TERMINATE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_CUSTAPP
_THREADVARLIST_CUSTAPP:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$CUSTAPP$_Ld17
_$CUSTAPP$_Ld17:
	.short	0,1
	.long	0,-1,7
.reference _$CUSTAPP$_Ld16
.globl	_$CUSTAPP$_Ld16
_$CUSTAPP$_Ld16:
.reference _$CUSTAPP$_Ld17
	.ascii	"CUSTAPP\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld19
_$CUSTAPP$_Ld19:
	.short	0,1
	.long	0,-1,35
.reference _$CUSTAPP$_Ld18
.globl	_$CUSTAPP$_Ld18
_$CUSTAPP$_Ld18:
.reference _$CUSTAPP$_Ld19
	.ascii	"Invalid option at position %d: \"%s\"\000"
	.align 2
.globl	_$CUSTAPP$_Ld21
_$CUSTAPP$_Ld21:
	.short	0,1
	.long	0,-1,25
.reference _$CUSTAPP$_Ld20
.globl	_$CUSTAPP$_Ld20
_$CUSTAPP$_Ld20:
.reference _$CUSTAPP$_Ld21
	.ascii	"custapp.serrinvalidoption\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld23
_$CUSTAPP$_Ld23:
	.short	0,1
	.long	0,-1,52
.reference _$CUSTAPP$_Ld22
.globl	_$CUSTAPP$_Ld22
_$CUSTAPP$_Ld22:
.reference _$CUSTAPP$_Ld23
	.ascii	"Option at position %d does not allow an argument: %"
	.ascii	"s\000"
	.align 2
.globl	_$CUSTAPP$_Ld25
_$CUSTAPP$_Ld25:
	.short	0,1
	.long	0,-1,27
.reference _$CUSTAPP$_Ld24
.globl	_$CUSTAPP$_Ld24
_$CUSTAPP$_Ld24:
.reference _$CUSTAPP$_Ld25
	.ascii	"custapp.serrnooptionallowed\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld27
_$CUSTAPP$_Ld27:
	.short	0,1
	.long	0,-1,44
.reference _$CUSTAPP$_Ld26
.globl	_$CUSTAPP$_Ld26
_$CUSTAPP$_Ld26:
.reference _$CUSTAPP$_Ld27
	.ascii	"Option at position %d needs an argument : %s\000"
	.align 2
.globl	_$CUSTAPP$_Ld29
_$CUSTAPP$_Ld29:
	.short	0,1
	.long	0,-1,24
.reference _$CUSTAPP$_Ld28
.globl	_$CUSTAPP$_Ld28
_$CUSTAPP$_Ld28:
.reference _$CUSTAPP$_Ld29
	.ascii	"custapp.serroptionneeded\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_CUSTAPP_CUSTOMAPPLICATION
_TC_CUSTAPP_CUSTOMAPPLICATION:
	.long	0

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld2
_$CUSTAPP$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$CUSTAPP$_Ld1
.globl	_$CUSTAPP$_Ld1
_$CUSTAPP$_Ld1:
.reference _$CUSTAPP$_Ld2
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld4
_$CUSTAPP$_Ld4:
	.short	0,1
	.long	0,-1,1
.reference _$CUSTAPP$_Ld3
.globl	_$CUSTAPP$_Ld3
_$CUSTAPP$_Ld3:
.reference _$CUSTAPP$_Ld4
	.ascii	":\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld6
_$CUSTAPP$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$CUSTAPP$_Ld5
.globl	_$CUSTAPP$_Ld5
_$CUSTAPP$_Ld5:
.reference _$CUSTAPP$_Ld6
	.ascii	"::\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld8
_$CUSTAPP$_Ld8:
	.short	0,1
	.long	0,-1,1
.reference _$CUSTAPP$_Ld7
.globl	_$CUSTAPP$_Ld7
_$CUSTAPP$_Ld7:
.reference _$CUSTAPP$_Ld8
	.ascii	"=\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld10
_$CUSTAPP$_Ld10:
	.short	0,1
	.long	0,-1,1
.reference _$CUSTAPP$_Ld9
.globl	_$CUSTAPP$_Ld9
_$CUSTAPP$_Ld9:
.reference _$CUSTAPP$_Ld10
	.ascii	"\012\000"

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld12
_$CUSTAPP$_Ld12:
	.short	0,1
	.long	0,-1,4
.reference _$CUSTAPP$_Ld11
.globl	_$CUSTAPP$_Ld11
_$CUSTAPP$_Ld11:
.reference _$CUSTAPP$_Ld12
	.ascii	" \012\015\011\000"
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

L_CFBundleGetMainBundle$stub:
.indirect_symbol _CFBundleGetMainBundle
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CFBundleCopyExecutableURL$stub:
.indirect_symbol _CFBundleCopyExecutableURL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CFURLCopyFileSystemPath$stub:
.indirect_symbol _CFURLCopyFileSystemPath
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CFRelease$stub:
.indirect_symbol _CFRelease
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CFStringGetLength$stub:
.indirect_symbol _CFStringGetLength
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

L_CFStringGetCString$stub:
.indirect_symbol _CFStringGetCString
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
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

L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
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

L_SYSUTILS_GETENVIRONMENTVARIABLECOUNT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_GETENVIRONMENTVARIABLECOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_GETENVIRONMENTSTRING$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_GETENVIRONMENTSTRING$LONGINT$$ANSISTRING
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_SYSGETENVIRONMENTLIST$TSTRINGS$BOOLEAN$stub:
.indirect_symbol _CUSTAPP_SYSGETENVIRONMENTLIST$TSTRINGS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS$BOOLEAN$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$__GETENVIRONMENTLIST$TSTRINGS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_TCUSTOMAPPLICATION_$__GETEXENAME$$ANSISTRING$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$__GETEXENAME$$ANSISTRING
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

L_SYSTEM_PARAMCOUNT$$LONGINT$stub:
.indirect_symbol _SYSTEM_PARAMCOUNT$$LONGINT
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

L_CLASSES_TCOMPONENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__DESTROY
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
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

L_SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER$stub:
.indirect_symbol _SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$CHAR$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$__GETOPTIONVALUE$CHAR$ANSISTRING$$ANSISTRING
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

L_CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$__FINDOPTIONINDEX$ANSISTRING$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
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

L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crc45A21D65$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$crc45A21D65
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING
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

L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_ADDTORESULT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$_CHECKOPTIONS$crc45A21D65_FINDLONGOPT$ANSISTRING$$BOOLEAN
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$TSTRINGS$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _CUSTAPP_TCUSTOMAPPLICATION_$__CHECKOPTIONS$ANSISTRING$TSTRINGS$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ISDELIMITER$ANSISTRING$ANSISTRING$LONGINT$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_ISDELIMITER$ANSISTRING$ANSISTRING$LONGINT$$BOOLEAN
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
.globl	_INIT_CUSTAPP_TEXCEPTIONEVENT
_INIT_CUSTAPP_TEXCEPTIONEVENT:
	.byte	6,15
	.ascii	"TExceptionEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,1
	.ascii	"E"
	.ascii	"\011Exception"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSUTILS_EXCEPTION

.const_data
	.align 2
.globl	_RTTI_CUSTAPP_TEXCEPTIONEVENT
_RTTI_CUSTAPP_TEXCEPTIONEVENT:
	.byte	6,15
	.ascii	"TExceptionEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	8,1
	.ascii	"E"
	.ascii	"\011Exception"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSUTILS_EXCEPTION

.const_data
	.align 2
.globl	_INIT_CUSTAPP_TEVENTLOGTYPES
_INIT_CUSTAPP_TEVENTLOGTYPES:
	.byte	5,14
	.ascii	"TEventLogTypes"
	.byte	5
	.long	_INIT_SYSUTILS_TEVENTTYPE

.const_data
	.align 2
.globl	_RTTI_CUSTAPP_TEVENTLOGTYPES
_RTTI_CUSTAPP_TEVENTLOGTYPES:
	.byte	5,14
	.ascii	"TEventLogTypes"
	.byte	5
	.long	_RTTI_SYSUTILS_TEVENTTYPE

.const_data
	.align 2
.globl	_INIT_CUSTAPP_DEF119
_INIT_CUSTAPP_DEF119:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_CUSTAPP_DEF27
_INIT_CUSTAPP_DEF27:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_CUSTAPP_DEF30
_INIT_CUSTAPP_DEF30:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$CUSTAPP$_Ld14
_$CUSTAPP$_Ld14:
	.short	0
	.long	_$CUSTAPP$_Ld15
	.align 2
.globl	_$CUSTAPP$_Ld15
_$CUSTAPP$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_CUSTAPP_TCUSTOMAPPLICATION
_INIT_CUSTAPP_TCUSTOMAPPLICATION:
	.byte	15,18
	.ascii	"TCustomApplication"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	68
	.long	_INIT_SYSTEM_ANSISTRING
	.long	72

.const_data
	.align 2
.globl	_RTTI_CUSTAPP_TCUSTOMAPPLICATION
_RTTI_CUSTAPP_TCUSTOMAPPLICATION:
	.byte	15,18
	.ascii	"TCustomApplication"
	.long	_VMT_CUSTAPP_TCUSTOMAPPLICATION
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	2
	.byte	7
	.ascii	"CustApp"
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
Loperatingsystem_isconsole$non_lazy_ptr:
.indirect_symbol operatingsystem_isconsole
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CUSTAPP$_Ld1$non_lazy_ptr:
.indirect_symbol _$CUSTAPP$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CUSTAPP_SERRINVALIDOPTION$non_lazy_ptr:
.indirect_symbol _RESSTR_CUSTAPP_SERRINVALIDOPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CUSTAPP_SERRNOOPTIONALLOWED$non_lazy_ptr:
.indirect_symbol _RESSTR_CUSTAPP_SERRNOOPTIONALLOWED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CUSTAPP$_Ld3$non_lazy_ptr:
.indirect_symbol _$CUSTAPP$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_CUSTAPP_SERROPTIONNEEDED$non_lazy_ptr:
.indirect_symbol _RESSTR_CUSTAPP_SERROPTIONNEEDED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CUSTAPP$_Ld5$non_lazy_ptr:
.indirect_symbol _$CUSTAPP$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CUSTAPP$_Ld7$non_lazy_ptr:
.indirect_symbol _$CUSTAPP$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CUSTAPP$_Ld9$non_lazy_ptr:
.indirect_symbol _$CUSTAPP$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CUSTAPP$_Ld11$non_lazy_ptr:
.indirect_symbol _$CUSTAPP$_Ld11
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_CUSTAPP_START
_RESSTR_CUSTAPP_START:
	.long	_$CUSTAPP$_Ld16
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_CUSTAPP_SERRINVALIDOPTION
_RESSTR_CUSTAPP_SERRINVALIDOPTION:
	.long	_$CUSTAPP$_Ld20
	.long	_$CUSTAPP$_Ld18
	.long	_$CUSTAPP$_Ld18
	.long	53831826

.data
	.align 2
.globl	_RESSTR_CUSTAPP_SERRNOOPTIONALLOWED
_RESSTR_CUSTAPP_SERRNOOPTIONALLOWED:
	.long	_$CUSTAPP$_Ld24
	.long	_$CUSTAPP$_Ld22
	.long	_$CUSTAPP$_Ld22
	.long	114714995

.data
	.align 2
.globl	_RESSTR_CUSTAPP_SERROPTIONNEEDED
_RESSTR_CUSTAPP_SERROPTIONNEEDED:
	.long	_$CUSTAPP$_Ld28
	.long	_$CUSTAPP$_Ld26
	.long	_$CUSTAPP$_Ld26
	.long	43718963

.data
	.align 2
.globl	_RESSTR_CUSTAPP_END
_RESSTR_CUSTAPP_END:
	.long	_RESSTR_CUSTAPP_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

