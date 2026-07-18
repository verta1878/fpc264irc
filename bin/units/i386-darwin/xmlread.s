# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_XMLREAD_REGISTERDECODER$TGETDECODERPROC
_XMLREAD_REGISTERDECODER$TGETDECODERPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_U_XMLREAD_DECODERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLREAD_DEF224$non_lazy_ptr-Lj4(%ebx),%edx
	movl	L_U_XMLREAD_DECODERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_U_XMLREAD_DECODERS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_FINDDECODER$ANSISTRING$TDECODER$$BOOLEAN
_XMLREAD_FINDDECODER$ANSISTRING$TDECODER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj22
Lj22:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	L_U_XMLREAD_DECODERS$non_lazy_ptr-Lj22(%esi),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj26
	decl	-16(%ebp)
	.align 2
Lj27:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_U_XMLREAD_DECODERS$non_lazy_ptr-Lj22(%esi),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	*%eax
	testb	%al,%al
	jne	Lj30
	jmp	Lj31
Lj30:
	movb	$1,-9(%ebp)
	jmp	Lj21
Lj31:
	cmpl	-16(%ebp),%ebx
	jg	Lj27
Lj26:
Lj21:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_IS_8859_1$ANSISTRING$$BOOLEAN
_XMLREAD_IS_8859_1$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj39
Lj39:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld1$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj49
Lj49:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld3$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj48
Lj48:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld5$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj47
Lj47:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld7$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj46
Lj46:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld9$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj45
Lj45:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld11$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj44
Lj44:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld13$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj43
Lj43:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld15$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj42
Lj42:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld17$non_lazy_ptr-Lj39(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj40
	jmp	Lj41
Lj40:
	movb	$1,-5(%ebp)
	jmp	Lj86
Lj41:
	movb	$0,-5(%ebp)
Lj86:
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSEOPTIONS_$__GETCANONICAL$$BOOLEAN
_XMLREAD_TDOMPARSEOPTIONS_$__GETCANONICAL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj94
	jmp	Lj90
Lj94:
	movl	-4(%ebp),%eax
	cmpb	$0,6(%eax)
	jne	Lj93
	jmp	Lj90
Lj93:
	movl	-4(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj92
	jmp	Lj90
Lj92:
	movl	-4(%ebp),%eax
	cmpb	$0,10(%eax)
	jne	Lj91
	jmp	Lj90
Lj91:
	movl	-4(%ebp),%eax
	cmpb	$0,5(%eax)
	jne	Lj89
	jmp	Lj90
Lj89:
	movb	$1,-5(%ebp)
	jmp	Lj95
Lj90:
	movb	$0,-5(%ebp)
Lj95:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSEOPTIONS_$__SETCANONICAL$BOOLEAN
_XMLREAD_TDOMPARSEOPTIONS_$__SETCANONICAL$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,12(%eax)
	cmpb	$0,-4(%ebp)
	jne	Lj100
	jmp	Lj101
Lj100:
	movl	-8(%ebp),%eax
	movb	$1,6(%eax)
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	movl	-8(%ebp),%eax
	movb	$1,10(%eax)
	movl	-8(%ebp),%eax
	movb	$1,5(%eax)
Lj101:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLINPUTSOURCE_$__CREATE$TSTREAM$$TXMLINPUTSOURCE
_XMLREAD_TXMLINPUTSOURCE_$__CREATE$TSTREAM$$TXMLINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj112
	jmp	Lj113
Lj112:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj113:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj118
	jmp	Lj119
Lj118:
	jmp	Lj110
Lj119:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj122
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj126
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj126:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj127
	call	LFPC_RERAISE$stub
Lj127:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj137
	jmp	Lj136
Lj137:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj135
	jmp	Lj136
Lj135:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj136:
Lj122:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj124
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj141
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj142
	jmp	Lj143
Lj142:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj143:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj141:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj140
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj140:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj124
Lj124:
Lj110:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLINPUTSOURCE_$__CREATE$ANSISTRING$$TXMLINPUTSOURCE
_XMLREAD_TXMLINPUTSOURCE_$__CREATE$ANSISTRING$$TXMLINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj150
	jmp	Lj151
Lj150:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj151:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj156
	jmp	Lj157
Lj156:
	jmp	Lj148
Lj157:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj160
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj164
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%ebx)
Lj164:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj165
	call	LFPC_RERAISE$stub
Lj165:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj175
	jmp	Lj174
Lj175:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj173
	jmp	Lj174
Lj173:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj174:
Lj160:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj162
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj179
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj180
	jmp	Lj181
Lj180:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj181:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj179:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj178
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj178:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj162
Lj162:
Lj148:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSER_$__CREATE$$TDOMPARSER
_XMLREAD_TDOMPARSER_$__CREATE$$TDOMPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj187
Lj187:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj188
	jmp	Lj189
Lj188:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj189:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj194
	jmp	Lj195
Lj194:
	jmp	Lj186
Lj195:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj198
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj202
	movl	L_VMT_XMLREAD_TDOMPARSEOPTIONS$non_lazy_ptr-Lj187(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj202:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj203
	call	LFPC_RERAISE$stub
Lj203:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj213
	jmp	Lj212
Lj213:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj211
	jmp	Lj212
Lj211:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj212:
Lj198:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj200
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj217
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj218
	jmp	Lj219
Lj218:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj219:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj217:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj216
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj216:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj200
Lj200:
Lj186:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSER_$__DESTROY
_XMLREAD_TDOMPARSER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj226
	jmp	Lj227
Lj226:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj227:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj238
	jmp	Lj237
Lj238:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj236
	jmp	Lj237
Lj236:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj237:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSER_$__PARSE$TXMLINPUTSOURCE$TXMLDOCUMENT
_XMLREAD_TDOMPARSER_$__PARSE$TXMLINPUTSOURCE$TXMLDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj242
Lj242:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj242(%edi),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj253
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONVERTSOURCE$TXMLINPUTSOURCE$TXMLCHARSOURCE$stub
	movl	-16(%ebp),%edx
	movl	%esi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE$stub
Lj253:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	216(%esi),%edx
	movl	%edx,(%eax)
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj254
	decl	%eax
	testl	%eax,%eax
	je	Lj255
Lj255:
	call	LFPC_RERAISE$stub
Lj254:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSER_$__PARSEURI$WIDESTRING$TXMLDOCUMENT
_XMLREAD_TDOMPARSER_$__PARSEURI$WIDESTRING$TXMLDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj272
Lj272:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj272(%edi),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj285
	movl	$0,4(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	$0,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj289
	jmp	Lj290
Lj289:
	movl	-16(%ebp),%edx
	movl	%esi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE$stub
	jmp	Lj305
Lj290:
	movl	L_TC_XMLREAD_NULLLOCATION$non_lazy_ptr-Lj272(%edi),%eax
	movl	%eax,(%esp)
	movl	%esi,%eax
	movl	L_$XMLREAD$_Ld19$non_lazy_ptr-Lj272(%edi),%edx
	movl	%edx,%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj305:
Lj285:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movl	216(%esi),%edx
	movl	%edx,(%eax)
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj286
	decl	%eax
	testl	%eax,%eax
	je	Lj287
Lj287:
	call	LFPC_RERAISE$stub
Lj286:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TDOMPARSER_$__PARSEWITHCONTEXT$TXMLINPUTSOURCE$TDOMNODE$TXMLCONTEXTACTION$$TDOMNODE
_XMLREAD_TDOMPARSER_$__PARSEWITHCONTEXT$TXMLINPUTSOURCE$TDOMNODE$TXMLCONTEXTACTION$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj319
Lj319:
	popl	-112(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	subl	$3,%eax
	cmpl	$3,%eax
	jb	Lj322
Lj322:
	jc	Lj320
	jmp	Lj321
Lj320:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-28(%ebp)
	jmp	Lj327
Lj321:
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj327:
	movl	8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj332
	jmp	Lj331
Lj332:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$9,%eax
	je	Lj330
	jmp	Lj331
Lj330:
	movl	-112(%ebp),%eax
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj319(%eax),%edx
	movl	-112(%ebp),%eax
	movl	L_$XMLREAD$_Ld21$non_lazy_ptr-Lj319(%eax),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La1:
	movl	%ebp,%ecx
	movl	-112(%ebp),%ebx
	leal	La1-Lj319(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj331:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj345
	cmpl	$11,%eax
	je	Lj345
Lj345:
	jne	Lj341
	jmp	Lj342
Lj341:
	movl	-112(%ebp),%eax
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj319(%eax),%edx
	movl	-112(%ebp),%eax
	movl	L_$XMLREAD$_Ld21$non_lazy_ptr-Lj319(%eax),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La2:
	movl	%ebp,%ecx
	movl	-112(%ebp),%ebx
	leal	La2-Lj319(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj342:
	movl	-12(%ebp),%ecx
	movl	-112(%ebp),%eax
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj319(%eax),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER$stub
	movl	%eax,%esi
	movl	%esi,%edi
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj362
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONVERTSOURCE$TXMLINPUTSOURCE$TXMLCHARSOURCE$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATEDOCUMENTFRAGMENT$$TDOMDOCUMENTFRAGMENT$stub
	movl	%eax,-24(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj380
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%edi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE$stub
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	je	Lj396
	decl	%eax
	je	Lj397
	decl	%eax
	je	Lj398
	decl	%eax
	je	Lj399
	decl	%eax
	je	Lj400
	jmp	Lj395
Lj396:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
	jmp	Lj394
Lj397:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	jmp	Lj394
Lj398:
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	jmp	Lj394
Lj399:
	movl	-8(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	jmp	Lj394
Lj400:
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	jmp	Lj394
Lj395:
Lj394:
Lj380:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj381
	decl	%eax
	testl	%eax,%eax
	je	Lj382
Lj382:
	call	LFPC_RERAISE$stub
Lj381:
Lj362:
	call	LFPC_POPADDRSTACK$stub
	movl	%edi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj363
	decl	%eax
	testl	%eax,%eax
	je	Lj364
Lj364:
	call	LFPC_RERAISE$stub
Lj363:
	movl	-16(%ebp),%eax
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__CREATE$WIDESTRING$$TXMLCHARSOURCE
_XMLREAD_TXMLCHARSOURCE_$__CREATE$WIDESTRING$$TXMLCHARSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj440
Lj440:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj441
	jmp	Lj442
Lj441:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj442:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj447
	jmp	Lj448
Lj447:
	jmp	Lj439
Lj448:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj451
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj455
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%eax
	movl	$1,24(%eax)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj466
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj440(%ebx),%edx
	movl	%edx,%eax
Lj466:
	movl	%eax,4(%ecx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj469
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj469:
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	subl	$2,%edx
	movl	-12(%ebp),%eax
	movl	%edx,28(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj474
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj474:
	movl	%eax,40(%edx)
Lj455:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj456
	call	LFPC_RERAISE$stub
Lj456:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj477
	jmp	Lj476
Lj477:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj475
	jmp	Lj476
Lj475:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj476:
Lj451:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj453
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj481
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj482
	jmp	Lj483
Lj482:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj483:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj481:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj480
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj480:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj453
Lj453:
Lj439:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__INITIALIZE
_XMLREAD_TXMLCHARSOURCE_$__INITIALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN
_XMLREAD_TXMLCHARSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING
_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj496
	jmp	Lj497
Lj496:
	movl	-4(%ebp),%esi
	movl	36(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	36(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj500
Lj497:
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj501
	jmp	Lj502
Lj501:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING$stub
	jmp	Lj507
Lj502:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj507:
Lj500:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__RELOAD$$BOOLEAN
_XMLREAD_TXMLCHARSOURCE_$__RELOAD$$BOOLEAN:
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
.globl	_XMLREAD_TXMLCHARSOURCE_$__NEWLINE
_XMLREAD_TXMLCHARSOURCE_$__NEWLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	24(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,28(%edx)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR
_XMLREAD_TXMLCHARSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	$0,-21(%ebp)
	.align 2
Lj524:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$10,%ax
	je	Lj527
	jmp	Lj528
Lj527:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj528:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$255,%ax
	jb	Lj533
	jmp	Lj532
Lj533:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jc	Lj531
	jmp	Lj532
Lj531:
	jmp	Lj526
Lj532:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$32,%ax
	ja	Lj534
	jmp	Lj536
Lj536:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj537
	cmpl	$4,%eax
	stc
	je	Lj537
	cmpl	$23,%eax
	stc
	je	Lj537
	clc
Lj537:
	jnc	Lj534
	jmp	Lj535
Lj534:
	movb	$1,-21(%ebp)
Lj535:
	movl	-12(%ebp),%eax
	addl	$2,4(%eax)
	jmp	Lj524
Lj526:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub
	cmpl	$0,8(%ebp)
	jne	Lj548
	jmp	Lj549
Lj548:
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	cmpb	$0,(%edx)
	jne	Lj550
	jmp	Lj552
Lj552:
	cmpb	$0,-21(%ebp)
	jne	Lj550
	jmp	Lj551
Lj550:
	movb	$1,(%eax)
	jmp	Lj553
Lj551:
	movb	$0,(%eax)
Lj553:
Lj549:
	movw	-14(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN
_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj561
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj561:
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jbe	Lj558
	jmp	Lj560
Lj560:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj558
	jmp	Lj559
Lj558:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj568
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj568:
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj559:
	cmpb	$0,-9(%ebp)
	jne	Lj573
	jmp	Lj574
Lj573:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj575
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj575:
	movl	-8(%ebp),%edx
	shll	$1,%eax
	addl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	jae	Lj576
	jmp	Lj577
Lj576:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
Lj577:
Lj574:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__AFTERCONSTRUCTION
_XMLREAD_TXMLDECODINGSOURCE_$__AFTERCONSTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION$stub
	movl	$4096,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,68(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	subl	$2,%edx
	movl	-4(%ebp),%eax
	movl	%edx,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__DESTROY
_XMLREAD_TXMLDECODINGSOURCE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj596
	jmp	Lj597
Lj596:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj597:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj602
	jmp	Lj603
Lj602:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	call	*%eax
Lj603:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj612
	jmp	Lj611
Lj612:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj610
	jmp	Lj611
Lj610:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj611:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__FETCHDATA
_XMLREAD_TXMLDECODINGSOURCE_$__FETCHDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING
_XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj620
	.align 2
Lj619:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$10,%ax
	je	Lj622
	jmp	Lj625
Lj625:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$13,%ax
	je	Lj622
	jmp	Lj624
Lj624:
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj626
	jmp	Lj623
Lj626:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$133,%ax
	je	Lj622
	jmp	Lj627
Lj627:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$8232,%ax
	je	Lj622
	jmp	Lj623
Lj622:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$13,%ax
	je	Lj631
	jmp	Lj629
Lj631:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	subl	$2,%eax
	movl	-8(%ebp),%edx
	cmpl	4(%edx),%eax
	ja	Lj630
	jmp	Lj629
Lj630:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$10,%ax
	je	Lj628
	jmp	Lj632
Lj632:
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj633
	jmp	Lj629
Lj633:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$133,%ax
	je	Lj628
	jmp	Lj629
Lj628:
	movl	-8(%ebp),%eax
	addl	$2,4(%eax)
Lj629:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	incl	24(%eax)
Lj623:
	movl	-8(%ebp),%eax
	addl	$2,4(%eax)
Lj620:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	jb	Lj619
	jmp	Lj621
Lj621:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$0,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__RELOAD$$BOOLEAN
_XMLREAD_TXMLDECODINGSOURCE_$__RELOAD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	call	Lj643
Lj643:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	je	Lj644
	jmp	Lj645
Lj644:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DTDRELOADHOOK$stub
Lj645:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	4(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj650
	jmp	Lj651
Lj650:
	movl	-4(%ebp),%eax
	movl	68(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj651:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	68(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	-4(%ebp),%edx
	shll	$1,%eax
	subl	%eax,28(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	68(%edx),%edx
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	.align 2
Lj662:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%ecx
	movl	60(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj667
	jmp	Lj668
Lj667:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	64(%eax),%edx
	movl	60(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jbe	Lj673
	jmp	Lj674
Lj673:
	jmp	Lj664
Lj674:
Lj668:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	68(%edx),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj677
	jmp	Lj678
Lj677:
	jmp	Lj664
Lj678:
	leal	-16(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	call	*%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	cmpl	64(%eax),%edx
	jbe	Lj691
	jmp	Lj692
Lj691:
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,60(%eax)
	jmp	Lj695
Lj692:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld23$non_lazy_ptr-Lj643(%ebx),%edx
	call	L_XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING$stub
Lj695:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	68(%edx),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%edx
	shll	$1,%edx
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ecx
	addl	%ecx,%edx
	cmpl	%edx,%eax
	jae	Lj700
	jmp	Lj701
Lj700:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	68(%edx),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%edx
	shll	$1,%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj704
Lj701:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld25$non_lazy_ptr-Lj643(%ebx),%edx
	call	L_XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING$stub
Lj704:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj709
	jmp	Lj710
Lj709:
	jmp	Lj664
	jmp	Lj711
Lj710:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj712
	jmp	Lj713
Lj712:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld27$non_lazy_ptr-Lj643(%ebx),%edx
	call	L_XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING$stub
	jmp	Lj718
Lj713:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD$stub
Lj718:
Lj711:
	jmp	Lj662
Lj664:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	setbb	-5(%ebp)
	movb	-5(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__INITIALIZE
_XMLREAD_TXMLDECODINGSOURCE_$__INITIALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj728
Lj728:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__INITIALIZE$stub
	movl	-4(%ebp),%eax
	movl	$1,24(%eax)
	movl	-4(%ebp),%edx
	movl	L_XMLUTILS_DECODE_UTF8$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr-Lj728(%ebx),%eax
	movl	%eax,76(%edx)
	movl	-4(%ebp),%esi
	leal	88(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,88(%esi)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	64(%eax),%edx
	movl	60(%ecx),%eax
	subl	%eax,%edx
	cmpl	$1,%edx
	jg	Lj737
	jmp	Lj738
Lj737:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movb	(%eax),%al
	cmpb	$254,%al
	je	Lj741
	jmp	Lj740
Lj741:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movb	1(%eax),%al
	cmpb	$255,%al
	je	Lj739
	jmp	Lj740
Lj739:
	movl	L_$XMLREAD$_Ld29$non_lazy_ptr-Lj728(%ebx),%esi
	movl	-4(%ebp),%edi
	leal	88(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,88(%edi)
	movl	-4(%ebp),%edx
	movl	L_XMLUTILS_DECODE_UCS2_SWAPPED$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr-Lj728(%ebx),%eax
	movl	%eax,76(%edx)
	jmp	Lj746
Lj740:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movb	(%eax),%al
	cmpb	$255,%al
	je	Lj749
	jmp	Lj748
Lj749:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movb	1(%eax),%al
	cmpb	$254,%al
	je	Lj747
	jmp	Lj748
Lj747:
	movl	L_$XMLREAD$_Ld31$non_lazy_ptr-Lj728(%ebx),%esi
	movl	-4(%ebp),%edi
	leal	88(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,88(%edi)
	movl	-4(%ebp),%edx
	movl	L_XMLUTILS_DECODE_UCS2$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr-Lj728(%ebx),%eax
	movl	%eax,76(%edx)
Lj748:
Lj746:
Lj738:
	movl	-4(%ebp),%eax
	movl	$6,92(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$65279,%ax
	je	Lj758
	jmp	Lj759
Lj758:
	movl	-4(%ebp),%eax
	movb	$1,84(%eax)
	movl	-4(%ebp),%eax
	addl	$2,4(%eax)
Lj759:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	subl	$2,%edx
	movl	-4(%ebp),%eax
	movl	%edx,28(%eax)
	movl	L_TC_XMLREAD_XMLSIGN$non_lazy_ptr-Lj728(%ebx),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$10,%ecx
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	jne	Lj764
	jmp	Lj765
Lj764:
	movl	-4(%ebp),%eax
	movl	$3,92(%eax)
	movl	-4(%ebp),%eax
	addl	$10,4(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj780
	jmp	Lj782
Lj782:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj780
	jmp	Lj781
Lj780:
	movb	$1,%dl
	jmp	Lj783
Lj781:
	movb	$0,%dl
Lj783:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEXMLORTEXTDECL$BOOLEAN$stub
Lj765:
	movl	-4(%ebp),%eax
	movl	$2047,92(%eax)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpb	$0,16(%eax)
	jne	Lj788
	jmp	Lj789
Lj788:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__XML11_BUILDTABLES$stub
Lj789:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN
_XMLREAD_TXMLDECODINGSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj793
Lj793:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	je	Lj798
	jmp	Lj797
Lj798:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld33$non_lazy_ptr-Lj793(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj796
	jmp	Lj797
Lj796:
	jmp	Lj792
Lj797:
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	jne	Lj803
	jmp	Lj804
Lj803:
	movl	-8(%ebp),%eax
	movl	88(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj805
	jmp	Lj808
Lj808:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld35$non_lazy_ptr-Lj793(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj805
	jmp	Lj807
Lj807:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld37$non_lazy_ptr-Lj793(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj805
	jmp	Lj806
Lj805:
	movb	$1,-9(%ebp)
	jmp	Lj821
Lj806:
	movb	$0,-9(%ebp)
Lj821:
	jmp	Lj792
Lj804:
	leal	-24(%ebp),%eax
	movb	$0,%cl
	movl	$12,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_IS_8859_1$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj828
	jmp	Lj829
Lj828:
	movl	-8(%ebp),%edx
	movl	L_XMLUTILS_DECODE_8859_1$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr-Lj793(%ebx),%eax
	movl	%eax,76(%edx)
	jmp	Lj834
Lj829:
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_FINDDECODER$ANSISTRING$TDECODER$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj835
	jmp	Lj836
Lj835:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,72(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,76(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,80(%edx)
	jmp	Lj843
Lj836:
	movb	$0,-9(%ebp)
Lj843:
Lj834:
Lj792:
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__NEWLINE
_XMLREAD_TXMLDECODINGSOURCE_$__NEWLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$10,%ax
	jb	Lj849
	subw	$10,%ax
	je	Lj850
	subw	$3,%ax
	je	Lj851
	subw	$120,%ax
	je	Lj852
	subw	$8099,%ax
	je	Lj852
	jmp	Lj849
Lj850:
	jmp	Lj848
Lj851:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	$4,%eax
	movl	-4(%ebp),%edx
	cmpl	8(%edx),%eax
	jbe	Lj853
	jmp	Lj855
Lj855:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	jne	Lj853
	jmp	Lj854
Lj853:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$10,%ax
	je	Lj858
	jmp	Lj860
Lj860:
	movl	-4(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj861
	jmp	Lj859
Lj861:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$133,%ax
	je	Lj858
	jmp	Lj859
Lj858:
	movl	-4(%ebp),%eax
	addl	$2,4(%eax)
Lj859:
Lj854:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	$10,(%eax)
	jmp	Lj848
Lj852:
	movl	-4(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj864
	jmp	Lj865
Lj864:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	$10,(%eax)
	jmp	Lj868
Lj865:
	jmp	Lj846
Lj868:
	jmp	Lj848
Lj849:
	jmp	Lj846
Lj848:
	movl	-4(%ebp),%eax
	incl	24(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,28(%edx)
Lj846:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE
_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj873
	jmp	Lj874
Lj873:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj874:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj879
	jmp	Lj880
Lj879:
	jmp	Lj871
Lj880:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj883
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj887
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,100(%eax)
	movl	-12(%ebp),%eax
	movl	$4096,104(%eax)
	movl	-12(%ebp),%eax
	movl	104(%eax),%edx
	addl	$16,%edx
	movl	-12(%ebp),%eax
	leal	96(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	addl	$12,%eax
	movl	-12(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,64(%edx)
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,108(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
Lj887:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj888
	call	LFPC_RERAISE$stub
Lj888:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj908
	jmp	Lj907
Lj908:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj906
	jmp	Lj907
Lj906:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj907:
Lj883:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj885
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj912
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj913
	jmp	Lj914
Lj913:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj914:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj912:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj911
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj911:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj885
Lj885:
Lj871:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLSTREAMINPUTSOURCE_$__DESTROY
_XMLREAD_TXMLSTREAMINPUTSOURCE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj921
	jmp	Lj922
Lj921:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj922:
	movl	-8(%ebp),%eax
	movl	96(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	cmpb	$0,108(%eax)
	jne	Lj927
	jmp	Lj928
Lj927:
	movl	-8(%ebp),%eax
	movl	100(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj928:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_XMLREAD_TXMLDECODINGSOURCE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj937
	jmp	Lj936
Lj937:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj935
	jmp	Lj936
Lj935:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj936:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLSTREAMINPUTSOURCE_$__FETCHDATA
_XMLREAD_TXMLSTREAMINPUTSOURCE_$__FETCHDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,109(%eax)
	jne	Lj942
	jmp	Lj943
Lj942:
	jmp	Lj940
Lj943:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	64(%eax),%edx
	movl	60(%ecx),%eax
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj948
	jmp	Lj949
Lj948:
	movl	$0,-8(%ebp)
Lj949:
	movl	-4(%ebp),%eax
	movl	96(%eax),%edx
	addl	$16,%edx
	subl	$4,%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,60(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj954
	jmp	Lj955
Lj954:
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj955:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	100(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj970
	jmp	Lj971
Lj970:
	movl	-4(%ebp),%eax
	movb	$1,109(%eax)
Lj971:
	movl	-4(%ebp),%eax
	movl	96(%eax),%edx
	addl	$12,%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
Lj940:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE
_XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-100(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj978
	jmp	Lj979
Lj978:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj979:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj984
	jmp	Lj985
Lj984:
	jmp	Lj976
Lj985:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj988
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj992
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%eax,96(%edx)
	leal	-96(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	movb	$1,%cl
	movl	$255,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-104(%ebp),%eax
	leal	-100(%ebp),%ecx
	movb	$1,%dl
	call	L_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-100(%ebp),%eax
	leal	-96(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-96(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	36(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	movl	%eax,36(%ebx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
Lj992:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj993
	call	LFPC_RERAISE$stub
Lj993:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1021
	jmp	Lj1020
Lj1021:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1019
	jmp	Lj1020
Lj1019:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1020:
Lj988:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj990
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1025
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1026
	jmp	Lj1027
Lj1026:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1027:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1025:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1024
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1024:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj990
Lj990:
Lj976:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLFILEINPUTSOURCE_$__FETCHDATA
_XMLREAD_TXMLFILEINPUTSOURCE_$__FETCHDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj1033
Lj1033:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	movb	%bl,%al
	testb	%al,%al
	je	Lj1034
	jmp	Lj1035
Lj1034:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	64(%eax),%ecx
	movl	60(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1040
	jmp	Lj1041
Lj1040:
	movl	-4(%ebp),%eax
	movl	60(%eax),%edi
	movl	-4(%ebp),%ebx
	leal	104(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	104(%ebx),%eax
	movl	-8(%ebp),%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT$stub
Lj1041:
	movl	-4(%ebp),%eax
	movl	96(%eax),%ebx
	movl	-4(%ebp),%edi
	leal	100(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	100(%edi),%edx
	movl	%ebx,%eax
	call	Lfpc_read_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	leal	100(%eax),%eax
	movl	L_$XMLREAD$_Ld39$non_lazy_ptr-Lj1033(%esi),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1062
	jmp	Lj1063
Lj1062:
	movl	-4(%ebp),%eax
	leal	100(%eax),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	$1,%ecx
	call	L_SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT$stub
Lj1063:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj1072
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1033(%esi),%edx
	movl	%edx,%eax
Lj1072:
	movl	-4(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	testl	%edx,%edx
	je	Lj1075
	movl	-4(%edx),%edx
Lj1075:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,64(%eax)
Lj1035:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_THANDLEOWNERSTREAM_$__DESTROY
_XMLREAD_THANDLEOWNERSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1078
	jmp	Lj1079
Lj1078:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1079:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jge	Lj1082
	jmp	Lj1083
Lj1082:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
Lj1083:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1092
	jmp	Lj1091
Lj1092:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1090
	jmp	Lj1091
Lj1090:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1091:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CONVERTSOURCE$TXMLINPUTSOURCE$TXMLCHARSOURCE
_XMLREAD_TXMLTEXTREADER_$__CONVERTSOURCE$TXMLINPUTSOURCE$TXMLCHARSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1096
Lj1096:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	cmpl	$0,-4(%ebp)
	jne	Lj1099
	jmp	Lj1100
Lj1099:
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1101
	jmp	Lj1102
Lj1101:
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr-Lj1096(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj1113
Lj1102:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1114
	jmp	Lj1115
Lj1114:
	movb	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj1096(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,%ecx
	movl	L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr-Lj1096(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj1132
Lj1115:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj1133
	jmp	Lj1134
Lj1133:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN$stub
Lj1134:
Lj1132:
Lj1113:
Lj1100:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1147
	jmp	Lj1146
Lj1147:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj1145
	jmp	Lj1146
Lj1145:
	movl	L_TC_XMLREAD_NULLLOCATION$non_lazy_ptr-Lj1096(%ebx),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld41$non_lazy_ptr-Lj1096(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj1146:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION
_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	4(%ecx),%eax
	movl	28(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj1163
Lj1163:
	popl	%ebx
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
	jne	Lj1164
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movb	$0,-13(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_URIPARSER_RESOLVERELATIVEURI$WIDESTRING$WIDESTRING$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1171
	jmp	Lj1172
Lj1171:
	jmp	Lj1164
Lj1172:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%esi
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-24(%ebp),%edx
	movl	%esi,%eax
	call	L_URIPARSER_URITOFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1179
	jmp	Lj1180
Lj1179:
	movl	-24(%ebp),%eax
	movl	$32,%edx
	call	L_SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1195
	jmp	Lj1196
Lj1195:
	movl	-32(%ebp),%ecx
	movl	L_VMT_XMLREAD_THANDLEOWNERSTREAM$non_lazy_ptr-Lj1163(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub
	movl	%eax,-28(%ebp)
	movb	$1,(%esp)
	movl	-28(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr-Lj1163(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	8(%ebp),%eax
	movl	(%eax),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,36(%esi)
Lj1196:
Lj1180:
	movl	8(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj1217
	jmp	Lj1218
Lj1217:
	movb	$1,-13(%ebp)
	jmp	Lj1219
Lj1218:
	movb	$0,-13(%ebp)
Lj1219:
Lj1164:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1165
	call	LFPC_RERAISE$stub
Lj1165:
	movb	-13(%ebp),%al
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE
_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	movl	%eax,44(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR
_XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj1245
Lj1245:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1246
	movl	$0,(%esp)
	movl	$0,4(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movw	-4(%ebp),%ax
	call	Lfpc_uchar_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld43$non_lazy_ptr-Lj1245(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj1246:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1247
	call	LFPC_RERAISE$stub
Lj1247:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT
_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT:
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
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT
_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1275
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT$stub
Lj1275:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1276
	call	LFPC_RERAISE$stub
Lj1276:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT
_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1296
	movl	-12(%ebp),%eax
	cmpb	$0,156(%eax)
	jne	Lj1299
	jmp	Lj1300
Lj1299:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT$stub
Lj1300:
Lj1296:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1297
	call	LFPC_RERAISE$stub
Lj1297:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERRORWITHNAME$ANSISTRING$LONGINT
_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERRORWITHNAME$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
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
	jne	Lj1319
	movl	-12(%ebp),%eax
	movl	56(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	52(%eax),%esi
	leal	-16(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-16(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$18,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj1319:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1320
	call	LFPC_RERAISE$stub
Lj1320:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT
_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1350
	jmp	Lj1351
Lj1350:
	movl	8(%ebp),%eax
	subl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
	jmp	Lj1360
Lj1351:
	movl	-12(%ebp),%eax
	leal	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj1360:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION
_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1371
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj1371:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1372
	call	LFPC_RERAISE$stub
Lj1372:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION
_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj1391
Lj1391:
	popl	%ebx
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
	jne	Lj1392
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1395
	jmp	Lj1396
Lj1395:
	movl	-12(%ebp),%eax
	movl	4(%eax),%esi
	movl	36(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	36(%esi),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1401
	jmp	Lj1400
Lj1401:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,20(%eax)
	jne	Lj1399
	jmp	Lj1400
Lj1399:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%esi
	movl	32(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	32(%esi),%eax
	movl	%eax,-20(%ebp)
Lj1400:
	movl	$3,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$18,-92(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$0,-84(%ebp)
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	$0,-76(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_XMLREAD_EXMLREADERROR$non_lazy_ptr-Lj1391(%ebx),%edx
	movl	L_$XMLREAD$_Ld45$non_lazy_ptr-Lj1391(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
	movl	%eax,-16(%ebp)
	jmp	Lj1416
Lj1396:
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_EXMLREADERROR$non_lazy_ptr-Lj1391(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
	movl	%eax,-16(%ebp)
Lj1416:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,16(%esi)
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,20(%edx)
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,24(%edx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CALLERRORHANDLER$EXMLREADERROR$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1392:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1393
	call	LFPC_RERAISE$stub
Lj1393:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD
_XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1446
Lj1446:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	je	Lj1447
	jmp	Lj1448
Lj1447:
	jmp	Lj1445
Lj1448:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	.align 2
Lj1453:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	addl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	168(%eax),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj1456
	jmp	Lj1457
Lj1456:
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld47$non_lazy_ptr-Lj1446(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj1457:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1455
	jmp	Lj1453
Lj1455:
Lj1445:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CALLERRORHANDLER$EXMLREADERROR
_XMLREAD_TXMLTEXTREADER_$__CALLERRORHANDLER$EXMLREADERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1467
Lj1467:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1470
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1476
	jmp	Lj1475
Lj1476:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,8(%eax)
	jne	Lj1474
	jmp	Lj1475
Lj1474:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	8(%ecx),%ecx
	call	*%ecx
Lj1475:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$2,%eax
	je	Lj1481
	jmp	Lj1482
Lj1481:
La3:
	movl	%ebp,%ecx
	leal	La3-Lj1467(%ebx),%edx
	movl	-4(%ebp),%eax
	call	LFPC_RAISEEXCEPTION$stub
Lj1482:
Lj1470:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1472
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1484
	call	L_SYSUTILS_EXCEPTOBJECT$$TOBJECT$stub
	cmpl	-4(%ebp),%eax
	jne	Lj1485
	jmp	Lj1486
Lj1485:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1486:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1484:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1483
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1483:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1472
Lj1472:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1490
Lj1490:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	$0,-9(%ebp)
	.align 2
Lj1493:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1496
	jmp	Lj1498
Lj1498:
	cmpb	$0,-9(%ebp)
	jne	Lj1496
	jmp	Lj1497
Lj1496:
	movb	$1,-9(%ebp)
	jmp	Lj1503
Lj1497:
	movb	$0,-9(%ebp)
Lj1503:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj1504
	jmp	Lj1505
Lj1504:
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1508
	jmp	Lj1509
Lj1508:
	jmp	Lj1495
Lj1509:
	jmp	Lj1514
Lj1505:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$37,%ax
	je	Lj1515
	jmp	Lj1516
Lj1515:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1,%eax
	jne	Lj1517
	jmp	Lj1519
Lj1519:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	je	Lj1520
	jmp	Lj1518
Lj1520:
	movl	-8(%ebp),%eax
	cmpb	$0,25(%eax)
	jne	Lj1517
	jmp	Lj1518
Lj1517:
	jmp	Lj1495
Lj1518:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%edx
	subl	$4,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	4(%eax),%edx
	jb	Lj1521
	jmp	Lj1522
Lj1521:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
Lj1522:
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj1525
	jmp	Lj1528
Lj1528:
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzwl	2(%eax),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	addl	$256,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	4(%edx),%edx
	movzbl	2(%edx),%edx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj1490(%ebx),%ecx
	btl	%edx,(%ecx,%eax)
	jc	Lj1525
	jmp	Lj1527
Lj1527:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj1530
	jmp	Lj1526
Lj1530:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$55296,%ax
	jae	Lj1529
	jmp	Lj1526
Lj1529:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$56191,%ax
	jbe	Lj1525
	jmp	Lj1526
Lj1525:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	$0,%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movw	$59,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STARTPE$stub
	movb	$1,-9(%ebp)
	jmp	Lj1543
Lj1526:
	jmp	Lj1495
Lj1543:
	jmp	Lj1544
Lj1516:
	jmp	Lj1495
Lj1544:
Lj1514:
	jmp	Lj1493
Lj1495:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE
_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1546
Lj1546:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1547
	jmp	Lj1548
Lj1547:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld49$non_lazy_ptr-Lj1546(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj1548:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1560
Lj1560:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	$0,-9(%ebp)
	.align 2
Lj1563:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	.align 2
Lj1568:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$10,%ax
	je	Lj1571
	jmp	Lj1574
Lj1574:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$13,%ax
	je	Lj1571
	jmp	Lj1573
Lj1573:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj1575
	jmp	Lj1572
Lj1575:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$133,%ax
	je	Lj1571
	jmp	Lj1576
Lj1576:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$8232,%ax
	je	Lj1571
	jmp	Lj1572
Lj1571:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1583
Lj1572:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$32,%ax
	jne	Lj1586
	jmp	Lj1585
Lj1586:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$9,%ax
	jne	Lj1584
	jmp	Lj1585
Lj1584:
	jmp	Lj1570
Lj1585:
Lj1583:
	addl	$2,-16(%ebp)
	movb	$1,-9(%ebp)
	jmp	Lj1568
Lj1570:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	4(%edx),%eax
	cmpl	8(%ecx),%eax
	jb	Lj1565
	jmp	Lj1591
Lj1591:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	je	Lj1565
	jmp	Lj1563
Lj1565:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj1596
	jmp	Lj1595
Lj1596:
	cmpb	$0,-4(%ebp)
	jne	Lj1594
	jmp	Lj1595
Lj1594:
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld49$non_lazy_ptr-Lj1560(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj1595:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING
_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj1604
Lj1604:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj1608
	movl	-4(%ebx),%ebx
Lj1608:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1606
	decl	-12(%ebp)
	.align 2
Lj1607:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbw	-1(%edx,%eax,1),%ax
	cmpw	(%ecx),%ax
	jne	Lj1609
	jmp	Lj1610
Lj1609:
	movl	$0,4(%esp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edi
	movl	L_$XMLREAD$_Ld51$non_lazy_ptr-Lj1604(%esi),%eax
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj1610:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1607
Lj1606:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	-4(%ebp),%ax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1627
	jmp	Lj1628
Lj1627:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	4(%ecx),%eax
	cmpl	8(%edx),%eax
	jae	Lj1629
	jmp	Lj1630
Lj1629:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
Lj1630:
Lj1628:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1634
Lj1634:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$39,%ax
	je	Lj1637
	jmp	Lj1639
Lj1639:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$34,%ax
	je	Lj1637
	jmp	Lj1638
Lj1637:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-12(%ebp),%eax
	leal	64(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	jmp	Lj1648
Lj1638:
	cmpb	$0,-8(%ebp)
	jne	Lj1649
	jmp	Lj1650
Lj1649:
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld53$non_lazy_ptr-Lj1634(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj1650:
Lj1648:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER
_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1658
Lj1658:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1659
	jmp	Lj1660
Lj1659:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1660:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1665
	jmp	Lj1666
Lj1665:
	jmp	Lj1657
Lj1666:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1669
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1673
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	movl	$128,%edx
	call	L_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT$stub
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	$512,%edx
	call	L_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1658(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,88(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1658(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,204(%edx)
	movl	L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr-Lj1658(%ebx),%eax
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
	movl	$16,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLREAD_TNODEDATADYNARRAY$non_lazy_ptr-Lj1658(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	192(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	$16,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLREAD_TVALIDATORDYNARRAY$non_lazy_ptr-Lj1658(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	200(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj1673:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1674
	call	LFPC_RERAISE$stub
Lj1674:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1724
	jmp	Lj1723
Lj1724:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1722
	jmp	Lj1723
Lj1722:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1723:
Lj1669:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1671
	leal	-92(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj1728
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1729
	jmp	Lj1730
Lj1729:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1730:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1728:
	call	LFPC_POPADDRSTACK$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj1727
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1727:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1671
Lj1671:
Lj1657:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER
_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1737
	jmp	Lj1738
Lj1737:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1738:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1743
	jmp	Lj1744
Lj1743:
	jmp	Lj1735
Lj1744:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1747
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1751
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj1760
	jmp	Lj1761
Lj1760:
	jmp	Lj1751
Lj1761:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	4(%eax),%al
	movb	%al,156(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	5(%eax),%al
	movb	%al,157(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	6(%eax),%al
	movb	%al,158(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	8(%eax),%al
	movb	%al,160(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	7(%eax),%al
	movb	%al,159(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	9(%eax),%al
	movb	%al,161(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	10(%eax),%al
	movb	%al,162(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movb	11(%eax),%al
	movb	%al,163(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TDOMPARSEOPTIONS_$__GETCANONICAL$$BOOLEAN$stub
	movl	-12(%ebp),%edx
	movb	%al,164(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	16(%eax),%eax
	movl	%eax,168(%edx)
Lj1751:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1752
	call	LFPC_RERAISE$stub
Lj1752:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1786
	jmp	Lj1785
Lj1786:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1784
	jmp	Lj1785
Lj1784:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1785:
Lj1747:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1749
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1790
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1791
	jmp	Lj1792
Lj1791:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1792:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1790:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1789
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1789:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1749
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	jmp	Lj1735
Lj1749:
Lj1735:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DESTROY
_XMLREAD_TXMLTEXTREADER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1798
Lj1798:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1799
	jmp	Lj1800
Lj1799:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1800:
	movl	-8(%ebp),%eax
	movl	204(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj1804
	incl	-12(%ebp)
	.align 2
Lj1805:
	decl	-12(%ebp)
	movl	L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr-Lj1798(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	204(%eax),%eax
	movl	4(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	call	Lfpc_finalize$stub
	movl	-8(%ebp),%eax
	movl	204(%eax),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	Lfpc_freemem$stub
	cmpl	$0,-12(%ebp)
	jg	Lj1805
Lj1804:
	movl	-8(%ebp),%eax
	cmpl	$0,40(%eax)
	jne	Lj1812
	jmp	Lj1813
Lj1812:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1813:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1820
	jmp	Lj1821
Lj1820:
	jmp	Lj1823
	.align 2
Lj1822:
Lj1823:
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1822
	jmp	Lj1824
Lj1824:
Lj1821:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS$stub
	movl	-8(%ebp),%eax
	movl	132(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__RELEASE$stub
	movl	-8(%ebp),%eax
	movl	124(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	204(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1853
	jmp	Lj1852
Lj1853:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1851
	jmp	Lj1852
Lj1851:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1852:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__XML11_BUILDTABLES
_XMLREAD_TXMLTEXTREADER_$__XML11_BUILDTABLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-4(%ebp),%eax
	movb	$1,16(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	$1,32(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__NSPREPARE
_XMLREAD_TXMLTEXTREADER_$__NSPREPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj1865
Lj1865:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj1866
	jmp	Lj1867
Lj1866:
	movl	L_VMT_XMLUTILS_TNSSUPPORT$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	$0,%eax
	call	L_XMLUTILS_TNSSUPPORT_$__CREATE$$TNSSUPPORT$stub
	movl	-4(%ebp),%edx
	movl	%eax,128(%edx)
	movl	L_VMT_XMLUTILS_TDBLHASHARRAY$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,132(%edx)
	movl	L_TC_XMLREAD_PREFIXDEFAULT$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	movl	$3,%ecx
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	%eax,136(%edx)
	movl	L_TC_XMLREAD_PREFIXDEFAULT$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	movl	$5,%ecx
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	%eax,140(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	je	Lj1902
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj1902:
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj1865(%ebx),%ecx
	movl	(%ecx),%esi
	testl	%esi,%esi
	jne	Lj1905
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1865(%ebx),%ecx
	movl	%ecx,%esi
Lj1905:
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	%eax,148(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	(%edx),%ecx
	testl	%ecx,%ecx
	je	Lj1912
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj1912:
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj1865(%ebx),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	jne	Lj1915
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1865(%ebx),%esi
	movl	%esi,%edx
Lj1915:
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	%eax,144(%edx)
Lj1867:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE
_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj1917
Lj1917:
	popl	%ebx
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
	jne	Lj1918
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj1917(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj1917(%ebx),%ecx
	call	*224(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,216(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	216(%eax),%esi
	leal	48(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,48(%esi)
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	movl	-8(%ebp),%edx
	movl	72(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,172(%eax)
	movl	-8(%ebp),%eax
	movl	$0,196(%eax)
	movl	-8(%ebp),%eax
	movl	192(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-8(%ebp),%eax
	movb	$0,113(%eax)
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__NSPREPARE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj1951
	jmp	Lj1952
Lj1951:
	movl	-8(%ebp),%eax
	movl	216(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	48(%eax),%eax
	movl	%eax,52(%edx)
Lj1952:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edi
	movl	52(%edi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	216(%eax),%esi
	leal	44(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	52(%edi),%eax
	movl	%eax,44(%esi)
	movl	-8(%ebp),%eax
	movb	72(%eax),%dl
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	216(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*204(%ecx)
	movl	-8(%ebp),%eax
	movl	$2,116(%eax)
	movl	-8(%ebp),%eax
	movl	216(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECONTENT$TDOMNODE_WITHCHILDREN$stub
	movl	-8(%ebp),%eax
	cmpb	$0,156(%eax)
	jne	Lj1967
	jmp	Lj1968
Lj1967:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATEIDREFS$stub
Lj1968:
	movl	-8(%ebp),%eax
	movl	216(%eax),%edx
	movl	-8(%ebp),%eax
	movl	124(%eax),%eax
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	$0,124(%eax)
Lj1918:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1919
	call	LFPC_RERAISE$stub
Lj1919:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE
_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj1976
Lj1976:
	popl	%ebx
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
	jne	Lj1977
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	-12(%ebp),%edx
	movl	%eax,216(%edx)
	movl	-12(%ebp),%eax
	movl	216(%eax),%eax
	movl	-12(%ebp),%edx
	movl	72(%eax),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	$3,20(%eax)
	movl	-12(%ebp),%eax
	movl	$0,172(%eax)
	movl	-12(%ebp),%eax
	movl	$0,196(%eax)
	movl	-12(%ebp),%eax
	movl	192(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-12(%ebp),%eax
	movb	$1,113(%eax)
	movl	-12(%ebp),%esi
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%eax
	movl	216(%eax),%eax
	leal	-60(%ebp),%edx
	call	L_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING$stub
	movl	-60(%ebp),%eax
	movl	L_$XMLREAD$_Ld55$non_lazy_ptr-Lj1976(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	seteb	16(%esi)
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__NSPREPARE$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj2012
	jmp	Lj2013
Lj2012:
	movl	-12(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj2018
	jmp	Lj2019
Lj2018:
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL$stub
	movl	-12(%ebp),%edx
	movl	%eax,80(%edx)
Lj2019:
Lj2013:
	movl	-8(%ebp),%edx
	movl	L_VMT_DOM_TDOMENTITY$non_lazy_ptr-Lj1976(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2024
	jmp	Lj2025
Lj2024:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	48(%eax),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edi
	movl	52(%edi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	44(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	52(%edi),%eax
	movl	%eax,44(%esi)
Lj2025:
	movl	-12(%ebp),%eax
	movl	$2,116(%eax)
	movl	-8(%ebp),%edx
	movl	L_VMT_DOM_TDOMNODE_WITHCHILDREN$non_lazy_ptr-Lj1976(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECONTENT$TDOMNODE_WITHCHILDREN$stub
Lj1977:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1978
	call	LFPC_RERAISE$stub
Lj1978:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2045
Lj2045:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,56(%eax)
	movl	-8(%ebp),%eax
	movl	$-1,152(%eax)
	testl	$2,-4(%ebp)
	seteb	-17(%ebp)
	.align 2
Lj2054:
	cmpb	$0,-17(%ebp)
	jne	Lj2057
	jmp	Lj2058
Lj2057:
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-16(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj2045(%ebx),%edx
	btl	%ecx,(%edx,%eax)
	jc	Lj2059
	jmp	Lj2061
Lj2061:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$58,%ax
	je	Lj2062
	jmp	Lj2060
Lj2062:
	movl	-8(%ebp),%eax
	movb	162(%eax),%al
	testb	%al,%al
	je	Lj2059
	jmp	Lj2060
Lj2059:
	addl	$2,-16(%ebp)
	jmp	Lj2063
Lj2060:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj2066
	jmp	Lj2065
Lj2066:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$55296,%ax
	jae	Lj2069
	jmp	Lj2065
Lj2069:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$56191,%ax
	jbe	Lj2068
	jmp	Lj2065
Lj2068:
	movl	-16(%ebp),%eax
	movw	2(%eax),%ax
	cmpw	$56320,%ax
	jae	Lj2067
	jmp	Lj2065
Lj2067:
	movl	-16(%ebp),%eax
	movw	2(%eax),%ax
	cmpw	$57343,%ax
	jbe	Lj2064
	jmp	Lj2065
Lj2064:
	addl	$4,-16(%ebp)
	jmp	Lj2070
Lj2065:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$0,-9(%ebp)
	jmp	Lj2056
Lj2070:
Lj2063:
	movb	$0,-17(%ebp)
Lj2058:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj2077
	jmp	Lj2078
Lj2077:
	.align 2
Lj2079:
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	addl	$256,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-16(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj2045(%ebx),%edx
	btl	%ecx,(%edx,%eax)
	jc	Lj2082
	jmp	Lj2083
Lj2082:
	addl	$2,-16(%ebp)
	jmp	Lj2084
Lj2083:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$55296,%ax
	jae	Lj2089
	jmp	Lj2086
Lj2089:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$56191,%ax
	jbe	Lj2088
	jmp	Lj2086
Lj2088:
	movl	-16(%ebp),%eax
	movw	2(%eax),%ax
	cmpw	$56320,%ax
	jae	Lj2087
	jmp	Lj2086
Lj2087:
	movl	-16(%ebp),%eax
	movw	2(%eax),%ax
	cmpw	$57343,%ax
	jbe	Lj2085
	jmp	Lj2086
Lj2085:
	addl	$4,-16(%ebp)
	jmp	Lj2090
Lj2086:
	jmp	Lj2081
Lj2090:
Lj2084:
	jmp	Lj2079
Lj2081:
	jmp	Lj2091
Lj2078:
	jmp	Lj2093
	.align 2
Lj2092:
	addl	$2,-16(%ebp)
Lj2093:
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-16(%ebp),%eax
	movzwl	(%eax),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	addl	$256,%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$5,%eax
	movl	-16(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr-Lj2045(%ebx),%edx
	btl	%ecx,(%edx,%eax)
	jc	Lj2092
	jmp	Lj2094
Lj2094:
Lj2091:
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$58,%ax
	je	Lj2095
	jmp	Lj2096
Lj2095:
	testl	$2,-4(%ebp)
	jne	Lj2097
	jmp	Lj2099
Lj2099:
	movl	-8(%ebp),%eax
	movb	162(%eax),%al
	testb	%al,%al
	je	Lj2097
	jmp	Lj2098
Lj2097:
	addl	$2,-16(%ebp)
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	jne	Lj2100
	jmp	Lj2101
Lj2100:
	jmp	Lj2055
Lj2101:
	jmp	Lj2102
Lj2098:
	movl	-8(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$-1,%eax
	je	Lj2103
	jmp	Lj2104
Lj2103:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,152(%eax)
	movb	$1,-17(%ebp)
	addl	$2,-16(%ebp)
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	jne	Lj2109
	jmp	Lj2110
Lj2109:
	jmp	Lj2055
Lj2110:
Lj2104:
Lj2102:
Lj2096:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	leal	52(%eax),%eax
	movl	-16(%ebp),%ecx
	call	L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$0,%eax
	setgb	-9(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-16(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	jne	Lj2121
	jmp	Lj2123
Lj2123:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	je	Lj2121
	jmp	Lj2122
Lj2121:
	jmp	Lj2056
Lj2122:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
Lj2055:
	jmp	Lj2054
Lj2056:
	cmpb	$0,-9(%ebp)
	jne	Lj2129
	jmp	Lj2130
Lj2130:
	testl	$1,-4(%ebp)
	jne	Lj2129
	jmp	Lj2128
Lj2128:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND$stub
Lj2129:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME
_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj2134
Lj2134:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj2137
	jmp	Lj2136
Lj2137:
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj2135
	jmp	Lj2136
Lj2135:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld57$non_lazy_ptr-Lj2134(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2136:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND
_XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj2145
Lj2145:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj2146
	jmp	Lj2147
Lj2146:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld59$non_lazy_ptr-Lj2145(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
	jmp	Lj2154
Lj2147:
	movl	-4(%ebp),%eax
	movl	4(%eax),%esi
	movl	4(%esi),%eax
	movw	(%eax),%ax
	cmpw	$32,%ax
	je	Lj2157
	jmp	Lj2161
Lj2161:
	movl	4(%esi),%eax
	movw	(%eax),%ax
	cmpw	$10,%ax
	je	Lj2157
	jmp	Lj2160
Lj2160:
	movl	4(%esi),%eax
	movw	(%eax),%ax
	cmpw	$9,%ax
	je	Lj2157
	jmp	Lj2159
Lj2159:
	movl	4(%esi),%eax
	movw	(%eax),%ax
	cmpw	$13,%ax
	je	Lj2157
	jmp	Lj2158
Lj2157:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld61$non_lazy_ptr-Lj2145(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
	jmp	Lj2168
Lj2158:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld63$non_lazy_ptr-Lj2145(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2168:
Lj2154:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING
_XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%edi
	movl	-4(%ebp),%eax
	movl	52(%eax),%esi
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,%eax
	movl	%edi,%ecx
	movl	%esi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__RESOLVEPREDEFINED$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__RESOLVEPREDEFINED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	4(%eax),%edx
	cmpl	$2,%edx
	je	Lj2195
	jmp	Lj2194
Lj2195:
	movl	(%eax),%edx
	movw	2(%edx),%dx
	cmpw	$116,%dx
	je	Lj2193
	jmp	Lj2194
Lj2193:
	movl	(%eax),%edx
	movw	(%edx),%dx
	cmpw	$108,%dx
	je	Lj2196
	jmp	Lj2197
Lj2196:
	movw	$60,-8(%ebp)
	jmp	Lj2200
Lj2197:
	movl	(%eax),%edx
	movw	(%edx),%dx
	cmpw	$103,%dx
	je	Lj2201
	jmp	Lj2202
Lj2201:
	movw	$62,-8(%ebp)
	jmp	Lj2205
Lj2202:
	jmp	Lj2187
Lj2205:
Lj2200:
	jmp	Lj2206
Lj2194:
	movl	(%eax),%edx
	movw	(%edx),%dx
	cmpw	$97,%dx
	je	Lj2207
	jmp	Lj2208
Lj2207:
	movl	4(%eax),%edx
	cmpl	$3,%edx
	je	Lj2212
	jmp	Lj2210
Lj2212:
	movl	(%eax),%edx
	movw	2(%edx),%dx
	cmpw	$109,%dx
	je	Lj2211
	jmp	Lj2210
Lj2211:
	movl	(%eax),%edx
	movw	4(%edx),%dx
	cmpw	$112,%dx
	je	Lj2209
	jmp	Lj2210
Lj2209:
	movw	$38,-8(%ebp)
	jmp	Lj2215
Lj2210:
	movl	4(%eax),%edx
	cmpl	$4,%edx
	je	Lj2220
	jmp	Lj2217
Lj2220:
	movl	(%eax),%edx
	movw	2(%edx),%dx
	cmpw	$112,%dx
	je	Lj2219
	jmp	Lj2217
Lj2219:
	movl	(%eax),%edx
	movw	4(%edx),%dx
	cmpw	$111,%dx
	je	Lj2218
	jmp	Lj2217
Lj2218:
	movl	(%eax),%edx
	movw	6(%edx),%dx
	cmpw	$115,%dx
	je	Lj2216
	jmp	Lj2217
Lj2216:
	movw	$39,-8(%ebp)
	jmp	Lj2223
Lj2217:
	jmp	Lj2187
Lj2223:
Lj2215:
	jmp	Lj2224
Lj2208:
	movl	4(%eax),%edx
	cmpl	$4,%edx
	je	Lj2230
	jmp	Lj2226
Lj2230:
	movl	(%eax),%edx
	movw	(%edx),%dx
	cmpw	$113,%dx
	je	Lj2229
	jmp	Lj2226
Lj2229:
	movl	(%eax),%edx
	movw	2(%edx),%dx
	cmpw	$117,%dx
	je	Lj2228
	jmp	Lj2226
Lj2228:
	movl	(%eax),%edx
	movw	4(%edx),%dx
	cmpw	$111,%dx
	je	Lj2227
	jmp	Lj2226
Lj2227:
	movl	(%eax),%edx
	movw	6(%edx),%dx
	cmpw	$116,%dx
	je	Lj2225
	jmp	Lj2226
Lj2225:
	movw	$34,-8(%ebp)
	jmp	Lj2233
Lj2226:
	jmp	Lj2187
Lj2233:
Lj2224:
Lj2206:
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movw	-8(%ebp),%dx
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	movb	$1,-5(%ebp)
Lj2187:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2241
Lj2241:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-8(%ebp),%eax
	movw	$35,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj2250
	jmp	Lj2251
Lj2250:
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movw	$120,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2254
	jmp	Lj2255
Lj2254:
	.align 2
Lj2260:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$48,%ax
	jb	Lj2264
	subw	$48,%ax
	subw	$9,%ax
	jbe	Lj2265
	subw	$8,%ax
	jb	Lj2264
	subw	$5,%ax
	jbe	Lj2267
	subw	$27,%ax
	jb	Lj2264
	subw	$5,%ax
	jbe	Lj2266
	jmp	Lj2264
Lj2265:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzwl	(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	addl	%eax,%edx
	subl	$48,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj2263
Lj2266:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzwl	(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	addl	%eax,%edx
	subl	$87,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj2263
Lj2267:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzwl	(%eax),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	addl	%eax,%edx
	subl	$55,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj2263
Lj2264:
	jmp	Lj2262
Lj2263:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-16(%ebp),%eax
	cmpl	$1114111,%eax
	jg	Lj2262
	jmp	Lj2260
Lj2262:
	jmp	Lj2276
Lj2255:
	.align 2
Lj2277:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$48,%ax
	jb	Lj2281
	subw	$48,%ax
	subw	$9,%ax
	jbe	Lj2282
	jmp	Lj2281
Lj2282:
	movl	-16(%ebp),%edx
	imull	$10,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzwl	(%eax),%eax
	addl	%eax,%edx
	subl	$48,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj2280
Lj2281:
	jmp	Lj2279
Lj2280:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-16(%ebp),%eax
	cmpl	$1114111,%eax
	jg	Lj2279
	jmp	Lj2277
Lj2279:
Lj2276:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj2288
	decl	%eax
	subl	$7,%eax
	jle	Lj2289
	decl	%eax
	subl	$1,%eax
	jle	Lj2290
	decl	%eax
	subl	$1,%eax
	jle	Lj2289
	decl	%eax
	je	Lj2290
	decl	%eax
	jl	Lj2288
	subl	$17,%eax
	jle	Lj2289
	decl	%eax
	subl	$55263,%eax
	jle	Lj2290
	subl	$2049,%eax
	jl	Lj2288
	subl	$8189,%eax
	jle	Lj2290
	subl	$3,%eax
	jl	Lj2288
	subl	$1048575,%eax
	jle	Lj2291
	jmp	Lj2288
Lj2289:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj2292
	jmp	Lj2293
Lj2292:
	movw	-16(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	jmp	Lj2298
Lj2293:
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld65$non_lazy_ptr-Lj2241(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2298:
	jmp	Lj2287
Lj2290:
	movw	-16(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	jmp	Lj2287
Lj2291:
	movl	-16(%ebp),%edx
	shrl	$10,%edx
	addl	$55232,%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	movl	-16(%ebp),%edx
	andl	$1023,%edx
	xorl	$56320,%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	jmp	Lj2287
Lj2288:
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld65$non_lazy_ptr-Lj2241(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2287:
	jmp	Lj2323
Lj2251:
	movl	$0,%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
Lj2323:
	movl	-8(%ebp),%eax
	movw	$59,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTATTVALUE$PNODEDATA$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__EXPECTATTVALUE$PNODEDATA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj2333
Lj2333:
	popl	-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$1,%cl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,32(%eax)
	movl	$0,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	.align 2
Lj2348:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-36(%ebp),%ebx
	movl	L_TC_XMLREAD_ATTRDELIMS$non_lazy_ptr-Lj2333(%ebx),%ecx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	cmpw	$60,%ax
	je	Lj2361
	jmp	Lj2362
Lj2361:
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	-36(%ebp),%edx
	movl	L_$XMLREAD$_Ld67$non_lazy_ptr-Lj2333(%edx),%ebx
	movl	%ebx,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
	jmp	Lj2369
Lj2362:
	movw	-14(%ebp),%ax
	cmpw	$38,%ax
	je	Lj2370
	jmp	Lj2371
Lj2370:
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2372
	jmp	Lj2374
Lj2374:
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RESOLVEPREDEFINED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2372
	jmp	Lj2373
Lj2372:
	jmp	Lj2349
Lj2373:
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__ENTITYCHECK$BOOLEAN$$TENTITYDECL$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj2389
	jmp	Lj2390
Lj2390:
	movl	-12(%ebp),%eax
	movb	158(%eax),%al
	testb	%al,%al
	je	Lj2389
	jmp	Lj2388
Lj2389:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj2387
	jmp	Lj2388
Lj2387:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj2391
	jmp	Lj2392
Lj2391:
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$3,44(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-32(%ebp),%eax
	leal	(%edx,%eax,2),%eax
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,%edi
	movl	-28(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	48(%esi),%eax
	movl	%ebx,%edx
	movl	%edi,%ecx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
Lj2392:
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$5,44(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj2415
	jmp	Lj2416
Lj2415:
	movl	-12(%ebp),%eax
	movl	56(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	52(%eax),%edi
	movl	-28(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	48(%esi),%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	jmp	Lj2423
Lj2416:
	movl	-20(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-28(%ebp),%ebx
	leal	48(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,48(%ebx)
Lj2423:
Lj2388:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-32(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj2428
	jmp	Lj2429
Lj2428:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN$stub
Lj2429:
	jmp	Lj2434
Lj2371:
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	jne	Lj2435
	jmp	Lj2436
Lj2435:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movw	-14(%ebp),%ax
	cmpw	-16(%ebp),%ax
	je	Lj2441
	jmp	Lj2440
Lj2441:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj2439
	jmp	Lj2440
Lj2439:
	jmp	Lj2350
Lj2440:
	movw	-14(%ebp),%ax
	cmpw	$10,%ax
	je	Lj2442
	jmp	Lj2445
Lj2445:
	movw	-14(%ebp),%ax
	cmpw	$9,%ax
	je	Lj2442
	jmp	Lj2444
Lj2444:
	movw	-14(%ebp),%ax
	cmpw	$13,%ax
	je	Lj2442
	jmp	Lj2443
Lj2442:
	movw	$32,-14(%ebp)
Lj2443:
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movw	-14(%ebp),%dx
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	jmp	Lj2452
Lj2436:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj2453
	jmp	Lj2455
Lj2455:
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2453
	jmp	Lj2454
Lj2453:
	movl	-12(%ebp),%eax
	movl	$-1,%ecx
	movl	-36(%ebp),%edx
	movl	L_$XMLREAD$_Ld69$non_lazy_ptr-Lj2333(%edx),%ebx
	movl	%ebx,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2454:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-32(%ebp)
Lj2452:
Lj2434:
Lj2369:
Lj2349:
	jmp	Lj2348
Lj2350:
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj2468
	jmp	Lj2469
Lj2468:
	movl	-12(%ebp),%eax
	movb	$1,212(%eax)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj2472
	jmp	Lj2473
Lj2472:
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$3,44(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-32(%ebp),%edx
	leal	(%eax,%edx,2),%eax
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,%edi
	movl	-28(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	48(%esi),%eax
	movl	%ebx,%edx
	movl	%edi,%ecx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
Lj2473:
Lj2469:
	cmpb	$0,-8(%ebp)
	jne	Lj2488
	jmp	Lj2489
Lj2488:
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	-4(%ebp),%edx
	leal	61(%edx),%edx
	call	L_XMLUTILS_BUFNORMALIZE$TWIDECHARBUF$BOOLEAN$stub
	jmp	Lj2494
Lj2489:
	movl	-4(%ebp),%eax
	movb	$0,61(%eax)
Lj2494:
	movl	-12(%ebp),%eax
	movl	32(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edi
	movl	-4(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	48(%esi),%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ENTITYTOSOURCE$TENTITYDECL$TXMLCHARSOURCE
_XMLREAD_TXMLTEXTREADER_$__ENTITYTOSOURCE$TENTITYDECL$TXMLCHARSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj2504
Lj2504:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,46(%eax)
	jne	Lj2505
	jmp	Lj2506
Lj2505:
	movl	$0,(%esp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%edx
	movl	L_TC_XMLREAD_PREFIXCHAR$non_lazy_ptr-Lj2504(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$18,-20(%ebp)
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld73$non_lazy_ptr-Lj2504(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj2506:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj2519
	jmp	Lj2518
Lj2519:
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj2517
	jmp	Lj2518
Lj2517:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2520
	jmp	Lj2521
Lj2520:
	movl	$-1,(%esp)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$18,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld75$non_lazy_ptr-Lj2504(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj2503
Lj2521:
	jmp	Lj2544
Lj2518:
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	movl	L_VMT_XMLREAD_TXMLCHARSOURCE$non_lazy_ptr-Lj2504(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__CREATE$WIDESTRING$$TXMLCHARSOURCE$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	4(%edx),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj2557
	jmp	Lj2558
Lj2557:
	movl	-4(%ebp),%edi
	movl	32(%edi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	32(%edi),%eax
	movl	%eax,36(%esi)
Lj2558:
Lj2544:
	movl	-4(%ebp),%eax
	movb	$1,46(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
Lj2503:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ENTITYTOSOURCE$TENTITYDECL$TXMLCHARSOURCE$stub
	cmpl	$0,-16(%ebp)
	jne	Lj2573
	jmp	Lj2574
Lj2573:
	movb	$1,-9(%ebp)
	jmp	Lj2575
Lj2574:
	movb	$0,-9(%ebp)
Lj2575:
	cmpb	$0,-9(%ebp)
	jne	Lj2576
	jmp	Lj2577
Lj2576:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub
Lj2577:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,16(%eax)
	jne	Lj2586
	jmp	Lj2585
Lj2586:
	cmpb	$0,-4(%ebp)
	jne	Lj2584
	jmp	Lj2587
Lj2587:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj2584
	jmp	Lj2585
Lj2584:
	movb	$1,-9(%ebp)
	jmp	Lj2588
Lj2585:
	movb	$0,-9(%ebp)
Lj2588:
	cmpb	$0,-9(%ebp)
	jne	Lj2589
	jmp	Lj2590
Lj2589:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	movb	$0,-17(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,20(%eax)
	jne	Lj2595
	jmp	Lj2596
Lj2595:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	movb	$0,46(%eax)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	40(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpb	$0,47(%eax)
	jne	Lj2603
	jmp	Lj2602
Lj2603:
	movl	-8(%ebp),%eax
	cmpb	$0,25(%eax)
	jne	Lj2601
	jmp	Lj2602
Lj2601:
	movb	$1,-17(%ebp)
	jmp	Lj2604
Lj2602:
	movb	$0,-17(%ebp)
Lj2604:
Lj2596:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	cmpb	$0,-17(%ebp)
	jne	Lj2609
	jmp	Lj2610
Lj2609:
	movl	-8(%ebp),%eax
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY$stub
Lj2610:
Lj2590:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ENTITYCHECK$BOOLEAN$$TENTITYDECL
_XMLREAD_TXMLTEXTREADER_$__ENTITYCHECK$BOOLEAN$$TENTITYDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj2616
Lj2616:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2617
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%edi
	movl	-8(%ebp),%eax
	movl	52(%eax),%esi
	leal	-16(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-16(%ebp),%eax
	movl	%edi,%ecx
	movl	%esi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	addl	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj2630
	jmp	Lj2631
Lj2630:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE$stub
	movl	%eax,%esi
	movl	-8(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	%esi,%eax
	call	L_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_DTDMODEL_TENTITYDECL$non_lazy_ptr-Lj2616(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
Lj2631:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2648
	jmp	Lj2649
Lj2648:
	movl	-8(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj2650
	jmp	Lj2653
Lj2653:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj2650
	jmp	Lj2652
Lj2652:
	movl	-8(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj2651
	jmp	Lj2654
Lj2654:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj2651
	jmp	Lj2650
Lj2650:
	movl	$0,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$18,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld77$non_lazy_ptr-Lj2616(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
	jmp	Lj2665
Lj2651:
	movl	$0,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$18,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld79$non_lazy_ptr-Lj2616(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj2665:
	jmp	Lj2617
Lj2649:
	movl	-8(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj2678
	jmp	Lj2677
Lj2678:
	movl	-12(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2676
	jmp	Lj2677
Lj2676:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld81$non_lazy_ptr-Lj2616(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2677:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2685
	jmp	Lj2686
Lj2685:
	movl	$0,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$18,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld83$non_lazy_ptr-Lj2616(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj2686:
	cmpb	$0,-4(%ebp)
	jne	Lj2699
	jmp	Lj2698
Lj2699:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj2697
	jmp	Lj2698
Lj2697:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld85$non_lazy_ptr-Lj2616(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2698:
	movl	-12(%ebp),%eax
	movb	45(%eax),%al
	testb	%al,%al
	je	Lj2706
	jmp	Lj2707
Lj2706:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__LOADENTITY$TENTITYDECL$stub
Lj2707:
	movl	-12(%ebp),%eax
	movl	60(%eax),%ecx
	movl	$0,%esi
	movl	-20(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	%eax,%esi
	jg	Lj2712
	jl	Lj2713
	cmpl	%edx,%ecx
	jae	Lj2712
	jmp	Lj2713
Lj2712:
	movl	-12(%ebp),%eax
	movl	60(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD$stub
Lj2713:
Lj2617:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2618
	call	LFPC_RERAISE$stub
Lj2618:
	movl	-12(%ebp),%eax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__STARTPE
_XMLREAD_TXMLTEXTREADER_$__STARTPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2725
Lj2725:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,84(%eax)
	jne	Lj2728
	jmp	Lj2729
Lj2728:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_DTDMODEL_TENTITYDECL$non_lazy_ptr-Lj2725(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-8(%ebp)
Lj2729:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2742
	jmp	Lj2743
Lj2742:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	addl	$2,%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld87$non_lazy_ptr-Lj2725(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERRORWITHNAME$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,112(%edx)
	jmp	Lj2724
Lj2743:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj2755
	jmp	Lj2753
Lj2755:
	movl	-8(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj2754
	jmp	Lj2753
Lj2754:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PREFETCHENTITY$TENTITYDECL$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2752
	jmp	Lj2753
Lj2752:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,112(%edx)
	jmp	Lj2724
Lj2753:
	movl	-8(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	25(%eax),%al
	testb	%al,%al
	seteb	47(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	$1,24(%eax)
Lj2724:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PREFETCHENTITY$TENTITYDECL$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__PREFETCHENTITY$TENTITYDECL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj2775
Lj2775:
	popl	-100(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2776
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj2785
	jmp	Lj2786
Lj2785:
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2787
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	movl	$0,(%esp)
	movl	-100(%ebp),%eax
	movl	L_$XMLREAD$_Ld89$non_lazy_ptr-Lj2775(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	28(%eax),%edi
	movl	-4(%ebp),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	36(%esi),%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,60(%edx)
	movl	-4(%ebp),%eax
	movl	$1,52(%eax)
	movl	-4(%ebp),%eax
	movl	$1,56(%eax)
	leal	-96(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-96(%ebp),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-96(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	movl	%eax,32(%ebx)
Lj2787:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	$1,44(%eax)
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2788
	decl	%eax
	testl	%eax,%eax
	je	Lj2789
Lj2789:
	call	LFPC_RERAISE$stub
Lj2788:
Lj2786:
Lj2776:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2777
	call	LFPC_RERAISE$stub
Lj2777:
	movb	-9(%ebp),%al
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj2828
Lj2828:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	8(%ebp),%cl
	leal	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN$stub
	movw	-24(%ebp),%ax
	testw	%ax,%ax
	setneb	-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2837
	jmp	Lj2838
Lj2837:
	jmp	Lj2827
Lj2838:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj2843:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	shll	$5,%edx
	movl	L_TC_XMLREAD_LITERALDELIMS$non_lazy_ptr-Lj2828(%ebx),%ecx
	leal	(%ecx,%edx),%edx
	movl	-4(%ebp),%edi
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%esi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	*108(%esi)
	movw	%ax,-22(%ebp)
	movw	-22(%ebp),%ax
	cmpw	$37,%ax
	je	Lj2856
	jmp	Lj2857
Lj2856:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	$0,%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movw	$59,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	je	Lj2868
	jmp	Lj2869
Lj2868:
	movl	-12(%ebp),%eax
	movl	56(%eax),%ecx
	addl	$2,%ecx
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld90$non_lazy_ptr-Lj2828(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2869:
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STARTPE$stub
	jmp	Lj2878
Lj2857:
	movw	-22(%ebp),%ax
	cmpw	$38,%ax
	je	Lj2879
	jmp	Lj2880
Lj2879:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2881
	jmp	Lj2882
Lj2881:
	jmp	Lj2844
Lj2882:
	movl	-4(%ebp),%eax
	movw	$38,%dx
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	movl	-12(%ebp),%eax
	movl	56(%eax),%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub
	movl	-4(%ebp),%eax
	movw	$59,%dx
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	jmp	Lj2901
Lj2880:
	movw	-22(%ebp),%ax
	testw	%ax,%ax
	jne	Lj2902
	jmp	Lj2903
Lj2902:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movw	-22(%ebp),%ax
	cmpw	$10,%ax
	je	Lj2906
	jmp	Lj2908
Lj2908:
	movw	-22(%ebp),%ax
	cmpw	$13,%ax
	je	Lj2906
	jmp	Lj2907
Lj2906:
	movw	$32,-22(%ebp)
	jmp	Lj2911
Lj2907:
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	je	Lj2914
	jmp	Lj2913
Lj2914:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj2912
	jmp	Lj2913
Lj2912:
	jmp	Lj2845
Lj2913:
Lj2911:
	movw	-22(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	jmp	Lj2919
Lj2903:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj2920
	jmp	Lj2922
Lj2922:
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2920
	jmp	Lj2921
Lj2920:
	movl	-12(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld69$non_lazy_ptr-Lj2828(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2921:
Lj2919:
Lj2901:
Lj2878:
Lj2844:
	jmp	Lj2843
Lj2845:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2933
	jmp	Lj2934
Lj2933:
	leal	-25(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFNORMALIZE$TWIDECHARBUF$BOOLEAN$stub
Lj2934:
Lj2827:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__SKIPUNTILSEQ$TSETOFCHAR$WIDECHAR$WIDECHAR$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__SKIPUNTILSEQ$TSETOFCHAR$WIDECHAR$WIDECHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	leal	64(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	.align 2
Lj2947:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movw	%ax,-16(%ebp)
	movw	-16(%ebp),%ax
	testw	%ax,%ax
	jne	Lj2960
	jmp	Lj2961
Lj2960:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movw	8(%ebp),%ax
	testw	%ax,%ax
	setneb	%al
	movzbl	%al,%eax
	movl	-12(%ebp),%edx
	cmpl	32(%edx),%eax
	jl	Lj2964
	jmp	Lj2965
Lj2964:
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	-8(%ebp),%ax
	je	Lj2970
	jmp	Lj2969
Lj2970:
	movw	8(%ebp),%ax
	testw	%ax,%ax
	je	Lj2968
	jmp	Lj2971
Lj2971:
	movw	8(%ebp),%ax
	testw	%ax,%ax
	jne	Lj2972
	jmp	Lj2969
Lj2972:
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	subl	$2,%eax
	movw	(%edx,%eax,2),%ax
	cmpw	8(%ebp),%ax
	je	Lj2968
	jmp	Lj2969
Lj2968:
	movw	8(%ebp),%ax
	testw	%ax,%ax
	setneb	%al
	movzbl	%al,%eax
	incl	%eax
	movl	-12(%ebp),%edx
	subl	%eax,32(%edx)
	movb	$1,-13(%ebp)
	jmp	Lj2939
Lj2969:
Lj2965:
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movw	-16(%ebp),%dx
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
Lj2961:
	movw	-16(%ebp),%ax
	testw	%ax,%ax
	je	Lj2949
	jmp	Lj2947
Lj2949:
Lj2939:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2982
Lj2982:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld92$non_lazy_ptr-Lj2982(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
	movw	$0,(%esp)
	movl	L_$XMLREAD$_Ld94$non_lazy_ptr-Lj2982(%ebx),%edx
	movl	-8(%ebp),%eax
	movw	$45,%cx
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPUNTILSEQ$TSETOFCHAR$WIDECHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2989
	jmp	Lj2990
Lj2989:
	movl	-8(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld95$non_lazy_ptr-Lj2982(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj2990:
	movl	-8(%ebp),%eax
	movw	$62,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj3009
	jmp	Lj3010
Lj3009:
	movl	-8(%ebp),%eax
	movl	192(%eax),%edx
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	incl	%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	$8,44(%eax)
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	leal	(%eax,%edx,2),%edx
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	%edx,52(%eax)
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	%edx,56(%eax)
Lj3010:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEPI
_XMLREAD_TXMLTEXTREADER_$__PARSEPI:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj3024
Lj3024:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME$stub
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	%eax,%ebx
	movl	4(%ebx),%eax
	cmpl	$3,%eax
	je	Lj3039
	jmp	Lj3036
Lj3039:
	movl	(%ebx),%eax
	movw	(%eax),%ax
	cmpw	$88,%ax
	je	Lj3038
	jmp	Lj3040
Lj3040:
	movl	(%ebx),%eax
	movw	(%eax),%ax
	cmpw	$120,%ax
	je	Lj3038
	jmp	Lj3036
Lj3038:
	movl	(%ebx),%eax
	movw	2(%eax),%ax
	cmpw	$77,%ax
	je	Lj3037
	jmp	Lj3041
Lj3041:
	movl	(%ebx),%eax
	movw	2(%eax),%ax
	cmpw	$109,%ax
	je	Lj3037
	jmp	Lj3036
Lj3037:
	movl	(%ebx),%eax
	movw	4(%eax),%ax
	cmpw	$76,%ax
	je	Lj3035
	jmp	Lj3042
Lj3042:
	movl	(%ebx),%eax
	movw	4(%eax),%ax
	cmpw	$108,%ax
	je	Lj3035
	jmp	Lj3036
Lj3035:
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	L_$XMLREAD$_Ld97$non_lazy_ptr-Lj3024(%esi),%edx
	call	L_XMLUTILS_BUFEQUALS$TWIDECHARBUF$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3043
	jmp	Lj3044
Lj3043:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld99$non_lazy_ptr-Lj3024(%esi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
	jmp	Lj3055
Lj3044:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld101$non_lazy_ptr-Lj3024(%esi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3055:
Lj3036:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$63,%ax
	jne	Lj3062
	jmp	Lj3063
Lj3062:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj3063:
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movw	$0,(%esp)
	movl	L_TC_XMLREAD_GT_DELIM$non_lazy_ptr-Lj3024(%esi),%edx
	movl	-4(%ebp),%eax
	movw	$63,%cx
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPUNTILSEQ$TSETOFCHAR$WIDECHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3070
	jmp	Lj3071
Lj3070:
	movl	-4(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld103$non_lazy_ptr-Lj3024(%esi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3071:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	$7,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM$stub
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CREATEPINODE$$TDOMNODE
_XMLREAD_TXMLTEXTREADER_$__CREATEPINODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3100
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	52(%eax),%esi
	leal	-12(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-12(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	leal	-16(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-16(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	216(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*216(%ebx)
	movl	%eax,-8(%ebp)
Lj3100:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3101
	call	LFPC_RERAISE$stub
Lj3101:
	movl	-8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEXMLORTEXTDECL$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__PARSEXMLORTEXTDECL$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	call	Lj3136
Lj3136:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-124(%ebp)
	leal	-92(%ebp),%ecx
	leal	-116(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-120(%ebp)
	testl	%eax,%eax
	jne	Lj3137
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj3144
	jmp	Lj3146
Lj3146:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$118,%ax
	je	Lj3144
	jmp	Lj3145
Lj3144:
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld105$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ$stub
	leal	-10(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN$stub
	movl	$0,-80(%ebp)
	jmp	Lj3162
	.align 2
Lj3161:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-80(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,-74(%ebp,%edx,2)
	incl	-80(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
Lj3162:
	movl	-80(%ebp),%eax
	cmpl	$3,%eax
	jl	Lj3168
	jmp	Lj3163
Lj3168:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	-10(%ebp),%ax
	jne	Lj3161
	jmp	Lj3163
Lj3163:
	movl	-80(%ebp),%eax
	cmpl	$3,%eax
	jne	Lj3169
	jmp	Lj3173
Lj3173:
	movw	-74(%ebp),%ax
	cmpw	$49,%ax
	jne	Lj3169
	jmp	Lj3172
Lj3172:
	movw	-72(%ebp),%ax
	cmpw	$46,%ax
	jne	Lj3169
	jmp	Lj3171
Lj3171:
	movw	-70(%ebp),%ax
	cmpw	$48,%ax
	jne	Lj3174
	jmp	Lj3170
Lj3174:
	movw	-70(%ebp),%ax
	cmpw	$49,%ax
	jne	Lj3169
	jmp	Lj3170
Lj3169:
	movl	-8(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld107$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3170:
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movw	-70(%ebp),%ax
	cmpw	$49,%ax
	seteb	%al
	movzbl	%al,%eax
	movl	L_TC_XMLREAD_VERS$non_lazy_ptr-Lj3136(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,48(%ecx)
	cmpb	$0,-4(%ebp)
	jne	Lj3190
	jmp	Lj3188
Lj3190:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	48(%eax),%eax
	cmpl	$2,%eax
	je	Lj3189
	jmp	Lj3188
Lj3189:
	movl	-8(%ebp),%eax
	movb	16(%eax),%al
	testb	%al,%al
	je	Lj3187
	jmp	Lj3188
Lj3187:
	movl	-8(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld109$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3188:
	cmpb	$0,-4(%ebp)
	jne	Lj3197
	jmp	Lj3199
Lj3199:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$63,%ax
	jne	Lj3197
	jmp	Lj3198
Lj3197:
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj3198:
Lj3145:
	cmpb	$0,-4(%ebp)
	jne	Lj3204
	jmp	Lj3206
Lj3206:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$101,%ax
	je	Lj3204
	jmp	Lj3205
Lj3204:
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld111$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ$stub
	leal	-10(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN$stub
	movl	$0,-80(%ebp)
	jmp	Lj3222
	.align 2
Lj3221:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-80(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,-74(%ebp,%edx,2)
	incl	-80(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
Lj3222:
	movl	-80(%ebp),%eax
	cmpl	$30,%eax
	jl	Lj3230
	jmp	Lj3223
Lj3230:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	-10(%ebp),%ax
	jne	Lj3229
	jmp	Lj3223
Lj3229:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$127,%ax
	jb	Lj3228
	jmp	Lj3223
Lj3228:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj3232
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj3232
Lj3232:
	jc	Lj3221
	jmp	Lj3231
Lj3231:
	movl	-80(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3233
	jmp	Lj3223
Lj3233:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movzbl	(%eax),%eax
	subl	$45,%eax
	cmpl	$2,%eax
	jb	Lj3234
	subl	$3,%eax
	cmpl	$10,%eax
	jb	Lj3234
	cmpl	$47,%eax
	stc
	je	Lj3234
	clc
Lj3234:
	jc	Lj3221
	jmp	Lj3223
Lj3223:
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3235
	jmp	Lj3236
Lj3235:
	movl	-80(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld113$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3236:
	movl	-8(%ebp),%eax
	movl	4(%eax),%esi
	leal	52(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	52(%esi),%eax
	leal	-74(%ebp),%edx
	movl	-80(%ebp),%ecx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	52(%eax),%eax
	leal	-124(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-124(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	testb	%al,%al
	je	Lj3253
	jmp	Lj3254
Lj3253:
	movl	$0,4(%esp)
	movl	-80(%ebp),%eax
	incl	%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	52(%eax),%eax
	movl	%eax,-128(%ebp)
	movl	$18,-132(%ebp)
	leal	-132(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld115$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj3254:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$63,%ax
	jne	Lj3273
	jmp	Lj3274
Lj3273:
	movb	-4(%ebp),%al
	testb	%al,%al
	seteb	%dl
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj3274:
Lj3205:
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj3281
	jmp	Lj3280
Lj3281:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$115,%ax
	je	Lj3279
	jmp	Lj3280
Lj3279:
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld117$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ$stub
	leal	-10(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld119$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3294
	jmp	Lj3295
Lj3294:
	movl	-8(%ebp),%eax
	movb	$1,72(%eax)
	jmp	Lj3302
Lj3295:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld121$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3303
	jmp	Lj3304
Lj3303:
	movl	-8(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld123$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3304:
Lj3302:
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj3280:
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld125$non_lazy_ptr-Lj3136(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	48(%eax),%eax
	cmpl	$2,%eax
	je	Lj3327
	jmp	Lj3328
Lj3327:
	movl	-8(%ebp),%eax
	movb	$1,16(%eax)
Lj3328:
Lj3137:
	call	LFPC_POPADDRSTACK$stub
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	movl	-120(%ebp),%eax
	testl	%eax,%eax
	je	Lj3138
	call	LFPC_RERAISE$stub
Lj3138:
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DTDRELOADHOOK
_XMLREAD_TXMLTEXTREADER_$__DTDRELOADHOOK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj3336
	.align 2
Lj3335:
	jmp	Lj3339
	.align 2
Lj3338:
	addl	$2,-8(%ebp)
Lj3339:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj3341
	jmp	Lj3340
Lj3341:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$13,%ax
	jne	Lj3338
	jmp	Lj3340
Lj3340:
	movl	-4(%ebp),%eax
	movl	92(%eax),%edx
	movl	-4(%ebp),%eax
	leal	96(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$13,%ax
	je	Lj3348
	jmp	Lj3349
Lj3348:
	addl	$2,-8(%ebp)
Lj3349:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,92(%edx)
Lj3336:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj3335
	jmp	Lj3337
Lj3337:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	68(%eax),%eax
	movl	%eax,92(%edx)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEDOCTYPEDECL
_XMLREAD_TXMLTEXTREADER_$__PARSEDOCTYPEDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj3355
Lj3355:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3356
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1,%eax
	jae	Lj3359
	jmp	Lj3360
Lj3359:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld127$non_lazy_ptr-Lj3355(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3360:
	movl	-4(%ebp),%eax
	cmpb	$0,163(%eax)
	jne	Lj3367
	jmp	Lj3368
Lj3367:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld129$non_lazy_ptr-Lj3355(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3368:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld131$non_lazy_ptr-Lj3355(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	L_VMT_DTDMODEL_TDTDMODEL$non_lazy_ptr-Lj3355(%ebx),%edx
	movl	$0,%eax
	call	L_DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL$stub
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movb	$1,112(%eax)
	movl	-4(%ebp),%eax
	movl	$1,20(%eax)
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-4(%ebp),%eax
	movl	80(%eax),%esi
	leal	20(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,20(%esi)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	28(%esi),%edi
	movl	-4(%ebp),%eax
	movl	80(%eax),%esi
	leal	24(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	24(%esi),%edx
	movl	-4(%ebp),%eax
	movl	%edi,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movw	$91,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3417
	jmp	Lj3418
Lj3417:
	movl	-4(%ebp),%eax
	leal	96(%eax),%eax
	movl	$256,%edx
	call	L_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	$1,56(%eax)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3429
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,92(%edx)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DTDRELOADHOOK$stub
	movl	-4(%ebp),%eax
	movl	80(%eax),%esi
	leal	32(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	32(%esi),%eax
	movl	-4(%ebp),%edx
	movl	100(%edx),%ecx
	movl	-4(%ebp),%edx
	movl	96(%edx),%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
Lj3429:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	$0,56(%eax)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3430
	decl	%eax
	testl	%eax,%eax
	je	Lj3431
Lj3431:
	call	LFPC_RERAISE$stub
Lj3430:
	movl	-4(%ebp),%eax
	movw	$93,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj3418:
	movl	-4(%ebp),%eax
	movw	$62,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj3461
	jmp	Lj3462
Lj3461:
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3463
	jmp	Lj3464
Lj3463:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3483
	movl	-8(%ebp),%eax
	movl	$2,56(%eax)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL$stub
Lj3483:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3484
	decl	%eax
	testl	%eax,%eax
	je	Lj3485
Lj3485:
	call	LFPC_RERAISE$stub
Lj3484:
	jmp	Lj3495
Lj3464:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-60(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld133$non_lazy_ptr-Lj3355(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,112(%edx)
Lj3495:
Lj3462:
	movl	-4(%ebp),%eax
	movl	$2,20(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$10,44(%eax)
Lj3356:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3357
	call	LFPC_RERAISE$stub
Lj3357:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ
_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj3513
Lj3513:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$61,%ax
	jne	Lj3514
	jmp	Lj3515
Lj3514:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj3515:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$61,%ax
	jne	Lj3520
	jmp	Lj3521
Lj3520:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld135$non_lazy_ptr-Lj3513(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3521:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY
_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3535
Lj3535:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3536
	jmp	Lj3538
Lj3538:
	movl	-8(%ebp),%eax
	cmpb	$0,156(%eax)
	jne	Lj3536
	jmp	Lj3537
Lj3536:
	movl	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld137$non_lazy_ptr-Lj3535(%ebx),%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT$stub
Lj3537:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__STANDALONEERROR$LONGINT
_XMLREAD_TXMLTEXTREADER_$__STANDALONEERROR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj3548
Lj3548:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld139$non_lazy_ptr-Lj3548(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEQUANTITY$$TCPQUANT
_XMLREAD_TXMLTEXTREADER_$__PARSEQUANTITY$$TCPQUANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$42,%ax
	jb	Lj3562
	subw	$42,%ax
	je	Lj3564
	decw	%ax
	je	Lj3565
	subw	$20,%ax
	je	Lj3563
	jmp	Lj3562
Lj3563:
	movl	$1,-8(%ebp)
	jmp	Lj3561
Lj3564:
	movl	$2,-8(%ebp)
	jmp	Lj3561
Lj3565:
	movl	$3,-8(%ebp)
	jmp	Lj3561
Lj3562:
	movl	$0,-8(%ebp)
	jmp	Lj3559
Lj3561:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
Lj3559:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL
_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3577
Lj3577:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3592
	jmp	Lj3593
Lj3592:
	movl	L_VMT_DTDMODEL_TELEMENTDECL$non_lazy_ptr-Lj3577(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
Lj3593:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTCHOICEORSEQ$TCONTENTPARTICLE$TOBJECT
_XMLREAD_TXMLTEXTREADER_$__EXPECTCHOICEORSEQ$TCONTENTPARTICLE$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj3603
Lj3603:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	$0,-14(%ebp)
	.align 2
Lj3606:
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ADD$$TCONTENTPARTICLE$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movw	$40,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3617
	jmp	Lj3618
Lj3617:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHOICEORSEQ$TCONTENTPARTICLE$TOBJECT$stub
	jmp	Lj3629
Lj3618:
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL$stub
	movl	-20(%ebp),%edx
	movl	%eax,16(%edx)
Lj3629:
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEQUANTITY$$TCPQUANT$stub
	movl	-20(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$41,%ax
	je	Lj3642
	jmp	Lj3643
Lj3642:
	jmp	Lj3608
Lj3643:
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	je	Lj3644
	jmp	Lj3645
Lj3644:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$124,%ax
	je	Lj3646
	jmp	Lj3648
Lj3648:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$44,%ax
	je	Lj3646
	jmp	Lj3647
Lj3646:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	jmp	Lj3651
Lj3647:
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld141$non_lazy_ptr-Lj3603(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3651:
	jmp	Lj3658
Lj3645:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	-14(%ebp),%ax
	jne	Lj3659
	jmp	Lj3660
Lj3659:
	movw	-14(%ebp),%dx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR$stub
Lj3660:
Lj3658:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	jmp	Lj3606
Lj3608:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj3667
	jmp	Lj3668
Lj3667:
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY$stub
Lj3668:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movw	-14(%ebp),%ax
	cmpw	$124,%ax
	je	Lj3675
	jmp	Lj3676
Lj3675:
	movl	-4(%ebp),%eax
	movl	$1,20(%eax)
	jmp	Lj3679
Lj3676:
	movl	-4(%ebp),%eax
	movl	$2,20(%eax)
Lj3679:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEELEMENTDECL
_XMLREAD_TXMLTEXTREADER_$__PARSEELEMENTDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj3683
Lj3683:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj3694
	jmp	Lj3695
Lj3694:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld143$non_lazy_ptr-Lj3683(%edi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERRORWITHNAME$ANSISTRING$LONGINT$stub
Lj3695:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	setneb	-25(%ebp)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld145$non_lazy_ptr-Lj3683(%edi),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3706
	jmp	Lj3707
Lj3706:
	movl	$2,-24(%ebp)
	jmp	Lj3714
Lj3707:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld147$non_lazy_ptr-Lj3683(%edi),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3715
	jmp	Lj3716
Lj3715:
	movl	$1,-24(%ebp)
	jmp	Lj3723
Lj3716:
	movl	-4(%ebp),%eax
	movw	$40,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3724
	jmp	Lj3725
Lj3724:
	movl	L_VMT_DTDMODEL_TCONTENTPARTICLE$non_lazy_ptr-Lj3683(%edi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-20(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj3738
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld149$non_lazy_ptr-Lj3683(%edi),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3748
	jmp	Lj3749
Lj3748:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	$3,-24(%ebp)
	jmp	Lj3761
	.align 2
Lj3760:
	movl	-4(%ebp),%eax
	movw	$124,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-20(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ADD$$TCONTENTPARTICLE$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL$stub
	movl	%eax,16(%esi)
	movl	-20(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	subl	$2,%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj3782
	incl	-16(%ebp)
	.align 2
Lj3783:
	decl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub
	movl	16(%esi),%edx
	cmpl	16(%eax),%edx
	je	Lj3786
	jmp	Lj3787
Lj3786:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,(%esp)
	leal	-76(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld151$non_lazy_ptr-Lj3683(%edi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj3787:
	cmpl	$0,-16(%ebp)
	jg	Lj3783
Lj3782:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
Lj3761:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$41,%ax
	jne	Lj3760
	jmp	Lj3762
Lj3762:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj3806
	jmp	Lj3807
Lj3806:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY$stub
Lj3807:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-4(%ebp),%eax
	movw	$42,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3816
	jmp	Lj3815
Lj3816:
	movl	-20(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3814
	jmp	Lj3815
Lj3814:
	movl	-4(%ebp),%eax
	movw	$42,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR$stub
Lj3815:
	movl	-20(%ebp),%eax
	movl	$2,24(%eax)
	movl	-20(%ebp),%eax
	movl	$1,20(%eax)
	jmp	Lj3831
Lj3749:
	movl	$4,-24(%ebp)
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHOICEORSEQ$TCONTENTPARTICLE$TOBJECT$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEQUANTITY$$TCPQUANT$stub
	movl	-20(%ebp),%edx
	movl	%eax,24(%edx)
Lj3831:
Lj3738:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj3740
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj3845
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3845:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj3844
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3844:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3740
Lj3740:
	jmp	Lj3848
Lj3725:
	movl	-4(%ebp),%ebx
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld153$non_lazy_ptr-Lj3683(%edi),%edx
	movl	%ebx,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3848:
Lj3723:
Lj3714:
	movl	-4(%ebp),%edx
	cmpb	$0,112(%edx)
	jne	Lj3857
	jmp	Lj3856
Lj3857:
	movl	-8(%ebp),%edx
	movl	16(%edx),%edx
	testl	%edx,%edx
	je	Lj3855
	jmp	Lj3856
Lj3855:
	movl	-8(%ebp),%ecx
	movb	-25(%ebp),%dl
	movb	%dl,4(%ecx)
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	%edx,16(%ecx)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%edx,28(%ecx)
	jmp	Lj3864
Lj3856:
	movl	-20(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj3864:
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSENOTATIONDECL
_XMLREAD_TXMLTEXTREADER_$__PARSENOTATIONDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj3868
Lj3868:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3869
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movb	$1,(%esp)
	leal	-16(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-16(%ebp),%esi
	leal	-12(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%esi,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3882
	jmp	Lj3883
Lj3882:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld155$non_lazy_ptr-Lj3868(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj3883:
	movl	-4(%ebp),%eax
	cmpb	$0,112(%eax)
	jne	Lj3898
	jmp	Lj3899
Lj3898:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING$stub
Lj3899:
Lj3869:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-8(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3870
	call	LFPC_RERAISE$stub
Lj3870:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEATTLISTDECL
_XMLREAD_TXMLTEXTREADER_$__PARSEATTLISTDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	call	Lj3927
Lj3927:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	jmp	Lj3939
	.align 2
Lj3938:
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%ecx
	movl	L_VMT_DTDMODEL_TATTRIBUTEDEF$non_lazy_ptr-Lj3927(%ebx),%edx
	movl	$0,%eax
	call	L_DTDMODEL_TATTRIBUTEDEF_$__CREATE$PHASHITEM$LONGINT$$TATTRIBUTEDEF$stub
	movl	%eax,-12(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj3971
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	setneb	4(%edx)
	movl	-4(%ebp),%eax
	movb	112(%eax),%al
	testb	%al,%al
	je	Lj3977
	jmp	Lj3979
Lj3979:
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF$stub
	testl	%eax,%eax
	jne	Lj3977
	jmp	Lj3978
Lj3977:
	movb	$1,-18(%ebp)
	jmp	Lj3984
Lj3978:
	movb	$0,-18(%ebp)
Lj3984:
	movl	-4(%ebp),%eax
	movw	$40,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3985
	jmp	Lj3986
Lj3985:
	movl	-12(%ebp),%eax
	movl	$6,12(%eax)
	.align 2
Lj3993:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	$2,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DTDMODEL_TATTRIBUTEDEF_$__ADDENUMTOKEN$PWIDECHAR$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4004
	jmp	Lj4005
Lj4004:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld175$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4005:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movw	$124,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3993
	jmp	Lj3995
Lj3995:
	movl	-4(%ebp),%eax
	movw	$41,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	jmp	Lj4036
Lj3986:
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	$8,-16(%ebp)
	incl	-16(%ebp)
	.align 2
Lj4043:
	decl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	L_TC_XMLREAD_ATTRDATATYPENAMES$non_lazy_ptr-Lj3927(%ebx),%edx
	movl	(%edx,%ecx,4),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj4050
	jmp	Lj4051
Lj4050:
	jmp	Lj4042
Lj4051:
	cmpl	$0,-16(%ebp)
	ja	Lj4043
Lj4042:
	cmpb	$0,-17(%ebp)
	jne	Lj4054
	jmp	Lj4053
Lj4054:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4052
	jmp	Lj4053
Lj4052:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	je	Lj4063
	jmp	Lj4062
Lj4063:
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj4061
	jmp	Lj4062
Lj4061:
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj4064
	jmp	Lj4065
Lj4064:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld177$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	jmp	Lj4076
Lj4065:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,20(%edx)
Lj4076:
	jmp	Lj4079
Lj4062:
	movl	-16(%ebp),%eax
	cmpl	$8,%eax
	je	Lj4080
	jmp	Lj4081
Lj4080:
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj4082
	jmp	Lj4083
Lj4082:
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj4084
	jmp	Lj4085
Lj4084:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld179$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	jmp	Lj4096
Lj4085:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
Lj4096:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$2,%eax
	je	Lj4099
	jmp	Lj4100
Lj4099:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld181$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4100:
Lj4083:
	movl	-4(%ebp),%eax
	movw	$40,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	.align 2
Lj4115:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DTDMODEL_TATTRIBUTEDEF_$__ADDENUMTOKEN$PWIDECHAR$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4132
	jmp	Lj4133
Lj4132:
	movl	$-1,4(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld183$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4133:
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj4152
	jmp	Lj4151
Lj4152:
	movl	-4(%ebp),%eax
	cmpb	$0,156(%eax)
	jne	Lj4150
	jmp	Lj4151
Lj4150:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT$stub
Lj4151:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movw	$124,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4115
	jmp	Lj4117
Lj4117:
	movl	-4(%ebp),%eax
	movw	$41,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
Lj4081:
Lj4079:
	jmp	Lj4173
Lj4053:
	movl	$0,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	L_TC_XMLREAD_ATTRDATATYPENAMES$non_lazy_ptr-Lj3927(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj4178
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4178:
	movl	%eax,-24(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj4181
	jmp	Lj4180
Lj4181:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$65,%ax
	jb	Lj4179
	jmp	Lj4180
Lj4179:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	jmp	Lj4184
Lj4180:
	movl	$0,4(%esp)
	movzbl	-17(%ebp),%eax
	movl	-28(%ebp,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$18,-80(%ebp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld185$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4184:
Lj4173:
Lj4036:
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld187$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4199
	jmp	Lj4200
Lj4199:
	movl	-12(%ebp),%eax
	movl	$2,16(%eax)
	jmp	Lj4207
Lj4200:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld189$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4208
	jmp	Lj4209
Lj4208:
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj4216
Lj4209:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld191$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4217
	jmp	Lj4218
Lj4217:
	movl	-12(%ebp),%eax
	movl	$3,16(%eax)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	jmp	Lj4227
Lj4218:
	movl	-12(%ebp),%eax
	movl	$1,16(%eax)
Lj4227:
Lj4216:
Lj4207:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj4232
	cmpl	$3,%eax
	je	Lj4232
Lj4232:
	je	Lj4230
	jmp	Lj4231
Lj4230:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$1,%eax
	je	Lj4233
	jmp	Lj4234
Lj4233:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld193$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4234:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	setneb	%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTATTVALUE$PNODEDATA$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	48(%eax),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRSYNTAX$TATTRIBUTEDEF$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4251
	jmp	Lj4252
Lj4251:
	movl	$-1,(%esp)
	movl	$0,4(%esp)
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$18,-80(%ebp)
	leal	-80(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld195$non_lazy_ptr-Lj3927(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4252:
Lj4231:
	cmpb	$0,-18(%ebp)
	jne	Lj4269
	jmp	Lj4270
Lj4269:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	jmp	Lj4273
Lj4270:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__ADDATTRDEF$TATTRIBUTEDEF$stub
Lj4273:
Lj3971:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj3973
	leal	-92(%ebp),%ecx
	leal	-116(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj4279
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4279:
	call	LFPC_POPADDRSTACK$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj4278
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4278:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3973
Lj3973:
	movl	-4(%ebp),%ecx
	movb	$0,%dl
	movl	%ecx,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
Lj3939:
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	4(%edx),%edx
	movw	(%edx),%dx
	cmpw	$62,%dx
	jne	Lj3938
	jmp	Lj3940
Lj3940:
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEENTITYDECL
_XMLREAD_TXMLTEXTREADER_$__PARSEENTITYDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-160(%ebp)
	movl	%esi,-156(%ebp)
	movl	%edi,-152(%ebp)
	call	Lj4287
Lj4287:
	popl	-148(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj4288
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4291
	jmp	Lj4292
Lj4291:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-148(%ebp),%edx
	movl	L_$XMLREAD$_Ld49$non_lazy_ptr-Lj4287(%edx),%ebx
	movl	%ebx,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj4292:
	movl	-4(%ebp),%eax
	movw	$37,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj4309
	jmp	Lj4310
Lj4309:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	je	Lj4313
	jmp	Lj4314
Lj4313:
	movb	$1,(%esp)
	movl	-148(%ebp),%eax
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj4287(%eax),%edx
	movl	$64,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,84(%edx)
Lj4314:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4327
Lj4310:
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE$stub
	movl	%eax,-16(%ebp)
Lj4327:
	movl	-148(%ebp),%eax
	movl	L_VMT_DTDMODEL_TENTITYDECL$non_lazy_ptr-Lj4287(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj4340
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	setneb	4(%edx)
	movl	-12(%ebp),%eax
	movb	-5(%ebp),%dl
	movb	%dl,48(%eax)
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME$stub
	leal	-6(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-16(%ebp),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-104(%ebp),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-104(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-104(%ebp),%eax
	movl	%eax,32(%ebx)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj4372
	jmp	Lj4373
Lj4372:
	movl	-4(%ebp),%eax
	leal	40(%eax),%eax
	movl	$256,%edx
	call	L_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT$stub
Lj4373:
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	leal	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4378
	jmp	Lj4379
Lj4378:
	movl	-4(%ebp),%eax
	movl	44(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	40(%eax),%edi
	movl	-12(%ebp),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	36(%esi),%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,60(%edx)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	64(%edx),%eax
	movl	%eax,52(%ecx)
	movl	68(%edx),%eax
	movl	%eax,56(%ecx)
	jmp	Lj4398
Lj4379:
	movb	$0,(%esp)
	movl	-12(%ebp),%ebx
	leal	20(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	20(%ebx),%ebx
	movl	-12(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	24(%esi),%edx
	movl	-4(%ebp),%eax
	movl	%ebx,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4399
	jmp	Lj4400
Lj4399:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	-148(%ebp),%edx
	movl	L_$XMLREAD$_Ld197$non_lazy_ptr-Lj4287(%edx),%ebx
	movl	%ebx,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj4400:
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj4415
	jmp	Lj4416
Lj4415:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$62,%ax
	jne	Lj4417
	jmp	Lj4418
Lj4417:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
Lj4418:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-148(%ebp),%ecx
	movl	L_$XMLREAD$_Ld199$non_lazy_ptr-Lj4287(%ecx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4421
	jmp	Lj4422
Lj4421:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING$stub
	movl	-104(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-104(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-4(%ebp),%eax
	cmpb	$0,156(%eax)
	jne	Lj4439
	jmp	Lj4440
Lj4439:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT$stub
Lj4440:
Lj4422:
Lj4416:
Lj4398:
Lj4340:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj4342
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj4448
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4448:
	call	LFPC_POPADDRSTACK$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj4447
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4447:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4342
Lj4342:
	movl	-4(%ebp),%edx
	cmpb	$0,112(%edx)
	jne	Lj4453
	jmp	Lj4452
Lj4453:
	movb	-6(%ebp),%dl
	testb	%dl,%dl
	je	Lj4451
	jmp	Lj4452
Lj4451:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	%ecx,12(%edx)
	movl	-20(%ebp),%esi
	movl	(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%esi),%edx
	movl	%edx,8(%ebx)
	jmp	Lj4458
Lj4452:
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj4458:
Lj4288:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj4289
	call	LFPC_RERAISE$stub
Lj4289:
	movl	-160(%ebp),%ebx
	movl	-156(%ebp),%esi
	movl	-152(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL
_XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	call	Lj4462
Lj4462:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	.align 2
Lj4467:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$93,%ax
	je	Lj4476
	jmp	Lj4475
Lj4476:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4474
	jmp	Lj4475
Lj4474:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld201$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	decl	-8(%ebp)
	jmp	Lj4468
Lj4475:
	movl	-4(%ebp),%eax
	movw	$60,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4481
	jmp	Lj4482
Lj4481:
	jmp	Lj4469
Lj4482:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$63,%ax
	je	Lj4489
	jmp	Lj4490
Lj4489:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEPI$stub
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATEPINODE$$TDOMNODE$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
	jmp	Lj4499
Lj4490:
	movl	-4(%ebp),%eax
	movw	$33,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$45,%ax
	je	Lj4504
	jmp	Lj4505
Lj4504:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN$stub
	jmp	Lj4510
Lj4505:
	movl	-4(%ebp),%eax
	movw	$91,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4511
	jmp	Lj4512
Lj4511:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	je	Lj4517
	jmp	Lj4518
Lj4517:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	L_$XMLREAD$_Ld203$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj4518:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	$0,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld205$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4531
	jmp	Lj4532
Lj4531:
	movl	$1,-40(%ebp)
	jmp	Lj4539
Lj4532:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld207$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4540
	jmp	Lj4541
Lj4540:
	movl	$2,-40(%ebp)
	jmp	Lj4548
Lj4541:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld209$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj4548:
Lj4539:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj4559
	jmp	Lj4560
Lj4559:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY$stub
Lj4560:
	movl	-4(%ebp),%eax
	movw	$91,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	je	Lj4569
	jmp	Lj4570
Lj4569:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4571
	jmp	Lj4572
Lj4571:
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
Lj4572:
	incl	-8(%ebp)
	jmp	Lj4577
Lj4570:
	movl	-40(%ebp),%eax
	cmpl	$2,%eax
	je	Lj4578
	jmp	Lj4579
Lj4578:
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	$1,-12(%ebp)
	.align 2
Lj4586:
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	$0,(%esp)
	movl	L_$XMLREAD$_Ld211$non_lazy_ptr-Lj4462(%ebx),%ecx
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	movw	%ax,-34(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld212$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4601
	jmp	Lj4602
Lj4601:
	incl	-12(%ebp)
	jmp	Lj4607
Lj4602:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld214$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4608
	jmp	Lj4609
Lj4608:
	decl	-12(%ebp)
	jmp	Lj4614
Lj4609:
	movw	-34(%ebp),%ax
	testw	%ax,%ax
	jne	Lj4615
	jmp	Lj4616
Lj4615:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	jmp	Lj4619
Lj4616:
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld216$non_lazy_ptr-Lj4462(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj4619:
Lj4614:
Lj4607:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4588
	jmp	Lj4586
Lj4588:
Lj4579:
Lj4577:
	jmp	Lj4628
Lj4512:
	movl	-4(%ebp),%eax
	movb	$1,25(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld218$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4631
	jmp	Lj4632
Lj4631:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEELEMENTDECL$stub
	jmp	Lj4639
Lj4632:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld220$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4640
	jmp	Lj4641
Lj4640:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEENTITYDECL$stub
	jmp	Lj4648
Lj4641:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld222$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4649
	jmp	Lj4650
Lj4649:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEATTLISTDECL$stub
	jmp	Lj4657
Lj4650:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_$XMLREAD$_Ld224$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4658
	jmp	Lj4659
Lj4658:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSENOTATIONDECL$stub
	jmp	Lj4666
Lj4659:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld226$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj4666:
Lj4657:
Lj4648:
Lj4639:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj4677
	jmp	Lj4678
Lj4677:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY$stub
Lj4678:
	movl	-4(%ebp),%eax
	movw	$62,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movb	$0,25(%eax)
Lj4628:
Lj4510:
Lj4499:
Lj4468:
	jmp	Lj4467
Lj4469:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4689
	jmp	Lj4690
Lj4689:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld228$non_lazy_ptr-Lj4462(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj4690:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$1,%eax
	je	Lj4701
	jmp	Lj4700
Lj4701:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$93,%ax
	je	Lj4699
	jmp	Lj4700
Lj4699:
	jmp	Lj4461
Lj4700:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	jne	Lj4702
	jmp	Lj4703
Lj4702:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld230$non_lazy_ptr-Lj4462(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj4703:
Lj4461:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PROCESSDTD$TXMLCHARSOURCE
_XMLREAD_TXMLTEXTREADER_$__PROCESSDTD$TXMLCHARSOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4711
Lj4711:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj4711(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj4711(%ebx),%ecx
	call	*224(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,216(%edx)
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	movl	-8(%ebp),%edx
	movl	72(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	L_VMT_DTDMODEL_TDTDMODEL$non_lazy_ptr-Lj4711(%ebx),%edx
	movl	$0,%eax
	call	L_DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL$stub
	movl	-8(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	216(%eax),%ecx
	movl	L_VMT_DOM_TDOMDOCUMENTTYPE$non_lazy_ptr-Lj4711(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__NSPREPARE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__LOADENTITY$TENTITYDECL
_XMLREAD_TXMLTEXTREADER_$__LOADENTITY$TENTITYDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj4749
Lj4749:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj4754
	jmp	Lj4755
Lj4754:
	jmp	Lj4748
Lj4755:
	movl	-24(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%esi,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj4766
	jmp	Lj4767
Lj4766:
	jmp	Lj4748
Lj4767:
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj4749(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER$stub
	movl	%eax,-12(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4776
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,108(%edx)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL$stub
	movl	-12(%ebp),%edx
	movl	%eax,80(%edx)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ENTITYTOSOURCE$TENTITYDECL$TXMLCHARSOURCE$stub
	movl	-20(%ebp),%eax
	movb	$0,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	cmpl	$0,-16(%ebp)
	jne	Lj4796
	jmp	Lj4797
Lj4796:
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE$stub
Lj4797:
	movl	-4(%ebp),%eax
	movb	$1,45(%eax)
Lj4776:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,108(%edx)
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movb	$0,46(%eax)
	movl	-20(%ebp),%eax
	movb	$1,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4777
	decl	%eax
	testl	%eax,%eax
	je	Lj4778
Lj4778:
	call	LFPC_RERAISE$stub
Lj4777:
Lj4748:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATECURRENTNODE
_XMLREAD_TXMLTEXTREADER_$__VALIDATECURRENTNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	call	Lj4817
Lj4817:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	44(%eax),%eax
	cmpl	$1,%eax
	jb	Lj4819
	decl	%eax
	je	Lj4820
	subl	$2,%eax
	je	Lj4822
	decl	%eax
	je	Lj4823
	subl	$3,%eax
	je	Lj4824
	decl	%eax
	je	Lj4825
	subl	$2,%eax
	je	Lj4826
	subl	$4,%eax
	je	Lj4822
	decl	%eax
	je	Lj4821
	jmp	Lj4819
Lj4820:
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	cmpl	$1,%eax
	je	Lj4829
	jmp	Lj4828
Lj4829:
	movl	-4(%ebp),%eax
	movb	113(%eax),%al
	testb	%al,%al
	je	Lj4827
	jmp	Lj4828
Lj4827:
	movl	-4(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj4830
	jmp	Lj4831
Lj4830:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	20(%eax),%eax
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj4832
	jmp	Lj4833
Lj4832:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld232$non_lazy_ptr-Lj4817(%ebx),%ecx
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj4833:
	jmp	Lj4846
Lj4831:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld234$non_lazy_ptr-Lj4817(%ebx),%ecx
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj4846:
Lj4828:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4857
	jmp	Lj4859
Lj4859:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj4857
	jmp	Lj4858
Lj4857:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld236$non_lazy_ptr-Lj4817(%ebx),%ecx
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj4858:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	call	L_XMLREAD_TELEMENTVALIDATOR_$__ISELEMENTALLOWED$TELEMENTDECL$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4872
	jmp	Lj4873
Lj4872:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld238$non_lazy_ptr-Lj4817(%ebx),%ecx
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj4873:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PUSHVC$TELEMENTDECL$stub
	movl	-4(%ebp),%eax
	movl	180(%eax),%esi
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj4895
	decl	-20(%ebp)
	.align 2
Lj4896:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	movl	-20(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4901
	jmp	Lj4902
Lj4901:
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	$18,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$18,-36(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld240$non_lazy_ptr-Lj4817(%ebx),%ecx
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
	jmp	Lj4915
Lj4902:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj4916
	jmp	Lj4918
Lj4918:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$3,%eax
	je	Lj4916
	jmp	Lj4917
Lj4916:
	movl	-4(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj4921
	jmp	Lj4920
Lj4921:
	movl	-12(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj4919
	jmp	Lj4920
Lj4919:
	movl	-16(%ebp),%eax
	cmpb	$0,61(%eax)
	jne	Lj4922
	jmp	Lj4923
Lj4922:
	movl	-16(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld81$non_lazy_ptr-Lj4817(%ebx),%edx
	movl	$1,%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
	jmp	Lj4932
Lj4923:
	movl	-4(%ebp),%eax
	movl	188(%eax),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj4933
	jmp	Lj4934
Lj4933:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld81$non_lazy_ptr-Lj4817(%ebx),%edx
	movl	$1,%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT$stub
Lj4934:
Lj4932:
Lj4920:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$3,%eax
	je	Lj4945
	jmp	Lj4944
Lj4945:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	48(%eax),%eax
	movl	-16(%ebp),%edx
	movl	48(%edx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj4943
	jmp	Lj4944
Lj4943:
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld242$non_lazy_ptr-Lj4817(%ebx),%edx
	movl	$1,%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj4944:
	movl	-16(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRSYNTAX$TATTRIBUTEDEF$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4962
	jmp	Lj4963
Lj4962:
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld244$non_lazy_ptr-Lj4817(%ebx),%edx
	movl	$1,%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj4963:
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRVALUE$TATTRIBUTEDEF$PNODEDATA$stub
Lj4917:
Lj4915:
	cmpl	-20(%ebp),%esi
	jg	Lj4896
Lj4895:
	jmp	Lj4818
Lj4821:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	call	L_XMLREAD_TELEMENTVALIDATOR_$__INCOMPLETE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4988
	jmp	Lj4989
Lj4988:
	movl	$-1,(%esp)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld246$non_lazy_ptr-Lj4817(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj4989:
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5002
	jmp	Lj5003
Lj5002:
	movl	-4(%ebp),%eax
	decl	196(%eax)
Lj5003:
	jmp	Lj4818
Lj4822:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	cmpl	$2,%eax
	jb	Lj5005
	subl	$2,%eax
	je	Lj5007
	subl	$2,%eax
	je	Lj5006
	jmp	Lj5005
Lj5006:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	44(%eax),%eax
	cmpl	$3,%eax
	je	Lj5008
	jmp	Lj5009
Lj5008:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld248$non_lazy_ptr-Lj4817(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	jmp	Lj5020
Lj5009:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	cmpb	$0,9(%edx,%eax)
	jne	Lj5021
	jmp	Lj5022
Lj5021:
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__STANDALONEERROR$LONGINT$stub
Lj5022:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$13,44(%eax)
Lj5020:
	jmp	Lj5004
Lj5007:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld250$non_lazy_ptr-Lj4817(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	jmp	Lj5004
Lj5005:
Lj5004:
	jmp	Lj4818
Lj4823:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	cmpl	$4,%eax
	je	Lj5039
	jmp	Lj5040
Lj5039:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld252$non_lazy_ptr-Lj4817(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj5040:
	jmp	Lj4818
Lj4824:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj5051
	jmp	Lj5052
Lj5051:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld254$non_lazy_ptr-Lj4817(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj5052:
	jmp	Lj4818
Lj4825:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj5063
	jmp	Lj5064
Lj5063:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld256$non_lazy_ptr-Lj4817(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj5064:
	jmp	Lj4818
Lj4826:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATEDTD$stub
	jmp	Lj4818
Lj4819:
Lj4818:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYSTART
_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYSTART:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	incl	%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$5,44(%eax)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	176(%edx),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$0,52(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$0,56(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYEND
_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYEND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5101
	jmp	Lj5102
Lj5101:
	movl	-4(%ebp),%eax
	decl	172(%eax)
Lj5102:
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	incl	%eax
	shll	$6,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,176(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$16,44(%eax)
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__RESOLVEENTITY
_XMLREAD_TXMLTEXTREADER_$__RESOLVEENTITY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj5110
Lj5110:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	44(%eax),%eax
	cmpl	$5,%eax
	jne	Lj5111
	jmp	Lj5112
Lj5111:
	movl	L_VMT_CLASSES_EINVALIDOPERATION$non_lazy_ptr-Lj5110(%ebx),%edx
	movl	L_$XMLREAD$_Ld258$non_lazy_ptr-Lj5110(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj5110(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5112:
	movl	-4(%ebp),%eax
	movl	$15,116(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DOSTARTENTITY
_XMLREAD_TXMLTEXTREADER_$__DOSTARTENTITY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj5122
Lj5122:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	172(%eax)
	movl	-4(%ebp),%eax
	movl	172(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA$stub
	movl	-4(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,120(%eax)
	jne	Lj5129
	jmp	Lj5130
Lj5129:
	movl	-4(%ebp),%eax
	movl	120(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN$stub
	jmp	Lj5135
Lj5130:
	movl	L_VMT_XMLREAD_TXMLCHARSOURCE$non_lazy_ptr-Lj5122(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__CREATE$WIDESTRING$$TXMLCHARSOURCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$2,56(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub
Lj5135:
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DOSTARTELEMENT$$TDOMELEMENT
_XMLREAD_TXMLTEXTREADER_$__DOSTARTELEMENT$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj5153
Lj5153:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	(%ecx),%edx
	testl	%edx,%edx
	je	Lj5162
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj5162:
	movl	%ecx,%ebx
	movl	(%ebx),%ecx
	testl	%ecx,%ecx
	jne	Lj5165
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj5153(%esi),%edi
	movl	%edi,%ecx
Lj5165:
	movl	%ecx,%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	cmpl	$0,12(%eax)
	jne	Lj5166
	jmp	Lj5167
Lj5166:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	16(%eax),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	12(%eax),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT$stub
Lj5167:
	movl	-4(%ebp),%eax
	movl	180(%eax),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj5175
	decl	-16(%ebp)
	.align 2
Lj5176:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_LOADATTRIBUTE$TDOMDOCUMENT$PNODEDATA$$TDOMATTR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	cmpl	$0,40(%edx,%eax)
	jne	Lj5187
	jmp	Lj5188
Lj5187:
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	movl	-16(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	movl	40(%edx,%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
Lj5188:
	cmpl	-16(%ebp),%ebx
	jg	Lj5176
Lj5175:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLDECODINGSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR
_XMLREAD_TXMLDECODINGSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj5192
Lj5192:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-21(%ebp)
	.align 2
Lj5195:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj5200:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-24(%ebp)
	movw	-24(%ebp),%ax
	cmpw	$10,%ax
	je	Lj5205
	jmp	Lj5208
Lj5208:
	movw	-24(%ebp),%ax
	cmpw	$13,%ax
	je	Lj5205
	jmp	Lj5207
Lj5207:
	movl	-12(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj5209
	jmp	Lj5206
Lj5209:
	movw	-24(%ebp),%ax
	cmpw	$133,%ax
	je	Lj5205
	jmp	Lj5210
Lj5210:
	movw	-24(%ebp),%ax
	cmpw	$8232,%ax
	je	Lj5205
	jmp	Lj5206
Lj5205:
	movl	-12(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-24(%ebp)
	jmp	Lj5223
Lj5206:
	movw	-24(%ebp),%ax
	cmpw	$32,%ax
	jb	Lj5229
	jmp	Lj5227
Lj5229:
	movw	-24(%ebp),%ax
	testw	%ax,%ax
	je	Lj5230
	jmp	Lj5228
Lj5230:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	jae	Lj5227
	jmp	Lj5228
Lj5228:
	movw	-24(%ebp),%ax
	cmpw	$9,%ax
	jne	Lj5224
	jmp	Lj5227
Lj5227:
	movw	-24(%ebp),%ax
	cmpw	$65533,%ax
	ja	Lj5224
	jmp	Lj5226
Lj5226:
	movl	-12(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj5232
	jmp	Lj5225
Lj5232:
	movw	-24(%ebp),%ax
	cmpw	$127,%ax
	jae	Lj5231
	jmp	Lj5225
Lj5231:
	movw	-24(%ebp),%ax
	cmpw	$159,%ax
	jbe	Lj5224
	jmp	Lj5225
Lj5224:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld260$non_lazy_ptr-Lj5192(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj5225:
Lj5223:
	movw	-24(%ebp),%ax
	cmpw	$255,%ax
	jb	Lj5241
	jmp	Lj5240
Lj5241:
	movl	-8(%ebp),%edx
	movzbl	-24(%ebp),%eax
	btl	%eax,(%edx)
	jc	Lj5239
	jmp	Lj5240
Lj5239:
	jmp	Lj5202
Lj5240:
	movw	-24(%ebp),%ax
	cmpw	$32,%ax
	ja	Lj5242
	jmp	Lj5243
Lj5242:
	movb	$1,-21(%ebp)
Lj5243:
	movl	-12(%ebp),%eax
	addl	$2,4(%eax)
	jmp	Lj5200
Lj5202:
	movw	-24(%ebp),%ax
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	jne	Lj5197
	jmp	Lj5254
Lj5254:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	testb	%al,%al
	je	Lj5197
	jmp	Lj5195
Lj5197:
	cmpl	$0,8(%ebp)
	jne	Lj5257
	jmp	Lj5258
Lj5257:
	movl	8(%ebp),%edx
	movl	8(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj5259
	jmp	Lj5261
Lj5261:
	cmpb	$0,-21(%ebp)
	jne	Lj5259
	jmp	Lj5260
Lj5259:
	movb	$1,(%edx)
	jmp	Lj5262
Lj5260:
	movb	$0,(%edx)
Lj5262:
Lj5258:
	movw	-14(%ebp),%ax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSECONTENT$TDOMNODE_WITHCHILDREN
_XMLREAD_TXMLTEXTREADER_$__PARSECONTENT$TDOMNODE_WITHCHILDREN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5264
Lj5264:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5268
	.align 2
Lj5267:
	movl	-8(%ebp),%eax
	cmpb	$0,156(%eax)
	jne	Lj5270
	jmp	Lj5271
Lj5270:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATECURRENTNODE$stub
Lj5271:
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	44(%eax),%eax
	cmpl	$1,%eax
	jb	Lj5275
	decl	%eax
	je	Lj5281
	subl	$2,%eax
	je	Lj5276
	decl	%eax
	je	Lj5278
	decl	%eax
	je	Lj5284
	subl	$2,%eax
	je	Lj5279
	decl	%eax
	je	Lj5280
	subl	$2,%eax
	je	Lj5283
	subl	$3,%eax
	jb	Lj5275
	subl	$1,%eax
	jbe	Lj5277
	decl	%eax
	je	Lj5282
	jmp	Lj5275
Lj5276:
	movb	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	jmp	Lj5274
Lj5277:
	movl	-8(%ebp),%eax
	cmpb	$0,157(%eax)
	jne	Lj5297
	jmp	Lj5298
Lj5297:
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	44(%eax),%eax
	cmpl	$13,%eax
	seteb	%al
	movb	%al,(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
Lj5298:
	jmp	Lj5274
Lj5278:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DOCDSECT$PWIDECHAR$LONGINT$$TDOMNODE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	jmp	Lj5274
Lj5279:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATEPINODE$$TDOMNODE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	jmp	Lj5274
Lj5280:
	movl	-8(%ebp),%eax
	movb	159(%eax),%al
	testb	%al,%al
	je	Lj5327
	jmp	Lj5328
Lj5327:
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	56(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATECOMMENTBUF$PWIDECHAR$LONGINT$$TDOMCOMMENT$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
Lj5328:
	jmp	Lj5274
Lj5281:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DOSTARTELEMENT$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5274
Lj5282:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj5274
Lj5283:
	movl	-8(%ebp),%eax
	movb	164(%eax),%al
	testb	%al,%al
	je	Lj5353
	jmp	Lj5354
Lj5353:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	216(%eax),%ecx
	movl	L_VMT_DOM_TDOMDOCUMENTTYPE$non_lazy_ptr-Lj5264(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
Lj5354:
	jmp	Lj5274
Lj5284:
	movl	-8(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	216(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	216(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	jmp	Lj5274
Lj5275:
Lj5274:
Lj5268:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__READ$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5267
	jmp	Lj5269
Lj5269:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__READTOPLEVEL$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__READTOPLEVEL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj5378
Lj5378:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$17,%eax
	je	Lj5379
	jmp	Lj5380
Lj5379:
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__SETUPFAKELF$TXMLTOKEN$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj5377
Lj5380:
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movb	$0,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$2,%eax
	je	Lj5395
	jmp	Lj5396
Lj5395:
	.align 2
Lj5397:
	leal	-6(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_$XMLREAD$_Ld262$non_lazy_ptr-Lj5378(%ebx),%ecx
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	movw	%ax,-8(%ebp)
	movw	-8(%ebp),%ax
	cmpw	$60,%ax
	je	Lj5410
	jmp	Lj5411
Lj5410:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%edx
	addl	$4,%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	8(%eax),%edx
	ja	Lj5412
	jmp	Lj5413
Lj5412:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
Lj5413:
	movl	$1,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5416
	jmp	Lj5417
Lj5416:
	movl	$4,-12(%ebp)
	jmp	Lj5424
Lj5417:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$33,%ax
	je	Lj5425
	jmp	Lj5426
Lj5425:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$45,%ax
	je	Lj5427
	jmp	Lj5428
Lj5427:
	movl	-4(%ebp),%eax
	cmpb	$0,159(%eax)
	jne	Lj5429
	jmp	Lj5430
Lj5429:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN$stub
	jmp	Lj5398
Lj5430:
	movl	$7,-12(%ebp)
	jmp	Lj5437
Lj5428:
	movl	$9,-12(%ebp)
Lj5437:
	jmp	Lj5440
Lj5426:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$63,%ax
	je	Lj5441
	jmp	Lj5442
Lj5441:
	movl	$8,-12(%ebp)
	jmp	Lj5445
Lj5442:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND$stub
Lj5445:
Lj5440:
Lj5424:
	jmp	Lj5448
Lj5411:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$3,%eax
	jb	Lj5449
	jmp	Lj5450
Lj5449:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld263$non_lazy_ptr-Lj5378(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj5450:
	movl	$1,-12(%ebp)
Lj5448:
	cmpb	$0,-6(%ebp)
	jne	Lj5459
	jmp	Lj5460
Lj5459:
	movl	-4(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld265$non_lazy_ptr-Lj5378(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj5460:
	movl	-4(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj5470
	jmp	Lj5468
Lj5470:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$3,%eax
	ja	Lj5469
	jmp	Lj5468
Lj5469:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj5467
	jmp	Lj5468
Lj5467:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__SETUPFAKELF$TXMLTOKEN$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj5377
Lj5468:
	jmp	Lj5399
Lj5398:
	jmp	Lj5397
Lj5399:
	jmp	Lj5477
Lj5396:
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	movl	%eax,-12(%ebp)
Lj5477:
	movl	-4(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj5483
	jmp	Lj5481
Lj5483:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$3,%eax
	jb	Lj5482
	jmp	Lj5481
Lj5482:
	movl	-12(%ebp),%eax
	cmpl	$9,%eax
	jne	Lj5480
	jmp	Lj5481
Lj5480:
	movl	-4(%ebp),%eax
	movl	$17,116(%eax)
	jmp	Lj5486
Lj5481:
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
Lj5486:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj5490
	subl	$4,%eax
	je	Lj5491
	subl	$3,%eax
	je	Lj5493
	decl	%eax
	je	Lj5492
	decl	%eax
	je	Lj5494
	jmp	Lj5490
Lj5491:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$3,%eax
	ja	Lj5495
	jmp	Lj5496
Lj5495:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld267$non_lazy_ptr-Lj5378(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
	jmp	Lj5503
Lj5496:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$3,%eax
	jb	Lj5504
	jmp	Lj5505
Lj5504:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS$stub
	movl	-4(%ebp),%eax
	movl	$3,20(%eax)
Lj5505:
Lj5503:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSESTARTTAG$stub
	jmp	Lj5489
Lj5492:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEPI$stub
	jmp	Lj5489
Lj5493:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN$stub
	jmp	Lj5489
Lj5494:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEDOCTYPEDECL$stub
	movl	-4(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj5520
	jmp	Lj5521
Lj5520:
	movb	-5(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj5377
Lj5521:
	jmp	Lj5489
Lj5490:
Lj5489:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	setneb	-5(%ebp)
Lj5377:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__READ$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__READ$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj5527
Lj5527:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$13,%eax
	je	Lj5528
	jmp	Lj5529
Lj5528:
	movl	-4(%ebp),%eax
	movl	$12,116(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$15,44(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,212(%eax)
	jne	Lj5534
	jmp	Lj5535
Lj5534:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTES$stub
Lj5535:
	movl	-4(%ebp),%eax
	movl	$0,180(%eax)
	movb	$1,-5(%ebp)
	jmp	Lj5526
Lj5529:
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$14,%eax
	je	Lj5542
	jmp	Lj5543
Lj5542:
	movl	-4(%ebp),%eax
	cmpb	$0,212(%eax)
	jne	Lj5544
	jmp	Lj5545
Lj5544:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTES$stub
Lj5545:
	movl	-4(%ebp),%eax
	movl	$0,180(%eax)
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
	jmp	Lj5552
Lj5543:
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$12,%eax
	je	Lj5553
	jmp	Lj5554
Lj5553:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__POPELEMENT$stub
	jmp	Lj5557
Lj5554:
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$15,%eax
	je	Lj5558
	jmp	Lj5559
Lj5558:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__DOSTARTENTITY$stub
Lj5559:
Lj5557:
Lj5552:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$3,%eax
	jne	Lj5562
	jmp	Lj5563
Lj5562:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__READTOPLEVEL$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj5526
Lj5563:
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$6,%eax
	seteb	-9(%ebp)
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movb	$0,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$2,%eax
	je	Lj5580
	cmpl	$6,%eax
	je	Lj5580
Lj5580:
	je	Lj5578
	jmp	Lj5579
Lj5578:
	.align 2
Lj5581:
	leal	-6(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%ecx
	shll	$5,%ecx
	movl	L_TC_XMLREAD_TEXTDELIMS$non_lazy_ptr-Lj5527(%ebx),%esi
	leal	(%esi,%ecx),%ecx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	movw	%ax,-8(%ebp)
	movw	-8(%ebp),%ax
	cmpw	$60,%ax
	je	Lj5594
	jmp	Lj5595
Lj5594:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%edx
	addl	$4,%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	8(%eax),%edx
	ja	Lj5596
	jmp	Lj5597
Lj5596:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*100(%edx)
Lj5597:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$47,%ax
	je	Lj5600
	jmp	Lj5601
Lj5600:
	movl	$5,-16(%ebp)
	jmp	Lj5604
Lj5601:
	movl	$1,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5605
	jmp	Lj5606
Lj5605:
	movl	$4,-16(%ebp)
	jmp	Lj5613
Lj5606:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$33,%ax
	je	Lj5614
	jmp	Lj5615
Lj5614:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$91,%ax
	je	Lj5616
	jmp	Lj5617
Lj5616:
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld269$non_lazy_ptr-Lj5527(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub
	movl	-4(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movb	$1,-9(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,160(%eax)
	jne	Lj5628
	jmp	Lj5630
Lj5630:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj5628
	jmp	Lj5629
Lj5628:
	jmp	Lj5582
Lj5629:
	movl	$6,-16(%ebp)
	jmp	Lj5633
Lj5617:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$45,%ax
	je	Lj5634
	jmp	Lj5635
Lj5634:
	movl	-4(%ebp),%eax
	cmpb	$0,159(%eax)
	jne	Lj5638
	jmp	Lj5637
Lj5638:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5636
	jmp	Lj5637
Lj5636:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN$stub
	jmp	Lj5582
Lj5637:
	movl	$7,-16(%ebp)
	jmp	Lj5645
Lj5635:
	movl	$9,-16(%ebp)
Lj5645:
Lj5633:
	jmp	Lj5648
Lj5615:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$63,%ax
	je	Lj5649
	jmp	Lj5650
Lj5649:
	movl	$8,-16(%ebp)
	jmp	Lj5653
Lj5650:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND$stub
Lj5653:
Lj5648:
Lj5613:
Lj5604:
	jmp	Lj5656
Lj5595:
	movw	-8(%ebp),%ax
	testw	%ax,%ax
	je	Lj5657
	jmp	Lj5658
Lj5657:
	cmpb	$0,-9(%ebp)
	jne	Lj5659
	jmp	Lj5660
Lj5659:
	movl	-4(%ebp),%eax
	movl	$-1,%ecx
	movl	L_$XMLREAD$_Ld271$non_lazy_ptr-Lj5527(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj5660:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	172(%edx),%eax
	jl	Lj5667
	jmp	Lj5668
Lj5667:
	movl	$0,(%esp)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	shll	$6,%eax
	movl	4(%edx,%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$18,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld273$non_lazy_ptr-Lj5527(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj5668:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,16(%eax)
	jne	Lj5679
	jmp	Lj5680
Lj5679:
	movl	-4(%ebp),%eax
	cmpb	$0,158(%eax)
	jne	Lj5683
	jmp	Lj5682
Lj5683:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5681
	jmp	Lj5682
Lj5681:
	jmp	Lj5582
	jmp	Lj5688
Lj5682:
	movl	$11,-16(%ebp)
Lj5688:
	jmp	Lj5691
Lj5680:
	movl	$1,-16(%ebp)
Lj5691:
	jmp	Lj5694
Lj5658:
	movw	-8(%ebp),%ax
	cmpw	$62,%ax
	je	Lj5695
	jmp	Lj5696
Lj5695:
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movw	-8(%ebp),%dx
	call	L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$2,%eax
	jle	Lj5703
	jmp	Lj5706
Lj5706:
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	subl	$2,%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$93,%ax
	jne	Lj5703
	jmp	Lj5705
Lj5705:
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	subl	$3,%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$93,%ax
	jne	Lj5703
	jmp	Lj5704
Lj5703:
	jmp	Lj5582
Lj5704:
	cmpb	$0,-9(%ebp)
	jne	Lj5707
	jmp	Lj5708
Lj5707:
	movl	-4(%ebp),%eax
	subl	$3,32(%eax)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,160(%eax)
	jne	Lj5711
	jmp	Lj5712
Lj5711:
	jmp	Lj5582
Lj5712:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	$4,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM$stub
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
	movb	$1,-5(%ebp)
	jmp	Lj5526
	jmp	Lj5723
Lj5708:
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	movl	L_$XMLREAD$_Ld275$non_lazy_ptr-Lj5527(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj5723:
	jmp	Lj5730
Lj5696:
	movw	-8(%ebp),%ax
	cmpw	$38,%ax
	je	Lj5731
	jmp	Lj5732
Lj5731:
	movl	-4(%ebp),%eax
	movl	200(%eax),%edx
	movl	-4(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	movl	12(%edx,%eax),%eax
	cmpl	$2,%eax
	je	Lj5733
	jmp	Lj5734
Lj5733:
	movl	$-1,(%esp)
	movl	$-1,4(%esp)
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld277$non_lazy_ptr-Lj5527(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj5734:
	movl	-4(%ebp),%eax
	leal	28(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5745
	jmp	Lj5747
Lj5747:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__RESOLVEPREDEFINED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj5745
	jmp	Lj5746
Lj5745:
	movb	$1,-6(%ebp)
	jmp	Lj5582
	jmp	Lj5756
Lj5746:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__ENTITYCHECK$BOOLEAN$$TENTITYDECL$stub
	movl	-4(%ebp),%edx
	movl	%eax,120(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,120(%eax)
	jne	Lj5765
	jmp	Lj5764
Lj5765:
	movl	-4(%ebp),%eax
	cmpb	$0,158(%eax)
	jne	Lj5763
	jmp	Lj5764
Lj5763:
	movl	-4(%ebp),%eax
	movl	120(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN$stub
	jmp	Lj5582
Lj5764:
	movl	$10,-16(%ebp)
Lj5756:
Lj5732:
Lj5730:
Lj5694:
Lj5656:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj5772
	jmp	Lj5773
Lj5772:
	movzbl	-6(%ebp),%edx
	movl	L_TC_XMLREAD_TEXTNODETYPES$non_lazy_ptr-Lj5527(%ebx),%eax
	movl	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,116(%edx)
	movb	$1,-5(%ebp)
	jmp	Lj5526
Lj5773:
	jmp	Lj5583
Lj5582:
	jmp	Lj5581
Lj5583:
	jmp	Lj5784
Lj5579:
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	movl	%eax,-16(%ebp)
Lj5784:
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jb	Lj5790
	subl	$4,%eax
	je	Lj5793
	decl	%eax
	je	Lj5794
	subl	$2,%eax
	je	Lj5797
	decl	%eax
	je	Lj5795
	decl	%eax
	je	Lj5796
	decl	%eax
	je	Lj5791
	decl	%eax
	je	Lj5792
	jmp	Lj5790
Lj5791:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYSTART$stub
	jmp	Lj5789
Lj5792:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYEND$stub
	jmp	Lj5789
Lj5793:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSESTARTTAG$stub
	jmp	Lj5789
Lj5794:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEENDTAG$stub
	jmp	Lj5789
Lj5795:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEPI$stub
	jmp	Lj5789
Lj5796:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEDOCTYPEDECL$stub
	jmp	Lj5789
Lj5797:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN$stub
	jmp	Lj5789
Lj5790:
Lj5789:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	setneb	-5(%ebp)
Lj5526:
	movb	-5(%ebp),%al
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR
_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	addl	$2,4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	8(%edx),%eax
	jae	Lj5818
	jmp	Lj5819
Lj5818:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
Lj5819:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR
_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	-4(%ebp),%ax
	je	Lj5824
	jmp	Lj5825
Lj5824:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	jmp	Lj5828
Lj5825:
	movw	-4(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR$stub
Lj5828:
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSESTARTTAG
_XMLREAD_TXMLTEXTREADER_$__PARSESTARTTAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj5834
Lj5834:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	108(%eax)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,180(%eax)
	movl	-4(%ebp),%eax
	movl	$0,184(%eax)
	movl	-4(%ebp),%eax
	movl	$0,188(%eax)
	movl	-4(%ebp),%eax
	incl	172(%eax)
	movl	-4(%ebp),%eax
	movl	172(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA$stub
	movl	-4(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-4(%ebp),%eax
	movl	176(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$1,44(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%edx
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	leal	24(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	176(%eax),%edx
	movl	56(%ecx),%eax
	subl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj5869
	jmp	Lj5870
Lj5869:
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__STARTELEMENT$stub
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5873
	jmp	Lj5874
Lj5873:
	movl	-4(%ebp),%eax
	movl	152(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	176(%edx),%edx
	movl	%eax,8(%edx)
Lj5874:
Lj5870:
	jmp	Lj5884
	.align 2
Lj5883:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$62,%ax
	je	Lj5890
	jmp	Lj5892
Lj5892:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$47,%ax
	je	Lj5890
	jmp	Lj5891
Lj5890:
	jmp	Lj5885
Lj5891:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSEATTRIBUTE$TELEMENTDECL$stub
Lj5884:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$62,%ax
	jne	Lj5897
	jmp	Lj5885
Lj5897:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$47,%ax
	jne	Lj5883
	jmp	Lj5885
Lj5885:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$47,%ax
	je	Lj5898
	jmp	Lj5899
Lj5898:
	movb	$1,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
Lj5899:
	movl	-4(%ebp),%eax
	movw	$62,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
	cmpl	$0,-8(%ebp)
	jne	Lj5910
	jmp	Lj5909
Lj5910:
	movl	-8(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj5908
	jmp	Lj5909
Lj5908:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSDEFAULTATTRIBUTES$TELEMENTDECL$stub
Lj5909:
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj5917
	jmp	Lj5918
Lj5917:
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj5919
	jmp	Lj5920
Lj5919:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSNAMESPACEATTS$stub
Lj5920:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	cmpl	$0,8(%eax)
	jne	Lj5923
	jmp	Lj5924
Lj5923:
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj5929
	jmp	Lj5927
Lj5929:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj5928
	jmp	Lj5927
Lj5927:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld279$non_lazy_ptr-Lj5834(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj5928:
	movl	-20(%ebp),%eax
	movl	4(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj5946
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj5946:
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	testl	%edx,%edx
	jne	Lj5949
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj5834(%ebx),%eax
	movl	%eax,%edx
Lj5949:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	176(%edx),%edx
	movl	%eax,12(%edx)
	jmp	Lj5952
Lj5924:
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__DEFAULTNSBINDING$$TBINDING$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj5957
	jmp	Lj5958
Lj5957:
	movl	-20(%ebp),%eax
	movl	4(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj5963
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj5963:
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	testl	%edx,%edx
	jne	Lj5966
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj5834(%ebx),%eax
	movl	%eax,%edx
Lj5966:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-4(%ebp),%edx
	movl	176(%edx),%edx
	movl	%eax,12(%edx)
Lj5958:
Lj5952:
Lj5918:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj5969
	jmp	Lj5970
Lj5969:
	movl	-4(%ebp),%eax
	movb	157(%eax),%al
	testb	%al,%al
	je	Lj5971
	jmp	Lj5972
Lj5971:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
Lj5972:
	movl	-4(%ebp),%eax
	movl	$14,116(%eax)
	jmp	Lj5979
Lj5970:
	movl	-4(%ebp),%eax
	movl	$13,116(%eax)
Lj5979:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEENDTAG
_XMLREAD_TXMLTEXTREADER_$__PARSEENDTAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5983
Lj5983:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	44(%eax),%eax
	cmpl	172(%edx),%eax
	jge	Lj5984
	jmp	Lj5985
Lj5984:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	L_$XMLREAD$_Ld281$non_lazy_ptr-Lj5983(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj5985:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	$2,4(%eax)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	shll	$6,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,176(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$15,44(%eax)
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	leal	52(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	L_XMLUTILS_BUFEQUALS$TWIDECHARBUF$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj6002
	jmp	Lj6003
Lj6002:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$18,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld283$non_lazy_ptr-Lj5983(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj6003:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movw	(%eax),%ax
	cmpw	$62,%ax
	je	Lj6018
	jmp	Lj6019
Lj6018:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub
	jmp	Lj6022
Lj6019:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movw	$62,%dx
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub
Lj6022:
	movl	-4(%ebp),%eax
	addl	$2,68(%eax)
	movl	-4(%ebp),%eax
	movl	$12,116(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEATTRIBUTE$TELEMENTDECL
_XMLREAD_TXMLTEXTREADER_$__PARSEATTRIBUTE$TELEMENTDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj6034
Lj6034:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEDATA$$PNODEDATA$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	152(%eax),%eax
	movl	%eax,16(%edx)
	movl	-16(%ebp),%eax
	leal	24(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	56(%eax),%eax
	subl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	180(%eax),%eax
	movl	%eax,188(%edx)
	cmpl	$0,-4(%ebp)
	jne	Lj6061
	jmp	Lj6062
Lj6061:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj6069
	jmp	Lj6070
Lj6069:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,20(%edx)
Lj6070:
	jmp	Lj6073
Lj6062:
	movl	$0,-20(%ebp)
Lj6073:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	180(%eax),%ebx
	decl	%ebx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj6079
	decl	-24(%ebp)
	.align 2
Lj6080:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	192(%eax),%edx
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	movl	-24(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	movl	4(%edx,%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj6081
	jmp	Lj6082
Lj6081:
	movl	-8(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld285$non_lazy_ptr-Lj6034(%esi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj6082:
	cmpl	-24(%ebp),%ebx
	jg	Lj6080
Lj6079:
	movl	-8(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj6089
	jmp	Lj6090
Lj6089:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$5,%eax
	je	Lj6097
	jmp	Lj6098
Lj6098:
	movl	-8(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$5,%eax
	je	Lj6097
	jmp	Lj6092
Lj6097:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movw	(%eax),%ax
	cmpw	$120,%ax
	je	Lj6096
	jmp	Lj6092
Lj6096:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movw	2(%eax),%ax
	cmpw	$109,%ax
	je	Lj6095
	jmp	Lj6092
Lj6095:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movw	4(%eax),%ax
	cmpw	$108,%ax
	je	Lj6094
	jmp	Lj6092
Lj6094:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movw	6(%eax),%ax
	cmpw	$110,%ax
	je	Lj6093
	jmp	Lj6092
Lj6093:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movw	8(%eax),%ax
	cmpw	$115,%ax
	je	Lj6091
	jmp	Lj6092
Lj6091:
	movl	-8(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6099
	jmp	Lj6100
Lj6099:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	140(%eax),%eax
	movl	%eax,8(%edx)
Lj6100:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	148(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj6105
Lj6092:
	movl	-8(%ebp),%eax
	movl	152(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6106
	jmp	Lj6107
Lj6106:
	movl	-8(%ebp),%eax
	movl	152(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-16(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	incl	184(%eax)
Lj6107:
Lj6105:
Lj6090:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ$stub
	cmpl	$0,-20(%ebp)
	jne	Lj6120
	jmp	Lj6119
Lj6120:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj6118
	jmp	Lj6119
Lj6118:
	movb	$1,%cl
	jmp	Lj6121
Lj6119:
	movb	$0,%cl
Lj6121:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTATTVALUE$PNODEDATA$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	64(%eax),%edx
	movl	%edx,32(%ecx)
	movl	68(%eax),%eax
	movl	%eax,36(%ecx)
	movl	-16(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj6128
	jmp	Lj6129
Lj6128:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ADDBINDING$PNODEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj6132
	jmp	Lj6131
Lj6132:
	movl	-8(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj6130
	jmp	Lj6131
Lj6130:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTE$PNODEDATA$stub
	movl	-8(%ebp),%eax
	decl	180(%eax)
	movl	-8(%ebp),%eax
	decl	188(%eax)
Lj6131:
Lj6129:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT
_XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj6142
Lj6142:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$12,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%ebx
	movl	L_INIT_XMLREAD_TFORWARDREF$non_lazy_ptr-Lj6142(%esi),%edx
	movl	%ebx,%eax
	call	Lfpc_initialize$stub
	movl	%ebx,-16(%ebp)
	movl	-16(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	64(%edx),%eax
	movl	%eax,4(%ecx)
	movl	68(%edx),%eax
	movl	%eax,8(%ecx)
	movl	-12(%ebp),%eax
	movl	88(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS
_XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj6166
Lj6166:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj6168
	decl	-8(%ebp)
	.align 2
Lj6169:
	incl	-8(%ebp)
	movl	L_INIT_XMLREAD_TFORWARDREF$non_lazy_ptr-Lj6166(%esi),%edx
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	4(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%ecx,%eax,4),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	Lfpc_freemem$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj6169
Lj6168:
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATEIDREFS
_XMLREAD_TXMLTEXTREADER_$__VALIDATEIDREFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj6179
Lj6179:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	$0,-8(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj6181
	decl	-8(%ebp)
	.align 2
Lj6182:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	je	Lj6185
	jmp	Lj6187
Lj6187:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	movl	(%esi),%edx
	testl	%edx,%edx
	je	Lj6192
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6192:
	movl	%edx,%ecx
	movl	(%esi),%edx
	testl	%edx,%edx
	jne	Lj6195
	movl	-20(%ebp),%edi
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6179(%edi),%ebx
	movl	%ebx,%edx
Lj6195:
	call	L_XMLUTILS_THASHTABLE_$__FIND$PWIDECHAR$LONGINT$$PHASHITEM$stub
	testl	%eax,%eax
	je	Lj6185
	jmp	Lj6186
Lj6185:
	movl	$0,4(%esp)
	leal	4(%esi),%eax
	movl	%eax,(%esp)
	movl	(%esi),%eax
	movl	%eax,-12(%ebp)
	movl	$18,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	L_$XMLREAD$_Ld287$non_lazy_ptr-Lj6179(%edx),%ecx
	movl	%ecx,%edx
	movl	$1,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj6186:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj6182
Lj6181:
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS$stub
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PROCESSDEFAULTATTRIBUTES$TELEMENTDECL
_XMLREAD_TXMLTEXTREADER_$__PROCESSDEFAULTATTRIBUTES$TELEMENTDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	call	Lj6211
Lj6211:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__GETATTRDEFCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj6213
	decl	-12(%ebp)
	.align 2
Lj6214:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__ATTRDEFBYINDEX$LONGINT$$TATTRIBUTEDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	20(%eax),%eax
	cmpl	108(%edx),%eax
	jne	Lj6223
	jmp	Lj6224
Lj6223:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	jb	Lj6226
	decl	%eax
	je	Lj6227
	decl	%eax
	je	Lj6228
	decl	%eax
	je	Lj6227
	jmp	Lj6226
Lj6227:
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEDATA$$PNODEDATA$stub
	movl	%eax,-20(%ebp)
	movl	L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr-Lj6211(%esi),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	call	Lfpc_copy_proc$stub
	movl	-8(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj6239
	jmp	Lj6240
Lj6239:
	movl	-20(%ebp),%eax
	movb	$0,60(%eax)
Lj6240:
	movl	-8(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj6243
	jmp	Lj6244
Lj6243:
	movl	-16(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj6245
	jmp	Lj6246
Lj6245:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6247
	jmp	Lj6248
Lj6247:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	140(%eax),%eax
	movl	%eax,8(%edx)
Lj6248:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	148(%eax),%eax
	movl	%eax,12(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ADDBINDING$PNODEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj6255
	jmp	Lj6254
Lj6255:
	movl	-8(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj6253
	jmp	Lj6254
Lj6253:
	movl	-8(%ebp),%eax
	decl	180(%eax)
Lj6254:
	jmp	Lj6260
Lj6246:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6261
	jmp	Lj6262
Lj6261:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	jne	Lj6267
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6211(%esi),%eax
	movl	%eax,%edx
Lj6267:
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	16(%ecx),%ecx
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-20(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	incl	184(%eax)
Lj6262:
Lj6260:
Lj6244:
	jmp	Lj6225
Lj6228:
	movl	$0,(%esp)
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$18,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	192(%eax),%edx
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	shll	$6,%eax
	movl	4(%edx,%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-36(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld289$non_lazy_ptr-Lj6211(%esi),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
	jmp	Lj6225
Lj6226:
Lj6225:
Lj6224:
	cmpl	-12(%ebp),%ebx
	jg	Lj6214
Lj6213:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ADDBINDING$PNODEDATA$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__ADDBINDING$PNODEDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj6283
Lj6283:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj6288
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6288:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	testl	%edx,%edx
	jne	Lj6291
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6283(%ebx),%eax
	movl	%eax,%edx
Lj6291:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6294
	jmp	Lj6295
Lj6294:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj6302
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6302:
	subl	$6,%ecx
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
	jmp	Lj6305
Lj6295:
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
Lj6305:
	movl	-8(%ebp),%eax
	movl	144(%eax),%eax
	cmpl	-16(%ebp),%eax
	seteb	%dl
	movl	-8(%ebp),%eax
	movl	136(%eax),%eax
	cmpl	-20(%ebp),%eax
	seteb	%al
	cmpb	%al,%dl
	jne	Lj6314
	jmp	Lj6317
Lj6317:
	movl	-8(%ebp),%eax
	movl	140(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj6314
	jmp	Lj6316
Lj6316:
	movl	-8(%ebp),%eax
	movl	148(%eax),%eax
	cmpl	-16(%ebp),%eax
	je	Lj6314
	jmp	Lj6315
Lj6314:
	movl	-8(%ebp),%eax
	movl	136(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj6318
	jmp	Lj6320
Lj6320:
	movl	-8(%ebp),%eax
	movl	140(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj6318
	jmp	Lj6319
Lj6318:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld291$non_lazy_ptr-Lj6283(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
	jmp	Lj6333
Lj6319:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld293$non_lazy_ptr-Lj6283(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj6333:
Lj6315:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj6348
	jmp	Lj6347
Lj6348:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj6347
	jmp	Lj6349
Lj6349:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6347
	jmp	Lj6346
Lj6346:
	movl	-4(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	L_$XMLREAD$_Ld295$non_lazy_ptr-Lj6283(%ebx),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj6347:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj6358
	jmp	Lj6360
Lj6360:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	48(%edx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj6358
	jmp	Lj6359
Lj6358:
	movb	$1,-9(%ebp)
	jmp	Lj6365
Lj6359:
	movb	$0,-9(%ebp)
Lj6365:
	cmpb	$0,-9(%ebp)
	jne	Lj6366
	jmp	Lj6367
Lj6366:
	movl	-8(%ebp),%eax
	movl	128(%eax),%eax
	movl	-4(%ebp),%edx
	movl	48(%edx),%edx
	movl	-20(%ebp),%ecx
	call	L_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING$stub
Lj6367:
	movb	-9(%ebp),%al
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PROCESSNAMESPACEATTS
_XMLREAD_TXMLTEXTREADER_$__PROCESSNAMESPACEATTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj6375
Lj6375:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	184(%eax),%edx
	movl	-4(%ebp),%eax
	movl	132(%eax),%eax
	call	L_XMLUTILS_TDBLHASHARRAY_$__INIT$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	180(%eax),%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj6381
	decl	-8(%ebp)
	.align 2
Lj6382:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	movl	-8(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	jl	Lj6385
	jmp	Lj6387
Lj6387:
	movl	-24(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj6385
	jmp	Lj6386
Lj6385:
	jmp	Lj6380
Lj6386:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj6394
	jmp	Lj6392
Lj6394:
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj6393
	jmp	Lj6392
Lj6392:
	movl	$0,4(%esp)
	movl	-24(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$18,-36(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld297$non_lazy_ptr-Lj6375(%esi),%ecx
	movl	$2,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj6393:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6415
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6415:
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,(%esp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	leal	-2(%eax,%edx,2),%ecx
	movl	-28(%ebp),%eax
	leal	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	132(%eax),%eax
	call	L_XMLUTILS_TDBLHASHARRAY_$__LOCATE$PWIDESTRING$PWIDECHAR$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6411
	jmp	Lj6412
Lj6411:
	movl	-24(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld299$non_lazy_ptr-Lj6375(%esi),%edx
	movl	$2,%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub
Lj6412:
	movl	-28(%ebp),%eax
	movl	4(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj6434
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6434:
	movl	-28(%ebp),%eax
	movl	4(%eax),%edx
	testl	%edx,%edx
	jne	Lj6437
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6375(%esi),%eax
	movl	%eax,%edx
Lj6437:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-24(%ebp),%edx
	movl	%eax,12(%edx)
Lj6380:
	cmpl	-8(%ebp),%ebx
	jg	Lj6382
Lj6381:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj6441
Lj6441:
	popl	-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-28(%ebp),%ecx
	movl	L_$XMLREAD$_Ld301$non_lazy_ptr-Lj6441(%ecx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6444
	jmp	Lj6445
Lj6444:
	movb	$0,8(%ebp)
	jmp	Lj6452
Lj6445:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-28(%ebp),%ecx
	movl	L_$XMLREAD$_Ld303$non_lazy_ptr-Lj6441(%ecx),%edx
	call	L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6453
	jmp	Lj6454
Lj6453:
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
	movb	$1,(%esp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	32(%eax),%esi
	movl	-12(%ebp),%eax
	movl	28(%eax),%edi
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,%eax
	movl	%esi,%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj6478
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj6478:
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj6476
	decl	-20(%ebp)
	.align 2
Lj6477:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	movw	%ax,-22(%ebp)
	movw	-22(%ebp),%ax
	cmpw	$255,%ax
	ja	Lj6481
	jmp	Lj6483
Lj6483:
	movzbl	-22(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	L_TC_XMLREAD_PUBIDCHARS$non_lazy_ptr-Lj6441(%eax),%ecx
	btl	%edx,(%ecx)
	jnc	Lj6481
	jmp	Lj6482
Lj6481:
	movl	-12(%ebp),%eax
	movl	$-1,%ecx
	movl	-28(%ebp),%edx
	movl	L_$XMLREAD$_Ld305$non_lazy_ptr-Lj6441(%edx),%esi
	movl	%esi,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub
Lj6482:
	cmpl	-20(%ebp),%ebx
	jg	Lj6477
Lj6476:
	jmp	Lj6490
Lj6454:
	jmp	Lj6440
Lj6490:
Lj6452:
	cmpb	$0,8(%ebp)
	jne	Lj6491
	jmp	Lj6492
Lj6491:
	movl	-12(%ebp),%eax
	movb	$0,%dl
	call	L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub
	jmp	Lj6497
Lj6492:
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub
Lj6497:
	movb	8(%ebp),%al
	testb	%al,%al
	seteb	%al
	movb	%al,(%esp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	L_XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6500
	jmp	Lj6501
Lj6500:
	movl	-12(%ebp),%eax
	movl	32(%eax),%esi
	movl	-12(%ebp),%eax
	movl	28(%eax),%edi
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,%eax
	movl	%esi,%ecx
	movl	%edi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
Lj6501:
	movb	$1,-13(%ebp)
Lj6440:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRSYNTAX$TATTRIBUTEDEF$WIDESTRING$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRSYNTAX$TATTRIBUTEDEF$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$1,%eax
	jb	Lj6521
	decl	%eax
	subl	$1,%eax
	jbe	Lj6522
	decl	%eax
	je	Lj6523
	decl	%eax
	je	Lj6522
	decl	%eax
	je	Lj6523
	decl	%eax
	je	Lj6524
	decl	%eax
	je	Lj6525
	decl	%eax
	je	Lj6526
	jmp	Lj6521
Lj6522:
	movl	-12(%ebp),%eax
	movb	16(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6529
	jmp	Lj6528
Lj6529:
	movl	-12(%ebp),%eax
	movb	162(%eax),%al
	testb	%al,%al
	je	Lj6527
	jmp	Lj6534
Lj6534:
	movl	-8(%ebp),%edx
	movw	$58,%ax
	call	L_SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj6527
	jmp	Lj6528
Lj6527:
	movb	$1,-13(%ebp)
	jmp	Lj6539
Lj6528:
	movb	$0,-13(%ebp)
Lj6539:
	jmp	Lj6520
Lj6523:
	movl	-12(%ebp),%eax
	movb	16(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAMES$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6542
	jmp	Lj6541
Lj6542:
	movl	-12(%ebp),%eax
	movb	162(%eax),%al
	testb	%al,%al
	je	Lj6540
	jmp	Lj6547
Lj6547:
	movl	-8(%ebp),%edx
	movw	$58,%ax
	call	L_SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj6540
	jmp	Lj6541
Lj6540:
	movb	$1,-13(%ebp)
	jmp	Lj6552
Lj6541:
	movb	$0,-13(%ebp)
Lj6552:
	jmp	Lj6520
Lj6524:
	movl	-12(%ebp),%eax
	movb	16(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_XMLUTILS_ISXMLNMTOKEN$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6555
	jmp	Lj6554
Lj6555:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TATTRIBUTEDEF_$__HASENUMTOKEN$WIDESTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj6553
	jmp	Lj6554
Lj6553:
	movb	$1,-13(%ebp)
	jmp	Lj6564
Lj6554:
	movb	$0,-13(%ebp)
Lj6564:
	jmp	Lj6520
Lj6525:
	movl	-12(%ebp),%eax
	movb	16(%eax),%dl
	movl	-8(%ebp),%eax
	call	L_XMLUTILS_ISXMLNMTOKENS$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj6520
Lj6526:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TATTRIBUTEDEF_$__HASENUMTOKEN$WIDESTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj6520
Lj6521:
	movb	$1,-13(%ebp)
Lj6520:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRVALUE$TATTRIBUTEDEF$PNODEDATA
_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRVALUE$TATTRIBUTEDEF$PNODEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	call	Lj6580
Lj6580:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj6583
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6583:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$1,%eax
	jb	Lj6585
	decl	%eax
	je	Lj6586
	decl	%eax
	jb	Lj6585
	subl	$1,%eax
	jbe	Lj6587
	decl	%eax
	subl	$1,%eax
	jbe	Lj6588
	jmp	Lj6585
Lj6586:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ADDID$PNODEDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj6589
	jmp	Lj6590
Lj6589:
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	leal	32(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$18,-36(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld307$non_lazy_ptr-Lj6580(%ebx),%ecx
	movl	$1,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj6590:
	jmp	Lj6584
Lj6587:
	movl	$1,-20(%ebp)
	jmp	Lj6610
	.align 2
Lj6609:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj6615
	.align 2
Lj6614:
	incl	-24(%ebp)
Lj6615:
	movl	-24(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj6617
	jmp	Lj6616
Lj6617:
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-24(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$32,%ax
	jne	Lj6614
	jmp	Lj6616
Lj6616:
	movl	-12(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	je	Lj6618
	jmp	Lj6620
Lj6620:
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-20(%ebp),%eax
	leal	-2(%edx,%eax,2),%edx
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	124(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FIND$PWIDECHAR$LONGINT$$PHASHITEM$stub
	testl	%eax,%eax
	je	Lj6618
	jmp	Lj6619
Lj6618:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-20(%ebp),%edx
	leal	-2(%eax,%edx,2),%edx
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT$stub
Lj6619:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
Lj6610:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj6609
	jmp	Lj6611
Lj6611:
	jmp	Lj6584
Lj6588:
	movl	$1,-20(%ebp)
	jmp	Lj6638
	.align 2
Lj6637:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj6643
	.align 2
Lj6642:
	incl	-24(%ebp)
Lj6643:
	movl	-24(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj6645
	jmp	Lj6644
Lj6645:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-24(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jne	Lj6642
	jmp	Lj6644
Lj6644:
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE$stub
	movl	%eax,%esi
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-20(%ebp),%edx
	leal	-2(%eax,%edx,2),%edx
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	%esi,%eax
	call	L_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj6658
	jmp	Lj6660
Lj6660:
	movl	-28(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj6658
	jmp	Lj6659
Lj6658:
	movl	$-1,(%esp)
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	$18,-36(%ebp)
	leal	-36(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld244$non_lazy_ptr-Lj6580(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj6659:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
Lj6638:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj6637
	jmp	Lj6639
Lj6639:
	jmp	Lj6584
Lj6585:
Lj6584:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__VALIDATEDTD
_XMLREAD_TXMLTEXTREADER_$__VALIDATEDTD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj6674
Lj6674:
	popl	-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	$0,-8(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj6676
	decl	-8(%ebp)
	.align 2
Lj6677:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	88(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE$stub
	movl	%eax,%ebx
	movl	(%esi),%eax
	testl	%eax,%eax
	je	Lj6692
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6692:
	movl	%eax,%ecx
	movl	(%esi),%edx
	testl	%edx,%edx
	jne	Lj6695
	movl	-20(%ebp),%edi
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6674(%edi),%eax
	movl	%eax,%edx
Lj6695:
	movl	%ebx,%eax
	call	L_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT$stub
	testl	%eax,%eax
	je	Lj6684
	jmp	Lj6685
Lj6684:
	movl	$0,4(%esp)
	leal	4(%esi),%eax
	movl	%eax,(%esp)
	movl	(%esi),%eax
	movl	%eax,-12(%ebp)
	movl	$18,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	L_$XMLREAD$_Ld309$non_lazy_ptr-Lj6674(%edx),%ecx
	movl	%ecx,%edx
	movl	$1,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub
Lj6685:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj6677
Lj6676:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DOCDSECT$PWIDECHAR$LONGINT$$TDOMNODE
_XMLREAD_TXMLTEXTREADER_$__DOCDSECT$PWIDECHAR$LONGINT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
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
	jne	Lj6712
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leal	-20(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	-20(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	216(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	216(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*212(%ecx)
	movl	%eax,-16(%ebp)
Lj6712:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj6713
	call	LFPC_RERAISE$stub
Lj6713:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING
_XMLREAD_TXMLTEXTREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj6734
Lj6734:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE$stub
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6743
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6743:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj6746
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6734(%ebx),%esi
	movl	%esi,%edx
Lj6746:
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj6749
	jmp	Lj6750
Lj6749:
	movl	L_VMT_DTDMODEL_TNOTATIONDECL$non_lazy_ptr-Lj6734(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%esi)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,12(%esi)
	movl	8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,16(%esi)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
	jmp	Lj6765
Lj6750:
	movl	$-1,(%esp)
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$18,-28(%ebp)
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	L_$XMLREAD$_Ld311$non_lazy_ptr-Lj6734(%ebx),%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub
Lj6765:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ADDID$PNODEDATA$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__ADDID$PNODEDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj6777
Lj6777:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	je	Lj6778
	jmp	Lj6779
Lj6778:
	movb	$0,(%esp)
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj6777(%ebx),%edx
	movl	$256,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-8(%ebp),%edx
	movl	%eax,124(%edx)
Lj6779:
	leal	-9(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj6796
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6796:
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	testl	%edx,%edx
	jne	Lj6799
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj6777(%ebx),%eax
	movl	%eax,%edx
Lj6799:
	movl	-8(%ebp),%eax
	movl	124(%eax),%eax
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$BOOLEAN$$PHASHITEM$stub
	movl	%eax,-16(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj6804
	jmp	Lj6805
Lj6804:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,40(%eax)
Lj6805:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEDATA$$PNODEDATA
_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEDATA$$PNODEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	172(%eax),%edx
	movl	180(%ecx),%eax
	addl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$2,44(%eax)
	movl	-8(%ebp),%eax
	movb	$0,60(%eax)
	movl	-4(%ebp),%eax
	incl	180(%eax)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA
_XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj6821
Lj6821:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	192(%eax),%eax
	call	Lfpc_dynarray_length$stub
	decl	%eax
	cmpl	-4(%ebp),%eax
	jle	Lj6822
	jmp	Lj6823
Lj6822:
	movl	-4(%ebp),%eax
	shll	$1,%eax
	addl	$2,%eax
	movl	%eax,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLREAD_TNODEDATADYNARRAY$non_lazy_ptr-Lj6821(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	192(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj6823:
	movl	-8(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movl	$0,40(%eax)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA
_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj6845
Lj6845:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1,%eax
	je	Lj6846
	jmp	Lj6847
Lj6846:
	movl	$64,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%esi
	movl	L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr-Lj6845(%ebx),%edx
	movl	%esi,%eax
	call	Lfpc_initialize$stub
	movl	%esi,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$64,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	jmp	Lj6864
Lj6847:
	movl	-8(%ebp),%eax
	movl	208(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj6867
	jmp	Lj6868
Lj6867:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,208(%edx)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj6873
Lj6868:
	movl	$64,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%esi
	movl	L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr-Lj6845(%ebx),%edx
	movl	%esi,%eax
	call	Lfpc_initialize$stub
	movl	%esi,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$64,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	movl	204(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj6873:
Lj6864:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTES
_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	188(%eax),%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj6899
	decl	-8(%ebp)
	.align 2
Lj6900:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	movl	-8(%ebp),%ecx
	addl	%ecx,%eax
	shll	$6,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTE$PNODEDATA$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj6900
Lj6899:
	movl	-4(%ebp),%eax
	movb	$0,212(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTE$PNODEDATA
_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTE$PNODEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj6912
	.align 2
Lj6911:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	208(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,208(%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj6912:
	cmpl	$0,-12(%ebp)
	jne	Lj6911
	jmp	Lj6913
Lj6913:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM
_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	192(%eax),%edx
	movl	-12(%ebp),%eax
	movl	172(%eax),%eax
	incl	%eax
	shll	$6,%eax
	leal	(%edx,%eax),%edx
	movl	-12(%ebp),%eax
	movl	%edx,176(%eax)
	movl	-12(%ebp),%eax
	movl	176(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,44(%eax)
	movl	-12(%ebp),%eax
	movl	176(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	176(%eax),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,52(%edx)
	movl	-12(%ebp),%eax
	movl	176(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,56(%edx)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__SETUPFAKELF$TXMLTOKEN$$BOOLEAN
_XMLREAD_TXMLTEXTREADER_$__SETUPFAKELF$TXMLTOKEN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movw	$10,(%eax)
	movl	-8(%ebp),%eax
	movl	$1,32(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$13,%edx
	call	L_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,116(%eax)
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__PUSHVC$TELEMENTDECL
_XMLREAD_TXMLTEXTREADER_$__PUSHVC$TELEMENTDECL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj6953
Lj6953:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	incl	196(%eax)
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	200(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	196(%ebx),%eax
	jle	Lj6954
	jmp	Lj6955
Lj6954:
	movl	-8(%ebp),%eax
	movl	196(%eax),%eax
	shll	$1,%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_XMLREAD_TVALIDATORDYNARRAY$non_lazy_ptr-Lj6953(%esi),%edx
	movl	-8(%ebp),%eax
	leal	200(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
Lj6955:
	movl	-8(%ebp),%eax
	movl	200(%eax),%edx
	movl	-8(%ebp),%eax
	movl	196(%eax),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	$0,4(%eax)
	movb	$0,8(%eax)
	movl	$1,12(%eax)
	movb	$0,9(%eax)
	cmpl	$0,-4(%ebp)
	jne	Lj6980
	jmp	Lj6981
Lj6980:
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	movl	%edx,12(%eax)
	movl	-8(%ebp),%edx
	cmpb	$0,72(%edx)
	jne	Lj6986
	jmp	Lj6985
Lj6986:
	movl	-4(%ebp),%edx
	cmpb	$0,4(%edx)
	jne	Lj6984
	jmp	Lj6985
Lj6984:
	movb	$1,9(%eax)
	jmp	Lj6987
Lj6985:
	movb	$0,9(%eax)
Lj6987:
Lj6981:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TXMLTEXTREADER_$__POPELEMENT
_XMLREAD_TXMLTEXTREADER_$__POPELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,162(%eax)
	jne	Lj6990
	jmp	Lj6991
Lj6990:
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__ENDELEMENT$stub
Lj6991:
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	cmpl	$1,%eax
	je	Lj6996
	jmp	Lj6995
Lj6996:
	movl	-4(%ebp),%eax
	movb	113(%eax),%al
	testb	%al,%al
	je	Lj6994
	jmp	Lj6995
Lj6994:
	movl	-4(%ebp),%eax
	movl	$4,20(%eax)
Lj6995:
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6999
	jmp	Lj7000
Lj6999:
	movl	-4(%ebp),%eax
	decl	172(%eax)
Lj7000:
	movl	-4(%ebp),%eax
	movl	192(%eax),%edx
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	shll	$6,%eax
	leal	(%edx,%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-4(%ebp),%eax
	movl	$2,116(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TELEMENTVALIDATOR_$__ISELEMENTALLOWED$TELEMENTDECL$$BOOLEAN
_XMLREAD_TELEMENTVALIDATOR_$__ISELEMENTALLOWED$TELEMENTDECL$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj7011
	jmp	Lj7010
Lj7011:
	movl	-8(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj7009
	jmp	Lj7010
Lj7009:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	cmpl	$2,%eax
	jb	Lj7013
	subl	$2,%eax
	je	Lj7014
	decl	%eax
	jb	Lj7013
	subl	$1,%eax
	jbe	Lj7015
	jmp	Lj7013
Lj7014:
	movb	$0,-9(%ebp)
	jmp	Lj7012
Lj7015:
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj7018
	jmp	Lj7019
Lj7018:
	jmp	Lj7005
Lj7019:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj7020
	jmp	Lj7021
Lj7020:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub
	movl	%eax,-16(%ebp)
	jmp	Lj7028
Lj7021:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,-16(%ebp)
Lj7028:
	cmpl	$0,-16(%ebp)
	jne	Lj7037
	jmp	Lj7038
Lj7037:
	movb	$1,-9(%ebp)
	jmp	Lj7039
Lj7038:
	movb	$0,-9(%ebp)
Lj7039:
	cmpb	$0,-9(%ebp)
	jne	Lj7040
	jmp	Lj7041
Lj7040:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	jmp	Lj7044
Lj7041:
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
Lj7044:
	jmp	Lj7012
Lj7013:
Lj7012:
Lj7010:
Lj7005:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_TELEMENTVALIDATOR_$__INCOMPLETE$$BOOLEAN
_XMLREAD_TELEMENTVALIDATOR_$__INCOMPLETE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj7052
	jmp	Lj7050
Lj7052:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	je	Lj7051
	jmp	Lj7050
Lj7051:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj7049
	jmp	Lj7050
Lj7049:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj7053
	jmp	Lj7054
Lj7053:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	$0,%edx
	call	L_DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	jmp	Lj7061
Lj7054:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	28(%eax),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub
	movb	%al,-5(%ebp)
Lj7061:
	jmp	Lj7066
Lj7050:
	movb	$0,-5(%ebp)
Lj7066:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFILE$TXMLDOCUMENT$TEXT
_XMLREAD_READXMLFILE$TXMLDOCUMENT$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj7070
Lj7070:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLFILEINPUTSOURCE$non_lazy_ptr-Lj7070(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE$stub
	movl	%eax,-16(%ebp)
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj7070(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	%eax,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj7087
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE$stub
Lj7087:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	216(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj7088
	decl	%eax
	testl	%eax,%eax
	je	Lj7089
Lj7089:
	call	LFPC_RERAISE$stub
Lj7088:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING
_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	call	Lj7100
Lj7100:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj7101
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj7100(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj7112
	movb	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr-Lj7100(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub
	movl	%eax,-20(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-104(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-20(%ebp),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-104(%ebp),%eax
	movl	%eax,36(%esi)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE$stub
Lj7112:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	216(%eax),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj7113
	decl	%eax
	testl	%eax,%eax
	je	Lj7114
Lj7114:
	call	LFPC_RERAISE$stub
Lj7113:
Lj7101:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj7102
	call	LFPC_RERAISE$stub
Lj7102:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM
_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj7141
Lj7141:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld313$non_lazy_ptr-Lj7141(%ebx),%ecx
	call	L_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFILE$TXMLDOCUMENT$ANSISTRING
_XMLREAD_READXMLFILE$TXMLDOCUMENT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj7149
Lj7149:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj7150
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movw	$32,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj7149(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj7165
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING$stub
Lj7165:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj7166
	decl	%eax
	testl	%eax,%eax
	je	Lj7167
Lj7167:
	call	LFPC_RERAISE$stub
Lj7166:
Lj7150:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj7151
	call	LFPC_RERAISE$stub
Lj7151:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFRAGMENT$TDOMNODE$TEXT
_XMLREAD_READXMLFRAGMENT$TDOMNODE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj7184
Lj7184:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj7184(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	%eax,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj7191
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLFILEINPUTSOURCE$non_lazy_ptr-Lj7184(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE$stub
Lj7191:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj7192
	decl	%eax
	testl	%eax,%eax
	je	Lj7193
Lj7193:
	call	LFPC_RERAISE$stub
Lj7192:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM$ANSISTRING
_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	call	Lj7212
Lj7212:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj7213
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj7212(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj7222
	movb	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr-Lj7212(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub
	movl	%eax,-20(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-104(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-20(%ebp),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-104(%ebp),%eax
	movl	%eax,36(%esi)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE$stub
Lj7222:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj7223
	decl	%eax
	testl	%eax,%eax
	je	Lj7224
Lj7224:
	call	LFPC_RERAISE$stub
Lj7223:
Lj7213:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj7214
	call	LFPC_RERAISE$stub
Lj7214:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM
_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj7251
Lj7251:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld313$non_lazy_ptr-Lj7251(%ebx),%ecx
	call	L_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READXMLFRAGMENT$TDOMNODE$ANSISTRING
_XMLREAD_READXMLFRAGMENT$TDOMNODE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj7259
Lj7259:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj7260
	movw	$32,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj7259(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj7273
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM$ANSISTRING$stub
Lj7273:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj7274
	decl	%eax
	testl	%eax,%eax
	je	Lj7275
Lj7275:
	call	LFPC_RERAISE$stub
Lj7274:
Lj7260:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj7261
	call	LFPC_RERAISE$stub
Lj7261:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READDTDFILE$TXMLDOCUMENT$TEXT
_XMLREAD_READDTDFILE$TXMLDOCUMENT$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj7292
Lj7292:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj7292(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	%eax,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj7301
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLFILEINPUTSOURCE$non_lazy_ptr-Lj7292(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSDTD$TXMLCHARSOURCE$stub
Lj7301:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	216(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj7302
	decl	%eax
	testl	%eax,%eax
	je	Lj7303
Lj7303:
	call	LFPC_RERAISE$stub
Lj7302:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING
_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	call	Lj7322
Lj7322:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj7323
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr-Lj7322(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj7334
	movb	$0,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr-Lj7322(%ebx),%edx
	movl	$0,%eax
	call	L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub
	movl	%eax,-20(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-104(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-20(%ebp),%esi
	leal	36(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-104(%ebp),%eax
	movl	%eax,36(%esi)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_XMLREAD_TXMLTEXTREADER_$__PROCESSDTD$TXMLCHARSOURCE$stub
Lj7334:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	216(%eax),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj7335
	decl	%eax
	testl	%eax,%eax
	je	Lj7336
Lj7336:
	call	LFPC_RERAISE$stub
Lj7335:
Lj7323:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj7324
	call	LFPC_RERAISE$stub
Lj7324:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM
_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj7363
Lj7363:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_$XMLREAD$_Ld313$non_lazy_ptr-Lj7363(%ebx),%ecx
	call	L_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLREAD_READDTDFILE$TXMLDOCUMENT$ANSISTRING
_XMLREAD_READDTDFILE$TXMLDOCUMENT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj7371
Lj7371:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj7372
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movw	$32,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj7371(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj7387
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-96(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING$stub
Lj7387:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj7388
	decl	%eax
	testl	%eax,%eax
	je	Lj7389
Lj7389:
	call	LFPC_RERAISE$stub
Lj7388:
Lj7372:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj7373
	call	LFPC_RERAISE$stub
Lj7373:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_XMLREAD
_INIT$_XMLREAD:
.reference __XMLREAD_init_implicit
.globl	__XMLREAD_init_implicit
__XMLREAD_init_implicit:
.reference _INIT$_XMLREAD
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_XMLREAD
_FINALIZE$_XMLREAD:
.reference __XMLREAD_finalize_implicit
.globl	__XMLREAD_finalize_implicit
__XMLREAD_finalize_implicit:
.reference _FINALIZE$_XMLREAD
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj7408
Lj7408:
	popl	%ebx
	movl	L_INIT_XMLREAD_DEF224$non_lazy_ptr-Lj7408(%ebx),%edx
	movl	L_U_XMLREAD_DECODERS$non_lazy_ptr-Lj7408(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_XMLREAD_DEF467$non_lazy_ptr-Lj7408(%ebx),%edx
	movl	L_TC_XMLREAD_PREFIXCHAR$non_lazy_ptr-Lj7408(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_XMLREAD_DEF586$non_lazy_ptr-Lj7408(%ebx),%edx
	movl	L_TC_XMLREAD_ATTRDATATYPENAMES$non_lazy_ptr-Lj7408(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_XMLREAD_DECODERS
.data
.zerofill __DATA, __common, _U_XMLREAD_DECODERS, 4,2



.const_data
	.align 2
.globl	_$XMLREAD$_Ld315
_$XMLREAD$_Ld315:
	.byte	13
	.ascii	"EXMLReadError"

.const_data
	.align 2
.globl	_VMT_XMLREAD_EXMLREADERROR
_VMT_XMLREAD_EXMLREADERROR:
	.long	28,-28
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$XMLREAD$_Ld315
	.long	0,0
	.long	_$XMLREAD$_Ld316
	.long	_RTTI_XMLREAD_EXMLREADERROR
	.long	_INIT_XMLREAD_EXMLREADERROR
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
.globl	_$XMLREAD$_Ld318
_$XMLREAD$_Ld318:
	.byte	16
	.ascii	"TDOMParseOptions"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TDOMPARSEOPTIONS
_VMT_XMLREAD_TDOMPARSEOPTIONS:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLREAD$_Ld318
	.long	0,0
	.long	_$XMLREAD$_Ld319
	.long	_RTTI_XMLREAD_TDOMPARSEOPTIONS
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
.globl	_$XMLREAD$_Ld321
_$XMLREAD$_Ld321:
	.byte	15
	.ascii	"TXMLInputSource"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TXMLINPUTSOURCE
_VMT_XMLREAD_TXMLINPUTSOURCE:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLREAD$_Ld321
	.long	0,0
	.long	_$XMLREAD$_Ld322
	.long	_RTTI_XMLREAD_TXMLINPUTSOURCE
	.long	_INIT_XMLREAD_TXMLINPUTSOURCE
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
.globl	_$XMLREAD$_Ld324
_$XMLREAD$_Ld324:
	.byte	10
	.ascii	"TDOMParser"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TDOMPARSER
_VMT_XMLREAD_TDOMPARSER:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLREAD$_Ld324
	.long	0,0
	.long	_$XMLREAD$_Ld325
	.long	_RTTI_XMLREAD_TDOMPARSER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLREAD_TDOMPARSER_$__DESTROY
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
.globl	_$XMLREAD$_Ld327
_$XMLREAD$_Ld327:
	.byte	18
	.ascii	"TDOMDocumentTypeEx"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TDOMDOCUMENTTYPEEX
_VMT_XMLREAD_TDOMDOCUMENTTYPEEX:
	.long	40,-40
	.long	_VMT_DOM_TDOMDOCUMENTTYPE
	.long	_$XMLREAD$_Ld327
	.long	0,0
	.long	_$XMLREAD$_Ld328
	.long	_RTTI_XMLREAD_TDOMDOCUMENTTYPEEX
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMDOCUMENTTYPE_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_DOM_TDOMNODE_$__FREEINSTANCE
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
	.long	_DOM_TDOMDOCUMENTTYPE_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMDOCUMENTTYPE_$__GETNODETYPE$$LONGINT
	.long	_DOM_TDOMNODE_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMNODE_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMNODE_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__NORMALIZE
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld330
_$XMLREAD$_Ld330:
	.byte	13
	.ascii	"TDOMTopNodeEx"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TDOMTOPNODEEX
_VMT_XMLREAD_TDOMTOPNODEEX:
	.long	56,-56
	.long	_VMT_DOM_TDOMNODE_TOPLEVEL
	.long	_$XMLREAD$_Ld330
	.long	0,0
	.long	_$XMLREAD$_Ld331
	.long	_RTTI_XMLREAD_TDOMTOPNODEEX
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_DOM_TDOMNODE_$__FREEINSTANCE
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
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	FPC_ABSTRACTERROR
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__NORMALIZE
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld333
_$XMLREAD$_Ld333:
	.byte	12
	.ascii	"TDOMEntityEx"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TDOMENTITYEX
_VMT_XMLREAD_TDOMENTITYEX:
	.long	60,-60
	.long	_VMT_DOM_TDOMENTITY
	.long	_$XMLREAD$_Ld333
	.long	0,0
	.long	_$XMLREAD$_Ld334
	.long	_RTTI_XMLREAD_TDOMENTITYEX
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_DOM_TDOMNODE_$__FREEINSTANCE
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
	.long	_DOM_TDOMENTITY_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMENTITY_$__GETNODETYPE$$LONGINT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__NORMALIZE
	.long	_DOM_TDOMENTITY_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld336
_$XMLREAD$_Ld336:
	.byte	14
	.ascii	"TXMLTextReader"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TXMLTEXTREADER
_VMT_XMLREAD_TXMLTEXTREADER:
	.long	220,-220
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLREAD$_Ld336
	.long	0,0
	.long	_$XMLREAD$_Ld337
	.long	_RTTI_XMLREAD_TXMLTEXTREADER
	.long	_INIT_XMLREAD_TXMLTEXTREADER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLREAD_TXMLTEXTREADER_$__DESTROY
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
.globl	_$XMLREAD$_Ld339
_$XMLREAD$_Ld339:
	.byte	14
	.ascii	"TXMLCharSource"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TXMLCHARSOURCE
_VMT_XMLREAD_TXMLCHARSOURCE:
	.long	60,-60
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLREAD$_Ld339
	.long	0,0
	.long	_$XMLREAD$_Ld340
	.long	_RTTI_XMLREAD_TXMLCHARSOURCE
	.long	_INIT_XMLREAD_TXMLCHARSOURCE
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
	.long	_XMLREAD_TXMLCHARSOURCE_$__RELOAD$$BOOLEAN
	.long	_XMLREAD_TXMLCHARSOURCE_$__NEWLINE
	.long	_XMLREAD_TXMLCHARSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR
	.long	_XMLREAD_TXMLCHARSOURCE_$__INITIALIZE
	.long	_XMLREAD_TXMLCHARSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld342
_$XMLREAD$_Ld342:
	.byte	18
	.ascii	"TXMLDecodingSource"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TXMLDECODINGSOURCE
_VMT_XMLREAD_TXMLDECODINGSOURCE:
	.long	96,-96
	.long	_VMT_XMLREAD_TXMLCHARSOURCE
	.long	_$XMLREAD$_Ld342
	.long	0,0
	.long	_$XMLREAD$_Ld343
	.long	_RTTI_XMLREAD_TXMLDECODINGSOURCE
	.long	_INIT_XMLREAD_TXMLDECODINGSOURCE
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__RELOAD$$BOOLEAN
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__NEWLINE
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__INITIALIZE
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__FETCHDATA
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld345
_$XMLREAD$_Ld345:
	.byte	21
	.ascii	"TXMLStreamInputSource"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE
_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE:
	.long	112,-112
	.long	_VMT_XMLREAD_TXMLDECODINGSOURCE
	.long	_$XMLREAD$_Ld345
	.long	0,0
	.long	_$XMLREAD$_Ld346
	.long	_RTTI_XMLREAD_TXMLSTREAMINPUTSOURCE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLREAD_TXMLSTREAMINPUTSOURCE_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__RELOAD$$BOOLEAN
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__NEWLINE
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__INITIALIZE
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN
	.long	_XMLREAD_TXMLSTREAMINPUTSOURCE_$__FETCHDATA
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld348
_$XMLREAD$_Ld348:
	.byte	19
	.ascii	"TXMLFileInputSource"

.const_data
	.align 2
.globl	_VMT_XMLREAD_TXMLFILEINPUTSOURCE
_VMT_XMLREAD_TXMLFILEINPUTSOURCE:
	.long	108,-108
	.long	_VMT_XMLREAD_TXMLDECODINGSOURCE
	.long	_$XMLREAD$_Ld348
	.long	0,0
	.long	_$XMLREAD$_Ld349
	.long	_RTTI_XMLREAD_TXMLFILEINPUTSOURCE
	.long	_INIT_XMLREAD_TXMLFILEINPUTSOURCE
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__RELOAD$$BOOLEAN
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__NEWLINE
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__SKIPUNTIL$TWIDECHARBUF$TSETOFCHAR$PBOOLEAN$$WIDECHAR
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__INITIALIZE
	.long	_XMLREAD_TXMLDECODINGSOURCE_$__SETENCODING$ANSISTRING$$BOOLEAN
	.long	_XMLREAD_TXMLFILEINPUTSOURCE_$__FETCHDATA
	.long	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld351
_$XMLREAD$_Ld351:
	.byte	18
	.ascii	"THandleOwnerStream"

.const_data
	.align 2
.globl	_VMT_XMLREAD_THANDLEOWNERSTREAM
_VMT_XMLREAD_THANDLEOWNERSTREAM:
	.long	8,-8
	.long	_VMT_CLASSES_THANDLESTREAM
	.long	_$XMLREAD$_Ld351
	.long	0,0
	.long	_$XMLREAD$_Ld352
	.long	_RTTI_XMLREAD_THANDLEOWNERSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLREAD_THANDLEOWNERSTREAM_$__DESTROY
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
	.long	_CLASSES_THANDLESTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_THANDLESTREAM_$__SETSIZE$INT64
	.long	_CLASSES_THANDLESTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_THANDLESTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_THANDLESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_XMLREAD
_THREADVARLIST_XMLREAD:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$XMLREAD$_Ld72
_$XMLREAD$_Ld72:
	.short	0,1
	.long	0,-1,1
.reference _$XMLREAD$_Ld71
.globl	_$XMLREAD$_Ld71
_$XMLREAD$_Ld71:
.reference _$XMLREAD$_Ld72
	.ascii	"%\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld158
_$XMLREAD$_Ld158:
	.long	-1,10
.reference _$XMLREAD$_Ld157
.globl	_$XMLREAD$_Ld157
_$XMLREAD$_Ld157:
.reference _$XMLREAD$_Ld158
	.short	67,68,65,84,65,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld160
_$XMLREAD$_Ld160:
	.long	-1,4
.reference _$XMLREAD$_Ld159
.globl	_$XMLREAD$_Ld159
_$XMLREAD$_Ld159:
.reference _$XMLREAD$_Ld160
	.short	73,68,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld162
_$XMLREAD$_Ld162:
	.long	-1,10
.reference _$XMLREAD$_Ld161
.globl	_$XMLREAD$_Ld161
_$XMLREAD$_Ld161:
.reference _$XMLREAD$_Ld162
	.short	73,68,82,69,70,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld164
_$XMLREAD$_Ld164:
	.long	-1,12
.reference _$XMLREAD$_Ld163
.globl	_$XMLREAD$_Ld163
_$XMLREAD$_Ld163:
.reference _$XMLREAD$_Ld164
	.short	73,68,82,69,70,83,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld166
_$XMLREAD$_Ld166:
	.long	-1,12
.reference _$XMLREAD$_Ld165
.globl	_$XMLREAD$_Ld165
_$XMLREAD$_Ld165:
.reference _$XMLREAD$_Ld166
	.short	69,78,84,73,84,89,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld168
_$XMLREAD$_Ld168:
	.long	-1,16
.reference _$XMLREAD$_Ld167
.globl	_$XMLREAD$_Ld167
_$XMLREAD$_Ld167:
.reference _$XMLREAD$_Ld168
	.short	69,78,84,73,84,73,69,83,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld170
_$XMLREAD$_Ld170:
	.long	-1,14
.reference _$XMLREAD$_Ld169
.globl	_$XMLREAD$_Ld169
_$XMLREAD$_Ld169:
.reference _$XMLREAD$_Ld170
	.short	78,77,84,79,75,69,78,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld172
_$XMLREAD$_Ld172:
	.long	-1,16
.reference _$XMLREAD$_Ld171
.globl	_$XMLREAD$_Ld171
_$XMLREAD$_Ld171:
.reference _$XMLREAD$_Ld172
	.short	78,77,84,79,75,69,78,83,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld174
_$XMLREAD$_Ld174:
	.long	-1,16
.reference _$XMLREAD$_Ld173
.globl	_$XMLREAD$_Ld173
_$XMLREAD$_Ld173:
.reference _$XMLREAD$_Ld174
	.short	78,79,84,65,84,73,79,78,0
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 3
.globl	_TC_XMLREAD_PUBIDCHARS
_TC_XMLREAD_PUBIDCHARS:
	.byte	0,36,0,0,187,255,255,175,255,255,255,135,254,255,255,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_XMLREAD_NULLLOCATION
_TC_XMLREAD_NULLLOCATION:
	.long	0,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld2
_$XMLREAD$_Ld2:
	.short	0,1
	.long	0,-1,10
.reference _$XMLREAD$_Ld1
.globl	_$XMLREAD$_Ld1
_$XMLREAD$_Ld1:
.reference _$XMLREAD$_Ld2
	.ascii	"ISO-8859-1\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld4
_$XMLREAD$_Ld4:
	.short	0,1
	.long	0,-1,10
.reference _$XMLREAD$_Ld3
.globl	_$XMLREAD$_Ld3
_$XMLREAD$_Ld3:
.reference _$XMLREAD$_Ld4
	.ascii	"ISO_8859-1\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld6
_$XMLREAD$_Ld6:
	.short	0,1
	.long	0,-1,6
.reference _$XMLREAD$_Ld5
.globl	_$XMLREAD$_Ld5
_$XMLREAD$_Ld5:
.reference _$XMLREAD$_Ld6
	.ascii	"latin1\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld8
_$XMLREAD$_Ld8:
	.short	0,1
	.long	0,-1,10
.reference _$XMLREAD$_Ld7
.globl	_$XMLREAD$_Ld7
_$XMLREAD$_Ld7:
.reference _$XMLREAD$_Ld8
	.ascii	"iso-ir-100\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld10
_$XMLREAD$_Ld10:
	.short	0,1
	.long	0,-1,2
.reference _$XMLREAD$_Ld9
.globl	_$XMLREAD$_Ld9
_$XMLREAD$_Ld9:
.reference _$XMLREAD$_Ld10
	.ascii	"l1\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld12
_$XMLREAD$_Ld12:
	.short	0,1
	.long	0,-1,6
.reference _$XMLREAD$_Ld11
.globl	_$XMLREAD$_Ld11
_$XMLREAD$_Ld11:
.reference _$XMLREAD$_Ld12
	.ascii	"IBM819\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld14
_$XMLREAD$_Ld14:
	.short	0,1
	.long	0,-1,5
.reference _$XMLREAD$_Ld13
.globl	_$XMLREAD$_Ld13
_$XMLREAD$_Ld13:
.reference _$XMLREAD$_Ld14
	.ascii	"CP819\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld16
_$XMLREAD$_Ld16:
	.short	0,1
	.long	0,-1,11
.reference _$XMLREAD$_Ld15
.globl	_$XMLREAD$_Ld15
_$XMLREAD$_Ld15:
.reference _$XMLREAD$_Ld16
	.ascii	"csISOLatin1\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld18
_$XMLREAD$_Ld18:
	.short	0,1
	.long	0,-1,9
.reference _$XMLREAD$_Ld17
.globl	_$XMLREAD$_Ld17
_$XMLREAD$_Ld17:
.reference _$XMLREAD$_Ld18
	.ascii	"ISO8859-1\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld20
_$XMLREAD$_Ld20:
	.short	0,1
	.long	0,-1,39
.reference _$XMLREAD$_Ld19
.globl	_$XMLREAD$_Ld19
_$XMLREAD$_Ld19:
.reference _$XMLREAD$_Ld20
	.ascii	"The specified URI could not be resolved\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld22
_$XMLREAD$_Ld22:
	.short	0,1
	.long	0,-1,26
.reference _$XMLREAD$_Ld21
.globl	_$XMLREAD$_Ld21
_$XMLREAD$_Ld21:
.reference _$XMLREAD$_Ld22
	.ascii	"DOMParser.ParseWithContext\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld24
_$XMLREAD$_Ld24:
	.short	0,1
	.long	0,-1,45
.reference _$XMLREAD$_Ld23
.globl	_$XMLREAD$_Ld23
_$XMLREAD$_Ld23:
.reference _$XMLREAD$_Ld24
	.ascii	"Decoder error: input byte count out of bounds\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld26
_$XMLREAD$_Ld26:
	.short	0,1
	.long	0,-1,46
.reference _$XMLREAD$_Ld25
.globl	_$XMLREAD$_Ld25
_$XMLREAD$_Ld25:
.reference _$XMLREAD$_Ld26
	.ascii	"Decoder error: output char count out of bounds\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld28
_$XMLREAD$_Ld28:
	.short	0,1
	.long	0,-1,33
.reference _$XMLREAD$_Ld27
.globl	_$XMLREAD$_Ld27
_$XMLREAD$_Ld27:
.reference _$XMLREAD$_Ld28
	.ascii	"Invalid character in input stream\000"

.data
	.align 1
.globl	_TC_XMLREAD_XMLSIGN
_TC_XMLREAD_XMLSIGN:
	.short	60,63,120,109,108

.const_data
	.align 2
.globl	_$XMLREAD$_Ld30
_$XMLREAD$_Ld30:
	.short	0,1
	.long	0,-1,8
.reference _$XMLREAD$_Ld29
.globl	_$XMLREAD$_Ld29
_$XMLREAD$_Ld29:
.reference _$XMLREAD$_Ld30
	.ascii	"UTF-16BE\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld32
_$XMLREAD$_Ld32:
	.short	0,1
	.long	0,-1,8
.reference _$XMLREAD$_Ld31
.globl	_$XMLREAD$_Ld31
_$XMLREAD$_Ld31:
.reference _$XMLREAD$_Ld32
	.ascii	"UTF-16LE\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld34
_$XMLREAD$_Ld34:
	.short	0,1
	.long	0,-1,5
.reference _$XMLREAD$_Ld33
.globl	_$XMLREAD$_Ld33
_$XMLREAD$_Ld33:
.reference _$XMLREAD$_Ld34
	.ascii	"UTF-8\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld36
_$XMLREAD$_Ld36:
	.short	0,1
	.long	0,-1,6
.reference _$XMLREAD$_Ld35
.globl	_$XMLREAD$_Ld35
_$XMLREAD$_Ld35:
.reference _$XMLREAD$_Ld36
	.ascii	"UTF-16\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld38
_$XMLREAD$_Ld38:
	.short	0,1
	.long	0,-1,7
.reference _$XMLREAD$_Ld37
.globl	_$XMLREAD$_Ld37
_$XMLREAD$_Ld37:
.reference _$XMLREAD$_Ld38
	.ascii	"unicode\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld40
_$XMLREAD$_Ld40:
	.short	0,1
	.long	0,-1,1
.reference _$XMLREAD$_Ld39
.globl	_$XMLREAD$_Ld39
_$XMLREAD$_Ld39:
.reference _$XMLREAD$_Ld40
	.ascii	"\012\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld42
_$XMLREAD$_Ld42:
	.short	0,1
	.long	0,-1,25
.reference _$XMLREAD$_Ld41
.globl	_$XMLREAD$_Ld41
_$XMLREAD$_Ld41:
.reference _$XMLREAD$_Ld42
	.ascii	"No input source specified\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld44
_$XMLREAD$_Ld44:
	.short	0,1
	.long	0,-1,14
.reference _$XMLREAD$_Ld43
.globl	_$XMLREAD$_Ld43
_$XMLREAD$_Ld43:
.reference _$XMLREAD$_Ld44
	.ascii	"Expected \"%1s\"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld46
_$XMLREAD$_Ld46:
	.short	0,1
	.long	0,-1,28
.reference _$XMLREAD$_Ld45
.globl	_$XMLREAD$_Ld45
_$XMLREAD$_Ld45:
.reference _$XMLREAD$_Ld46
	.ascii	"In '%s' (line %d pos %d): %s\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld48
_$XMLREAD$_Ld48:
	.short	0,1
	.long	0,-1,30
.reference _$XMLREAD$_Ld47
.globl	_$XMLREAD$_Ld47
_$XMLREAD$_Ld47:
.reference _$XMLREAD$_Ld48
	.ascii	"Exceeded character count limit\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld50
_$XMLREAD$_Ld50:
	.short	0,1
	.long	0,-1,19
.reference _$XMLREAD$_Ld49
.globl	_$XMLREAD$_Ld49
_$XMLREAD$_Ld49:
.reference _$XMLREAD$_Ld50
	.ascii	"Expected whitespace\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld52
_$XMLREAD$_Ld52:
	.short	0,1
	.long	0,-1,13
.reference _$XMLREAD$_Ld51
.globl	_$XMLREAD$_Ld51
_$XMLREAD$_Ld51:
.reference _$XMLREAD$_Ld52
	.ascii	"Expected \"%s\"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld54
_$XMLREAD$_Ld54:
	.short	0,1
	.long	0,-1,31
.reference _$XMLREAD$_Ld53
.globl	_$XMLREAD$_Ld53
_$XMLREAD$_Ld53:
.reference _$XMLREAD$_Ld54
	.ascii	"Expected single or double quote\000"

.data
	.align 1
.globl	_TC_XMLREAD_PREFIXDEFAULT
_TC_XMLREAD_PREFIXDEFAULT:
	.short	120,109,108,110,115

.const_data
	.align 2
.globl	_$XMLREAD$_Ld56
_$XMLREAD$_Ld56:
	.long	-1,6
.reference _$XMLREAD$_Ld55
.globl	_$XMLREAD$_Ld55
_$XMLREAD$_Ld55:
.reference _$XMLREAD$_Ld56
	.short	49,46,49,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld58
_$XMLREAD$_Ld58:
	.short	0,1
	.long	0,-1,79
.reference _$XMLREAD$_Ld57
.globl	_$XMLREAD$_Ld57
_$XMLREAD$_Ld57:
.reference _$XMLREAD$_Ld58
	.ascii	"Names of entities, notations and processing instruc"
	.ascii	"tions may not contain colons\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld60
_$XMLREAD$_Ld60:
	.short	0,1
	.long	0,-1,39
.reference _$XMLREAD$_Ld59
.globl	_$XMLREAD$_Ld59
_$XMLREAD$_Ld59:
.reference _$XMLREAD$_Ld60
	.ascii	"Bad QName syntax, local part is missing\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld62
_$XMLREAD$_Ld62:
	.short	0,1
	.long	0,-1,30
.reference _$XMLREAD$_Ld61
.globl	_$XMLREAD$_Ld61
_$XMLREAD$_Ld61:
.reference _$XMLREAD$_Ld62
	.ascii	"Whitespace is not allowed here\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld64
_$XMLREAD$_Ld64:
	.short	0,1
	.long	0,-1,34
.reference _$XMLREAD$_Ld63
.globl	_$XMLREAD$_Ld63
_$XMLREAD$_Ld63:
.reference _$XMLREAD$_Ld64
	.ascii	"Name starts with invalid character\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld66
_$XMLREAD$_Ld66:
	.short	0,1
	.long	0,-1,27
.reference _$XMLREAD$_Ld65
.globl	_$XMLREAD$_Ld65
_$XMLREAD$_Ld65:
.reference _$XMLREAD$_Ld66
	.ascii	"Invalid character reference\000"

.data
	.align 3
.globl	_TC_XMLREAD_ATTRDELIMS
_TC_XMLREAD_ATTRDELIMS:
	.byte	1,38,0,0,196,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 3
.globl	_TC_XMLREAD_GT_DELIM
_TC_XMLREAD_GT_DELIM:
	.byte	1,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld68
_$XMLREAD$_Ld68:
	.short	0,1
	.long	0,-1,47
.reference _$XMLREAD$_Ld67
.globl	_$XMLREAD$_Ld67
_$XMLREAD$_Ld67:
.reference _$XMLREAD$_Ld68
	.ascii	"Character '<' is not allowed in attribute value\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld70
_$XMLREAD$_Ld70:
	.short	0,1
	.long	0,-1,28
.reference _$XMLREAD$_Ld69
.globl	_$XMLREAD$_Ld69
_$XMLREAD$_Ld69:
.reference _$XMLREAD$_Ld70
	.ascii	"Literal has no closing quote\000"

.data
	.align 2
.globl	_TC_XMLREAD_PREFIXCHAR
_TC_XMLREAD_PREFIXCHAR:
	.long	0
	.long	_$XMLREAD$_Ld71

.const_data
	.align 2
.globl	_$XMLREAD$_Ld74
_$XMLREAD$_Ld74:
	.short	0,1
	.long	0,-1,43
.reference _$XMLREAD$_Ld73
.globl	_$XMLREAD$_Ld73
_$XMLREAD$_Ld73:
.reference _$XMLREAD$_Ld74
	.ascii	"Entity '%s%s' recursively references itself\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld76
_$XMLREAD$_Ld76:
	.short	0,1
	.long	0,-1,38
.reference _$XMLREAD$_Ld75
.globl	_$XMLREAD$_Ld75
_$XMLREAD$_Ld75:
.reference _$XMLREAD$_Ld76
	.ascii	"Unable to resolve external entity '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld78
_$XMLREAD$_Ld78:
	.short	0,1
	.long	0,-1,34
.reference _$XMLREAD$_Ld77
.globl	_$XMLREAD$_Ld77
_$XMLREAD$_Ld77:
.reference _$XMLREAD$_Ld78
	.ascii	"Reference to undefined entity '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld80
_$XMLREAD$_Ld80:
	.short	0,1
	.long	0,-1,32
.reference _$XMLREAD$_Ld79
.globl	_$XMLREAD$_Ld79
_$XMLREAD$_Ld79:
.reference _$XMLREAD$_Ld80
	.ascii	"Undefined entity '%s' referenced\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld82
_$XMLREAD$_Ld82:
	.short	0,1
	.long	0,-1,31
.reference _$XMLREAD$_Ld81
.globl	_$XMLREAD$_Ld81
_$XMLREAD$_Ld81:
.reference _$XMLREAD$_Ld82
	.ascii	"Standalone constraint violation\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld84
_$XMLREAD$_Ld84:
	.short	0,1
	.long	0,-1,33
.reference _$XMLREAD$_Ld83
.globl	_$XMLREAD$_Ld83
_$XMLREAD$_Ld83:
.reference _$XMLREAD$_Ld84
	.ascii	"Reference to unparsed entity '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld86
_$XMLREAD$_Ld86:
	.short	0,1
	.long	0,-1,59
.reference _$XMLREAD$_Ld85
.globl	_$XMLREAD$_Ld85
_$XMLREAD$_Ld85:
.reference _$XMLREAD$_Ld86
	.ascii	"External entity reference is not allowed in attribu"
	.ascii	"te value\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld88
_$XMLREAD$_Ld88:
	.short	0,1
	.long	0,-1,42
.reference _$XMLREAD$_Ld87
.globl	_$XMLREAD$_Ld87
_$XMLREAD$_Ld87:
.reference _$XMLREAD$_Ld88
	.ascii	"Undefined parameter entity '%s' referenced\000"

.const
	.align 3
.globl	_$XMLREAD$_Ld89
_$XMLREAD$_Ld89:
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 3
.globl	_TC_XMLREAD_LITERALDELIMS
_TC_XMLREAD_LITERALDELIMS:
	.byte	1,0,0,0,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,36,0,0,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0
	.byte	0,0,228,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld91
_$XMLREAD$_Ld91:
	.short	0,1
	.long	0,-1,48
.reference _$XMLREAD$_Ld90
.globl	_$XMLREAD$_Ld90
_$XMLREAD$_Ld90:
.reference _$XMLREAD$_Ld91
	.ascii	"PE reference not allowed here in internal subset\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld93
_$XMLREAD$_Ld93:
	.short	0,1
	.long	0,-1,2
.reference _$XMLREAD$_Ld92
.globl	_$XMLREAD$_Ld92
_$XMLREAD$_Ld92:
.reference _$XMLREAD$_Ld93
	.ascii	"--\000"

.const
	.align 3
.globl	_$XMLREAD$_Ld94
_$XMLREAD$_Ld94:
	.byte	1,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld96
_$XMLREAD$_Ld96:
	.short	0,1
	.long	0,-1,20
.reference _$XMLREAD$_Ld95
.globl	_$XMLREAD$_Ld95
_$XMLREAD$_Ld95:
.reference _$XMLREAD$_Ld96
	.ascii	"Unterminated comment\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld98
_$XMLREAD$_Ld98:
	.long	-1,6
.reference _$XMLREAD$_Ld97
.globl	_$XMLREAD$_Ld97
_$XMLREAD$_Ld97:
.reference _$XMLREAD$_Ld98
	.short	120,109,108,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld100
_$XMLREAD$_Ld100:
	.short	0,1
	.long	0,-1,46
.reference _$XMLREAD$_Ld99
.globl	_$XMLREAD$_Ld99
_$XMLREAD$_Ld99:
.reference _$XMLREAD$_Ld100
	.ascii	"'xml' is a reserved word; it must be lowercase\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld102
_$XMLREAD$_Ld102:
	.short	0,1
	.long	0,-1,35
.reference _$XMLREAD$_Ld101
.globl	_$XMLREAD$_Ld101
_$XMLREAD$_Ld101:
.reference _$XMLREAD$_Ld102
	.ascii	"XML declaration is not allowed here\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld104
_$XMLREAD$_Ld104:
	.short	0,1
	.long	0,-1,35
.reference _$XMLREAD$_Ld103
.globl	_$XMLREAD$_Ld103
_$XMLREAD$_Ld103:
.reference _$XMLREAD$_Ld104
	.ascii	"Unterminated processing instruction\000"

.data
	.align 2
.globl	_TC_XMLREAD_VERS
_TC_XMLREAD_VERS:
	.long	1,2

.const_data
	.align 2
.globl	_$XMLREAD$_Ld106
_$XMLREAD$_Ld106:
	.short	0,1
	.long	0,-1,7
.reference _$XMLREAD$_Ld105
.globl	_$XMLREAD$_Ld105
_$XMLREAD$_Ld105:
.reference _$XMLREAD$_Ld106
	.ascii	"version\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld108
_$XMLREAD$_Ld108:
	.short	0,1
	.long	0,-1,22
.reference _$XMLREAD$_Ld107
.globl	_$XMLREAD$_Ld107
_$XMLREAD$_Ld107:
.reference _$XMLREAD$_Ld108
	.ascii	"Illegal version number\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld110
_$XMLREAD$_Ld110:
	.short	0,1
	.long	0,-1,47
.reference _$XMLREAD$_Ld109
.globl	_$XMLREAD$_Ld109
_$XMLREAD$_Ld109:
.reference _$XMLREAD$_Ld110
	.ascii	"XML 1.0 document cannot invoke XML 1.1 entities\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld112
_$XMLREAD$_Ld112:
	.short	0,1
	.long	0,-1,8
.reference _$XMLREAD$_Ld111
.globl	_$XMLREAD$_Ld111
_$XMLREAD$_Ld111:
.reference _$XMLREAD$_Ld112
	.ascii	"encoding\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld114
_$XMLREAD$_Ld114:
	.short	0,1
	.long	0,-1,21
.reference _$XMLREAD$_Ld113
.globl	_$XMLREAD$_Ld113
_$XMLREAD$_Ld113:
.reference _$XMLREAD$_Ld114
	.ascii	"Illegal encoding name\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld116
_$XMLREAD$_Ld116:
	.short	0,1
	.long	0,-1,30
.reference _$XMLREAD$_Ld115
.globl	_$XMLREAD$_Ld115
_$XMLREAD$_Ld115:
.reference _$XMLREAD$_Ld116
	.ascii	"Encoding '%s' is not supported\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld118
_$XMLREAD$_Ld118:
	.short	0,1
	.long	0,-1,10
.reference _$XMLREAD$_Ld117
.globl	_$XMLREAD$_Ld117
_$XMLREAD$_Ld117:
.reference _$XMLREAD$_Ld118
	.ascii	"standalone\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld120
_$XMLREAD$_Ld120:
	.long	-1,6
.reference _$XMLREAD$_Ld119
.globl	_$XMLREAD$_Ld119
_$XMLREAD$_Ld119:
.reference _$XMLREAD$_Ld120
	.short	121,101,115,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld122
_$XMLREAD$_Ld122:
	.long	-1,4
.reference _$XMLREAD$_Ld121
.globl	_$XMLREAD$_Ld121
_$XMLREAD$_Ld121:
.reference _$XMLREAD$_Ld122
	.short	110,111,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld124
_$XMLREAD$_Ld124:
	.short	0,1
	.long	0,-1,58
.reference _$XMLREAD$_Ld123
.globl	_$XMLREAD$_Ld123
_$XMLREAD$_Ld123:
.reference _$XMLREAD$_Ld124
	.ascii	"Only \"yes\" or \"no\" are permitted as values of \""
	.ascii	"standalone\"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld126
_$XMLREAD$_Ld126:
	.short	0,1
	.long	0,-1,2
.reference _$XMLREAD$_Ld125
.globl	_$XMLREAD$_Ld125
_$XMLREAD$_Ld125:
.reference _$XMLREAD$_Ld126
	.ascii	"?>\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld128
_$XMLREAD$_Ld128:
	.short	0,1
	.long	0,-1,38
.reference _$XMLREAD$_Ld127
.globl	_$XMLREAD$_Ld127
_$XMLREAD$_Ld127:
.reference _$XMLREAD$_Ld128
	.ascii	"Markup declaration is not allowed here\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld130
_$XMLREAD$_Ld130:
	.short	0,1
	.long	0,-1,46
.reference _$XMLREAD$_Ld129
.globl	_$XMLREAD$_Ld129
_$XMLREAD$_Ld129:
.reference _$XMLREAD$_Ld130
	.ascii	"Document type is prohibited by parser settings\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld132
_$XMLREAD$_Ld132:
	.short	0,1
	.long	0,-1,7
.reference _$XMLREAD$_Ld131
.globl	_$XMLREAD$_Ld131
_$XMLREAD$_Ld131:
.reference _$XMLREAD$_Ld132
	.ascii	"DOCTYPE\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld134
_$XMLREAD$_Ld134:
	.short	0,1
	.long	0,-1,37
.reference _$XMLREAD$_Ld133
.globl	_$XMLREAD$_Ld133
_$XMLREAD$_Ld133:
.reference _$XMLREAD$_Ld134
	.ascii	"Unable to resolve external DTD subset\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld136
_$XMLREAD$_Ld136:
	.short	0,1
	.long	0,-1,12
.reference _$XMLREAD$_Ld135
.globl	_$XMLREAD$_Ld135
_$XMLREAD$_Ld135:
.reference _$XMLREAD$_Ld136
	.ascii	"Expected \"=\"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld138
_$XMLREAD$_Ld138:
	.short	0,1
	.long	0,-1,42
.reference _$XMLREAD$_Ld137
.globl	_$XMLREAD$_Ld137
_$XMLREAD$_Ld137:
.reference _$XMLREAD$_Ld138
	.ascii	"Parameter entities must be properly nested\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld140
_$XMLREAD$_Ld140:
	.short	0,1
	.long	0,-1,31
.reference _$XMLREAD$_Ld139
.globl	_$XMLREAD$_Ld139
_$XMLREAD$_Ld139:
.reference _$XMLREAD$_Ld140
	.ascii	"Standalone constriant violation\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld142
_$XMLREAD$_Ld142:
	.short	0,1
	.long	0,-1,32
.reference _$XMLREAD$_Ld141
.globl	_$XMLREAD$_Ld141
_$XMLREAD$_Ld141:
.reference _$XMLREAD$_Ld142
	.ascii	"Expected pipe or comma delimiter\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld144
_$XMLREAD$_Ld144:
	.short	0,1
	.long	0,-1,37
.reference _$XMLREAD$_Ld143
.globl	_$XMLREAD$_Ld143
_$XMLREAD$_Ld143:
.reference _$XMLREAD$_Ld144
	.ascii	"Duplicate declaration of element '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld146
_$XMLREAD$_Ld146:
	.long	-1,10
.reference _$XMLREAD$_Ld145
.globl	_$XMLREAD$_Ld145
_$XMLREAD$_Ld145:
.reference _$XMLREAD$_Ld146
	.short	69,77,80,84,89,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld148
_$XMLREAD$_Ld148:
	.long	-1,6
.reference _$XMLREAD$_Ld147
.globl	_$XMLREAD$_Ld147
_$XMLREAD$_Ld147:
.reference _$XMLREAD$_Ld148
	.short	65,78,89,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld150
_$XMLREAD$_Ld150:
	.long	-1,14
.reference _$XMLREAD$_Ld149
.globl	_$XMLREAD$_Ld149
_$XMLREAD$_Ld149:
.reference _$XMLREAD$_Ld150
	.short	35,80,67,68,65,84,65,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld152
_$XMLREAD$_Ld152:
	.short	0,1
	.long	0,-1,32
.reference _$XMLREAD$_Ld151
.globl	_$XMLREAD$_Ld151
_$XMLREAD$_Ld151:
.reference _$XMLREAD$_Ld152
	.ascii	"Duplicate token in mixed section\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld154
_$XMLREAD$_Ld154:
	.short	0,1
	.long	0,-1,29
.reference _$XMLREAD$_Ld153
.globl	_$XMLREAD$_Ld153
_$XMLREAD$_Ld153:
.reference _$XMLREAD$_Ld154
	.ascii	"Invalid content specification\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld156
_$XMLREAD$_Ld156:
	.short	0,1
	.long	0,-1,30
.reference _$XMLREAD$_Ld155
.globl	_$XMLREAD$_Ld155
_$XMLREAD$_Ld155:
.reference _$XMLREAD$_Ld156
	.ascii	"Expected external or public ID\000"

.data
	.align 2
.globl	_TC_XMLREAD_ATTRDATATYPENAMES
_TC_XMLREAD_ATTRDATATYPENAMES:
	.long	_$XMLREAD$_Ld157
	.long	_$XMLREAD$_Ld159
	.long	_$XMLREAD$_Ld161
	.long	_$XMLREAD$_Ld163
	.long	_$XMLREAD$_Ld165
	.long	_$XMLREAD$_Ld167
	.long	_$XMLREAD$_Ld169
	.long	_$XMLREAD$_Ld171
	.long	_$XMLREAD$_Ld173

.const_data
	.align 2
.globl	_$XMLREAD$_Ld176
_$XMLREAD$_Ld176:
	.short	0,1
	.long	0,-1,50
.reference _$XMLREAD$_Ld175
.globl	_$XMLREAD$_Ld175
_$XMLREAD$_Ld175:
.reference _$XMLREAD$_Ld176
	.ascii	"Duplicate token in enumerated attibute declaration\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld178
_$XMLREAD$_Ld178:
	.short	0,1
	.long	0,-1,52
.reference _$XMLREAD$_Ld177
.globl	_$XMLREAD$_Ld177
_$XMLREAD$_Ld177:
.reference _$XMLREAD$_Ld178
	.ascii	"Only one attribute of type ID is allowed per elemen"
	.ascii	"t\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld180
_$XMLREAD$_Ld180:
	.short	0,1
	.long	0,-1,58
.reference _$XMLREAD$_Ld179
.globl	_$XMLREAD$_Ld179
_$XMLREAD$_Ld179:
.reference _$XMLREAD$_Ld180
	.ascii	"Only one attribute of type NOTATION is allowed per "
	.ascii	"element\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld182
_$XMLREAD$_Ld182:
	.short	0,1
	.long	0,-1,53
.reference _$XMLREAD$_Ld181
.globl	_$XMLREAD$_Ld181
_$XMLREAD$_Ld181:
.reference _$XMLREAD$_Ld182
	.ascii	"NOTATION attributes are not allowed on EMPTY elemen"
	.ascii	"ts\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld184
_$XMLREAD$_Ld184:
	.short	0,1
	.long	0,-1,49
.reference _$XMLREAD$_Ld183
.globl	_$XMLREAD$_Ld183
_$XMLREAD$_Ld183:
.reference _$XMLREAD$_Ld184
	.ascii	"Duplicate token in NOTATION attribute declaration\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld186
_$XMLREAD$_Ld186:
	.short	0,1
	.long	0,-1,31
.reference _$XMLREAD$_Ld185
.globl	_$XMLREAD$_Ld185
_$XMLREAD$_Ld185:
.reference _$XMLREAD$_Ld186
	.ascii	"Illegal attribute type for '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld188
_$XMLREAD$_Ld188:
	.long	-1,18
.reference _$XMLREAD$_Ld187
.globl	_$XMLREAD$_Ld187
_$XMLREAD$_Ld187:
.reference _$XMLREAD$_Ld188
	.short	35,82,69,81,85,73,82,69,68,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld190
_$XMLREAD$_Ld190:
	.long	-1,16
.reference _$XMLREAD$_Ld189
.globl	_$XMLREAD$_Ld189
_$XMLREAD$_Ld189:
.reference _$XMLREAD$_Ld190
	.short	35,73,77,80,76,73,69,68,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld192
_$XMLREAD$_Ld192:
	.long	-1,12
.reference _$XMLREAD$_Ld191
.globl	_$XMLREAD$_Ld191
_$XMLREAD$_Ld191:
.reference _$XMLREAD$_Ld192
	.short	35,70,73,88,69,68,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld194
_$XMLREAD$_Ld194:
	.short	0,1
	.long	0,-1,51
.reference _$XMLREAD$_Ld193
.globl	_$XMLREAD$_Ld193
_$XMLREAD$_Ld193:
.reference _$XMLREAD$_Ld194
	.ascii	"An attribute of type ID cannot have a default value"
	.ascii	"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld196
_$XMLREAD$_Ld196:
	.short	0,1
	.long	0,-1,49
.reference _$XMLREAD$_Ld195
.globl	_$XMLREAD$_Ld195
_$XMLREAD$_Ld195:
.reference _$XMLREAD$_Ld196
	.ascii	"Default value for attribute '%s' has wrong syntax\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld198
_$XMLREAD$_Ld198:
	.short	0,1
	.long	0,-1,36
.reference _$XMLREAD$_Ld197
.globl	_$XMLREAD$_Ld197
_$XMLREAD$_Ld197:
.reference _$XMLREAD$_Ld198
	.ascii	"Expected entity value or external ID\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld200
_$XMLREAD$_Ld200:
	.long	-1,10
.reference _$XMLREAD$_Ld199
.globl	_$XMLREAD$_Ld199
_$XMLREAD$_Ld199:
.reference _$XMLREAD$_Ld200
	.short	78,68,65,84,65,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld202
_$XMLREAD$_Ld202:
	.short	0,1
	.long	0,-1,3
.reference _$XMLREAD$_Ld201
.globl	_$XMLREAD$_Ld201
_$XMLREAD$_Ld201:
.reference _$XMLREAD$_Ld202
	.ascii	"]]>\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld204
_$XMLREAD$_Ld204:
	.short	0,1
	.long	0,-1,55
.reference _$XMLREAD$_Ld203
.globl	_$XMLREAD$_Ld203
_$XMLREAD$_Ld203:
.reference _$XMLREAD$_Ld204
	.ascii	"Conditional sections are not allowed in internal su"
	.ascii	"bset\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld206
_$XMLREAD$_Ld206:
	.long	-1,14
.reference _$XMLREAD$_Ld205
.globl	_$XMLREAD$_Ld205
_$XMLREAD$_Ld205:
.reference _$XMLREAD$_Ld206
	.short	73,78,67,76,85,68,69,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld208
_$XMLREAD$_Ld208:
	.long	-1,12
.reference _$XMLREAD$_Ld207
.globl	_$XMLREAD$_Ld207
_$XMLREAD$_Ld207:
.reference _$XMLREAD$_Ld208
	.short	73,71,78,79,82,69,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld210
_$XMLREAD$_Ld210:
	.short	0,1
	.long	0,-1,30
.reference _$XMLREAD$_Ld209
.globl	_$XMLREAD$_Ld209
_$XMLREAD$_Ld209:
.reference _$XMLREAD$_Ld210
	.ascii	"Expected \"INCLUDE\" or \"IGNORE\"\000"

.const
	.align 3
.globl	_$XMLREAD$_Ld211
_$XMLREAD$_Ld211:
	.byte	1,0,0,0,0,0,0,16,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld213
_$XMLREAD$_Ld213:
	.long	-1,6
.reference _$XMLREAD$_Ld212
.globl	_$XMLREAD$_Ld212
_$XMLREAD$_Ld212:
.reference _$XMLREAD$_Ld213
	.short	60,33,91,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld215
_$XMLREAD$_Ld215:
	.long	-1,6
.reference _$XMLREAD$_Ld214
.globl	_$XMLREAD$_Ld214
_$XMLREAD$_Ld214:
.reference _$XMLREAD$_Ld215
	.short	93,93,62,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld217
_$XMLREAD$_Ld217:
	.short	0,1
	.long	0,-1,28
.reference _$XMLREAD$_Ld216
.globl	_$XMLREAD$_Ld216
_$XMLREAD$_Ld216:
.reference _$XMLREAD$_Ld217
	.ascii	"IGNORE section is not closed\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld219
_$XMLREAD$_Ld219:
	.long	-1,14
.reference _$XMLREAD$_Ld218
.globl	_$XMLREAD$_Ld218
_$XMLREAD$_Ld218:
.reference _$XMLREAD$_Ld219
	.short	69,76,69,77,69,78,84,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld221
_$XMLREAD$_Ld221:
	.long	-1,12
.reference _$XMLREAD$_Ld220
.globl	_$XMLREAD$_Ld220
_$XMLREAD$_Ld220:
.reference _$XMLREAD$_Ld221
	.short	69,78,84,73,84,89,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld223
_$XMLREAD$_Ld223:
	.long	-1,14
.reference _$XMLREAD$_Ld222
.globl	_$XMLREAD$_Ld222
_$XMLREAD$_Ld222:
.reference _$XMLREAD$_Ld223
	.short	65,84,84,76,73,83,84,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld225
_$XMLREAD$_Ld225:
	.long	-1,16
.reference _$XMLREAD$_Ld224
.globl	_$XMLREAD$_Ld224
_$XMLREAD$_Ld224:
.reference _$XMLREAD$_Ld225
	.short	78,79,84,65,84,73,79,78,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld227
_$XMLREAD$_Ld227:
	.short	0,1
	.long	0,-1,26
.reference _$XMLREAD$_Ld226
.globl	_$XMLREAD$_Ld226
_$XMLREAD$_Ld226:
.reference _$XMLREAD$_Ld227
	.ascii	"Illegal markup declaration\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld229
_$XMLREAD$_Ld229:
	.short	0,1
	.long	0,-1,29
.reference _$XMLREAD$_Ld228
.globl	_$XMLREAD$_Ld228
_$XMLREAD$_Ld228:
.reference _$XMLREAD$_Ld229
	.ascii	"INCLUDE section is not closed\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld231
_$XMLREAD$_Ld231:
	.short	0,1
	.long	0,-1,24
.reference _$XMLREAD$_Ld230
.globl	_$XMLREAD$_Ld230
_$XMLREAD$_Ld230:
.reference _$XMLREAD$_Ld231
	.ascii	"Illegal character in DTD\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld233
_$XMLREAD$_Ld233:
	.short	0,1
	.long	0,-1,36
.reference _$XMLREAD$_Ld232
.globl	_$XMLREAD$_Ld232
_$XMLREAD$_Ld232:
.reference _$XMLREAD$_Ld233
	.ascii	"Root element name does not match DTD\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld235
_$XMLREAD$_Ld235:
	.short	0,1
	.long	0,-1,11
.reference _$XMLREAD$_Ld234
.globl	_$XMLREAD$_Ld234
_$XMLREAD$_Ld234:
.reference _$XMLREAD$_Ld235
	.ascii	"Missing DTD\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld237
_$XMLREAD$_Ld237:
	.short	0,1
	.long	0,-1,29
.reference _$XMLREAD$_Ld236
.globl	_$XMLREAD$_Ld236
_$XMLREAD$_Ld236:
.reference _$XMLREAD$_Ld237
	.ascii	"Using undeclared element '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld239
_$XMLREAD$_Ld239:
	.short	0,1
	.long	0,-1,43
.reference _$XMLREAD$_Ld238
.globl	_$XMLREAD$_Ld238
_$XMLREAD$_Ld238:
.reference _$XMLREAD$_Ld239
	.ascii	"Element '%s' is not allowed in this context\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld241
_$XMLREAD$_Ld241:
	.short	0,1
	.long	0,-1,47
.reference _$XMLREAD$_Ld240
.globl	_$XMLREAD$_Ld240
_$XMLREAD$_Ld240:
.reference _$XMLREAD$_Ld241
	.ascii	"Using undeclared attribute '%s' on element '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld243
_$XMLREAD$_Ld243:
	.short	0,1
	.long	0,-1,57
.reference _$XMLREAD$_Ld242
.globl	_$XMLREAD$_Ld242
_$XMLREAD$_Ld242:
.reference _$XMLREAD$_Ld243
	.ascii	"Value of attribute '%s' does not match its #FIXED d"
	.ascii	"efault\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld245
_$XMLREAD$_Ld245:
	.short	0,1
	.long	0,-1,28
.reference _$XMLREAD$_Ld244
.globl	_$XMLREAD$_Ld244
_$XMLREAD$_Ld244:
.reference _$XMLREAD$_Ld245
	.ascii	"Attribute '%s' type mismatch\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld247
_$XMLREAD$_Ld247:
	.short	0,1
	.long	0,-1,45
.reference _$XMLREAD$_Ld246
.globl	_$XMLREAD$_Ld246
_$XMLREAD$_Ld246:
.reference _$XMLREAD$_Ld247
	.ascii	"Element '%s' is missing required sub-elements\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld249
_$XMLREAD$_Ld249:
	.short	0,1
	.long	0,-1,53
.reference _$XMLREAD$_Ld248
.globl	_$XMLREAD$_Ld248
_$XMLREAD$_Ld248:
.reference _$XMLREAD$_Ld249
	.ascii	"Character data is not allowed in element-only conte"
	.ascii	"nt\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld251
_$XMLREAD$_Ld251:
	.short	0,1
	.long	0,-1,47
.reference _$XMLREAD$_Ld250
.globl	_$XMLREAD$_Ld250
_$XMLREAD$_Ld250:
.reference _$XMLREAD$_Ld251
	.ascii	"Character data is not allowed in EMPTY elements\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld253
_$XMLREAD$_Ld253:
	.short	0,1
	.long	0,-1,54
.reference _$XMLREAD$_Ld252
.globl	_$XMLREAD$_Ld252
_$XMLREAD$_Ld252:
.reference _$XMLREAD$_Ld253
	.ascii	"CDATA sections are not allowed in element-only cont"
	.ascii	"ent\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld255
_$XMLREAD$_Ld255:
	.short	0,1
	.long	0,-1,61
.reference _$XMLREAD$_Ld254
.globl	_$XMLREAD$_Ld254
_$XMLREAD$_Ld254:
.reference _$XMLREAD$_Ld255
	.ascii	"Processing instructions are not allowed within EMPT"
	.ascii	"Y elements\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld257
_$XMLREAD$_Ld257:
	.short	0,1
	.long	0,-1,46
.reference _$XMLREAD$_Ld256
.globl	_$XMLREAD$_Ld256
_$XMLREAD$_Ld256:
.reference _$XMLREAD$_Ld257
	.ascii	"Comments are not allowed within EMPTY elements\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld259
_$XMLREAD$_Ld259:
	.short	0,1
	.long	0,-1,15
.reference _$XMLREAD$_Ld258
.globl	_$XMLREAD$_Ld258
_$XMLREAD$_Ld258:
.reference _$XMLREAD$_Ld259
	.ascii	"Wrong node type\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld261
_$XMLREAD$_Ld261:
	.short	0,1
	.long	0,-1,17
.reference _$XMLREAD$_Ld260
.globl	_$XMLREAD$_Ld260
_$XMLREAD$_Ld260:
.reference _$XMLREAD$_Ld261
	.ascii	"Invalid character\000"

.data
	.align 3
.globl	_TC_XMLREAD_TEXTDELIMS
_TC_XMLREAD_TEXTDELIMS:
	.byte	1,0,0,0,64,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_XMLREAD_TEXTNODETYPES
_TC_XMLREAD_TEXTNODETYPES:
	.long	14,3

.const
	.align 3
.globl	_$XMLREAD$_Ld262
_$XMLREAD$_Ld262:
	.byte	1,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld264
_$XMLREAD$_Ld264:
	.short	0,1
	.long	0,-1,23
.reference _$XMLREAD$_Ld263
.globl	_$XMLREAD$_Ld263
_$XMLREAD$_Ld263:
.reference _$XMLREAD$_Ld264
	.ascii	"Root element is missing\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld266
_$XMLREAD$_Ld266:
	.short	0,1
	.long	0,-1,25
.reference _$XMLREAD$_Ld265
.globl	_$XMLREAD$_Ld265
_$XMLREAD$_Ld265:
.reference _$XMLREAD$_Ld266
	.ascii	"Illegal at document level\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld268
_$XMLREAD$_Ld268:
	.short	0,1
	.long	0,-1,34
.reference _$XMLREAD$_Ld267
.globl	_$XMLREAD$_Ld267
_$XMLREAD$_Ld267:
.reference _$XMLREAD$_Ld268
	.ascii	"Only one top-level element allowed\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld270
_$XMLREAD$_Ld270:
	.short	0,1
	.long	0,-1,7
.reference _$XMLREAD$_Ld269
.globl	_$XMLREAD$_Ld269
_$XMLREAD$_Ld269:
.reference _$XMLREAD$_Ld270
	.ascii	"[CDATA[\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld272
_$XMLREAD$_Ld272:
	.short	0,1
	.long	0,-1,26
.reference _$XMLREAD$_Ld271
.globl	_$XMLREAD$_Ld271
_$XMLREAD$_Ld271:
.reference _$XMLREAD$_Ld272
	.ascii	"Unterminated CDATA section\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld274
_$XMLREAD$_Ld274:
	.short	0,1
	.long	0,-1,27
.reference _$XMLREAD$_Ld273
.globl	_$XMLREAD$_Ld273
_$XMLREAD$_Ld273:
.reference _$XMLREAD$_Ld274
	.ascii	"End-tag is missing for '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld276
_$XMLREAD$_Ld276:
	.short	0,1
	.long	0,-1,36
.reference _$XMLREAD$_Ld275
.globl	_$XMLREAD$_Ld275
_$XMLREAD$_Ld275:
.reference _$XMLREAD$_Ld276
	.ascii	"Literal ']]>' is not allowed in text\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld278
_$XMLREAD$_Ld278:
	.short	0,1
	.long	0,-1,40
.reference _$XMLREAD$_Ld277
.globl	_$XMLREAD$_Ld277
_$XMLREAD$_Ld277:
.reference _$XMLREAD$_Ld278
	.ascii	"References are illegal in EMPTY elements\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld280
_$XMLREAD$_Ld280:
	.short	0,1
	.long	0,-1,32
.reference _$XMLREAD$_Ld279
.globl	_$XMLREAD$_Ld279
_$XMLREAD$_Ld279:
.reference _$XMLREAD$_Ld280
	.ascii	"Unbound element name prefix \"%s\"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld282
_$XMLREAD$_Ld282:
	.short	0,1
	.long	0,-1,27
.reference _$XMLREAD$_Ld281
.globl	_$XMLREAD$_Ld281
_$XMLREAD$_Ld281:
.reference _$XMLREAD$_Ld282
	.ascii	"End-tag is not allowed here\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld284
_$XMLREAD$_Ld284:
	.short	0,1
	.long	0,-1,45
.reference _$XMLREAD$_Ld283
.globl	_$XMLREAD$_Ld283
_$XMLREAD$_Ld283:
.reference _$XMLREAD$_Ld284
	.ascii	"Unmatching element end tag (expected \"</%s>\")\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld286
_$XMLREAD$_Ld286:
	.short	0,1
	.long	0,-1,19
.reference _$XMLREAD$_Ld285
.globl	_$XMLREAD$_Ld285
_$XMLREAD$_Ld285:
.reference _$XMLREAD$_Ld286
	.ascii	"Duplicate attribute\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld288
_$XMLREAD$_Ld288:
	.short	0,1
	.long	0,-1,38
.reference _$XMLREAD$_Ld287
.globl	_$XMLREAD$_Ld287
_$XMLREAD$_Ld287:
.reference _$XMLREAD$_Ld288
	.ascii	"The ID '%s' does not match any element\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld290
_$XMLREAD$_Ld290:
	.short	0,1
	.long	0,-1,50
.reference _$XMLREAD$_Ld289
.globl	_$XMLREAD$_Ld289
_$XMLREAD$_Ld289:
.reference _$XMLREAD$_Ld290
	.ascii	"Required attribute '%s' of element '%s' is missing\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld292
_$XMLREAD$_Ld292:
	.short	0,1
	.long	0,-1,37
.reference _$XMLREAD$_Ld291
.globl	_$XMLREAD$_Ld291
_$XMLREAD$_Ld291:
.reference _$XMLREAD$_Ld292
	.ascii	"Illegal usage of reserved prefix '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld294
_$XMLREAD$_Ld294:
	.short	0,1
	.long	0,-1,44
.reference _$XMLREAD$_Ld293
.globl	_$XMLREAD$_Ld293
_$XMLREAD$_Ld293:
.reference _$XMLREAD$_Ld294
	.ascii	"Illegal usage of reserved namespace URI '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld296
_$XMLREAD$_Ld296:
	.short	0,1
	.long	0,-1,31
.reference _$XMLREAD$_Ld295
.globl	_$XMLREAD$_Ld295
_$XMLREAD$_Ld295:
.reference _$XMLREAD$_Ld296
	.ascii	"Illegal undefining of namespace\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld298
_$XMLREAD$_Ld298:
	.short	0,1
	.long	0,-1,34
.reference _$XMLREAD$_Ld297
.globl	_$XMLREAD$_Ld297
_$XMLREAD$_Ld297:
.reference _$XMLREAD$_Ld298
	.ascii	"Unbound attribute name prefix \"%s\"\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld300
_$XMLREAD$_Ld300:
	.short	0,1
	.long	0,-1,28
.reference _$XMLREAD$_Ld299
.globl	_$XMLREAD$_Ld299
_$XMLREAD$_Ld299:
.reference _$XMLREAD$_Ld300
	.ascii	"Duplicate prefixed attribute\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld302
_$XMLREAD$_Ld302:
	.long	-1,12
.reference _$XMLREAD$_Ld301
.globl	_$XMLREAD$_Ld301
_$XMLREAD$_Ld301:
.reference _$XMLREAD$_Ld302
	.short	83,89,83,84,69,77,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld304
_$XMLREAD$_Ld304:
	.long	-1,12
.reference _$XMLREAD$_Ld303
.globl	_$XMLREAD$_Ld303
_$XMLREAD$_Ld303:
.reference _$XMLREAD$_Ld304
	.short	80,85,66,76,73,67,0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld306
_$XMLREAD$_Ld306:
	.short	0,1
	.long	0,-1,25
.reference _$XMLREAD$_Ld305
.globl	_$XMLREAD$_Ld305
_$XMLREAD$_Ld305:
.reference _$XMLREAD$_Ld306
	.ascii	"Illegal Public ID literal\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld308
_$XMLREAD$_Ld308:
	.short	0,1
	.long	0,-1,25
.reference _$XMLREAD$_Ld307
.globl	_$XMLREAD$_Ld307
_$XMLREAD$_Ld307:
.reference _$XMLREAD$_Ld308
	.ascii	"The ID '%s' is not unique\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld310
_$XMLREAD$_Ld310:
	.short	0,1
	.long	0,-1,29
.reference _$XMLREAD$_Ld309
.globl	_$XMLREAD$_Ld309
_$XMLREAD$_Ld309:
.reference _$XMLREAD$_Ld310
	.ascii	"Notation '%s' is not declared\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld312
_$XMLREAD$_Ld312:
	.short	0,1
	.long	0,-1,36
.reference _$XMLREAD$_Ld311
.globl	_$XMLREAD$_Ld311
_$XMLREAD$_Ld311:
.reference _$XMLREAD$_Ld312
	.ascii	"Duplicate notation declaration: '%s'\000"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld314
_$XMLREAD$_Ld314:
	.short	0,1
	.long	0,-1,7
.reference _$XMLREAD$_Ld313
.globl	_$XMLREAD$_Ld313
_$XMLREAD$_Ld313:
.reference _$XMLREAD$_Ld314
	.ascii	"stream:\000"
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

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
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

L_XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CREATE$TDOMPARSER$$TXMLTEXTREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CONVERTSOURCE$TXMLINPUTSOURCE$TXMLCHARSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CONVERTSOURCE$TXMLINPUTSOURCE$TXMLCHARSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PROCESSXML$TXMLCHARSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__RESOLVERESOURCE$WIDESTRING$WIDESTRING$WIDESTRING$TXMLCHARSOURCE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$TLOCATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub:
.indirect_symbol _DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED
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

L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub:
.indirect_symbol _DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATEDOCUMENTFRAGMENT$$TDOMDOCUMENTFRAGMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATEDOCUMENTFRAGMENT$$TDOMDOCUMENTFRAGMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PROCESSFRAGMENT$TXMLCHARSOURCE$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE
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

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING$stub:
.indirect_symbol _XMLREAD_TXMLCHARSOURCE_$__GETSYSTEMID$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR$stub:
.indirect_symbol _XMLUTILS_BUFAPPENDCHUNK$TWIDECHARBUF$PWIDECHAR$PWIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DTDRELOADHOOK$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DTDRELOADHOOK
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

L_XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING$stub:
.indirect_symbol _XMLREAD_TXMLDECODINGSOURCE_$__DECODINGERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CHECKMAXCHARS$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLCHARSOURCE_$__INITIALIZE$stub:
.indirect_symbol _XMLREAD_TXMLCHARSOURCE_$__INITIALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEXMLORTEXTDECL$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEXMLORTEXTDECL$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__XML11_BUILDTABLES$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__XML11_BUILDTABLES
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

L_XMLREAD_IS_8859_1$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_IS_8859_1$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_FINDDECODER$ANSISTRING$TDECODER$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_FINDDECODER$ANSISTRING$TDECODER$$BOOLEAN
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

L_XMLREAD_TXMLDECODINGSOURCE_$__DESTROY$stub:
.indirect_symbol _XMLREAD_TXMLDECODINGSOURCE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_chararray_to_ansistr$stub:
.indirect_symbol fpc_chararray_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _URIPARSER_FILENAMETOURI$ANSISTRING$BOOLEAN$$ANSISTRING
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

L_SYSTEM_EOF$TEXT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_EOF$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT$stub:
.indirect_symbol _SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_read_text_ansistr$stub:
.indirect_symbol fpc_read_text_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_readln_end$stub:
.indirect_symbol fpc_readln_end
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

L_SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT$stub:
.indirect_symbol _SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILECLOSE$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILECLOSE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLSTREAMINPUTSOURCE_$__CREATE$TSTREAM$BOOLEAN$$TXMLSTREAMINPUTSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub:
.indirect_symbol _CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_RESOLVERELATIVEURI$WIDESTRING$WIDESTRING$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _URIPARSER_RESOLVERELATIVEURI$WIDESTRING$WIDESTRING$WIDESTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_to_ansistr$stub:
.indirect_symbol fpc_unicodestr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_URIPARSER_URITOFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _URIPARSER_URITOFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub:
.indirect_symbol _CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_decr_ref$stub:
.indirect_symbol fpc_unicodestr_decr_ref
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

Lfpc_uchar_to_ansistr$stub:
.indirect_symbol fpc_uchar_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__FATALERROR$ANSISTRING$array_of_const$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DOERROR$TERRORSEVERITY$ANSISTRING$LONGINT
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

L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub:
.indirect_symbol _SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATIONERROR$ANSISTRING$array_of_const$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__STORELOCATION$TLOCATION
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CALLERRORHANDLER$EXMLREADERROR$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CALLERRORHANDLER$EXMLREADERROR
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

L_XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__SKIPS$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CONTEXTPOP$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CHECKNAME$TCHECKNAMEFLAGS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTCHAR$WIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__STARTPE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__STARTPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__SKIPWHITESPACE$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR$stub:
.indirect_symbol _XMLREAD_TXMLCHARSOURCE_$__NEXTCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT$stub:
.indirect_symbol _XMLUTILS_BUFALLOCATE$TWIDECHARBUF$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CREATE$$TXMLTEXTREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TDOMPARSEOPTIONS_$__GETCANONICAL$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TDOMPARSEOPTIONS_$__GETCANONICAL$$BOOLEAN
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CLEARFORWARDREFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TDTDMODEL_$__RELEASE$stub:
.indirect_symbol _DTDMODEL_TDTDMODEL_$__RELEASE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY$stub:
.indirect_symbol _XMLUTILS_XML11NAMEPAGES$$PBYTEARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__CREATE$$TNSSUPPORT$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__CREATE$$TNSSUPPORT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__GETPREFIX$PWIDECHAR$LONGINT$$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__NSPREPARE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__NSPREPARE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__INITIALIZE$TXMLCHARSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSECONTENT$TDOMNODE_WITHCHILDREN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSECONTENT$TDOMNODE_WITHCHILDREN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATEIDREFS$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATEIDREFS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_compare_equal$stub:
.indirect_symbol fpc_unicodestr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL$stub:
.indirect_symbol _DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL
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

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__RAISENAMENOTFOUND
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR$stub:
.indirect_symbol _XMLUTILS_BUFAPPEND$TWIDECHARBUF$WIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CHECKFORCHAR$WIDECHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__SKIPQUOTE$WIDECHAR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEREF$TWIDECHARBUF$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__RESOLVEPREDEFINED$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__RESOLVEPREDEFINED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ENTITYCHECK$BOOLEAN$$TENTITYDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ENTITYCHECK$BOOLEAN$$TENTITYDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEVALUECHUNK$PNODEDATA$$PNODEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CONTEXTPUSH$TENTITYDECL$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_BUFNORMALIZE$TWIDECHARBUF$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_BUFNORMALIZE$TWIDECHARBUF$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLCHARSOURCE_$__CREATE$WIDESTRING$$TXMLCHARSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLCHARSOURCE_$__CREATE$WIDESTRING$$TXMLCHARSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ENTITYTOSOURCE$TENTITYDECL$TXMLCHARSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ENTITYTOSOURCE$TENTITYDECL$TXMLCHARSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__BADPENESTING$TERRORSEVERITY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE$stub:
.indirect_symbol _DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__LOADENTITY$TENTITYDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__LOADENTITY$TENTITYDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATIONERRORWITHNAME$ANSISTRING$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATIONERRORWITHNAME$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PREFETCHENTITY$TENTITYDECL$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PREFETCHENTITY$TENTITYDECL$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTSTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__SKIPUNTILSEQ$TSETOFCHAR$WIDECHAR$WIDECHAR$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__SKIPUNTILSEQ$TSETOFCHAR$WIDECHAR$WIDECHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CHECKNCNAME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_BUFEQUALS$TWIDECHARBUF$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_BUFEQUALS$TWIDECHARBUF$WIDESTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__SETNODEINFOWITHVALUE$TXMLNODETYPE$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTEQ$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTEQ
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLCHARSOURCE_$__MATCHES$WIDESTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL$stub:
.indirect_symbol _DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTNAME$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEEXTERNALID$WIDESTRING$WIDESTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEMARKUPDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__ADD$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__ADD$$TCONTENTPARTICLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTCHOICEORSEQ$TCONTENTPARTICLE$TOBJECT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTCHOICEORSEQ$TCONTENTPARTICLE$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__FINDORCREATEELDEF$$TELEMENTDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEQUANTITY$$TCPQUANT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEQUANTITY$$TCPQUANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__FATALERROR$WIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTWHITESPACE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DONOTATIONDECL$WIDESTRING$WIDESTRING$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TATTRIBUTEDEF_$__CREATE$PHASHITEM$LONGINT$$TATTRIBUTEDEF$stub:
.indirect_symbol _DTDMODEL_TATTRIBUTEDEF_$__CREATE$PHASHITEM$LONGINT$$TATTRIBUTEDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF$stub:
.indirect_symbol _DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TATTRIBUTEDEF_$__ADDENUMTOKEN$PWIDECHAR$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DTDMODEL_TATTRIBUTEDEF_$__ADDENUMTOKEN$PWIDECHAR$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ADDFORWARDREF$PWIDECHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__EXPECTATTVALUE$PNODEDATA$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__EXPECTATTVALUE$PNODEDATA$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRSYNTAX$TATTRIBUTEDEF$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRSYNTAX$TATTRIBUTEDEF$WIDESTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TELEMENTDECL_$__ADDATTRDEF$TATTRIBUTEDEF$stub:
.indirect_symbol _DTDMODEL_TELEMENTDECL_$__ADDATTRDEF$TATTRIBUTEDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$BOOLEAN$$PHASHITEM$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$BOOLEAN$$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSELITERAL$TWIDECHARBUF$TLITERALTYPE$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEPI$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEPI
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CREATEPINODE$$TDOMNODE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CREATEPINODE$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSECOMMENT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEELEMENTDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEELEMENTDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEENTITYDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEENTITYDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEATTLISTDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEATTLISTDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSENOTATIONDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSENOTATIONDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub:
.indirect_symbol _DOM_TDOMNODE_$__SETREADONLY$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DOERRORPOS$TERRORSEVERITY$ANSISTRING$array_of_const$TLOCATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TELEMENTVALIDATOR_$__ISELEMENTALLOWED$TELEMENTDECL$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TELEMENTVALIDATOR_$__ISELEMENTALLOWED$TELEMENTDECL$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PUSHVC$TELEMENTDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PUSHVC$TELEMENTDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRVALUE$TATTRIBUTEDEF$PNODEDATA$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATEATTRVALUE$TATTRIBUTEDEF$PNODEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TELEMENTVALIDATOR_$__INCOMPLETE$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TELEMENTVALIDATOR_$__INCOMPLETE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__STANDALONEERROR$LONGINT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__STANDALONEERROR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATEDTD$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATEDTD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ALLOCNODEDATA$LONGINT$$PNODEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT$stub:
.indirect_symbol _DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_LOADATTRIBUTE$TDOMDOCUMENT$PNODEDATA$$TDOMATTR$stub:
.indirect_symbol _DOM_LOADATTRIBUTE$TDOMDOCUMENT$PNODEDATA$$TDOMATTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__VALIDATECURRENTNODE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__VALIDATECURRENTNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DOCDSECT$PWIDECHAR$LONGINT$$TDOMNODE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DOCDSECT$PWIDECHAR$LONGINT$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATECOMMENTBUF$PWIDECHAR$LONGINT$$TDOMCOMMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATECOMMENTBUF$PWIDECHAR$LONGINT$$TDOMCOMMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DOSTARTELEMENT$$TDOMELEMENT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DOSTARTELEMENT$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__READ$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__READ$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__SETUPFAKELF$TXMLTOKEN$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__SETUPFAKELF$TXMLTOKEN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSESTARTTAG$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSESTARTTAG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEDOCTYPEDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEDOCTYPEDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTES$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__POPELEMENT$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__POPELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__DOSTARTENTITY$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__DOSTARTENTITY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__READTOPLEVEL$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__READTOPLEVEL$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYSTART$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYSTART
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYEND$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__HANDLEENTITYEND
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEENDTAG$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEENDTAG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__STARTELEMENT$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__STARTELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PARSEATTRIBUTE$TELEMENTDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PARSEATTRIBUTE$TELEMENTDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PROCESSDEFAULTATTRIBUTES$TELEMENTDECL$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PROCESSDEFAULTATTRIBUTES$TELEMENTDECL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PROCESSNAMESPACEATTS$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PROCESSNAMESPACEATTS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__DEFAULTNSBINDING$$TBINDING$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__DEFAULTNSBINDING$$TBINDING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEDATA$$PNODEDATA$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ALLOCATTRIBUTEDATA$$PNODEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ADDBINDING$PNODEDATA$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ADDBINDING$PNODEDATA$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTE$PNODEDATA$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__CLEANUPATTRIBUTE$PNODEDATA
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

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
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

L_CLASSES_TFPLIST_$__CLEAR$stub:
.indirect_symbol _CLASSES_TFPLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__FIND$PWIDECHAR$LONGINT$$PHASHITEM$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__FIND$PWIDECHAR$LONGINT$$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TELEMENTDECL_$__GETATTRDEFCOUNT$$LONGINT$stub:
.indirect_symbol _DTDMODEL_TELEMENTDECL_$__GETATTRDEFCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TELEMENTDECL_$__ATTRDEFBYINDEX$LONGINT$$TATTRIBUTEDEF$stub:
.indirect_symbol _DTDMODEL_TELEMENTDECL_$__ATTRDEFBYINDEX$LONGINT$$TATTRIBUTEDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_copy_proc$stub:
.indirect_symbol fpc_copy_proc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__BINDPREFIX$WIDESTRING$PHASHITEM$$TBINDING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TDBLHASHARRAY_$__INIT$LONGINT$stub:
.indirect_symbol _XMLUTILS_TDBLHASHARRAY_$__INIT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TDBLHASHARRAY_$__LOCATE$PWIDESTRING$PWIDECHAR$LONGINT$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_TDBLHASHARRAY_$__LOCATE$PWIDESTRING$PWIDECHAR$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXMLNAMES$WIDESTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXMLNAMES$WIDESTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXMLNMTOKEN$WIDESTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXMLNMTOKEN$WIDESTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TATTRIBUTEDEF_$__HASENUMTOKEN$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _DTDMODEL_TATTRIBUTEDEF_$__HASENUMTOKEN$WIDESTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_ISXMLNMTOKENS$WIDESTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXMLNMTOKENS$WIDESTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__ADDID$PNODEDATA$$BOOLEAN$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__ADDID$PNODEDATA$$BOOLEAN
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

L_DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE$stub:
.indirect_symbol _DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__ENDELEMENT$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__ENDELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLFILEINPUTSOURCE_$__CREATE$TEXT$$TXMLFILEINPUTSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING$stub:
.indirect_symbol _XMLREAD_READXMLFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING
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

L_XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM$ANSISTRING$stub:
.indirect_symbol _XMLREAD_READXMLFRAGMENT$TDOMNODE$TSTREAM$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_TXMLTEXTREADER_$__PROCESSDTD$TXMLCHARSOURCE$stub:
.indirect_symbol _XMLREAD_TXMLTEXTREADER_$__PROCESSDTD$TXMLCHARSOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING$stub:
.indirect_symbol _XMLREAD_READDTDFILE$TXMLDOCUMENT$TSTREAM$ANSISTRING
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
.globl	_INIT_XMLREAD_TERRORSEVERITY
_INIT_XMLREAD_TERRORSEVERITY:
	.byte	3,14
	.ascii	"TErrorSeverity"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"esWarning"
	.byte	7
	.ascii	"esError"
	.byte	7
	.ascii	"esFatal"
	.byte	7
	.ascii	"XMLRead"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TERRORSEVERITY
_RTTI_XMLREAD_TERRORSEVERITY:
	.byte	3,14
	.ascii	"TErrorSeverity"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"esWarning"
	.byte	7
	.ascii	"esError"
	.byte	7
	.ascii	"esFatal"
	.byte	7
	.ascii	"XMLRead"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TERRORSEVERITY_s2o
_RTTI_XMLREAD_TERRORSEVERITY_s2o:
	.long	3,1
	.long	_RTTI_XMLREAD_TERRORSEVERITY+39
	.long	2
	.long	_RTTI_XMLREAD_TERRORSEVERITY+47
	.long	0
	.long	_RTTI_XMLREAD_TERRORSEVERITY+29

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TERRORSEVERITY_o2s
_RTTI_XMLREAD_TERRORSEVERITY_o2s:
	.long	0
	.long	_RTTI_XMLREAD_TERRORSEVERITY+29
	.long	_RTTI_XMLREAD_TERRORSEVERITY+39
	.long	_RTTI_XMLREAD_TERRORSEVERITY+47

.const_data
	.align 2
.globl	_$XMLREAD$_Ld316
_$XMLREAD$_Ld316:
	.short	0
	.long	_$XMLREAD$_Ld317
	.align 2
.globl	_$XMLREAD$_Ld317
_$XMLREAD$_Ld317:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_EXMLREADERROR
_INIT_XMLREAD_EXMLREADERROR:
	.byte	15,13
	.ascii	"EXMLReadError"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_XMLREAD_EXMLREADERROR
_RTTI_XMLREAD_EXMLREADERROR:
	.byte	15,13
	.ascii	"EXMLReadError"
	.long	_VMT_XMLREAD_EXMLREADERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld319
_$XMLREAD$_Ld319:
	.short	0
	.long	_$XMLREAD$_Ld320
	.align 2
.globl	_$XMLREAD$_Ld320
_$XMLREAD$_Ld320:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TDOMPARSEOPTIONS
_INIT_XMLREAD_TDOMPARSEOPTIONS:
	.byte	15,16
	.ascii	"TDOMParseOptions"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TDOMPARSEOPTIONS
_RTTI_XMLREAD_TDOMPARSEOPTIONS:
	.byte	15,16
	.ascii	"TDOMParseOptions"
	.long	_VMT_XMLREAD_TDOMPARSEOPTIONS
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLCONTEXTACTION
_INIT_XMLREAD_TXMLCONTEXTACTION:
	.byte	3,17
	.ascii	"TXMLContextAction"
	.byte	5
	.long	1,5,0
	.byte	18
	.ascii	"xaAppendAsChildren"
	.byte	17
	.ascii	"xaReplaceChildren"
	.byte	14
	.ascii	"xaInsertBefore"
	.byte	13
	.ascii	"xaInsertAfter"
	.byte	9
	.ascii	"xaReplace"
	.byte	7
	.ascii	"XMLRead"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLCONTEXTACTION
_RTTI_XMLREAD_TXMLCONTEXTACTION:
	.byte	3,17
	.ascii	"TXMLContextAction"
	.byte	5
	.long	1,5,0
	.byte	18
	.ascii	"xaAppendAsChildren"
	.byte	17
	.ascii	"xaReplaceChildren"
	.byte	14
	.ascii	"xaInsertBefore"
	.byte	13
	.ascii	"xaInsertAfter"
	.byte	9
	.ascii	"xaReplace"
	.byte	7
	.ascii	"XMLRead"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLCONTEXTACTION_s2o
_RTTI_XMLREAD_TXMLCONTEXTACTION_s2o:
	.long	5,1
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+32
	.long	4
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+84
	.long	3
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+69
	.long	5
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+98
	.long	2
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+51

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLCONTEXTACTION_o2s
_RTTI_XMLREAD_TXMLCONTEXTACTION_o2s:
	.long	0
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+32
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+51
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+69
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+84
	.long	_RTTI_XMLREAD_TXMLCONTEXTACTION+98

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLERROREVENT
_INIT_XMLREAD_TXMLERROREVENT:
	.byte	6,14
	.ascii	"TXMLErrorEvent"
	.byte	0,1,8,5
	.ascii	"Error"
	.ascii	"\015EXMLReadError"
	.byte	0
	.long	_RTTI_XMLREAD_EXMLREADERROR

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLERROREVENT
_RTTI_XMLREAD_TXMLERROREVENT:
	.byte	6,14
	.ascii	"TXMLErrorEvent"
	.byte	0,1,8,5
	.ascii	"Error"
	.ascii	"\015EXMLReadError"
	.byte	0
	.long	_RTTI_XMLREAD_EXMLREADERROR

.const_data
	.align 2
.globl	_$XMLREAD$_Ld322
_$XMLREAD$_Ld322:
	.short	0
	.long	_$XMLREAD$_Ld323
	.align 2
.globl	_$XMLREAD$_Ld323
_$XMLREAD$_Ld323:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLINPUTSOURCE
_INIT_XMLREAD_TXMLINPUTSOURCE:
	.byte	15,15
	.ascii	"TXMLInputSource"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8
	.long	_INIT_SYSTEM_WIDESTRING
	.long	12
	.long	_INIT_SYSTEM_WIDESTRING
	.long	16
	.long	_INIT_SYSTEM_WIDESTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLINPUTSOURCE
_RTTI_XMLREAD_TXMLINPUTSOURCE:
	.byte	15,15
	.ascii	"TXMLInputSource"
	.long	_VMT_XMLREAD_TXMLINPUTSOURCE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld325
_$XMLREAD$_Ld325:
	.short	0
	.long	_$XMLREAD$_Ld326
	.align 2
.globl	_$XMLREAD$_Ld326
_$XMLREAD$_Ld326:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TDOMPARSER
_INIT_XMLREAD_TDOMPARSER:
	.byte	15,10
	.ascii	"TDOMParser"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TDOMPARSER
_RTTI_XMLREAD_TDOMPARSER:
	.byte	15,10
	.ascii	"TDOMParser"
	.long	_VMT_XMLREAD_TDOMPARSER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TDECODER
_INIT_XMLREAD_TDECODER:
	.byte	13,8
	.ascii	"TDecoder"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_DEF71
_RTTI_XMLREAD_DEF71:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_XMLREAD_DEF72
_RTTI_XMLREAD_DEF72:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TDECODER
_RTTI_XMLREAD_TDECODER:
	.byte	13,8
	.ascii	"TDecoder"
	.long	12,3
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_XMLREAD_DEF71
	.long	4
	.long	_RTTI_XMLREAD_DEF72
	.long	8

.const_data
	.align 2
.globl	_INIT_XMLREAD_TGETDECODERPROC
_INIT_XMLREAD_TGETDECODERPROC:
	.byte	23,15
	.ascii	"TGetDecoderProc"

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TGETDECODERPROC
_RTTI_XMLREAD_TGETDECODERPROC:
	.byte	23,15
	.ascii	"TGetDecoderProc"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld328
_$XMLREAD$_Ld328:
	.short	0
	.long	_$XMLREAD$_Ld329
	.align 2
.globl	_$XMLREAD$_Ld329
_$XMLREAD$_Ld329:
	.short	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TDOMDOCUMENTTYPEEX
_RTTI_XMLREAD_TDOMDOCUMENTTYPEEX:
	.byte	15,18
	.ascii	"TDOMDocumentTypeEx"
	.long	_VMT_XMLREAD_TDOMDOCUMENTTYPEEX
	.long	_RTTI_DOM_TDOMDOCUMENTTYPE
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld331
_$XMLREAD$_Ld331:
	.short	0
	.long	_$XMLREAD$_Ld332
	.align 2
.globl	_$XMLREAD$_Ld332
_$XMLREAD$_Ld332:
	.short	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TDOMTOPNODEEX
_RTTI_XMLREAD_TDOMTOPNODEEX:
	.byte	15,13
	.ascii	"TDOMTopNodeEx"
	.long	_VMT_XMLREAD_TDOMTOPNODEEX
	.long	_RTTI_DOM_TDOMNODE_TOPLEVEL
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld334
_$XMLREAD$_Ld334:
	.short	0
	.long	_$XMLREAD$_Ld335
	.align 2
.globl	_$XMLREAD$_Ld335
_$XMLREAD$_Ld335:
	.short	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TDOMENTITYEX
_RTTI_XMLREAD_TDOMENTITYEX:
	.byte	15,12
	.ascii	"TDOMEntityEx"
	.long	_VMT_XMLREAD_TDOMENTITYEX
	.long	_RTTI_DOM_TDOMENTITY
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF471
_INIT_XMLREAD_DEF471:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF474
_INIT_XMLREAD_DEF474:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF771
_INIT_XMLREAD_DEF771:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF774
_INIT_XMLREAD_DEF774:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF747
_INIT_XMLREAD_DEF747:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF375
_INIT_XMLREAD_DEF375:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF360
_INIT_XMLREAD_DEF360:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF393
_INIT_XMLREAD_DEF393:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF548
_INIT_XMLREAD_DEF548:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF728
_INIT_XMLREAD_DEF728:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF732
_INIT_XMLREAD_DEF732:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF717
_INIT_XMLREAD_DEF717:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF483
_INIT_XMLREAD_DEF483:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF485
_INIT_XMLREAD_DEF485:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF489
_INIT_XMLREAD_DEF489:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF613
_INIT_XMLREAD_DEF613:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF621
_INIT_XMLREAD_DEF621:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF750
_INIT_XMLREAD_DEF750:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF762
_INIT_XMLREAD_DEF762:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF753
_INIT_XMLREAD_DEF753:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF755
_INIT_XMLREAD_DEF755:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF778
_INIT_XMLREAD_DEF778:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF658
_INIT_XMLREAD_DEF658:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF660
_INIT_XMLREAD_DEF660:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF662
_INIT_XMLREAD_DEF662:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF666
_INIT_XMLREAD_DEF666:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF668
_INIT_XMLREAD_DEF668:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF670
_INIT_XMLREAD_DEF670:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF367
_INIT_XMLREAD_DEF367:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF784
_INIT_XMLREAD_DEF784:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_$XMLREAD$_Ld337
_$XMLREAD$_Ld337:
	.short	0
	.long	_$XMLREAD$_Ld338
	.align 2
.globl	_$XMLREAD$_Ld338
_$XMLREAD$_Ld338:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TNODEDATADYNARRAY
_INIT_XMLREAD_TNODEDATADYNARRAY:
	.byte	21
	.ascii	"\021TNodeDataDynArray"
	.long	64
	.long	_INIT_XMLUTILS_TNODEDATA
	.long	-1
	.long	_INIT_XMLUTILS_TNODEDATA
	.byte	7
	.ascii	"XMLRead"

.const_data
	.align 2
.globl	_INIT_XMLREAD_TELEMENTVALIDATOR
_INIT_XMLREAD_TELEMENTVALIDATOR:
	.byte	16,17
	.ascii	"TElementValidator"
	.long	16,0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TVALIDATORDYNARRAY
_INIT_XMLREAD_TVALIDATORDYNARRAY:
	.byte	21
	.ascii	"\022TValidatorDynArray"
	.long	16
	.long	_INIT_XMLREAD_TELEMENTVALIDATOR
	.long	-1,0
	.byte	7
	.ascii	"XMLRead"

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLTEXTREADER
_INIT_XMLREAD_TXMLTEXTREADER:
	.byte	15,14
	.ascii	"TXMLTextReader"
	.long	4,2
	.long	_INIT_XMLREAD_TNODEDATADYNARRAY
	.long	192
	.long	_INIT_XMLREAD_TVALIDATORDYNARRAY
	.long	200

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLTEXTREADER
_RTTI_XMLREAD_TXMLTEXTREADER:
	.byte	15,14
	.ascii	"TXMLTextReader"
	.long	_VMT_XMLREAD_TXMLTEXTREADER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld340
_$XMLREAD$_Ld340:
	.short	0
	.long	_$XMLREAD$_Ld341
	.align 2
.globl	_$XMLREAD$_Ld341
_$XMLREAD$_Ld341:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLCHARSOURCE
_INIT_XMLREAD_TXMLCHARSOURCE:
	.byte	15,14
	.ascii	"TXMLCharSource"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	36
	.long	_INIT_SYSTEM_WIDESTRING
	.long	52

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLCHARSOURCE
_RTTI_XMLREAD_TXMLCHARSOURCE:
	.byte	15,14
	.ascii	"TXMLCharSource"
	.long	_VMT_XMLREAD_TXMLCHARSOURCE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld343
_$XMLREAD$_Ld343:
	.short	0
	.long	_$XMLREAD$_Ld344
	.align 2
.globl	_$XMLREAD$_Ld344
_$XMLREAD$_Ld344:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLDECODINGSOURCE
_INIT_XMLREAD_TXMLDECODINGSOURCE:
	.byte	15,18
	.ascii	"TXMLDecodingSource"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	88

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLDECODINGSOURCE
_RTTI_XMLREAD_TXMLDECODINGSOURCE:
	.byte	15,18
	.ascii	"TXMLDecodingSource"
	.long	_VMT_XMLREAD_TXMLDECODINGSOURCE
	.long	_RTTI_XMLREAD_TXMLCHARSOURCE
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld346
_$XMLREAD$_Ld346:
	.short	0
	.long	_$XMLREAD$_Ld347
	.align 2
.globl	_$XMLREAD$_Ld347
_$XMLREAD$_Ld347:
	.short	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLSTREAMINPUTSOURCE
_RTTI_XMLREAD_TXMLSTREAMINPUTSOURCE:
	.byte	15,21
	.ascii	"TXMLStreamInputSource"
	.long	_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE
	.long	_RTTI_XMLREAD_TXMLDECODINGSOURCE
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_$XMLREAD$_Ld349
_$XMLREAD$_Ld349:
	.short	0
	.long	_$XMLREAD$_Ld350
	.align 2
.globl	_$XMLREAD$_Ld350
_$XMLREAD$_Ld350:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TXMLFILEINPUTSOURCE
_INIT_XMLREAD_TXMLFILEINPUTSOURCE:
	.byte	15,19
	.ascii	"TXMLFileInputSource"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	100
	.long	_INIT_SYSTEM_ANSISTRING
	.long	104

.const_data
	.align 2
.globl	_RTTI_XMLREAD_TXMLFILEINPUTSOURCE
_RTTI_XMLREAD_TXMLFILEINPUTSOURCE:
	.byte	15,19
	.ascii	"TXMLFileInputSource"
	.long	_VMT_XMLREAD_TXMLFILEINPUTSOURCE
	.long	_RTTI_XMLREAD_TXMLDECODINGSOURCE
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_TFORWARDREF
_INIT_XMLREAD_TFORWARDREF:
	.byte	13,11
	.ascii	"TForwardRef"
	.long	12,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF224
_INIT_XMLREAD_DEF224:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_XMLREAD_TGETDECODERPROC
	.long	-1,0
	.byte	7
	.ascii	"XMLRead"

.const_data
	.align 2
.globl	_$XMLREAD$_Ld352
_$XMLREAD$_Ld352:
	.short	0
	.long	_$XMLREAD$_Ld353
	.align 2
.globl	_$XMLREAD$_Ld353
_$XMLREAD$_Ld353:
	.short	0

.const_data
	.align 2
.globl	_RTTI_XMLREAD_THANDLEOWNERSTREAM
_RTTI_XMLREAD_THANDLEOWNERSTREAM:
	.byte	15,18
	.ascii	"THandleOwnerStream"
	.long	_VMT_XMLREAD_THANDLEOWNERSTREAM
	.long	_RTTI_CLASSES_THANDLESTREAM
	.short	0
	.byte	7
	.ascii	"XMLRead"
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF467
_INIT_XMLREAD_DEF467:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_XMLREAD_DEF586
_INIT_XMLREAD_DEF586:
	.byte	12
	.ascii	"\000"
	.long	4,9
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258
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
L_U_XMLREAD_DECODERS$non_lazy_ptr:
.indirect_symbol _U_XMLREAD_DECODERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLREAD_DEF224$non_lazy_ptr:
.indirect_symbol _INIT_XMLREAD_DEF224
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld1$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld3$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld5$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld7$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld9$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld11$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld13$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld15$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld17$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_TDOMPARSEOPTIONS$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_TDOMPARSEOPTIONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_TXMLTEXTREADER$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_TXMLTEXTREADER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_NULLLOCATION$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_NULLLOCATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld19$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMNOTSUPPORTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld21$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMHIERARCHYREQUEST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld23$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld25$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld27$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLUTILS_DECODE_UTF8$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLUTILS_DECODE_UTF8$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld29$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLUTILS_DECODE_UCS2_SWAPPED$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLUTILS_DECODE_UCS2_SWAPPED$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld31$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLUTILS_DECODE_UCS2$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLUTILS_DECODE_UCS2$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_XMLSIGN$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_XMLSIGN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld33$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld35$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld37$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLUTILS_DECODE_8859_1$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLUTILS_DECODE_8859_1$POINTER$PCHAR$LONGWORD$PWIDECHAR$LONGWORD$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld39$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_TXMLSTREAMINPUTSOURCE$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_TXMLSTREAMINPUTSOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld41$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_THANDLEOWNERSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_THANDLEOWNERSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld43$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_EXMLREADERROR$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_EXMLREADERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld45$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld47$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_NAMINGBITMAP$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_NAMINGBITMAP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld49$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld51$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld53$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_NAMEPAGES$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_NAMEPAGES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLREAD_TNODEDATADYNARRAY$non_lazy_ptr:
.indirect_symbol _INIT_XMLREAD_TNODEDATADYNARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLREAD_TVALIDATORDYNARRAY$non_lazy_ptr:
.indirect_symbol _INIT_XMLREAD_TVALIDATORDYNARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr:
.indirect_symbol _INIT_XMLUTILS_TNODEDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_TNSSUPPORT$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_TNSSUPPORT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_TDBLHASHARRAY$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_TDBLHASHARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_PREFIXDEFAULT$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_PREFIXDEFAULT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOM_STDURI_XMLNS$non_lazy_ptr:
.indirect_symbol _TC_DOM_STDURI_XMLNS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOM_STDURI_XML$non_lazy_ptr:
.indirect_symbol _TC_DOM_STDURI_XML
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TXMLDOCUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld55$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMENTITY$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMENTITY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMNODE_WITHCHILDREN$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld57$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld59$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld61$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld63$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld65$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_ATTRDELIMS$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_ATTRDELIMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld67$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld69$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_PREFIXCHAR$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_PREFIXCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld73$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld75$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_TXMLCHARSOURCE$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_TXMLCHARSOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TENTITYDECL$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TENTITYDECL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld77$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld79$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld81$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld83$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld85$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld87$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld89$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld89
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_LITERALDELIMS$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_LITERALDELIMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld90$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld90
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld92$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld92
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld94$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld94
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld95$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld97$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld99$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld101$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_GT_DELIM$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_GT_DELIM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld103$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld105$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld105
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld107$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld107
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_VERS$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_VERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld109$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld109
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld111$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld111
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld113$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld113
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld115$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld115
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld117$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld117
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld119$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld119
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld121$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld121
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld123$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld123
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld125$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld125
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld127$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld127
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld129$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld129
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld131$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld131
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TDTDMODEL$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TDTDMODEL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld133$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld133
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld135$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld135
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld137$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld137
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld139$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld139
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TELEMENTDECL$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TELEMENTDECL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld141$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld141
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld143$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld143
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld145$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld145
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld147$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld147
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TCONTENTPARTICLE$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TCONTENTPARTICLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld149$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld149
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld151$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld151
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld153$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld153
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld155$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld155
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TATTRIBUTEDEF$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TATTRIBUTEDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld175$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld175
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_ATTRDATATYPENAMES$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_ATTRDATATYPENAMES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld177$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld177
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld179$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld179
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld181$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld181
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld183$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld183
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld185$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld185
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld187$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld187
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld189$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld189
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld191$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld191
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld193$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld193
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld195$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld195
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_THASHTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld197$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld197
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld199$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld199
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld201$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld201
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld203$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld203
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld205$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld205
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld207$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld207
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld209$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld209
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld211$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld211
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld212$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld212
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld214$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld214
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld216$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld216
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld218$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld218
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld220$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld220
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld222$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld222
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld224$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld224
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld226$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld226
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld228$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld228
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld230$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld230
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMDOCUMENTTYPE$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMDOCUMENTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld232$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld232
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld234$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld234
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld236$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld236
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld238$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld238
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld240$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld240
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld242$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld242
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld244$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld244
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld246$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld246
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld248$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld248
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld250$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld250
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld252$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld252
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld254$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld254
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld256$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld256
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_EINVALIDOPERATION$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_EINVALIDOPERATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld258$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld258
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld260$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld260
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld262$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld262
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld263$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld263
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld265$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld265
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld267$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld267
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_TEXTDELIMS$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_TEXTDELIMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld269$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld269
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld271$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld271
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld273$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld273
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld275$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld275
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld277$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld277
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_TEXTNODETYPES$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_TEXTNODETYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld279$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld279
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld281$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld281
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld283$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld283
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld285$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld285
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLREAD_TFORWARDREF$non_lazy_ptr:
.indirect_symbol _INIT_XMLREAD_TFORWARDREF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld287$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld287
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld289$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld289
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld291$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld291
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld293$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld293
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld295$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld295
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld297$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld297
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld299$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld299
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld301$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld301
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld303$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld303
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLREAD_PUBIDCHARS$non_lazy_ptr:
.indirect_symbol _TC_XMLREAD_PUBIDCHARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld305$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld305
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld307$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld307
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld309$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld309
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TNOTATIONDECL$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TNOTATIONDECL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld311$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld311
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLREAD_TXMLFILEINPUTSOURCE$non_lazy_ptr:
.indirect_symbol _VMT_XMLREAD_TXMLFILEINPUTSOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLREAD$_Ld313$non_lazy_ptr:
.indirect_symbol _$XMLREAD$_Ld313
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLREAD_DEF467$non_lazy_ptr:
.indirect_symbol _INIT_XMLREAD_DEF467
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLREAD_DEF586$non_lazy_ptr:
.indirect_symbol _INIT_XMLREAD_DEF586
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

