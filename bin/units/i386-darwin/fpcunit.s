# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPCUNIT_TTESTWARNING_$__RUNTEST
_FPCUNIT_TTESTWARNING_$__RUNTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj10
Lj10:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj11
	jmp	Lj12
Lj11:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-28(%ebp),%edx
	movl	L_RESSTR_FPCUNIT_SCOMPARE$non_lazy_ptr-Lj10(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj21
Lj12:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-28(%ebp),%edx
	movl	L_RESSTR_FPCUNIT_SCOMPARENOTEQUAL$non_lazy_ptr-Lj10(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj21:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$$EASSERTIONFAILEDERROR
_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$$EASSERTIONFAILEDERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj32
	jmp	Lj33
Lj32:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj33:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj38
	jmp	Lj39
Lj38:
	jmp	Lj30
Lj39:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj42
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj46
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
Lj46:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	call	LFPC_RERAISE$stub
Lj47:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj56
Lj57:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj56:
Lj42:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj44
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj61
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj62
	jmp	Lj63
Lj62:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj63:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj61:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj60
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj60:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj44
Lj44:
Lj30:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$ANSISTRING$$EASSERTIONFAILEDERROR
_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$ANSISTRING$$EASSERTIONFAILEDERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj70
	jmp	Lj71
Lj70:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj71:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj76
	jmp	Lj77
Lj76:
	jmp	Lj68
Lj77:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj80
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj84
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
Lj84:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj85
	call	LFPC_RERAISE$stub
Lj85:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj95
	jmp	Lj94
Lj95:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj94:
Lj80:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj82
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj99
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj100
	jmp	Lj101
Lj100:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj101:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj99:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj98:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj82
Lj82:
Lj68:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__CREATEFAILURE$TTEST$EXCEPTION$TTESTSTEP$$TTESTFAILURE
_FPCUNIT_TTESTFAILURE_$__CREATEFAILURE$TTEST$EXCEPTION$TTESTSTEP$$TTESTFAILURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj108
	jmp	Lj109
Lj108:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj109:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj114
	jmp	Lj115
Lj114:
	jmp	Lj106
Lj115:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj118
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj122
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-96(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	movl	%eax,4(%ebx)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-96(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-12(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-100(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,20(%edx)
	movl	12(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,24(%ebx)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,32(%eax)
Lj122:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj123
	call	LFPC_RERAISE$stub
Lj123:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj153
	jmp	Lj152
Lj153:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj151
	jmp	Lj152
Lj151:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj152:
Lj118:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj120
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj157
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj158
	jmp	Lj159
Lj158:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj159:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj157:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj156
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj156:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj120
Lj120:
Lj106:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING
_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj165
Lj165:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj166
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj169
	jmp	Lj170
Lj169:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	leal	-12(%ebp),%eax
	movl	L_$FPCUNIT$_Ld1$non_lazy_ptr-Lj165(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj177
Lj170:
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
Lj177:
	movl	-12(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$FPCUNIT$_Ld3$non_lazy_ptr-Lj165(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj166:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj167
	call	LFPC_RERAISE$stub
Lj167:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING
_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	movl	%edi,-268(%ebp)
	call	Lj193
Lj193:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj194
	jmp	Lj195
Lj194:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	-264(%ebp),%edx
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-264(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj204
Lj195:
	movl	L_$FPCUNIT$_Ld5$non_lazy_ptr-Lj193(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj204:
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	movl	-268(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING
_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj208
Lj208:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edi
	movl	24(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%edi),%eax
	movl	%eax,(%esi)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj211
	jmp	Lj212
Lj211:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$FPCUNIT$_Ld7$non_lazy_ptr-Lj208(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj219
Lj212:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$2,%eax
	je	Lj220
	jmp	Lj221
Lj220:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$FPCUNIT$_Ld9$non_lazy_ptr-Lj208(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj221:
Lj219:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__GETISFAILURE$$BOOLEAN
_FPCUNIT_TTESTFAILURE_$__GETISFAILURE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj229
Lj229:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_VMT_FPCUNIT_EASSERTIONFAILEDERROR$non_lazy_ptr-Lj229(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__GETISIGNOREDTEST$$BOOLEAN
_FPCUNIT_TTESTFAILURE_$__GETISIGNOREDTEST$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj237
Lj237:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_VMT_FPCUNIT_EIGNOREDTEST$non_lazy_ptr-Lj237(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTFAILURE_$__SETTESTLASTSTEP$TTESTSTEP
_FPCUNIT_TTESTFAILURE_$__SETTESTLASTSTEP$TTESTSTEP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTEST_$__GETTESTNAME$$ANSISTRING
_FPCUNIT_TTEST_$__GETTESTNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj249
Lj249:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$FPCUNIT$_Ld11$non_lazy_ptr-Lj249(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTEST_$__GETTESTSUITENAME$$ANSISTRING
_FPCUNIT_TTEST_$__GETTESTSUITENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj253
Lj253:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$FPCUNIT$_Ld11$non_lazy_ptr-Lj253(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTEST_$__COUNTTESTCASES$$LONGINT
_FPCUNIT_TTEST_$__COUNTTESTCASES$$LONGINT:
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
.globl	_FPCUNIT_TTEST_$__GETENABLEIGNORES$$BOOLEAN
_FPCUNIT_TTEST_$__GETENABLEIGNORES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTEST_$__RUN$TTESTRESULT
_FPCUNIT_TTEST_$__RUN$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTEST_$__IGNORE$ANSISTRING
_FPCUNIT_TTEST_$__IGNORE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj267
Lj267:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testb	%al,%al
	jne	Lj268
	jmp	Lj269
Lj268:
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPCUNIT_EIGNOREDTEST$non_lazy_ptr-Lj267(%ebx),%edx
	movl	$0,%eax
	call	L_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$ANSISTRING$$EASSERTIONFAILEDERROR$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj267(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj269:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__FAIL$ANSISTRING
_FPCUNIT_TASSERT_$__FAIL$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj279
Lj279:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPCUNIT_EASSERTIONFAILEDERROR$non_lazy_ptr-Lj279(%ebx),%edx
	movl	$0,%eax
	call	L_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$ANSISTRING$$EASSERTIONFAILEDERROR$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj279(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN
_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj288
	jmp	Lj289
Lj288:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj289:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTTRUE$BOOLEAN
_FPCUNIT_TASSERT_$__ASSERTTRUE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN
_FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	seteb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTFALSE$BOOLEAN
_FPCUNIT_TASSERT_$__ASSERTFALSE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%cl
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj319
Lj319:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%eax
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
	jne	Lj320
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%esi
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj319(%ebx),%ecx
	movl	40(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	%cl
	movl	-12(%ebp),%eax
	movl	%esi,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj320:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj321
	call	LFPC_RERAISE$stub
Lj321:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj351
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$stub
Lj351:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj352
	call	LFPC_RERAISE$stub
Lj352:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING
_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$LONGINT$LONGINT
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
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
	jne	Lj372
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$1,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	seteb	%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj372:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj373
	call	LFPC_RERAISE$stub
Lj373:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$LONGINT$LONGINT
_FPCUNIT_TASSERT_$__ASSERTEQUALS$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$INT64$INT64
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj415
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movl	%ebx,%eax
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%edx
	movl	16(%ebp),%eax
	movl	20(%ebp),%ecx
	cmpl	12(%ebp),%ecx
	jne	Lj443
	cmpl	8(%ebp),%eax
	jne	Lj443
	jmp	Lj442
	jmp	Lj443
Lj442:
	movb	$1,%cl
	jmp	Lj444
Lj443:
	movb	$0,%cl
Lj444:
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj415:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj416
	call	LFPC_RERAISE$stub
Lj416:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$INT64$INT64
_FPCUNIT_TASSERT_$__ASSERTEQUALS$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$INT64$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CURRENCY$CURRENCY
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CURRENCY$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj459
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-60(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movl	%ebx,%eax
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%edx
	fildq	8(%ebp)
	fildq	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	seteb	%cl
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj459:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj460
	call	LFPC_RERAISE$stub
Lj460:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$CURRENCY$CURRENCY
_FPCUNIT_TASSERT_$__ASSERTEQUALS$CURRENCY$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CURRENCY$CURRENCY$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$DOUBLE$DOUBLE$DOUBLE
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$DOUBLE$DOUBLE$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj502
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-60(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movl	%ebx,%eax
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%edx
	fldl	16(%ebp)
	fldl	24(%ebp)
	fsubp	%st,%st(1)
	fabs
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setaeb	%cl
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj502:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj503
	call	LFPC_RERAISE$stub
Lj503:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$DOUBLE$DOUBLE$DOUBLE
_FPCUNIT_TASSERT_$__ASSERTEQUALS$DOUBLE$DOUBLE$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	24(%ebp),%eax
	movl	%eax,16(%esp)
	movl	28(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$DOUBLE$DOUBLE$DOUBLE$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$ANSISTRING
_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	setneb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$BOOLEAN$BOOLEAN
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-68(%ebp)
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
	jne	Lj555
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movb	8(%ebp),%al
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movb	-8(%ebp),%al
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$1,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movb	-8(%ebp),%al
	cmpb	8(%ebp),%al
	seteb	%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj555:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj556
	call	LFPC_RERAISE$stub
Lj556:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$BOOLEAN$BOOLEAN
_FPCUNIT_TASSERT_$__ASSERTEQUALS$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movb	-4(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$BOOLEAN$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CHAR$CHAR
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-68(%ebp)
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
	jne	Lj602
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movb	8(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movb	-8(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-68(%ebp),%eax
	movb	$1,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movb	-8(%ebp),%al
	cmpb	8(%ebp),%al
	seteb	%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj602:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj603
	call	LFPC_RERAISE$stub
Lj603:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$CHAR$CHAR
_FPCUNIT_TASSERT_$__ASSERTEQUALS$CHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movb	-4(%ebp),%cl
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CHAR$CHAR$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS
_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
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
	jne	Lj647
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPCUNIT_TASSERT_$_ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS_GETN$TCLASS$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPCUNIT_TASSERT_$_ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS_GETN$TCLASS$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$1,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	seteb	%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj647:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj648
	call	LFPC_RERAISE$stub
Lj648:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$_ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS_GETN$TCLASS$$ANSISTRING
_FPCUNIT_TASSERT_$_ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS_GETN$TCLASS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	movl	%esi,-276(%ebp)
	movl	%edi,-272(%ebp)
	call	Lj646
Lj646:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj682
	jmp	Lj683
Lj682:
	movl	L_$FPCUNIT$_Ld5$non_lazy_ptr-Lj646(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj686
Lj683:
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-268(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
Lj686:
	movl	-280(%ebp),%ebx
	movl	-276(%ebp),%esi
	movl	-272(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEQUALS$TCLASS$TCLASS
_FPCUNIT_TASSERT_$__ASSERTEQUALS$TCLASS$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$TOBJECT$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$TOBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
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
	jne	Lj707
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$1,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	seteb	%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj707:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj708
	call	LFPC_RERAISE$stub
Lj708:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTSAME$TOBJECT$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTSAME$TOBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$TOBJECT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$POINTER$POINTER
_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
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
	jne	Lj750
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$1,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	seteb	%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj750:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj751
	call	LFPC_RERAISE$stub
Lj751:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTSAME$POINTER$POINTER
_FPCUNIT_TASSERT_$__ASSERTSAME$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$POINTER$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$TOBJECT$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$TOBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj792
Lj792:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	seteb	%cl
	movl	L_RESSTR_FPCUNIT_SEXPECTEDNOTSAME$non_lazy_ptr-Lj792(%esi),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTSAME$TOBJECT$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTNOTSAME$TOBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$TOBJECT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$POINTER$POINTER
_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj810
Lj810:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	seteb	%cl
	movl	L_RESSTR_FPCUNIT_SEXPECTEDNOTSAME$non_lazy_ptr-Lj810(%esi),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTSAME$POINTER$POINTER
_FPCUNIT_TASSERT_$__ASSERTNOTSAME$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$POINTER$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	setneb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULL$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTNOTNULL$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$ANSISTRING$IUNKNOWN
_FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$ANSISTRING$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj845
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	setneb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj845:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj846
	call	LFPC_RERAISE$stub
Lj846:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$IUNKNOWN
_FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj856
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$POINTER$stub
Lj856:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj857
	call	LFPC_RERAISE$stub
Lj857:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$POINTER
_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	setneb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNOTNULL$POINTER
_FPCUNIT_TASSERT_$__ASSERTNOTNULL$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	seteb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNULL$TOBJECT
_FPCUNIT_TASSERT_$__ASSERTNULL$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNULLINTF$ANSISTRING$IUNKNOWN
_FPCUNIT_TASSERT_$__ASSERTNULLINTF$ANSISTRING$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj899
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	seteb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj899:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj900
	call	LFPC_RERAISE$stub
Lj900:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNULLINTF$IUNKNOWN
_FPCUNIT_TASSERT_$__ASSERTNULLINTF$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj910
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$POINTER$stub
Lj910:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj911
	call	LFPC_RERAISE$stub
Lj911:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$POINTER
_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	seteb	%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTNULL$POINTER
_FPCUNIT_TASSERT_$__ASSERTNULL$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$ANSISTRING$EXCEPTCLASS$TRUNMETHOD
_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$ANSISTRING$EXCEPTCLASS$TRUNMETHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$696,%esp
	movl	%ebx,-680(%ebp)
	movl	%esi,-676(%ebp)
	call	Lj936
Lj936:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-672(%ebp)
	movl	$0,-668(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj937
	movb	$0,-13(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj944
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	call	*%edx
	movl	L_RESSTR_FPCUNIT_SNOEXCEPTION$non_lazy_ptr-Lj936(%ebx),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_FPCUNIT_SNOEXCEPTION$non_lazy_ptr-Lj936(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
Lj944:
	call	LFPC_POPADDRSTACK$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj946
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj936(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj952
	movl	%eax,-112(%ebp)
	leal	-124(%ebp),%ecx
	leal	-148(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-152(%ebp)
	testl	%eax,%eax
	jne	Lj953
	leal	-408(%ebp),%edx
	movl	-112(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-408(%ebp),%eax
	leal	-20(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-112(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-156(%ebp)
	movl	-156(%ebp),%esi
	movl	-8(%ebp),%edx
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj963
	jmp	Lj964
Lj963:
	leal	-408(%ebp),%edx
	movl	-112(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-408(%ebp),%esi
	leal	-664(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-664(%ebp),%eax
	movl	%esi,%edx
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj964:
Lj953:
	call	LFPC_POPADDRSTACK$stub
	movl	-152(%ebp),%eax
	testl	%eax,%eax
	je	Lj989
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj989:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj946
Lj952:
	call	LFPC_RERAISE$stub
Lj946:
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	leal	-672(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-672(%ebp)
	leal	-672(%ebp),%eax
	movl	%eax,(%esp)
	leal	-352(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-352(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$4,-96(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-96(%ebp),%edx
	movl	L_RESSTR_FPCUNIT_SEXCEPTIONCOMPARE$non_lazy_ptr-Lj936(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-672(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$FPCUNIT$_Ld3$non_lazy_ptr-Lj936(%ebx),%eax
	movl	%eax,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-80(%ebp),%edx
	leal	-668(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-668(%ebp),%edx
	movb	-13(%ebp),%cl
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj937:
	call	LFPC_POPADDRSTACK$stub
	leal	-672(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-672(%ebp)
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj938
	call	LFPC_RERAISE$stub
Lj938:
	movl	-680(%ebp),%ebx
	movl	-676(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$EXCEPTCLASS$TRUNMETHOD
_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$EXCEPTCLASS$TRUNMETHOD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$ANSISTRING$EXCEPTCLASS$TRUNMETHOD$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECK$BOOLEAN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECK$BOOLEAN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1032
	movb	-4(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub
Lj1032:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1033
	call	LFPC_RERAISE$stub
Lj1033:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEQUALS$EXTENDED$EXTENDED$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEQUALS$EXTENDED$EXTENDED$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	call	Lj1042
Lj1042:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1043
	movl	L_$FPCUNIT$_Ld13$non_lazy_ptr-Lj1042(%ebx),%eax
	fldt	(%eax)
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fistpq	(%esp)
	movl	L_$FPCUNIT$_Ld13$non_lazy_ptr-Lj1042(%ebx),%eax
	fldt	(%eax)
	fldt	20(%ebp)
	fmulp	%st,%st(1)
	fistpq	8(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CURRENCY$CURRENCY$stub
Lj1043:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1044
	call	LFPC_RERAISE$stub
Lj1044:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEQUALS$ANSISTRING$ANSISTRING$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEQUALS$ANSISTRING$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1056
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$stub
Lj1056:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1057
	call	LFPC_RERAISE$stub
Lj1057:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1069
	fldt	8(%ebp)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	(%esp)
	fldt	20(%ebp)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	8(%esp)
	fldt	32(%ebp)
	fstpl	-56(%ebp)
	fldl	-56(%ebp)
	fstpl	16(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$DOUBLE$DOUBLE$DOUBLE$stub
Lj1069:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1070
	call	LFPC_RERAISE$stub
Lj1070:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEQUALS$LONGINT$LONGINT$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEQUALS$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1084
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$LONGINT$LONGINT$stub
Lj1084:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1085
	call	LFPC_RERAISE$stub
Lj1085:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEQUALS$BOOLEAN$BOOLEAN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1097
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movb	-4(%ebp),%cl
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$BOOLEAN$BOOLEAN$stub
Lj1097:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1098
	call	LFPC_RERAISE$stub
Lj1098:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEQUALS$TCLASS$TCLASS$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEQUALS$TCLASS$TCLASS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1110
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS$stub
Lj1110:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1111
	call	LFPC_RERAISE$stub
Lj1111:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj1122
Lj1122:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%eax
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
	jne	Lj1123
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1122(%ebx),%ecx
	movl	40(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj1126
	jmp	Lj1127
Lj1126:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj1127:
Lj1123:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1124
	call	LFPC_RERAISE$stub
Lj1124:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-68(%ebp)
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
	jne	Lj1154
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1157
	jmp	Lj1158
Lj1157:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$0,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj1158:
Lj1154:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1155
	call	LFPC_RERAISE$stub
Lj1155:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-68(%ebp)
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
	jne	Lj1187
	movb	-4(%ebp),%al
	cmpb	-8(%ebp),%al
	je	Lj1190
	jmp	Lj1191
Lj1190:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movb	-8(%ebp),%al
	movb	$0,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movb	-4(%ebp),%al
	movb	$0,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movb	$0,%cl
	movl	%ebx,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj1191:
Lj1187:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1188
	call	LFPC_RERAISE$stub
Lj1188:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1224
	fldt	20(%ebp)
	fldt	32(%ebp)
	fsubp	%st,%st(1)
	fabs
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj1227
	jmp	Lj1228
Lj1227:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	32(%ebp),%eax
	movl	%eax,(%esp)
	movl	36(%ebp),%eax
	movl	%eax,4(%esp)
	movl	40(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING$stub
	movl	-52(%ebp),%ebx
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,(%esp)
	movl	24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	28(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	%ebx,%edx
	call	*144(%esi)
Lj1228:
Lj1224:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1225
	call	LFPC_RERAISE$stub
Lj1225:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNULL$IUNKNOWN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNULL$IUNKNOWN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1249
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTNULLINTF$ANSISTRING$IUNKNOWN$stub
Lj1249:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1250
	call	LFPC_RERAISE$stub
Lj1250:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNULL$TOBJECT$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNULL$TOBJECT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1260
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$TOBJECT$stub
Lj1260:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1261
	call	LFPC_RERAISE$stub
Lj1261:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNOTNULL$TOBJECT$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNOTNULL$TOBJECT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1271
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$TOBJECT$stub
Lj1271:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1272
	call	LFPC_RERAISE$stub
Lj1272:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1282
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$ANSISTRING$IUNKNOWN$stub
Lj1282:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1283
	call	LFPC_RERAISE$stub
Lj1283:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKIS$TOBJECT$TCLASS$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKIS$TOBJECT$TCLASS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-328(%ebp)
	movl	%esi,-324(%ebp)
	call	Lj1292
Lj1292:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-320(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1293
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1296
	jmp	Lj1297
Lj1296:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-316(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-316(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movb	$1,%cl
	movl	L_$FPCUNIT$_Ld14$non_lazy_ptr-Lj1292(%ebx),%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
	jmp	Lj1318
Lj1297:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%esi
	movl	-8(%ebp),%edx
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1319
	jmp	Lj1320
Lj1319:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-316(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-316(%ebp),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-56(%ebp),%esi
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-316(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-316(%ebp),%eax
	leal	-320(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-320(%ebp),%eax
	movb	$1,%cl
	movl	%esi,%edx
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj1320:
Lj1318:
Lj1293:
	call	LFPC_POPADDRSTACK$stub
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1294
	call	LFPC_RERAISE$stub
Lj1294:
	movl	-328(%ebp),%ebx
	movl	-324(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKSAME$TOBJECT$TOBJECT$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKSAME$TOBJECT$TOBJECT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1361
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$TOBJECT$TOBJECT$stub
Lj1361:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1362
	call	LFPC_RERAISE$stub
Lj1362:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER
_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	12(%ebp),%eax
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
	jne	Lj1374
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	12(%ebp),%edx
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj1374:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1375
	call	LFPC_RERAISE$stub
Lj1375:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKTRUE$BOOLEAN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKTRUE$BOOLEAN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
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
	jne	Lj1397
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj1400
	jmp	Lj1401
Lj1400:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movb	$1,%dl
	movb	$0,%al
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movb	$1,%dl
	movb	$1,%al
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	%ebx,%ecx
	call	*144(%esi)
Lj1401:
Lj1397:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1398
	call	LFPC_RERAISE$stub
Lj1398:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKFALSE$BOOLEAN$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKFALSE$BOOLEAN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
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
	jne	Lj1426
	cmpb	$0,-4(%ebp)
	jne	Lj1429
	jmp	Lj1430
Lj1429:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movb	$1,%dl
	movb	$1,%al
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%ebx
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movb	$1,%dl
	movb	$0,%al
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	%ebx,%ecx
	call	*144(%esi)
Lj1430:
Lj1426:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1427
	call	LFPC_RERAISE$stub
Lj1427:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__CHECKEXCEPTION$TRUNMETHOD$EXCEPTCLASS$ANSISTRING
_FPCUNIT_TASSERT_$__CHECKEXCEPTION$TRUNMETHOD$EXCEPTCLASS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj1455
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$ANSISTRING$EXCEPTCLASS$TRUNMETHOD$stub
Lj1455:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1456
	call	LFPC_RERAISE$stub
Lj1456:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__EQUALSERRORMESSAGE$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_FPCUNIT_TASSERT_$__EQUALSERRORMESSAGE$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	call	Lj1467
Lj1467:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-80(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1468
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1471
	jmp	Lj1472
Lj1471:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	12(%ebp),%edx
	leal	-80(%ebp),%eax
	movl	L_$FPCUNIT$_Ld16$non_lazy_ptr-Lj1467(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-76(%ebp),%edx
	movl	$2,%ecx
	movl	L_$FPCUNIT$_Ld18$non_lazy_ptr-Lj1467(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj1487
Lj1472:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	$1,%ecx
	movl	L_$FPCUNIT$_Ld20$non_lazy_ptr-Lj1467(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj1487:
Lj1468:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1469
	call	LFPC_RERAISE$stub
Lj1469:
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__NOTEQUALSERRORMESSAGE$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_FPCUNIT_TASSERT_$__NOTEQUALSERRORMESSAGE$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	call	Lj1497
Lj1497:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1498
	jmp	Lj1499
Lj1498:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$11,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-36(%ebp),%edx
	movl	$2,%ecx
	movl	L_$FPCUNIT$_Ld22$non_lazy_ptr-Lj1497(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj1508
Lj1499:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-28(%ebp),%edx
	movl	$1,%ecx
	movl	L_$FPCUNIT$_Ld24$non_lazy_ptr-Lj1497(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj1508:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TASSERT_$__SUITE$$TTEST
_FPCUNIT_TASSERT_$__SUITE$$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj1518
Lj1518:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj1518(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj1518(%esi),%ebx
	call	*136(%ebx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__CREATE$$TTESTCASE
_FPCUNIT_TTESTCASE_$__CREATE$$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1529
	jmp	Lj1530
Lj1529:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1530:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1535
	jmp	Lj1536
Lj1535:
	jmp	Lj1527
Lj1536:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1539
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1543
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movb	$1,16(%eax)
Lj1543:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1544
	call	LFPC_RERAISE$stub
Lj1544:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1554
	jmp	Lj1553
Lj1554:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1552
	jmp	Lj1553
Lj1552:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1553:
Lj1539:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1541
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1558
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1559
	jmp	Lj1560
Lj1559:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1560:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1558:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1557
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1557:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1541
Lj1541:
Lj1527:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__CREATEWITHNAME$ANSISTRING$$TTESTCASE
_FPCUNIT_TTESTCASE_$__CREATEWITHNAME$ANSISTRING$$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1567
	jmp	Lj1568
Lj1567:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1568:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1573
	jmp	Lj1574
Lj1573:
	jmp	Lj1565
Lj1574:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1577
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1581
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%ebx)
Lj1581:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1582
	call	LFPC_RERAISE$stub
Lj1582:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1592
	jmp	Lj1591
Lj1592:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1590
	jmp	Lj1591
Lj1590:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1591:
Lj1577:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1579
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1596
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1597
	jmp	Lj1598
Lj1597:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1598:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1596:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1595
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1595:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1579
Lj1579:
Lj1565:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__CREATEWITH$ANSISTRING$ANSISTRING$$TTESTCASE
_FPCUNIT_TTESTCASE_$__CREATEWITH$ANSISTRING$ANSISTRING$$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1605
	jmp	Lj1606
Lj1605:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1606:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1611
	jmp	Lj1612
Lj1611:
	jmp	Lj1603
Lj1612:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1615
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1619
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,12(%ebx)
Lj1619:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1620
	call	LFPC_RERAISE$stub
Lj1620:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1632
	jmp	Lj1631
Lj1632:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1630
	jmp	Lj1631
Lj1630:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1631:
Lj1615:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1617
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1636
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1637
	jmp	Lj1638
Lj1637:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1638:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1636:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1635
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1635:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1617
Lj1617:
Lj1603:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__ASSTRING$$ANSISTRING
_FPCUNIT_TTESTCASE_$__ASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	call	Lj1644
Lj1644:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1645
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$FPCUNIT$_Ld26$non_lazy_ptr-Lj1644(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-328(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPCUNIT$_Ld28$non_lazy_ptr-Lj1644(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1645:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1646
	call	LFPC_RERAISE$stub
Lj1646:
	movl	-332(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__COUNTTESTCASES$$LONGINT
_FPCUNIT_TTESTCASE_$__COUNTTESTCASES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$1,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__CREATERESULT$$TTESTRESULT
_FPCUNIT_TTESTCASE_$__CREATERESULT$$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1671
Lj1671:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_FPCUNIT_TTESTRESULT$non_lazy_ptr-Lj1671(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTRESULT$non_lazy_ptr-Lj1671(%ebx),%ecx
	call	*100(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__GETTESTNAME$$ANSISTRING
_FPCUNIT_TTESTCASE_$__GETTESTNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__GETENABLEIGNORES$$BOOLEAN
_FPCUNIT_TTESTCASE_$__GETENABLEIGNORES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	16(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__GETTESTSUITENAME$$ANSISTRING
_FPCUNIT_TTESTCASE_$__GETTESTSUITENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	12(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__SETTESTSUITENAME$ANSISTRING
_FPCUNIT_TTESTCASE_$__SETTESTSUITENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj1692
	jmp	Lj1693
Lj1692:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,12(%ebx)
Lj1693:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__SETTESTNAME$ANSISTRING
_FPCUNIT_TTESTCASE_$__SETTESTNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__SETENABLEIGNORES$BOOLEAN
_FPCUNIT_TTESTCASE_$__SETENABLEIGNORES$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,16(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__CREATERESULTANDRUN$$TTESTRESULT
_FPCUNIT_TTESTCASE_$__CREATERESULTANDRUN$$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__RUN$TTESTRESULT
_FPCUNIT_TTESTCASE_$__RUN$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__RUN$TTESTCASE$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__RUNBARE
_FPCUNIT_TTESTCASE_$__RUNBARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj1730
	movl	-4(%ebp),%eax
	movl	$1,4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*160(%edx)
	movl	-4(%ebp),%eax
	movl	$2,4(%eax)
Lj1730:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1731
	decl	%eax
	testl	%eax,%eax
	je	Lj1732
Lj1732:
	call	LFPC_RERAISE$stub
Lj1731:
	movl	-4(%ebp),%eax
	movl	$3,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__RUNTEST
_FPCUNIT_TTESTCASE_$__RUNTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-328(%ebp)
	call	Lj1745
Lj1745:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-324(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1746
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	L_$FPCUNIT$_Ld30$non_lazy_ptr-Lj1745(%ebx),%edx
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	leal	-320(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-320(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER$stub
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jne	Lj1767
	jmp	Lj1768
Lj1767:
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	call	*%edx
	jmp	Lj1777
Lj1768:
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	leal	-324(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	L_RESSTR_FPCUNIT_SMETHODNOTFOUND$non_lazy_ptr-Lj1745(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-324(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub
Lj1777:
Lj1746:
	call	LFPC_POPADDRSTACK$stub
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1747
	call	LFPC_RERAISE$stub
Lj1747:
	movl	-328(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__SETUP
_FPCUNIT_TTESTCASE_$__SETUP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTCASE_$__TEARDOWN
_FPCUNIT_TTESTCASE_$__TEARDOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__CREATE$TCLASS$ANSISTRING$$TTESTSUITE
_FPCUNIT_TTESTSUITE_$__CREATE$TCLASS$ANSISTRING$$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1796
	jmp	Lj1797
Lj1796:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1797:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1802
	jmp	Lj1803
Lj1802:
	jmp	Lj1794
Lj1803:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1806
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1810
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,12(%ebx)
Lj1810:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1811
	call	LFPC_RERAISE$stub
Lj1811:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1823
	jmp	Lj1822
Lj1823:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1821
	jmp	Lj1822
Lj1821:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1822:
Lj1806:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1808
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1827
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1828
	jmp	Lj1829
Lj1828:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1829:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1827:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1826
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1826:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1808
Lj1808:
Lj1794:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__CREATE$TCLASS$$TTESTSUITE
_FPCUNIT_TTESTSUITE_$__CREATE$TCLASS$$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$648,%esp
	movl	%ebx,-636(%ebp)
	movl	%esi,-632(%ebp)
	movl	%edi,-628(%ebp)
	call	Lj1835
Lj1835:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-624(%ebp)
	movl	$0,-108(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1836
	jmp	Lj1837
Lj1836:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1837:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1842
	jmp	Lj1843
Lj1842:
	jmp	Lj1834
Lj1843:
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1846
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1850
	movl	-4(%ebp),%edx
	movl	L_VMT_FPCUNIT_TASSERT$non_lazy_ptr-Lj1835(%edi),%eax
	call	L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$POINTER$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-364(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-364(%ebp),%eax
	leal	-108(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-108(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	movl	L_VMT_FPCUNIT_TTESTCASE$non_lazy_ptr-Lj1835(%edi),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1871
	jmp	Lj1872
Lj1871:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1835(%edi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-364(%ebp)
	testl	%eax,%eax
	jne	Lj1885
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS$stub
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1894
	decl	-20(%ebp)
	.align 2
Lj1895:
	incl	-20(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-620(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-620(%ebp),%eax
	leal	-108(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-108(%ebp),%eax
	movl	%eax,(%esp)
	leal	-624(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-624(%ebp)
	leal	-624(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-624(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	$0,%eax
	movl	-24(%ebp),%esi
	call	*176(%esi)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
	cmpl	-20(%ebp),%ebx
	jg	Lj1895
Lj1894:
Lj1885:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-364(%ebp),%eax
	testl	%eax,%eax
	je	Lj1886
	decl	%eax
	testl	%eax,%eax
	je	Lj1887
Lj1887:
	call	LFPC_RERAISE$stub
Lj1886:
	jmp	Lj1926
Lj1872:
	leal	-624(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-624(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-364(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-364(%ebp),%eax
	leal	-108(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-108(%ebp),%edx
	movl	L_RESSTR_FPCUNIT_SNOVALIDINHERITANCE$non_lazy_ptr-Lj1835(%edi),%eax
	movl	4(%eax),%ecx
	leal	-624(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-624(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPCUNIT_TTESTSUITE_$__WARNING$ANSISTRING$$TTESTCASE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
Lj1926:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1949
	jmp	Lj1950
Lj1949:
	leal	-624(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-624(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-364(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-364(%ebp),%eax
	leal	-108(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-108(%ebp),%ecx
	movl	L_RESSTR_FPCUNIT_SNOVALIDTESTS$non_lazy_ptr-Lj1835(%edi),%eax
	movl	4(%eax),%edx
	leal	-624(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-624(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPCUNIT_TTESTSUITE_$__WARNING$ANSISTRING$$TTESTCASE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
Lj1950:
Lj1850:
	call	LFPC_POPADDRSTACK$stub
	leal	-624(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-624(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1851
	call	LFPC_RERAISE$stub
Lj1851:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1975
	jmp	Lj1974
Lj1975:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1973
	jmp	Lj1974
Lj1973:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1974:
Lj1846:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1848
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1979
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1980
	jmp	Lj1981
Lj1980:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1981:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1979:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1978
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1978:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1848
Lj1848:
Lj1834:
	movl	-12(%ebp),%eax
	movl	-636(%ebp),%ebx
	movl	-632(%ebp),%esi
	movl	-628(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__CREATE$array_of_TCLASS$$TTESTSUITE
_FPCUNIT_TTESTSUITE_$__CREATE$array_of_TCLASS$$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj1987
Lj1987:
	popl	-100(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$2,%esi
	movl	%edx,%edi
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%ebx
	movl	%esi,%ecx
	movl	%ebx,%edx
	movl	%edi,%eax
	call	LFPC_MOVE$stub
	movl	%ebx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1988
	jmp	Lj1989
Lj1988:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1989:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1994
	jmp	Lj1995
Lj1994:
	jmp	Lj1986
Lj1995:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1998
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj2002
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	8(%ebp),%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2010
	decl	-16(%ebp)
	.align 2
Lj2011:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	$0,(%eax,%edx,4)
	jne	Lj2012
	jmp	Lj2013
Lj2012:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%ecx
	movl	-100(%ebp),%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj1987(%eax),%edx
	movl	$0,%eax
	movl	-100(%ebp),%edi
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj1987(%edi),%esi
	call	*136(%esi)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
Lj2013:
	cmpl	-16(%ebp),%ebx
	jg	Lj2011
Lj2010:
Lj2002:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj2003
	call	LFPC_RERAISE$stub
Lj2003:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2026
	jmp	Lj2025
Lj2026:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2024
	jmp	Lj2025
Lj2024:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2025:
Lj1998:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2000
	leal	-68(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj2030
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2031
	jmp	Lj2032
Lj2031:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2032:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2030:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj2029
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2029:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2000
Lj2000:
Lj1986:
	movl	-12(%ebp),%eax
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__CREATE$ANSISTRING$$TTESTSUITE
_FPCUNIT_TTESTSUITE_$__CREATE$ANSISTRING$$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2039
	jmp	Lj2040
Lj2039:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2040:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2045
	jmp	Lj2046
Lj2045:
	jmp	Lj2037
Lj2046:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2049
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2053
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,12(%ebx)
Lj2053:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2054
	call	LFPC_RERAISE$stub
Lj2054:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2064
	jmp	Lj2063
Lj2064:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2062
	jmp	Lj2063
Lj2062:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2063:
Lj2049:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2051
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2068
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2069
	jmp	Lj2070
Lj2069:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2070:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2068:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2067
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2067:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2051
Lj2051:
Lj2037:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__CREATE$$TTESTSUITE
_FPCUNIT_TTESTSUITE_$__CREATE$$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj2076
Lj2076:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2077
	jmp	Lj2078
Lj2077:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2078:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2083
	jmp	Lj2084
Lj2083:
	jmp	Lj2075
Lj2084:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2087
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2091
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj2076(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movb	$1,20(%eax)
Lj2091:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2092
	call	LFPC_RERAISE$stub
Lj2092:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2108
	jmp	Lj2107
Lj2108:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2106
	jmp	Lj2107
Lj2106:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2107:
Lj2087:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2089
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2112
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2113
	jmp	Lj2114
Lj2113:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2114:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2112:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2111
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2111:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2089
Lj2089:
Lj2075:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__DESTROY
_FPCUNIT_TTESTSUITE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2121
	jmp	Lj2122
Lj2121:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2122:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2135
	jmp	Lj2134
Lj2135:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2133
	jmp	Lj2134
Lj2133:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2134:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__GETTEST$LONGINT$$TTEST
_FPCUNIT_TTESTSUITE_$__GETTEST$LONGINT$$TTEST:
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
.globl	_FPCUNIT_TTESTSUITE_$__GETTESTNAME$$ANSISTRING
_FPCUNIT_TTESTSUITE_$__GETTESTNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	12(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__GETTESTSUITENAME$$ANSISTRING
_FPCUNIT_TTESTSUITE_$__GETTESTSUITENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__GETENABLEIGNORES$$BOOLEAN
_FPCUNIT_TTESTSUITE_$__GETENABLEIGNORES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	20(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__SETTESTNAME$ANSISTRING
_FPCUNIT_TTESTSUITE_$__SETTESTNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__SETTESTSUITENAME$ANSISTRING
_FPCUNIT_TTESTSUITE_$__SETTESTSUITENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj2164
	jmp	Lj2165
Lj2164:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
Lj2165:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__SETENABLEIGNORES$BOOLEAN
_FPCUNIT_TTESTSUITE_$__SETENABLEIGNORES$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	20(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj2174
	jmp	Lj2175
Lj2174:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,20(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2179
	decl	-12(%ebp)
	.align 2
Lj2180:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movb	-4(%ebp),%dl
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj2180
Lj2179:
Lj2175:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__COUNTTESTCASES$$LONGINT
_FPCUNIT_TTESTSUITE_$__COUNTTESTCASES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2196
	decl	-12(%ebp)
	.align 2
Lj2197:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-8(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj2197
Lj2196:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__RUN$TTESTRESULT
_FPCUNIT_TTESTSUITE_$__RUN$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2210
	jmp	Lj2211
Lj2210:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__STARTTESTSUITE$TTESTSUITE$stub
Lj2211:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2217
	decl	-12(%ebp)
	.align 2
Lj2218:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*152(%esi)
	cmpl	-12(%ebp),%ebx
	jg	Lj2218
Lj2217:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2229
	jmp	Lj2230
Lj2229:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__ENDTESTSUITE$TTESTSUITE$stub
Lj2230:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__RUNTEST$TTEST$TTESTRESULT
_FPCUNIT_TTESTSUITE_$__RUNTEST$TTEST$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__ADDTEST$TTEST
_FPCUNIT_TTESTSUITE_$__ADDTEST$TTEST:
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
	jne	Lj2243
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2250
	jmp	Lj2251
Lj2250:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj2251:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movb	%al,%dl
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
Lj2243:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2244
	call	LFPC_RERAISE$stub
Lj2244:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__ADDTESTSUITEFROMCLASS$TCLASS
_FPCUNIT_TTESTSUITE_$__ADDTESTSUITEFROMCLASS$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2271
Lj2271:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj2271(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj2271(%esi),%ebx
	call	*136(%ebx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTSUITE_$__WARNING$ANSISTRING$$TTESTCASE
_FPCUNIT_TTESTSUITE_$__WARNING$ANSISTRING$$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj2283
Lj2283:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_FPCUNIT_TTESTWARNING$non_lazy_ptr-Lj2283(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPCUNIT_TTESTWARNING$non_lazy_ptr-Lj2283(%ebx),%ecx
	call	*172(%ecx)
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,20(%esi)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__CREATE$$TTESTRESULT
_FPCUNIT_TTESTRESULT_$__CREATE$$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj2295
Lj2295:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2296
	jmp	Lj2297
Lj2296:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2297:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2302
	jmp	Lj2303
Lj2302:
	jmp	Lj2294
Lj2303:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2306
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2310
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj2295(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj2295(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj2295(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj2295(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,20(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj2295(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	movl	-8(%ebp),%eax
	fstpl	28(%eax)
Lj2310:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2311
	call	LFPC_RERAISE$stub
Lj2311:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2351
	jmp	Lj2350
Lj2351:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2349
	jmp	Lj2350
Lj2349:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2350:
Lj2306:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2308
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2355
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2356
	jmp	Lj2357
Lj2356:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2357:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2355:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2354
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2354:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2308
Lj2308:
Lj2294:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__DESTROY
_FPCUNIT_TTESTRESULT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2364
	jmp	Lj2365
Lj2364:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2365:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2386
	jmp	Lj2385
Lj2386:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2384
	jmp	Lj2385
Lj2384:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2385:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__CLEARERRORLISTS
_FPCUNIT_TTESTRESULT_$__CLEARERRORLISTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_TESTUTILS_FREEOBJECTS$TFPLIST$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT
_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT
_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT:
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
.globl	_FPCUNIT_TTESTRESULT_$__GETNUMIGNOREDTESTS$$LONGINT
_FPCUNIT_TTESTRESULT_$__GETNUMIGNOREDTESTS$$LONGINT:
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
.globl	_FPCUNIT_TTESTRESULT_$__GETNUMSKIPPED$$LONGINT
_FPCUNIT_TTESTRESULT_$__GETNUMSKIPPED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__ADDLISTENER$ITESTLISTENER
_FPCUNIT_TTESTRESULT_$__ADDLISTENER$ITESTLISTENER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2421
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj2421:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2422
	call	LFPC_RERAISE$stub
Lj2422:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__REMOVELISTENER$ITESTLISTENER
_FPCUNIT_TTESTRESULT_$__REMOVELISTENER$ITESTLISTENER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2430
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT$stub
Lj2430:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2431
	call	LFPC_RERAISE$stub
Lj2431:
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__ADDFAILURE$TTEST$EASSERTIONFAILEDERROR$TFPLIST
_FPCUNIT_TTESTRESULT_$__ADDFAILURE$TTEST$EASSERTIONFAILEDERROR$TFPLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj2438
Lj2438:
	popl	%edi
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
	jne	Lj2439
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTFAILURE$non_lazy_ptr-Lj2438(%edi),%edx
	movl	$0,%eax
	call	L_FPCUNIT_TTESTFAILURE_$__CREATEFAILURE$TTEST$EXCEPTION$TTESTSTEP$$TTESTFAILURE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2459
	decl	-16(%ebp)
	.align 2
Lj2460:
	incl	-16(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-64(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	-64(%ebp),%esi
	movl	(%esi),%esi
	call	*12(%esi)
	cmpl	-16(%ebp),%ebx
	jg	Lj2460
Lj2459:
Lj2439:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2440
	call	LFPC_RERAISE$stub
Lj2440:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__ADDERROR$TTEST$EXCEPTION$ANSISTRING$ANSISTRING$LONGINT
_FPCUNIT_TTESTRESULT_$__ADDERROR$TTEST$EXCEPTION$ANSISTRING$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj2474
Lj2474:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2475
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPCUNIT_TTESTFAILURE$non_lazy_ptr-Lj2474(%edi),%edx
	movl	$0,%eax
	call	L_FPCUNIT_TTESTFAILURE_$__CREATEFAILURE$TTEST$EXCEPTION$TTESTSTEP$$TTESTFAILURE$stub
	movl	%eax,-20(%ebp)
	movl	16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-20(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2501
	decl	-16(%ebp)
	.align 2
Lj2502:
	incl	-16(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-68(%ebp)
	movl	-68(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-64(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	-64(%ebp),%esi
	movl	(%esi),%esi
	call	*16(%esi)
	cmpl	-16(%ebp),%ebx
	jg	Lj2502
Lj2501:
Lj2475:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2476
	call	LFPC_RERAISE$stub
Lj2476:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__ENDTEST$TTEST
_FPCUNIT_TTESTRESULT_$__ENDTEST$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2517
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2521
	decl	-12(%ebp)
	.align 2
Lj2522:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	-56(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*24(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj2522
Lj2521:
Lj2517:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2518
	call	LFPC_RERAISE$stub
Lj2518:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_PROTECTTEST$TTEST$TTESTRESULT
_FPCUNIT_PROTECTTEST$TTEST$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*168(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__RUN$TTESTCASE
_FPCUNIT_TTESTRESULT_$__RUN$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2538
Lj2538:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__SKIPTEST$TTESTCASE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2539
	jmp	Lj2540
Lj2539:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__STARTTEST$TTEST$stub
	movl	L_FPCUNIT_PROTECTTEST$TTEST$TTESTRESULT$non_lazy_ptr-Lj2538(%ebx),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__ENDTEST$TTEST$stub
Lj2540:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT
_FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$680,%esp
	movl	%ebx,-664(%ebp)
	call	Lj2560
Lj2560:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-660(%ebp)
	movl	$0,-656(%ebp)
	leal	-540(%ebp),%ecx
	leal	-564(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-568(%ebp)
	testl	%eax,%eax
	jne	Lj2561
	movb	$0,-268(%ebp)
	movb	$0,-524(%ebp)
	movl	$0,-528(%ebp)
	leal	-580(%ebp),%ecx
	leal	-604(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-608(%ebp)
	testl	%eax,%eax
	jne	Lj2572
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	*%ecx
Lj2572:
	call	LFPC_POPADDRSTACK$stub
	movl	-608(%ebp),%eax
	testl	%eax,%eax
	je	Lj2574
	movl	L_VMT_FPCUNIT_EIGNOREDTEST$non_lazy_ptr-Lj2560(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj2580
	movl	%eax,-612(%ebp)
	leal	-624(%ebp),%ecx
	leal	-648(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-652(%ebp)
	testl	%eax,%eax
	jne	Lj2581
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-612(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__ADDFAILURE$TTEST$EASSERTIONFAILEDERROR$TFPLIST$stub
Lj2581:
	call	LFPC_POPADDRSTACK$stub
	movl	-652(%ebp),%eax
	testl	%eax,%eax
	je	Lj2591
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2591:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2574
Lj2580:
	movl	L_VMT_FPCUNIT_EASSERTIONFAILEDERROR$non_lazy_ptr-Lj2560(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj2592
	movl	%eax,-652(%ebp)
	leal	-620(%ebp),%ecx
	leal	-648(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-624(%ebp)
	testl	%eax,%eax
	jne	Lj2593
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-652(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__ADDFAILURE$TTEST$EASSERTIONFAILEDERROR$TFPLIST$stub
Lj2593:
	call	LFPC_POPADDRSTACK$stub
	movl	-624(%ebp),%eax
	testl	%eax,%eax
	je	Lj2603
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2603:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2574
Lj2592:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj2560(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj2604
	movl	%eax,-652(%ebp)
	leal	-620(%ebp),%ecx
	leal	-648(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-624(%ebp)
	testl	%eax,%eax
	jne	Lj2605
	movl	-528(%ebp),%eax
	movl	%eax,(%esp)
	leal	-656(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-656(%ebp)
	leal	-656(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-656(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-660(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-660(%ebp)
	leal	-660(%ebp),%edx
	leal	-524(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-660(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-652(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__ADDERROR$TTEST$EXCEPTION$ANSISTRING$ANSISTRING$LONGINT$stub
Lj2605:
	call	LFPC_POPADDRSTACK$stub
	movl	-624(%ebp),%eax
	testl	%eax,%eax
	je	Lj2627
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2627:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2574
Lj2604:
	call	LFPC_RERAISE$stub
Lj2574:
Lj2561:
	call	LFPC_POPADDRSTACK$stub
	leal	-660(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-660(%ebp)
	leal	-656(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-656(%ebp)
	movl	-568(%ebp),%eax
	testl	%eax,%eax
	je	Lj2562
	call	LFPC_RERAISE$stub
Lj2562:
	movl	-664(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__STARTTEST$TTEST
_FPCUNIT_TTESTRESULT_$__STARTTEST$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2630
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2640
	decl	-16(%ebp)
	.align 2
Lj2641:
	incl	-16(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	-60(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*20(%ecx)
	cmpl	-16(%ebp),%ebx
	jg	Lj2641
Lj2640:
Lj2630:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2631
	call	LFPC_RERAISE$stub
Lj2631:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__WASSUCCESSFUL$$BOOLEAN
_FPCUNIT_TTESTRESULT_$__WASSUCCESSFUL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj2656
	jmp	Lj2655
Lj2656:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj2654
	jmp	Lj2655
Lj2654:
	movb	$1,-5(%ebp)
	jmp	Lj2657
Lj2655:
	movb	$0,-5(%ebp)
Lj2657:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__SKIPTEST$TTESTCASE$$BOOLEAN
_FPCUNIT_TTESTRESULT_$__SKIPTEST$TTESTCASE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj2662
	jmp	Lj2663
Lj2662:
	movb	$0,-9(%ebp)
	jmp	Lj2658
	jmp	Lj2666
Lj2663:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2668
	decl	-16(%ebp)
	.align 2
Lj2669:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	cmpl	-4(%ebp),%eax
	je	Lj2670
	jmp	Lj2671
Lj2670:
	movb	$1,-9(%ebp)
	jmp	Lj2658
Lj2671:
	cmpl	-16(%ebp),%ebx
	jg	Lj2669
Lj2668:
Lj2666:
Lj2658:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__ADDTOSKIPLIST$TTESTCASE
_FPCUNIT_TTESTRESULT_$__ADDTOSKIPLIST$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__REMOVEFROMSKIPLIST$TTESTCASE
_FPCUNIT_TTESTRESULT_$__REMOVEFROMSKIPLIST$TTESTCASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__STARTTESTSUITE$TTESTSUITE
_FPCUNIT_TTESTRESULT_$__STARTTESTSUITE$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2692
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2696
	decl	-12(%ebp)
	.align 2
Lj2697:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	-56(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*28(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj2697
Lj2696:
Lj2692:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2693
	call	LFPC_RERAISE$stub
Lj2693:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCUNIT_TTESTRESULT_$__ENDTESTSUITE$TTESTSUITE
_FPCUNIT_TTESTRESULT_$__ENDTESTSUITE$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2710
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2714
	decl	-12(%ebp)
	.align 2
Lj2715:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	call	LFPC_INTF_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	-56(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*32(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj2715
Lj2714:
Lj2710:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_INTF_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2711
	call	LFPC_RERAISE$stub
Lj2711:
	movl	-64(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld33
_$FPCUNIT$_Ld33:
	.byte	21
	.ascii	"EAssertionFailedError"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_EASSERTIONFAILEDERROR
_VMT_FPCUNIT_EASSERTIONFAILEDERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPCUNIT$_Ld33
	.long	0,0
	.long	_$FPCUNIT$_Ld34
	.long	_RTTI_FPCUNIT_EASSERTIONFAILEDERROR
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
.globl	_$FPCUNIT$_Ld36
_$FPCUNIT$_Ld36:
	.byte	12
	.ascii	"EIgnoredTest"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_EIGNOREDTEST
_VMT_FPCUNIT_EIGNOREDTEST:
	.long	12,-12
	.long	_VMT_FPCUNIT_EASSERTIONFAILEDERROR
	.long	_$FPCUNIT$_Ld36
	.long	0,0
	.long	_$FPCUNIT$_Ld37
	.long	_RTTI_FPCUNIT_EIGNOREDTEST
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
.globl	_$FPCUNIT$_Ld39
_$FPCUNIT$_Ld39:
	.byte	11
	.ascii	"TTestResult"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TTESTRESULT
_VMT_FPCUNIT_TTESTRESULT:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPCUNIT$_Ld39
	.long	0,0
	.long	_$FPCUNIT$_Ld40
	.long	_RTTI_FPCUNIT_TTESTRESULT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPCUNIT_TTESTRESULT_$__DESTROY
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
	.long	_FPCUNIT_TTESTRESULT_$__CREATE$$TTESTRESULT
	.long	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld42
_$FPCUNIT$_Ld42:
	.byte	10
	.ascii	"TTestSuite"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TTESTSUITE
_VMT_FPCUNIT_TTESTSUITE:
	.long	24,-24
	.long	_VMT_FPCUNIT_TTEST
	.long	_$FPCUNIT$_Ld42
	.long	0,0
	.long	_$FPCUNIT$_Ld43
	.long	_RTTI_FPCUNIT_TTESTSUITE
	.long	_INIT_FPCUNIT_TTESTSUITE
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPCUNIT_TTESTSUITE_$__DESTROY
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
	.long	_FPCUNIT_TTESTSUITE_$__GETTESTNAME$$ANSISTRING
	.long	_FPCUNIT_TTESTSUITE_$__GETTESTSUITENAME$$ANSISTRING
	.long	_FPCUNIT_TTESTSUITE_$__GETENABLEIGNORES$$BOOLEAN
	.long	_FPCUNIT_TTESTSUITE_$__SETTESTSUITENAME$ANSISTRING
	.long	_FPCUNIT_TTESTSUITE_$__SETENABLEIGNORES$BOOLEAN
	.long	_FPCUNIT_TTESTSUITE_$__COUNTTESTCASES$$LONGINT
	.long	_FPCUNIT_TTESTSUITE_$__RUN$TTESTRESULT
	.long	_FPCUNIT_TTESTSUITE_$__SETTESTNAME$ANSISTRING
	.long	_FPCUNIT_TTESTSUITE_$__CREATE$TCLASS$ANSISTRING$$TTESTSUITE
	.long	_FPCUNIT_TTESTSUITE_$__CREATE$TCLASS$$TTESTSUITE
	.long	_FPCUNIT_TTESTSUITE_$__CREATE$array_of_TCLASS$$TTESTSUITE
	.long	_FPCUNIT_TTESTSUITE_$__CREATE$ANSISTRING$$TTESTSUITE
	.long	_FPCUNIT_TTESTSUITE_$__CREATE$$TTESTSUITE
	.long	_FPCUNIT_TTESTSUITE_$__RUNTEST$TTEST$TTESTRESULT
	.long	_FPCUNIT_TTESTSUITE_$__ADDTEST$TTEST
	.long	_FPCUNIT_TTESTSUITE_$__ADDTESTSUITEFROMCLASS$TCLASS
	.long	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld45
_$FPCUNIT$_Ld45:
	.byte	5
	.ascii	"TTest"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TTEST
_VMT_FPCUNIT_TTEST:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPCUNIT$_Ld45
	.long	0,0
	.long	_$FPCUNIT$_Ld46
	.long	_RTTI_FPCUNIT_TTEST
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
	.long	_FPCUNIT_TTEST_$__GETTESTNAME$$ANSISTRING
	.long	_FPCUNIT_TTEST_$__GETTESTSUITENAME$$ANSISTRING
	.long	_FPCUNIT_TTEST_$__GETENABLEIGNORES$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCUNIT_TTEST_$__COUNTTESTCASES$$LONGINT
	.long	_FPCUNIT_TTEST_$__RUN$TTESTRESULT
	.long	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld48
_$FPCUNIT$_Ld48:
	.byte	7
	.ascii	"TAssert"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TASSERT
_VMT_FPCUNIT_TASSERT:
	.long	8,-8
	.long	_VMT_FPCUNIT_TTEST
	.long	_$FPCUNIT$_Ld48
	.long	0,0
	.long	_$FPCUNIT$_Ld49
	.long	_RTTI_FPCUNIT_TASSERT
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
	.long	_FPCUNIT_TTEST_$__GETTESTNAME$$ANSISTRING
	.long	_FPCUNIT_TTEST_$__GETTESTSUITENAME$$ANSISTRING
	.long	_FPCUNIT_TTEST_$__GETENABLEIGNORES$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCUNIT_TTEST_$__COUNTTESTCASES$$LONGINT
	.long	_FPCUNIT_TTEST_$__RUN$TTESTRESULT
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER
	.long	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld51
_$FPCUNIT$_Ld51:
	.byte	12
	.ascii	"TTestFailure"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TTESTFAILURE
_VMT_FPCUNIT_TTESTFAILURE:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPCUNIT$_Ld51
	.long	0,0
	.long	_$FPCUNIT$_Ld52
	.long	_RTTI_FPCUNIT_TTESTFAILURE
	.long	_INIT_FPCUNIT_TTESTFAILURE
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
.globl	_IID_FPCUNIT_ITESTLISTENER
_IID_FPCUNIT_ITESTLISTENER:
	.long	216650670
	.short	34858,55313
	.byte	148,1,173,235,94,76,127,193

.const_data
.globl	_IIDSTR_FPCUNIT_ITESTLISTENER
_IIDSTR_FPCUNIT_ITESTLISTENER:
	.byte	38
	.ascii	"{0CE9D3AE-882A-D811-9401-ADEB5E4C7FC1}"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld54
_$FPCUNIT$_Ld54:
	.byte	9
	.ascii	"TTestCase"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TTESTCASE
_VMT_FPCUNIT_TTESTCASE:
	.long	20,-20
	.long	_VMT_FPCUNIT_TASSERT
	.long	_$FPCUNIT$_Ld54
	.long	0,0
	.long	_$FPCUNIT$_Ld55
	.long	_RTTI_FPCUNIT_TTESTCASE
	.long	_INIT_FPCUNIT_TTESTCASE
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
	.long	_FPCUNIT_TTESTCASE_$__GETTESTNAME$$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__GETTESTSUITENAME$$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__GETENABLEIGNORES$$BOOLEAN
	.long	_FPCUNIT_TTESTCASE_$__SETTESTSUITENAME$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__SETENABLEIGNORES$BOOLEAN
	.long	_FPCUNIT_TTESTCASE_$__COUNTTESTCASES$$LONGINT
	.long	_FPCUNIT_TTESTCASE_$__RUN$TTESTRESULT
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER
	.long	_FPCUNIT_TTESTCASE_$__CREATERESULT$$TTESTRESULT
	.long	_FPCUNIT_TTESTCASE_$__SETUP
	.long	_FPCUNIT_TTESTCASE_$__TEARDOWN
	.long	_FPCUNIT_TTESTCASE_$__RUNTEST
	.long	_FPCUNIT_TTESTCASE_$__SETTESTNAME$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__RUNBARE
	.long	_FPCUNIT_TTESTCASE_$__CREATE$$TTESTCASE
	.long	_FPCUNIT_TTESTCASE_$__CREATEWITH$ANSISTRING$ANSISTRING$$TTESTCASE
	.long	_FPCUNIT_TTESTCASE_$__CREATEWITHNAME$ANSISTRING$$TTESTCASE
	.long	_FPCUNIT_TTESTCASE_$__CREATERESULTANDRUN$$TTESTRESULT
	.long	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld57
_$FPCUNIT$_Ld57:
	.byte	12
	.ascii	"TTestWarning"

.const_data
	.align 2
.globl	_VMT_FPCUNIT_TTESTWARNING
_VMT_FPCUNIT_TTESTWARNING:
	.long	24,-24
	.long	_VMT_FPCUNIT_TTESTCASE
	.long	_$FPCUNIT$_Ld57
	.long	0,0
	.long	_$FPCUNIT$_Ld58
	.long	_RTTI_FPCUNIT_TTESTWARNING
	.long	_INIT_FPCUNIT_TTESTWARNING
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
	.long	_FPCUNIT_TTESTCASE_$__GETTESTNAME$$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__GETTESTSUITENAME$$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__GETENABLEIGNORES$$BOOLEAN
	.long	_FPCUNIT_TTESTCASE_$__SETTESTSUITENAME$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__SETENABLEIGNORES$BOOLEAN
	.long	_FPCUNIT_TTESTCASE_$__COUNTTESTCASES$$LONGINT
	.long	_FPCUNIT_TTESTCASE_$__RUN$TTESTRESULT
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$LONGINT$LONGINT$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$BOOLEAN$BOOLEAN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTEQUALS$EXTENDED$EXTENDED$EXTENDED$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__CHECKNOTNULL$IUNKNOWN$ANSISTRING
	.long	_FPCUNIT_TASSERT_$__FAILNOTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$POINTER
	.long	_FPCUNIT_TTESTCASE_$__CREATERESULT$$TTESTRESULT
	.long	_FPCUNIT_TTESTCASE_$__SETUP
	.long	_FPCUNIT_TTESTCASE_$__TEARDOWN
	.long	_FPCUNIT_TTESTWARNING_$__RUNTEST
	.long	_FPCUNIT_TTESTCASE_$__SETTESTNAME$ANSISTRING
	.long	_FPCUNIT_TTESTCASE_$__RUNBARE
	.long	_FPCUNIT_TTESTCASE_$__CREATE$$TTESTCASE
	.long	_FPCUNIT_TTESTCASE_$__CREATEWITH$ANSISTRING$ANSISTRING$$TTESTCASE
	.long	_FPCUNIT_TTESTCASE_$__CREATEWITHNAME$ANSISTRING$$TTESTCASE
	.long	_FPCUNIT_TTESTCASE_$__CREATERESULTANDRUN$$TTESTRESULT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPCUNIT
_THREADVARLIST_FPCUNIT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$FPCUNIT$_Ld61
_$FPCUNIT$_Ld61:
	.short	0,1
	.long	0,-1,7
.reference _$FPCUNIT$_Ld60
.globl	_$FPCUNIT$_Ld60
_$FPCUNIT$_Ld60:
.reference _$FPCUNIT$_Ld61
	.ascii	"FPCUNIT\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld63
_$FPCUNIT$_Ld63:
	.short	0,1
	.long	0,-1,29
.reference _$FPCUNIT$_Ld62
.globl	_$FPCUNIT$_Ld62
_$FPCUNIT$_Ld62:
.reference _$FPCUNIT$_Ld63
	.ascii	" expected: <%s> but was: <%s>\000"
	.align 2
.globl	_$FPCUNIT$_Ld65
_$FPCUNIT$_Ld65:
	.short	0,1
	.long	0,-1,16
.reference _$FPCUNIT$_Ld64
.globl	_$FPCUNIT$_Ld64
_$FPCUNIT$_Ld64:
.reference _$FPCUNIT$_Ld65
	.ascii	"fpcunit.scompare\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld67
_$FPCUNIT$_Ld67:
	.short	0,1
	.long	0,-1,42
.reference _$FPCUNIT$_Ld66
.globl	_$FPCUNIT$_Ld66
_$FPCUNIT$_Ld66:
.reference _$FPCUNIT$_Ld67
	.ascii	" expected: not equal to <%s> but was: <%s>\000"
	.align 2
.globl	_$FPCUNIT$_Ld69
_$FPCUNIT$_Ld69:
	.short	0,1
	.long	0,-1,24
.reference _$FPCUNIT$_Ld68
.globl	_$FPCUNIT$_Ld68
_$FPCUNIT$_Ld68:
.reference _$FPCUNIT$_Ld69
	.ascii	"fpcunit.scomparenotequal\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld71
_$FPCUNIT$_Ld71:
	.short	0,1
	.long	0,-1,17
.reference _$FPCUNIT$_Ld70
.globl	_$FPCUNIT$_Ld70
_$FPCUNIT$_Ld70:
.reference _$FPCUNIT$_Ld71
	.ascii	"expected not same\000"
	.align 2
.globl	_$FPCUNIT$_Ld73
_$FPCUNIT$_Ld73:
	.short	0,1
	.long	0,-1,24
.reference _$FPCUNIT$_Ld72
.globl	_$FPCUNIT$_Ld72
_$FPCUNIT$_Ld72:
.reference _$FPCUNIT$_Ld73
	.ascii	"fpcunit.sexpectednotsame\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld75
_$FPCUNIT$_Ld75:
	.short	0,1
	.long	0,-1,39
.reference _$FPCUNIT$_Ld74
.globl	_$FPCUNIT$_Ld74
_$FPCUNIT$_Ld74:
.reference _$FPCUNIT$_Ld75
	.ascii	"Exception %s expected but %s was raised\000"
	.align 2
.globl	_$FPCUNIT$_Ld77
_$FPCUNIT$_Ld77:
	.short	0,1
	.long	0,-1,25
.reference _$FPCUNIT$_Ld76
.globl	_$FPCUNIT$_Ld76
_$FPCUNIT$_Ld76:
.reference _$FPCUNIT$_Ld77
	.ascii	"fpcunit.sexceptioncompare\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld79
_$FPCUNIT$_Ld79:
	.short	0,1
	.long	0,-1,21
.reference _$FPCUNIT$_Ld78
.globl	_$FPCUNIT$_Ld78
_$FPCUNIT$_Ld78:
.reference _$FPCUNIT$_Ld79
	.ascii	"Method <%s> not found\000"
	.align 2
.globl	_$FPCUNIT$_Ld81
_$FPCUNIT$_Ld81:
	.short	0,1
	.long	0,-1,23
.reference _$FPCUNIT$_Ld80
.globl	_$FPCUNIT$_Ld80
_$FPCUNIT$_Ld80:
.reference _$FPCUNIT$_Ld81
	.ascii	"fpcunit.smethodnotfound\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld83
_$FPCUNIT$_Ld83:
	.short	0,1
	.long	0,-1,32
.reference _$FPCUNIT$_Ld82
.globl	_$FPCUNIT$_Ld82
_$FPCUNIT$_Ld82:
.reference _$FPCUNIT$_Ld83
	.ascii	" does not inherit from TTestCase\000"
	.align 2
.globl	_$FPCUNIT$_Ld85
_$FPCUNIT$_Ld85:
	.short	0,1
	.long	0,-1,27
.reference _$FPCUNIT$_Ld84
.globl	_$FPCUNIT$_Ld84
_$FPCUNIT$_Ld84:
.reference _$FPCUNIT$_Ld85
	.ascii	"fpcunit.snovalidinheritance\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld87
_$FPCUNIT$_Ld87:
	.short	0,1
	.long	0,-1,24
.reference _$FPCUNIT$_Ld86
.globl	_$FPCUNIT$_Ld86
_$FPCUNIT$_Ld86:
.reference _$FPCUNIT$_Ld87
	.ascii	"No valid tests found in \000"
	.align 2
.globl	_$FPCUNIT$_Ld89
_$FPCUNIT$_Ld89:
	.short	0,1
	.long	0,-1,21
.reference _$FPCUNIT$_Ld88
.globl	_$FPCUNIT$_Ld88
_$FPCUNIT$_Ld88:
.reference _$FPCUNIT$_Ld89
	.ascii	"fpcunit.snovalidtests\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld91
_$FPCUNIT$_Ld91:
	.short	0,1
	.long	0,-1,12
.reference _$FPCUNIT$_Ld90
.globl	_$FPCUNIT$_Ld90
_$FPCUNIT$_Ld90:
.reference _$FPCUNIT$_Ld91
	.ascii	"no exception\000"
	.align 2
.globl	_$FPCUNIT$_Ld93
_$FPCUNIT$_Ld93:
	.short	0,1
	.long	0,-1,20
.reference _$FPCUNIT$_Ld92
.globl	_$FPCUNIT$_Ld92
_$FPCUNIT$_Ld92:
.reference _$FPCUNIT$_Ld93
	.ascii	"fpcunit.snoexception\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld2
_$FPCUNIT$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$FPCUNIT$_Ld1
.globl	_$FPCUNIT$_Ld1
_$FPCUNIT$_Ld1:
.reference _$FPCUNIT$_Ld2
	.ascii	".\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld4
_$FPCUNIT$_Ld4:
	.short	0,1
	.long	0,-1,2
.reference _$FPCUNIT$_Ld3
.globl	_$FPCUNIT$_Ld3
_$FPCUNIT$_Ld3:
.reference _$FPCUNIT$_Ld4
	.ascii	": \000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld6
_$FPCUNIT$_Ld6:
	.short	0,1
	.long	0,-1,5
.reference _$FPCUNIT$_Ld5
.globl	_$FPCUNIT$_Ld5
_$FPCUNIT$_Ld5:
.reference _$FPCUNIT$_Ld6
	.ascii	"<NIL>\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld8
_$FPCUNIT$_Ld8:
	.short	0,1
	.long	0,-1,8
.reference _$FPCUNIT$_Ld7
.globl	_$FPCUNIT$_Ld7
_$FPCUNIT$_Ld7:
.reference _$FPCUNIT$_Ld8
	.ascii	"[SETUP] \000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld10
_$FPCUNIT$_Ld10:
	.short	0,1
	.long	0,-1,11
.reference _$FPCUNIT$_Ld9
.globl	_$FPCUNIT$_Ld9
_$FPCUNIT$_Ld9:
.reference _$FPCUNIT$_Ld10
	.ascii	"[TEARDOWN] \000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld12
_$FPCUNIT$_Ld12:
	.short	0,1
	.long	0,-1,5
.reference _$FPCUNIT$_Ld11
.globl	_$FPCUNIT$_Ld11
_$FPCUNIT$_Ld11:
.reference _$FPCUNIT$_Ld12
	.ascii	"TTest\000"

.const
	.align 3
.globl	_$FPCUNIT$_Ld13
_$FPCUNIT$_Ld13:
	.byte	0,0,0,0,0,0,64,156,12,64

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld15
_$FPCUNIT$_Ld15:
	.short	0,1
	.long	0,-1,3
.reference _$FPCUNIT$_Ld14
.globl	_$FPCUNIT$_Ld14
_$FPCUNIT$_Ld14:
.reference _$FPCUNIT$_Ld15
	.ascii	"nil\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld17
_$FPCUNIT$_Ld17:
	.short	0,1
	.long	0,-1,2
.reference _$FPCUNIT$_Ld16
.globl	_$FPCUNIT$_Ld16
_$FPCUNIT$_Ld16:
.reference _$FPCUNIT$_Ld17
	.ascii	", \000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld19
_$FPCUNIT$_Ld19:
	.short	0,1
	.long	0,-1,42
.reference _$FPCUNIT$_Ld18
.globl	_$FPCUNIT$_Ld18
_$FPCUNIT$_Ld18:
.reference _$FPCUNIT$_Ld19
	.ascii	"%s\012Expected \012< %s > \012equals actual \012< %"
	.ascii	"s >\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld21
_$FPCUNIT$_Ld21:
	.short	0,1
	.long	0,-1,39
.reference _$FPCUNIT$_Ld20
.globl	_$FPCUNIT$_Ld20
_$FPCUNIT$_Ld20:
.reference _$FPCUNIT$_Ld21
	.ascii	"Expected \012< %s > \012equals actual \012< %s >\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld23
_$FPCUNIT$_Ld23:
	.short	0,1
	.long	0,-1,31
.reference _$FPCUNIT$_Ld22
.globl	_$FPCUNIT$_Ld22
_$FPCUNIT$_Ld22:
.reference _$FPCUNIT$_Ld23
	.ascii	"%s\012Expected:\012\"%s\"\012But was:\012\"%s\"\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld25
_$FPCUNIT$_Ld25:
	.short	0,1
	.long	0,-1,28
.reference _$FPCUNIT$_Ld24
.globl	_$FPCUNIT$_Ld24
_$FPCUNIT$_Ld24:
.reference _$FPCUNIT$_Ld25
	.ascii	"Expected:\012\"%s\"\012But was:\012\"%s\"\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld27
_$FPCUNIT$_Ld27:
	.short	0,1
	.long	0,-1,1
.reference _$FPCUNIT$_Ld26
.globl	_$FPCUNIT$_Ld26
_$FPCUNIT$_Ld26:
.reference _$FPCUNIT$_Ld27
	.ascii	"(\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld29
_$FPCUNIT$_Ld29:
	.short	0,1
	.long	0,-1,1
.reference _$FPCUNIT$_Ld28
.globl	_$FPCUNIT$_Ld28
_$FPCUNIT$_Ld28:
.reference _$FPCUNIT$_Ld29
	.ascii	")\000"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld31
_$FPCUNIT$_Ld31:
	.short	0,1
	.long	0,-1,29
.reference _$FPCUNIT$_Ld30
.globl	_$FPCUNIT$_Ld30
_$FPCUNIT$_Ld30:
.reference _$FPCUNIT$_Ld31
	.ascii	"name of the test not assigned\000"

.const
	.align 2
.globl	_$FPCUNIT$_Ld32
_$FPCUNIT$_Ld32:
	.ascii	"\000\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__FAIL$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__FAIL$ANSISTRING
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$ANSISTRING$$EASSERTIONFAILEDERROR$stub:
.indirect_symbol _FPCUNIT_EASSERTIONFAILEDERROR_$__CREATE$ANSISTRING$$EASSERTIONFAILEDERROR
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

L_FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTTRUE$ANSISTRING$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTFALSE$ANSISTRING$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_COMPARISONMSG$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$ANSISTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$ANSISTRING
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

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$INT64$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$INT64$INT64$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$INT64$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CURRENCY$CURRENCY$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CURRENCY$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$DOUBLE$DOUBLE$DOUBLE$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$DOUBLE$DOUBLE$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$BOOLEAN$BOOLEAN$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$BOOLEAN$BOOLEAN
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

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CHAR$CHAR$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$CHAR$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$_ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS_GETN$TCLASS$$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TASSERT_$_ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS_GETN$TCLASS$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEQUALS$ANSISTRING$TCLASS$TCLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$TOBJECT$TOBJECT$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$TOBJECT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$POINTER$POINTER$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTSAME$ANSISTRING$POINTER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$TOBJECT$TOBJECT$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$TOBJECT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$POINTER$POINTER$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTSAME$ANSISTRING$POINTER$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$TOBJECT$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INTF_INCR_REF$stub:
.indirect_symbol FPC_INTF_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_INTF_DECR_REF$stub:
.indirect_symbol FPC_INTF_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$POINTER$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTNULL$ANSISTRING$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$TOBJECT$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$POINTER$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNULL$ANSISTRING$POINTER
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

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTEXCEPTION$ANSISTRING$EXCEPTCLASS$TRUNMETHOD$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTEXCEPTION$ANSISTRING$EXCEPTCLASS$TRUNMETHOD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNULLINTF$ANSISTRING$IUNKNOWN$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNULLINTF$ANSISTRING$IUNKNOWN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$ANSISTRING$IUNKNOWN$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTNULLINTF$ANSISTRING$IUNKNOWN
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

L_FPCUNIT_TTESTRESULT_$__RUN$TTESTCASE$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__RUN$TTESTCASE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TASSERT_$__ASSERTNOTNULL$POINTER$stub:
.indirect_symbol _FPCUNIT_TASSERT_$__ASSERTNOTNULL$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS$stub:
.indirect_symbol _TESTUTILS_GETMETHODLIST$TCLASS$TSTRINGS
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

L_FPCUNIT_TTESTSUITE_$__WARNING$ANSISTRING$$TTESTCASE$stub:
.indirect_symbol _FPCUNIT_TTESTSUITE_$__WARNING$ANSISTRING$$TTESTCASE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTUTILS_FREEOBJECTS$TFPLIST$stub:
.indirect_symbol _TESTUTILS_FREEOBJECTS$TFPLIST
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__STARTTESTSUITE$TTESTSUITE$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__STARTTESTSUITE$TTESTSUITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__ENDTESTSUITE$TTESTSUITE$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__ENDTESTSUITE$TTESTSUITE
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

L_SYSUTILS_NOW$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_NOW$$TDATETIME
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

L_CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTFAILURE_$__CREATEFAILURE$TTEST$EXCEPTION$TTESTSTEP$$TTESTFAILURE$stub:
.indirect_symbol _FPCUNIT_TTESTFAILURE_$__CREATEFAILURE$TTEST$EXCEPTION$TTESTSTEP$$TTESTFAILURE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__SKIPTEST$TTESTCASE$$BOOLEAN$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__SKIPTEST$TTESTCASE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__STARTTEST$TTEST$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__STARTTEST$TTEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__RUNPROTECTED$TTEST$TPROTECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__ENDTEST$TTEST$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__ENDTEST$TTEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__ADDFAILURE$TTEST$EASSERTIONFAILEDERROR$TFPLIST$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__ADDFAILURE$TTEST$EASSERTIONFAILEDERROR$TFPLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__ADDERROR$TTEST$EXCEPTION$ANSISTRING$ANSISTRING$LONGINT$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__ADDERROR$TTEST$EXCEPTION$ANSISTRING$ANSISTRING$LONGINT
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
.globl	_$FPCUNIT$_Ld34
_$FPCUNIT$_Ld34:
	.short	0
	.long	_$FPCUNIT$_Ld35
	.align 2
.globl	_$FPCUNIT$_Ld35
_$FPCUNIT$_Ld35:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_EASSERTIONFAILEDERROR
_INIT_FPCUNIT_EASSERTIONFAILEDERROR:
	.byte	15,21
	.ascii	"EAssertionFailedError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_EASSERTIONFAILEDERROR
_RTTI_FPCUNIT_EASSERTIONFAILEDERROR:
	.byte	15,21
	.ascii	"EAssertionFailedError"
	.long	_VMT_FPCUNIT_EASSERTIONFAILEDERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"fpcunit"
	.short	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld37
_$FPCUNIT$_Ld37:
	.short	0
	.long	_$FPCUNIT$_Ld38
	.align 2
.globl	_$FPCUNIT$_Ld38
_$FPCUNIT$_Ld38:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_EIGNOREDTEST
_INIT_FPCUNIT_EIGNOREDTEST:
	.byte	15,12
	.ascii	"EIgnoredTest"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_EIGNOREDTEST
_RTTI_FPCUNIT_EIGNOREDTEST:
	.byte	15,12
	.ascii	"EIgnoredTest"
	.long	_VMT_FPCUNIT_EIGNOREDTEST
	.long	_RTTI_FPCUNIT_EASSERTIONFAILEDERROR
	.short	0
	.byte	7
	.ascii	"fpcunit"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTSTEP
_INIT_FPCUNIT_TTESTSTEP:
	.byte	3,9
	.ascii	"TTestStep"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"stSetUp"
	.byte	9
	.ascii	"stRunTest"
	.byte	10
	.ascii	"stTearDown"
	.byte	9
	.ascii	"stNothing"
	.byte	7
	.ascii	"fpcunit"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTSTEP
_RTTI_FPCUNIT_TTESTSTEP:
	.byte	3,9
	.ascii	"TTestStep"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"stSetUp"
	.byte	9
	.ascii	"stRunTest"
	.byte	10
	.ascii	"stTearDown"
	.byte	9
	.ascii	"stNothing"
	.byte	7
	.ascii	"fpcunit"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTSTEP_s2o
_RTTI_FPCUNIT_TTESTSTEP_s2o:
	.long	4,3
	.long	_RTTI_FPCUNIT_TTESTSTEP+53
	.long	1
	.long	_RTTI_FPCUNIT_TTESTSTEP+32
	.long	0
	.long	_RTTI_FPCUNIT_TTESTSTEP+24
	.long	2
	.long	_RTTI_FPCUNIT_TTESTSTEP+42

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTSTEP_o2s
_RTTI_FPCUNIT_TTESTSTEP_o2s:
	.long	0
	.long	_RTTI_FPCUNIT_TTESTSTEP+24
	.long	_RTTI_FPCUNIT_TTESTSTEP+32
	.long	_RTTI_FPCUNIT_TTESTSTEP+42
	.long	_RTTI_FPCUNIT_TTESTSTEP+53

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TRUNMETHOD
_INIT_FPCUNIT_TRUNMETHOD:
	.byte	6,10
	.ascii	"TRunMethod"
	.byte	0,0,0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TRUNMETHOD
_RTTI_FPCUNIT_TRUNMETHOD:
	.byte	6,10
	.ascii	"TRunMethod"
	.byte	0,0,0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld40
_$FPCUNIT$_Ld40:
	.short	0
	.long	_$FPCUNIT$_Ld41
	.align 2
.globl	_$FPCUNIT$_Ld41
_$FPCUNIT$_Ld41:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTRESULT
_INIT_FPCUNIT_TTESTRESULT:
	.byte	15,11
	.ascii	"TTestResult"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTRESULT
_RTTI_FPCUNIT_TTESTRESULT:
	.byte	15,11
	.ascii	"TTestResult"
	.long	_VMT_FPCUNIT_TTESTRESULT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	10
	.byte	7
	.ascii	"fpcunit"
	.short	10
	.long	_RTTI_CLASSES_TFPLIST
	.long	20,0,1,0,-2147483648
	.short	0
	.byte	60,9
	.ascii	"Listeners"
	.long	_RTTI_CLASSES_TFPLIST
	.long	8,0,1,0,-2147483648
	.short	1
	.byte	60,8
	.ascii	"Failures"
	.long	_RTTI_CLASSES_TFPLIST
	.long	12,0,1,0,-2147483648
	.short	2
	.byte	60,12
	.ascii	"IgnoredTests"
	.long	_RTTI_CLASSES_TFPLIST
	.long	16,0,1,0,-2147483648
	.short	3
	.byte	60,6
	.ascii	"Errors"
	.long	_RTTI_SYSTEM_LONGINT
	.long	4,0,1,0,-2147483648
	.short	4
	.byte	60,8
	.ascii	"RunTests"
	.long	_RTTI_SYSTEM_LONGINT
	.long	_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT
	.long	0,1,0,-2147483648
	.short	5
	.byte	61,14
	.ascii	"NumberOfErrors"
	.long	_RTTI_SYSTEM_LONGINT
	.long	_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT
	.long	0,1,0,-2147483648
	.short	6
	.byte	61,16
	.ascii	"NumberOfFailures"
	.long	_RTTI_SYSTEM_LONGINT
	.long	_FPCUNIT_TTESTRESULT_$__GETNUMIGNOREDTESTS$$LONGINT
	.long	0,1,0,-2147483648
	.short	7
	.byte	61,20
	.ascii	"NumberOfIgnoredTests"
	.long	_RTTI_SYSTEM_LONGINT
	.long	_FPCUNIT_TTESTRESULT_$__GETNUMSKIPPED$$LONGINT
	.long	0,1,0,-2147483648
	.short	8
	.byte	61,20
	.ascii	"NumberOfSkippedTests"
	.long	_RTTI_SYSTEM_TDATETIME
	.long	28,0,1,0,-2147483648
	.short	9
	.byte	60,12
	.ascii	"StartingTime"

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld43
_$FPCUNIT$_Ld43:
	.short	0
	.long	_$FPCUNIT$_Ld44
	.align 2
.globl	_$FPCUNIT$_Ld44
_$FPCUNIT$_Ld44:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTEST
_INIT_FPCUNIT_TTEST:
	.byte	15,5
	.ascii	"TTest"
	.long	4,0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTSUITE
_INIT_FPCUNIT_TTESTSUITE:
	.byte	15,10
	.ascii	"TTestSuite"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTEST
_RTTI_FPCUNIT_TTEST:
	.byte	15,5
	.ascii	"TTest"
	.long	_VMT_FPCUNIT_TTEST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	4
	.byte	7
	.ascii	"fpcunit"
	.short	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	100,0,1,0,-2147483648
	.short	0
	.byte	62,8
	.ascii	"TestName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	104,112,1,0,-2147483648
	.short	1
	.byte	58,13
	.ascii	"TestSuiteName"
	.long	_RTTI_FPCUNIT_TTESTSTEP
	.long	4,0,1,0,-2147483648
	.short	2
	.byte	60,8
	.ascii	"LastStep"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	108,116,1,0,-2147483648
	.short	3
	.byte	58,13
	.ascii	"EnableIgnores"

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTSUITE
_RTTI_FPCUNIT_TTESTSUITE:
	.byte	15,10
	.ascii	"TTestSuite"
	.long	_VMT_FPCUNIT_TTESTSUITE
	.long	_RTTI_FPCUNIT_TTEST
	.short	4
	.byte	7
	.ascii	"fpcunit"
	.short	0

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld46
_$FPCUNIT$_Ld46:
	.short	0
	.long	_$FPCUNIT$_Ld47
	.align 2
.globl	_$FPCUNIT$_Ld47
_$FPCUNIT$_Ld47:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF572
_INIT_FPCUNIT_DEF572:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF651
_INIT_FPCUNIT_DEF651:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF653
_INIT_FPCUNIT_DEF653:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF658
_INIT_FPCUNIT_DEF658:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF660
_INIT_FPCUNIT_DEF660:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld49
_$FPCUNIT$_Ld49:
	.short	0
	.long	_$FPCUNIT$_Ld50
	.align 2
.globl	_$FPCUNIT$_Ld50
_$FPCUNIT$_Ld50:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TASSERT
_INIT_FPCUNIT_TASSERT:
	.byte	15,7
	.ascii	"TAssert"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TASSERT
_RTTI_FPCUNIT_TASSERT:
	.byte	15,7
	.ascii	"TAssert"
	.long	_VMT_FPCUNIT_TASSERT
	.long	_RTTI_FPCUNIT_TTEST
	.short	4
	.byte	7
	.ascii	"fpcunit"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF391
_INIT_FPCUNIT_DEF391:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld52
_$FPCUNIT$_Ld52:
	.short	0
	.long	_$FPCUNIT$_Ld53
	.align 2
.globl	_$FPCUNIT$_Ld53
_$FPCUNIT$_Ld53:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTFAILURE
_INIT_FPCUNIT_TTESTFAILURE:
	.byte	15,12
	.ascii	"TTestFailure"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTFAILURE
_RTTI_FPCUNIT_TTESTFAILURE:
	.byte	15,12
	.ascii	"TTestFailure"
	.long	_VMT_FPCUNIT_TTESTFAILURE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	9
	.byte	7
	.ascii	"fpcunit"
	.short	9
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING
	.long	0,1,0,-2147483648
	.short	0
	.byte	61,8
	.ascii	"AsString"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_FPCUNIT_TTESTFAILURE_$__GETISFAILURE$$BOOLEAN
	.long	0,1,0,-2147483648
	.short	1
	.byte	61,9
	.ascii	"IsFailure"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_FPCUNIT_TTESTFAILURE_$__GETISIGNOREDTEST$$BOOLEAN
	.long	0,1,0,-2147483648
	.short	2
	.byte	61,13
	.ascii	"IsIgnoredTest"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING
	.long	0,1,0,-2147483648
	.short	3
	.byte	61,16
	.ascii	"ExceptionMessage"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING
	.long	0,1,0,-2147483648
	.short	4
	.byte	61,18
	.ascii	"ExceptionClassName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	28,28,1,0,-2147483648
	.short	5
	.byte	48,14
	.ascii	"SourceUnitName"
	.long	_RTTI_SYSTEM_LONGINT
	.long	12,12,1,0,-2147483648
	.short	6
	.byte	48,10
	.ascii	"LineNumber"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	16,16,1,0,-2147483648
	.short	7
	.byte	48,16
	.ascii	"FailedMethodName"
	.long	_RTTI_FPCUNIT_TTESTSTEP
	.long	32
	.long	_FPCUNIT_TTESTFAILURE_$__SETTESTLASTSTEP$TTESTSTEP
	.long	1,0,-2147483648
	.short	8
	.byte	52,12
	.ascii	"TestLastStep"

.const_data
	.align 2
.globl	_INIT_FPCUNIT_ITESTLISTENER
_INIT_FPCUNIT_ITESTLISTENER:
	.byte	14,13
	.ascii	"ITestListener"
	.long	4

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_ITESTLISTENER
_RTTI_FPCUNIT_ITESTLISTENER:
	.byte	14,13
	.ascii	"ITestListener"
	.long	_RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	216650670
	.short	34858,55313
	.byte	148,1,173,235,94,76,127,193,7
	.ascii	"fpcunit"
	.byte	38
	.ascii	"{0CE9D3AE-882A-D811-9401-ADEB5E4C7FC1}"

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF697
_INIT_FPCUNIT_DEF697:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF681
_INIT_FPCUNIT_DEF681:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld55
_$FPCUNIT$_Ld55:
	.short	0
	.long	_$FPCUNIT$_Ld56
	.align 2
.globl	_$FPCUNIT$_Ld56
_$FPCUNIT$_Ld56:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTCASE
_INIT_FPCUNIT_TTESTCASE:
	.byte	15,9
	.ascii	"TTestCase"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTCASE
_RTTI_FPCUNIT_TTESTCASE:
	.byte	15,9
	.ascii	"TTestCase"
	.long	_VMT_FPCUNIT_TTESTCASE
	.long	_RTTI_FPCUNIT_TASSERT
	.short	4
	.byte	7
	.ascii	"fpcunit"
	.short	1
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	100,164,1,0,-2147483648
	.short	0
	.byte	58,8
	.ascii	"TestName"

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTCASECLASS
_INIT_FPCUNIT_TTESTCASECLASS:
	.byte	0
	.ascii	"\016TTestCaseClass"

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTCASECLASS
_RTTI_FPCUNIT_TTESTCASECLASS:
	.byte	0
	.ascii	"\016TTestCaseClass"

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TPROTECT
_INIT_FPCUNIT_TPROTECT:
	.byte	23,8
	.ascii	"TProtect"

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TPROTECT
_RTTI_FPCUNIT_TPROTECT:
	.byte	23,8
	.ascii	"TProtect"

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF368
_INIT_FPCUNIT_DEF368:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPCUNIT_DEF369
_INIT_FPCUNIT_DEF369:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPCUNIT$_Ld58
_$FPCUNIT$_Ld58:
	.short	0
	.long	_$FPCUNIT$_Ld59
	.align 2
.globl	_$FPCUNIT$_Ld59
_$FPCUNIT$_Ld59:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCUNIT_TTESTWARNING
_INIT_FPCUNIT_TTESTWARNING:
	.byte	15,12
	.ascii	"TTestWarning"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_FPCUNIT_TTESTWARNING
_RTTI_FPCUNIT_TTESTWARNING:
	.byte	15,12
	.ascii	"TTestWarning"
	.long	_VMT_FPCUNIT_TTESTWARNING
	.long	_RTTI_FPCUNIT_TTESTCASE
	.short	4
	.byte	7
	.ascii	"fpcunit"
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
L_RESSTR_FPCUNIT_SCOMPARE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SCOMPARE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SCOMPARENOTEQUAL$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SCOMPARENOTEQUAL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_EASSERTIONFAILEDERROR$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_EASSERTIONFAILEDERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_EIGNOREDTEST$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_EIGNOREDTEST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SEXPECTEDNOTSAME$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SEXPECTEDNOTSAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SNOEXCEPTION$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SNOEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SEXCEPTIONCOMPARE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SEXCEPTIONCOMPARE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld14$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld16$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld18$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld20$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld22$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld24$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTSUITE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld26$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld28$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTRESULT$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTRESULT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCUNIT$_Ld30$non_lazy_ptr:
.indirect_symbol _$FPCUNIT$_Ld30
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SMETHODNOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SMETHODNOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TASSERT$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TASSERT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTCASE$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTCASE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SNOVALIDINHERITANCE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SNOVALIDINHERITANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPCUNIT_SNOVALIDTESTS$non_lazy_ptr:
.indirect_symbol _RESSTR_FPCUNIT_SNOVALIDTESTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTWARNING$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTWARNING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTFAILURE$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTFAILURE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPCUNIT_PROTECTTEST$TTEST$TTESTRESULT$non_lazy_ptr:
.indirect_symbol _FPCUNIT_PROTECTTEST$TTEST$TTESTRESULT
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_FPCUNIT_START
_RESSTR_FPCUNIT_START:
	.long	_$FPCUNIT$_Ld60
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SCOMPARE
_RESSTR_FPCUNIT_SCOMPARE:
	.long	_$FPCUNIT$_Ld64
	.long	_$FPCUNIT$_Ld62
	.long	_$FPCUNIT$_Ld62
	.long	124107054

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SCOMPARENOTEQUAL
_RESSTR_FPCUNIT_SCOMPARENOTEQUAL:
	.long	_$FPCUNIT$_Ld68
	.long	_$FPCUNIT$_Ld66
	.long	_$FPCUNIT$_Ld66
	.long	171023614

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SEXPECTEDNOTSAME
_RESSTR_FPCUNIT_SEXPECTEDNOTSAME:
	.long	_$FPCUNIT$_Ld72
	.long	_$FPCUNIT$_Ld70
	.long	_$FPCUNIT$_Ld70
	.long	211813941

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SEXCEPTIONCOMPARE
_RESSTR_FPCUNIT_SEXCEPTIONCOMPARE:
	.long	_$FPCUNIT$_Ld76
	.long	_$FPCUNIT$_Ld74
	.long	_$FPCUNIT$_Ld74
	.long	188354420

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SMETHODNOTFOUND
_RESSTR_FPCUNIT_SMETHODNOTFOUND:
	.long	_$FPCUNIT$_Ld80
	.long	_$FPCUNIT$_Ld78
	.long	_$FPCUNIT$_Ld78
	.long	13242116

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SNOVALIDINHERITANCE
_RESSTR_FPCUNIT_SNOVALIDINHERITANCE:
	.long	_$FPCUNIT$_Ld84
	.long	_$FPCUNIT$_Ld82
	.long	_$FPCUNIT$_Ld82
	.long	104666677

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SNOVALIDTESTS
_RESSTR_FPCUNIT_SNOVALIDTESTS:
	.long	_$FPCUNIT$_Ld88
	.long	_$FPCUNIT$_Ld86
	.long	_$FPCUNIT$_Ld86
	.long	122946848

.data
	.align 2
.globl	_RESSTR_FPCUNIT_SNOEXCEPTION
_RESSTR_FPCUNIT_SNOEXCEPTION:
	.long	_$FPCUNIT$_Ld92
	.long	_$FPCUNIT$_Ld90
	.long	_$FPCUNIT$_Ld90
	.long	244761790

.data
	.align 2
.globl	_RESSTR_FPCUNIT_END
_RESSTR_FPCUNIT_END:
	.long	_RESSTR_FPCUNIT_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

