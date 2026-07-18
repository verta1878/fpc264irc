# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPJSON_SETJSONINSTANCETYPE$TJSONINSTANCETYPE$TJSONDATACLASS
_FPJSON_SETJSONINSTANCETYPE$TJSONINSTANCETYPE$TJSONDATACLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-540(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	$1,(%esp)
	movl	L_$FPJSON$_Ld1$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	L_TC_FPJSON_MINJSONINSTANCETYPES$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	leal	-280(%ebp),%edx
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRWRONGINSTANCECLASS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj4(%ebx),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj6:
	movl	-4(%ebp),%edx
	movl	L_TC_FPJSON_MINJSONINSTANCETYPES$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax,%edx,4),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN$stub
	testb	%al,%al
	je	Lj19
	jmp	Lj20
Lj19:
	movl	$1,(%esp)
	leal	-280(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-280(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$4,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	L_TC_FPJSON_MINJSONINSTANCETYPES$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	leal	-536(%ebp),%edx
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-536(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$4,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRWRONGINSTANCECLASS$non_lazy_ptr-Lj4(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj4(%ebx),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj20:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	%edx,(%ecx,%eax,4)
	movl	-540(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_GETJSONINSTANCETYPE$TJSONINSTANCETYPE$$TJSONDATACLASS
_FPJSON_GETJSONINSTANCETYPE$TJSONINSTANCETYPE$$TJSONDATACLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj44
Lj44:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj44(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING
_FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj48
Lj48:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj49
	movl	$1,-12(%ebp)
	movl	$1,-16(%ebp)
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj60
	movl	-4(%eax),%eax
Lj60:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj63
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj48(%ebx),%edx
	movl	%edx,%eax
Lj63:
	movl	%eax,-24(%ebp)
	jmp	Lj65
	.align 2
Lj64:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$8,%eax
	cmpl	$3,%eax
	jb	Lj69
	subl	$4,%eax
	cmpl	$2,%eax
	jb	Lj69
	cmpl	$22,%eax
	stc
	je	Lj69
	cmpl	$35,%eax
	stc
	je	Lj69
	cmpl	$80,%eax
	stc
	je	Lj69
	clc
Lj69:
	jc	Lj67
	jmp	Lj68
Lj67:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$8,%al
	jb	Lj85
	subb	$8,%al
	je	Lj89
	decb	%al
	je	Lj90
	decb	%al
	je	Lj91
	subb	$2,%al
	je	Lj92
	decb	%al
	je	Lj93
	subb	$21,%al
	je	Lj88
	subb	$13,%al
	je	Lj87
	subb	$45,%al
	je	Lj86
	jmp	Lj85
Lj86:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld3$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj87:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld5$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj88:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld7$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj89:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld9$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj90:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld11$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj91:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld13$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj92:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld15$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj93:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld17$non_lazy_ptr-Lj48(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj84
Lj85:
Lj84:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj68:
	incl	-12(%ebp)
	incl	-24(%ebp)
Lj65:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj64
	jmp	Lj66
Lj66:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj49:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	call	LFPC_RERAISE$stub
Lj50:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_JSONSTRINGTOSTRING$ANSISTRING$$ANSISTRING
_FPJSON_JSONSTRINGTOSTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj159
Lj159:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj160
	movl	$1,-12(%ebp)
	movl	$1,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj169
	movl	-4(%eax),%eax
Lj169:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj174
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj159(%ebx),%edx
	movl	%edx,%eax
Lj174:
	movl	%eax,-24(%ebp)
	jmp	Lj176
	.align 2
Lj175:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$92,%al
	je	Lj178
	jmp	Lj179
Lj178:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj194
	jmp	Lj195
Lj194:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	jb	Lj197
	subb	$34,%al
	je	Lj198
	subb	$13,%al
	je	Lj198
	subb	$45,%al
	je	Lj198
	subb	$6,%al
	je	Lj199
	subb	$4,%al
	je	Lj202
	subb	$8,%al
	je	Lj201
	subb	$4,%al
	je	Lj203
	subb	$2,%al
	je	Lj200
	decb	%al
	je	Lj204
	jmp	Lj197
Lj198:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	leal	-72(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-72(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj196
Lj199:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld19$non_lazy_ptr-Lj159(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj196
Lj200:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld21$non_lazy_ptr-Lj159(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj196
Lj201:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld23$non_lazy_ptr-Lj159(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj196
Lj202:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld25$non_lazy_ptr-Lj159(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj196
Lj203:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld27$non_lazy_ptr-Lj159(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj196
Lj204:
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_copy$stub
	addl	$4,-12(%ebp)
	addl	$4,-24(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-28(%ebp),%ecx
	leal	-84(%ebp),%eax
	movl	L_$FPJSON$_Ld29$non_lazy_ptr-Lj159(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-84(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	leal	-80(%ebp),%edx
	call	Lfpc_uchar_to_unicodestr$stub
	movl	-80(%ebp),%esi
	leal	-88(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-88(%ebp),%edx
	leal	-76(%ebp),%eax
	movl	%esi,%ecx
	call	Lfpc_unicodestr_concat$stub
	movl	-76(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj196
Lj197:
Lj196:
Lj195:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj179:
	incl	-12(%ebp)
	incl	-24(%ebp)
Lj176:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj175
	jmp	Lj177
Lj177:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-84(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj160:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj161
	call	LFPC_RERAISE$stub
Lj161:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_JSONTYPENAME$TJSONTYPE$$ANSISTRING
_FPJSON_JSONTYPENAME$TJSONTYPE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj304
Lj304:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	L_RTTI_FPJSON_TJSONTYPE$non_lazy_ptr-Lj304(%ebx),%eax
	call	L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSON$$TJSONNULL
_FPJSON_CREATEJSON$$TJSONNULL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj312
Lj312:
	popl	%ebx
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj312(%ebx),%eax
	movl	24(%eax),%edx
	movl	$0,%eax
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj312(%ebx),%ecx
	movl	24(%ecx),%ecx
	call	*176(%ecx)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN
_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj320
Lj320:
	popl	%ebx
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%cl
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj320(%ebx),%eax
	movl	20(%eax),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER
_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj330
Lj330:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj330(%ebx),%eax
	movl	4(%eax),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER
_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj340
Lj340:
	popl	%ebx
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj340(%ebx),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER
_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj350
Lj350:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj350(%ebx),%eax
	movl	12(%eax),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING
_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj360
Lj360:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj361
	movl	-4(%ebp),%ecx
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj360(%ebx),%eax
	movl	16(%eax),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-8(%ebp)
Lj361:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj362
	call	LFPC_RERAISE$stub
Lj362:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSONARRAY$array_of_const$$TJSONARRAY
_FPJSON_CREATEJSONARRAY$array_of_const$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj373
Lj373:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
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
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj373(%eax),%edx
	movl	28(%edx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONARRAY_$__CREATE$array_of_const$$TJSONARRAY$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_CREATEJSONOBJECT$array_of_const$$TJSONOBJECT
_FPJSON_CREATEJSONOBJECT$array_of_const$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj385
Lj385:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
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
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr-Lj385(%eax),%edx
	movl	32(%edx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONOBJECT_$__CREATE$array_of_const$$TJSONOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_GETJSON$ANSISTRING$BOOLEAN$$TJSONDATA
_FPJSON_GETJSON$ANSISTRING$BOOLEAN$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj397
Lj397:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj397(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj406
	movb	-8(%ebp),%dl
	movl	-16(%ebp),%eax
	call	L_FPJSON_GETJSON$TSTREAM$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-12(%ebp)
Lj406:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj407
	decl	%eax
	testl	%eax,%eax
	je	Lj408
Lj408:
	call	LFPC_RERAISE$stub
Lj407:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_GETJSON$TSTREAM$BOOLEAN$$TJSONDATA
_FPJSON_GETJSON$TSTREAM$BOOLEAN$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj419
Lj419:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	L_U_FPJSON_JPH$non_lazy_ptr-Lj419(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj422
	jmp	Lj423
Lj422:
	movl	L_RESSTR_FPJSON_SERRNOPARSERHANDLER$non_lazy_ptr-Lj419(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj419(%ebx),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj423:
	leal	-12(%ebp),%ecx
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	movl	L_U_FPJSON_JPH$non_lazy_ptr-Lj419(%ebx),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_SETJSONPARSERHANDLER$TJSONPARSERHANDLER
_FPJSON_SETJSONPARSERHANDLER$TJSONPARSERHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj435
Lj435:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_U_FPJSON_JPH$non_lazy_ptr-Lj435(%edx),%ecx
	movl	%eax,(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_GETJSONPARSERHANDLER$$TJSONPARSERHANDLER
_FPJSON_GETJSONPARSERHANDLER$$TJSONPARSERHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj439
Lj439:
	popl	%edx
	movl	L_U_FPJSON_JPH$non_lazy_ptr-Lj439(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECTENUMERATOR_$__CREATE$TJSONOBJECT$$TJSONOBJECTENUMERATOR
_FPJSON_TJSONOBJECTENUMERATOR_$__CREATE$TJSONOBJECT$$TJSONOBJECTENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj444
	jmp	Lj445
Lj444:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj445:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj450
	jmp	Lj451
Lj450:
	jmp	Lj442
Lj451:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj454
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj458
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,8(%eax)
Lj458:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj459
	call	LFPC_RERAISE$stub
Lj459:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj467
	jmp	Lj466
Lj467:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj465
	jmp	Lj466
Lj465:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj466:
Lj454:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj456
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj471
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj472
	jmp	Lj473
Lj472:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj473:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj471:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj470
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj470:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj456
Lj456:
Lj442:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECTENUMERATOR_$__GETCURRENT$$TJSONENUM
_FPJSON_TJSONOBJECTENUMERATOR_$__GETCURRENT$$TJSONENUM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj480
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,4(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-52(%ebp),%ecx
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
Lj480:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj481
	call	LFPC_RERAISE$stub
Lj481:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECTENUMERATOR_$__MOVENEXT$$BOOLEAN
_FPJSON_TJSONOBJECTENUMERATOR_$__MOVENEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	cmpl	8(%ebx),%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAYENUMERATOR_$__CREATE$TJSONARRAY$$TJSONARRAYENUMERATOR
_FPJSON_TJSONARRAYENUMERATOR_$__CREATE$TJSONARRAY$$TJSONARRAYENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj507
	jmp	Lj508
Lj507:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj508:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj513
	jmp	Lj514
Lj513:
	jmp	Lj505
Lj514:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj517
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj521
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,8(%eax)
Lj521:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj522
	call	LFPC_RERAISE$stub
Lj522:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj530
	jmp	Lj529
Lj530:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj528
	jmp	Lj529
Lj528:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj529:
Lj517:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj519
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj534
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj535
	jmp	Lj536
Lj535:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj536:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj534:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj533
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj533:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj519
Lj519:
Lj505:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAYENUMERATOR_$__GETCURRENT$$TJSONENUM
_FPJSON_TJSONARRAYENUMERATOR_$__GETCURRENT$$TJSONENUM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj543
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,4(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
Lj543:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj544
	call	LFPC_RERAISE$stub
Lj544:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAYENUMERATOR_$__MOVENEXT$$BOOLEAN
_FPJSON_TJSONARRAYENUMERATOR_$__MOVENEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	8(%eax)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	cmpl	8(%ebx),%eax
	setgb	-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONENUMERATOR_$__CREATE$TJSONDATA$$TJSONENUMERATOR
_FPJSON_TJSONENUMERATOR_$__CREATE$TJSONDATA$$TJSONENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj568
	jmp	Lj569
Lj568:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj569:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj574
	jmp	Lj575
Lj574:
	jmp	Lj566
Lj575:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj578
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj582
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj582:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj583
	call	LFPC_RERAISE$stub
Lj583:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj589
	jmp	Lj588
Lj589:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj587
	jmp	Lj588
Lj587:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj588:
Lj578:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj580
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj593
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj594
	jmp	Lj595
Lj594:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj595:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj593:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj592
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj592:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj580
Lj580:
Lj566:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONENUMERATOR_$__GETCURRENT$$TJSONENUM
_FPJSON_TJSONENUMERATOR_$__GETCURRENT$$TJSONENUM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONENUMERATOR_$__MOVENEXT$$BOOLEAN
_FPJSON_TJSONENUMERATOR_$__MOVENEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT:
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
.globl	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj624
	jmp	Lj625
Lj624:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj625:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj630
	jmp	Lj631
Lj630:
	jmp	Lj622
Lj631:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj634
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj638
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
Lj638:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj639
	call	LFPC_RERAISE$stub
Lj639:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj645
	jmp	Lj644
Lj645:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj643
	jmp	Lj644
Lj643:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj644:
Lj634:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj636
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj649
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj650
	jmp	Lj651
Lj650:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj651:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj649:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj648
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj648:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj636
Lj636:
Lj622:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING
_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj657
Lj657:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPJSON_EJSON$non_lazy_ptr-Lj657(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj657(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const
_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj665
Lj665:
	popl	-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%edx,%edi
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%esi
	movl	%ebx,%ecx
	movl	%esi,%edx
	movl	%edi,%eax
	call	LFPC_MOVE$stub
	movl	%esi,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	L_VMT_FPJSON_EJSON$non_lazy_ptr-Lj665(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	movl	-16(%ebp),%ebx
	leal	La2-Lj665(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj678
	jmp	Lj679
Lj678:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	$0,-16(%ebp)
	jmp	Lj684
Lj679:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj684:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN:
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
.globl	_FPJSON_TJSONDATA_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONDATA_$__JSONTYPE$$TJSONTYPE:
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
.globl	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj696
Lj696:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPJSON_TJSONENUMERATOR$non_lazy_ptr-Lj696(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONENUMERATOR_$__CREATE$TJSONDATA$$TJSONENUMERATOR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__FINDPATH$ANSISTRING$$TJSONDATA
_FPJSON_TJSONDATA_$__FINDPATH$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj707
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	%eax,-12(%ebp)
Lj707:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj708
	call	LFPC_RERAISE$stub
Lj708:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__GETPATH$ANSISTRING$$TJSONDATA
_FPJSON_TJSONDATA_$__GETPATH$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj725
Lj725:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj726
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*100(%esi)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj737
	jmp	Lj738
Lj737:
	movl	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-72(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRPATHELEMENTNOTFOUND$non_lazy_ptr-Lj725(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj738:
Lj726:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj727
	call	LFPC_RERAISE$stub
Lj727:
	movl	-12(%ebp),%eax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA:
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
.globl	_FPJSON_TJSONDATA_$__FORMATJSON$TFORMATOPTIONS$LONGINT$$ANSISTRING
_FPJSON_TJSONDATA_$__FORMATJSON$TFORMATOPTIONS$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*168(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNUMBER_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONNUMBER_$__JSONTYPE$$TJSONTYPE:
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
.globl	_FPJSON_TJSONSTRING_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONSTRING_$__JSONTYPE$$TJSONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$2,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__CLEAR
_FPJSON_TJSONSTRING_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,4(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__CLONE$$TJSONDATA
_FPJSON_TJSONSTRING_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETVALUE$$VARIANT
_FPJSON_TJSONSTRING_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSTEM_assign$ANSISTRING$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__SETVALUE$VARIANT
_FPJSON_TJSONSTRING_$__SETVALUE$VARIANT:
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
	jne	Lj809
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,4(%ebx)
Lj809:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj810
	call	LFPC_RERAISE$stub
Lj810:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONSTRING_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONSTRING_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj825
Lj825:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-16(%ebp),%edx
	call	Lfpc_val_real_ansistr$stub
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	fstpl	-12(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj832
	jmp	Lj833
Lj832:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-12(%ebp),%edx
	call	L_SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj834
	jmp	Lj835
Lj834:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPJSON_SERRINVALIDFLOAT$non_lazy_ptr-Lj825(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj825(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj825(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj835:
Lj833:
	fldl	-12(%ebp)
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONSTRING_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETASINT64$$INT64
_FPJSON_TJSONSTRING_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_STRTOINT64$ANSISTRING$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONSTRING_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj864
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movb	-4(%ebp),%al
	movb	$0,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,4(%ebx)
Lj864:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj865
	call	LFPC_RERAISE$stub
Lj865:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONSTRING_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj877
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,4(%ebx)
Lj877:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj878
	call	LFPC_RERAISE$stub
Lj878:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__SETASINTEGER$LONGINT
_FPJSON_TJSONSTRING_$__SETASINTEGER$LONGINT:
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
	jne	Lj888
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,4(%ebx)
Lj888:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj889
	call	LFPC_RERAISE$stub
Lj889:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__SETASINT64$INT64
_FPJSON_TJSONSTRING_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj899
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,4(%ebx)
Lj899:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj900
	call	LFPC_RERAISE$stub
Lj900:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONSTRING_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj909
Lj909:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj910
	movl	L_$FPJSON$_Ld31$non_lazy_ptr-Lj909(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-64(%ebp),%edx
	call	L_FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPJSON$_Ld31$non_lazy_ptr-Lj909(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj910:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj911
	call	LFPC_RERAISE$stub
Lj911:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONSTRING_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONSTRING_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING
_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj933
	jmp	Lj934
Lj933:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj934:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj939
	jmp	Lj940
Lj939:
	jmp	Lj931
Lj940:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj943
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj947
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
Lj947:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj948
	call	LFPC_RERAISE$stub
Lj948:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj954
	jmp	Lj953
Lj954:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj952
	jmp	Lj953
Lj952:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj953:
Lj943:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj945
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj958
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj959
	jmp	Lj960
Lj959:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj960:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj958:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj957
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj957:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj945
Lj945:
Lj931:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETVALUE$$VARIANT
_FPJSON_TJSONBOOLEAN_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	4(%eax),%al
	movl	-8(%ebp),%edx
	call	L_SYSTEM_assign$BOOLEAN$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONBOOLEAN_$__JSONTYPE$$TJSONTYPE:
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
.globl	_FPJSON_TJSONBOOLEAN_$__CLEAR
_FPJSON_TJSONBOOLEAN_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__CLONE$$TJSONDATA
_FPJSON_TJSONBOOLEAN_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%eax
	movb	4(%eax),%cl
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__SETVALUE$VARIANT
_FPJSON_TJSONBOOLEAN_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movb	%al,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONBOOLEAN_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	4(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONBOOLEAN_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONBOOLEAN_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETASINT64$$INT64
_FPJSON_TJSONBOOLEAN_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	4(%eax),%eax
	movl	$0,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONBOOLEAN_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONBOOLEAN_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setneb	4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__SETASINTEGER$LONGINT
_FPJSON_TJSONBOOLEAN_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	setneb	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__SETASINT64$INT64
_FPJSON_TJSONBOOLEAN_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	cmpl	$0,%ecx
	jne	Lj1037
	cmpl	$0,%edx
	jne	Lj1037
	jmp	Lj1038
Lj1037:
	movb	$1,4(%eax)
	jmp	Lj1039
Lj1038:
	movb	$0,4(%eax)
Lj1039:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONBOOLEAN_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj1041
Lj1041:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj1042
	jmp	Lj1043
Lj1042:
	movl	L_$FPJSON$_Ld33$non_lazy_ptr-Lj1041(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj1046
Lj1043:
	movl	L_$FPJSON$_Ld35$non_lazy_ptr-Lj1041(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
Lj1046:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONBOOLEAN_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	4(%eax),%al
	movl	-8(%ebp),%ecx
	movb	$1,%dl
	call	L_SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONBOOLEAN_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN$stub
	movl	-8(%ebp),%edx
	movb	%al,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN
_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1065
	jmp	Lj1066
Lj1065:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1066:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1071
	jmp	Lj1072
Lj1071:
	jmp	Lj1063
Lj1072:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1075
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1079
	movl	-12(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,4(%eax)
Lj1079:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1080
	call	LFPC_RERAISE$stub
Lj1080:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1086
	jmp	Lj1085
Lj1086:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1084
	jmp	Lj1085
Lj1084:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1085:
Lj1075:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1077
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1090
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1091
	jmp	Lj1092
Lj1091:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1092:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1090:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1089
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1089:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1077
Lj1077:
Lj1063:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN
_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1098
Lj1098:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj1099
	jmp	Lj1100
Lj1099:
	movl	L_RESSTR_FPJSON_SERRCANNOTCONVERTFROMNULL$non_lazy_ptr-Lj1098(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
	jmp	Lj1105
Lj1100:
	movl	L_RESSTR_FPJSON_SERRCANNOTCONVERTTONULL$non_lazy_ptr-Lj1098(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj1105:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONNULL_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONNULL_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	fldz
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONNULL_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETASINT64$$INT64
_FPJSON_TJSONNULL_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETISNULL$$BOOLEAN
_FPJSON_TJSONNULL_$__GETISNULL$$BOOLEAN:
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
.globl	_FPJSON_TJSONNULL_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONNULL_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONNULL_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__SETASINTEGER$LONGINT
_FPJSON_TJSONNULL_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__SETASINT64$INT64
_FPJSON_TJSONNULL_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONNULL_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj1163
Lj1163:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$FPJSON$_Ld37$non_lazy_ptr-Lj1163(%esi),%ebx
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
.globl	_FPJSON_TJSONNULL_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONNULL_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONNULL_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__GETVALUE$$VARIANT
_FPJSON_TJSONNULL_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__SETVALUE$VARIANT
_FPJSON_TJSONNULL_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONNULL_$__JSONTYPE$$TJSONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$4,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__CLEAR
_FPJSON_TJSONNULL_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONNULL_$__CLONE$$TJSONDATA
_FPJSON_TJSONNULL_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	movl	%ebx,%ecx
	call	*176(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONFLOATNUMBER_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldz
	fldl	4(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONFLOATNUMBER_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONFLOATNUMBER_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	4(%eax)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETASINT64$$INT64
_FPJSON_TJSONFLOATNUMBER_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	4(%eax)
	fistpq	-20(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONFLOATNUMBER_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	%edx,-12(%ebp)
	fildl	-12(%ebp)
	fstpl	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONFLOATNUMBER_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	12(%ebp),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__SETASINTEGER$LONGINT
_FPJSON_TJSONFLOATNUMBER_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	fildl	-4(%ebp)
	fstpl	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__SETASINT64$INT64
_FPJSON_TJSONFLOATNUMBER_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fildq	8(%ebp)
	fstpl	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONFLOATNUMBER_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONFLOATNUMBER_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%esp)
	movl	-4(%ebp),%eax
	fldl	4(%eax)
	fstpt	4(%esp)
	movl	$1,%ecx
	movl	$-1,%edx
	movl	$-32767,%eax
	call	Lfpc_ansistr_float$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1262
	jmp	Lj1261
Lj1262:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj1260
	jmp	Lj1261
Lj1260:
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj1261:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONFLOATNUMBER_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj1270
Lj1270:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_val_real_ansistr$stub
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	movl	-8(%ebp),%eax
	fstpl	4(%eax)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1277
	jmp	Lj1278
Lj1277:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_FPJSON_SERRINVALIDFLOAT$non_lazy_ptr-Lj1270(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj1270(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj1270(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1278:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__GETVALUE$$VARIANT
_FPJSON_TJSONFLOATNUMBER_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,(%esp)
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_assign$DOUBLE$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__SETVALUE$VARIANT
_FPJSON_TJSONFLOATNUMBER_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$DOUBLE$stub
	movl	-8(%ebp),%eax
	fstpl	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER
_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1303
	jmp	Lj1304
Lj1303:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1304:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1309
	jmp	Lj1310
Lj1309:
	jmp	Lj1301
Lj1310:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1313
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1317
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	12(%ebp),%eax
	movl	%eax,8(%edx)
Lj1317:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1318
	call	LFPC_RERAISE$stub
Lj1318:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1324
	jmp	Lj1323
Lj1324:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1322
	jmp	Lj1323
Lj1322:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1323:
Lj1313:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1315
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1328
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1329
	jmp	Lj1330
Lj1329:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1330:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1328:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1327
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1327:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1315
Lj1315:
Lj1301:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE
_FPJSON_TJSONFLOATNUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE:
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
.globl	_FPJSON_TJSONFLOATNUMBER_$__CLEAR
_FPJSON_TJSONFLOATNUMBER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldz
	fstpl	4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONFLOATNUMBER_$__CLONE$$TJSONDATA
_FPJSON_TJSONFLOATNUMBER_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,(%esp)
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONINTEGERNUMBER_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONINTEGERNUMBER_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fildl	4(%eax)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONINTEGERNUMBER_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETASINT64$$INT64
_FPJSON_TJSONINTEGERNUMBER_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONINTEGERNUMBER_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONINTEGERNUMBER_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fldl	8(%ebp)
	fistpq	-12(%ebp)
	fwait
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__SETASINTEGER$LONGINT
_FPJSON_TJSONINTEGERNUMBER_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__SETASINT64$INT64
_FPJSON_TJSONINTEGERNUMBER_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONINTEGERNUMBER_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONINTEGERNUMBER_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONINTEGERNUMBER_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__GETVALUE$$VARIANT
_FPJSON_TJSONINTEGERNUMBER_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_SYSTEM_assign$LONGINT$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__SETVALUE$VARIANT
_FPJSON_TJSONINTEGERNUMBER_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER
_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1425
	jmp	Lj1426
Lj1425:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1426:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1431
	jmp	Lj1432
Lj1431:
	jmp	Lj1423
Lj1432:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1435
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1439
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj1439:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1440
	call	LFPC_RERAISE$stub
Lj1440:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1446
	jmp	Lj1445
Lj1446:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1444
	jmp	Lj1445
Lj1444:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1445:
Lj1435:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1437
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1450
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1451
	jmp	Lj1452
Lj1451:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1452:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1450:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1449
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1449:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1437
Lj1437:
Lj1423:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE
_FPJSON_TJSONINTEGERNUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE:
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
.globl	_FPJSON_TJSONINTEGERNUMBER_$__CLEAR
_FPJSON_TJSONINTEGERNUMBER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINTEGERNUMBER_$__CLONE$$TJSONDATA
_FPJSON_TJSONINTEGERNUMBER_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETASINT64$$INT64
_FPJSON_TJSONINT64NUMBER_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__SETASINT64$INT64
_FPJSON_TJSONINT64NUMBER_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	12(%ebp),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONINT64NUMBER_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jne	Lj1491
	cmpl	$0,%edx
	jne	Lj1491
	jmp	Lj1492
Lj1491:
	movb	$1,-5(%ebp)
	jmp	Lj1493
Lj1492:
	movb	$0,-5(%ebp)
Lj1493:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONINT64NUMBER_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fildq	4(%eax)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONINT64NUMBER_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONINT64NUMBER_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,4(%eax)
	movl	%ecx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONINT64NUMBER_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	fldl	8(%ebp)
	fistpq	-12(%ebp)
	fwait
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__SETASINTEGER$LONGINT
_FPJSON_TJSONINT64NUMBER_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,4(%ecx)
	movl	%eax,8(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONINT64NUMBER_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONINT64NUMBER_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	4(%edx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONINT64NUMBER_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTOINT64$ANSISTRING$$INT64$stub
	movl	-8(%ebp),%ecx
	movl	%eax,4(%ecx)
	movl	%edx,8(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__GETVALUE$$VARIANT
_FPJSON_TJSONINT64NUMBER_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	4(%edx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_assign$INT64$$VARIANT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__SETVALUE$VARIANT
_FPJSON_TJSONINT64NUMBER_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$VARIANT$$INT64$stub
	movl	-8(%ebp),%ecx
	movl	%eax,4(%ecx)
	movl	%edx,8(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER
_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1548
	jmp	Lj1549
Lj1548:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1549:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1554
	jmp	Lj1555
Lj1554:
	jmp	Lj1546
Lj1555:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1558
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1562
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	12(%ebp),%eax
	movl	%eax,8(%edx)
Lj1562:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1563
	call	LFPC_RERAISE$stub
Lj1563:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1569
	jmp	Lj1568
Lj1569:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1567
	jmp	Lj1568
Lj1567:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1568:
Lj1558:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1560
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1573
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1574
	jmp	Lj1575
Lj1574:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1575:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1573:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1572
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1572:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1560
Lj1560:
Lj1546:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE
_FPJSON_TJSONINT64NUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$2,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__CLEAR
_FPJSON_TJSONINT64NUMBER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONINT64NUMBER_$__CLONE$$TJSONDATA
_FPJSON_TJSONINT64NUMBER_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	4(%edx),%eax
	movl	%eax,(%esp)
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETBOOLEANS$LONGINT$$BOOLEAN
_FPJSON_TJSONARRAY_$__GETBOOLEANS$LONGINT$$BOOLEAN:
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
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETARRAYS$LONGINT$$TJSONARRAY
_FPJSON_TJSONARRAY_$__GETARRAYS$LONGINT$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1617
Lj1617:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONARRAY$non_lazy_ptr-Lj1617(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETFLOATS$LONGINT$$DOUBLE
_FPJSON_TJSONARRAY_$__GETFLOATS$LONGINT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETINTEGERS$LONGINT$$LONGINT
_FPJSON_TJSONARRAY_$__GETINTEGERS$LONGINT$$LONGINT:
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
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETINT64S$LONGINT$$INT64
_FPJSON_TJSONARRAY_$__GETINT64S$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETNULLS$LONGINT$$BOOLEAN
_FPJSON_TJSONARRAY_$__GETNULLS$LONGINT$$BOOLEAN:
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
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETOBJECTS$LONGINT$$TJSONOBJECT
_FPJSON_TJSONARRAY_$__GETOBJECTS$LONGINT$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1677
Lj1677:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj1677(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETSTRINGS$LONGINT$$ANSISTRING
_FPJSON_TJSONARRAY_$__GETSTRINGS$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETTYPES$LONGINT$$TJSONTYPE
_FPJSON_TJSONARRAY_$__GETTYPES$LONGINT$$TJSONTYPE:
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
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%eax),%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*180(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETARRAYS$LONGINT$TJSONARRAY
_FPJSON_TJSONARRAY_$__SETARRAYS$LONGINT$TJSONARRAY:
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
	call	*164(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETBOOLEANS$LONGINT$BOOLEAN
_FPJSON_TJSONARRAY_$__SETBOOLEANS$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETFLOATS$LONGINT$DOUBLE
_FPJSON_TJSONARRAY_$__SETFLOATS$LONGINT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETINTEGERS$LONGINT$LONGINT
_FPJSON_TJSONARRAY_$__SETINTEGERS$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETINT64S$LONGINT$INT64
_FPJSON_TJSONARRAY_$__SETINT64S$LONGINT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETOBJECTS$LONGINT$TJSONOBJECT
_FPJSON_TJSONARRAY_$__SETOBJECTS$LONGINT$TJSONOBJECT:
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
	call	*164(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETSTRINGS$LONGINT$ANSISTRING
_FPJSON_TJSONARRAY_$__SETSTRINGS$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
_FPJSON_TJSONARRAY_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-28(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1780
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1785
	jmp	Lj1784
Lj1785:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$91,%al
	je	Lj1783
	jmp	Lj1784
Lj1783:
	movl	-4(%ebp),%edx
	movb	$93,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	$-1,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj1794
	jmp	Lj1795
Lj1794:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	subl	$2,%ecx
	movl	-4(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	movl	$-1,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
Lj1795:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1812
	jmp	Lj1811
Lj1812:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	cmpl	-24(%ebp),%eax
	jg	Lj1810
	jmp	Lj1811
Lj1810:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%ecx
	leal	-28(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,%ecx
	movl	-28(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%esi
	movl	(%esi),%esi
	call	*100(%esi)
	movl	%eax,-16(%ebp)
	jmp	Lj1837
Lj1811:
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1840
	jmp	Lj1841
Lj1840:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-72(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1852
Lj1841:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj1852:
Lj1837:
	jmp	Lj1855
Lj1784:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
Lj1855:
Lj1780:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1781
	call	LFPC_RERAISE$stub
Lj1781:
	movl	-16(%ebp),%eax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN
_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1871
Lj1871:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj1872
	jmp	Lj1873
Lj1872:
	movl	L_RESSTR_FPJSON_SERRCANNOTCONVERTFROMARRAY$non_lazy_ptr-Lj1871(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
	jmp	Lj1878
Lj1873:
	movl	L_RESSTR_FPJSON_SERRCANNOTCONVERTTOARRAY$non_lazy_ptr-Lj1871(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj1878:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONARRAY_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONARRAY_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	fldz
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONARRAY_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETASINT64$$INT64
_FPJSON_TJSONARRAY_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONARRAY_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONARRAY_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETASINTEGER$LONGINT
_FPJSON_TJSONARRAY_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETASINT64$INT64
_FPJSON_TJSONARRAY_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONARRAY_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj1932
Lj1932:
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
	jne	Lj1933
	movl	L_$FPJSON$_Ld39$non_lazy_ptr-Lj1932(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj1939
	decl	-12(%ebp)
	.align 2
Lj1940:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
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
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1959
	jmp	Lj1960
Lj1959:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld41$non_lazy_ptr-Lj1932(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1960:
	cmpl	-12(%ebp),%esi
	jg	Lj1940
Lj1939:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld43$non_lazy_ptr-Lj1932(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1933:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1934
	call	LFPC_RERAISE$stub
Lj1934:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING
_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	testl	$8,-4(%ebp)
	jne	Lj1977
	jmp	Lj1978
Lj1977:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	$9,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	jmp	Lj1985
Lj1978:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	$32,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
Lj1985:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
_FPJSON_TJSONARRAY_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj1993
Lj1993:
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
	jne	Lj1994
	movl	-64(%ebp),%eax
	movl	L_$FPJSON$_Ld39$non_lazy_ptr-Lj1993(%eax),%esi
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%ebx)
	testl	$1,-4(%ebp)
	je	Lj1999
	jmp	Lj2000
Lj1999:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%ecx
	movl	-64(%ebp),%eax
	movl	L_$FPJSON$_Ld23$non_lazy_ptr-Lj1993(%eax),%ebx
	movl	%ecx,%eax
	movl	%ebx,%ecx
	call	Lfpc_ansistr_concat$stub
Lj2000:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj2008
	decl	-16(%ebp)
	.align 2
Lj2009:
	incl	-16(%ebp)
	testl	$1,-4(%ebp)
	je	Lj2012
	jmp	Lj2013
Lj2012:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	leal	-60(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj2013:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%esi
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ebx
	movl	(%ebx),%ebx
	call	*168(%ebx)
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	cmpl	-16(%ebp),%eax
	jg	Lj2048
	jmp	Lj2049
Lj2048:
	testl	$1,-4(%ebp)
	jne	Lj2052
	jmp	Lj2053
Lj2052:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	L_$FPJSON$_Ld41$non_lazy_ptr-Lj1993(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj2060
Lj2053:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	L_$FPJSON$_Ld45$non_lazy_ptr-Lj1993(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj2060:
Lj2049:
	testl	$1,-4(%ebp)
	je	Lj2067
	jmp	Lj2068
Lj2067:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	L_$FPJSON$_Ld23$non_lazy_ptr-Lj1993(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj2068:
	cmpl	-16(%ebp),%edi
	jg	Lj2009
Lj2008:
	testl	$1,-4(%ebp)
	je	Lj2075
	jmp	Lj2076
Lj2075:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj2076:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%ecx
	movl	-64(%ebp),%eax
	movl	L_$FPJSON$_Ld43$non_lazy_ptr-Lj1993(%eax),%ebx
	movl	%ecx,%eax
	movl	%ebx,%ecx
	call	Lfpc_ansistr_concat$stub
Lj1994:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1995
	call	LFPC_RERAISE$stub
Lj1995:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONARRAY_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONARRAY_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETVALUE$$VARIANT
_FPJSON_TJSONARRAY_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETVALUE$VARIANT
_FPJSON_TJSONARRAY_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETCOUNT$$LONGINT
_FPJSON_TJSONARRAY_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETITEM$LONGINT$$TJSONDATA
_FPJSON_TJSONARRAY_$__GETITEM$LONGINT$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2126
Lj2126:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj2126(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__SETITEM$LONGINT$TJSONDATA
_FPJSON_TJSONARRAY_$__SETITEM$LONGINT$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	je	Lj2139
	jmp	Lj2140
Lj2139:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	jmp	Lj2147
Lj2140:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub
Lj2147:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__CREATE$$TJSONARRAY
_FPJSON_TJSONARRAY_$__CREATE$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj2155
Lj2155:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2156
	jmp	Lj2157
Lj2156:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2157:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2162
	jmp	Lj2163
Lj2162:
	jmp	Lj2154
Lj2163:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2166
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2170
	movl	L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr-Lj2155(%ebx),%edx
	movb	$1,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj2170:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2171
	call	LFPC_RERAISE$stub
Lj2171:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2183
	jmp	Lj2182
Lj2183:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2181
	jmp	Lj2182
Lj2181:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2182:
Lj2166:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2168
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2187
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2188
	jmp	Lj2189
Lj2188:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2189:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2187:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2186
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2186:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2168
Lj2168:
Lj2154:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_VARRECTOJSON$TVARREC$ANSISTRING$$TJSONDATA
_FPJSON_VARRECTOJSON$TVARREC$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-340(%ebp)
	call	Lj2195
Lj2195:
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
	jne	Lj2196
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jl	Lj2202
	testl	%eax,%eax
	je	Lj2203
	decl	%eax
	je	Lj2204
	decl	%eax
	je	Lj2205
	decl	%eax
	je	Lj2206
	decl	%eax
	je	Lj2207
	decl	%eax
	je	Lj2210
	decl	%eax
	je	Lj2209
	decl	%eax
	je	Lj2213
	subl	$4,%eax
	je	Lj2208
	decl	%eax
	je	Lj2211
	subl	$4,%eax
	je	Lj2212
	jmp	Lj2202
Lj2203:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2204:
	movl	-4(%ebp),%eax
	movb	4(%eax),%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2205:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	4(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2206:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	fldt	(%eax)
	fstpl	-64(%ebp)
	fldl	-64(%ebp)
	fstpl	(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2207:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-56(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2208:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2209:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2210:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj2254
	jmp	Lj2255
Lj2254:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRPOINTERNOTNIL$non_lazy_ptr-Lj2195(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj2195(%ebx),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
	jmp	Lj2264
Lj2255:
	call	L_FPJSON_CREATEJSON$$TJSONNULL$stub
	movl	%eax,-12(%ebp)
Lj2264:
	jmp	Lj2201
Lj2211:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	L_$FPJSON$_Ld47$non_lazy_ptr-Lj2195(%ebx),%eax
	fildq	(%eax)
	fildq	(%edx)
	fdivp	%st,%st(1)
	fstpl	-64(%ebp)
	fldl	-64(%ebp)
	fstpl	(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2212:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	(%edx),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj2201
Lj2213:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj2195(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2275
	jmp	Lj2276
Lj2275:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2283
Lj2276:
	movl	$1,(%esp)
	leal	-336(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-336(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$4,-80(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-80(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRNOTJSONDATA$non_lazy_ptr-Lj2195(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj2195(%ebx),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj2283:
	jmp	Lj2201
Lj2202:
	movl	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	leal	-72(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRUNKNOWNTYPEINCONSTRUCTOR$non_lazy_ptr-Lj2195(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_VMT_FPJSON_TJSONDATA$non_lazy_ptr-Lj2195(%ebx),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj2201:
Lj2196:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2197
	call	LFPC_RERAISE$stub
Lj2197:
	movl	-12(%ebp),%eax
	movl	-340(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__CREATE$array_of_const$$TJSONARRAY
_FPJSON_TJSONARRAY_$__CREATE$array_of_const$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj2305
Lj2305:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2306
	jmp	Lj2307
Lj2306:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2307:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2312
	jmp	Lj2313
Lj2312:
	jmp	Lj2304
Lj2313:
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2316
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj2320
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPJSON_TJSONARRAY_$__CREATE$$TJSONARRAY$stub
	movl	8(%ebp),%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj2328
	decl	-16(%ebp)
	.align 2
Lj2329:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	L_$FPJSON$_Ld48$non_lazy_ptr-Lj2305(%ebx),%edx
	call	L_FPJSON_VARRECTOJSON$TVARREC$ANSISTRING$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	cmpl	-16(%ebp),%esi
	jg	Lj2329
Lj2328:
Lj2320:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj2321
	call	LFPC_RERAISE$stub
Lj2321:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2342
	jmp	Lj2341
Lj2342:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2340
	jmp	Lj2341
Lj2340:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2341:
Lj2316:
	call	LFPC_POPADDRSTACK$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2318
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj2346
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2347
	jmp	Lj2348
Lj2347:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2348:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2346:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj2345
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2345:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2318
Lj2318:
Lj2304:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__DESTROY
_FPJSON_TJSONARRAY_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2355
	jmp	Lj2356
Lj2355:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2356:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2367
	jmp	Lj2366
Lj2367:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2365
	jmp	Lj2366
Lj2365:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2366:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONARRAY_$__JSONTYPE$$TJSONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$5,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__CLONE$$TJSONDATA
_FPJSON_TJSONARRAY_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONARRAY_$__CREATE$$TJSONARRAY$stub
	movl	%eax,-12(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-20(%ebp)
	testl	%eax,%eax
	jne	Lj2390
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2395
	decl	-16(%ebp)
	.align 2
Lj2396:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*192(%edx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj2396
Lj2395:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj2390:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj2392
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj2414
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2414:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj2413
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2413:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2392
Lj2392:
	movl	-8(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ITERATE$TJSONARRAYITERATOR$TOBJECT
_FPJSON_TJSONARRAY_$__ITERATE$TJSONARRAYITERATOR$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-16(%ebp)
	movb	$1,-17(%ebp)
	jmp	Lj2424
	.align 2
Lj2423:
	leal	-17(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%edx
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%ebx
	call	*%ebx
	incl	-16(%ebp)
Lj2424:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj2438
	jmp	Lj2425
Lj2438:
	cmpb	$0,-17(%ebp)
	jne	Lj2423
	jmp	Lj2425
Lj2425:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT
_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__GETENUMERATOR$$TBASEJSONENUMERATOR
_FPJSON_TJSONARRAY_$__GETENUMERATOR$$TBASEJSONENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2450
Lj2450:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPJSON_TJSONARRAYENUMERATOR$non_lazy_ptr-Lj2450(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONARRAYENUMERATOR_$__CREATE$TJSONARRAY$$TJSONARRAYENUMERATOR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__CLEAR
_FPJSON_TJSONARRAY_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__CLEAR$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$LONGINT$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$INT64$$INT64
_FPJSON_TJSONARRAY_$__ADD$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$ANSISTRING$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_FPJSON_CREATEJSON$$TJSONNULL$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$DOUBLE$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$DOUBLE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$BOOLEAN$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$TJSONARRAY$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$TJSONARRAY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2530
Lj2530:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj2531
	jmp	Lj2532
Lj2531:
	movl	L_RESSTR_FPJSON_SERRCANNOTADDARRAYTWICE$non_lazy_ptr-Lj2530(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj2532:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__ADD$TJSONOBJECT$$LONGINT
_FPJSON_TJSONARRAY_$__ADD$TJSONOBJECT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2548
Lj2548:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj2549
	jmp	Lj2550
Lj2549:
	movl	L_RESSTR_FPJSON_SERRCANNOTADDOBJECTTWICE$non_lazy_ptr-Lj2548(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj2550:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__ADD$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__DELETE$LONGINT
_FPJSON_TJSONARRAY_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__DELETE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__EXCHANGE$LONGINT$LONGINT
_FPJSON_TJSONARRAY_$__EXCHANGE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__EXCHANGE$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__EXTRACT$TJSONDATA$$TJSONDATA
_FPJSON_TJSONARRAY_$__EXTRACT$TJSONDATA$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__EXTRACT$LONGINT$$TJSONDATA
_FPJSON_TJSONARRAY_$__EXTRACT$LONGINT$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT
_FPJSON_TJSONARRAY_$__INSERT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	L_FPJSON_CREATEJSON$$TJSONNULL$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONDATA
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$LONGINT
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$INT64
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$ANSISTRING
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$DOUBLE
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$BOOLEAN
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONARRAY
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2666
Lj2666:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj2667
	jmp	Lj2668
Lj2667:
	movl	L_RESSTR_FPJSON_SERRCANNOTADDARRAYTWICE$non_lazy_ptr-Lj2666(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj2668:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONOBJECT
_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2684
Lj2684:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT$stub
	cmpl	$-1,%eax
	jne	Lj2685
	jmp	Lj2686
Lj2685:
	movl	L_RESSTR_FPJSON_SERRCANNOTADDOBJECTTWICE$non_lazy_ptr-Lj2684(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj2686:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__MOVE$LONGINT$LONGINT
_FPJSON_TJSONARRAY_$__MOVE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__MOVE$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONARRAY_$__REMOVE$TJSONDATA
_FPJSON_TJSONARRAY_$__REMOVE$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETARRAYS$ANSISTRING$$TJSONARRAY
_FPJSON_TJSONOBJECT_$__GETARRAYS$ANSISTRING$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2716
Lj2716:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONARRAY$non_lazy_ptr-Lj2716(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETBOOLEANS$ANSISTRING$$BOOLEAN
_FPJSON_TJSONOBJECT_$__GETBOOLEANS$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA
_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj2740
Lj2740:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2753
	jmp	Lj2754
Lj2753:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRNONEXISTENTELEMENT$non_lazy_ptr-Lj2740(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj2754:
	movl	-12(%ebp),%eax
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETFLOATS$ANSISTRING$$DOUBLE
_FPJSON_TJSONOBJECT_$__GETFLOATS$ANSISTRING$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETINTEGERS$ANSISTRING$$LONGINT
_FPJSON_TJSONOBJECT_$__GETINTEGERS$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETINT64S$ANSISTRING$$INT64
_FPJSON_TJSONOBJECT_$__GETINT64S$ANSISTRING$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETISNULL$ANSISTRING$$BOOLEAN
_FPJSON_TJSONOBJECT_$__GETISNULL$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING
_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-268(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING$stub
	leal	-268(%ebp),%eax
	movl	-12(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETOBJECTS$ANSISTRING$$TJSONOBJECT
_FPJSON_TJSONOBJECT_$__GETOBJECTS$ANSISTRING$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2824
Lj2824:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj2824(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETSTRINGS$ANSISTRING$$ANSISTRING
_FPJSON_TJSONOBJECT_$__GETSTRINGS$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETTYPES$ANSISTRING$$TJSONTYPE
_FPJSON_TJSONOBJECT_$__GETTYPES$ANSISTRING$$TJSONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%eax),%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*180(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETARRAYS$ANSISTRING$TJSONARRAY
_FPJSON_TJSONOBJECT_$__SETARRAYS$ANSISTRING$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETBOOLEANS$ANSISTRING$BOOLEAN
_FPJSON_TJSONOBJECT_$__SETBOOLEANS$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA
_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj2891
	jmp	Lj2892
Lj2891:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub
	jmp	Lj2905
Lj2892:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub
Lj2905:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETFLOATS$ANSISTRING$DOUBLE
_FPJSON_TJSONOBJECT_$__SETFLOATS$ANSISTRING$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETINTEGERS$ANSISTRING$LONGINT
_FPJSON_TJSONOBJECT_$__SETINTEGERS$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETINT64S$ANSISTRING$INT64
_FPJSON_TJSONOBJECT_$__SETINT64S$ANSISTRING$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETISNULL$ANSISTRING$BOOLEAN
_FPJSON_TJSONOBJECT_$__SETISNULL$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2943
Lj2943:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj2944
	jmp	Lj2945
Lj2944:
	movl	L_RESSTR_FPJSON_SERRCANNOTSETNOTISNULL$non_lazy_ptr-Lj2943(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj2945:
	call	L_FPJSON_CREATEJSON$$TJSONNULL$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETOBJECTS$ANSISTRING$TJSONOBJECT
_FPJSON_TJSONOBJECT_$__SETOBJECTS$ANSISTRING$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETSTRINGS$ANSISTRING$ANSISTRING
_FPJSON_TJSONOBJECT_$__SETSTRINGS$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
_FPJSON_TJSONOBJECT_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj2976
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2979
	jmp	Lj2980
Lj2979:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2976
Lj2980:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj2987
	movl	-4(%eax),%eax
Lj2987:
	movl	%eax,-24(%ebp)
	movl	$1,-28(%ebp)
	jmp	Lj2991
	.align 2
Lj2990:
	incl	-28(%ebp)
Lj2991:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj2993
	jmp	Lj2992
Lj2993:
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj2990
	jmp	Lj2992
Lj2992:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj2997
	.align 2
Lj2996:
	incl	-32(%ebp)
Lj2997:
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2999
	jmp	Lj2998
Lj2999:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$46,%eax
	je	Lj3000
	cmpl	$91,%eax
	je	Lj3000
Lj3000:
	jne	Lj2996
	jmp	Lj2998
Lj2998:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%eax
	subl	%eax,%ecx
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj3009
	jmp	Lj3010
Lj3009:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3013
Lj3010:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3020
	jmp	Lj3021
Lj3020:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-32(%ebp),%eax
	subl	%eax,%ecx
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj3036
Lj3021:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-32(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	%eax,-16(%ebp)
Lj3036:
Lj3013:
Lj2976:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj2977
	call	LFPC_RERAISE$stub
Lj2977:
	movl	-16(%ebp),%eax
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN
_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3060
Lj3060:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj3061
	jmp	Lj3062
Lj3061:
	movl	L_RESSTR_FPJSON_SERRCANNOTCONVERTFROMOBJECT$non_lazy_ptr-Lj3060(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
	jmp	Lj3067
Lj3062:
	movl	L_RESSTR_FPJSON_SERRCANNOTCONVERTTOOBJECT$non_lazy_ptr-Lj3060(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj3067:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETASBOOLEAN$$BOOLEAN
_FPJSON_TJSONOBJECT_$__GETASBOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETASFLOAT$$DOUBLE
_FPJSON_TJSONOBJECT_$__GETASFLOAT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	fldz
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETASINTEGER$$LONGINT
_FPJSON_TJSONOBJECT_$__GETASINTEGER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETASINT64$$INT64
_FPJSON_TJSONOBJECT_$__GETASINT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETASBOOLEAN$BOOLEAN
_FPJSON_TJSONOBJECT_$__SETASBOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETASFLOAT$DOUBLE
_FPJSON_TJSONOBJECT_$__SETASFLOAT$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETASINTEGER$LONGINT
_FPJSON_TJSONOBJECT_$__SETASINTEGER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETASINT64$INT64
_FPJSON_TJSONOBJECT_$__SETASINT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETASJSON$$ANSISTRING
_FPJSON_TJSONOBJECT_$__GETASJSON$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj3121
Lj3121:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3122
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj3128
	decl	-12(%ebp)
	.align 2
Lj3129:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3132
	jmp	Lj3133
Lj3132:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$FPJSON$_Ld41$non_lazy_ptr-Lj3121(%edi),%ecx
	call	Lfpc_ansistr_concat$stub
Lj3133:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	L_$FPJSON$_Ld31$non_lazy_ptr-Lj3121(%edi),%eax
	movl	%eax,-68(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	leal	-76(%ebp),%edx
	call	L_FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$FPJSON$_Ld50$non_lazy_ptr-Lj3121(%edi),%eax
	movl	%eax,-60(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%esi
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-80(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj3129
Lj3128:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3166
	jmp	Lj3167
Lj3166:
	movl	L_$FPJSON$_Ld52$non_lazy_ptr-Lj3121(%edi),%eax
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPJSON$_Ld54$non_lazy_ptr-Lj3121(%edi),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj3174
Lj3167:
	movl	L_$FPJSON$_Ld56$non_lazy_ptr-Lj3121(%edi),%ebx
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%esi)
Lj3174:
Lj3122:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3123
	call	LFPC_RERAISE$stub
Lj3123:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETASSTRING$$ANSISTRING
_FPJSON_TJSONOBJECT_$__GETASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETASSTRING$ANSISTRING
_FPJSON_TJSONOBJECT_$__SETASSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETVALUE$$VARIANT
_FPJSON_TJSONOBJECT_$__GETVALUE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETVALUE$VARIANT
_FPJSON_TJSONOBJECT_$__SETVALUE$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETCOUNT$$LONGINT
_FPJSON_TJSONOBJECT_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETITEM$LONGINT$$TJSONDATA
_FPJSON_TJSONOBJECT_$__GETITEM$LONGINT$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__SETITEM$LONGINT$TJSONDATA
_FPJSON_TJSONOBJECT_$__SETITEM$LONGINT$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT
_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj3224
Lj3224:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3225
	jmp	Lj3226
Lj3225:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj3226:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3231
	jmp	Lj3232
Lj3231:
	jmp	Lj3223
Lj3232:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3235
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3239
	movl	L_VMT_CONTNRS_TFPHASHOBJECTLIST$non_lazy_ptr-Lj3224(%ebx),%edx
	movb	$1,%cl
	movl	$0,%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj3239:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3240
	call	LFPC_RERAISE$stub
Lj3240:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3252
	jmp	Lj3251
Lj3252:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3250
	jmp	Lj3251
Lj3250:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3251:
Lj3235:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3237
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3256
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3257
	jmp	Lj3258
Lj3257:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3258:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3256:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3255
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3255:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3237
Lj3237:
Lj3223:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__CREATE$array_of_const$$TJSONOBJECT
_FPJSON_TJSONOBJECT_$__CREATE$array_of_const$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	call	Lj3264
Lj3264:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3265
	jmp	Lj3266
Lj3265:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3266:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3271
	jmp	Lj3272
Lj3271:
	jmp	Lj3263
Lj3272:
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3275
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj3279
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub
	movl	8(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj3286
	jmp	Lj3287
Lj3286:
	movl	L_RESSTR_FPJSON_SERRODDNUMBER$non_lazy_ptr-Lj3264(%esi),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub
Lj3287:
	movl	$0,-16(%ebp)
	jmp	Lj3295
	.align 2
Lj3294:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,8),%eax
	movl	%eax,%ebx
	movl	(%ebx),%eax
	cmpl	$2,%eax
	jl	Lj3300
	subl	$2,%eax
	je	Lj3301
	subl	$2,%eax
	je	Lj3302
	subl	$2,%eax
	je	Lj3304
	subl	$5,%eax
	je	Lj3303
	jmp	Lj3300
Lj3301:
	leal	-20(%ebp),%edx
	movb	4(%ebx),%al
	call	Lfpc_char_to_ansistr$stub
	jmp	Lj3299
Lj3302:
	leal	-20(%ebp),%edx
	movl	4(%ebx),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj3299
Lj3303:
	movl	4(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj3299
Lj3304:
	leal	-20(%ebp),%edx
	movl	4(%ebx),%eax
	call	L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub
	jmp	Lj3299
Lj3300:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-108(%ebp)
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRNAMEMUSTBESTRING$non_lazy_ptr-Lj3264(%esi),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj3299:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj3327
	jmp	Lj3328
Lj3327:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-108(%ebp)
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	L_RESSTR_FPJSON_SERRNAMEMUSTBESTRING$non_lazy_ptr-Lj3264(%esi),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub
Lj3328:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	L_$FPJSON$_Ld58$non_lazy_ptr-Lj3264(%esi),%edx
	call	L_FPJSON_VARRECTOJSON$TVARREC$ANSISTRING$$TJSONDATA$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	incl	-16(%ebp)
Lj3295:
	movl	-16(%ebp),%eax
	cmpl	8(%ebp),%eax
	jle	Lj3294
	jmp	Lj3296
Lj3296:
Lj3279:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj3280
	call	LFPC_RERAISE$stub
Lj3280:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3351
	jmp	Lj3350
Lj3351:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3349
	jmp	Lj3350
Lj3349:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3350:
Lj3275:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3277
	leal	-76(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj3355
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3356
	jmp	Lj3357
Lj3356:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3357:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3355:
	call	LFPC_POPADDRSTACK$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj3354
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3354:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3277
Lj3277:
Lj3263:
	movl	-12(%ebp),%eax
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__DESTROY
_FPJSON_TJSONOBJECT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3370
	jmp	Lj3371
Lj3370:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3371:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3382
	jmp	Lj3381
Lj3382:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3380
	jmp	Lj3381
Lj3380:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3381:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__JSONTYPE$$TJSONTYPE
_FPJSON_TJSONOBJECT_$__JSONTYPE$$TJSONTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$6,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__CLONE$$TJSONDATA
_FPJSON_TJSONOBJECT_$__CLONE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-148(%ebp)
	movl	%esi,-144(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-100(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3391
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub
	movl	%eax,-12(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj3408
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	movl	%eax,%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj3413
	decl	-16(%ebp)
	.align 2
Lj3414:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*192(%edx)
	movl	%eax,%ebx
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-100(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%ebx,%ecx
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	cmpl	-16(%ebp),%esi
	jg	Lj3414
Lj3413:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj3408:
	call	LFPC_POPADDRSTACK$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj3410
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj3440
	leal	-12(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3440:
	call	LFPC_POPADDRSTACK$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj3439
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3439:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3410
Lj3410:
Lj3391:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3392
	call	LFPC_RERAISE$stub
Lj3392:
	movl	-8(%ebp),%eax
	movl	-148(%ebp),%ebx
	movl	-144(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GETENUMERATOR$$TBASEJSONENUMERATOR
_FPJSON_TJSONOBJECT_$__GETENUMERATOR$$TBASEJSONENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3444
Lj3444:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_FPJSON_TJSONOBJECTENUMERATOR$non_lazy_ptr-Lj3444(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONOBJECTENUMERATOR_$__CREATE$TJSONOBJECT$$TJSONOBJECTENUMERATOR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
_FPJSON_TJSONOBJECT_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%esi,-124(%ebp)
	movl	%edi,-120(%ebp)
	call	Lj3454
Lj3454:
	popl	-116(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj3455
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%edx
	movl	12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj3463
	decl	-16(%ebp)
	.align 2
Lj3464:
	incl	-16(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3467
	jmp	Lj3468
Lj3467:
	testl	$2,-4(%ebp)
	jne	Lj3469
	jmp	Lj3470
Lj3469:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	-116(%ebp),%ebx
	movl	L_$FPJSON$_Ld41$non_lazy_ptr-Lj3454(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj3477
Lj3470:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld45$non_lazy_ptr-Lj3454(%eax),%edx
	movl	%edx,-68(%ebp)
	movl	-116(%ebp),%edx
	movl	L_$FPJSON$_Ld23$non_lazy_ptr-Lj3454(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3477:
Lj3468:
	testl	$2,-4(%ebp)
	je	Lj3484
	jmp	Lj3485
Lj3484:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj3485:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING$stub
	testl	$4,-4(%ebp)
	je	Lj3508
	jmp	Lj3509
Lj3508:
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld31$non_lazy_ptr-Lj3454(%eax),%edx
	movl	%edx,-72(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-116(%ebp),%edx
	movl	L_$FPJSON$_Ld31$non_lazy_ptr-Lj3454(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3509:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	-116(%ebp),%edx
	movl	L_$FPJSON$_Ld60$non_lazy_ptr-Lj3454(%edx),%eax
	movl	%eax,-84(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%esi
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ebx
	movl	(%ebx),%ebx
	call	*168(%ebx)
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-92(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-16(%ebp),%edi
	jg	Lj3464
Lj3463:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3538
	jmp	Lj3539
Lj3538:
	testl	$2,-4(%ebp)
	jne	Lj3540
	jmp	Lj3541
Lj3540:
	movl	-116(%ebp),%edx
	movl	L_$FPJSON$_Ld52$non_lazy_ptr-Lj3454(%edx),%eax
	movl	%eax,-88(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld54$non_lazy_ptr-Lj3454(%eax),%edx
	movl	%edx,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	jmp	Lj3548
Lj3541:
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld62$non_lazy_ptr-Lj3454(%eax),%edx
	movl	%edx,-112(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld23$non_lazy_ptr-Lj3454(%eax),%edx
	movl	%edx,-104(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-8(%ebp),%edx
	movl	12(%ebp),%eax
	subl	%eax,%edx
	leal	-76(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld64$non_lazy_ptr-Lj3454(%eax),%edx
	movl	%edx,-96(%ebp)
	leal	-112(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj3548:
	jmp	Lj3561
Lj3539:
	movl	-116(%ebp),%eax
	movl	L_$FPJSON$_Ld56$non_lazy_ptr-Lj3454(%eax),%ebx
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%esi)
Lj3561:
Lj3455:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj3456
	call	LFPC_RERAISE$stub
Lj3456:
	movl	-128(%ebp),%ebx
	movl	-124(%ebp),%esi
	movl	-120(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ITERATE$TJSONOBJECTITERATOR$TOBJECT
_FPJSON_TJSONOBJECT_$__ITERATE$TJSONOBJECTITERATOR$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-28(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj3572
	movl	$0,-16(%ebp)
	movb	$1,-17(%ebp)
	jmp	Lj3580
	.align 2
Lj3579:
	leal	-17(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%esi
	movl	%ebx,%ecx
	call	*%esi
	incl	-16(%ebp)
Lj3580:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jg	Lj3602
	jmp	Lj3581
Lj3602:
	cmpb	$0,-17(%ebp)
	jne	Lj3579
	jmp	Lj3581
Lj3581:
Lj3572:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3573
	call	LFPC_RERAISE$stub
Lj3573:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__INDEXOF$TJSONDATA$$LONGINT
_FPJSON_TJSONOBJECT_$__INDEXOF$TJSONDATA$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT
_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-316(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3615
	movl	-4(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-312(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj3632
	jmp	Lj3631
Lj3632:
	cmpb	$0,-8(%ebp)
	jne	Lj3630
	jmp	Lj3631
Lj3630:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	decl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3638
	.align 2
Lj3637:
	decl	-16(%ebp)
Lj3638:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3640
	jmp	Lj3639
Lj3640:
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj3637
	jmp	Lj3639
Lj3639:
Lj3631:
Lj3615:
	call	LFPC_POPADDRSTACK$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3616
	call	LFPC_RERAISE$stub
Lj3616:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__CLEAR
_FPJSON_TJSONOBJECT_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$BOOLEAN$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	call	L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$DOUBLE$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$DOUBLE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_FPJSON_CREATEJSON$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$ANSISTRING$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$LONGINT$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$INT64$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$INT64$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_FPJSON_CREATEJSON$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	L_FPJSON_CREATEJSON$$TJSONNULL$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONARRAY$$LONGINT
_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONARRAY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__DELETE$LONGINT
_FPJSON_TJSONOBJECT_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__DELETE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__DELETE$ANSISTRING
_FPJSON_TJSONOBJECT_$__DELETE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3767
	jmp	Lj3768
Lj3767:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
Lj3768:
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__REMOVE$TJSONDATA
_FPJSON_TJSONOBJECT_$__REMOVE$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__EXTRACT$LONGINT$$TJSONDATA
_FPJSON_TJSONOBJECT_$__EXTRACT$LONGINT$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CONTNRS_TFPHASHOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__EXTRACT$ANSISTRING$$TJSONDATA
_FPJSON_TJSONOBJECT_$__EXTRACT$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3801
	jmp	Lj3802
Lj3801:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__EXTRACT$LONGINT$$TJSONDATA$stub
	movl	%eax,-12(%ebp)
	jmp	Lj3809
Lj3802:
	movl	$0,-12(%ebp)
Lj3809:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$$VARIANT
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3822
	jmp	Lj3823
Lj3822:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	-12(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*152(%ecx)
	jmp	Lj3834
Lj3823:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
Lj3834:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$DOUBLE$$DOUBLE
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3847
	jmp	Lj3848
Lj3847:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	fstpl	-16(%ebp)
	jmp	Lj3853
Lj3848:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj3853:
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$LONGINT$$LONGINT
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3866
	jmp	Lj3867
Lj3866:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-16(%ebp)
	jmp	Lj3872
Lj3867:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3872:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$INT64$$INT64
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3885
	jmp	Lj3886
Lj3885:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj3891
Lj3886:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj3891:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$BOOLEAN$$BOOLEAN
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3904
	jmp	Lj3905
Lj3904:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movb	%al,-13(%ebp)
	jmp	Lj3910
Lj3905:
	movb	-8(%ebp),%al
	movb	%al,-13(%ebp)
Lj3910:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$ANSISTRING$$ANSISTRING
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3915
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3926
	jmp	Lj3927
Lj3926:
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	jmp	Lj3932
Lj3927:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
Lj3932:
Lj3915:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3916
	call	LFPC_RERAISE$stub
Lj3916:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$TJSONARRAY$$TJSONARRAY
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$TJSONARRAY$$TJSONARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$5,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3945
	jmp	Lj3946
Lj3945:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3949
Lj3946:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3949:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$TJSONOBJECT$$TJSONOBJECT
_FPJSON_TJSONOBJECT_$__GET$ANSISTRING$TJSONOBJECT$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$6,%ecx
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3962
	jmp	Lj3963
Lj3962:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3966
Lj3963:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3966:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$$TJSONDATA
_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3979
	jmp	Lj3980
Lj3979:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,-12(%ebp)
	jmp	Lj3987
Lj3980:
	movl	$0,-12(%ebp)
Lj3987:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA
_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj4000
	jmp	Lj3999
Lj4000:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	cmpl	-8(%ebp),%eax
	jne	Lj3998
	jmp	Lj3999
Lj3998:
	movl	$0,-16(%ebp)
Lj3999:
	movl	-16(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_FPJSON_JPH
.data
.zerofill __DATA, __common, _U_FPJSON_JPH, 4,2



.const_data
	.align 2
.globl	_$FPJSON$_Ld66
_$FPJSON$_Ld66:
	.byte	9
	.ascii	"TJSONData"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONDATA
_VMT_FPJSON_TJSONDATA:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPJSON$_Ld66
	.long	0,0
	.long	_$FPJSON$_Ld67
	.long	_RTTI_FPJSON_TJSONDATA
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__JSONTYPE$$TJSONTYPE
	.long	FPC_ABSTRACTERROR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld69
_$FPJSON$_Ld69:
	.byte	19
	.ascii	"TBaseJSONEnumerator"

.const_data
	.align 2
.globl	_VMT_FPJSON_TBASEJSONENUMERATOR
_VMT_FPJSON_TBASEJSONENUMERATOR:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPJSON$_Ld69
	.long	0,0
	.long	_$FPJSON$_Ld70
	.long	_RTTI_FPJSON_TBASEJSONENUMERATOR
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld72
_$FPJSON$_Ld72:
	.byte	11
	.ascii	"TJSONNumber"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONNUMBER
_VMT_FPJSON_TJSONNUMBER:
	.long	4,-4
	.long	_VMT_FPJSON_TJSONDATA
	.long	_$FPJSON$_Ld72
	.long	0,0
	.long	_$FPJSON$_Ld73
	.long	_RTTI_FPJSON_TJSONNUMBER
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONNUMBER_$__JSONTYPE$$TJSONTYPE
	.long	FPC_ABSTRACTERROR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld75
_$FPJSON$_Ld75:
	.byte	16
	.ascii	"TJSONFloatNumber"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONFLOATNUMBER
_VMT_FPJSON_TJSONFLOATNUMBER:
	.long	12,-12
	.long	_VMT_FPJSON_TJSONNUMBER
	.long	_$FPJSON$_Ld75
	.long	0,0
	.long	_$FPJSON$_Ld76
	.long	_RTTI_FPJSON_TJSONFLOATNUMBER
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONFLOATNUMBER_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONFLOATNUMBER_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONFLOATNUMBER_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONFLOATNUMBER_$__SETASINT64$INT64
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONFLOATNUMBER_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONFLOATNUMBER_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONFLOATNUMBER_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONNUMBER_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONFLOATNUMBER_$__CLEAR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONFLOATNUMBER_$__CLONE$$TJSONDATA
	.long	_FPJSON_TJSONFLOATNUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld78
_$FPJSON$_Ld78:
	.byte	18
	.ascii	"TJSONIntegerNumber"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONINTEGERNUMBER
_VMT_FPJSON_TJSONINTEGERNUMBER:
	.long	8,-8
	.long	_VMT_FPJSON_TJSONNUMBER
	.long	_$FPJSON$_Ld78
	.long	0,0
	.long	_$FPJSON$_Ld79
	.long	_RTTI_FPJSON_TJSONINTEGERNUMBER
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONINTEGERNUMBER_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONINTEGERNUMBER_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONINTEGERNUMBER_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONINTEGERNUMBER_$__SETASINT64$INT64
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONINTEGERNUMBER_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONINTEGERNUMBER_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONINTEGERNUMBER_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONNUMBER_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONINTEGERNUMBER_$__CLEAR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONINTEGERNUMBER_$__CLONE$$TJSONDATA
	.long	_FPJSON_TJSONINTEGERNUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld81
_$FPJSON$_Ld81:
	.byte	16
	.ascii	"TJSONInt64Number"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONINT64NUMBER
_VMT_FPJSON_TJSONINT64NUMBER:
	.long	12,-12
	.long	_VMT_FPJSON_TJSONNUMBER
	.long	_$FPJSON$_Ld81
	.long	0,0
	.long	_$FPJSON$_Ld82
	.long	_RTTI_FPJSON_TJSONINT64NUMBER
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONINT64NUMBER_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONINT64NUMBER_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONINT64NUMBER_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONINT64NUMBER_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONINT64NUMBER_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONINT64NUMBER_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONINT64NUMBER_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONINT64NUMBER_$__SETASINT64$INT64
	.long	_FPJSON_TJSONINT64NUMBER_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONINT64NUMBER_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONINT64NUMBER_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONINT64NUMBER_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONINT64NUMBER_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONNUMBER_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONINT64NUMBER_$__CLEAR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONINT64NUMBER_$__CLONE$$TJSONDATA
	.long	_FPJSON_TJSONINT64NUMBER_$__NUMBERTYPE$$TJSONNUMBERTYPE
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld84
_$FPJSON$_Ld84:
	.byte	11
	.ascii	"TJSONString"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONSTRING
_VMT_FPJSON_TJSONSTRING:
	.long	8,-8
	.long	_VMT_FPJSON_TJSONDATA
	.long	_$FPJSON$_Ld84
	.long	0,0
	.long	_$FPJSON$_Ld85
	.long	_RTTI_FPJSON_TJSONSTRING
	.long	_INIT_FPJSON_TJSONSTRING
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONSTRING_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONSTRING_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONSTRING_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONSTRING_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONSTRING_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONSTRING_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONSTRING_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONSTRING_$__SETASINT64$INT64
	.long	_FPJSON_TJSONSTRING_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONSTRING_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONSTRING_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONSTRING_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONSTRING_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONSTRING_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONSTRING_$__CLEAR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONSTRING_$__CLONE$$TJSONDATA
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld87
_$FPJSON$_Ld87:
	.byte	12
	.ascii	"TJSONBoolean"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONBOOLEAN
_VMT_FPJSON_TJSONBOOLEAN:
	.long	8,-8
	.long	_VMT_FPJSON_TJSONDATA
	.long	_$FPJSON$_Ld87
	.long	0,0
	.long	_$FPJSON$_Ld88
	.long	_RTTI_FPJSON_TJSONBOOLEAN
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONBOOLEAN_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONBOOLEAN_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONBOOLEAN_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONBOOLEAN_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONBOOLEAN_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONBOOLEAN_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONBOOLEAN_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONBOOLEAN_$__SETASINT64$INT64
	.long	_FPJSON_TJSONBOOLEAN_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONBOOLEAN_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONBOOLEAN_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONBOOLEAN_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONBOOLEAN_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONBOOLEAN_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONBOOLEAN_$__CLEAR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONBOOLEAN_$__CLONE$$TJSONDATA
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld90
_$FPJSON$_Ld90:
	.byte	9
	.ascii	"TJSONNull"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONNULL
_VMT_FPJSON_TJSONNULL:
	.long	4,-4
	.long	_VMT_FPJSON_TJSONDATA
	.long	_$FPJSON$_Ld90
	.long	0,0
	.long	_$FPJSON$_Ld91
	.long	_RTTI_FPJSON_TJSONNULL
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
	.long	_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONNULL_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONNULL_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONNULL_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONNULL_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONNULL_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONNULL_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONNULL_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONNULL_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONNULL_$__SETASINT64$INT64
	.long	_FPJSON_TJSONNULL_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONNULL_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONNULL_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONNULL_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONNULL_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONDATA_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONDATA_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONDATA_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONNULL_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONNULL_$__CLEAR
	.long	_FPJSON_TJSONDATA_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONNULL_$__CLONE$$TJSONDATA
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld93
_$FPJSON$_Ld93:
	.byte	11
	.ascii	"TJSONObject"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONOBJECT
_VMT_FPJSON_TJSONOBJECT:
	.long	8,-8
	.long	_VMT_FPJSON_TJSONDATA
	.long	_$FPJSON$_Ld93
	.long	0,0
	.long	_$FPJSON$_Ld94
	.long	_RTTI_FPJSON_TJSONOBJECT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPJSON_TJSONOBJECT_$__DESTROY
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
	.long	_FPJSON_TJSONOBJECT_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONOBJECT_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONOBJECT_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONOBJECT_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONOBJECT_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONOBJECT_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONOBJECT_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONOBJECT_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONOBJECT_$__SETASINT64$INT64
	.long	_FPJSON_TJSONOBJECT_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONOBJECT_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONOBJECT_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONOBJECT_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONOBJECT_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONOBJECT_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONOBJECT_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONOBJECT_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONOBJECT_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONOBJECT_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONOBJECT_$__CLEAR
	.long	_FPJSON_TJSONOBJECT_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONOBJECT_$__CLONE$$TJSONDATA
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld96
_$FPJSON$_Ld96:
	.byte	10
	.ascii	"TJSONArray"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONARRAY
_VMT_FPJSON_TJSONARRAY:
	.long	8,-8
	.long	_VMT_FPJSON_TJSONDATA
	.long	_$FPJSON$_Ld96
	.long	0,0
	.long	_$FPJSON$_Ld97
	.long	_RTTI_FPJSON_TJSONARRAY
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPJSON_TJSONARRAY_$__DESTROY
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
	.long	_FPJSON_TJSONARRAY_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	.long	_FPJSON_TJSONARRAY_$__GETASBOOLEAN$$BOOLEAN
	.long	_FPJSON_TJSONARRAY_$__GETASFLOAT$$DOUBLE
	.long	_FPJSON_TJSONARRAY_$__GETASINTEGER$$LONGINT
	.long	_FPJSON_TJSONARRAY_$__GETASINT64$$INT64
	.long	_FPJSON_TJSONDATA_$__GETISNULL$$BOOLEAN
	.long	_FPJSON_TJSONARRAY_$__SETASBOOLEAN$BOOLEAN
	.long	_FPJSON_TJSONARRAY_$__SETASFLOAT$DOUBLE
	.long	_FPJSON_TJSONARRAY_$__SETASINTEGER$LONGINT
	.long	_FPJSON_TJSONARRAY_$__SETASINT64$INT64
	.long	_FPJSON_TJSONARRAY_$__GETASJSON$$ANSISTRING
	.long	_FPJSON_TJSONARRAY_$__GETASSTRING$$ANSISTRING
	.long	_FPJSON_TJSONARRAY_$__SETASSTRING$ANSISTRING
	.long	_FPJSON_TJSONARRAY_$__GETVALUE$$VARIANT
	.long	_FPJSON_TJSONARRAY_$__SETVALUE$VARIANT
	.long	_FPJSON_TJSONARRAY_$__GETITEM$LONGINT$$TJSONDATA
	.long	_FPJSON_TJSONARRAY_$__SETITEM$LONGINT$TJSONDATA
	.long	_FPJSON_TJSONARRAY_$__DOFORMATJSON$TFORMATOPTIONS$LONGINT$LONGINT$$ANSISTRING
	.long	_FPJSON_TJSONARRAY_$__GETCOUNT$$LONGINT
	.long	_FPJSON_TJSONDATA_$__CREATE$$TJSONDATA
	.long	_FPJSON_TJSONARRAY_$__JSONTYPE$$TJSONTYPE
	.long	_FPJSON_TJSONARRAY_$__CLEAR
	.long	_FPJSON_TJSONARRAY_$__GETENUMERATOR$$TBASEJSONENUMERATOR
	.long	_FPJSON_TJSONARRAY_$__CLONE$$TJSONDATA
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld99
_$FPJSON$_Ld99:
	.byte	5
	.ascii	"EJSON"

.const_data
	.align 2
.globl	_VMT_FPJSON_EJSON
_VMT_FPJSON_EJSON:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPJSON$_Ld99
	.long	0,0
	.long	_$FPJSON$_Ld100
	.long	_RTTI_FPJSON_EJSON
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
.globl	_$FPJSON$_Ld102
_$FPJSON$_Ld102:
	.byte	15
	.ascii	"TJSONEnumerator"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONENUMERATOR
_VMT_FPJSON_TJSONENUMERATOR:
	.long	8,-8
	.long	_VMT_FPJSON_TBASEJSONENUMERATOR
	.long	_$FPJSON$_Ld102
	.long	0,0
	.long	_$FPJSON$_Ld103
	.long	_RTTI_FPJSON_TJSONENUMERATOR
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
	.long	_FPJSON_TJSONENUMERATOR_$__GETCURRENT$$TJSONENUM
	.long	_FPJSON_TJSONENUMERATOR_$__MOVENEXT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld105
_$FPJSON$_Ld105:
	.byte	20
	.ascii	"TJSONArrayEnumerator"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONARRAYENUMERATOR
_VMT_FPJSON_TJSONARRAYENUMERATOR:
	.long	12,-12
	.long	_VMT_FPJSON_TBASEJSONENUMERATOR
	.long	_$FPJSON$_Ld105
	.long	0,0
	.long	_$FPJSON$_Ld106
	.long	_RTTI_FPJSON_TJSONARRAYENUMERATOR
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
	.long	_FPJSON_TJSONARRAYENUMERATOR_$__GETCURRENT$$TJSONENUM
	.long	_FPJSON_TJSONARRAYENUMERATOR_$__MOVENEXT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld108
_$FPJSON$_Ld108:
	.byte	21
	.ascii	"TJSONObjectEnumerator"

.const_data
	.align 2
.globl	_VMT_FPJSON_TJSONOBJECTENUMERATOR
_VMT_FPJSON_TJSONOBJECTENUMERATOR:
	.long	12,-12
	.long	_VMT_FPJSON_TBASEJSONENUMERATOR
	.long	_$FPJSON$_Ld108
	.long	0,0
	.long	_$FPJSON$_Ld109
	.long	_RTTI_FPJSON_TJSONOBJECTENUMERATOR
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
	.long	_FPJSON_TJSONOBJECTENUMERATOR_$__GETCURRENT$$TJSONENUM
	.long	_FPJSON_TJSONOBJECTENUMERATOR_$__MOVENEXT$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPJSON
_THREADVARLIST_FPJSON:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$FPJSON$_Ld112
_$FPJSON$_Ld112:
	.short	0,1
	.long	0,-1,6
.reference _$FPJSON$_Ld111
.globl	_$FPJSON$_Ld111
_$FPJSON$_Ld111:
.reference _$FPJSON$_Ld112
	.ascii	"FPJSON\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld114
_$FPJSON$_Ld114:
	.short	0,1
	.long	0,-1,35
.reference _$FPJSON$_Ld113
.globl	_$FPJSON$_Ld113
_$FPJSON$_Ld113:
.reference _$FPJSON$_Ld114
	.ascii	"Cannot convert data from Null value\000"
	.align 2
.globl	_$FPJSON$_Ld116
_$FPJSON$_Ld116:
	.short	0,1
	.long	0,-1,32
.reference _$FPJSON$_Ld115
.globl	_$FPJSON$_Ld115
_$FPJSON$_Ld115:
.reference _$FPJSON$_Ld116
	.ascii	"fpjson.serrcannotconvertfromnull\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld118
_$FPJSON$_Ld118:
	.short	0,1
	.long	0,-1,33
.reference _$FPJSON$_Ld117
.globl	_$FPJSON$_Ld117
_$FPJSON$_Ld117:
.reference _$FPJSON$_Ld118
	.ascii	"Cannot convert data to Null value\000"
	.align 2
.globl	_$FPJSON$_Ld120
_$FPJSON$_Ld120:
	.short	0,1
	.long	0,-1,30
.reference _$FPJSON$_Ld119
.globl	_$FPJSON$_Ld119
_$FPJSON$_Ld119:
.reference _$FPJSON$_Ld120
	.ascii	"fpjson.serrcannotconverttonull\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld122
_$FPJSON$_Ld122:
	.short	0,1
	.long	0,-1,36
.reference _$FPJSON$_Ld121
.globl	_$FPJSON$_Ld121
_$FPJSON$_Ld121:
.reference _$FPJSON$_Ld122
	.ascii	"Cannot convert data from array value\000"
	.align 2
.globl	_$FPJSON$_Ld124
_$FPJSON$_Ld124:
	.short	0,1
	.long	0,-1,33
.reference _$FPJSON$_Ld123
.globl	_$FPJSON$_Ld123
_$FPJSON$_Ld123:
.reference _$FPJSON$_Ld124
	.ascii	"fpjson.serrcannotconvertfromarray\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld126
_$FPJSON$_Ld126:
	.short	0,1
	.long	0,-1,34
.reference _$FPJSON$_Ld125
.globl	_$FPJSON$_Ld125
_$FPJSON$_Ld125:
.reference _$FPJSON$_Ld126
	.ascii	"Cannot convert data to array value\000"
	.align 2
.globl	_$FPJSON$_Ld128
_$FPJSON$_Ld128:
	.short	0,1
	.long	0,-1,31
.reference _$FPJSON$_Ld127
.globl	_$FPJSON$_Ld127
_$FPJSON$_Ld127:
.reference _$FPJSON$_Ld128
	.ascii	"fpjson.serrcannotconverttoarray\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld130
_$FPJSON$_Ld130:
	.short	0,1
	.long	0,-1,37
.reference _$FPJSON$_Ld129
.globl	_$FPJSON$_Ld129
_$FPJSON$_Ld129:
.reference _$FPJSON$_Ld130
	.ascii	"Cannot convert data from object value\000"
	.align 2
.globl	_$FPJSON$_Ld132
_$FPJSON$_Ld132:
	.short	0,1
	.long	0,-1,34
.reference _$FPJSON$_Ld131
.globl	_$FPJSON$_Ld131
_$FPJSON$_Ld131:
.reference _$FPJSON$_Ld132
	.ascii	"fpjson.serrcannotconvertfromobject\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld134
_$FPJSON$_Ld134:
	.short	0,1
	.long	0,-1,35
.reference _$FPJSON$_Ld133
.globl	_$FPJSON$_Ld133
_$FPJSON$_Ld133:
.reference _$FPJSON$_Ld134
	.ascii	"Cannot convert data to object value\000"
	.align 2
.globl	_$FPJSON$_Ld136
_$FPJSON$_Ld136:
	.short	0,1
	.long	0,-1,32
.reference _$FPJSON$_Ld135
.globl	_$FPJSON$_Ld135
_$FPJSON$_Ld135:
.reference _$FPJSON$_Ld136
	.ascii	"fpjson.serrcannotconverttoobject\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld138
_$FPJSON$_Ld138:
	.short	0,1
	.long	0,-1,24
.reference _$FPJSON$_Ld137
.globl	_$FPJSON$_Ld137
_$FPJSON$_Ld137:
.reference _$FPJSON$_Ld138
	.ascii	"Invalid float value : %s\000"
	.align 2
.globl	_$FPJSON$_Ld140
_$FPJSON$_Ld140:
	.short	0,1
	.long	0,-1,23
.reference _$FPJSON$_Ld139
.globl	_$FPJSON$_Ld139
_$FPJSON$_Ld139:
.reference _$FPJSON$_Ld140
	.ascii	"fpjson.serrinvalidfloat\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld142
_$FPJSON$_Ld142:
	.short	0,1
	.long	0,-1,24
.reference _$FPJSON$_Ld141
.globl	_$FPJSON$_Ld141
_$FPJSON$_Ld141:
.reference _$FPJSON$_Ld142
	.ascii	"Invalid float value : %s\000"
	.align 2
.globl	_$FPJSON$_Ld144
_$FPJSON$_Ld144:
	.short	0,1
	.long	0,-1,25
.reference _$FPJSON$_Ld143
.globl	_$FPJSON$_Ld143
_$FPJSON$_Ld143:
.reference _$FPJSON$_Ld144
	.ascii	"fpjson.serrinvalidinteger\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld146
_$FPJSON$_Ld146:
	.short	0,1
	.long	0,-1,29
.reference _$FPJSON$_Ld145
.globl	_$FPJSON$_Ld145
_$FPJSON$_Ld145:
.reference _$FPJSON$_Ld146
	.ascii	"IsNull cannot be set to False\000"
	.align 2
.globl	_$FPJSON$_Ld148
_$FPJSON$_Ld148:
	.short	0,1
	.long	0,-1,29
.reference _$FPJSON$_Ld147
.globl	_$FPJSON$_Ld147
_$FPJSON$_Ld147:
.reference _$FPJSON$_Ld148
	.ascii	"fpjson.serrcannotsetnotisnull\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld150
_$FPJSON$_Ld150:
	.short	0,1
	.long	0,-1,55
.reference _$FPJSON$_Ld149
.globl	_$FPJSON$_Ld149
_$FPJSON$_Ld149:
.reference _$FPJSON$_Ld150
	.ascii	"Adding an array object to an array twice is not all"
	.ascii	"owed\000"
	.align 2
.globl	_$FPJSON$_Ld152
_$FPJSON$_Ld152:
	.short	0,1
	.long	0,-1,30
.reference _$FPJSON$_Ld151
.globl	_$FPJSON$_Ld151
_$FPJSON$_Ld151:
.reference _$FPJSON$_Ld152
	.ascii	"fpjson.serrcannotaddarraytwice\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld154
_$FPJSON$_Ld154:
	.short	0,1
	.long	0,-1,49
.reference _$FPJSON$_Ld153
.globl	_$FPJSON$_Ld153
_$FPJSON$_Ld153:
.reference _$FPJSON$_Ld154
	.ascii	"Adding an object to an array twice is not allowed\000"
	.align 2
.globl	_$FPJSON$_Ld156
_$FPJSON$_Ld156:
	.short	0,1
	.long	0,-1,31
.reference _$FPJSON$_Ld155
.globl	_$FPJSON$_Ld155
_$FPJSON$_Ld155:
.reference _$FPJSON$_Ld156
	.ascii	"fpjson.serrcannotaddobjecttwice\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld158
_$FPJSON$_Ld158:
	.short	0,1
	.long	0,-1,38
.reference _$FPJSON$_Ld157
.globl	_$FPJSON$_Ld157
_$FPJSON$_Ld157:
.reference _$FPJSON$_Ld158
	.ascii	"Unknown type in JSON%s constructor: %d\000"
	.align 2
.globl	_$FPJSON$_Ld160
_$FPJSON$_Ld160:
	.short	0,1
	.long	0,-1,35
.reference _$FPJSON$_Ld159
.globl	_$FPJSON$_Ld159
_$FPJSON$_Ld159:
.reference _$FPJSON$_Ld160
	.ascii	"fpjson.serrunknowntypeinconstructor\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld162
_$FPJSON$_Ld162:
	.short	0,1
	.long	0,-1,39
.reference _$FPJSON$_Ld161
.globl	_$FPJSON$_Ld161
_$FPJSON$_Ld161:
.reference _$FPJSON$_Ld162
	.ascii	"Cannot add object of type %s to TJSON%s\000"
	.align 2
.globl	_$FPJSON$_Ld164
_$FPJSON$_Ld164:
	.short	0,1
	.long	0,-1,22
.reference _$FPJSON$_Ld163
.globl	_$FPJSON$_Ld163
_$FPJSON$_Ld163:
.reference _$FPJSON$_Ld164
	.ascii	"fpjson.serrnotjsondata\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld166
_$FPJSON$_Ld166:
	.short	0,1
	.long	0,-1,36
.reference _$FPJSON$_Ld165
.globl	_$FPJSON$_Ld165
_$FPJSON$_Ld165:
.reference _$FPJSON$_Ld166
	.ascii	"Cannot add non-nil pointer to JSON%s\000"
	.align 2
.globl	_$FPJSON$_Ld168
_$FPJSON$_Ld168:
	.short	0,1
	.long	0,-1,24
.reference _$FPJSON$_Ld167
.globl	_$FPJSON$_Ld167
_$FPJSON$_Ld167:
.reference _$FPJSON$_Ld168
	.ascii	"fpjson.serrpointernotnil\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld170
_$FPJSON$_Ld170:
	.short	0,1
	.long	0,-1,53
.reference _$FPJSON$_Ld169
.globl	_$FPJSON$_Ld169
_$FPJSON$_Ld169:
.reference _$FPJSON$_Ld170
	.ascii	"TJSONObject must be constructed with name,value pai"
	.ascii	"rs\000"
	.align 2
.globl	_$FPJSON$_Ld172
_$FPJSON$_Ld172:
	.short	0,1
	.long	0,-1,20
.reference _$FPJSON$_Ld171
.globl	_$FPJSON$_Ld171
_$FPJSON$_Ld171:
.reference _$FPJSON$_Ld172
	.ascii	"fpjson.serroddnumber\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld174
_$FPJSON$_Ld174:
	.short	0,1
	.long	0,-1,62
.reference _$FPJSON$_Ld173
.globl	_$FPJSON$_Ld173
_$FPJSON$_Ld173:
.reference _$FPJSON$_Ld174
	.ascii	"TJSONObject constructor element name at pos %d is n"
	.ascii	"ot a string\000"
	.align 2
.globl	_$FPJSON$_Ld176
_$FPJSON$_Ld176:
	.short	0,1
	.long	0,-1,27
.reference _$FPJSON$_Ld175
.globl	_$FPJSON$_Ld175
_$FPJSON$_Ld175:
.reference _$FPJSON$_Ld176
	.ascii	"fpjson.serrnamemustbestring\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld178
_$FPJSON$_Ld178:
	.short	0,1
	.long	0,-1,27
.reference _$FPJSON$_Ld177
.globl	_$FPJSON$_Ld177
_$FPJSON$_Ld177:
.reference _$FPJSON$_Ld178
	.ascii	"Unknown object member: \"%s\"\000"
	.align 2
.globl	_$FPJSON$_Ld180
_$FPJSON$_Ld180:
	.short	0,1
	.long	0,-1,29
.reference _$FPJSON$_Ld179
.globl	_$FPJSON$_Ld179
_$FPJSON$_Ld179:
.reference _$FPJSON$_Ld180
	.ascii	"fpjson.serrnonexistentelement\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld182
_$FPJSON$_Ld182:
	.short	0,1
	.long	0,-1,42
.reference _$FPJSON$_Ld181
.globl	_$FPJSON$_Ld181
_$FPJSON$_Ld181:
.reference _$FPJSON$_Ld182
	.ascii	"Path \"%s\" invalid: element \"%s\" not found.\000"
	.align 2
.globl	_$FPJSON$_Ld184
_$FPJSON$_Ld184:
	.short	0,1
	.long	0,-1,30
.reference _$FPJSON$_Ld183
.globl	_$FPJSON$_Ld183
_$FPJSON$_Ld183:
.reference _$FPJSON$_Ld184
	.ascii	"fpjson.serrpathelementnotfound\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld186
_$FPJSON$_Ld186:
	.short	0,1
	.long	0,-1,55
.reference _$FPJSON$_Ld185
.globl	_$FPJSON$_Ld185
_$FPJSON$_Ld185:
.reference _$FPJSON$_Ld186
	.ascii	"Cannot set instance class: %s does not descend from"
	.ascii	" %s.\000"
	.align 2
.globl	_$FPJSON$_Ld188
_$FPJSON$_Ld188:
	.short	0,1
	.long	0,-1,29
.reference _$FPJSON$_Ld187
.globl	_$FPJSON$_Ld187
_$FPJSON$_Ld187:
.reference _$FPJSON$_Ld188
	.ascii	"fpjson.serrwronginstanceclass\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld190
_$FPJSON$_Ld190:
	.short	0,1
	.long	0,-1,90
.reference _$FPJSON$_Ld189
.globl	_$FPJSON$_Ld189
_$FPJSON$_Ld189:
.reference _$FPJSON$_Ld190
	.ascii	"No JSON parser handler installed. Recompile your pr"
	.ascii	"oject with the jsonparser unit included\000"
	.align 2
.globl	_$FPJSON$_Ld192
_$FPJSON$_Ld192:
	.short	0,1
	.long	0,-1,26
.reference _$FPJSON$_Ld191
.globl	_$FPJSON$_Ld191
_$FPJSON$_Ld191:
.reference _$FPJSON$_Ld192
	.ascii	"fpjson.serrnoparserhandler\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPJSON_DEFAULTJSONINSTANCETYPES
_TC_FPJSON_DEFAULTJSONINSTANCETYPES:
	.long	_VMT_FPJSON_TJSONDATA
	.long	_VMT_FPJSON_TJSONINTEGERNUMBER
	.long	_VMT_FPJSON_TJSONINT64NUMBER
	.long	_VMT_FPJSON_TJSONFLOATNUMBER
	.long	_VMT_FPJSON_TJSONSTRING
	.long	_VMT_FPJSON_TJSONBOOLEAN
	.long	_VMT_FPJSON_TJSONNULL
	.long	_VMT_FPJSON_TJSONARRAY
	.long	_VMT_FPJSON_TJSONOBJECT

.data
	.align 2
.globl	_TC_FPJSON_MINJSONINSTANCETYPES
_TC_FPJSON_MINJSONINSTANCETYPES:
	.long	_VMT_FPJSON_TJSONDATA
	.long	_VMT_FPJSON_TJSONINTEGERNUMBER
	.long	_VMT_FPJSON_TJSONINT64NUMBER
	.long	_VMT_FPJSON_TJSONFLOATNUMBER
	.long	_VMT_FPJSON_TJSONSTRING
	.long	_VMT_FPJSON_TJSONBOOLEAN
	.long	_VMT_FPJSON_TJSONNULL
	.long	_VMT_FPJSON_TJSONARRAY
	.long	_VMT_FPJSON_TJSONOBJECT

.const_data
	.align 2
.globl	_$FPJSON$_Ld2
_$FPJSON$_Ld2:
	.short	0,1
	.long	0,-1,3
.reference _$FPJSON$_Ld1
.globl	_$FPJSON$_Ld1
_$FPJSON$_Ld1:
.reference _$FPJSON$_Ld2
	.ascii	"Nil\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld4
_$FPJSON$_Ld4:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld3
.globl	_$FPJSON$_Ld3
_$FPJSON$_Ld3:
.reference _$FPJSON$_Ld4
	.ascii	"\\\\\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld6
_$FPJSON$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld5
.globl	_$FPJSON$_Ld5
_$FPJSON$_Ld5:
.reference _$FPJSON$_Ld6
	.ascii	"\\/\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld8
_$FPJSON$_Ld8:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld7
.globl	_$FPJSON$_Ld7
_$FPJSON$_Ld7:
.reference _$FPJSON$_Ld8
	.ascii	"\\\"\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld10
_$FPJSON$_Ld10:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld9
.globl	_$FPJSON$_Ld9
_$FPJSON$_Ld9:
.reference _$FPJSON$_Ld10
	.ascii	"\\b\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld12
_$FPJSON$_Ld12:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld11
.globl	_$FPJSON$_Ld11
_$FPJSON$_Ld11:
.reference _$FPJSON$_Ld12
	.ascii	"\\t\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld14
_$FPJSON$_Ld14:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld13
.globl	_$FPJSON$_Ld13
_$FPJSON$_Ld13:
.reference _$FPJSON$_Ld14
	.ascii	"\\n\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld16
_$FPJSON$_Ld16:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld15
.globl	_$FPJSON$_Ld15
_$FPJSON$_Ld15:
.reference _$FPJSON$_Ld16
	.ascii	"\\f\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld18
_$FPJSON$_Ld18:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld17
.globl	_$FPJSON$_Ld17
_$FPJSON$_Ld17:
.reference _$FPJSON$_Ld18
	.ascii	"\\r\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld20
_$FPJSON$_Ld20:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld19
.globl	_$FPJSON$_Ld19
_$FPJSON$_Ld19:
.reference _$FPJSON$_Ld20
	.ascii	"\010\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld22
_$FPJSON$_Ld22:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld21
.globl	_$FPJSON$_Ld21
_$FPJSON$_Ld21:
.reference _$FPJSON$_Ld22
	.ascii	"\011\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld24
_$FPJSON$_Ld24:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld23
.globl	_$FPJSON$_Ld23
_$FPJSON$_Ld23:
.reference _$FPJSON$_Ld24
	.ascii	"\012\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld26
_$FPJSON$_Ld26:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld25
.globl	_$FPJSON$_Ld25
_$FPJSON$_Ld25:
.reference _$FPJSON$_Ld26
	.ascii	"\014\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld28
_$FPJSON$_Ld28:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld27
.globl	_$FPJSON$_Ld27
_$FPJSON$_Ld27:
.reference _$FPJSON$_Ld28
	.ascii	"\015\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld30
_$FPJSON$_Ld30:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld29
.globl	_$FPJSON$_Ld29
_$FPJSON$_Ld29:
.reference _$FPJSON$_Ld30
	.ascii	"$\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld32
_$FPJSON$_Ld32:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld31
.globl	_$FPJSON$_Ld31
_$FPJSON$_Ld31:
.reference _$FPJSON$_Ld32
	.ascii	"\"\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld34
_$FPJSON$_Ld34:
	.short	0,1
	.long	0,-1,4
.reference _$FPJSON$_Ld33
.globl	_$FPJSON$_Ld33
_$FPJSON$_Ld33:
.reference _$FPJSON$_Ld34
	.ascii	"true\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld36
_$FPJSON$_Ld36:
	.short	0,1
	.long	0,-1,5
.reference _$FPJSON$_Ld35
.globl	_$FPJSON$_Ld35
_$FPJSON$_Ld35:
.reference _$FPJSON$_Ld36
	.ascii	"false\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld38
_$FPJSON$_Ld38:
	.short	0,1
	.long	0,-1,4
.reference _$FPJSON$_Ld37
.globl	_$FPJSON$_Ld37
_$FPJSON$_Ld37:
.reference _$FPJSON$_Ld38
	.ascii	"null\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld40
_$FPJSON$_Ld40:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld39
.globl	_$FPJSON$_Ld39
_$FPJSON$_Ld39:
.reference _$FPJSON$_Ld40
	.ascii	"[\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld42
_$FPJSON$_Ld42:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld41
.globl	_$FPJSON$_Ld41
_$FPJSON$_Ld41:
.reference _$FPJSON$_Ld42
	.ascii	", \000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld44
_$FPJSON$_Ld44:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld43
.globl	_$FPJSON$_Ld43
_$FPJSON$_Ld43:
.reference _$FPJSON$_Ld44
	.ascii	"]\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld46
_$FPJSON$_Ld46:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld45
.globl	_$FPJSON$_Ld45
_$FPJSON$_Ld45:
.reference _$FPJSON$_Ld46
	.ascii	",\000"

.const
	.align 2
.globl	_$FPJSON$_Ld47
_$FPJSON$_Ld47:
	.byte	16,39,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$FPJSON$_Ld49
_$FPJSON$_Ld49:
	.short	0,1
	.long	0,-1,5
.reference _$FPJSON$_Ld48
.globl	_$FPJSON$_Ld48
_$FPJSON$_Ld48:
.reference _$FPJSON$_Ld49
	.ascii	"Array\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld51
_$FPJSON$_Ld51:
	.short	0,1
	.long	0,-1,4
.reference _$FPJSON$_Ld50
.globl	_$FPJSON$_Ld50
_$FPJSON$_Ld50:
.reference _$FPJSON$_Ld51
	.ascii	"\" : \000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld53
_$FPJSON$_Ld53:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld52
.globl	_$FPJSON$_Ld52
_$FPJSON$_Ld52:
.reference _$FPJSON$_Ld53
	.ascii	"{ \000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld55
_$FPJSON$_Ld55:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld54
.globl	_$FPJSON$_Ld54
_$FPJSON$_Ld54:
.reference _$FPJSON$_Ld55
	.ascii	" }\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld57
_$FPJSON$_Ld57:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld56
.globl	_$FPJSON$_Ld56
_$FPJSON$_Ld56:
.reference _$FPJSON$_Ld57
	.ascii	"{}\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld59
_$FPJSON$_Ld59:
	.short	0,1
	.long	0,-1,6
.reference _$FPJSON$_Ld58
.globl	_$FPJSON$_Ld58
_$FPJSON$_Ld58:
.reference _$FPJSON$_Ld59
	.ascii	"Object\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld61
_$FPJSON$_Ld61:
	.short	0,1
	.long	0,-1,3
.reference _$FPJSON$_Ld60
.globl	_$FPJSON$_Ld60
_$FPJSON$_Ld60:
.reference _$FPJSON$_Ld61
	.ascii	" : \000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld63
_$FPJSON$_Ld63:
	.short	0,1
	.long	0,-1,2
.reference _$FPJSON$_Ld62
.globl	_$FPJSON$_Ld62
_$FPJSON$_Ld62:
.reference _$FPJSON$_Ld63
	.ascii	"{\012\000"

.const_data
	.align 2
.globl	_$FPJSON$_Ld65
_$FPJSON$_Ld65:
	.short	0,1
	.long	0,-1,1
.reference _$FPJSON$_Ld64
.globl	_$FPJSON$_Ld64
_$FPJSON$_Ld64:
.reference _$FPJSON$_Ld65
	.ascii	"}\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$array_of_const
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
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

L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_uchar_to_unicodestr$stub:
.indirect_symbol fpc_uchar_to_unicodestr
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

Lfpc_unicodestr_concat$stub:
.indirect_symbol fpc_unicodestr_concat
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub:
.indirect_symbol _TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN$stub:
.indirect_symbol _FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER$stub:
.indirect_symbol _FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER$stub:
.indirect_symbol _FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER$stub:
.indirect_symbol _FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING$stub:
.indirect_symbol _FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING
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

L_FPJSON_TJSONARRAY_$__CREATE$array_of_const$$TJSONARRAY$stub:
.indirect_symbol _FPJSON_TJSONARRAY_$__CREATE$array_of_const$$TJSONARRAY
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

L_FPJSON_TJSONOBJECT_$__CREATE$array_of_const$$TJSONOBJECT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__CREATE$array_of_const$$TJSONOBJECT
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

L_FPJSON_GETJSON$TSTREAM$BOOLEAN$$TJSONDATA$stub:
.indirect_symbol _FPJSON_GETJSON$TSTREAM$BOOLEAN$$TJSONDATA
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

L_FPJSON_TJSONDATA_$__DOERROR$ANSISTRING$stub:
.indirect_symbol _FPJSON_TJSONDATA_$__DOERROR$ANSISTRING
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

L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING
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

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONENUMERATOR_$__CREATE$TJSONDATA$$TJSONENUMERATOR$stub:
.indirect_symbol _FPJSON_TJSONENUMERATOR_$__CREATE$TJSONDATA$$TJSONENUMERATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$ANSISTRING$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$ANSISTRING$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN
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

L_SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINT64$ANSISTRING$$INT64$stub:
.indirect_symbol _SYSUTILS_STRTOINT64$ANSISTRING$$INT64
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

L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING
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

L_FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPJSON_STRINGTOJSONSTRING$ANSISTRING$$ANSISTRING
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

L_SYSTEM_assign$BOOLEAN$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$BOOLEAN$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN$stub:
.indirect_symbol _FPJSON_TJSONNULL_$__CONVERTERROR$BOOLEAN
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

Lfpc_ansistr_float$stub:
.indirect_symbol fpc_ansistr_float
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

L_SYSTEM_assign$DOUBLE$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$DOUBLE$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$DOUBLE$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$LONGINT$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$LONGINT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$LONGINT$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$INT64$$VARIANT$stub:
.indirect_symbol _SYSTEM_assign$INT64$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_assign$VARIANT$$INT64$stub:
.indirect_symbol _SYSTEM_assign$VARIANT$$INT64
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

L_FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN$stub:
.indirect_symbol _FPJSON_CREATEJSON$BOOLEAN$$TJSONBOOLEAN
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

L_FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER$stub:
.indirect_symbol _FPJSON_CREATEJSON$LONGINT$$TJSONINTEGERNUMBER
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

L_FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING$stub:
.indirect_symbol _FPJSON_CREATEJSON$ANSISTRING$$TJSONSTRING
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

L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONDATA_$__DOFINDPATH$ANSISTRING$ANSISTRING$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN$stub:
.indirect_symbol _FPJSON_TJSONARRAY_$__CONVERTERROR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING$stub:
.indirect_symbol _FPJSON_INDENTSTRING$TFORMATOPTIONS$LONGINT$$ANSISTRING
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

L_CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__ADD$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__SETITEM$LONGINT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__CREATE$BOOLEAN$$TFPOBJECTLIST
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

L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRPAS$PCHAR$$ANSISTRING
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONARRAY_$__CREATE$$TJSONARRAY$stub:
.indirect_symbol _FPJSON_TJSONARRAY_$__CREATE$$TJSONARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_VARRECTOJSON$TVARREC$ANSISTRING$$TJSONDATA$stub:
.indirect_symbol _FPJSON_VARRECTOJSON$TVARREC$ANSISTRING$$TJSONDATA
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

L_CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONARRAYENUMERATOR_$__CREATE$TJSONARRAY$$TJSONARRAYENUMERATOR$stub:
.indirect_symbol _FPJSON_TJSONARRAYENUMERATOR_$__CREATE$TJSONARRAY$$TJSONARRAYENUMERATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONARRAY_$__INDEXOF$TJSONDATA$$LONGINT
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

L_CONTNRS_TFPOBJECTLIST_$__EXCHANGE$LONGINT$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__EXCHANGE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONARRAY_$__INSERT$LONGINT$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__INSERT$LONGINT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__MOVE$LONGINT$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__MOVE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__GETELEMENTS$ANSISTRING$$TJSONDATA
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

L_CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__FIND$SHORTSTRING$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__NAMEOFINDEX$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__SETELEMENTS$ANSISTRING$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__ADD$SHORTSTRING$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__SETITEM$LONGINT$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__SETITEM$LONGINT$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__CONVERTERROR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__GETITEM$LONGINT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__CREATE$BOOLEAN$$TFPHASHOBJECTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT
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

L_FPJSON_TJSONOBJECTENUMERATOR_$__CREATE$TJSONOBJECT$$TJSONOBJECTENUMERATOR$stub:
.indirect_symbol _FPJSON_TJSONOBJECTENUMERATOR_$__CREATE$TJSONOBJECT$$TJSONOBJECTENUMERATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__INDEXOF$TOBJECT$$LONGINT
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

L_CONTNRS_TFPHASHOBJECTLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__REMOVE$TOBJECT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT$stub:
.indirect_symbol _CONTNRS_TFPHASHOBJECTLIST_$__EXTRACT$TOBJECT$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__EXTRACT$LONGINT$$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__EXTRACT$LONGINT$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__FIND$ANSISTRING$TJSONTYPE$$TJSONDATA
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
.globl	_INIT_FPJSON_TJSONTYPE
_INIT_FPJSON_TJSONTYPE:
	.byte	3,9
	.ascii	"TJSONtype"
	.byte	5
	.long	0,6,0
	.byte	9
	.ascii	"jtUnknown"
	.byte	8
	.ascii	"jtNumber"
	.byte	8
	.ascii	"jtString"
	.byte	9
	.ascii	"jtBoolean"
	.byte	6
	.ascii	"jtNull"
	.byte	7
	.ascii	"jtArray"
	.byte	8
	.ascii	"jtObject"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONTYPE
_RTTI_FPJSON_TJSONTYPE:
	.byte	3,9
	.ascii	"TJSONtype"
	.byte	5
	.long	0,6,0
	.byte	9
	.ascii	"jtUnknown"
	.byte	8
	.ascii	"jtNumber"
	.byte	8
	.ascii	"jtString"
	.byte	9
	.ascii	"jtBoolean"
	.byte	6
	.ascii	"jtNull"
	.byte	7
	.ascii	"jtArray"
	.byte	8
	.ascii	"jtObject"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONTYPE_s2o
_RTTI_FPJSON_TJSONTYPE_s2o:
	.long	7,5
	.long	_RTTI_FPJSON_TJSONTYPE+69
	.long	3
	.long	_RTTI_FPJSON_TJSONTYPE+52
	.long	4
	.long	_RTTI_FPJSON_TJSONTYPE+62
	.long	1
	.long	_RTTI_FPJSON_TJSONTYPE+34
	.long	6
	.long	_RTTI_FPJSON_TJSONTYPE+77
	.long	2
	.long	_RTTI_FPJSON_TJSONTYPE+43
	.long	0
	.long	_RTTI_FPJSON_TJSONTYPE+24

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONTYPE_o2s
_RTTI_FPJSON_TJSONTYPE_o2s:
	.long	0
	.long	_RTTI_FPJSON_TJSONTYPE+24
	.long	_RTTI_FPJSON_TJSONTYPE+34
	.long	_RTTI_FPJSON_TJSONTYPE+43
	.long	_RTTI_FPJSON_TJSONTYPE+52
	.long	_RTTI_FPJSON_TJSONTYPE+62
	.long	_RTTI_FPJSON_TJSONTYPE+69
	.long	_RTTI_FPJSON_TJSONTYPE+77

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONINSTANCETYPE
_INIT_FPJSON_TJSONINSTANCETYPE:
	.byte	3,17
	.ascii	"TJSONInstanceType"
	.byte	5
	.long	0,8,0
	.byte	10
	.ascii	"jitUnknown"
	.byte	16
	.ascii	"jitNumberInteger"
	.byte	14
	.ascii	"jitNumberInt64"
	.byte	14
	.ascii	"jitNumberFloat"
	.byte	9
	.ascii	"jitString"
	.byte	10
	.ascii	"jitBoolean"
	.byte	7
	.ascii	"jitNull"
	.byte	8
	.ascii	"jitArray"
	.byte	9
	.ascii	"jitObject"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINSTANCETYPE
_RTTI_FPJSON_TJSONINSTANCETYPE:
	.byte	3,17
	.ascii	"TJSONInstanceType"
	.byte	5
	.long	0,8,0
	.byte	10
	.ascii	"jitUnknown"
	.byte	16
	.ascii	"jitNumberInteger"
	.byte	14
	.ascii	"jitNumberInt64"
	.byte	14
	.ascii	"jitNumberFloat"
	.byte	9
	.ascii	"jitString"
	.byte	10
	.ascii	"jitBoolean"
	.byte	7
	.ascii	"jitNull"
	.byte	8
	.ascii	"jitArray"
	.byte	9
	.ascii	"jitObject"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINSTANCETYPE_s2o
_RTTI_FPJSON_TJSONINSTANCETYPE_s2o:
	.long	9,7
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+119
	.long	5
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+100
	.long	6
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+111
	.long	3
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+75
	.long	2
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+60
	.long	1
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+43
	.long	8
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+128
	.long	4
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+90
	.long	0
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+32

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINSTANCETYPE_o2s
_RTTI_FPJSON_TJSONINSTANCETYPE_o2s:
	.long	0
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+32
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+43
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+60
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+75
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+90
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+100
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+111
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+119
	.long	_RTTI_FPJSON_TJSONINSTANCETYPE+128

.const_data
	.align 2
.globl	_INIT_FPJSON_PJSONCHARTYPE
_INIT_FPJSON_PJSONCHARTYPE:
	.byte	0
	.ascii	"\015PJSONCharType"

.const_data
	.align 2
.globl	_RTTI_FPJSON_PJSONCHARTYPE
_RTTI_FPJSON_PJSONCHARTYPE:
	.byte	0
	.ascii	"\015PJSONCharType"

.const_data
	.align 2
.globl	_INIT_FPJSON_TFORMATOPTION
_INIT_FPJSON_TFORMATOPTION:
	.byte	3,13
	.ascii	"TFormatOption"
	.byte	5
	.long	0,3,0
	.byte	17
	.ascii	"foSingleLineArray"
	.byte	18
	.ascii	"foSingleLineObject"
	.byte	19
	.ascii	"foDoNotQuoteMembers"
	.byte	12
	.ascii	"foUseTabchar"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TFORMATOPTION
_RTTI_FPJSON_TFORMATOPTION:
	.byte	3,13
	.ascii	"TFormatOption"
	.byte	5
	.long	0,3,0
	.byte	17
	.ascii	"foSingleLineArray"
	.byte	18
	.ascii	"foSingleLineObject"
	.byte	19
	.ascii	"foDoNotQuoteMembers"
	.byte	12
	.ascii	"foUseTabchar"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TFORMATOPTION_s2o
_RTTI_FPJSON_TFORMATOPTION_s2o:
	.long	4,2
	.long	_RTTI_FPJSON_TFORMATOPTION+65
	.long	0
	.long	_RTTI_FPJSON_TFORMATOPTION+28
	.long	1
	.long	_RTTI_FPJSON_TFORMATOPTION+46
	.long	3
	.long	_RTTI_FPJSON_TFORMATOPTION+85

.const_data
	.align 2
.globl	_RTTI_FPJSON_TFORMATOPTION_o2s
_RTTI_FPJSON_TFORMATOPTION_o2s:
	.long	0
	.long	_RTTI_FPJSON_TFORMATOPTION+28
	.long	_RTTI_FPJSON_TFORMATOPTION+46
	.long	_RTTI_FPJSON_TFORMATOPTION+65
	.long	_RTTI_FPJSON_TFORMATOPTION+85

.const_data
	.align 2
.globl	_INIT_FPJSON_TFORMATOPTIONS
_INIT_FPJSON_TFORMATOPTIONS:
	.byte	5,14
	.ascii	"TFormatOptions"
	.byte	5
	.long	_INIT_FPJSON_TFORMATOPTION

.const_data
	.align 2
.globl	_RTTI_FPJSON_TFORMATOPTIONS
_RTTI_FPJSON_TFORMATOPTIONS:
	.byte	5,14
	.ascii	"TFormatOptions"
	.byte	5
	.long	_RTTI_FPJSON_TFORMATOPTION

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF543
_INIT_FPJSON_DEF543:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPJSON$_Ld67
_$FPJSON$_Ld67:
	.short	0
	.long	_$FPJSON$_Ld68
	.align 2
.globl	_$FPJSON$_Ld68
_$FPJSON$_Ld68:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONDATA
_INIT_FPJSON_TJSONDATA:
	.byte	15,9
	.ascii	"TJSONData"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONDATA
_RTTI_FPJSON_TJSONDATA:
	.byte	15,9
	.ascii	"TJSONData"
	.long	_VMT_FPJSON_TJSONDATA
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONENUM
_INIT_FPJSON_TJSONENUM:
	.byte	13,9
	.ascii	"TJSONEnum"
	.long	12,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONENUM
_RTTI_FPJSON_TJSONENUM:
	.byte	13,9
	.ascii	"TJSONEnum"
	.long	12,3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_FPJSON_TJSONDATA
	.long	8

.const_data
	.align 2
.globl	_$FPJSON$_Ld70
_$FPJSON$_Ld70:
	.short	0
	.long	_$FPJSON$_Ld71
	.align 2
.globl	_$FPJSON$_Ld71
_$FPJSON$_Ld71:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TBASEJSONENUMERATOR
_INIT_FPJSON_TBASEJSONENUMERATOR:
	.byte	15,19
	.ascii	"TBaseJSONEnumerator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TBASEJSONENUMERATOR
_RTTI_FPJSON_TBASEJSONENUMERATOR:
	.byte	15,19
	.ascii	"TBaseJSONEnumerator"
	.long	_VMT_FPJSON_TBASEJSONENUMERATOR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONDATACLASS
_INIT_FPJSON_TJSONDATACLASS:
	.byte	0
	.ascii	"\016TJSONDataClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONDATACLASS
_RTTI_FPJSON_TJSONDATACLASS:
	.byte	0
	.ascii	"\016TJSONDataClass"

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONNUMBERTYPE
_INIT_FPJSON_TJSONNUMBERTYPE:
	.byte	3,15
	.ascii	"TJSONNumberType"
	.byte	5
	.long	0,2,0
	.byte	7
	.ascii	"ntFloat"
	.byte	9
	.ascii	"ntInteger"
	.byte	7
	.ascii	"ntInt64"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONNUMBERTYPE
_RTTI_FPJSON_TJSONNUMBERTYPE:
	.byte	3,15
	.ascii	"TJSONNumberType"
	.byte	5
	.long	0,2,0
	.byte	7
	.ascii	"ntFloat"
	.byte	9
	.ascii	"ntInteger"
	.byte	7
	.ascii	"ntInt64"
	.byte	6
	.ascii	"fpjson"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONNUMBERTYPE_s2o
_RTTI_FPJSON_TJSONNUMBERTYPE_s2o:
	.long	3,0
	.long	_RTTI_FPJSON_TJSONNUMBERTYPE+30
	.long	2
	.long	_RTTI_FPJSON_TJSONNUMBERTYPE+48
	.long	1
	.long	_RTTI_FPJSON_TJSONNUMBERTYPE+38

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONNUMBERTYPE_o2s
_RTTI_FPJSON_TJSONNUMBERTYPE_o2s:
	.long	0
	.long	_RTTI_FPJSON_TJSONNUMBERTYPE+30
	.long	_RTTI_FPJSON_TJSONNUMBERTYPE+38
	.long	_RTTI_FPJSON_TJSONNUMBERTYPE+48

.const_data
	.align 2
.globl	_$FPJSON$_Ld73
_$FPJSON$_Ld73:
	.short	0
	.long	_$FPJSON$_Ld74
	.align 2
.globl	_$FPJSON$_Ld74
_$FPJSON$_Ld74:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONNUMBER
_INIT_FPJSON_TJSONNUMBER:
	.byte	15,11
	.ascii	"TJSONNumber"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONNUMBER
_RTTI_FPJSON_TJSONNUMBER:
	.byte	15,11
	.ascii	"TJSONNumber"
	.long	_VMT_FPJSON_TJSONNUMBER
	.long	_RTTI_FPJSON_TJSONDATA
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF638
_INIT_FPJSON_DEF638:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPJSON$_Ld76
_$FPJSON$_Ld76:
	.short	0
	.long	_$FPJSON$_Ld77
	.align 2
.globl	_$FPJSON$_Ld77
_$FPJSON$_Ld77:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONFLOATNUMBER
_INIT_FPJSON_TJSONFLOATNUMBER:
	.byte	15,16
	.ascii	"TJSONFloatNumber"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONFLOATNUMBER
_RTTI_FPJSON_TJSONFLOATNUMBER:
	.byte	15,16
	.ascii	"TJSONFloatNumber"
	.long	_VMT_FPJSON_TJSONFLOATNUMBER
	.long	_RTTI_FPJSON_TJSONNUMBER
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONFLOATNUMBERCLASS
_INIT_FPJSON_TJSONFLOATNUMBERCLASS:
	.byte	0
	.ascii	"\025TJSONFloatNumberClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONFLOATNUMBERCLASS
_RTTI_FPJSON_TJSONFLOATNUMBERCLASS:
	.byte	0
	.ascii	"\025TJSONFloatNumberClass"

.const_data
	.align 2
.globl	_$FPJSON$_Ld79
_$FPJSON$_Ld79:
	.short	0
	.long	_$FPJSON$_Ld80
	.align 2
.globl	_$FPJSON$_Ld80
_$FPJSON$_Ld80:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONINTEGERNUMBER
_INIT_FPJSON_TJSONINTEGERNUMBER:
	.byte	15,18
	.ascii	"TJSONIntegerNumber"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINTEGERNUMBER
_RTTI_FPJSON_TJSONINTEGERNUMBER:
	.byte	15,18
	.ascii	"TJSONIntegerNumber"
	.long	_VMT_FPJSON_TJSONINTEGERNUMBER
	.long	_RTTI_FPJSON_TJSONNUMBER
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONINTEGERNUMBERCLASS
_INIT_FPJSON_TJSONINTEGERNUMBERCLASS:
	.byte	0
	.ascii	"\027TJSONIntegerNumberClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINTEGERNUMBERCLASS
_RTTI_FPJSON_TJSONINTEGERNUMBERCLASS:
	.byte	0
	.ascii	"\027TJSONIntegerNumberClass"

.const_data
	.align 2
.globl	_$FPJSON$_Ld82
_$FPJSON$_Ld82:
	.short	0
	.long	_$FPJSON$_Ld83
	.align 2
.globl	_$FPJSON$_Ld83
_$FPJSON$_Ld83:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONINT64NUMBER
_INIT_FPJSON_TJSONINT64NUMBER:
	.byte	15,16
	.ascii	"TJSONInt64Number"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINT64NUMBER
_RTTI_FPJSON_TJSONINT64NUMBER:
	.byte	15,16
	.ascii	"TJSONInt64Number"
	.long	_VMT_FPJSON_TJSONINT64NUMBER
	.long	_RTTI_FPJSON_TJSONNUMBER
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONINT64NUMBERCLASS
_INIT_FPJSON_TJSONINT64NUMBERCLASS:
	.byte	0
	.ascii	"\025TJSONInt64NumberClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONINT64NUMBERCLASS
_RTTI_FPJSON_TJSONINT64NUMBERCLASS:
	.byte	0
	.ascii	"\025TJSONInt64NumberClass"

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF561
_INIT_FPJSON_DEF561:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF569
_INIT_FPJSON_DEF569:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPJSON$_Ld85
_$FPJSON$_Ld85:
	.short	0
	.long	_$FPJSON$_Ld86
	.align 2
.globl	_$FPJSON$_Ld86
_$FPJSON$_Ld86:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONSTRING
_INIT_FPJSON_TJSONSTRING:
	.byte	15,11
	.ascii	"TJSONString"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONSTRING
_RTTI_FPJSON_TJSONSTRING:
	.byte	15,11
	.ascii	"TJSONString"
	.long	_VMT_FPJSON_TJSONSTRING
	.long	_RTTI_FPJSON_TJSONDATA
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONSTRINGCLASS
_INIT_FPJSON_TJSONSTRINGCLASS:
	.byte	0
	.ascii	"\020TJSONStringClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONSTRINGCLASS
_RTTI_FPJSON_TJSONSTRINGCLASS:
	.byte	0
	.ascii	"\020TJSONStringClass"

.const_data
	.align 2
.globl	_$FPJSON$_Ld88
_$FPJSON$_Ld88:
	.short	0
	.long	_$FPJSON$_Ld89
	.align 2
.globl	_$FPJSON$_Ld89
_$FPJSON$_Ld89:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONBOOLEAN
_INIT_FPJSON_TJSONBOOLEAN:
	.byte	15,12
	.ascii	"TJSONBoolean"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONBOOLEAN
_RTTI_FPJSON_TJSONBOOLEAN:
	.byte	15,12
	.ascii	"TJSONBoolean"
	.long	_VMT_FPJSON_TJSONBOOLEAN
	.long	_RTTI_FPJSON_TJSONDATA
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONBOOLEANCLASS
_INIT_FPJSON_TJSONBOOLEANCLASS:
	.byte	0
	.ascii	"\021TJSONBooleanClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONBOOLEANCLASS
_RTTI_FPJSON_TJSONBOOLEANCLASS:
	.byte	0
	.ascii	"\021TJSONBooleanClass"

.const_data
	.align 2
.globl	_$FPJSON$_Ld91
_$FPJSON$_Ld91:
	.short	0
	.long	_$FPJSON$_Ld92
	.align 2
.globl	_$FPJSON$_Ld92
_$FPJSON$_Ld92:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONNULL
_INIT_FPJSON_TJSONNULL:
	.byte	15,9
	.ascii	"TJSONNull"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONNULL
_RTTI_FPJSON_TJSONNULL:
	.byte	15,9
	.ascii	"TJSONNull"
	.long	_VMT_FPJSON_TJSONNULL
	.long	_RTTI_FPJSON_TJSONDATA
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONNULLCLASS
_INIT_FPJSON_TJSONNULLCLASS:
	.byte	0
	.ascii	"\016TJSONNullClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONNULLCLASS
_RTTI_FPJSON_TJSONNULLCLASS:
	.byte	0
	.ascii	"\016TJSONNullClass"

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONARRAYITERATOR
_INIT_FPJSON_TJSONARRAYITERATOR:
	.byte	6,18
	.ascii	"TJSONArrayIterator"
	.byte	0,3,8,4
	.ascii	"Item"
	.ascii	"\011TJSONData"
	.byte	8,4
	.ascii	"Data"
	.ascii	"\007TObject"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_FPJSON_TJSONDATA
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONARRAYITERATOR
_RTTI_FPJSON_TJSONARRAYITERATOR:
	.byte	6,18
	.ascii	"TJSONArrayIterator"
	.byte	0,3,8,4
	.ascii	"Item"
	.ascii	"\011TJSONData"
	.byte	8,4
	.ascii	"Data"
	.ascii	"\007TObject"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_FPJSON_TJSONDATA
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF808
_INIT_FPJSON_DEF808:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF854
_INIT_FPJSON_DEF854:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF855
_INIT_FPJSON_DEF855:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF902
_INIT_FPJSON_DEF902:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF903
_INIT_FPJSON_DEF903:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF904
_INIT_FPJSON_DEF904:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF905
_INIT_FPJSON_DEF905:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF906
_INIT_FPJSON_DEF906:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPJSON$_Ld94
_$FPJSON$_Ld94:
	.short	0
	.long	_$FPJSON$_Ld95
	.align 2
.globl	_$FPJSON$_Ld95
_$FPJSON$_Ld95:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONOBJECT
_INIT_FPJSON_TJSONOBJECT:
	.byte	15,11
	.ascii	"TJSONObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONOBJECT
_RTTI_FPJSON_TJSONOBJECT:
	.byte	15,11
	.ascii	"TJSONObject"
	.long	_VMT_FPJSON_TJSONOBJECT
	.long	_RTTI_FPJSON_TJSONDATA
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld97
_$FPJSON$_Ld97:
	.short	0
	.long	_$FPJSON$_Ld98
	.align 2
.globl	_$FPJSON$_Ld98
_$FPJSON$_Ld98:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONARRAY
_INIT_FPJSON_TJSONARRAY:
	.byte	15,10
	.ascii	"TJSONArray"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONARRAY
_RTTI_FPJSON_TJSONARRAY:
	.byte	15,10
	.ascii	"TJSONArray"
	.long	_VMT_FPJSON_TJSONARRAY
	.long	_RTTI_FPJSON_TJSONDATA
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONARRAYCLASS
_INIT_FPJSON_TJSONARRAYCLASS:
	.byte	0
	.ascii	"\017TJSONArrayClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONARRAYCLASS
_RTTI_FPJSON_TJSONARRAYCLASS:
	.byte	0
	.ascii	"\017TJSONArrayClass"

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONOBJECTITERATOR
_INIT_FPJSON_TJSONOBJECTITERATOR:
	.byte	6,19
	.ascii	"TJSONObjectIterator"
	.byte	0,4,2,5
	.ascii	"AName"
	.ascii	"\012AnsiString"
	.byte	8,4
	.ascii	"Item"
	.ascii	"\011TJSONData"
	.byte	8,4
	.ascii	"Data"
	.ascii	"\007TObject"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_FPJSON_TJSONDATA
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONOBJECTITERATOR
_RTTI_FPJSON_TJSONOBJECTITERATOR:
	.byte	6,19
	.ascii	"TJSONObjectIterator"
	.byte	0,4,2,5
	.ascii	"AName"
	.ascii	"\012AnsiString"
	.byte	8,4
	.ascii	"Item"
	.ascii	"\011TJSONData"
	.byte	8,4
	.ascii	"Data"
	.ascii	"\007TObject"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_FPJSON_TJSONDATA
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONOBJECTCLASS
_INIT_FPJSON_TJSONOBJECTCLASS:
	.byte	0
	.ascii	"\020TJSONObjectClass"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONOBJECTCLASS
_RTTI_FPJSON_TJSONOBJECTCLASS:
	.byte	0
	.ascii	"\020TJSONObjectClass"

.const_data
	.align 2
.globl	_$FPJSON$_Ld100
_$FPJSON$_Ld100:
	.short	0
	.long	_$FPJSON$_Ld101
	.align 2
.globl	_$FPJSON$_Ld101
_$FPJSON$_Ld101:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_EJSON
_INIT_FPJSON_EJSON:
	.byte	15,5
	.ascii	"EJSON"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPJSON_EJSON
_RTTI_FPJSON_EJSON:
	.byte	15,5
	.ascii	"EJSON"
	.long	_VMT_FPJSON_EJSON
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_TJSONPARSERHANDLER
_INIT_FPJSON_TJSONPARSERHANDLER:
	.byte	23,18
	.ascii	"TJSONParserHandler"

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONPARSERHANDLER
_RTTI_FPJSON_TJSONPARSERHANDLER:
	.byte	23,18
	.ascii	"TJSONParserHandler"

.const_data
	.align 2
.globl	_$FPJSON$_Ld103
_$FPJSON$_Ld103:
	.short	0
	.long	_$FPJSON$_Ld104
	.align 2
.globl	_$FPJSON$_Ld104
_$FPJSON$_Ld104:
	.short	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONENUMERATOR
_RTTI_FPJSON_TJSONENUMERATOR:
	.byte	15,15
	.ascii	"TJSONEnumerator"
	.long	_VMT_FPJSON_TJSONENUMERATOR
	.long	_RTTI_FPJSON_TBASEJSONENUMERATOR
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld106
_$FPJSON$_Ld106:
	.short	0
	.long	_$FPJSON$_Ld107
	.align 2
.globl	_$FPJSON$_Ld107
_$FPJSON$_Ld107:
	.short	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONARRAYENUMERATOR
_RTTI_FPJSON_TJSONARRAYENUMERATOR:
	.byte	15,20
	.ascii	"TJSONArrayEnumerator"
	.long	_VMT_FPJSON_TJSONARRAYENUMERATOR
	.long	_RTTI_FPJSON_TBASEJSONENUMERATOR
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_$FPJSON$_Ld109
_$FPJSON$_Ld109:
	.short	0
	.long	_$FPJSON$_Ld110
	.align 2
.globl	_$FPJSON$_Ld110
_$FPJSON$_Ld110:
	.short	0

.const_data
	.align 2
.globl	_RTTI_FPJSON_TJSONOBJECTENUMERATOR
_RTTI_FPJSON_TJSONOBJECTENUMERATOR:
	.byte	15,21
	.ascii	"TJSONObjectEnumerator"
	.long	_VMT_FPJSON_TJSONOBJECTENUMERATOR
	.long	_RTTI_FPJSON_TBASEJSONENUMERATOR
	.short	0
	.byte	6
	.ascii	"fpjson"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF750
_INIT_FPJSON_DEF750:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPJSON_DEF755
_INIT_FPJSON_DEF755:
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
L_$FPJSON$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPJSON_MINJSONINSTANCETYPES$non_lazy_ptr:
.indirect_symbol _TC_FPJSON_MINJSONINSTANCETYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRWRONGINSTANCECLASS$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRWRONGINSTANCECLASS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONDATA$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPJSON_DEFAULTJSONINSTANCETYPES$non_lazy_ptr:
.indirect_symbol _TC_FPJSON_DEFAULTJSONINSTANCETYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld27$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld29$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RTTI_FPJSON_TJSONTYPE$non_lazy_ptr:
.indirect_symbol _RTTI_FPJSON_TJSONTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPJSON_JPH$non_lazy_ptr:
.indirect_symbol _U_FPJSON_JPH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRNOPARSERHANDLER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRNOPARSERHANDLER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_EJSON$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_EJSON
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONENUMERATOR$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONENUMERATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRPATHELEMENTNOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRPATHELEMENTNOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRINVALIDFLOAT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRINVALIDFLOAT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ECONVERTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld31$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld33$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld35$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTCONVERTFROMNULL$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTCONVERTFROMNULL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTCONVERTTONULL$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTCONVERTTONULL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld37$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONARRAY$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTCONVERTFROMARRAY$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTCONVERTFROMARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTCONVERTTOARRAY$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTCONVERTTOARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld39$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld41$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld43$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld45$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPOBJECTLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPOBJECTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRPOINTERNOTNIL$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRPOINTERNOTNIL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld47$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRNOTJSONDATA$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRNOTJSONDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRUNKNOWNTYPEINCONSTRUCTOR$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRUNKNOWNTYPEINCONSTRUCTOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld48$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld48
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONARRAYENUMERATOR$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONARRAYENUMERATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTADDARRAYTWICE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTADDARRAYTWICE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTADDOBJECTTWICE$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTADDOBJECTTWICE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRNONEXISTENTELEMENT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRNONEXISTENTELEMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTSETNOTISNULL$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTSETNOTISNULL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTCONVERTFROMOBJECT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTCONVERTFROMOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRCANNOTCONVERTTOOBJECT$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRCANNOTCONVERTTOOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld50$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld50
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld52$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld54$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld54
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld56$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld56
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPHASHOBJECTLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPHASHOBJECTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRODDNUMBER$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRODDNUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_FPJSON_SERRNAMEMUSTBESTRING$non_lazy_ptr:
.indirect_symbol _RESSTR_FPJSON_SERRNAMEMUSTBESTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld58$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld58
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONOBJECTENUMERATOR$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONOBJECTENUMERATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld60$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld60
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld62$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld62
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPJSON$_Ld64$non_lazy_ptr:
.indirect_symbol _$FPJSON$_Ld64
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_FPJSON_START
_RESSTR_FPJSON_START:
	.long	_$FPJSON$_Ld111
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTCONVERTFROMNULL
_RESSTR_FPJSON_SERRCANNOTCONVERTFROMNULL:
	.long	_$FPJSON$_Ld115
	.long	_$FPJSON$_Ld113
	.long	_$FPJSON$_Ld113
	.long	164499877

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTCONVERTTONULL
_RESSTR_FPJSON_SERRCANNOTCONVERTTONULL:
	.long	_$FPJSON$_Ld119
	.long	_$FPJSON$_Ld117
	.long	_$FPJSON$_Ld117
	.long	13335717

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTCONVERTFROMARRAY
_RESSTR_FPJSON_SERRCANNOTCONVERTFROMARRAY:
	.long	_$FPJSON$_Ld123
	.long	_$FPJSON$_Ld121
	.long	_$FPJSON$_Ld121
	.long	4610117

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTCONVERTTOARRAY
_RESSTR_FPJSON_SERRCANNOTCONVERTTOARRAY:
	.long	_$FPJSON$_Ld127
	.long	_$FPJSON$_Ld125
	.long	_$FPJSON$_Ld125
	.long	3197141

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTCONVERTFROMOBJECT
_RESSTR_FPJSON_SERRCANNOTCONVERTFROMOBJECT:
	.long	_$FPJSON$_Ld131
	.long	_$FPJSON$_Ld129
	.long	_$FPJSON$_Ld129
	.long	34561957

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTCONVERTTOOBJECT
_RESSTR_FPJSON_SERRCANNOTCONVERTTOOBJECT:
	.long	_$FPJSON$_Ld135
	.long	_$FPJSON$_Ld133
	.long	_$FPJSON$_Ld133
	.long	56776357

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRINVALIDFLOAT
_RESSTR_FPJSON_SERRINVALIDFLOAT:
	.long	_$FPJSON$_Ld139
	.long	_$FPJSON$_Ld137
	.long	_$FPJSON$_Ld137
	.long	158801795

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRINVALIDINTEGER
_RESSTR_FPJSON_SERRINVALIDINTEGER:
	.long	_$FPJSON$_Ld143
	.long	_$FPJSON$_Ld141
	.long	_$FPJSON$_Ld141
	.long	158801795

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTSETNOTISNULL
_RESSTR_FPJSON_SERRCANNOTSETNOTISNULL:
	.long	_$FPJSON$_Ld147
	.long	_$FPJSON$_Ld145
	.long	_$FPJSON$_Ld145
	.long	16809925

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTADDARRAYTWICE
_RESSTR_FPJSON_SERRCANNOTADDARRAYTWICE:
	.long	_$FPJSON$_Ld151
	.long	_$FPJSON$_Ld149
	.long	_$FPJSON$_Ld149
	.long	263172452

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRCANNOTADDOBJECTTWICE
_RESSTR_FPJSON_SERRCANNOTADDOBJECTTWICE:
	.long	_$FPJSON$_Ld155
	.long	_$FPJSON$_Ld153
	.long	_$FPJSON$_Ld153
	.long	119724340

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRUNKNOWNTYPEINCONSTRUCTOR
_RESSTR_FPJSON_SERRUNKNOWNTYPEINCONSTRUCTOR:
	.long	_$FPJSON$_Ld159
	.long	_$FPJSON$_Ld157
	.long	_$FPJSON$_Ld157
	.long	44747796

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRNOTJSONDATA
_RESSTR_FPJSON_SERRNOTJSONDATA:
	.long	_$FPJSON$_Ld163
	.long	_$FPJSON$_Ld161
	.long	_$FPJSON$_Ld161
	.long	127458243

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRPOINTERNOTNIL
_RESSTR_FPJSON_SERRPOINTERNOTNIL:
	.long	_$FPJSON$_Ld167
	.long	_$FPJSON$_Ld165
	.long	_$FPJSON$_Ld165
	.long	126211171

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRODDNUMBER
_RESSTR_FPJSON_SERRODDNUMBER:
	.long	_$FPJSON$_Ld171
	.long	_$FPJSON$_Ld169
	.long	_$FPJSON$_Ld169
	.long	84018003

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRNAMEMUSTBESTRING
_RESSTR_FPJSON_SERRNAMEMUSTBESTRING:
	.long	_$FPJSON$_Ld175
	.long	_$FPJSON$_Ld173
	.long	_$FPJSON$_Ld173
	.long	203101655

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRNONEXISTENTELEMENT
_RESSTR_FPJSON_SERRNONEXISTENTELEMENT:
	.long	_$FPJSON$_Ld179
	.long	_$FPJSON$_Ld177
	.long	_$FPJSON$_Ld177
	.long	119296690

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRPATHELEMENTNOTFOUND
_RESSTR_FPJSON_SERRPATHELEMENTNOTFOUND:
	.long	_$FPJSON$_Ld183
	.long	_$FPJSON$_Ld181
	.long	_$FPJSON$_Ld181
	.long	132398958

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRWRONGINSTANCECLASS
_RESSTR_FPJSON_SERRWRONGINSTANCECLASS:
	.long	_$FPJSON$_Ld187
	.long	_$FPJSON$_Ld185
	.long	_$FPJSON$_Ld185
	.long	133699358

.data
	.align 2
.globl	_RESSTR_FPJSON_SERRNOPARSERHANDLER
_RESSTR_FPJSON_SERRNOPARSERHANDLER:
	.long	_$FPJSON$_Ld191
	.long	_$FPJSON$_Ld189
	.long	_$FPJSON$_Ld189
	.long	152621460

.data
	.align 2
.globl	_RESSTR_FPJSON_END
_RESSTR_FPJSON_END:
	.long	_RESSTR_FPJSON_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

