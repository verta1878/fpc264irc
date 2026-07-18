# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JSONPARSER_DEFJSONPARSERHANDLER$TSTREAM$BOOLEAN$TJSONDATA
_JSONPARSER_DEFJSONPARSERHANDLER$TSTREAM$BOOLEAN$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_JSONPARSER_TJSONPARSER$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj17
	movl	-16(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA$stub
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
Lj17:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj18
	decl	%eax
	testl	%eax,%eax
	je	Lj19
Lj19:
	call	LFPC_RERAISE$stub
Lj18:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA
_JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj28
Lj28:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj29
	jmp	Lj30
Lj29:
	movl	L_RESSTR_JSONPARSER_SERRNOSCANNER$non_lazy_ptr-Lj28(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj30:
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movb	$0,%dl
	call	L_JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__CURRENTTOKEN$$TJSONTOKEN
_JSONPARSER_TJSONPARSER_$__CURRENTTOKEN$$TJSONTOKEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING
_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj48
Lj48:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__CURRENTTOKEN$$TJSONTOKEN$stub
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj53
	cmpl	$11,%eax
	stc
	je	Lj53
	clc
Lj53:
	jc	Lj49
	jmp	Lj50
Lj49:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edi
	movl	16(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%edi),%eax
	movl	%eax,(%esi)
	jmp	Lj56
Lj50:
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__CURRENTTOKEN$$TJSONTOKEN$stub
	movl	%eax,%esi
	movl	L_TC_JSONSCANNER_TOKENINFOS$non_lazy_ptr-Lj48(%ebx),%edx
	movl	(%edx,%esi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_JSONSCANNER_TOKENINFOS$non_lazy_ptr-Lj48(%ebx),%eax
	movl	(%eax,%esi,4),%eax
	movl	%eax,(%edi)
Lj56:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA
_JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-148(%ebp)
	call	Lj62
Lj62:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj63
	movl	$0,-16(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj70
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj74
	jmp	Lj75
Lj74:
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-20(%ebp)
	jmp	Lj80
Lj75:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
Lj80:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj85
	subl	$2,%eax
	je	Lj88
	decl	%eax
	je	Lj93
	decl	%eax
	jb	Lj84
	subl	$1,%eax
	jbe	Lj87
	decl	%eax
	je	Lj86
	decl	%eax
	je	Lj94
	subl	$2,%eax
	je	Lj89
	decl	%eax
	je	Lj90
	decl	%eax
	je	Lj91
	decl	%eax
	je	Lj92
	jmp	Lj84
Lj85:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj95
	jmp	Lj96
Lj95:
	movl	L_RESSTR_JSONPARSER_SERRUNEXPECTEDEOF$non_lazy_ptr-Lj62(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj96:
	jmp	Lj83
Lj86:
	call	L_FPJSON_CREATEJSON$$TJSONNULL$stub
	movl	%eax,-16(%ebp)
	jmp	Lj83
Lj87:
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	seteb	%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,-16(%ebp)
	jmp	Lj83
Lj88:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-16(%ebp)
	jmp	Lj83
Lj89:
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__PARSEOBJECT$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj83
Lj90:
	movl	L_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN$non_lazy_ptr-Lj62(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
	jmp	Lj83
Lj91:
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__PARSEARRAY$$TJSONARRAY$stub
	movl	%eax,-16(%ebp)
	jmp	Lj83
Lj92:
	movl	L_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN$non_lazy_ptr-Lj62(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
	jmp	Lj83
Lj93:
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__PARSENUMBER$$TJSONNUMBER$stub
	movl	%eax,-16(%ebp)
	jmp	Lj83
Lj94:
	movl	L_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN$non_lazy_ptr-Lj62(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
	jmp	Lj83
Lj84:
Lj83:
Lj70:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj72
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj140
	leal	-16(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj140:
	call	LFPC_POPADDRSTACK$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj139
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj139:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj72
Lj72:
Lj63:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj64
	call	LFPC_RERAISE$stub
Lj64:
	movl	-16(%ebp),%eax
	movl	-148(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__PARSENUMBER$$TJSONNUMBER
_JSONPARSER_TJSONPARSER_$__PARSENUMBER$$TJSONNUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	call	Lj144
Lj144:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-32(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj145
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING$stub
	movl	$0,-12(%ebp)
	leal	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj154
	jmp	Lj155
Lj154:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj160
	jl	Lj162
	cmpl	$2147483647,%eax
	ja	Lj160
	jmp	Lj162
Lj162:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jl	Lj160
	jg	Lj161
	cmpl	$-2147483647,%edx
	jb	Lj160
	jmp	Lj161
Lj160:
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,-8(%ebp)
	jmp	Lj167
Lj161:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,-8(%ebp)
Lj167:
	jmp	Lj174
Lj155:
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%edx
	movl	-32(%ebp),%eax
	call	Lfpc_val_real_ansistr$stub
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	fstpl	-28(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj183
	jmp	Lj184
Lj183:
	movl	L_RESSTR_JSONPARSER_SERRINVALIDNUMBER$non_lazy_ptr-Lj144(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj184:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,-8(%ebp)
Lj174:
Lj145:
	call	LFPC_POPADDRSTACK$stub
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj146
	call	LFPC_RERAISE$stub
Lj146:
	movl	-8(%ebp),%eax
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__GETUTF8$$BOOLEAN
_JSONPARSER_TJSONPARSER_$__GETUTF8$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movb	25(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj205
Lj202:
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-5(%ebp)
Lj205:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__SETUTF8$BOOLEAN
_JSONPARSER_TJSONPARSER_$__SETUTF8$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,8(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj212
	jmp	Lj213
Lj212:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,25(%edx)
Lj213:
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__SETSTRICT$BOOLEAN
_JSONPARSER_TJSONPARSER_$__SETSTRICT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	9(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj218
	jmp	Lj219
Lj218:
	jmp	Lj216
Lj219:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,9(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj222
	jmp	Lj223
Lj222:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movb	9(%eax),%al
	movb	%al,24(%edx)
Lj223:
Lj216:
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__PARSEOBJECT$$TJSONOBJECT
_JSONPARSER_TJSONPARSER_$__PARSEOBJECT$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-144(%ebp)
	call	Lj227
Lj227:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj228
	leal	-68(%ebp),%eax
	movl	$-1,%edx
	call	L_FPJSON_CREATEJSONOBJECT$array_of_const$$TJSONOBJECT$stub
	movl	%eax,-8(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj239
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-12(%ebp)
	jmp	Lj248
	.align 2
Lj247:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	jne	Lj252
	jmp	Lj251
Lj252:
	movl	-12(%ebp),%eax
	cmpl	$13,%eax
	jne	Lj250
	jmp	Lj251
Lj250:
	movl	L_RESSTR_JSONPARSER_SERREXPECTEDELEMENTNAME$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj251:
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING$stub
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$8,%eax
	jne	Lj265
	jmp	Lj266
Lj265:
	movl	L_RESSTR_JSONPARSER_SERREXPECTEDCOLON$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj266:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movb	$0,%dl
	call	L_JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$7,%eax
	je	Lj291
	cmpl	$10,%eax
	je	Lj291
Lj291:
	jne	Lj289
	jmp	Lj290
Lj289:
	movl	L_RESSTR_JSONPARSER_SEXPECTEDCOMMAORBRACECLOSE$non_lazy_ptr-Lj227(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj290:
	movl	-12(%ebp),%eax
	cmpl	$7,%eax
	je	Lj296
	jmp	Lj297
Lj296:
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-12(%ebp)
Lj297:
Lj248:
	movl	-12(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj247
	jmp	Lj249
Lj249:
Lj239:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj303
	leal	-8(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj303:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj302
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj302:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj241
Lj241:
Lj228:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%edx
	movl	%edx,%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj229
	call	LFPC_RERAISE$stub
Lj229:
	movl	-8(%ebp),%eax
	movl	-144(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__PARSEARRAY$$TJSONARRAY
_JSONPARSER_TJSONPARSER_$__PARSEARRAY$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	call	Lj313
Lj313:
	popl	%ebx
	movl	%eax,-4(%ebp)
	leal	-28(%ebp),%eax
	movl	$-1,%edx
	call	L_FPJSON_CREATEJSONARRAY$array_of_const$$TJSONARRAY$stub
	movl	%eax,-8(%ebp)
	movb	$0,-17(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-24(%ebp)
	testl	%eax,%eax
	jne	Lj324
	.align 2
Lj328:
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$12,%eax
	jne	Lj335
	jmp	Lj336
Lj335:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movb	$1,%dl
	call	L_JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj345
	jmp	Lj346
Lj345:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	jmp	Lj351
Lj346:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	cmpl	$0,%eax
	jg	Lj352
	jmp	Lj353
Lj352:
	movl	L_RESSTR_JSONPARSER_SERREMPTYELEMENT$non_lazy_ptr-Lj313(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj353:
Lj351:
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$7,%eax
	je	Lj366
	cmpl	$12,%eax
	je	Lj366
Lj366:
	jne	Lj364
	jmp	Lj365
Lj364:
	movl	L_RESSTR_JSONPARSER_SEXPECTEDCOMMAORBRACECLOSE$non_lazy_ptr-Lj313(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj365:
	movl	-12(%ebp),%eax
	cmpl	$7,%eax
	seteb	-17(%ebp)
Lj336:
	movl	-12(%ebp),%eax
	cmpl	$12,%eax
	je	Lj330
	jmp	Lj328
Lj330:
	cmpb	$0,-17(%ebp)
	jne	Lj373
	jmp	Lj374
Lj373:
	movl	L_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN$non_lazy_ptr-Lj313(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub
Lj374:
Lj324:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj326
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-28(%ebp)
	testl	%eax,%eax
	jne	Lj380
	leal	-8(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj380:
	call	LFPC_POPADDRSTACK$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj379
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj379:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj326
Lj326:
	movl	-8(%ebp),%eax
	movl	-104(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN
_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj385:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__FETCHTOKEN$$TJSONTOKEN$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj387
	jmp	Lj385
Lj387:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING
_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	call	Lj393
Lj393:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-64(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj394
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	$1,%ecx
	movl	L_$JSONPARSER$_Ld1$non_lazy_ptr-Lj393(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%ecx
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-12(%ebp),%ecx
	movl	L_VMT_JSONPARSER_EJSONPARSER$non_lazy_ptr-Lj393(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj393(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj394:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj395
	call	LFPC_RERAISE$stub
Lj395:
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER
_JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj438
Lj438:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj439
	jmp	Lj440
Lj439:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj440:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj445
	jmp	Lj446
Lj445:
	jmp	Lj437
Lj446:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj449
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj453
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movb	$1,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_JSONSCANNER_TJSONSCANNER$non_lazy_ptr-Lj438(%ebx),%edx
	movl	$0,%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__CREATE$TSTREAM$BOOLEAN$$TJSONSCANNER$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movb	8(%ebp),%dl
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__SETUTF8$BOOLEAN$stub
Lj453:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj454
	call	LFPC_RERAISE$stub
Lj454:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj476
	jmp	Lj475
Lj476:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj474
	jmp	Lj475
Lj474:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj475:
Lj449:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj451
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj480
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj481
	jmp	Lj482
Lj481:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj482:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj480:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj479
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj479:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj451
Lj451:
Lj437:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONPARSER
_JSONPARSER_TJSONPARSER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONPARSER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj488
Lj488:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj489
	jmp	Lj490
Lj489:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj490:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj495
	jmp	Lj496
Lj495:
	jmp	Lj487
Lj496:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj499
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj503
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movb	$1,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_JSONSCANNER_TJSONSCANNER$non_lazy_ptr-Lj488(%ebx),%edx
	movl	$0,%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONSCANNER$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movb	8(%ebp),%dl
	movl	-12(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__SETUTF8$BOOLEAN$stub
Lj503:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj504
	call	LFPC_RERAISE$stub
Lj504:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj526
	jmp	Lj525
Lj526:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj524
	jmp	Lj525
Lj524:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj525:
Lj499:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj501
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj530
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj531
	jmp	Lj532
Lj531:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj532:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj530:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj529
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj529:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj501
Lj501:
Lj487:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_TJSONPARSER_$__DESTROY
_JSONPARSER_TJSONPARSER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj539
	jmp	Lj540
Lj539:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj540:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj551
	jmp	Lj550
Lj551:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj549
	jmp	Lj550
Lj549:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj550:
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_INITJSONHANDLER
_JSONPARSER_INITJSONHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj555
Lj555:
	popl	%ebx
	call	L_FPJSON_GETJSONPARSERHANDLER$$TJSONPARSERHANDLER$stub
	testl	%eax,%eax
	je	Lj556
	jmp	Lj557
Lj556:
	movl	L_JSONPARSER_DEFJSONPARSERHANDLER$TSTREAM$BOOLEAN$TJSONDATA$non_lazy_ptr-Lj555(%ebx),%eax
	call	L_FPJSON_SETJSONPARSERHANDLER$TJSONPARSERHANDLER$stub
Lj557:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONPARSER_DONEJSONHANDLER
_JSONPARSER_DONEJSONHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj561
Lj561:
	popl	%ebx
	call	L_FPJSON_GETJSONPARSERHANDLER$$TJSONPARSERHANDLER$stub
	movl	L_JSONPARSER_DEFJSONPARSERHANDLER$TSTREAM$BOOLEAN$TJSONDATA$non_lazy_ptr-Lj561(%ebx),%edx
	cmpl	%edx,%eax
	je	Lj562
	jmp	Lj563
Lj562:
	movl	$0,%eax
	call	L_FPJSON_SETJSONPARSERHANDLER$TJSONPARSERHANDLER$stub
Lj563:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_JSONPARSER
_INIT$_JSONPARSER:
.reference __JSONPARSER_init
.globl	__JSONPARSER_init
__JSONPARSER_init:
.reference _INIT$_JSONPARSER
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_JSONPARSER_INITJSONHANDLER$stub
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_JSONPARSER
_FINALIZE$_JSONPARSER:
.reference __JSONPARSER_finalize
.globl	__JSONPARSER_finalize
__JSONPARSER_finalize:
.reference _FINALIZE$_JSONPARSER
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_JSONPARSER_DONEJSONHANDLER$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld3
_$JSONPARSER$_Ld3:
	.byte	11
	.ascii	"TJSONParser"

.const_data
	.align 2
.globl	_VMT_JSONPARSER_TJSONPARSER
_VMT_JSONPARSER_TJSONPARSER:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$JSONPARSER$_Ld3
	.long	0,0
	.long	_$JSONPARSER$_Ld4
	.long	_RTTI_JSONPARSER_TJSONPARSER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_JSONPARSER_TJSONPARSER_$__DESTROY
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
.globl	_$JSONPARSER$_Ld6
_$JSONPARSER$_Ld6:
	.byte	11
	.ascii	"EJSONParser"

.const_data
	.align 2
.globl	_VMT_JSONPARSER_EJSONPARSER
_VMT_JSONPARSER_EJSONPARSER:
	.long	12,-12
	.long	_VMT_CLASSES_EPARSERERROR
	.long	_$JSONPARSER$_Ld6
	.long	0,0
	.long	_$JSONPARSER$_Ld7
	.long	_RTTI_JSONPARSER_EJSONPARSER
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
.globl	_THREADVARLIST_JSONPARSER
_THREADVARLIST_JSONPARSER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$JSONPARSER$_Ld10
_$JSONPARSER$_Ld10:
	.short	0,1
	.long	0,-1,10
.reference _$JSONPARSER$_Ld9
.globl	_$JSONPARSER$_Ld9
_$JSONPARSER$_Ld9:
.reference _$JSONPARSER$_Ld10
	.ascii	"JSONPARSER\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld12
_$JSONPARSER$_Ld12:
	.short	0,1
	.long	0,-1,27
.reference _$JSONPARSER$_Ld11
.globl	_$JSONPARSER$_Ld11
_$JSONPARSER$_Ld11:
.reference _$JSONPARSER$_Ld12
	.ascii	"Unexpected EOF encountered.\000"
	.align 2
.globl	_$JSONPARSER$_Ld14
_$JSONPARSER$_Ld14:
	.short	0,1
	.long	0,-1,28
.reference _$JSONPARSER$_Ld13
.globl	_$JSONPARSER$_Ld13
_$JSONPARSER$_Ld13:
.reference _$JSONPARSER$_Ld14
	.ascii	"jsonparser.serrunexpectedeof\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld16
_$JSONPARSER$_Ld16:
	.short	0,1
	.long	0,-1,34
.reference _$JSONPARSER$_Ld15
.globl	_$JSONPARSER$_Ld15
_$JSONPARSER$_Ld15:
.reference _$JSONPARSER$_Ld16
	.ascii	"Unexpected token (%s) encountered.\000"
	.align 2
.globl	_$JSONPARSER$_Ld18
_$JSONPARSER$_Ld18:
	.short	0,1
	.long	0,-1,30
.reference _$JSONPARSER$_Ld17
.globl	_$JSONPARSER$_Ld17
_$JSONPARSER$_Ld17:
.reference _$JSONPARSER$_Ld18
	.ascii	"jsonparser.serrunexpectedtoken\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld20
_$JSONPARSER$_Ld20:
	.short	0,1
	.long	0,-1,35
.reference _$JSONPARSER$_Ld19
.globl	_$JSONPARSER$_Ld19
_$JSONPARSER$_Ld19:
.reference _$JSONPARSER$_Ld20
	.ascii	"Expected colon (:), got token \"%s\".\000"
	.align 2
.globl	_$JSONPARSER$_Ld22
_$JSONPARSER$_Ld22:
	.short	0,1
	.long	0,-1,28
.reference _$JSONPARSER$_Ld21
.globl	_$JSONPARSER$_Ld21
_$JSONPARSER$_Ld21:
.reference _$JSONPARSER$_Ld22
	.ascii	"jsonparser.serrexpectedcolon\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld24
_$JSONPARSER$_Ld24:
	.short	0,1
	.long	0,-1,26
.reference _$JSONPARSER$_Ld23
.globl	_$JSONPARSER$_Ld23
_$JSONPARSER$_Ld23:
.reference _$JSONPARSER$_Ld24
	.ascii	"Invalid comma encountered.\000"
	.align 2
.globl	_$JSONPARSER$_Ld26
_$JSONPARSER$_Ld26:
	.short	0,1
	.long	0,-1,30
.reference _$JSONPARSER$_Ld25
.globl	_$JSONPARSER$_Ld25
_$JSONPARSER$_Ld25:
.reference _$JSONPARSER$_Ld26
	.ascii	"jsonparser.serrunexpectedcomma\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld28
_$JSONPARSER$_Ld28:
	.short	0,1
	.long	0,-1,26
.reference _$JSONPARSER$_Ld27
.globl	_$JSONPARSER$_Ld27
_$JSONPARSER$_Ld27:
.reference _$JSONPARSER$_Ld28
	.ascii	"Empty element encountered.\000"
	.align 2
.globl	_$JSONPARSER$_Ld30
_$JSONPARSER$_Ld30:
	.short	0,1
	.long	0,-1,27
.reference _$JSONPARSER$_Ld29
.globl	_$JSONPARSER$_Ld29
_$JSONPARSER$_Ld29:
.reference _$JSONPARSER$_Ld30
	.ascii	"jsonparser.serremptyelement\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld32
_$JSONPARSER$_Ld32:
	.short	0,1
	.long	0,-1,37
.reference _$JSONPARSER$_Ld31
.globl	_$JSONPARSER$_Ld31
_$JSONPARSER$_Ld31:
.reference _$JSONPARSER$_Ld32
	.ascii	"Expected element name, got token \"%s\"\000"
	.align 2
.globl	_$JSONPARSER$_Ld34
_$JSONPARSER$_Ld34:
	.short	0,1
	.long	0,-1,34
.reference _$JSONPARSER$_Ld33
.globl	_$JSONPARSER$_Ld33
_$JSONPARSER$_Ld33:
.reference _$JSONPARSER$_Ld34
	.ascii	"jsonparser.serrexpectedelementname\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld36
_$JSONPARSER$_Ld36:
	.short	0,1
	.long	0,-1,32
.reference _$JSONPARSER$_Ld35
.globl	_$JSONPARSER$_Ld35
_$JSONPARSER$_Ld35:
.reference _$JSONPARSER$_Ld36
	.ascii	"Expected , or ], got token \"%s\".\000"
	.align 2
.globl	_$JSONPARSER$_Ld38
_$JSONPARSER$_Ld38:
	.short	0,1
	.long	0,-1,37
.reference _$JSONPARSER$_Ld37
.globl	_$JSONPARSER$_Ld37
_$JSONPARSER$_Ld37:
.reference _$JSONPARSER$_Ld38
	.ascii	"jsonparser.sexpectedcommaorbraceclose\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld40
_$JSONPARSER$_Ld40:
	.short	0,1
	.long	0,-1,43
.reference _$JSONPARSER$_Ld39
.globl	_$JSONPARSER$_Ld39
_$JSONPARSER$_Ld39:
.reference _$JSONPARSER$_Ld40
	.ascii	"Number is not an integer or real number: %s\000"
	.align 2
.globl	_$JSONPARSER$_Ld42
_$JSONPARSER$_Ld42:
	.short	0,1
	.long	0,-1,28
.reference _$JSONPARSER$_Ld41
.globl	_$JSONPARSER$_Ld41
_$JSONPARSER$_Ld41:
.reference _$JSONPARSER$_Ld42
	.ascii	"jsonparser.serrinvalidnumber\000"

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld44
_$JSONPARSER$_Ld44:
	.short	0,1
	.long	0,-1,33
.reference _$JSONPARSER$_Ld43
.globl	_$JSONPARSER$_Ld43
_$JSONPARSER$_Ld43:
.reference _$JSONPARSER$_Ld44
	.ascii	"No scanner. No source specified ?\000"
	.align 2
.globl	_$JSONPARSER$_Ld46
_$JSONPARSER$_Ld46:
	.short	0,1
	.long	0,-1,24
.reference _$JSONPARSER$_Ld45
.globl	_$JSONPARSER$_Ld45
_$JSONPARSER$_Ld45:
.reference _$JSONPARSER$_Ld46
	.ascii	"jsonparser.serrnoscanner\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld2
_$JSONPARSER$_Ld2:
	.short	0,1
	.long	0,-1,25
.reference _$JSONPARSER$_Ld1
.globl	_$JSONPARSER$_Ld1
_$JSONPARSER$_Ld1:
.reference _$JSONPARSER$_Ld2
	.ascii	"Error at line %d, Pos %d:\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER
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

L_JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
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

L_JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__DOERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__DOPARSE$BOOLEAN$BOOLEAN$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__CURRENTTOKEN$$TJSONTOKEN$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__CURRENTTOKEN$$TJSONTOKEN
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

L_JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__GETNEXTTOKEN$$TJSONTOKEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSON$$TJSONNULL$stub:
.indirect_symbol _FPJSON_CREATEJSON$$TJSONNULL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub:
.indirect_symbol _FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__CURRENTTOKENSTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub:
.indirect_symbol _FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__PARSEOBJECT$$TJSONOBJECT$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__PARSEOBJECT$$TJSONOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__PARSEARRAY$$TJSONARRAY$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__PARSEARRAY$$TJSONARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__PARSENUMBER$$TJSONNUMBER$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__PARSENUMBER$$TJSONNUMBER
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

L_SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub:
.indirect_symbol _FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub:
.indirect_symbol _FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_real_ansistr$stub:
.indirect_symbol fpc_val_real_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub:
.indirect_symbol _FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER
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

L_FPJSON_CREATEJSONOBJECT$array_of_const$$TJSONOBJECT$stub:
.indirect_symbol _FPJSON_CREATEJSONOBJECT$array_of_const$$TJSONOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_CREATEJSONARRAY$array_of_const$$TJSONARRAY$stub:
.indirect_symbol _FPJSON_CREATEJSONARRAY$array_of_const$$TJSONARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONSCANNER_TJSONSCANNER_$__FETCHTOKEN$$TJSONTOKEN$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__FETCHTOKEN$$TJSONTOKEN
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

L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONSCANNER_TJSONSCANNER_$__CREATE$TSTREAM$BOOLEAN$$TJSONSCANNER$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__CREATE$TSTREAM$BOOLEAN$$TJSONSCANNER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__SETUTF8$BOOLEAN$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__SETUTF8$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONSCANNER_TJSONSCANNER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONSCANNER$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONSCANNER
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

L_FPJSON_GETJSONPARSERHANDLER$$TJSONPARSERHANDLER$stub:
.indirect_symbol _FPJSON_GETJSONPARSERHANDLER$$TJSONPARSERHANDLER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_SETJSONPARSERHANDLER$TJSONPARSERHANDLER$stub:
.indirect_symbol _FPJSON_SETJSONPARSERHANDLER$TJSONPARSERHANDLER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_INITJSONHANDLER$stub:
.indirect_symbol _JSONPARSER_INITJSONHANDLER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_DONEJSONHANDLER$stub:
.indirect_symbol _JSONPARSER_DONEJSONHANDLER
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
.globl	_INIT_JSONPARSER_DEF52
_INIT_JSONPARSER_DEF52:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld4
_$JSONPARSER$_Ld4:
	.short	0
	.long	_$JSONPARSER$_Ld5
	.align 2
.globl	_$JSONPARSER$_Ld5
_$JSONPARSER$_Ld5:
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONPARSER_TJSONPARSER
_INIT_JSONPARSER_TJSONPARSER:
	.byte	15,11
	.ascii	"TJSONParser"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_JSONPARSER_TJSONPARSER
_RTTI_JSONPARSER_TJSONPARSER:
	.byte	15,11
	.ascii	"TJSONParser"
	.long	_VMT_JSONPARSER_TJSONPARSER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"jsonparser"
	.short	0

.const_data
	.align 2
.globl	_$JSONPARSER$_Ld7
_$JSONPARSER$_Ld7:
	.short	0
	.long	_$JSONPARSER$_Ld8
	.align 2
.globl	_$JSONPARSER$_Ld8
_$JSONPARSER$_Ld8:
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONPARSER_EJSONPARSER
_INIT_JSONPARSER_EJSONPARSER:
	.byte	15,11
	.ascii	"EJSONParser"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_JSONPARSER_EJSONPARSER
_RTTI_JSONPARSER_EJSONPARSER:
	.byte	15,11
	.ascii	"EJSONParser"
	.long	_VMT_JSONPARSER_EJSONPARSER
	.long	_RTTI_CLASSES_EPARSERERROR
	.short	0
	.byte	10
	.ascii	"jsonparser"
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
L_VMT_JSONPARSER_TJSONPARSER$non_lazy_ptr:
.indirect_symbol _VMT_JSONPARSER_TJSONPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERRNOSCANNER$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERRNOSCANNER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JSONSCANNER_TOKENINFOS$non_lazy_ptr:
.indirect_symbol _TC_JSONSCANNER_TOKENINFOS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERRUNEXPECTEDEOF$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERRUNEXPECTEDEOF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERRINVALIDNUMBER$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERRINVALIDNUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERREXPECTEDELEMENTNAME$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERREXPECTEDELEMENTNAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERREXPECTEDCOLON$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERREXPECTEDCOLON
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SEXPECTEDCOMMAORBRACECLOSE$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SEXPECTEDCOMMAORBRACECLOSE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONPARSER_SERREMPTYELEMENT$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONPARSER_SERREMPTYELEMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONPARSER$_Ld1$non_lazy_ptr:
.indirect_symbol _$JSONPARSER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_JSONPARSER_EJSONPARSER$non_lazy_ptr:
.indirect_symbol _VMT_JSONPARSER_EJSONPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_JSONSCANNER_TJSONSCANNER$non_lazy_ptr:
.indirect_symbol _VMT_JSONSCANNER_TJSONSCANNER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JSONPARSER_DEFJSONPARSERHANDLER$TSTREAM$BOOLEAN$TJSONDATA$non_lazy_ptr:
.indirect_symbol _JSONPARSER_DEFJSONPARSERHANDLER$TSTREAM$BOOLEAN$TJSONDATA
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_JSONPARSER_START
_RESSTR_JSONPARSER_START:
	.long	_$JSONPARSER$_Ld9
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERRUNEXPECTEDEOF
_RESSTR_JSONPARSER_SERRUNEXPECTEDEOF:
	.long	_$JSONPARSER$_Ld13
	.long	_$JSONPARSER$_Ld11
	.long	_$JSONPARSER$_Ld11
	.long	77244558

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN
_RESSTR_JSONPARSER_SERRUNEXPECTEDTOKEN:
	.long	_$JSONPARSER$_Ld17
	.long	_$JSONPARSER$_Ld15
	.long	_$JSONPARSER$_Ld15
	.long	171419534

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERREXPECTEDCOLON
_RESSTR_JSONPARSER_SERREXPECTEDCOLON:
	.long	_$JSONPARSER$_Ld21
	.long	_$JSONPARSER$_Ld19
	.long	_$JSONPARSER$_Ld19
	.long	171025534

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERRUNEXPECTEDCOMMA
_RESSTR_JSONPARSER_SERRUNEXPECTEDCOMMA:
	.long	_$JSONPARSER$_Ld25
	.long	_$JSONPARSER$_Ld23
	.long	_$JSONPARSER$_Ld23
	.long	4605086

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERREMPTYELEMENT
_RESSTR_JSONPARSER_SERREMPTYELEMENT:
	.long	_$JSONPARSER$_Ld29
	.long	_$JSONPARSER$_Ld27
	.long	_$JSONPARSER$_Ld27
	.long	97524238

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERREXPECTEDELEMENTNAME
_RESSTR_JSONPARSER_SERREXPECTEDELEMENTNAME:
	.long	_$JSONPARSER$_Ld33
	.long	_$JSONPARSER$_Ld31
	.long	_$JSONPARSER$_Ld31
	.long	174529602

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SEXPECTEDCOMMAORBRACECLOSE
_RESSTR_JSONPARSER_SEXPECTEDCOMMAORBRACECLOSE:
	.long	_$JSONPARSER$_Ld37
	.long	_$JSONPARSER$_Ld35
	.long	_$JSONPARSER$_Ld35
	.long	182858430

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERRINVALIDNUMBER
_RESSTR_JSONPARSER_SERRINVALIDNUMBER:
	.long	_$JSONPARSER$_Ld41
	.long	_$JSONPARSER$_Ld39
	.long	_$JSONPARSER$_Ld39
	.long	222938003

.data
	.align 2
.globl	_RESSTR_JSONPARSER_SERRNOSCANNER
_RESSTR_JSONPARSER_SERRNOSCANNER:
	.long	_$JSONPARSER$_Ld45
	.long	_$JSONPARSER$_Ld43
	.long	_$JSONPARSER$_Ld43
	.long	70947455

.data
	.align 2
.globl	_RESSTR_JSONPARSER_END
_RESSTR_JSONPARSER_END:
	.long	_RESSTR_JSONPARSER_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

