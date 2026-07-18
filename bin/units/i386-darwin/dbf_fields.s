# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF
_DBF_FIELDS_TDBFFIELDDEFS_$__GETITEM$LONGINT$$TDBFFIELDDEF:
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
.globl	_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS
_DBF_FIELDS_TDBFFIELDDEFS_$__CREATE$TPERSISTENT$$TDBFFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj12
Lj12:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj13
	jmp	Lj14
Lj13:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj19
	jmp	Lj20
Lj19:
	jmp	Lj11
Lj20:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj23
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj27
	movl	L_VMT_DBF_FIELDS_TDBFFIELDDEF$non_lazy_ptr-Lj12(%ebx),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
Lj27:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj28
	call	LFPC_RERAISE$stub
Lj28:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj40
	jmp	Lj39
Lj40:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj39
Lj38:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj39:
Lj23:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj44
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj45
	jmp	Lj46
Lj45:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj46:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj44:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj43
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj43:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj25
Lj25:
Lj11:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF
_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF:
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
.globl	_DBF_FIELDS_TDBFFIELDDEFS_$__GETOWNER$$TPERSISTENT
_DBF_FIELDS_TDBFFIELDDEFS_$__GETOWNER$$TPERSISTENT:
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
.globl	_DBF_FIELDS_TDBFFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$LONGINT$BOOLEAN
_DBF_FIELDS_TDBFFIELDDEFS_$__ADD$ANSISTRING$TFIELDTYPE$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEFS_$__ADDFIELDDEF$$TDBFFIELDDEF$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE$stub
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj73
	jmp	Lj74
Lj73:
	movl	12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT$stub
