# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__CREATE$$TFPREADERXPM
_FPREADXPM_TFPREADERXPM_$__CREATE$$TFPREADERXPM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj6:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,52(%edx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj33
Lj34:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj33
Lj32:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj33:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj38
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj40:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj37:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__DESTROY
_FPREADXPM_TFPREADERXPM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj47
	jmp	Lj48
Lj47:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj48:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj59
	jmp	Lj58
Lj59:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj58
Lj57:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj58:
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__HEXTOCOLOR$ANSISTRING$$TFPCOLOR
_FPREADXPM_TFPREADERXPM_$__HEXTOCOLOR$ANSISTRING$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj68
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj79
	movl	-4(%ecx),%ecx
Lj79:
	movl	$1431655766,%eax
	imull	%ecx
	movl	%ecx,%eax
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD$stub
	movw	%ax,-16(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD$stub
	movw	%ax,-14(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	incl	%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD$stub
	movw	%ax,-12(%ebp)
	movw	$65535,-10(%ebp)
Lj68:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj69
	call	LFPC_RERAISE$stub
Lj69:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD
_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj67
Lj67:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj124
	movw	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj131
	movl	-4(%eax),%eax
Lj131:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj132
	jmp	Lj133
Lj132:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj67(%ebx),%edx
	movl	L_$FPREADXPM$_Ld1$non_lazy_ptr-Lj67(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj67(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj133:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj147
	movl	-4(%eax),%eax
Lj147:
	movl	%eax,%esi
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj145
	decl	-20(%ebp)
	.align 2
Lj146:
	incl	-20(%ebp)
	movzwl	-10(%ebp),%eax
	movl	%eax,%edi
	shll	$4,%edi
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%dl
	movl	-8(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CHARCONV$CHAR$$LONGWORD$stub
	orl	%eax,%edi
	movw	%di,%ax
	movw	%ax,-10(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj146
Lj145:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj155
	decl	%eax
	je	Lj156
	decl	%eax
	je	Lj157
	decl	%eax
	je	Lj158
	jmp	Lj155
Lj156:
	movzwl	-10(%ebp),%eax
	shll	$4,%eax
	movzwl	-10(%ebp),%edx
	orl	%edx,%eax
	movzwl	-10(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	-10(%ebp),%edx
	shll	$12,%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
	jmp	Lj154
Lj157:
	movzwl	-10(%ebp),%eax
	shll	$8,%eax
	movzwl	-10(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
	jmp	Lj154
Lj158:
	movzwl	-10(%ebp),%eax
	shll	$12,%eax
	movzwl	-10(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
	jmp	Lj154
Lj155:
Lj154:
Lj124:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj125
	call	LFPC_RERAISE$stub
Lj125:
	movw	-10(%ebp),%ax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CHARCONV$CHAR$$LONGWORD
_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CHARCONV$CHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj65
Lj65:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	-4(%ebp),%al
	cmpb	$65,%al
	jae	Lj167
	jmp	Lj166
Lj167:
	movb	-4(%ebp),%al
	cmpb	$70,%al
	jbe	Lj165
	jmp	Lj166
Lj165:
	movzbl	-4(%ebp),%eax
	subl	$65,%eax
	addl	$10,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj170
Lj166:
	movb	-4(%ebp),%al
	cmpb	$48,%al
	jae	Lj173
	jmp	Lj172
Lj173:
	movb	-4(%ebp),%al
	cmpb	$57,%al
	jbe	Lj171
	jmp	Lj172
Lj171:
	movzbl	-4(%ebp),%eax
	subl	$48,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj176
Lj172:
	movl	$0,(%esp)
	movzbl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$2,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj65(%ebx),%edx
	movl	L_$FPREADXPM$_Ld3$non_lazy_ptr-Lj65(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj65(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj176:
Lj170:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__NAMETOCOLOR$ANSISTRING$$TFPCOLOR
_FPREADXPM_TFPREADERXPM_$__NAMETOCOLOR$ANSISTRING$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj188
Lj188:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj189
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld5$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj198
	jmp	Lj199
Lj198:
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj206
Lj199:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld7$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj207
	jmp	Lj208
Lj207:
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj215
Lj208:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld9$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj216
	jmp	Lj217
Lj216:
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj224
Lj217:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld11$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj225
	jmp	Lj226
Lj225:
	movl	L_TC_FPIMAGE_COLBLUE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLBLUE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj233
Lj226:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld13$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj234
	jmp	Lj235
Lj234:
	movl	L_TC_FPIMAGE_COLGREEN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLGREEN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj242
Lj235:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld15$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj243
	jmp	Lj244
Lj243:
	movl	L_TC_FPIMAGE_COLCYAN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLCYAN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj251
Lj244:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld17$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj252
	jmp	Lj253
Lj252:
	movl	L_TC_FPIMAGE_COLRED$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLRED$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj260
Lj253:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld19$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj261
	jmp	Lj262
Lj261:
	movl	L_TC_FPIMAGE_COLMAGENTA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLMAGENTA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj269
Lj262:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld21$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj270
	jmp	Lj271
Lj270:
	movl	L_TC_FPIMAGE_COLYELLOW$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLYELLOW$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj278
Lj271:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld23$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj279
	jmp	Lj280
Lj279:
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj287
Lj280:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld25$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj288
	jmp	Lj289
Lj288:
	movl	L_TC_FPIMAGE_COLGRAY$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLGRAY$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj296
Lj289:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld27$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj297
	jmp	Lj298
Lj297:
	movl	L_TC_FPIMAGE_COLLTGRAY$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLLTGRAY$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj305
Lj298:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld29$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj306
	jmp	Lj307
Lj306:
	movl	L_TC_FPIMAGE_COLDKBLUE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLDKBLUE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj314
Lj307:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld31$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj315
	jmp	Lj316
Lj315:
	movl	L_TC_FPIMAGE_COLDKGREEN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLDKGREEN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj323
Lj316:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld33$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj324
	jmp	Lj325
Lj324:
	movl	L_TC_FPIMAGE_COLDKCYAN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLDKCYAN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj332
Lj325:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld35$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj333
	jmp	Lj334
Lj333:
	movl	L_TC_FPIMAGE_COLDKRED$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLDKRED$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj341
Lj334:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld37$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj342
	jmp	Lj343
Lj342:
	movl	L_TC_FPIMAGE_COLDKMAGENTA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLDKMAGENTA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj350
Lj343:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld39$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj351
	jmp	Lj352
Lj351:
	movl	L_TC_FPIMAGE_COLDKYELLOW$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLDKYELLOW$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj359
Lj352:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld41$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj360
	jmp	Lj361
Lj360:
	movl	L_TC_FPIMAGE_COLMAROON$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLMAROON$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj368
Lj361:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld43$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj369
	jmp	Lj370
Lj369:
	movl	L_TC_FPIMAGE_COLLTGREEN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLLTGREEN$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj377
Lj370:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld45$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj378
	jmp	Lj379
Lj378:
	movl	L_TC_FPIMAGE_COLOLIVE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLOLIVE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj386
Lj379:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld47$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj387
	jmp	Lj388
Lj387:
	movl	L_TC_FPIMAGE_COLNAVY$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLNAVY$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj395
Lj388:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld49$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj396
	jmp	Lj397
Lj396:
	movl	L_TC_FPIMAGE_COLPURPLE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLPURPLE$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj404
Lj397:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld51$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj405
	jmp	Lj406
Lj405:
	movl	L_TC_FPIMAGE_COLTEAL$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLTEAL$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj413
Lj406:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld53$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj414
	jmp	Lj415
Lj414:
	movl	L_TC_FPIMAGE_COLSILVER$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLSILVER$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj422
Lj415:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld55$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj423
	jmp	Lj424
Lj423:
	movl	L_TC_FPIMAGE_COLLIME$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLLIME$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj431
Lj424:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld57$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj432
	jmp	Lj433
Lj432:
	movl	L_TC_FPIMAGE_COLFUCHSIA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLFUCHSIA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj440
Lj433:
	movl	-4(%ebp),%eax
	movl	L_$FPREADXPM$_Ld59$non_lazy_ptr-Lj188(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj441
	jmp	Lj442
Lj441:
	movl	L_TC_FPIMAGE_COLAQUA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLAQUA$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj449
Lj442:
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj188(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj188(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
Lj449:
Lj440:
Lj431:
Lj422:
Lj413:
Lj404:
Lj395:
Lj386:
Lj377:
Lj368:
Lj359:
Lj350:
Lj341:
Lj332:
Lj323:
Lj314:
Lj305:
Lj296:
Lj287:
Lj278:
Lj269:
Lj260:
Lj251:
Lj242:
Lj233:
Lj224:
Lj215:
Lj206:
Lj189:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj190
	call	LFPC_RERAISE$stub
Lj190:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__DIMINISHWHITESPACE$ANSISTRING$$ANSISTRING
_FPREADXPM_TFPREADERXPM_$__DIMINISHWHITESPACE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj453
Lj453:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj454
	movb	$1,-17(%ebp)
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj464
	movl	-4(%eax),%eax
Lj464:
	movl	%eax,%esi
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj462
	decl	-16(%ebp)
	.align 2
Lj463:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	movl	L_$FPREADXPM$_Ld61$non_lazy_ptr-Lj453(%ebx),%edx
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj465
	jmp	Lj466
Lj465:
	cmpb	$0,-17(%ebp)
	jne	Lj471
	jmp	Lj472
Lj471:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	L_$FPREADXPM$_Ld63$non_lazy_ptr-Lj453(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj472:
	movb	$0,-17(%ebp)
	jmp	Lj481
Lj466:
	movb	$1,-17(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-64(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-64(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj481:
	cmpl	-16(%ebp),%esi
	jg	Lj463
Lj462:
Lj454:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj455
	call	LFPC_RERAISE$stub
Lj455:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADXPM_TFPREADERXPM_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj495
Lj495:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj510
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj495(%edi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj519
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jl	Lj528
	incl	-24(%ebp)
	.align 2
Lj529:
	decl	-24(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-108(%ebp),%edx
	movb	$34,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj544
	jmp	Lj545
Lj544:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	movl	%eax,(%esp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-112(%ebp),%edx
	movl	L_$FPREADXPM$_Ld65$non_lazy_ptr-Lj495(%edi),%eax
	call	L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,%ebx
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-112(%ebp),%eax
	movl	-20(%ebp),%edx
	incl	%edx
	movl	%ebx,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-108(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	jmp	Lj576
Lj545:
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj576:
	cmpl	$0,-24(%ebp)
	jg	Lj529
Lj528:
	movl	%ebp,%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_PARSEFIRSTLINE$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	%ebp,%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READPALETTE$stub
	movl	%ebp,%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READDATA$stub
Lj519:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj520
	decl	%eax
	testl	%eax,%eax
	je	Lj521
Lj521:
	call	LFPC_RERAISE$stub
Lj520:
Lj510:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj511
	call	LFPC_RERAISE$stub
Lj511:
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READDATA
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj595
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj599
	decl	-8(%ebp)
	.align 2
Lj600:
	incl	-8(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	-16(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READLINE$ANSISTRING$LONGINT$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj600
Lj599:
Lj595:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj596
	call	LFPC_RERAISE$stub
Lj596:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READLINE$ANSISTRING$LONGINT
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READLINE$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj613
	movl	$1,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	24(%eax),%edi
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%edi
	jl	Lj619
	decl	-20(%ebp)
	.align 2
Lj620:
	incl	-20(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%eax
	addl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	52(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-12(%edx),%edx
	movl	52(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj630
	decl	-16(%ebp)
	.align 2
Lj631:
	incl	-16(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	52(%eax),%eax
	leal	-72(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	-12(%esi),%esi
	movl	52(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-72(%ebp),%edx
	movl	-28(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj634
	jmp	Lj635
Lj634:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	decl	%edx
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj630
Lj635:
	cmpl	-16(%ebp),%ebx
	jg	Lj631
Lj630:
	cmpl	-20(%ebp),%edi
	jg	Lj620
Lj619:
Lj613:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj614
	call	LFPC_RERAISE$stub
Lj614:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READPALETTE
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj660
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%edx),%edx
	movl	52(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%ebx
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj670
	decl	-8(%ebp)
	.align 2
Lj671:
	incl	-8(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	leal	-52(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	-16(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDTOPALETTE$ANSISTRING$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj671
Lj670:
Lj660:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj661
	call	LFPC_RERAISE$stub
Lj661:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDTOPALETTE$ANSISTRING
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDTOPALETTE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	call	Lj503
Lj503:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
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
	jne	Lj682
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	leal	-72(%ebp),%ecx
	call	L_FPREADXPM_TFPREADERXPM_$__DIMINISHWHITESPACE$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	leal	-68(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$99,%al
	je	Lj713
	jmp	Lj714
Lj713:
	leal	-4(%ebp),%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	jmp	Lj721
Lj714:
	movl	-4(%ebp),%edx
	movl	L_$FPREADXPM$_Ld67$non_lazy_ptr-Lj503(%ebx),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj728
	jmp	Lj729
Lj728:
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-4(%ebp)
	jmp	Lj732
Lj729:
	movl	-24(%ebp),%ecx
	addl	$2,%ecx
	leal	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj732:
Lj721:
	movl	-4(%ebp),%edx
	movb	$32,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj745
	jmp	Lj746
Lj745:
	movl	-24(%ebp),%edx
	leal	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj746:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj753
	jmp	Lj754
Lj753:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj503(%ebx),%edx
	movl	L_$FPREADXPM$_Ld69$non_lazy_ptr-Lj503(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj503(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj754:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	je	Lj761
	jmp	Lj762
Lj761:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPREADXPM_TFPREADERXPM_$__HEXTOCOLOR$ANSISTRING$$TFPCOLOR$stub
	movl	%eax,-84(%ebp)
	movl	%edx,-80(%ebp)
	movl	-84(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-80(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj777
Lj762:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPREADXPM_TFPREADERXPM_$__NAMETOCOLOR$ANSISTRING$$TFPCOLOR$stub
	movl	%eax,-84(%ebp)
	movl	%edx,-80(%ebp)
	movl	-84(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-80(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj777:
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDPALETTE$ANSISTRING$TFPCOLOR$stub
Lj682:
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
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj683
	call	LFPC_RERAISE$stub
Lj683:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDPALETTE$ANSISTRING$TFPCOLOR
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDPALETTE$ANSISTRING$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-12(%ecx),%ecx
	movl	52(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	24(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_PARSEFIRSTLINE
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_PARSEFIRSTLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj499
Lj499:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj808
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	leal	-52(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	-16(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,-8(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	-52(%ebp),%ecx
	call	L_FPREADXPM_TFPREADERXPM_$__DIMINISHWHITESPACE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	24(%eax),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	28(%eax),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	32(%eax),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	36(%eax),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj855
	jmp	Lj856
Lj855:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	40(%eax),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	44(%eax),%ecx
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%esi
	movl	-8(%ebp),%eax
	movl	L_$FPREADXPM$_Ld71$non_lazy_ptr-Lj499(%ebx),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	seteb	48(%esi)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj877
	jmp	Lj876
Lj877:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movb	48(%eax),%al
	testb	%al,%al
	je	Lj875
	jmp	Lj876
Lj875:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj499(%ebx),%edx
	movl	L_$FPREADXPM$_Ld73$non_lazy_ptr-Lj499(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj499(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj876:
Lj856:
Lj808:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj809
	call	LFPC_RERAISE$stub
Lj809:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT
_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
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
	jne	Lj890
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$32,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj899
	jmp	Lj900
Lj899:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj907
Lj900:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj907:
Lj890:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj891
	call	LFPC_RERAISE$stub
Lj891:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADXPM_TFPREADERXPM_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADXPM_TFPREADERXPM_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%esi,-152(%ebp)
	call	Lj927
Lj927:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-108(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj928
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj933
	leal	-18(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-24(%ebp)
	movb	-24(%ebp),%al
	movb	%al,-19(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$9,%eax
	jne	Lj947
	jmp	Lj948
Lj947:
	movb	$0,-9(%ebp)
	jmp	Lj951
Lj948:
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	leal	-19(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-108(%ebp),%eax
	movl	L_$FPREADXPM$_Ld75$non_lazy_ptr-Lj927(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
Lj951:
Lj933:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj935
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj963
	movb	$0,-9(%ebp)
Lj963:
	call	LFPC_POPADDRSTACK$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj962
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj962:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj935
Lj935:
Lj928:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj929
	call	LFPC_RERAISE$stub
Lj929:
	movb	-9(%ebp),%al
	movl	-156(%ebp),%ebx
	movl	-152(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADXPM
_INIT$_FPREADXPM:
.reference __FPREADXPM_init
.globl	__FPREADXPM_init
__FPREADXPM_init:
.reference _INIT$_FPREADXPM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADXPM_TFPREADERXPM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADXPM$_Ld77$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADXPM$_Ld79$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld81
_$FPREADXPM$_Ld81:
	.byte	12
	.ascii	"TFPReaderXPM"

.const_data
	.align 2
.globl	_VMT_FPREADXPM_TFPREADERXPM
_VMT_FPREADXPM_TFPREADERXPM:
	.long	56,-56
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADXPM$_Ld81
	.long	0,0
	.long	_$FPREADXPM$_Ld82
	.long	_RTTI_FPREADXPM_TFPREADERXPM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADXPM_TFPREADERXPM_$__DESTROY
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPREADXPM_TFPREADERXPM_$__CREATE$$TFPREADERXPM
	.long	_FPREADXPM_TFPREADERXPM_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADXPM_TFPREADERXPM_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADXPM
_THREADVARLIST_FPREADXPM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld2
_$FPREADXPM$_Ld2:
	.short	0,1
	.long	0,-1,29
.reference _$FPREADXPM$_Ld1
.globl	_$FPREADXPM$_Ld1
_$FPREADXPM$_Ld1:
.reference _$FPREADXPM$_Ld2
	.ascii	"Too many bytes for color (%s)\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld4
_$FPREADXPM$_Ld4:
	.short	0,1
	.long	0,-1,42
.reference _$FPREADXPM$_Ld3
.globl	_$FPREADXPM$_Ld3
_$FPREADXPM$_Ld3:
.reference _$FPREADXPM$_Ld4
	.ascii	"Wrong character (%s) in hexadecimal number\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld6
_$FPREADXPM$_Ld6:
	.short	0,1
	.long	0,-1,11
.reference _$FPREADXPM$_Ld5
.globl	_$FPREADXPM$_Ld5
_$FPREADXPM$_Ld5:
.reference _$FPREADXPM$_Ld6
	.ascii	"transparent\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld8
_$FPREADXPM$_Ld8:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld7
.globl	_$FPREADXPM$_Ld7
_$FPREADXPM$_Ld7:
.reference _$FPREADXPM$_Ld8
	.ascii	"none\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld10
_$FPREADXPM$_Ld10:
	.short	0,1
	.long	0,-1,5
.reference _$FPREADXPM$_Ld9
.globl	_$FPREADXPM$_Ld9
_$FPREADXPM$_Ld9:
.reference _$FPREADXPM$_Ld10
	.ascii	"black\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld12
_$FPREADXPM$_Ld12:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld11
.globl	_$FPREADXPM$_Ld11
_$FPREADXPM$_Ld11:
.reference _$FPREADXPM$_Ld12
	.ascii	"blue\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld14
_$FPREADXPM$_Ld14:
	.short	0,1
	.long	0,-1,5
.reference _$FPREADXPM$_Ld13
.globl	_$FPREADXPM$_Ld13
_$FPREADXPM$_Ld13:
.reference _$FPREADXPM$_Ld14
	.ascii	"green\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld16
_$FPREADXPM$_Ld16:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld15
.globl	_$FPREADXPM$_Ld15
_$FPREADXPM$_Ld15:
.reference _$FPREADXPM$_Ld16
	.ascii	"cyan\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld18
_$FPREADXPM$_Ld18:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADXPM$_Ld17
.globl	_$FPREADXPM$_Ld17
_$FPREADXPM$_Ld17:
.reference _$FPREADXPM$_Ld18
	.ascii	"red\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld20
_$FPREADXPM$_Ld20:
	.short	0,1
	.long	0,-1,7
.reference _$FPREADXPM$_Ld19
.globl	_$FPREADXPM$_Ld19
_$FPREADXPM$_Ld19:
.reference _$FPREADXPM$_Ld20
	.ascii	"magenta\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld22
_$FPREADXPM$_Ld22:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld21
.globl	_$FPREADXPM$_Ld21
_$FPREADXPM$_Ld21:
.reference _$FPREADXPM$_Ld22
	.ascii	"yellow\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld24
_$FPREADXPM$_Ld24:
	.short	0,1
	.long	0,-1,5
.reference _$FPREADXPM$_Ld23
.globl	_$FPREADXPM$_Ld23
_$FPREADXPM$_Ld23:
.reference _$FPREADXPM$_Ld24
	.ascii	"white\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld26
_$FPREADXPM$_Ld26:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld25
.globl	_$FPREADXPM$_Ld25
_$FPREADXPM$_Ld25:
.reference _$FPREADXPM$_Ld26
	.ascii	"gray\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld28
_$FPREADXPM$_Ld28:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld27
.globl	_$FPREADXPM$_Ld27
_$FPREADXPM$_Ld27:
.reference _$FPREADXPM$_Ld28
	.ascii	"ltgray\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld30
_$FPREADXPM$_Ld30:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld29
.globl	_$FPREADXPM$_Ld29
_$FPREADXPM$_Ld29:
.reference _$FPREADXPM$_Ld30
	.ascii	"dkblue\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld32
_$FPREADXPM$_Ld32:
	.short	0,1
	.long	0,-1,7
.reference _$FPREADXPM$_Ld31
.globl	_$FPREADXPM$_Ld31
_$FPREADXPM$_Ld31:
.reference _$FPREADXPM$_Ld32
	.ascii	"dkgreen\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld34
_$FPREADXPM$_Ld34:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld33
.globl	_$FPREADXPM$_Ld33
_$FPREADXPM$_Ld33:
.reference _$FPREADXPM$_Ld34
	.ascii	"dkcyan\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld36
_$FPREADXPM$_Ld36:
	.short	0,1
	.long	0,-1,5
.reference _$FPREADXPM$_Ld35
.globl	_$FPREADXPM$_Ld35
_$FPREADXPM$_Ld35:
.reference _$FPREADXPM$_Ld36
	.ascii	"dkred\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld38
_$FPREADXPM$_Ld38:
	.short	0,1
	.long	0,-1,9
.reference _$FPREADXPM$_Ld37
.globl	_$FPREADXPM$_Ld37
_$FPREADXPM$_Ld37:
.reference _$FPREADXPM$_Ld38
	.ascii	"dkmagenta\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld40
_$FPREADXPM$_Ld40:
	.short	0,1
	.long	0,-1,8
.reference _$FPREADXPM$_Ld39
.globl	_$FPREADXPM$_Ld39
_$FPREADXPM$_Ld39:
.reference _$FPREADXPM$_Ld40
	.ascii	"dkyellow\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld42
_$FPREADXPM$_Ld42:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld41
.globl	_$FPREADXPM$_Ld41
_$FPREADXPM$_Ld41:
.reference _$FPREADXPM$_Ld42
	.ascii	"maroon\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld44
_$FPREADXPM$_Ld44:
	.short	0,1
	.long	0,-1,7
.reference _$FPREADXPM$_Ld43
.globl	_$FPREADXPM$_Ld43
_$FPREADXPM$_Ld43:
.reference _$FPREADXPM$_Ld44
	.ascii	"ltgreen\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld46
_$FPREADXPM$_Ld46:
	.short	0,1
	.long	0,-1,5
.reference _$FPREADXPM$_Ld45
.globl	_$FPREADXPM$_Ld45
_$FPREADXPM$_Ld45:
.reference _$FPREADXPM$_Ld46
	.ascii	"olive\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld48
_$FPREADXPM$_Ld48:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld47
.globl	_$FPREADXPM$_Ld47
_$FPREADXPM$_Ld47:
.reference _$FPREADXPM$_Ld48
	.ascii	"navy\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld50
_$FPREADXPM$_Ld50:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld49
.globl	_$FPREADXPM$_Ld49
_$FPREADXPM$_Ld49:
.reference _$FPREADXPM$_Ld50
	.ascii	"purple\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld52
_$FPREADXPM$_Ld52:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld51
.globl	_$FPREADXPM$_Ld51
_$FPREADXPM$_Ld51:
.reference _$FPREADXPM$_Ld52
	.ascii	"teal\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld54
_$FPREADXPM$_Ld54:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld53
.globl	_$FPREADXPM$_Ld53
_$FPREADXPM$_Ld53:
.reference _$FPREADXPM$_Ld54
	.ascii	"silver\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld56
_$FPREADXPM$_Ld56:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld55
.globl	_$FPREADXPM$_Ld55
_$FPREADXPM$_Ld55:
.reference _$FPREADXPM$_Ld56
	.ascii	"lime\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld58
_$FPREADXPM$_Ld58:
	.short	0,1
	.long	0,-1,7
.reference _$FPREADXPM$_Ld57
.globl	_$FPREADXPM$_Ld57
_$FPREADXPM$_Ld57:
.reference _$FPREADXPM$_Ld58
	.ascii	"fuchsia\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld60
_$FPREADXPM$_Ld60:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld59
.globl	_$FPREADXPM$_Ld59
_$FPREADXPM$_Ld59:
.reference _$FPREADXPM$_Ld60
	.ascii	"aqua\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld62
_$FPREADXPM$_Ld62:
	.short	0,1
	.long	0,-1,4
.reference _$FPREADXPM$_Ld61
.globl	_$FPREADXPM$_Ld61
_$FPREADXPM$_Ld61:
.reference _$FPREADXPM$_Ld62
	.ascii	" \010\012\015\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld64
_$FPREADXPM$_Ld64:
	.short	0,1
	.long	0,-1,1
.reference _$FPREADXPM$_Ld63
.globl	_$FPREADXPM$_Ld63
_$FPREADXPM$_Ld63:
.reference _$FPREADXPM$_Ld64
	.ascii	" \000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld66
_$FPREADXPM$_Ld66:
	.short	0,1
	.long	0,-1,1
.reference _$FPREADXPM$_Ld65
.globl	_$FPREADXPM$_Ld65
_$FPREADXPM$_Ld65:
.reference _$FPREADXPM$_Ld66
	.ascii	"\"\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld68
_$FPREADXPM$_Ld68:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADXPM$_Ld67
.globl	_$FPREADXPM$_Ld67
_$FPREADXPM$_Ld67:
.reference _$FPREADXPM$_Ld68
	.ascii	" c \000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld70
_$FPREADXPM$_Ld70:
	.short	0,1
	.long	0,-1,29
.reference _$FPREADXPM$_Ld69
.globl	_$FPREADXPM$_Ld69
_$FPREADXPM$_Ld69:
.reference _$FPREADXPM$_Ld70
	.ascii	"Only c-key is used for colors\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld72
_$FPREADXPM$_Ld72:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADXPM$_Ld71
.globl	_$FPREADXPM$_Ld71
_$FPREADXPM$_Ld71:
.reference _$FPREADXPM$_Ld72
	.ascii	"XPMEXT\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld74
_$FPREADXPM$_Ld74:
	.short	0,1
	.long	0,-1,25
.reference _$FPREADXPM$_Ld73
.globl	_$FPREADXPM$_Ld73
_$FPREADXPM$_Ld73:
.reference _$FPREADXPM$_Ld74
	.ascii	"Wrong word for XPMEXT tag\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld76
_$FPREADXPM$_Ld76:
	.short	0,1
	.long	0,-1,9
.reference _$FPREADXPM$_Ld75
.globl	_$FPREADXPM$_Ld75
_$FPREADXPM$_Ld75:
.reference _$FPREADXPM$_Ld76
	.ascii	"/* XPM */\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld78
_$FPREADXPM$_Ld78:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADXPM$_Ld77
.globl	_$FPREADXPM$_Ld77
_$FPREADXPM$_Ld77:
.reference _$FPREADXPM$_Ld78
	.ascii	"xpm\000"

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld80
_$FPREADXPM$_Ld80:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADXPM$_Ld79
.globl	_$FPREADXPM$_Ld79
_$FPREADXPM$_Ld79:
.reference _$FPREADXPM$_Ld80
	.ascii	"XPM Format\000"
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

L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
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

L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
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

L_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CONVERT$ANSISTRING$$WORD
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

L_FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CHARCONV$CHAR$$LONGWORD$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_HEXTOCOLOR$ANSISTRING$$TFPCOLOR_CHARCONV$CHAR$$LONGWORD
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

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

L_SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_PARSEFIRSTLINE$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_PARSEFIRSTLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READPALETTE$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READDATA$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READLINE$ANSISTRING$LONGINT$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_READLINE$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT
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

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDTOPALETTE$ANSISTRING$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDTOPALETTE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$__DIMINISHWHITESPACE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$__DIMINISHWHITESPACE$ANSISTRING$$ANSISTRING
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

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
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

L_FPREADXPM_TFPREADERXPM_$__HEXTOCOLOR$ANSISTRING$$TFPCOLOR$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$__HEXTOCOLOR$ANSISTRING$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$__NAMETOCOLOR$ANSISTRING$$TFPCOLOR$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$__NAMETOCOLOR$ANSISTRING$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDPALETTE$ANSISTRING$TFPCOLOR$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_ADDPALETTE$ANSISTRING$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT$stub:
.indirect_symbol _FPREADXPM_TFPREADERXPM_$_INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE_TAKEINTEGER$ANSISTRING$LONGINT
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

L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
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

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1
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
.globl	_INIT_FPREADXPM_DEF27
_INIT_FPREADXPM_DEF27:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPREADXPM$_Ld82
_$FPREADXPM$_Ld82:
	.short	0
	.long	_$FPREADXPM$_Ld83
	.align 2
.globl	_$FPREADXPM$_Ld83
_$FPREADXPM$_Ld83:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADXPM_TFPREADERXPM
_INIT_FPREADXPM_TFPREADERXPM:
	.byte	15,12
	.ascii	"TFPReaderXPM"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADXPM_TFPREADERXPM
_RTTI_FPREADXPM_TFPREADERXPM:
	.byte	15,12
	.ascii	"TFPReaderXPM"
	.long	_VMT_FPREADXPM_TFPREADERXPM
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadXPM"
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
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLTRANSPARENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLBLACK$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLBLUE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLGREEN$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLGREEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLCYAN$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLCYAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLRED$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLRED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLMAGENTA$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLMAGENTA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLYELLOW$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLYELLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLWHITE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLWHITE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLGRAY$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLGRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld27$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLLTGRAY$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLLTGRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld29$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKBLUE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKBLUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld31$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKGREEN$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKGREEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld33$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKCYAN$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKCYAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld35$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKRED$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKRED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld37$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKMAGENTA$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKMAGENTA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld39$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKYELLOW$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKYELLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld41$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLMAROON$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLMAROON
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld43$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLLTGREEN$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLLTGREEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld45$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLOLIVE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLOLIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld47$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLNAVY$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLNAVY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld49$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLPURPLE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLPURPLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld51$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLTEAL$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLTEAL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld53$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLSILVER$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLSILVER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld55$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLLIME$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLLIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld57$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLFUCHSIA$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLFUCHSIA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld59$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLAQUA$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLAQUA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld61$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld63$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld65$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld67$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld69$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld71$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld73$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld75$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADXPM_TFPREADERXPM$non_lazy_ptr:
.indirect_symbol _VMT_FPREADXPM_TFPREADERXPM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld77$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADXPM$_Ld79$non_lazy_ptr:
.indirect_symbol _$FPREADXPM$_Ld79
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

