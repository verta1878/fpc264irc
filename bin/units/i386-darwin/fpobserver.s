# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING
_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$616,%esp
	movl	%ebx,-600(%ebp)
	movl	%esi,-596(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8
	jmp	Lj9
Lj8:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-36(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj12
Lj9:
	movl	-4(%ebp),%edx
	movl	L_VMT_FPOBSERVER_TBASEMEDIATOR$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj13
	jmp	Lj14
Lj13:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,-24(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj29
	jmp	Lj30
Lj29:
	movl	-20(%ebp),%edx
	movl	L_VMT_CLASSES_TCOMPONENT$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj31
	jmp	Lj32
Lj31:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,-28(%ebp)
Lj32:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj41
	jmp	Lj42
Lj41:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-336(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-336(%ebp),%eax
	leal	-80(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-80(%ebp),%edx
	leal	-28(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld1$non_lazy_ptr-Lj4(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj42:
	jmp	Lj57
Lj30:
	movl	L_$FPOBSERVER$_Ld3$non_lazy_ptr-Lj4(%ebx),%esi
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-28(%ebp)
Lj57:
	cmpl	$0,-24(%ebp)
	jne	Lj60
	jmp	Lj61
Lj60:
	leal	-336(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-336(%ebp),%eax
	leal	-32(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj70
Lj61:
	movl	L_$FPOBSERVER$_Ld3$non_lazy_ptr-Lj4(%ebx),%esi
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-32(%ebp)
Lj70:
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	leal	-592(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-592(%ebp),%eax
	movl	%eax,-116(%ebp)
	movl	$4,-120(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	$11,-112(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	$11,-104(%ebp)
	movl	-12(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-120(%ebp),%edx
	movl	$4,%ecx
	movl	L_$FPOBSERVER$_Ld5$non_lazy_ptr-Lj4(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj85
Lj14:
	movl	-4(%ebp),%edx
	movl	L_VMT_CLASSES_TCOMPONENT$non_lazy_ptr-Lj4(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj88
	jmp	Lj87
Lj88:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-96(%ebp),%edx
	movl	$1,%ecx
	movl	L_$FPOBSERVER$_Ld7$non_lazy_ptr-Lj4(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj101
Lj87:
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	leal	-352(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-352(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$4,-96(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-96(%ebp),%edx
	movl	$1,%ecx
	movl	L_$FPOBSERVER$_Ld7$non_lazy_ptr-Lj4(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj101:
Lj85:
Lj12:
	movl	-36(%ebp),%ecx
	movl	L_VMT_FPOBSERVER_EMEDIATOR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	leal	-36(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-36(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-600(%ebp),%ebx
	movl	-596(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const
_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj140
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$stub
Lj140:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-12(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj141
	call	LFPC_RERAISE$stub
Lj141:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_MEDIATORMANAGER$$TMEDIATORMANAGER
_FPOBSERVER_MEDIATORMANAGER$$TMEDIATORMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj156
Lj156:
	popl	%ebx
	movl	L_U_FPOBSERVER_MM$non_lazy_ptr-Lj156(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj157
	jmp	Lj158
Lj157:
	movl	L_VMT_FPOBSERVER_TMEDIATORMANAGER$non_lazy_ptr-Lj156(%ebx),%edx
	movl	$0,%eax
	call	L_FPOBSERVER_TMEDIATORMANAGER_$__CREATE$$TMEDIATORMANAGER$stub
	movl	L_U_FPOBSERVER_MM$non_lazy_ptr-Lj156(%ebx),%edx
	movl	%eax,(%edx)
Lj158:
	movl	L_U_FPOBSERVER_MM$non_lazy_ptr-Lj156(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__CREATESENDER$TOBJECT$$TOBSERVEDHOOK
_FPOBSERVER_TOBSERVEDHOOK_$__CREATESENDER$TOBJECT$$TOBSERVEDHOOK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj169
	jmp	Lj170
Lj169:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj170:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj175
	jmp	Lj176
Lj175:
	jmp	Lj167
Lj176:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj179
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj183
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj188
	jmp	Lj189
Lj188:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
Lj189:
Lj183:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj184
	call	LFPC_RERAISE$stub
Lj184:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj194
	jmp	Lj193
Lj194:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj192
	jmp	Lj193
Lj192:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj193:
Lj179:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj181
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj198
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj199
	jmp	Lj200
Lj199:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj200:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj198:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj197
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj197:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj181
Lj181:
Lj167:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__DESTROY
_FPOBSERVER_TOBSERVEDHOOK_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj207
	jmp	Lj208
Lj207:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj208:
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj211
	jmp	Lj212
Lj211:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj212:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj229
	jmp	Lj228
Lj229:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj227
	jmp	Lj228
Lj227:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj228:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT
_FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-284(%ebp)
	call	Lj233
Lj233:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld9$non_lazy_ptr-Lj233(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub
	testb	%al,%al
	je	Lj234
	jmp	Lj235
Lj234:
	movl	$0,(%esp)
	leal	-280(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPOBSERVER_SERRNOTOBSERVER$non_lazy_ptr-Lj233(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_CLASSES_EOBSERVER$non_lazy_ptr-Lj233(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj233(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj235:
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj257
	jmp	Lj256
Lj256:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj233(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj257:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-284(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT
_FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-284(%ebp)
	call	Lj269
Lj269:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld9$non_lazy_ptr-Lj269(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub
	testb	%al,%al
	je	Lj270
	jmp	Lj271
Lj270:
	movl	$0,(%esp)
	leal	-280(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPOBSERVER_SERRNOTOBSERVER$non_lazy_ptr-Lj269(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_CLASSES_EOBSERVER$non_lazy_ptr-Lj269(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj269(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj271:
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj292
	jmp	Lj293
Lj292:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj298
	jmp	Lj299
Lj298:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj299:
Lj293:
	movl	-284(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__CHANGED
_FPOBSERVER_TOBSERVEDHOOK_$__CHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__ADDITEM$TOBJECT
_FPOBSERVER_TOBSERVEDHOOK_$__ADDITEM$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__DELETEITEM$TOBJECT
_FPOBSERVER_TOBSERVEDHOOK_$__DELETEITEM$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__CUSTOMNOTIFY$POINTER
_FPOBSERVER_TOBSERVEDHOOK_$__CUSTOMNOTIFY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj344
	jmp	Lj345
Lj344:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jl	Lj347
	incl	-20(%ebp)
	.align 2
Lj348:
	decl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*(%ebx)
	cmpl	$0,-20(%ebp)
	jg	Lj348
Lj347:
Lj345:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__GETVIEW$$TOBJECT
_FPOBSERVER_TBASEMEDIATOR_$__GETVIEW$$TOBJECT:
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
.globl	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGED
_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*220(%edx)
	testb	%al,%al
	jne	Lj369
	jmp	Lj370
Lj369:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	88(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING$stub
Lj370:
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__VALUELISTCHANGED
_FPOBSERVER_TBASEMEDIATOR_$__VALUELISTCHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN
_FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	52(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj387
	jmp	Lj388
Lj387:
	jmp	Lj385
Lj388:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,52(%eax)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj385:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__SETREADONLY$BOOLEAN
_FPOBSERVER_TBASEMEDIATOR_$__SETREADONLY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	72(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj395
	jmp	Lj396
Lj395:
	jmp	Lj393
Lj396:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,72(%eax)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj393:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__SETVALUELIST$TOBJECTLIST
_FPOBSERVER_TBASEMEDIATOR_$__SETVALUELIST$TOBJECTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj403
	jmp	Lj404
Lj403:
	jmp	Lj401
Lj404:
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	jne	Lj405
	jmp	Lj406
Lj405:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*4(%ecx)
Lj406:
	cmpl	$0,-4(%ebp)
	jne	Lj411
	jmp	Lj412
Lj411:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,84(%eax)
	cmpl	$0,-4(%ebp)
	jne	Lj415
	jmp	Lj416
Lj415:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__FPOATTACHOBSERVER$TOBJECT$stub
Lj416:
Lj412:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,84(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*260(%edx)
Lj401:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING
_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-288(%ebp)
	call	Lj426
Lj426:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj429
	jmp	Lj428
Lj429:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj427
	jmp	Lj428
Lj427:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj430
	jmp	Lj431
Lj430:
	movl	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	leal	-284(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-284(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$4,-20(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPOBSERVER_SERRINVALIDPROPERTYNAME$non_lazy_ptr-Lj426(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_CLASSES_EOBSERVER$non_lazy_ptr-Lj426(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj426(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj431:
Lj428:
	movl	-288(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW
_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj454
	jmp	Lj453
Lj454:
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__CHECKVIEWSUBJECT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj452
	jmp	Lj453
Lj452:
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__OBJECTTOVIEW$stub
Lj453:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__MAYBEVIEWTOOBJECT
_FPOBSERVER_TBASEMEDIATOR_$__MAYBEVIEWTOOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj464
	jmp	Lj462
Lj464:
	movl	-4(%ebp),%eax
	movb	72(%eax),%al
	testb	%al,%al
	je	Lj463
	jmp	Lj462
Lj463:
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__CHECKVIEWSUBJECT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj461
	jmp	Lj462
Lj461:
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__VIEWTOOBJECT$stub
Lj462:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__CHECKVIEWSUBJECT$$BOOLEAN
_FPOBSERVER_TBASEMEDIATOR_$__CHECKVIEWSUBJECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj479
	jmp	Lj476
Lj479:
	cmpl	$0,-12(%ebp)
	jne	Lj478
	jmp	Lj476
Lj478:
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	jne	Lj477
	jmp	Lj476
Lj477:
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	testl	%eax,%eax
	jne	Lj475
	jmp	Lj476
Lj475:
	movb	$1,-5(%ebp)
	jmp	Lj480
Lj476:
	movb	$0,-5(%ebp)
Lj480:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECTPROPERTYNAME$ANSISTRING
_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECTPROPERTYNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj483
	jmp	Lj484
Lj483:
	jmp	Lj481
Lj484:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	testb	%al,%al
	jne	Lj489
	jmp	Lj490
Lj489:
	movl	-8(%ebp),%eax
	movl	80(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING$stub
Lj490:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	76(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,76(%ebx)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj481:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT
_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-284(%ebp)
	call	Lj504
Lj504:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj505
	jmp	Lj506
Lj505:
	jmp	Lj503
Lj506:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	testb	%al,%al
	jne	Lj507
	jmp	Lj508
Lj507:
	movl	-8(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING$stub
Lj508:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	jne	Lj517
	jmp	Lj518
Lj517:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	L_$FPOBSERVER$_Ld10$non_lazy_ptr-Lj504(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj519
	jmp	Lj520
Lj519:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*4(%ecx)
Lj520:
Lj518:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj531
	jmp	Lj532
Lj531:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld10$non_lazy_ptr-Lj504(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub
	testb	%al,%al
	je	Lj533
	jmp	Lj534
Lj533:
	movl	$0,(%esp)
	leal	-280(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPOBSERVER_SERROBJECTCANNOTBEOBSERVED$non_lazy_ptr-Lj504(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_CLASSES_EOBSERVER$non_lazy_ptr-Lj504(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj504(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj534:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,80(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*(%ecx)
	jmp	Lj561
Lj532:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,80(%eax)
Lj561:
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj503:
	movl	-284(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__SETVIEWPROPERTYNAME$ANSISTRING
_FPOBSERVER_TBASEMEDIATOR_$__SETVIEWPROPERTYNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj568
	jmp	Lj569
Lj568:
	jmp	Lj566
Lj569:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*220(%edx)
	testb	%al,%al
	jne	Lj574
	jmp	Lj575
Lj574:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING$stub
Lj575:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	88(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,88(%ebx)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj566:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN
_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN:
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
.globl	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN
_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN:
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
.globl	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGEDHANDLER$TOBJECT
_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGEDHANDLER$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEVIEWTOOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
_FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj604
	jmp	Lj605
Lj604:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj606
	jmp	Lj607
Lj606:
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
	jmp	Lj610
Lj607:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj611
	jmp	Lj612
Lj611:
	movl	-12(%ebp),%eax
	movl	$0,80(%eax)
Lj612:
Lj610:
	jmp	Lj615
Lj605:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj616
	jmp	Lj617
Lj616:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj618
	jmp	Lj619
Lj618:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*260(%edx)
	jmp	Lj622
Lj619:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj623
	jmp	Lj624
Lj623:
	movl	-12(%ebp),%eax
	movl	$0,84(%eax)
Lj624:
Lj622:
Lj617:
Lj615:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING
_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$array_of_const
_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj635
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$stub
Lj635:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj636
	call	LFPC_RERAISE$stub
Lj636:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__DESTROY
_FPOBSERVER_TBASEMEDIATOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj652
	jmp	Lj653
Lj652:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj653:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*232(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPOBSERVER_TBASEMEDIATOR_$__SETVALUELIST$TOBJECTLIST$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj670
	jmp	Lj669
Lj670:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj668
	jmp	Lj669
Lj668:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj669:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__DOOBJECTTOVIEW
_FPOBSERVER_TBASEMEDIATOR_$__DOOBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj674
Lj674:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj674(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj675
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj674(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	leal	-64(%ebp),%ecx
	call	L_TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT$stub
	leal	-64(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	movl	-4(%ebp),%edx
	movl	88(%edx),%edx
	movl	%esi,%ecx
	call	L_TYPINFO_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$stub
Lj675:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj674(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj676
	call	LFPC_RERAISE$stub
Lj676:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__DOVIEWTOOBJECT
_FPOBSERVER_TBASEMEDIATOR_$__DOVIEWTOOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj693
Lj693:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj693(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj694
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj693(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	movl	-4(%ebp),%edx
	movl	88(%edx),%edx
	leal	-64(%ebp),%ecx
	call	L_TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT$stub
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	call	L_TYPINFO_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$stub
Lj694:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj693(%ebx),%eax
	movl	%eax,%edx
	leal	-64(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj695
	call	LFPC_RERAISE$stub
Lj695:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__OBJECTTOVIEW
_FPOBSERVER_TBASEMEDIATOR_$__OBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	73(%eax),%al
	testb	%al,%al
	je	Lj713
	jmp	Lj714
Lj713:
	movl	-4(%ebp),%eax
	movb	$1,73(%eax)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj717
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj723
	jmp	Lj724
Lj723:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	leal	-5(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	56(%ebx),%ebx
	call	*%ebx
Lj724:
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj731
	jmp	Lj732
Lj731:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*244(%edx)
Lj732:
Lj717:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$0,73(%eax)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj718
	decl	%eax
	testl	%eax,%eax
	je	Lj719
Lj719:
	call	LFPC_RERAISE$stub
Lj718:
Lj714:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__VIEWTOOBJECT
_FPOBSERVER_TBASEMEDIATOR_$__VIEWTOOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	73(%eax),%al
	testb	%al,%al
	je	Lj739
	jmp	Lj740
Lj739:
	movl	-4(%ebp),%eax
	movb	$1,73(%eax)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj743
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj749
	jmp	Lj750
Lj749:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	leal	-5(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	64(%ebx),%ebx
	call	*%ebx
Lj750:
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj757
	jmp	Lj758
Lj757:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*248(%edx)
Lj758:
Lj743:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$0,73(%eax)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj744
	decl	%eax
	testl	%eax,%eax
	je	Lj745
Lj745:
	call	LFPC_RERAISE$stub
Lj744:
Lj740:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCLASS$$TCLASS
_FPOBSERVER_TBASEMEDIATOR_$__VIEWCLASS$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj764
Lj764:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_VMT_SYSTEM_TOBJECT$non_lazy_ptr-Lj764(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASEMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN
_FPOBSERVER_TBASEMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN:
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
.globl	_FPOBSERVER_TCOMPONENTMEDIATOR_$__GETVIEW$$TOBJECT
_FPOBSERVER_TCOMPONENTMEDIATOR_$__GETVIEW$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOMPONENTMEDIATOR_$__SETCOMPONENT$TCOMPONENT
_FPOBSERVER_TCOMPONENTMEDIATOR_$__SETCOMPONENT$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj777
	jmp	Lj778
Lj777:
	jmp	Lj775
Lj778:
	movl	-8(%ebp),%eax
	cmpl	$0,96(%eax)
	jne	Lj779
	jmp	Lj780
Lj779:
	movl	-8(%ebp),%eax
	movl	96(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TCOMPONENT_$__REMOVEFREENOTIFICATION$TCOMPONENT$stub
Lj780:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,96(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,96(%eax)
	jne	Lj787
	jmp	Lj788
Lj787:
	movl	-8(%ebp),%eax
	movl	96(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TCOMPONENT_$__FREENOTIFICATION$TCOMPONENT$stub
Lj788:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
Lj775:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOMPONENTMEDIATOR_$__NOTIFICATION$TCOMPONENT$TOPERATION
_FPOBSERVER_TCOMPONENTMEDIATOR_$__NOTIFICATION$TCOMPONENT$TOPERATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj805
	jmp	Lj804
Lj805:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj803
	jmp	Lj804
Lj803:
	movl	-12(%ebp),%eax
	movl	$0,96(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
Lj804:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORDEF_$__HANDLES$TOBJECT$TCOMPONENT$PPROPINFO$$BOOLEAN
_FPOBSERVER_TMEDIATORDEF_$__HANDLES$TOBJECT$TCOMPONENT$PPROPINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj812
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj815
	jmp	Lj816
Lj815:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	24(%edx),%edx
	call	*268(%edx)
	movb	%al,-13(%ebp)
	jmp	Lj821
Lj816:
	movl	8(%ebp),%eax
	leal	27(%eax),%eax
	leal	-20(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movb	$1,-13(%ebp)
Lj821:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj828
	jmp	Lj829
Lj828:
	jmp	Lj812
Lj829:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	24(%edx),%edx
	call	*264(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj832
	jmp	Lj831
Lj832:
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj830
	jmp	Lj831
Lj830:
	movb	$1,-13(%ebp)
	jmp	Lj843
Lj831:
	movb	$0,-13(%ebp)
Lj843:
	cmpb	$0,-13(%ebp)
	jne	Lj846
	jmp	Lj845
Lj846:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	24(%edx),%edx
	call	*268(%edx)
	testb	%al,%al
	je	Lj844
	jmp	Lj845
Lj844:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj849
	jmp	Lj850
Lj849:
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	jmp	Lj857
Lj850:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,36(%edx)
	setcb	-13(%ebp)
Lj857:
Lj845:
Lj812:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj813
	call	LFPC_RERAISE$stub
Lj813:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORDEF_$__BETTERMATCH$TMEDIATORDEF$$BOOLEAN
_FPOBSERVER_TMEDIATORDEF_$__BETTERMATCH$TMEDIATORDEF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj870
	jmp	Lj871
Lj870:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	call	*268(%edx)
	movb	%al,%bl
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	call	*268(%edx)
	cmpb	%al,%bl
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj878
	jmp	Lj879
Lj878:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj882
	jmp	Lj881
Lj882:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj880
	jmp	Lj881
Lj880:
	movb	$1,-9(%ebp)
	jmp	Lj883
Lj881:
	movb	$0,-9(%ebp)
Lj883:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj884
	jmp	Lj885
Lj884:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj888
	jmp	Lj886
Lj888:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj887
	jmp	Lj886
Lj886:
	movb	$1,-9(%ebp)
	jmp	Lj889
Lj887:
	movb	$0,-9(%ebp)
Lj889:
	cmpb	$0,-9(%ebp)
	jne	Lj890
	jmp	Lj891
Lj890:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	call	*264(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	call	*264(%edx)
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj904
	jmp	Lj905
Lj904:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	call	*264(%edx)
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	call	*264(%edx)
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj918
	jmp	Lj919
Lj918:
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj926
	jmp	Lj927
Lj926:
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	seteb	-9(%ebp)
Lj927:
Lj919:
Lj905:
Lj891:
Lj885:
Lj879:
Lj871:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORDEFS_$__GETDEF$LONGINT$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORDEFS_$__GETDEF$LONGINT$$TMEDIATORDEF:
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
.globl	_FPOBSERVER_TMEDIATORDEFS_$__SETDEF$LONGINT$TMEDIATORDEF
_FPOBSERVER_TMEDIATORDEFS_$__SETDEF$LONGINT$TMEDIATORDEF:
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
.globl	_FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj951
Lj951:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPOBSERVER_TMEDIATORDEF$non_lazy_ptr-Lj951(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__CREATE$$TMEDIATORMANAGER
_FPOBSERVER_TMEDIATORMANAGER_$__CREATE$$TMEDIATORMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj961
Lj961:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj962
	jmp	Lj963
Lj962:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj963:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj968
	jmp	Lj969
Lj968:
	jmp	Lj960
Lj969:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj972
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj976
	movl	L_VMT_FPOBSERVER_TMEDIATORDEF$non_lazy_ptr-Lj961(%ebx),%ecx
	movl	L_VMT_FPOBSERVER_TMEDIATORDEFS$non_lazy_ptr-Lj961(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj976:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj977
	call	LFPC_RERAISE$stub
Lj977:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj989
	jmp	Lj988
Lj989:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj987
	jmp	Lj988
Lj987:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj988:
Lj972:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj974
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj993
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj994
	jmp	Lj995
Lj994:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj995:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj993:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj992
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj992:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj974
Lj974:
Lj960:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__DESTROY
_FPOBSERVER_TMEDIATORMANAGER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1002
	jmp	Lj1003
Lj1002:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1003:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1014
	jmp	Lj1013
Lj1014:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1012
	jmp	Lj1013
Lj1012:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1013:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$PPROPINFO$$TMEDIATORDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$ANSISTRING$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$ANSISTRING$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$PPROPINFO$$TMEDIATORDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$PPROPINFO$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$PPROPINFO$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1052
	decl	-24(%ebp)
	.align 2
Lj1053:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_FPOBSERVER_TMEDIATORDEFS_$__GETDEF$LONGINT$$TMEDIATORDEF$stub
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORDEF_$__HANDLES$TOBJECT$TCOMPONENT$PPROPINFO$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1062
	jmp	Lj1063
Lj1062:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORDEF_$__BETTERMATCH$TMEDIATORDEF$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1072
	jmp	Lj1073
Lj1072:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1073:
Lj1063:
	cmpl	-24(%ebp),%ebx
	jg	Lj1053
Lj1052:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__REGISTERMEDIATOR$TMEDIATORCLASS$TCLASS$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORMANAGER_$__REGISTERMEDIATOR$TMEDIATORCLASS$TCLASS$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-16(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,32(%ebx)
	movl	-16(%ebp),%eax
	movl	$127811518,36(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__REGISTERMEDIATOR$TMEDIATORCLASS$TCLASS$ANSISTRING$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORMANAGER_$__REGISTERMEDIATOR$TMEDIATORCLASS$TCLASS$ANSISTRING$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1096
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,28(%edx)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,32(%ebx)
	movl	-16(%ebp),%eax
	movl	$0,36(%eax)
Lj1096:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1097
	call	LFPC_RERAISE$stub
Lj1097:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORMANAGER_$__REGISTERMEDIATOR$TMEDIATORCLASS$TCLASS$TTYPEKINDS$$TMEDIATORDEF
_FPOBSERVER_TMEDIATORMANAGER_$__REGISTERMEDIATOR$TMEDIATORCLASS$TCLASS$TTYPEKINDS$$TMEDIATORDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-16(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,32(%ebx)
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,36(%edx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__GETACTIVE$$BOOLEAN
_FPOBSERVER_TLISTITEMMEDIATOR_$__GETACTIVE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj1129
	jmp	Lj1130
Lj1129:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	52(%eax),%al
	movb	%al,-5(%ebp)
Lj1130:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__SETSUBJECT$TOBJECT
_FPOBSERVER_TLISTITEMMEDIATOR_$__SETSUBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-284(%ebp)
	call	Lj1134
Lj1134:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1135
	jmp	Lj1136
Lj1135:
	jmp	Lj1133
Lj1136:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1137
	jmp	Lj1138
Lj1137:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	L_$FPOBSERVER$_Ld10$non_lazy_ptr-Lj1134(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1139
	jmp	Lj1140
Lj1139:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*4(%ecx)
Lj1140:
Lj1138:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1153
	jmp	Lj1154
Lj1153:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-12(%ebp),%ecx
	movl	L_$FPOBSERVER$_Ld10$non_lazy_ptr-Lj1134(%ebx),%edx
	call	L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1155
	jmp	Lj1156
Lj1155:
	movl	$0,(%esp)
	leal	-280(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPOBSERVER_SERROBJECTCANNOTBEOBSERVED$non_lazy_ptr-Lj1134(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_CLASSES_EOBSERVER$non_lazy_ptr-Lj1134(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1134(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1156:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*(%ecx)
Lj1154:
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj1133:
	movl	-284(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
_FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1185
	jmp	Lj1186
Lj1185:
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
	jmp	Lj1189
Lj1186:
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj1189:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__OBJECTTOVIEW
_FPOBSERVER_TLISTITEMMEDIATOR_$__OBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__VIEWTOOBJECT
_FPOBSERVER_TLISTITEMMEDIATOR_$__VIEWTOOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__DESTROY
_FPOBSERVER_TLISTITEMMEDIATOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1198
	jmp	Lj1199
Lj1198:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1199:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1212
	jmp	Lj1211
Lj1212:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1210
	jmp	Lj1211
Lj1210:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1211:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW
_FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1219
	jmp	Lj1218
Lj1219:
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TLISTITEMMEDIATOR_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1217
	jmp	Lj1218
Lj1217:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj1218:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE
_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_CLASSES_TPERSISTENT_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1238
	jmp	Lj1239
Lj1238:
	movl	-4(%ebp),%esi
	movl	32(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	32(%esi),%eax
	movl	%eax,(%ebx)
Lj1239:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT
_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1244
	jmp	Lj1245
Lj1244:
	jmp	Lj1242
Lj1245:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,36(%eax)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE$stub
Lj1242:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj1252
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1255
	jmp	Lj1256
Lj1255:
	jmp	Lj1252
Lj1256:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE$stub
Lj1252:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1253
	call	LFPC_RERAISE$stub
Lj1253:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1271
	jmp	Lj1272
Lj1271:
	jmp	Lj1269
Lj1272:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,32(%ebx)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE$stub
Lj1269:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT
_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1283
	jmp	Lj1284
Lj1283:
	jmp	Lj1281
Lj1284:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE$stub
Lj1281:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__GETASSTRING$$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFO_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	call	Lj1290
Lj1290:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-84(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1291
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%edx
	movl	L_TC_FPOBSERVER_ALIGNCHARS$non_lazy_ptr-Lj1290(%ebx),%eax
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,-68(%ebp)
	movl	$2,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-80(%ebp),%edx
	movl	$3,%ecx
	movl	L_$FPOBSERVER$_Ld11$non_lazy_ptr-Lj1290(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj1291:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1292
	call	LFPC_RERAISE$stub
Lj1292:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETASSTRING$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFO_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj1307
Lj1307:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1310
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-24(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj1327
	jmp	Lj1328
Lj1327:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT$stub
	incl	%eax
	movl	%eax,-72(%ebp)
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	L_RESSTR_FPOBSERVER_SERRINVALIDFIELDNAME$non_lazy_ptr-Lj1307(%esi),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const$stub
Lj1328:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT$stub
	movl	-8(%ebp),%eax
	movl	$50,%edx
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1355
	jmp	Lj1356
Lj1355:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1359
	movl	-4(%eax),%eax
Lj1359:
	cmpl	$1,%eax
	jne	Lj1357
	jmp	Lj1358
Lj1357:
	movl	$1,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$11,-92(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT$stub
	incl	%eax
	movl	%eax,-80(%ebp)
	movl	$0,-84(%ebp)
	leal	-92(%ebp),%ecx
	movl	L_RESSTR_FPOBSERVER_SERRINVALIDALIGNMENTCHAR$non_lazy_ptr-Lj1307(%esi),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const$stub
Lj1358:
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj1372:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	L_TC_FPOBSERVER_ALIGNCHARS$non_lazy_ptr-Lj1307(%esi),%eax
	movb	(%eax,%edx,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,%bl
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	%al,%bl
	je	Lj1373
	jmp	Lj1374
Lj1373:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT$stub
Lj1374:
	cmpl	$2,-20(%ebp)
	jb	Lj1372
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1391
	jmp	Lj1392
Lj1391:
	leal	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1393
	jmp	Lj1394
Lj1393:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	L_RESSTR_FPOBSERVER_SERRINVALIDWIDTHSPECIFIER$non_lazy_ptr-Lj1307(%esi),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const$stub
Lj1394:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1419
	jmp	Lj1420
Lj1419:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING$stub
Lj1420:
Lj1392:
Lj1356:
Lj1310:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1311
	call	LFPC_RERAISE$stub
Lj1311:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$124,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1443
	jmp	Lj1444
Lj1443:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1447
	movl	-4(%eax),%eax
Lj1447:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj1444:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFO_$__ASSIGN$TPERSISTENT
_FPOBSERVER_TMEDIATORFIELDINFO_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1463
Lj1463:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPOBSERVER_TMEDIATORFIELDINFO$non_lazy_ptr-Lj1463(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1464
	jmp	Lj1465
Lj1464:
	movl	-4(%ebp),%edx
	movl	L_VMT_FPOBSERVER_TMEDIATORFIELDINFO$non_lazy_ptr-Lj1463(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,24(%edx)
	movl	-12(%ebp),%edi
	movl	28(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%edi),%eax
	movl	%eax,28(%esi)
	movl	-12(%ebp),%edi
	movl	32(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	32(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	32(%edi),%eax
	movl	%eax,32(%esi)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,36(%edx)
	jmp	Lj1484
Lj1465:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub
Lj1484:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR_$__GETFIELDSINFO$$TMEDIATORFIELDINFOLIST
_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR_$__GETFIELDSINFO$$TMEDIATORFIELDINFOLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1490
Lj1490:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj1493
	jmp	Lj1492
Lj1493:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	L_VMT_FPOBSERVER_TCOLUMNSLISTMEDIATOR$non_lazy_ptr-Lj1490(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1491
	jmp	Lj1492
Lj1491:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	112(%eax),%eax
	movl	%eax,-8(%ebp)
Lj1492:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__SETONBEFORESETUPFIELD$TONBEFORESETUPFIELD
_FPOBSERVER_TBASELISTMEDIATOR_$__SETONBEFORESETUPFIELD$TONBEFORESETUPFIELD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,96(%ecx)
	movl	4(%edx),%eax
	movl	%eax,100(%ecx)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1505
	decl	-12(%ebp)
	.align 2
Lj1506:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	(%edx),%ecx
	movl	%ecx,8(%eax)
	movl	4(%edx),%edx
	movl	%edx,12(%eax)
	cmpl	-12(%ebp),%ebx
	jg	Lj1506
Lj1505:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN
_FPOBSERVER_TBASELISTMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN:
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
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__SETACTIVE$BOOLEAN
_FPOBSERVER_TBASELISTMEDIATOR_$__SETACTIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN$stub
	cmpb	$0,-4(%ebp)
	jne	Lj1525
	jmp	Lj1526
Lj1525:
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1528
	decl	-12(%ebp)
	.align 2
Lj1529:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1529
Lj1528:
Lj1526:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__GETSELECTEDOBJECT$$TOBJECT
_FPOBSERVER_TBASELISTMEDIATOR_$__GETSELECTEDOBJECT$$TOBJECT:
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
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__SETSELECTEDOBJECT$TOBJECT
_FPOBSERVER_TBASELISTMEDIATOR_$__SETSELECTEDOBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__DODELETEITEMMEDIATOR$LONGINT$TLISTITEMMEDIATOR
_FPOBSERVER_TBASELISTMEDIATOR_$__DODELETEITEMMEDIATOR$LONGINT$TLISTITEMMEDIATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__ADDOBJECT$TOBJECT$LONGINT$$TLISTITEMMEDIATOR
_FPOBSERVER_TBASELISTMEDIATOR_$__ADDOBJECT$TOBJECT$LONGINT$$TLISTITEMMEDIATOR:
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
	call	*284(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1562
	jmp	Lj1563
Lj1562:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
Lj1563:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__CREATESUBMEDIATORS
_FPOBSERVER_TBASELISTMEDIATOR_$__CREATESUBMEDIATORS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1575
Lj1575:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%edx
	movl	L_VMT_CONTNRS_TOBJECTLIST$non_lazy_ptr-Lj1575(%edi),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1583
	decl	-8(%ebp)
	.align 2
Lj1584:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-8(%ebp),%eax
	jg	Lj1587
	jmp	Lj1588
Lj1587:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%esi
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj1605
Lj1588:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*272(%esi)
Lj1605:
	cmpl	-8(%ebp),%ebx
	jg	Lj1584
Lj1583:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jg	Lj1617
	incl	-8(%ebp)
	.align 2
Lj1618:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*288(%ebx)
	cmpl	-8(%ebp),%esi
	jl	Lj1618
Lj1617:
	movl	-4(%ebp),%eax
	movb	$0,108(%eax)
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__DOVIEWTOOBJECT
_FPOBSERVER_TBASELISTMEDIATOR_$__DOVIEWTOOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__DOOBJECTTOVIEW
_FPOBSERVER_TBASELISTMEDIATOR_$__DOOBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*292(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__SETSUBJECT$TOBJECT
_FPOBSERVER_TBASELISTMEDIATOR_$__SETSUBJECT$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-284(%ebp)
	call	Lj1642
Lj1642:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1643
	jmp	Lj1644
Lj1643:
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_CONTNRS_TOBJECTLIST$non_lazy_ptr-Lj1642(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1647
	jmp	Lj1648
Lj1647:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1655
Lj1648:
	movl	-4(%ebp),%edx
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1642(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1656
	jmp	Lj1657
Lj1656:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1664
Lj1657:
	movl	-4(%ebp),%edx
	movl	L_VMT_CLASSES_TCOLLECTION$non_lazy_ptr-Lj1642(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1665
	jmp	Lj1666
Lj1665:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1666:
Lj1664:
Lj1655:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1673
	jmp	Lj1674
Lj1673:
	movl	$0,(%esp)
	leal	-280(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	L_RESSTR_FPOBSERVER_SERRNOTLISTOBJECT$non_lazy_ptr-Lj1642(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$array_of_const$stub
Lj1674:
Lj1644:
	movl	-8(%ebp),%eax
	movb	$1,108(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT$stub
	movl	-284(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__FINDOBJECTMEDIATOR$TOBJECT$LONGINT$$TLISTITEMMEDIATOR
_FPOBSERVER_TBASELISTMEDIATOR_$__FINDOBJECTMEDIATOR$TOBJECT$LONGINT$$TLISTITEMMEDIATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj1700
	.align 2
Lj1699:
	movl	-8(%ebp),%eax
	decl	(%eax)
Lj1700:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jge	Lj1702
	jmp	Lj1701
Lj1702:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1699
	jmp	Lj1701
Lj1701:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	je	Lj1707
	jmp	Lj1708
Lj1707:
	movl	$0,-16(%ebp)
	jmp	Lj1711
Lj1708:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-16(%ebp)
Lj1711:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__CREATE$TCOMPONENT$$TBASELISTMEDIATOR
_FPOBSERVER_TBASELISTMEDIATOR_$__CREATE$TCOMPONENT$$TBASELISTMEDIATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1719
Lj1719:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1720
	jmp	Lj1721
Lj1720:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1721:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1726
	jmp	Lj1727
Lj1726:
	jmp	Lj1718
Lj1727:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1730
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1734
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr-Lj1719(%ebx),%edx
	movl	$0,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,104(%edx)
	movl	-12(%ebp),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	movl	-12(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld13$non_lazy_ptr-Lj1719(%ebx),%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*216(%ecx)
Lj1734:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1735
	call	LFPC_RERAISE$stub
Lj1735:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1759
	jmp	Lj1758
Lj1759:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1757
	jmp	Lj1758
Lj1757:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1758:
Lj1730:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1732
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1763
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1764
	jmp	Lj1765
Lj1764:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1765:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1763:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1762
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1762:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1732
Lj1732:
Lj1718:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__DESTROY
_FPOBSERVER_TBASELISTMEDIATOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1772
	jmp	Lj1773
Lj1772:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1773:
	movl	-8(%ebp),%eax
	leal	104(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPOBSERVER_TBASEMEDIATOR_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1784
	jmp	Lj1783
Lj1784:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1782
	jmp	Lj1783
Lj1782:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1783:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN
_FPOBSERVER_TBASELISTMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN:
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
.globl	_FPOBSERVER_TBASELISTMEDIATOR_$__OBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION
_FPOBSERVER_TBASELISTMEDIATOR_$__OBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj1792
Lj1792:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1797
	subl	$2,%eax
	je	Lj1795
	decl	%eax
	je	Lj1796
	jmp	Lj1794
Lj1795:
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ecx
	decl	%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*272(%esi)
	jmp	Lj1793
Lj1796:
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TBASELISTMEDIATOR_$__FINDOBJECTMEDIATOR$TOBJECT$LONGINT$$TLISTITEMMEDIATOR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1814
	jmp	Lj1815
Lj1814:
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*288(%esi)
Lj1815:
	jmp	Lj1793
Lj1797:
	movl	-12(%ebp),%eax
	movl	80(%eax),%edx
	movl	L_VMT_CONTNRS_TOBJECTLIST$non_lazy_ptr-Lj1792(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,108(%eax)
	jne	Lj1828
	jmp	Lj1831
Lj1831:
	movl	-20(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	%eax,%esi
	jne	Lj1828
	jmp	Lj1830
Lj1830:
	movl	-20(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1828
	jmp	Lj1829
Lj1828:
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub
Lj1829:
	jmp	Lj1793
Lj1794:
Lj1793:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__SETFIELDSINFO$TMEDIATORFIELDINFOLIST
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__SETFIELDSINFO$TMEDIATORFIELDINFOLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	112(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__GETDISPLAYNAMES$$ANSISTRING
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__GETDISPLAYNAMES$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETASSTRING$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__SETDISPLAYNAMES$ANSISTRING
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__SETDISPLAYNAMES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*236(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PARSEDISPLAYNAMES$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__FIELDINFOCHANGED$TMEDIATORFIELDINFO$TCOLLECTIONNOTIFICATION
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__FIELDINFOCHANGED$TMEDIATORFIELDINFO$TCOLLECTIONNOTIFICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1863
Lj1863:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj1864
	jmp	Lj1865
Lj1864:
	movl	L_RESSTR_FPOBSERVER_SERRACTIVE$non_lazy_ptr-Lj1863(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$stub
Lj1865:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN:
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
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PARSEDISPLAYNAMES$ANSISTRING
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PARSEDISPLAYNAMES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1878
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	.align 2
Lj1885:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	leal	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$_PARSEDISPLAYNAMES$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1896
	jmp	Lj1897
Lj1896:
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$$TMEDIATORFIELDINFO$stub
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
Lj1897:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj1887
	jmp	Lj1885
Lj1887:
Lj1878:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1879
	call	LFPC_RERAISE$stub
Lj1879:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$_PARSEDISPLAYNAMES$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$_PARSEDISPLAYNAMES$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$59,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1924
	jmp	Lj1925
Lj1924:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1928
	movl	-4(%eax),%eax
Lj1928:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj1925:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__CREATECOLUMNS
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__CREATECOLUMNS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__DOOBJECTTOVIEW
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__DOOBJECTTOVIEW:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*300(%edx)
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TBASELISTMEDIATOR_$__DOOBJECTTOVIEW$stub
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__CREATE$TCOMPONENT$$TCOLUMNSLISTMEDIATOR
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__CREATE$TCOMPONENT$$TCOLUMNSLISTMEDIATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1952
Lj1952:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1953
	jmp	Lj1954
Lj1953:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1954:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1959
	jmp	Lj1960
Lj1959:
	jmp	Lj1951
Lj1960:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1963
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1967
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPOBSERVER_TBASELISTMEDIATOR_$__CREATE$TCOMPONENT$$TBASELISTMEDIATOR$stub
	movl	L_VMT_FPOBSERVER_TMEDIATORFIELDINFO$non_lazy_ptr-Lj1952(%ebx),%ecx
	movl	L_VMT_FPOBSERVER_TMEDIATORFIELDINFOLIST$non_lazy_ptr-Lj1952(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-12(%ebp),%edx
	movl	%eax,112(%edx)
	movl	-12(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld13$non_lazy_ptr-Lj1952(%ebx),%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*236(%ecx)
Lj1967:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1968
	call	LFPC_RERAISE$stub
Lj1968:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1990
	jmp	Lj1989
Lj1990:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1988
	jmp	Lj1989
Lj1988:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1989:
Lj1963:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1965
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1994
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1995
	jmp	Lj1996
Lj1995:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1996:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1994:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1993
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1993:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1965
Lj1965:
Lj1951:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__DESTROY
_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2003
	jmp	Lj2004
Lj2003:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2004:
	movl	-8(%ebp),%eax
	leal	112(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPOBSERVER_TBASELISTMEDIATOR_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2015
	jmp	Lj2014
Lj2015:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2013
	jmp	Lj2014
Lj2013:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2014:
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETASSTRING$$ANSISTRING
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj2019
Lj2019:
	popl	%esi
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
	jne	Lj2020
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2026
	decl	-12(%ebp)
	.align 2
Lj2027:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj2030
	jmp	Lj2031
Lj2030:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPOBSERVER$_Ld15$non_lazy_ptr-Lj2019(%esi),%ecx
	call	Lfpc_ansistr_concat$stub
Lj2031:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETI$LONGINT$$TMEDIATORFIELDINFO$stub
	movl	%eax,%edi
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj2027
Lj2026:
Lj2020:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2021
	call	LFPC_RERAISE$stub
Lj2021:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETI$LONGINT$$TMEDIATORFIELDINFO
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETI$LONGINT$$TMEDIATORFIELDINFO:
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
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__SETI$LONGINT$TMEDIATORFIELDINFO
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__SETI$LONGINT$TMEDIATORFIELDINFO:
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
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2071
Lj2071:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION$stub
	movl	-12(%ebp),%eax
	cmpl	$0,32(%eax)
	jne	Lj2078
	jmp	Lj2079
Lj2078:
	movl	-4(%ebp),%edx
	movl	L_VMT_FPOBSERVER_TMEDIATORFIELDINFO$non_lazy_ptr-Lj2071(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%esi
	movl	32(%esi),%esi
	movl	(%esi),%esi
	call	*296(%esi)
Lj2079:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$$TMEDIATORFIELDINFO
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$$TMEDIATORFIELDINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2091
Lj2091:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_FPOBSERVER_TMEDIATORFIELDINFO$non_lazy_ptr-Lj2091(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$$TMEDIATORFIELDINFO$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$crc064A5688
_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$crc064A5688:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO$stub
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
.globl	_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_0_$__FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT
_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_0_$__FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT:
	subl	$12,%eax
	jmp	L_FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT$stub

.text
.globl	_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_1_$__FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT
_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_1_$__FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT:
	subl	$12,%eax
	jmp	L_FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT$stub

.text
.globl	_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_2_$__FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_2_$__FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
	subl	$12,%eax
	jmp	L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub

.text
.globl	_WRPR_FPOBSERVER_TBASEMEDIATOR_$_IFPOBSERVER_$_0_$__FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
_WRPR_FPOBSERVER_TBASEMEDIATOR_$_IFPOBSERVER_$_0_$__FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
	subl	$92,%eax
	jmp	L_FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub

.text
.globl	_WRPR_FPOBSERVER_TLISTITEMMEDIATOR_$_IFPOBSERVER_$_0_$__FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
_WRPR_FPOBSERVER_TLISTITEMMEDIATOR_$_IFPOBSERVER_$_0_$__FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER:
	subl	$20,%eax
	pushl	%ebx
	pushl	%eax
	movl	(%eax),%eax
	movl	104(%eax),%eax
	movl	%eax,4(%esp)
	popl	%eax
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_FPOBSERVER_MM
.data
.zerofill __DATA, __common, _U_FPOBSERVER_MM, 4,2



.const_data
	.align 2
	.align 2
.globl	_$FPOBSERVER$_Ld18
_$FPOBSERVER$_Ld18:
	.long	1,0
	.long	_VTBL_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED
	.long	12
	.long	_$FPOBSERVER$_Ld19
	.long	0

.data
	.align 2
.globl	_VTBL_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED
_VTBL_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED:
	.long	_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_0_$__FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT
	.long	_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_1_$__FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT
	.long	_WRPR_FPOBSERVER_TOBSERVEDHOOK_$_IFPOBSERVED_$_2_$__FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
	.align 2
.globl	_$FPOBSERVER$_Ld19
_$FPOBSERVER$_Ld19:
	.byte	38
	.ascii	"{663C603C-3F3C-4CC5-823C-AC8079F979E5}"
.globl	_$FPOBSERVER$_Ld17
_$FPOBSERVER$_Ld17:
	.byte	13
	.ascii	"TObservedHook"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TOBSERVEDHOOK
_VMT_FPOBSERVER_TOBSERVEDHOOK:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPOBSERVER$_Ld17
	.long	0,0
	.long	_$FPOBSERVER$_Ld20
	.long	_RTTI_FPOBSERVER_TOBSERVEDHOOK
	.long	0,0
	.long	_$FPOBSERVER$_Ld18
	.long	0
	.long	_FPOBSERVER_TOBSERVEDHOOK_$__DESTROY
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
	.align 2
.globl	_$FPOBSERVER$_Ld23
_$FPOBSERVER$_Ld23:
	.long	1,0
	.long	_VTBL_FPOBSERVER_TBASEMEDIATOR_$_IFPOBSERVER
	.long	92
	.long	_$FPOBSERVER$_Ld24
	.long	0

.data
	.align 2
.globl	_VTBL_FPOBSERVER_TBASEMEDIATOR_$_IFPOBSERVER
_VTBL_FPOBSERVER_TBASEMEDIATOR_$_IFPOBSERVER:
	.long	_WRPR_FPOBSERVER_TBASEMEDIATOR_$_IFPOBSERVER_$_0_$__FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
	.align 2
.globl	_$FPOBSERVER$_Ld24
_$FPOBSERVER$_Ld24:
	.byte	38
	.ascii	"{BC7376EA-199C-4C2A-8684-F4805F0691CA}"
.globl	_$FPOBSERVER$_Ld22
_$FPOBSERVER$_Ld22:
	.byte	13
	.ascii	"TBaseMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TBASEMEDIATOR
_VMT_FPOBSERVER_TBASEMEDIATOR:
	.long	96,-96
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$FPOBSERVER$_Ld22
	.long	0,0
	.long	_$FPOBSERVER$_Ld25
	.long	_RTTI_FPOBSERVER_TBASEMEDIATOR
	.long	_INIT_FPOBSERVER_TBASEMEDIATOR
	.long	0
	.long	_$FPOBSERVER$_Ld23
	.long	0
	.long	_FPOBSERVER_TBASEMEDIATOR_$__DESTROY
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
	.long	_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETVIEWPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECTPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGEDHANDLER$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__DOOBJECTTOVIEW
	.long	_FPOBSERVER_TBASEMEDIATOR_$__DOVIEWTOOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__GETVIEW$$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VALUELISTCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCLASS$$TCLASS
	.long	_FPOBSERVER_TBASEMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld27
_$FPOBSERVER$_Ld27:
	.byte	17
	.ascii	"TBaseListMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TBASELISTMEDIATOR
_VMT_FPOBSERVER_TBASELISTMEDIATOR:
	.long	112,-112
	.long	_VMT_FPOBSERVER_TBASEMEDIATOR
	.long	_$FPOBSERVER$_Ld27
	.long	0,0
	.long	_$FPOBSERVER$_Ld28
	.long	_RTTI_FPOBSERVER_TBASELISTMEDIATOR
	.long	0,0,0,0
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__DESTROY
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
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__CREATE$TCOMPONENT$$TBASELISTMEDIATOR
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETVIEWPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETACTIVE$BOOLEAN
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETSUBJECT$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECTPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGEDHANDLER$TOBJECT
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__DOOBJECTTOVIEW
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__DOVIEWTOOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__GETVIEW$$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VALUELISTCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCLASS$$TCLASS
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__ADDOBJECT$TOBJECT$LONGINT$$TLISTITEMMEDIATOR
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__GETSELECTEDOBJECT$$TOBJECT
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETSELECTEDOBJECT$TOBJECT
	.long	FPC_ABSTRACTERROR
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__DODELETEITEMMEDIATOR$LONGINT$TLISTITEMMEDIATOR
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__CREATESUBMEDIATORS
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld30
_$FPOBSERVER$_Ld30:
	.byte	18
	.ascii	"TComponentMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TCOMPONENTMEDIATOR
_VMT_FPOBSERVER_TCOMPONENTMEDIATOR:
	.long	100,-100
	.long	_VMT_FPOBSERVER_TBASEMEDIATOR
	.long	_$FPOBSERVER$_Ld30
	.long	0,0
	.long	_$FPOBSERVER$_Ld31
	.long	_RTTI_FPOBSERVER_TCOMPONENTMEDIATOR
	.long	0,0,0,0
	.long	_FPOBSERVER_TBASEMEDIATOR_$__DESTROY
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
	.long	_FPOBSERVER_TCOMPONENTMEDIATOR_$__NOTIFICATION$TCOMPONENT$TOPERATION
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
	.long	_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETVIEWPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECTPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGEDHANDLER$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__DOOBJECTTOVIEW
	.long	_FPOBSERVER_TBASEMEDIATOR_$__DOVIEWTOOBJECT
	.long	_FPOBSERVER_TCOMPONENTMEDIATOR_$__GETVIEW$$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VALUELISTCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCLASS$$TCLASS
	.long	_FPOBSERVER_TBASEMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN
	.long	0

.const_data
	.align 2
	.align 2
.globl	_$FPOBSERVER$_Ld34
_$FPOBSERVER$_Ld34:
	.long	1,0
	.long	_VTBL_FPOBSERVER_TLISTITEMMEDIATOR_$_IFPOBSERVER
	.long	20
	.long	_$FPOBSERVER$_Ld35
	.long	0

.data
	.align 2
.globl	_VTBL_FPOBSERVER_TLISTITEMMEDIATOR_$_IFPOBSERVER
_VTBL_FPOBSERVER_TLISTITEMMEDIATOR_$_IFPOBSERVER:
	.long	_WRPR_FPOBSERVER_TLISTITEMMEDIATOR_$_IFPOBSERVER_$_0_$__FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
	.align 2
.globl	_$FPOBSERVER$_Ld35
_$FPOBSERVER$_Ld35:
	.byte	38
	.ascii	"{BC7376EA-199C-4C2A-8684-F4805F0691CA}"
.globl	_$FPOBSERVER$_Ld33
_$FPOBSERVER$_Ld33:
	.byte	17
	.ascii	"TListItemMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TLISTITEMMEDIATOR
_VMT_FPOBSERVER_TLISTITEMMEDIATOR:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPOBSERVER$_Ld33
	.long	0,0
	.long	_$FPOBSERVER$_Ld36
	.long	_RTTI_FPOBSERVER_TLISTITEMMEDIATOR
	.long	0,0
	.long	_$FPOBSERVER$_Ld34
	.long	0
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__DESTROY
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
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__SETSUBJECT$TOBJECT
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__OBJECTTOVIEW
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__VIEWTOOBJECT
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld38
_$FPOBSERVER$_Ld38:
	.byte	18
	.ascii	"TMediatorFieldInfo"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TMEDIATORFIELDINFO
_VMT_FPOBSERVER_TMEDIATORFIELDINFO:
	.long	40,-40
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$FPOBSERVER$_Ld38
	.long	0,0
	.long	_$FPOBSERVER$_Ld39
	.long	_RTTI_FPOBSERVER_TMEDIATORFIELDINFO
	.long	_INIT_FPOBSERVER_TMEDIATORFIELDINFO
	.long	0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__GETASSTRING$$ANSISTRING
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETASSTRING$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld41
_$FPOBSERVER$_Ld41:
	.byte	20
	.ascii	"TColumnsListMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TCOLUMNSLISTMEDIATOR
_VMT_FPOBSERVER_TCOLUMNSLISTMEDIATOR:
	.long	116,-116
	.long	_VMT_FPOBSERVER_TBASELISTMEDIATOR
	.long	_$FPOBSERVER$_Ld41
	.long	0,0
	.long	_$FPOBSERVER$_Ld42
	.long	_RTTI_FPOBSERVER_TCOLUMNSLISTMEDIATOR
	.long	0,0,0,0
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__DESTROY
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
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__CREATE$TCOMPONENT$$TCOLUMNSLISTMEDIATOR
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETVIEWPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__PUBLISHEDVIEWPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PUBLISHEDSUBJECTPROPERTY$$BOOLEAN
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETACTIVE$BOOLEAN
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETSUBJECT$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECTPROPERTYNAME$ANSISTRING
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGEDHANDLER$TOBJECT
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__DOOBJECTTOVIEW
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__DOVIEWTOOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__GETVIEW$$TOBJECT
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VALUELISTCHANGED
	.long	_FPOBSERVER_TBASEMEDIATOR_$__VIEWCLASS$$TCLASS
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__COMPOSITEMEDIATOR$$BOOLEAN
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__ADDOBJECT$TOBJECT$LONGINT$$TLISTITEMMEDIATOR
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__GETSELECTEDOBJECT$$TOBJECT
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETSELECTEDOBJECT$TOBJECT
	.long	FPC_ABSTRACTERROR
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__DODELETEITEMMEDIATOR$LONGINT$TLISTITEMMEDIATOR
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__CREATESUBMEDIATORS
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__FIELDINFOCHANGED$TMEDIATORFIELDINFO$TCOLLECTIONNOTIFICATION
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__CREATECOLUMNS
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld44
_$FPOBSERVER$_Ld44:
	.byte	22
	.ascii	"TMediatorFieldInfoList"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TMEDIATORFIELDINFOLIST
_VMT_FPOBSERVER_TMEDIATORFIELDINFOLIST:
	.long	36,-36
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$FPOBSERVER$_Ld44
	.long	0,0
	.long	_$FPOBSERVER$_Ld45
	.long	_RTTI_FPOBSERVER_TMEDIATORFIELDINFOLIST
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
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	_CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	_CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	_CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	_CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld47
_$FPOBSERVER$_Ld47:
	.byte	24
	.ascii	"TColumnsListItemMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR
_VMT_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR:
	.long	24,-24
	.long	_VMT_FPOBSERVER_TLISTITEMMEDIATOR
	.long	_$FPOBSERVER$_Ld47
	.long	0,0
	.long	_$FPOBSERVER$_Ld48
	.long	_RTTI_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR
	.long	0,0,0,0
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__DESTROY
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
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__SETSUBJECT$TOBJECT
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__OBJECTTOVIEW
	.long	_FPOBSERVER_TLISTITEMMEDIATOR_$__VIEWTOOBJECT
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld50
_$FPOBSERVER$_Ld50:
	.byte	12
	.ascii	"TMediatorDef"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TMEDIATORDEF
_VMT_FPOBSERVER_TMEDIATORDEF:
	.long	40,-40
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$FPOBSERVER$_Ld50
	.long	0,0
	.long	_$FPOBSERVER$_Ld51
	.long	_RTTI_FPOBSERVER_TMEDIATORDEF
	.long	_INIT_FPOBSERVER_TMEDIATORDEF
	.long	0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	.long	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld53
_$FPOBSERVER$_Ld53:
	.byte	13
	.ascii	"TMediatorDefs"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TMEDIATORDEFS
_VMT_FPOBSERVER_TMEDIATORDEFS:
	.long	32,-32
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$FPOBSERVER$_Ld53
	.long	0,0
	.long	_$FPOBSERVER$_Ld54
	.long	_RTTI_FPOBSERVER_TMEDIATORDEFS
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
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
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
.globl	_$FPOBSERVER$_Ld56
_$FPOBSERVER$_Ld56:
	.byte	16
	.ascii	"TMediatorManager"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_TMEDIATORMANAGER
_VMT_FPOBSERVER_TMEDIATORMANAGER:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPOBSERVER$_Ld56
	.long	0,0
	.long	_$FPOBSERVER$_Ld57
	.long	_RTTI_FPOBSERVER_TMEDIATORMANAGER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPOBSERVER_TMEDIATORMANAGER_$__DESTROY
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
.globl	_$FPOBSERVER$_Ld59
_$FPOBSERVER$_Ld59:
	.byte	9
	.ascii	"EMediator"

.const_data
	.align 2
.globl	_VMT_FPOBSERVER_EMEDIATOR
_VMT_FPOBSERVER_EMEDIATOR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPOBSERVER$_Ld59
	.long	0,0
	.long	_$FPOBSERVER$_Ld60
	.long	_RTTI_FPOBSERVER_EMEDIATOR
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

.data
	.align 2
.globl	_THREADVARLIST_FPOBSERVER
_THREADVARLIST_FPOBSERVER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$FPOBSERVER$_Ld63
_$FPOBSERVER$_Ld63:
	.short	0,1
	.long	0,-1,10
.reference _$FPOBSERVER$_Ld62
.globl	_$FPOBSERVER$_Ld62
_$FPOBSERVER$_Ld62:
.reference _$FPOBSERVER$_Ld63
	.ascii	"FPOBSERVER\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld65
_$FPOBSERVER$_Ld65:
	.short	0,1
	.long	0,-1,40
.reference _$FPOBSERVER$_Ld64
.globl	_$FPOBSERVER$_Ld64
_$FPOBSERVER$_Ld64:
.reference _$FPOBSERVER$_Ld65
	.ascii	"Instance of class %s is not an observer.\000"
	.align 2
.globl	_$FPOBSERVER$_Ld67
_$FPOBSERVER$_Ld67:
	.short	0,1
	.long	0,-1,26
.reference _$FPOBSERVER$_Ld66
.globl	_$FPOBSERVER$_Ld66
_$FPOBSERVER$_Ld66:
.reference _$FPOBSERVER$_Ld67
	.ascii	"fpobserver.serrnotobserver\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld69
_$FPOBSERVER$_Ld69:
	.short	0,1
	.long	0,-1,48
.reference _$FPOBSERVER$_Ld68
.globl	_$FPOBSERVER$_Ld68
_$FPOBSERVER$_Ld68:
.reference _$FPOBSERVER$_Ld69
	.ascii	"%s is not a valid published property of class %s\000"
	.align 2
.globl	_$FPOBSERVER$_Ld71
_$FPOBSERVER$_Ld71:
	.short	0,1
	.long	0,-1,34
.reference _$FPOBSERVER$_Ld70
.globl	_$FPOBSERVER$_Ld70
_$FPOBSERVER$_Ld70:
.reference _$FPOBSERVER$_Ld71
	.ascii	"fpobserver.serrinvalidpropertyname\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld73
_$FPOBSERVER$_Ld73:
	.short	0,1
	.long	0,-1,38
.reference _$FPOBSERVER$_Ld72
.globl	_$FPOBSERVER$_Ld72
_$FPOBSERVER$_Ld72:
.reference _$FPOBSERVER$_Ld73
	.ascii	"Cannot observe an instance of class %d\000"
	.align 2
.globl	_$FPOBSERVER$_Ld75
_$FPOBSERVER$_Ld75:
	.short	0,1
	.long	0,-1,37
.reference _$FPOBSERVER$_Ld74
.globl	_$FPOBSERVER$_Ld74
_$FPOBSERVER$_Ld74:
.reference _$FPOBSERVER$_Ld75
	.ascii	"fpobserver.serrobjectcannotbeobserved\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld77
_$FPOBSERVER$_Ld77:
	.short	0,1
	.long	0,-1,36
.reference _$FPOBSERVER$_Ld76
.globl	_$FPOBSERVER$_Ld76
_$FPOBSERVER$_Ld76:
.reference _$FPOBSERVER$_Ld77
	.ascii	"No fieldname specified for column %d\000"
	.align 2
.globl	_$FPOBSERVER$_Ld79
_$FPOBSERVER$_Ld79:
	.short	0,1
	.long	0,-1,31
.reference _$FPOBSERVER$_Ld78
.globl	_$FPOBSERVER$_Ld78
_$FPOBSERVER$_Ld78:
.reference _$FPOBSERVER$_Ld79
	.ascii	"fpobserver.serrinvalidfieldname\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld81
_$FPOBSERVER$_Ld81:
	.short	0,1
	.long	0,-1,56
.reference _$FPOBSERVER$_Ld80
.globl	_$FPOBSERVER$_Ld80
_$FPOBSERVER$_Ld80:
.reference _$FPOBSERVER$_Ld81
	.ascii	"Invalid alignment character \"%s\" specified for co"
	.ascii	"lumn %d\000"
	.align 2
.globl	_$FPOBSERVER$_Ld83
_$FPOBSERVER$_Ld83:
	.short	0,1
	.long	0,-1,35
.reference _$FPOBSERVER$_Ld82
.globl	_$FPOBSERVER$_Ld82
_$FPOBSERVER$_Ld82:
.reference _$FPOBSERVER$_Ld83
	.ascii	"fpobserver.serrinvalidalignmentchar\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld85
_$FPOBSERVER$_Ld85:
	.short	0,1
	.long	0,-1,41
.reference _$FPOBSERVER$_Ld84
.globl	_$FPOBSERVER$_Ld84
_$FPOBSERVER$_Ld84:
.reference _$FPOBSERVER$_Ld85
	.ascii	"Invalid with \"%s\" specified for column %d\000"
	.align 2
.globl	_$FPOBSERVER$_Ld87
_$FPOBSERVER$_Ld87:
	.short	0,1
	.long	0,-1,36
.reference _$FPOBSERVER$_Ld86
.globl	_$FPOBSERVER$_Ld86
_$FPOBSERVER$_Ld86:
.reference _$FPOBSERVER$_Ld87
	.ascii	"fpobserver.serrinvalidwidthspecifier\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld89
_$FPOBSERVER$_Ld89:
	.short	0,1
	.long	0,-1,23
.reference _$FPOBSERVER$_Ld88
.globl	_$FPOBSERVER$_Ld88
_$FPOBSERVER$_Ld88:
.reference _$FPOBSERVER$_Ld89
	.ascii	"%s is not a TObjectList\000"
	.align 2
.globl	_$FPOBSERVER$_Ld91
_$FPOBSERVER$_Ld91:
	.short	0,1
	.long	0,-1,28
.reference _$FPOBSERVER$_Ld90
.globl	_$FPOBSERVER$_Ld90
_$FPOBSERVER$_Ld90:
.reference _$FPOBSERVER$_Ld91
	.ascii	"fpobserver.serrnotlistobject\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld93
_$FPOBSERVER$_Ld93:
	.short	0,1
	.long	0,-1,54
.reference _$FPOBSERVER$_Ld92
.globl	_$FPOBSERVER$_Ld92
_$FPOBSERVER$_Ld92:
.reference _$FPOBSERVER$_Ld93
	.ascii	"%s needs a TObjectList class but is registered with"
	.ascii	" %s\000"
	.align 2
.globl	_$FPOBSERVER$_Ld95
_$FPOBSERVER$_Ld95:
	.short	0,1
	.long	0,-1,33
.reference _$FPOBSERVER$_Ld94
.globl	_$FPOBSERVER$_Ld94
_$FPOBSERVER$_Ld94:
.reference _$FPOBSERVER$_Ld95
	.ascii	"fpobserver.serrcompositeneedslist\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld97
_$FPOBSERVER$_Ld97:
	.short	0,1
	.long	0,-1,50
.reference _$FPOBSERVER$_Ld96
.globl	_$FPOBSERVER$_Ld96
_$FPOBSERVER$_Ld96:
.reference _$FPOBSERVER$_Ld97
	.ascii	"Operation not allowed while the mediator is active\000"
	.align 2
.globl	_$FPOBSERVER$_Ld99
_$FPOBSERVER$_Ld99:
	.short	0,1
	.long	0,-1,21
.reference _$FPOBSERVER$_Ld98
.globl	_$FPOBSERVER$_Ld98
_$FPOBSERVER$_Ld98:
.reference _$FPOBSERVER$_Ld99
	.ascii	"fpobserver.serractive\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld101
_$FPOBSERVER$_Ld101:
	.short	0,1
	.long	0,-1,20
.reference _$FPOBSERVER$_Ld100
.globl	_$FPOBSERVER$_Ld100
_$FPOBSERVER$_Ld100:
.reference _$FPOBSERVER$_Ld101
	.ascii	"no gui fieldname set\000"
	.align 2
.globl	_$FPOBSERVER$_Ld103
_$FPOBSERVER$_Ld103:
	.short	0,1
	.long	0,-1,29
.reference _$FPOBSERVER$_Ld102
.globl	_$FPOBSERVER$_Ld102
_$FPOBSERVER$_Ld102:
.reference _$FPOBSERVER$_Ld103
	.ascii	"fpobserver.serrnoguifieldname\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld105
_$FPOBSERVER$_Ld105:
	.short	0,1
	.long	0,-1,24
.reference _$FPOBSERVER$_Ld104
.globl	_$FPOBSERVER$_Ld104
_$FPOBSERVER$_Ld104:
.reference _$FPOBSERVER$_Ld105
	.ascii	"no subject fieldname set\000"
	.align 2
.globl	_$FPOBSERVER$_Ld107
_$FPOBSERVER$_Ld107:
	.short	0,1
	.long	0,-1,33
.reference _$FPOBSERVER$_Ld106
.globl	_$FPOBSERVER$_Ld106
_$FPOBSERVER$_Ld106:
.reference _$FPOBSERVER$_Ld107
	.ascii	"fpobserver.serrnosubjectfieldname\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld2
_$FPOBSERVER$_Ld2:
	.short	0,1
	.long	0,-1,9
.reference _$FPOBSERVER$_Ld1
.globl	_$FPOBSERVER$_Ld1
_$FPOBSERVER$_Ld1:
.reference _$FPOBSERVER$_Ld2
	.ascii	" instance\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld4
_$FPOBSERVER$_Ld4:
	.short	0,1
	.long	0,-1,3
.reference _$FPOBSERVER$_Ld3
.globl	_$FPOBSERVER$_Ld3
_$FPOBSERVER$_Ld3:
.reference _$FPOBSERVER$_Ld4
	.ascii	"Nil\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld6
_$FPOBSERVER$_Ld6:
	.short	0,1
	.long	0,-1,27
.reference _$FPOBSERVER$_Ld5
.globl	_$FPOBSERVER$_Ld5
_$FPOBSERVER$_Ld5:
.reference _$FPOBSERVER$_Ld6
	.ascii	"Mediator %s (%s,%s,%s) : %s\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld8
_$FPOBSERVER$_Ld8:
	.short	0,1
	.long	0,-1,7
.reference _$FPOBSERVER$_Ld7
.globl	_$FPOBSERVER$_Ld7
_$FPOBSERVER$_Ld7:
.reference _$FPOBSERVER$_Ld8
	.ascii	"%s : %s\000"

.const
	.align 2
.globl	_$FPOBSERVER$_Ld9
_$FPOBSERVER$_Ld9:
	.ascii	"&{BC7376EA-199C-4C2A-8684-F4805F0691CA}\000"

.const
	.align 2
.globl	_$FPOBSERVER$_Ld10
_$FPOBSERVER$_Ld10:
	.ascii	"&{663C603C-3F3C-4CC5-823C-AC8079F979E5}\000"

.data
.globl	_TC_FPOBSERVER_ALIGNCHARS
_TC_FPOBSERVER_ALIGNCHARS:
	.byte	108,114,99

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld12
_$FPOBSERVER$_Ld12:
	.short	0,1
	.long	0,-1,11
.reference _$FPOBSERVER$_Ld11
.globl	_$FPOBSERVER$_Ld11
_$FPOBSERVER$_Ld11:
.reference _$FPOBSERVER$_Ld12
	.ascii	"%s|%s|%d|%s\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld14
_$FPOBSERVER$_Ld14:
	.short	0,1
	.long	0,-1,7
.reference _$FPOBSERVER$_Ld13
.globl	_$FPOBSERVER$_Ld13
_$FPOBSERVER$_Ld13:
.reference _$FPOBSERVER$_Ld14
	.ascii	"Caption\000"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld16
_$FPOBSERVER$_Ld16:
	.short	0,1
	.long	0,-1,1
.reference _$FPOBSERVER$_Ld15
.globl	_$FPOBSERVER$_Ld15
_$FPOBSERVER$_Ld15:
.reference _$FPOBSERVER$_Ld16
	.ascii	";\000"
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
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

L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING
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

L_FPOBSERVER_TMEDIATORMANAGER_$__CREATE$$TMEDIATORMANAGER$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORMANAGER_$__CREATE$$TMEDIATORMANAGER
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

L_FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub:
.indirect_symbol _FPOBSERVER_TOBSERVEDHOOK_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

L_CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__REMOVE$POINTER$$LONGINT
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

L_FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__CHECKPROPERTYNAME$TOBJECT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__MAYBEOBJECTTOVIEW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__FPOATTACHOBSERVER$TOBJECT$stub:
.indirect_symbol _CLASSES_TLIST_$__FPOATTACHOBSERVER$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _TYPINFO_ISPUBLISHEDPROP$TOBJECT$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__CHECKVIEWSUBJECT$$BOOLEAN$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__CHECKVIEWSUBJECT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__OBJECTTOVIEW$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__OBJECTTOVIEW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__VIEWTOOBJECT$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__VIEWTOOBJECT
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

L_FPOBSERVER_TBASEMEDIATOR_$__MAYBEVIEWTOOBJECT$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__MAYBEVIEWTOOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__SETVALUELIST$TOBJECTLIST$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__SETVALUELIST$TOBJECTLIST
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

LFPC_FINALIZE$stub:
.indirect_symbol FPC_FINALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT$stub:
.indirect_symbol _TYPINFO_GETPROPVALUE$TOBJECT$ANSISTRING$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT$stub:
.indirect_symbol _TYPINFO_SETPROPVALUE$TOBJECT$ANSISTRING$VARIANT
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

L_CLASSES_TCOMPONENT_$__REMOVEFREENOTIFICATION$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__REMOVEFREENOTIFICATION$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__FREENOTIFICATION$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__FREENOTIFICATION$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
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

L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
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

L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM
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

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
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

L_FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$PPROPINFO$$TMEDIATORDEF$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORMANAGER_$__FINDDEFFOR$TOBJECT$TCOMPONENT$PPROPINFO$$TMEDIATORDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO$stub:
.indirect_symbol _TYPINFO_GETPROPINFO$TOBJECT$ANSISTRING$$PPROPINFO
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

L_FPOBSERVER_TMEDIATORDEFS_$__GETDEF$LONGINT$$TMEDIATORDEF$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORDEFS_$__GETDEF$LONGINT$$TMEDIATORDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORDEF_$__HANDLES$TOBJECT$TCOMPONENT$PPROPINFO$$BOOLEAN$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORDEF_$__HANDLES$TOBJECT$TCOMPONENT$PPROPINFO$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORDEF_$__BETTERMATCH$TMEDIATORDEF$$BOOLEAN$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORDEF_$__BETTERMATCH$TMEDIATORDEF$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORDEFS_$__ADDDEF$$TMEDIATORDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW$stub:
.indirect_symbol _FPOBSERVER_TLISTITEMMEDIATOR_$__MAYBEOBJECTTOVIEW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TLISTITEMMEDIATOR_$__GETACTIVE$$BOOLEAN$stub:
.indirect_symbol _FPOBSERVER_TLISTITEMMEDIATOR_$__GETACTIVE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TPERSISTENT_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__FPONOTIFYOBSERVERS$TOBJECT$TFPOBSERVEDOPERATION$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$__CHANGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$_SETASSTRING$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const$stub:
.indirect_symbol _FPOBSERVER_MEDIATORERROR$TOBJECT$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING
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

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
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

L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__SETACTIVE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT
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

L_CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__RAISEMEDIATORERROR$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__SETSUBJECT$TOBJECT
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

L_CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__CREATE$$TFPOBJECTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__DESTROY$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASELISTMEDIATOR_$__FINDOBJECTMEDIATOR$TOBJECT$LONGINT$$TLISTITEMMEDIATOR$stub:
.indirect_symbol _FPOBSERVER_TBASELISTMEDIATOR_$__FINDOBJECTMEDIATOR$TOBJECT$LONGINT$$TLISTITEMMEDIATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETASSTRING$$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETASSTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PARSEDISPLAYNAMES$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__PARSEDISPLAYNAMES$ANSISTRING
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

L_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$_PARSEDISPLAYNAMES$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPOBSERVER_TCOLUMNSLISTMEDIATOR_$_PARSEDISPLAYNAMES$ANSISTRING_GETTOKEN$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$$TMEDIATORFIELDINFO$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$$TMEDIATORFIELDINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASELISTMEDIATOR_$__DOOBJECTTOVIEW$stub:
.indirect_symbol _FPOBSERVER_TBASELISTMEDIATOR_$__DOOBJECTTOVIEW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASELISTMEDIATOR_$__CREATE$TCOMPONENT$$TBASELISTMEDIATOR$stub:
.indirect_symbol _FPOBSERVER_TBASELISTMEDIATOR_$__CREATE$TCOMPONENT$$TBASELISTMEDIATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASELISTMEDIATOR_$__DESTROY$stub:
.indirect_symbol _FPOBSERVER_TBASELISTMEDIATOR_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETI$LONGINT$$TMEDIATORFIELDINFO$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFOLIST_$__GETI$LONGINT$$TMEDIATORFIELDINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO$stub:
.indirect_symbol _FPOBSERVER_TMEDIATORFIELDINFOLIST_$__ADDFIELDINFO$ANSISTRING$ANSISTRING$LONGINT$$TMEDIATORFIELDINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT$stub:
.indirect_symbol _FPOBSERVER_TOBSERVEDHOOK_$__FPOATTACHOBSERVER$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT$stub:
.indirect_symbol _FPOBSERVER_TOBSERVEDHOOK_$__FPODETACHOBSERVER$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER$stub:
.indirect_symbol _FPOBSERVER_TBASEMEDIATOR_$__FPOOBSERVEDCHANGED$TOBJECT$TFPOBSERVEDOPERATION$POINTER
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
.globl	_$FPOBSERVER$_Ld20
_$FPOBSERVER$_Ld20:
	.short	0
	.long	_$FPOBSERVER$_Ld21
	.align 2
.globl	_$FPOBSERVER$_Ld21
_$FPOBSERVER$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TOBSERVEDHOOK
_INIT_FPOBSERVER_TOBSERVEDHOOK:
	.byte	15,13
	.ascii	"TObservedHook"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TOBSERVEDHOOK
_RTTI_FPOBSERVER_TOBSERVEDHOOK:
	.byte	15,13
	.ascii	"TObservedHook"
	.long	_VMT_FPOBSERVER_TOBSERVEDHOOK
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATINGEVENT
_INIT_FPOBSERVER_TMEDIATINGEVENT:
	.byte	6,15
	.ascii	"TMediatingEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	1,7
	.ascii	"Handled"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATINGEVENT
_RTTI_FPOBSERVER_TMEDIATINGEVENT:
	.byte	6,15
	.ascii	"TMediatingEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	1,7
	.ascii	"Handled"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_DEF274
_INIT_FPOBSERVER_DEF274:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld25
_$FPOBSERVER$_Ld25:
	.short	0
	.long	_$FPOBSERVER$_Ld26
	.align 2
.globl	_$FPOBSERVER$_Ld26
_$FPOBSERVER$_Ld26:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TBASEMEDIATOR
_INIT_FPOBSERVER_TBASEMEDIATOR:
	.byte	15,13
	.ascii	"TBaseMediator"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	76
	.long	_INIT_SYSTEM_ANSISTRING
	.long	88

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TBASEMEDIATOR
_RTTI_FPOBSERVER_TBASEMEDIATOR:
	.byte	15,13
	.ascii	"TBaseMediator"
	.long	_VMT_FPOBSERVER_TBASEMEDIATOR
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	7
	.byte	10
	.ascii	"fpobserver"
	.short	5
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	76,236,1,0,-2147483648
	.short	2
	.byte	56,19
	.ascii	"SubjectPropertyName"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	52,228,1,0,-2147483648
	.short	3
	.byte	56,6
	.ascii	"Active"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	72
	.long	_FPOBSERVER_TBASEMEDIATOR_$__SETREADONLY$BOOLEAN
	.long	1,0,-2147483648
	.short	4
	.byte	52,8
	.ascii	"ReadOnly"
	.long	_RTTI_FPOBSERVER_TMEDIATINGEVENT
	.long	64,64,1,0,-2147483648
	.short	5
	.byte	48,14
	.ascii	"OnViewToObject"
	.long	_RTTI_FPOBSERVER_TMEDIATINGEVENT
	.long	56,56,1,0,-2147483648
	.short	6
	.byte	48,14
	.ascii	"OnObjectToView"

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATORCLASS
_INIT_FPOBSERVER_TMEDIATORCLASS:
	.byte	0
	.ascii	"\016TMediatorClass"

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATORCLASS
_RTTI_FPOBSERVER_TMEDIATORCLASS:
	.byte	0
	.ascii	"\016TMediatorClass"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld28
_$FPOBSERVER$_Ld28:
	.short	0
	.long	_$FPOBSERVER$_Ld29
	.align 2
.globl	_$FPOBSERVER$_Ld29
_$FPOBSERVER$_Ld29:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TBASELISTMEDIATOR
_INIT_FPOBSERVER_TBASELISTMEDIATOR:
	.byte	15,17
	.ascii	"TBaseListMediator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TONBEFORESETUPFIELD
_RTTI_FPOBSERVER_TONBEFORESETUPFIELD:
	.byte	6,19
	.ascii	"TOnBeforeSetupField"
	.byte	0,3,8,7
	.ascii	"AObject"
	.ascii	"\007TObject"
	.byte	2,10
	.ascii	"AFieldName"
	.ascii	"\012AnsiString"
	.byte	1,6
	.ascii	"AValue"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TBASELISTMEDIATOR
_RTTI_FPOBSERVER_TBASELISTMEDIATOR:
	.byte	15,17
	.ascii	"TBaseListMediator"
	.long	_VMT_FPOBSERVER_TBASELISTMEDIATOR
	.long	_RTTI_FPOBSERVER_TBASEMEDIATOR
	.short	8
	.byte	10
	.ascii	"fpobserver"
	.short	1
	.long	_RTTI_FPOBSERVER_TONBEFORESETUPFIELD
	.long	96
	.long	_FPOBSERVER_TBASELISTMEDIATOR_$__SETONBEFORESETUPFIELD$TONBEFORESETUPFIELD
	.long	1,0,-2147483648
	.short	7
	.byte	52,18
	.ascii	"OnBeforeSetupField"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld31
_$FPOBSERVER$_Ld31:
	.short	1
	.long	_$FPOBSERVER$_Ld32
	.long	96
	.short	1
	.byte	14
	.ascii	"FViewComponent"
	.align 2
.globl	_$FPOBSERVER$_Ld32
_$FPOBSERVER$_Ld32:
	.short	1
	.long	_VMT_CLASSES_TCOMPONENT

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TCOMPONENTMEDIATOR
_INIT_FPOBSERVER_TCOMPONENTMEDIATOR:
	.byte	15,18
	.ascii	"TComponentMediator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TCOMPONENTMEDIATOR
_RTTI_FPOBSERVER_TCOMPONENTMEDIATOR:
	.byte	15,18
	.ascii	"TComponentMediator"
	.long	_VMT_FPOBSERVER_TCOMPONENTMEDIATOR
	.long	_RTTI_FPOBSERVER_TBASEMEDIATOR
	.short	9
	.byte	10
	.ascii	"fpobserver"
	.short	2
	.long	_RTTI_CLASSES_TCOMPONENT
	.long	96
	.long	_FPOBSERVER_TCOMPONENTMEDIATOR_$__SETCOMPONENT$TCOMPONENT
	.long	1,0,-2147483648
	.short	7
	.byte	52,13
	.ascii	"ViewComponent"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	88,216,1,0,-2147483648
	.short	8
	.byte	56,16
	.ascii	"ViewPropertyName"

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TONBEFORESETUPFIELD
_INIT_FPOBSERVER_TONBEFORESETUPFIELD:
	.byte	6,19
	.ascii	"TOnBeforeSetupField"
	.byte	0,3,8,7
	.ascii	"AObject"
	.ascii	"\007TObject"
	.byte	2,10
	.ascii	"AFieldName"
	.ascii	"\012AnsiString"
	.byte	1,6
	.ascii	"AValue"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld36
_$FPOBSERVER$_Ld36:
	.short	0
	.long	_$FPOBSERVER$_Ld37
	.align 2
.globl	_$FPOBSERVER$_Ld37
_$FPOBSERVER$_Ld37:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TLISTITEMMEDIATOR
_INIT_FPOBSERVER_TLISTITEMMEDIATOR:
	.byte	15,17
	.ascii	"TListItemMediator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TLISTITEMMEDIATOR
_RTTI_FPOBSERVER_TLISTITEMMEDIATOR:
	.byte	15,17
	.ascii	"TListItemMediator"
	.long	_VMT_FPOBSERVER_TLISTITEMMEDIATOR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_DEF373
_INIT_FPOBSERVER_DEF373:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_DEF379
_INIT_FPOBSERVER_DEF379:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_DEF381
_INIT_FPOBSERVER_DEF381:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld39
_$FPOBSERVER$_Ld39:
	.short	0
	.long	_$FPOBSERVER$_Ld40
	.align 2
.globl	_$FPOBSERVER$_Ld40
_$FPOBSERVER$_Ld40:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATORFIELDINFO
_INIT_FPOBSERVER_TMEDIATORFIELDINFO:
	.byte	15,18
	.ascii	"TMediatorFieldInfo"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28
	.long	_INIT_SYSTEM_ANSISTRING
	.long	32

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATORFIELDINFO
_RTTI_FPOBSERVER_TMEDIATORFIELDINFO:
	.byte	15,18
	.ascii	"TMediatorFieldInfo"
	.long	_VMT_FPOBSERVER_TMEDIATORFIELDINFO
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	4
	.byte	10
	.ascii	"fpobserver"
	.short	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__GETCAPTION$$ANSISTRING
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETCAPTION$ANSISTRING
	.long	1,0,-2147483648
	.short	0
	.byte	53,7
	.ascii	"Caption"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	32
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETPROPNAME$ANSISTRING
	.long	1,0,-2147483648
	.short	1
	.byte	52,12
	.ascii	"PropertyName"
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETWIDTH$LONGINT
	.long	1,0,-2147483648
	.short	2
	.byte	52,5
	.ascii	"Width"
	.long	_RTTI_CLASSES_TALIGNMENT
	.long	36
	.long	_FPOBSERVER_TMEDIATORFIELDINFO_$__SETALIGN$TALIGNMENT
	.long	1,0,0
	.short	3
	.byte	52,9
	.ascii	"Alignment"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld42
_$FPOBSERVER$_Ld42:
	.short	0
	.long	_$FPOBSERVER$_Ld43
	.align 2
.globl	_$FPOBSERVER$_Ld43
_$FPOBSERVER$_Ld43:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TCOLUMNSLISTMEDIATOR
_INIT_FPOBSERVER_TCOLUMNSLISTMEDIATOR:
	.byte	15,20
	.ascii	"TColumnsListMediator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATORFIELDINFOLIST
_RTTI_FPOBSERVER_TMEDIATORFIELDINFOLIST:
	.byte	15,22
	.ascii	"TMediatorFieldInfoList"
	.long	_VMT_FPOBSERVER_TMEDIATORFIELDINFOLIST
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TCOLUMNSLISTMEDIATOR
_RTTI_FPOBSERVER_TCOLUMNSLISTMEDIATOR:
	.byte	15,20
	.ascii	"TColumnsListMediator"
	.long	_VMT_FPOBSERVER_TCOLUMNSLISTMEDIATOR
	.long	_RTTI_FPOBSERVER_TBASELISTMEDIATOR
	.short	9
	.byte	10
	.ascii	"fpobserver"
	.short	1
	.long	_RTTI_FPOBSERVER_TMEDIATORFIELDINFOLIST
	.long	112
	.long	_FPOBSERVER_TCOLUMNSLISTMEDIATOR_$__SETFIELDSINFO$TMEDIATORFIELDINFOLIST
	.long	1,0,-2147483648
	.short	8
	.byte	52,10
	.ascii	"FieldsInfo"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld45
_$FPOBSERVER$_Ld45:
	.short	0
	.long	_$FPOBSERVER$_Ld46
	.align 2
.globl	_$FPOBSERVER$_Ld46
_$FPOBSERVER$_Ld46:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATORFIELDINFOLIST
_INIT_FPOBSERVER_TMEDIATORFIELDINFOLIST:
	.byte	15,22
	.ascii	"TMediatorFieldInfoList"
	.long	4,0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld48
_$FPOBSERVER$_Ld48:
	.short	0
	.long	_$FPOBSERVER$_Ld49
	.align 2
.globl	_$FPOBSERVER$_Ld49
_$FPOBSERVER$_Ld49:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR
_INIT_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR:
	.byte	15,24
	.ascii	"TColumnsListItemMediator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR
_RTTI_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR:
	.byte	15,24
	.ascii	"TColumnsListItemMediator"
	.long	_VMT_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR
	.long	_RTTI_FPOBSERVER_TLISTITEMMEDIATOR
	.short	1
	.byte	10
	.ascii	"fpobserver"
	.short	1
	.long	_RTTI_FPOBSERVER_TMEDIATORFIELDINFOLIST
	.long	_FPOBSERVER_TCOLUMNSLISTITEMMEDIATOR_$__GETFIELDSINFO$$TMEDIATORFIELDINFOLIST
	.long	0,1,0,-2147483648
	.short	0
	.byte	61,10
	.ascii	"FieldsInfo"

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld51
_$FPOBSERVER$_Ld51:
	.short	0
	.long	_$FPOBSERVER$_Ld52
	.align 2
.globl	_$FPOBSERVER$_Ld52
_$FPOBSERVER$_Ld52:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATORDEF
_INIT_FPOBSERVER_TMEDIATORDEF:
	.byte	15,12
	.ascii	"TMediatorDef"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	32

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATORDEF
_RTTI_FPOBSERVER_TMEDIATORDEF:
	.byte	15,12
	.ascii	"TMediatorDef"
	.long	_VMT_FPOBSERVER_TMEDIATORDEF
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld54
_$FPOBSERVER$_Ld54:
	.short	0
	.long	_$FPOBSERVER$_Ld55
	.align 2
.globl	_$FPOBSERVER$_Ld55
_$FPOBSERVER$_Ld55:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATORDEFS
_INIT_FPOBSERVER_TMEDIATORDEFS:
	.byte	15,13
	.ascii	"TMediatorDefs"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATORDEFS
_RTTI_FPOBSERVER_TMEDIATORDEFS:
	.byte	15,13
	.ascii	"TMediatorDefs"
	.long	_VMT_FPOBSERVER_TMEDIATORDEFS
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld57
_$FPOBSERVER$_Ld57:
	.short	0
	.long	_$FPOBSERVER$_Ld58
	.align 2
.globl	_$FPOBSERVER$_Ld58
_$FPOBSERVER$_Ld58:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_TMEDIATORMANAGER
_INIT_FPOBSERVER_TMEDIATORMANAGER:
	.byte	15,16
	.ascii	"TMediatorManager"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_TMEDIATORMANAGER
_RTTI_FPOBSERVER_TMEDIATORMANAGER:
	.byte	15,16
	.ascii	"TMediatorManager"
	.long	_VMT_FPOBSERVER_TMEDIATORMANAGER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_$FPOBSERVER$_Ld60
_$FPOBSERVER$_Ld60:
	.short	0
	.long	_$FPOBSERVER$_Ld61
	.align 2
.globl	_$FPOBSERVER$_Ld61
_$FPOBSERVER$_Ld61:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_EMEDIATOR
_INIT_FPOBSERVER_EMEDIATOR:
	.byte	15,9
	.ascii	"EMediator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPOBSERVER_EMEDIATOR
_RTTI_FPOBSERVER_EMEDIATOR:
	.byte	15,9
	.ascii	"EMediator"
	.long	_VMT_FPOBSERVER_EMEDIATOR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	10
	.ascii	"fpobserver"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPOBSERVER_DEF228
_INIT_FPOBSERVER_DEF228:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
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
L_VMT_FPOBSERVER_TBASEMEDIATOR$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TBASEMEDIATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TCOMPONENT$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TCOMPONENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_EMEDIATOR$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_EMEDIATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPOBSERVER_MM$non_lazy_ptr:
.indirect_symbol _U_FPOBSERVER_MM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_TMEDIATORMANAGER$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TMEDIATORMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRNOTOBSERVER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRNOTOBSERVER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_EOBSERVER$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_EOBSERVER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRINVALIDPROPERTYNAME$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRINVALIDPROPERTYNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERROBJECTCANNOTBEOBSERVED$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERROBJECTCANNOTBEOBSERVED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_VARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSTEM_TOBJECT$non_lazy_ptr:
.indirect_symbol _VMT_SYSTEM_TOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_TMEDIATORDEF$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TMEDIATORDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_TMEDIATORDEFS$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TMEDIATORDEFS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPOBSERVER_ALIGNCHARS$non_lazy_ptr:
.indirect_symbol _TC_FPOBSERVER_ALIGNCHARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRINVALIDFIELDNAME$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRINVALIDFIELDNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRINVALIDALIGNMENTCHAR$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRINVALIDALIGNMENTCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRINVALIDWIDTHSPECIFIER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRINVALIDWIDTHSPECIFIER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_TMEDIATORFIELDINFO$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TMEDIATORFIELDINFO
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_TCOLUMNSLISTMEDIATOR$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TCOLUMNSLISTMEDIATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TOBJECTLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TOBJECTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TCOLLECTION$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TCOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRNOTLISTOBJECT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRNOTLISTOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPOBJECTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPOBSERVER_SERRACTIVE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPOBSERVER_SERRACTIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPOBSERVER_TMEDIATORFIELDINFOLIST$non_lazy_ptr:
.indirect_symbol _VMT_FPOBSERVER_TMEDIATORFIELDINFOLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPOBSERVER$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPOBSERVER$_Ld15
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_START
_RESSTR_FPOBSERVER_START:
	.long	_$FPOBSERVER$_Ld62
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRNOTOBSERVER
_RESSTR_FPOBSERVER_SERRNOTOBSERVER:
	.long	_$FPOBSERVER$_Ld66
	.long	_$FPOBSERVER$_Ld64
	.long	_$FPOBSERVER$_Ld64
	.long	172825342

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRINVALIDPROPERTYNAME
_RESSTR_FPOBSERVER_SERRINVALIDPROPERTYNAME:
	.long	_$FPOBSERVER$_Ld70
	.long	_$FPOBSERVER$_Ld68
	.long	_$FPOBSERVER$_Ld68
	.long	207402659

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERROBJECTCANNOTBEOBSERVED
_RESSTR_FPOBSERVER_SERROBJECTCANNOTBEOBSERVED:
	.long	_$FPOBSERVER$_Ld74
	.long	_$FPOBSERVER$_Ld72
	.long	_$FPOBSERVER$_Ld72
	.long	184106212

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRINVALIDFIELDNAME
_RESSTR_FPOBSERVER_SERRINVALIDFIELDNAME:
	.long	_$FPOBSERVER$_Ld78
	.long	_$FPOBSERVER$_Ld76
	.long	_$FPOBSERVER$_Ld76
	.long	254778308

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRINVALIDALIGNMENTCHAR
_RESSTR_FPOBSERVER_SERRINVALIDALIGNMENTCHAR:
	.long	_$FPOBSERVER$_Ld82
	.long	_$FPOBSERVER$_Ld80
	.long	_$FPOBSERVER$_Ld80
	.long	87571636

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRINVALIDWIDTHSPECIFIER
_RESSTR_FPOBSERVER_SERRINVALIDWIDTHSPECIFIER:
	.long	_$FPOBSERVER$_Ld86
	.long	_$FPOBSERVER$_Ld84
	.long	_$FPOBSERVER$_Ld84
	.long	58186180

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRNOTLISTOBJECT
_RESSTR_FPOBSERVER_SERRNOTLISTOBJECT:
	.long	_$FPOBSERVER$_Ld90
	.long	_$FPOBSERVER$_Ld88
	.long	_$FPOBSERVER$_Ld88
	.long	229333700

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRCOMPOSITENEEDSLIST
_RESSTR_FPOBSERVER_SERRCOMPOSITENEEDSLIST:
	.long	_$FPOBSERVER$_Ld94
	.long	_$FPOBSERVER$_Ld92
	.long	_$FPOBSERVER$_Ld92
	.long	197032707

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRACTIVE
_RESSTR_FPOBSERVER_SERRACTIVE:
	.long	_$FPOBSERVER$_Ld98
	.long	_$FPOBSERVER$_Ld96
	.long	_$FPOBSERVER$_Ld96
	.long	66744469

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRNOGUIFIELDNAME
_RESSTR_FPOBSERVER_SERRNOGUIFIELDNAME:
	.long	_$FPOBSERVER$_Ld102
	.long	_$FPOBSERVER$_Ld100
	.long	_$FPOBSERVER$_Ld100
	.long	195161780

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_SERRNOSUBJECTFIELDNAME
_RESSTR_FPOBSERVER_SERRNOSUBJECTFIELDNAME:
	.long	_$FPOBSERVER$_Ld106
	.long	_$FPOBSERVER$_Ld104
	.long	_$FPOBSERVER$_Ld104
	.long	211127844

.data
	.align 2
.globl	_RESSTR_FPOBSERVER_END
_RESSTR_FPOBSERVER_END:
	.long	_RESSTR_FPOBSERVER_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