Lj74:
	movl	-16(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,88(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__CREATE$TCOLLECTION$$TDBFFIELDDEF
_DBF_FIELDS_TDBFFIELDDEF_$__CREATE$TCOLLECTION$$TDBFFIELDDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj83
	jmp	Lj84
Lj83:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj84:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	jmp	Lj90
Lj89:
	jmp	Lj81
Lj90:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj93
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj97
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM$stub
	movl	-12(%ebp),%eax
	movl	$0,48(%eax)
	movl	-12(%ebp),%eax
	movl	$0,52(%eax)
	movl	-12(%ebp),%eax
	movl	$0,56(%eax)
	movl	-12(%ebp),%eax
	movl	$0,72(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,76(%eax)
	movl	-12(%ebp),%eax
	movl	$0,64(%eax)
	movl	-12(%ebp),%eax
	movb	$0,68(%eax)
	movl	-12(%ebp),%eax
	movb	$0,69(%eax)
	movl	-12(%ebp),%eax
	movb	$0,70(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,92(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,40(%eax)
Lj97:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	call	LFPC_RERAISE$stub
Lj98:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj130
	jmp	Lj129
Lj130:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj128
	jmp	Lj129
Lj128:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj129:
Lj93:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj134
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj135
	jmp	Lj136
Lj135:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj136:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj134:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj133
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj133:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj95
Lj95:
Lj81:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__DESTROY
_DBF_FIELDS_TDBFFIELDDEF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj143
	jmp	Lj144
Lj143:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj144:
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__FREEBUFFERS$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTIONITEM_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj155
	jmp	Lj154
Lj155:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj153
	jmp	Lj154
Lj153:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj154:
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGN$TPERSISTENT
_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj159
Lj159:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_DBF_FIELDS_TDBFFIELDDEF$non_lazy_ptr-Lj159(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj160
	jmp	Lj161
Lj160:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edi
	movl	28(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	28(%edi),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	44(%eax),%al
	movb	%al,44(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,64(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	88(%eax),%al
	movb	%al,88(%edx)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	89(%eax),%al
	movb	%al,89(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	36(%eax),%al
	movb	%al,36(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,92(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS$stub
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj194
	jmp	Lj195
Lj194:
	movl	-8(%ebp),%eax
	movl	72(%eax),%ecx
	imull	$3,%ecx
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj195:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	68(%eax),%al
	movb	%al,68(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	69(%eax),%al
	movb	%al,69(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	70(%eax),%al
	movb	%al,70(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,80(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,84(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,24(%edx)
	jmp	Lj214
Lj161:
	movl	-4(%ebp),%edx
	movl	L_VMT_DB_TFIELDDEF$non_lazy_ptr-Lj159(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj215
	jmp	Lj216
Lj215:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNDB$TFIELDDEF$stub
	jmp	Lj225
Lj216:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub
Lj225:
Lj214:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNDB$TFIELDDEF
_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNDB$TFIELDDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	24(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%esi),%eax
	movl	%eax,28(%ebx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	subl	$7,%eax
	cmpl	$2,%eax
	jb	Lj238
Lj238:
	jnc	Lj236
	jmp	Lj237
Lj236:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,60(%edx)
Lj237:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,64(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	movb	%al,88(%edx)
	movl	-8(%ebp),%eax
	movb	$0,89(%eax)
	movl	-8(%ebp),%eax
	movb	$0,36(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__VCLTONATIVE$stub
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	je	Lj251
	jmp	Lj252
Lj251:
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE$stub
	jmp	Lj255
Lj252:
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION$stub
Lj255:
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS$stub
	movl	-8(%ebp),%eax
	movb	$0,68(%eax)
	movl	-8(%ebp),%eax
	movb	$0,69(%eax)
	movl	-8(%ebp),%eax
	movb	$0,70(%eax)
	movl	-8(%ebp),%eax
	movl	$0,80(%eax)
	movl	-8(%ebp),%eax
	movl	$0,84(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNTO$TPERSISTENT
_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNTO$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj273
Lj273:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_DB_TFIELDDEF$non_lazy_ptr-Lj273(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj274
	jmp	Lj275
Lj274:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj282
Lj275:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT$stub
Lj282:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION
_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movb	36(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE
_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__VCLTONATIVE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__SETNATIVEFIELDTYPE$CHAR
_DBF_FIELDS_TDBFFIELDDEF_$__SETNATIVEFIELDTYPE$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%al
	cmpb	$97,%al
	jae	Lj303
	jmp	Lj302
Lj303:
	movb	-4(%ebp),%al
	cmpb	$122,%al
	jbe	Lj301
	jmp	Lj302
Lj301:
	movzbl	-4(%ebp),%eax
	subl	$32,%eax
	movb	%al,-4(%ebp)
Lj302:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,44(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__NATIVETOVCL$stub
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT
_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,60(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT
_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,64(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__NATIVETOVCL
_DBF_FIELDS_TDBFFIELDDEF_$__NATIVETOVCL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj325
Lj325:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$43,%al
	jb	Lj327
	subb	$43,%al
	je	Lj328
	subb	$5,%al
	je	Lj340
	subb	$16,%al
	je	Lj331
	subb	$2,%al
	je	Lj337
	decb	%al
	je	Lj332
	decb	%al
	je	Lj335
	subb	$2,%al
	je	Lj334
	decb	%al
	je	Lj338
	subb	$2,%al
	je	Lj329
	subb	$3,%al
	je	Lj333
	decb	%al
	je	Lj336
	decb	%al
	je	Lj334
	decb	%al
	je	Lj330
	decb	%al
	je	Lj341
	decb	%al
	je	Lj344
	subb	$3,%al
	je	Lj331
	subb	$2,%al
	je	Lj342
	decb	%al
	je	Lj343
	subb	$2,%al
	je	Lj339
	subb	$56,%al
	je	Lj332
	jmp	Lj327
Lj328:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$6,%al
	je	Lj345
	jmp	Lj346
Lj345:
	movl	-4(%ebp),%eax
	movl	$14,32(%eax)
Lj346:
	jmp	Lj326
Lj329:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj351
	jmp	Lj352
Lj351:
	movl	-4(%ebp),%eax
	movl	$3,32(%eax)
	jmp	Lj355
Lj352:
	movl	-4(%ebp),%eax
	movl	$14,32(%eax)
Lj355:
	jmp	Lj326
Lj330:
	movl	-4(%ebp),%eax
	movl	$6,32(%eax)
	jmp	Lj326
Lj331:
	movl	-4(%ebp),%eax
	movl	$11,32(%eax)
	jmp	Lj326
Lj332:
	movl	-4(%ebp),%eax
	movl	$1,32(%eax)
	jmp	Lj326
Lj333:
	movl	-4(%ebp),%eax
	movl	$5,32(%eax)
	jmp	Lj326
Lj334:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj366
	jmp	Lj367
Lj366:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$4,%eax
	jle	Lj368
	jmp	Lj369
Lj368:
	movl	-4(%ebp),%eax
	movl	$2,32(%eax)
	jmp	Lj372
Lj369:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$9,%eax
	jle	Lj373
	jmp	Lj374
Lj373:
	movl	-4(%ebp),%eax
	movl	$3,32(%eax)
	jmp	Lj377
Lj374:
	movl	-4(%ebp),%eax
	movl	$25,32(%eax)
Lj377:
Lj372:
	jmp	Lj380
Lj367:
	movl	-4(%ebp),%eax
	movl	$6,32(%eax)
Lj380:
	jmp	Lj326
Lj335:
	movl	-4(%ebp),%eax
	movl	$9,32(%eax)
	jmp	Lj326
Lj336:
	movl	-4(%ebp),%eax
	movl	$16,32(%eax)
	jmp	Lj326
Lj337:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$5,%al
	je	Lj387
	jmp	Lj389
Lj389:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj387
	jmp	Lj388
Lj387:
	movl	-4(%ebp),%eax
	movl	$6,32(%eax)
	jmp	Lj396
Lj388:
	movl	-4(%ebp),%eax
	movl	$15,32(%eax)
Lj396:
	jmp	Lj326
Lj338:
	movl	-4(%ebp),%eax
	movl	$20,32(%eax)
	jmp	Lj326
Lj339:
	movl	L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr-Lj325(%ebx),%eax
	movl	(%eax),%eax
	cmpb	$0,8(%eax)
	jne	Lj401
	jmp	Lj402
Lj401:
	movl	-4(%ebp),%eax
	movl	$8,32(%eax)
	jmp	Lj405
Lj402:
	movl	-4(%ebp),%eax
	movl	$7,32(%eax)
Lj405:
	jmp	Lj326
Lj340:
	movl	-4(%ebp),%eax
	movl	$12,32(%eax)
	jmp	Lj326
Lj341:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	movzbl	%al,%eax
	cmpl	$5,%eax
	je	Lj414
	cmpl	$7,%eax
	je	Lj414
Lj414:
	je	Lj410
	jmp	Lj411
Lj410:
	movl	-4(%ebp),%eax
	movl	$15,32(%eax)
Lj411:
	jmp	Lj326
Lj342:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj417
	jmp	Lj418
Lj417:
	movl	-4(%ebp),%eax
	movl	$1,32(%eax)
Lj418:
	jmp	Lj326
Lj343:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj423
	jmp	Lj424
Lj423:
	movl	-4(%ebp),%eax
	movl	$15,32(%eax)
Lj424:
	jmp	Lj326
Lj344:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj429
	jmp	Lj430
Lj429:
	movl	-4(%ebp),%eax
	movl	$13,32(%eax)
Lj430:
	jmp	Lj326
Lj327:
	movl	-4(%ebp),%eax
	movb	$0,44(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
Lj326:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__VCLTONATIVE
_DBF_FIELDS_TDBFFIELDDEF_$__VCLTONATIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj440
Lj440:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj441
	movl	-4(%ebp),%eax
	movb	$0,44(%eax)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$1,%eax
	jb	Lj447
	decl	%eax
	je	Lj450
	decl	%eax
	je	Lj452
	decl	%eax
	je	Lj459
	decl	%eax
	je	Lj452
	decl	%eax
	je	Lj451
	decl	%eax
	je	Lj452
	decl	%eax
	jb	Lj447
	subl	$1,%eax
	jbe	Lj460
	decl	%eax
	je	Lj453
	subl	$2,%eax
	je	Lj449
	subl	$2,%eax
	je	Lj456
	decl	%eax
	je	Lj448
	decl	%eax
	je	Lj455
	decl	%eax
	je	Lj454
	decl	%eax
	je	Lj458
	subl	$3,%eax
	je	Lj457
	subl	$3,%eax
	jb	Lj447
	subl	$1,%eax
	jbe	Lj450
	decl	%eax
	je	Lj452
	jmp	Lj447
Lj448:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj461
	jmp	Lj462
Lj461:
	movl	-4(%ebp),%eax
	movb	$73,44(%eax)
	jmp	Lj467
Lj462:
	movl	-4(%ebp),%eax
	movb	$43,44(%eax)
Lj467:
	jmp	Lj446
Lj449:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$6,%al
	je	Lj470
	jmp	Lj471
Lj470:
	movl	-4(%ebp),%eax
	movb	$64,44(%eax)
	jmp	Lj476
Lj471:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$5,%al
	je	Lj477
	jmp	Lj479
Lj479:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj477
	jmp	Lj478
Lj477:
	movl	-4(%ebp),%eax
	movb	$84,44(%eax)
	jmp	Lj486
Lj478:
	movl	-4(%ebp),%eax
	movb	$68,44(%eax)
Lj486:
Lj476:
	jmp	Lj446
Lj450:
	movl	-4(%ebp),%eax
	movb	$67,44(%eax)
	jmp	Lj446
Lj451:
	movl	-4(%ebp),%eax
	movb	$76,44(%eax)
	jmp	Lj446
Lj452:
	movl	-4(%ebp),%eax
	movb	$78,44(%eax)
	jmp	Lj446
Lj453:
	movl	-4(%ebp),%eax
	movb	$68,44(%eax)
	jmp	Lj446
Lj454:
	movl	-4(%ebp),%eax
	movb	$77,44(%eax)
	jmp	Lj446
Lj455:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$2,%al
	jb	Lj500
	subb	$2,%al
	subb	$1,%al
	jbe	Lj503
	decb	%al
	je	Lj504
	decb	%al
	je	Lj501
	decb	%al
	je	Lj504
	decb	%al
	je	Lj502
	jmp	Lj500
Lj501:
	movl	-4(%ebp),%eax
	movb	$80,44(%eax)
	jmp	Lj499
Lj502:
	movl	-4(%ebp),%eax
	movb	$87,44(%eax)
	jmp	Lj499
Lj503:
	movl	-4(%ebp),%eax
	movb	$77,44(%eax)
	jmp	Lj499
Lj504:
	movl	-4(%ebp),%eax
	movb	$66,44(%eax)
	jmp	Lj499
Lj500:
	movl	-4(%ebp),%eax
	movb	$77,44(%eax)
Lj499:
	jmp	Lj446
Lj456:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	jb	Lj518
	subb	$7,%al
	je	Lj519
	jmp	Lj518
Lj519:
	movl	-4(%ebp),%eax
	movb	$81,44(%eax)
	jmp	Lj517
Lj518:
Lj517:
	jmp	Lj446
Lj457:
	movl	-4(%ebp),%eax
	movb	$71,44(%eax)
	jmp	Lj446
Lj458:
	movl	-4(%ebp),%eax
	movb	$66,44(%eax)
	jmp	Lj446
Lj459:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	movzbl	%al,%eax
	subl	$6,%eax
	cmpl	$2,%eax
	jb	Lj532
Lj532:
	jc	Lj528
	jmp	Lj529
Lj528:
	movl	-4(%ebp),%eax
	movb	$73,44(%eax)
	jmp	Lj535
Lj529:
	movl	-4(%ebp),%eax
	movb	$78,44(%eax)
Lj535:
	jmp	Lj446
Lj460:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$5,%al
	je	Lj538
	jmp	Lj540
Lj540:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj538
	jmp	Lj539
Lj538:
	movl	-4(%ebp),%eax
	movb	$89,44(%eax)
Lj539:
	jmp	Lj446
Lj447:
Lj446:
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj547
	jmp	Lj548
Lj547:
	movl	$1,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	$0,-52(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr-Lj440(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj440(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj440(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj548:
Lj441:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj442
	call	LFPC_RERAISE$stub
Lj442:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE
_DBF_FIELDS_TDBFFIELDDEF_$__SETDEFAULTSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$1,%eax
	jb	Lj566
	decl	%eax
	je	Lj573
	decl	%eax
	je	Lj569
	decl	%eax
	je	Lj571
	decl	%eax
	je	Lj570
	subl	$2,%eax
	je	Lj567
	decl	%eax
	jb	Lj566
	subl	$1,%eax
	jbe	Lj568
	subl	$6,%eax
	je	Lj571
	subl	$9,%eax
	jb	Lj566
	subl	$1,%eax
	jbe	Lj573
	decl	%eax
	je	Lj572
	jmp	Lj566
Lj567:
	movl	-4(%ebp),%eax
	movl	$18,60(%eax)
	movl	-4(%ebp),%eax
	movl	$8,64(%eax)
	jmp	Lj565
Lj568:
	movl	-4(%ebp),%eax
	movl	$8,60(%eax)
	movl	-4(%ebp),%eax
	movl	$4,64(%eax)
	jmp	Lj565
Lj569:
	movl	-4(%ebp),%eax
	movl	$4,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj565
Lj570:
	movl	-4(%ebp),%eax
	movl	$5,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj565
Lj571:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	movzbl	%al,%eax
	subl	$6,%eax
	cmpl	$2,%eax
	jb	Lj594
Lj594:
	jc	Lj590
	jmp	Lj591
Lj590:
	movl	-4(%ebp),%eax
	movl	$4,60(%eax)
	jmp	Lj597
Lj591:
	movl	-4(%ebp),%eax
	movl	$9,60(%eax)
Lj597:
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj565
Lj572:
	movl	-4(%ebp),%eax
	movl	$18,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj565
Lj573:
	movl	-4(%ebp),%eax
	movl	$30,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj565
Lj566:
Lj565:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION
_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	cmpb	$43,%al
	jb	Lj615
	subb	$43,%al
	je	Lj622
	subb	$21,%al
	je	Lj623
	subb	$2,%al
	je	Lj620
	decb	%al
	je	Lj616
	decb	%al
	je	Lj619
	subb	$2,%al
	je	Lj618
	decb	%al
	je	Lj621
	subb	$2,%al
	je	Lj622
	subb	$3,%al
	je	Lj617
	decb	%al
	je	Lj621
	decb	%al
	je	Lj618
	decb	%al
	je	Lj623
	decb	%al
	je	Lj621
	decb	%al
	je	Lj616
	subb	$3,%al
	je	Lj624
	subb	$2,%al
	je	Lj616
	decb	%al
	je	Lj621
	subb	$2,%al
	je	Lj625
	jmp	Lj615
Lj616:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$0,%eax
	jl	Lj626
	jmp	Lj627
Lj626:
	movl	-4(%ebp),%eax
	movl	$0,60(%eax)
Lj627:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$5,%al
	je	Lj630
	jmp	Lj632
Lj632:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj630
	jmp	Lj631
Lj630:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$65535,%eax
	jge	Lj637
	jmp	Lj638
Lj637:
	movl	-4(%ebp),%eax
	movl	$65535,60(%eax)
Lj638:
	jmp	Lj641
Lj631:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$255,%eax
	jge	Lj642
	jmp	Lj643
Lj642:
	movl	-4(%ebp),%eax
	movl	$255,60(%eax)
Lj643:
Lj641:
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj617:
	movl	-4(%ebp),%eax
	movl	$1,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj618:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$1,%eax
	jl	Lj652
	jmp	Lj653
Lj652:
	movl	-4(%ebp),%eax
	movl	$1,60(%eax)
Lj653:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$20,%eax
	jge	Lj656
	jmp	Lj657
Lj656:
	movl	-4(%ebp),%eax
	movl	$20,60(%eax)
Lj657:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	subl	$2,%eax
	movl	-4(%ebp),%edx
	cmpl	64(%edx),%eax
	jl	Lj660
	jmp	Lj661
Lj660:
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	subl	$2,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
Lj661:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	cmpl	$0,%eax
	jl	Lj664
	jmp	Lj665
Lj664:
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
Lj665:
	jmp	Lj614
Lj619:
	movl	-4(%ebp),%eax
	movl	$8,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj620:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	movzbl	%al,%eax
	cmpl	$5,%eax
	je	Lj676
	cmpl	$7,%eax
	je	Lj676
Lj676:
	jne	Lj672
	jmp	Lj673
Lj672:
	movl	-4(%ebp),%eax
	movl	$10,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj681
Lj673:
	movl	-4(%ebp),%eax
	movl	$8,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
Lj681:
	jmp	Lj614
Lj621:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj686
	jmp	Lj687
Lj686:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$4,%eax
	jne	Lj692
	jmp	Lj691
Lj692:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$10,%eax
	jne	Lj690
	jmp	Lj691
Lj690:
	movl	-4(%ebp),%eax
	movl	$4,60(%eax)
Lj691:
	jmp	Lj695
Lj687:
	movl	-4(%ebp),%eax
	movl	$10,60(%eax)
Lj695:
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj622:
	movl	-4(%ebp),%eax
	movl	$4,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj623:
	movl	-4(%ebp),%eax
	movl	$8,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj624:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$5,%al
	je	Lj708
	jmp	Lj710
Lj710:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	cmpb	$7,%al
	je	Lj708
	jmp	Lj709
Lj708:
	movl	-4(%ebp),%eax
	movl	$8,60(%eax)
	jmp	Lj717
Lj709:
	movl	-4(%ebp),%eax
	movl	$14,60(%eax)
Lj717:
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	jmp	Lj614
Lj625:
	movl	-4(%ebp),%eax
	movl	$8,60(%eax)
	movl	-4(%ebp),%eax
	movl	$4,64(%eax)
	jmp	Lj614
Lj615:
Lj614:
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__GETDISPLAYNAME$$ANSISTRING
_DBF_FIELDS_TDBFFIELDDEF_$__GETDISPLAYNAME$$ANSISTRING:
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
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN
_DBF_FIELDS_TDBFFIELDDEF_$__ISBLOB$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub
	movzbl	%al,%eax
	cmpl	$5,%eax
	je	Lj736
	cmpl	$7,%eax
	je	Lj736
Lj736:
	je	Lj732
	jmp	Lj733
Lj732:
	movl	-4(%ebp),%eax
	movzbl	44(%eax),%eax
	cmpl	$71,%eax
	je	Lj739
	cmpl	$77,%eax
	je	Lj739
	cmpl	$87,%eax
	je	Lj739
Lj739:
	seteb	-5(%ebp)
	jmp	Lj740
Lj733:
	movl	-4(%ebp),%eax
	movzbl	44(%eax),%eax
	cmpl	$66,%eax
	je	Lj743
	cmpl	$71,%eax
	je	Lj743
	cmpl	$77,%eax
	je	Lj743
Lj743:
	seteb	-5(%ebp)
Lj740:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__FREEBUFFERS
_DBF_FIELDS_TDBFFIELDDEF_$__FREEBUFFERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj746
	jmp	Lj747
Lj746:
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	movl	-4(%ebp),%eax
	movl	$0,52(%eax)
	movl	-4(%ebp),%eax
	movl	$0,56(%eax)
Lj747:
	movl	-4(%ebp),%eax
	movl	$0,72(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS
_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	72(%eax),%eax
	cmpl	60(%edx),%eax
	jne	Lj758
	jmp	Lj759
Lj758:
	movl	-4(%ebp),%eax
	call	L_DBF_FIELDS_TDBFFIELDDEF_$__FREEBUFFERS$stub
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	imull	$3,%edx
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	48(%eax),%ecx
	movl	60(%edx),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,52(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	52(%eax),%ecx
	movl	60(%edx),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,56(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,72(%edx)
Lj759:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_FIELDS$_Ld1
_$DBF_FIELDS$_Ld1:
	.byte	12
	.ascii	"TDbfFieldDef"

.const_data
	.align 2
.globl	_VMT_DBF_FIELDS_TDBFFIELDDEF
_VMT_DBF_FIELDS_TDBFFIELDDEF:
	.long	96,-96
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$DBF_FIELDS$_Ld1
	.long	0,0
	.long	_$DBF_FIELDS$_Ld2
	.long	_RTTI_DBF_FIELDS_TDBFFIELDDEF
	.long	_INIT_DBF_FIELDS_TDBFFIELDDEF
	.long	0,0,0
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__DESTROY
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
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__CREATE$TCOLLECTION$$TDBFFIELDDEF
	.long	0

.const_data
	.align 2
.globl	_$DBF_FIELDS$_Ld4
_$DBF_FIELDS$_Ld4:
	.byte	13
	.ascii	"TDbfFieldDefs"

.const_data
	.align 2
.globl	_VMT_DBF_FIELDS_TDBFFIELDDEFS
_VMT_DBF_FIELDS_TDBFFIELDDEFS:
	.long	40,-40
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$DBF_FIELDS$_Ld4
	.long	0,0
	.long	_$DBF_FIELDS$_Ld5
	.long	_RTTI_DBF_FIELDS_TDBFFIELDDEFS
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
	.long	_DBF_FIELDS_TDBFFIELDDEFS_$__GETOWNER$$TPERSISTENT
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

.data
	.align 2
.globl	_THREADVARLIST_DBF_FIELDS
_THREADVARLIST_DBF_FIELDS:
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

L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
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

L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
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

L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
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

L_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__FREEBUFFERS$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__FREEBUFFERS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTIONITEM_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__DESTROY
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

L_CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__GETINDEX$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__ALLOCBUFFERS
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

L_DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNDB$TFIELDDEF$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__ASSIGNDB$TFIELDDEF
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

L_DBF_FIELDS_TDBFFIELDDEF_$__VCLTONATIVE$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__VCLTONATIVE
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

L_DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__CHECKSIZEPRECISION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__NATIVETOVCL$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__NATIVETOVCL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION$stub:
.indirect_symbol _DBF_FIELDS_TDBFFIELDDEF_$__GETDBFVERSION$$TXBASEVERSION
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

L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub:
.indirect_symbol _DBF_COMMON_FREEMEMANDNIL$POINTER
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_DBF_FIELDS_PDBFFIELDDEF
_INIT_DBF_FIELDS_PDBFFIELDDEF:
	.byte	0
	.ascii	"\014PDbfFieldDef"

.const_data
	.align 2
.globl	_RTTI_DBF_FIELDS_PDBFFIELDDEF
_RTTI_DBF_FIELDS_PDBFFIELDDEF:
	.byte	0
	.ascii	"\014PDbfFieldDef"

.const_data
	.align 2
.globl	_INIT_DBF_FIELDS_DEF133
_INIT_DBF_FIELDS_DEF133:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF_FIELDS$_Ld2
_$DBF_FIELDS$_Ld2:
	.short	0
	.long	_$DBF_FIELDS$_Ld3
	.align 2
.globl	_$DBF_FIELDS$_Ld3
_$DBF_FIELDS$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_FIELDS_TDBFFIELDDEF
_INIT_DBF_FIELDS_TDBFFIELDDEF:
	.byte	15,12
	.ascii	"TDbfFieldDef"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	28

.const_data
	.align 2
.globl	_RTTI_DBF_FIELDS_TDBFFIELDDEF
_RTTI_DBF_FIELDS_TDBFFIELDDEF:
	.byte	15,12
	.ascii	"TDbfFieldDef"
	.long	_VMT_DBF_FIELDS_TDBFFIELDDEF
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	8
	.byte	10
	.ascii	"dbf_fields"
	.short	8
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	28,28,1,0,-2147483648
	.short	0
	.byte	48,9
	.ascii	"FieldName"
	.long	_RTTI_DB_TFIELDTYPE
	.long	32
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__SETFIELDTYPE$TFIELDTYPE
	.long	1,0,-2147483648
	.short	1
	.byte	52,9
	.ascii	"FieldType"
	.long	_RTTI_SYSTEM_LONGINT
	.long	40,40,1,0,-2147483648
	.short	2
	.byte	48,17
	.ascii	"VarLengthPosition"
	.long	_RTTI_SYSTEM_CHAR
	.long	44
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__SETNATIVEFIELDTYPE$CHAR
	.long	1,0,-2147483648
	.short	3
	.byte	52,15
	.ascii	"NativeFieldType"
	.long	_RTTI_SYSTEM_LONGINT
	.long	60
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__SETSIZE$LONGINT
	.long	1,0,-2147483648
	.short	4
	.byte	52,4
	.ascii	"Size"
	.long	_RTTI_SYSTEM_LONGINT
	.long	92,92,1,0,-2147483648
	.short	5
	.byte	48,12
	.ascii	"NullPosition"
	.long	_RTTI_SYSTEM_LONGINT
	.long	64
	.long	_DBF_FIELDS_TDBFFIELDDEF_$__SETPRECISION$LONGINT
	.long	1,0,-2147483648
	.short	6
	.byte	52,9
	.ascii	"Precision"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	88,88,1,0,-2147483648
	.short	7
	.byte	48,8
	.ascii	"Required"

.const_data
	.align 2
.globl	_$DBF_FIELDS$_Ld5
_$DBF_FIELDS$_Ld5:
	.short	0
	.long	_$DBF_FIELDS$_Ld6
	.align 2
.globl	_$DBF_FIELDS$_Ld6
_$DBF_FIELDS$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_FIELDS_TDBFFIELDDEFS
_INIT_DBF_FIELDS_TDBFFIELDDEFS:
	.byte	15,13
	.ascii	"TDbfFieldDefs"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_FIELDS_TDBFFIELDDEFS
_RTTI_DBF_FIELDS_TDBFFIELDDEFS:
	.byte	15,13
	.ascii	"TDbfFieldDefs"
	.long	_VMT_DBF_FIELDS_TDBFFIELDDEFS
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	10
	.ascii	"dbf_fields"
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
L_VMT_DBF_FIELDS_TDBFFIELDDEF$non_lazy_ptr:
.indirect_symbol _VMT_DBF_FIELDS_TDBFFIELDDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_TFIELDDEF$non_lazy_ptr:
.indirect_symbol _VMT_DB_TFIELDDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_DBFFILE_DBFGLOBALS$non_lazy_ptr:
.indirect_symbol _U_DBF_DBFFILE_DBFGLOBALS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_INVALID_VCL_FIELD_TYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFERROR
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

