# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_XMLWRITE_TTEXTSTREAM_$__CREATE$TEXT$$TTEXTSTREAM
_XMLWRITE_TTEXTSTREAM_$__CREATE$TEXT$$TTEXTSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj6:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj29
Lj30:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj28
	jmp	Lj29
Lj28:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj29:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj34
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj36:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj34:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj33:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TTEXTSTREAM_$__WRITE$formal$LONGINT$$LONGINT
_XMLWRITE_TTEXTSTREAM_$__WRITE$formal$LONGINT$$LONGINT:
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
	jne	Lj43
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj46
	jmp	Lj47
Lj46:
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%esi
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	L_SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-20(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
Lj47:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj43:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj44
	call	LFPC_RERAISE$stub
Lj44:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__CREATE$TSTREAM$$TXMLWRITER
_XMLWRITE_TXMLWRITER_$__CREATE$TSTREAM$$TXMLWRITER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	call	Lj73
Lj73:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj74
	jmp	Lj75
Lj74:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj75:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj80
	jmp	Lj81
Lj80:
	jmp	Lj72
Lj81:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj84
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj88
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	$544,%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movl	$512,28(%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj105
	jmp	Lj106
Lj105:
	movl	L_$XMLWRITE$_Ld1$non_lazy_ptr-Lj73(%ebx),%esi
	movl	-12(%ebp),%edi
	leal	32(%edi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%esi,32(%edi)
	jmp	Lj109
Lj106:
	movl	L_$XMLWRITE$_Ld1$non_lazy_ptr-Lj73(%ebx),%esi
	movl	-12(%ebp),%edi
	leal	32(%edi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%esi,32(%edi)
Lj109:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movl	$100,%edx
	call	Lfpc_unicodestr_setlength$stub
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	Lfpc_unicodestr_unique$stub
	movl	-12(%ebp),%edx
	movl	32(%edx),%edx
	movw	(%edx),%dx
	movw	%dx,(%eax)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj122
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj122:
	cmpl	$1,%eax
	jg	Lj120
	jmp	Lj121
Lj120:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	Lfpc_unicodestr_unique$stub
	movl	-12(%ebp),%edx
	movl	32(%edx),%edx
	movw	2(%edx),%dx
	movw	%dx,2(%eax)
	jmp	Lj127
Lj121:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	Lfpc_unicodestr_unique$stub
	movw	$32,2(%eax)
Lj127:
	movl	$3,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj134:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	Lfpc_unicodestr_unique$stub
	movl	-16(%ebp),%edx
	movw	$32,-2(%eax,%edx,2)
	cmpl	$100,-16(%ebp)
	jl	Lj134
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	L_VMT_XMLUTILS_TNSSUPPORT$non_lazy_ptr-Lj73(%ebx),%edx
	movl	$0,%eax
	call	L_XMLUTILS_TNSSUPPORT_$__CREATE$$TNSSUPPORT$stub
	movl	-12(%ebp),%edx
	movl	%eax,36(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj73(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj73(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,48(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj73(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
Lj88:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	call	LFPC_RERAISE$stub
Lj89:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj167
	jmp	Lj166
Lj167:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj165
	jmp	Lj166
Lj165:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj166:
Lj84:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj86
	leal	-68(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj171
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj172
	jmp	Lj173
Lj172:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj173:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj171:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj170
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj170:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj86
Lj86:
Lj72:
	movl	-12(%ebp),%eax
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__DESTROY
_XMLWRITE_TXMLWRITER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj180
	jmp	Lj181
Lj180:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj181:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj185
	incl	-12(%ebp)
	.align 2
Lj186:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	Lfpc_freemem$stub
	cmpl	$0,-12(%ebp)
	jg	Lj186
Lj185:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	20(%edx),%eax
	ja	Lj197
	jmp	Lj198
Lj197:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax),%ecx
	movl	20(%edx),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj198:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
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
	call	*56(%edx)
Lj212:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT
_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj217
Lj217:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj223
	.align 2
Lj222:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	leal	(%edx,%eax,1),%eax
	cmpl	-16(%ebp),%eax
	jbe	Lj225
	jmp	Lj226
Lj225:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	subl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj233
	jmp	Lj234
Lj233:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%edx
	movl	20(%edx),%edx
	movl	-16(%ebp),%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	20(%ecx),%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj234:
Lj226:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-20(%ebp)
	addl	$2,-4(%ebp)
	movl	-20(%ebp),%eax
	subl	$127,%eax
	jbe	Lj245
	decl	%eax
	subl	$1919,%eax
	jbe	Lj246
	subl	$53249,%eax
	jb	Lj244
	subl	$1023,%eax
	jbe	Lj247
	decl	%eax
	subl	$1023,%eax
	jbe	Lj248
	jmp	Lj244
Lj245:
	movl	-16(%ebp),%eax
	movb	-20(%ebp),%dl
	movb	%dl,(%eax)
	incl	-16(%ebp)
	jmp	Lj243
Lj246:
	movl	-20(%ebp),%eax
	shrl	$6,%eax
	orl	$192,%eax
	movl	-16(%ebp),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-16(%ebp),%edx
	movb	%al,1(%edx)
	addl	$2,-16(%ebp)
	jmp	Lj243
Lj247:
	movl	-4(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj258
	jmp	Lj256
Lj258:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$56320,%ax
	jae	Lj257
	jmp	Lj256
Lj257:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$57343,%ax
	jbe	Lj255
	jmp	Lj256
Lj255:
	movl	-20(%ebp),%eax
	subl	$55232,%eax
	shll	$10,%eax
	movl	-4(%ebp),%edx
	movw	(%edx),%dx
	xorw	$56320,%dx
	movzwl	%dx,%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	addl	$2,-4(%ebp)
	movl	-20(%ebp),%eax
	shrl	$18,%eax
	orl	$240,%eax
	movl	-16(%ebp),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%eax
	shrl	$12,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-16(%ebp),%edx
	movb	%al,1(%edx)
	movl	-20(%ebp),%eax
	shrl	$6,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-16(%ebp),%edx
	movb	%al,2(%edx)
	movl	-20(%ebp),%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-16(%ebp),%edx
	movb	%al,3(%edx)
	addl	$4,-16(%ebp)
	jmp	Lj269
Lj256:
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj217(%esi),%edx
	movl	L_$XMLWRITE$_Ld3$non_lazy_ptr-Lj217(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj217(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj269:
	jmp	Lj243
Lj248:
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj217(%esi),%edx
	movl	L_$XMLWRITE$_Ld5$non_lazy_ptr-Lj217(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj217(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj243
Lj244:
	movl	-20(%ebp),%eax
	shrl	$12,%eax
	orl	$224,%eax
	movl	-16(%ebp),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%eax
	shrl	$6,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-16(%ebp),%edx
	movb	%al,1(%edx)
	movl	-20(%ebp),%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-16(%ebp),%edx
	movb	%al,2(%edx)
	addl	$3,-16(%ebp)
Lj243:
Lj223:
	movl	-4(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj222
	jmp	Lj224
Lj224:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING
_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj291
Lj291:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj294
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj294:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj297
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj291(%ebx),%eax
	movl	%eax,%edx
Lj297:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR
_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movl	-8(%ebp),%eax
	incl	24(%eax)
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRTINDENT
_XMLWRITE_TXMLWRITER_$__WRTINDENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj305
Lj305:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj308
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj308:
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	testl	%edx,%edx
	jne	Lj311
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj305(%ebx),%eax
	movl	%eax,%edx
Lj311:
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__INCINDENT
_XMLWRITE_TXMLWRITER_$__INCINDENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	testl	%edx,%edx
	je	Lj318
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj318:
	cmpl	%edx,%eax
	jg	Lj316
	jmp	Lj317
Lj316:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj321
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj321:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	shll	$2,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	-12(%ebp),%edx
	call	Lfpc_unicodestr_setlength$stub
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj329
	decl	-8(%ebp)
	.align 2
Lj330:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	Lfpc_unicodestr_unique$stub
	movl	-8(%ebp),%edx
	movw	$32,-2(%eax,%edx,2)
	cmpl	-8(%ebp),%ebx
	jg	Lj330
Lj329:
Lj317:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__DECINDENT
_XMLWRITE_TXMLWRITER_$__DECINDENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj337
	jmp	Lj338
Lj337:
	movl	-4(%ebp),%eax
	decl	16(%eax)
Lj338:
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK
_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$1,-16(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj346
	.align 2
Lj345:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$128,%ax
	jb	Lj350
	jmp	Lj349
Lj350:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movzbl	-2(%eax,%edx,2),%eax
	btl	%eax,(%ecx)
	jc	Lj348
	jmp	Lj349
Lj348:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	-2(%eax,%edx,2),%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%ebp),%ebx
	call	*%ebx
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj349:
	incl	-20(%ebp)
Lj346:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj365
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj365:
	cmpl	-20(%ebp),%eax
	jge	Lj345
	jmp	Lj347
Lj347:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj368
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj368:
	cmpl	-16(%ebp),%eax
	jge	Lj366
	jmp	Lj367
Lj366:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	-2(%eax,%edx,2),%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
Lj367:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
_XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj376
Lj376:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$9,%ax
	jb	Lj378
	subw	$9,%ax
	je	Lj383
	decw	%ax
	je	Lj384
	subw	$3,%ax
	je	Lj385
	subw	$21,%ax
	je	Lj379
	subw	$4,%ax
	je	Lj380
	subw	$22,%ax
	je	Lj381
	subw	$2,%ax
	je	Lj382
	jmp	Lj378
Lj379:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld7$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj377
Lj380:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld9$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj377
Lj381:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld11$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj377
Lj382:
	movl	-4(%ebp),%eax
	movb	9(%eax),%al
	testb	%al,%al
	je	Lj398
	jmp	Lj399
Lj398:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld13$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj404
Lj399:
	movl	-4(%ebp),%eax
	movw	$62,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj404:
	jmp	Lj377
Lj383:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld15$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj377
Lj384:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld17$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj377
Lj385:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld19$non_lazy_ptr-Lj376(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj377
Lj378:
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj376(%ebx),%edx
	movl	L_$XMLWRITE$_Ld21$non_lazy_ptr-Lj376(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj376(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj377:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj428
Lj428:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$10,%ax
	jb	Lj430
	subw	$10,%ax
	je	Lj435
	subw	$3,%ax
	je	Lj434
	subw	$25,%ax
	je	Lj433
	subw	$22,%ax
	je	Lj431
	subw	$2,%ax
	je	Lj432
	jmp	Lj430
Lj431:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld11$non_lazy_ptr-Lj428(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj429
Lj432:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld13$non_lazy_ptr-Lj428(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj429
Lj433:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld9$non_lazy_ptr-Lj428(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj429
Lj434:
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj455
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj455:
	movl	-12(%ebp),%eax
	cmpl	(%eax),%edx
	jg	Lj454
	jmp	Lj453
Lj454:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$10,%ax
	je	Lj452
	jmp	Lj453
Lj452:
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj453:
	jmp	Lj429
Lj435:
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj429
Lj430:
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj428(%ebx),%edx
	movl	L_$XMLWRITE$_Ld21$non_lazy_ptr-Lj428(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj428(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj429:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TEXTNODECANONICALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
_XMLWRITE_TEXTNODECANONICALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj467
Lj467:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$10,%ax
	jb	Lj469
	subw	$10,%ax
	je	Lj474
	subw	$3,%ax
	je	Lj473
	subw	$25,%ax
	je	Lj472
	subw	$22,%ax
	je	Lj470
	subw	$2,%ax
	je	Lj471
	jmp	Lj469
Lj470:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld11$non_lazy_ptr-Lj467(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj468
Lj471:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld13$non_lazy_ptr-Lj467(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj468
Lj472:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld9$non_lazy_ptr-Lj467(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj468
Lj473:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld19$non_lazy_ptr-Lj467(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj468
Lj474:
	movl	-4(%ebp),%eax
	movw	$10,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	jmp	Lj468
Lj469:
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj467(%ebx),%edx
	movl	L_$XMLWRITE$_Ld21$non_lazy_ptr-Lj467(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj467(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj468:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_CDSECTSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
_XMLWRITE_CDSECTSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj502
Lj502:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj507
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj507:
	subl	$2,%edx
	movl	-12(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj506
	jmp	Lj504
Lj506:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$93,%ax
	je	Lj505
	jmp	Lj504
Lj505:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	addl	$2,%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$62,%ax
	je	Lj503
	jmp	Lj504
Lj503:
	movl	-4(%ebp),%eax
	movl	L_$XMLWRITE$_Ld23$non_lazy_ptr-Lj502(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-12(%ebp),%eax
	addl	$2,(%eax)
	jmp	Lj512
Lj504:
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj502(%ebx),%edx
	movl	L_$XMLWRITE$_Ld21$non_lazy_ptr-Lj502(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj502(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj512:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING
_XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj520
Lj520:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movb	$34,%al
	call	L_SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj521
	jmp	Lj522
Lj521:
	movw	$39,-10(%ebp)
	jmp	Lj529
Lj522:
	movw	$34,-10(%ebp)
Lj529:
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	L_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj520(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld25$non_lazy_ptr-Lj520(%ebx),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE
_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	jl	Lj551
	decl	%eax
	je	Lj552
	decl	%eax
	je	Lj553
	decl	%eax
	je	Lj554
	decl	%eax
	je	Lj555
	decl	%eax
	je	Lj556
	decl	%eax
	je	Lj561
	decl	%eax
	je	Lj557
	decl	%eax
	je	Lj558
	decl	%eax
	je	Lj559
	decl	%eax
	je	Lj560
	decl	%eax
	je	Lj561
	jmp	Lj551
Lj552:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITELEMENT$TDOMNODE$stub
	jmp	Lj550
Lj553:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITATTRIBUTE$TDOMNODE$stub
	jmp	Lj550
Lj554:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITTEXT$TDOMNODE$stub
	jmp	Lj550
Lj555:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITCDATA$TDOMNODE$stub
	jmp	Lj550
Lj556:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITENTITYREF$TDOMNODE$stub
	jmp	Lj550
Lj557:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITPI$TDOMNODE$stub
	jmp	Lj550
Lj558:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITCOMMENT$TDOMNODE$stub
	jmp	Lj550
Lj559:
	movl	-8(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj592
	jmp	Lj593
Lj592:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT_CANONICAL$TDOMNODE$stub
	jmp	Lj598
Lj593:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT$TDOMNODE$stub
Lj598:
	jmp	Lj550
Lj560:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITDOCUMENTTYPE$TDOMNODE$stub
	jmp	Lj550
Lj561:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITFRAGMENT$TDOMNODE$stub
	jmp	Lj550
Lj551:
Lj550:
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__WRITENSDEF$TBINDING
_XMLWRITE_TXMLWRITER_$__WRITENSDEF$TBINDING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj612
Lj612:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_$XMLWRITE$_Ld26$non_lazy_ptr-Lj612(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$6,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj619
	jmp	Lj620
Lj619:
	movl	-8(%ebp),%eax
	movw	$58,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
Lj620:
	movl	L_$XMLWRITE$_Ld28$non_lazy_ptr-Lj612(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	L_XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj612(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld30$non_lazy_ptr-Lj612(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movl	-8(%ebp),%eax
	movw	$34,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT
_XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj651
	jmp	Lj652
Lj651:
	jmp	Lj647
Lj652:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj655
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj655:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj658
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj658:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj659
	jmp	Lj660
Lj659:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj660:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj671
	jmp	Lj672
Lj671:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj675
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj675:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj676
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj676:
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj672:
Lj647:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_SORTNSDEFS$POINTER$POINTER$$LONGINT
_XMLWRITE_SORTNSDEFS$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	(%eax),%eax
	call	L_XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_SORTATTS$POINTER$POINTER$$LONGINT
_XMLWRITE_SORTATTS$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj687
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-68(%ebp),%eax
	movl	%ebx,%edx
	call	L_XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj704
	jmp	Lj705
Lj704:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	$4,8(%eax)
	jne	Lj706
	jmp	Lj707
Lj706:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	jmp	Lj712
Lj707:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj712:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	$4,8(%eax)
	jne	Lj717
	jmp	Lj718
Lj717:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	jmp	Lj723
Lj718:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj723:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj705:
Lj687:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj688
	call	LFPC_RERAISE$stub
Lj688:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__NAMESPACEFIXUP$TDOMELEMENT
_XMLWRITE_TXMLWRITER_$__NAMESPACEFIXUP$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj747
Lj747:
	popl	-88(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj748
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$0,%edx
	call	L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	$0,%edx
	call	L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	testb	%al,%al
	jne	Lj759
	jmp	Lj760
Lj759:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj766
	decl	-16(%ebp)
	.align 2
Lj767:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	movl	-16(%ebp),%edx
	movl	%esi,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movzwl	40(%eax),%eax
	cmpl	$2,%eax
	je	Lj784
	jmp	Lj785
Lj784:
	movl	-24(%ebp),%eax
	movzwl	42(%eax),%eax
	testl	%eax,%eax
	je	Lj786
	jmp	Lj787
Lj786:
	leal	-28(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	jmp	Lj790
Lj787:
	leal	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
Lj790:
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-80(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-28(%ebp),%edx
	call	L_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING$stub
	cmpl	$0,-12(%ebp)
	jne	Lj807
	jmp	Lj808
Lj807:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj808:
	jmp	Lj813
Lj785:
	movl	-8(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj814
	jmp	Lj816
Lj816:
	movl	-24(%ebp),%eax
	call	L_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj814
	jmp	Lj815
Lj814:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj819
	jmp	Lj820
Lj819:
	movl	$8,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-36(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	jmp	Lj831
Lj820:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	4(%eax),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
Lj831:
	movl	-36(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-36(%ebp),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-36(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	incl	-20(%ebp)
Lj815:
Lj813:
	cmpl	-16(%ebp),%ebx
	jg	Lj767
Lj766:
Lj760:
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-80(%ebp),%ebx
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%ebx,%ecx
	call	L_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING$stub
	cmpl	$0,-12(%ebp)
	jne	Lj858
	jmp	Lj859
Lj858:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj859:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj865
	decl	-16(%ebp)
	.align 2
Lj866:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-84(%ebp),%ebx
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%ebx,%ecx
	call	L_XMLUTILS_TNSSUPPORT_$__CHECKATTRIBUTE$WIDESTRING$WIDESTRING$TBINDING$$TATTRIBUTEACTION$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	je	Lj887
	jmp	Lj888
Lj887:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj888:
	movl	-32(%ebp),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj895
Lj895:
	jc	Lj893
	jmp	Lj894
Lj893:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,4(%edx)
Lj894:
	cmpl	-16(%ebp),%esi
	jg	Lj866
Lj865:
	movl	-8(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj898
	jmp	Lj899
Lj898:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-88(%ebp),%ecx
	movl	L_XMLWRITE_SORTNSDEFS$POINTER$POINTER$$LONGINT$non_lazy_ptr-Lj747(%ecx),%edx
	call	L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-88(%ebp),%ecx
	movl	L_XMLWRITE_SORTATTS$POINTER$POINTER$$LONGINT$non_lazy_ptr-Lj747(%ecx),%edx
	call	L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub
Lj899:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj909
	decl	-16(%ebp)
	.align 2
Lj910:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENSDEF$TBINDING$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj910
Lj909:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj916
	decl	-16(%ebp)
	.align 2
Lj917:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movw	$32,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,%esi
	cmpl	$0,4(%esi)
	jne	Lj924
	jmp	Lj925
Lj924:
	movl	4(%esi),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movw	$58,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	(%esi),%eax
	movl	(%esi),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj942
Lj925:
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	(%esi),%eax
	movl	(%esi),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
Lj942:
	movl	-88(%ebp),%eax
	movl	L_$XMLWRITE$_Ld28$non_lazy_ptr-Lj747(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	-88(%ebp),%eax
	movl	L_XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj747(%eax),%edx
	movl	%edx,(%esp)
	movl	-88(%ebp),%edx
	movl	L_$XMLWRITE$_Ld30$non_lazy_ptr-Lj747(%edx),%eax
	movl	%eax,%ebx
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	(%esi),%eax
	movl	(%esi),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%ebx,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movl	-8(%ebp),%eax
	movw	$34,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	cmpl	-16(%ebp),%edi
	jg	Lj917
Lj916:
Lj748:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj749
	call	LFPC_RERAISE$stub
Lj749:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITELEMENT$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITELEMENT$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj980
Lj980:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj981
	movl	-8(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj984
	jmp	Lj985
Lj984:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTINDENT$stub
Lj985:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__STARTELEMENT$stub
	movl	-8(%ebp),%eax
	movw	$60,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj1002
	jmp	Lj1003
Lj1002:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__NAMESPACEFIXUP$TDOMELEMENT$stub
	jmp	Lj1008
Lj1003:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	testb	%al,%al
	jne	Lj1009
	jmp	Lj1010
Lj1009:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,%edi
	decl	%edi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%edi
	jl	Lj1014
	decl	-12(%ebp)
	.align 2
Lj1015:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	movl	-12(%ebp),%edx
	movl	%esi,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj1032
	jmp	Lj1034
Lj1034:
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1032
	jmp	Lj1033
Lj1032:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITATTRIBUTE$TDOMNODE$stub
Lj1033:
	cmpl	-12(%ebp),%edi
	jg	Lj1015
Lj1014:
Lj1010:
Lj1008:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1045
	jmp	Lj1046
Lj1045:
	movl	L_$XMLWRITE$_Ld31$non_lazy_ptr-Lj980(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	jmp	Lj1053
Lj1046:
	movl	-8(%ebp),%eax
	movb	8(%eax),%al
	movb	%al,-17(%ebp)
	movl	-8(%ebp),%eax
	movw	$62,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj1060
	jmp	Lj1062
Lj1062:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj1065
Lj1065:
	jc	Lj1060
	jmp	Lj1061
Lj1060:
	movb	$1,8(%esi)
	jmp	Lj1066
Lj1061:
	movb	$0,8(%esi)
Lj1066:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__INCINDENT$stub
	.align 2
Lj1069:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1071
	jmp	Lj1069
Lj1071:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__DECINDENT$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*128(%edx)
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj1088
Lj1088:
	jnc	Lj1080
	jmp	Lj1081
Lj1080:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTINDENT$stub
Lj1081:
	movl	-8(%ebp),%eax
	movb	-17(%ebp),%dl
	movb	%dl,8(%eax)
	movl	L_$XMLWRITE$_Ld33$non_lazy_ptr-Lj980(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movw	$62,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj1053:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_XMLUTILS_TNSSUPPORT_$__ENDELEMENT$stub
Lj981:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj982
	call	LFPC_RERAISE$stub
Lj982:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITTEXT$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITTEXT$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1114
Lj1114:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	9(%eax),%eax
	movl	L_TC_XMLWRITE_TEXTNODECALLBACKS$non_lazy_ptr-Lj1114(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld35$non_lazy_ptr-Lj1114(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITCDATA$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITCDATA$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1124
Lj1124:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj1125
	jmp	Lj1126
Lj1125:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTINDENT$stub
Lj1126:
	movl	-8(%ebp),%eax
	cmpb	$0,9(%eax)
	jne	Lj1129
	jmp	Lj1130
Lj1129:
	movl	L_XMLWRITE_TEXTNODECANONICALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj1124(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld35$non_lazy_ptr-Lj1124(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	jmp	Lj1139
Lj1130:
	movl	L_$XMLWRITE$_Ld36$non_lazy_ptr-Lj1124(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$9,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	L_XMLWRITE_CDSECTSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj1124(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld38$non_lazy_ptr-Lj1124(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movl	L_$XMLWRITE$_Ld39$non_lazy_ptr-Lj1124(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
Lj1139:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITENTITYREF$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITENTITYREF$TDOMNODE:
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
	jne	Lj1162
	movl	-8(%ebp),%eax
	movw	$38,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movw	$59,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj1162:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1163
	call	LFPC_RERAISE$stub
Lj1163:
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITPI$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITPI$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1182
Lj1182:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj1183
	jmp	Lj1184
Lj1183:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTINDENT$stub
Lj1184:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld41$non_lazy_ptr-Lj1182(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1195
	jmp	Lj1196
Lj1195:
	movl	-8(%ebp),%eax
	movw	$32,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	L_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj1182(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld25$non_lazy_ptr-Lj1182(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
Lj1196:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld43$non_lazy_ptr-Lj1182(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITCOMMENT$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITCOMMENT$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1214
Lj1214:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj1215
	jmp	Lj1216
Lj1215:
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTINDENT$stub
Lj1216:
	movl	L_$XMLWRITE$_Ld45$non_lazy_ptr-Lj1214(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	L_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj1214(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld25$non_lazy_ptr-Lj1214(%ebx),%ecx
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movl	L_$XMLWRITE$_Ld47$non_lazy_ptr-Lj1214(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1240
Lj1240:
	popl	%ebx
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
	jne	Lj1241
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld49$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1254
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1254:
	cmpl	$0,%eax
	jg	Lj1248
	jmp	Lj1249
Lj1248:
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING$stub
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	jmp	Lj1263
Lj1249:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld51$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
Lj1263:
	movl	-8(%ebp),%eax
	movw	$34,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld53$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%eax
	cmpb	$0,92(%eax)
	jne	Lj1276
	jmp	Lj1277
Lj1276:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld55$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
Lj1277:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld43$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%edx
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj1240(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1286
	jmp	Lj1287
Lj1286:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	je	Lj1294
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1294:
	cmpl	$0,%eax
	jg	Lj1292
	jmp	Lj1293
Lj1292:
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld57$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%eax
	movl	96(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld59$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld61$non_lazy_ptr-Lj1240(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
Lj1293:
Lj1287:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj1324
	.align 2
Lj1323:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1324:
	cmpl	$0,-12(%ebp)
	jne	Lj1323
	jmp	Lj1325
Lj1325:
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
Lj1241:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1242
	call	LFPC_RERAISE$stub
Lj1242:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT_CANONICAL$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT_CANONICAL$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj1347
	.align 2
Lj1346:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	subl	$7,%eax
	cmpl	$2,%eax
	jb	Lj1353
Lj1353:
	jc	Lj1349
	jmp	Lj1350
Lj1349:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movw	$10,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj1350:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1347:
	cmpl	$0,-12(%ebp)
	jne	Lj1364
	jmp	Lj1348
Lj1364:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj1346
	jmp	Lj1348
Lj1348:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1365
	jmp	Lj1366
Lj1365:
	jmp	Lj1336
Lj1366:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITELEMENT$TDOMNODE$stub
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1374
	.align 2
Lj1373:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	subl	$7,%eax
	cmpl	$2,%eax
	jb	Lj1380
Lj1380:
	jc	Lj1376
	jmp	Lj1377
Lj1376:
	movl	-8(%ebp),%eax
	movw	$10,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
Lj1377:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1374:
	cmpl	$0,-12(%ebp)
	jne	Lj1373
	jmp	Lj1375
Lj1375:
Lj1336:
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITATTRIBUTE$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITATTRIBUTE$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj1392
Lj1392:
	popl	%ebx
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
	jne	Lj1393
	movl	-8(%ebp),%eax
	movw	$32,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	L_$XMLWRITE$_Ld28$non_lazy_ptr-Lj1392(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj1419
	.align 2
Lj1418:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$3,%eax
	jl	Lj1422
	subl	$3,%eax
	je	Lj1424
	subl	$2,%eax
	je	Lj1423
	jmp	Lj1422
Lj1423:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__VISITENTITYREF$TDOMNODE$stub
	jmp	Lj1421
Lj1424:
	movl	L_XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj1392(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld30$non_lazy_ptr-Lj1392(%ebx),%ecx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	jmp	Lj1421
Lj1422:
Lj1421:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1419:
	cmpl	$0,-12(%ebp)
	jne	Lj1418
	jmp	Lj1420
Lj1420:
	movl	-8(%ebp),%eax
	movw	$34,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj1393:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1394
	call	LFPC_RERAISE$stub
Lj1394:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITDOCUMENTTYPE$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITDOCUMENTTYPE$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj1446
Lj1446:
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
	jne	Lj1447
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld63$non_lazy_ptr-Lj1446(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movw	$32,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETPUBLICID$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1470
	jmp	Lj1471
Lj1470:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld65$non_lazy_ptr-Lj1446(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETPUBLICID$$WIDESTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING$stub
	movl	-8(%ebp),%eax
	movw	$32,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING$stub
	jmp	Lj1500
Lj1471:
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1501
	jmp	Lj1502
Lj1501:
	movl	-8(%ebp),%eax
	movl	L_$XMLWRITE$_Ld67$non_lazy_ptr-Lj1446(%ebx),%edx
	call	L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING$stub
Lj1502:
Lj1500:
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETINTERNALSUBSET$$WIDESTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1519
	jmp	Lj1520
Lj1519:
	movl	-8(%ebp),%eax
	movw	$91,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
	movl	L_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr-Lj1446(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_$XMLWRITE$_Ld25$non_lazy_ptr-Lj1446(%ebx),%esi
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETINTERNALSUBSET$$WIDESTRING$stub
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%esi,%ecx
	call	L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub
	movl	-8(%ebp),%eax
	movw	$93,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj1520:
	movl	-8(%ebp),%eax
	movw	$62,%dx
	call	L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub
Lj1447:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1448
	call	LFPC_RERAISE$stub
Lj1448:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_TXMLWRITER_$__VISITFRAGMENT$TDOMNODE
_XMLWRITE_TXMLWRITER_$__VISITFRAGMENT$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj1556
	.align 2
Lj1555:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1556:
	cmpl	$0,-12(%ebp)
	jne	Lj1555
	jmp	Lj1557
Lj1557:
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING
_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1565
Lj1565:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	$65280,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1565(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1576
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TSTREAM$stub
Lj1576:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1577
	decl	%eax
	testl	%eax,%eax
	je	Lj1578
Lj1578:
	call	LFPC_RERAISE$stub
Lj1577:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TEXT
_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj1587
Lj1587:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLWRITE_TTEXTSTREAM$non_lazy_ptr-Lj1587(%ebx),%edx
	movl	$0,%eax
	call	L_XMLWRITE_TTEXTSTREAM_$__CREATE$TEXT$$TTEXTSTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1596
	movl	-12(%ebp),%ecx
	movl	L_VMT_XMLWRITE_TXMLWRITER$non_lazy_ptr-Lj1587(%ebx),%edx
	movl	$0,%eax
	call	L_XMLWRITE_TXMLWRITER_$__CREATE$TSTREAM$$TXMLWRITER$stub
	movl	%eax,%esi
	movl	%esi,%edi
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1610
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
Lj1610:
	call	LFPC_POPADDRSTACK$stub
	movl	%edi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1611
	decl	%eax
	testl	%eax,%eax
	je	Lj1612
Lj1612:
	call	LFPC_RERAISE$stub
Lj1611:
Lj1596:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1597
	decl	%eax
	testl	%eax,%eax
	je	Lj1598
Lj1598:
	call	LFPC_RERAISE$stub
Lj1597:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TSTREAM
_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	call	Lj1623
Lj1623:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_XMLWRITE_TXMLWRITER$non_lazy_ptr-Lj1623(%ebx),%edx
	movl	$0,%eax
	call	L_XMLWRITE_TXMLWRITER_$__CREATE$TSTREAM$$TXMLWRITER$stub
	movl	%eax,%esi
	movl	%esi,%edi
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1634
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub
Lj1634:
	call	LFPC_POPADDRSTACK$stub
	movl	%edi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1635
	decl	%eax
	testl	%eax,%eax
	je	Lj1636
Lj1636:
	call	LFPC_RERAISE$stub
Lj1635:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_WRITEXML$TDOMNODE$ANSISTRING
_XMLWRITE_WRITEXML$TDOMNODE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_WRITEXML$TDOMNODE$TEXT
_XMLWRITE_WRITEXML$TDOMNODE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TEXT$stub
	leave
	ret

.text
	.align 4
.globl	_XMLWRITE_WRITEXML$TDOMNODE$TSTREAM
_XMLWRITE_WRITEXML$TDOMNODE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TSTREAM$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld69
_$XMLWRITE$_Ld69:
	.byte	10
	.ascii	"TXMLWriter"

.const_data
	.align 2
.globl	_VMT_XMLWRITE_TXMLWRITER
_VMT_XMLWRITE_TXMLWRITER:
	.long	52,-52
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$XMLWRITE$_Ld69
	.long	0,0
	.long	_$XMLWRITE$_Ld70
	.long	_RTTI_XMLWRITE_TXMLWRITER
	.long	_INIT_XMLWRITE_TXMLWRITER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_XMLWRITE_TXMLWRITER_$__DESTROY
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
.globl	_$XMLWRITE$_Ld72
_$XMLWRITE$_Ld72:
	.byte	11
	.ascii	"TTextStream"

.const_data
	.align 2
.globl	_VMT_XMLWRITE_TTEXTSTREAM
_VMT_XMLWRITE_TTEXTSTREAM:
	.long	8,-8
	.long	_VMT_CLASSES_TSTREAM
	.long	_$XMLWRITE$_Ld72
	.long	0,0
	.long	_$XMLWRITE$_Ld73
	.long	_RTTI_XMLWRITE_TTEXTSTREAM
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
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_XMLWRITE_TTEXTSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_XMLWRITE
_THREADVARLIST_XMLWRITE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld2
_$XMLWRITE$_Ld2:
	.long	-1,2
.reference _$XMLWRITE$_Ld1
.globl	_$XMLWRITE$_Ld1
_$XMLWRITE$_Ld1:
.reference _$XMLWRITE$_Ld2
	.short	10,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld4
_$XMLWRITE$_Ld4:
	.short	0,1
	.long	0,-1,30
.reference _$XMLWRITE$_Ld3
.globl	_$XMLWRITE$_Ld3
_$XMLWRITE$_Ld3:
.reference _$XMLWRITE$_Ld4
	.ascii	"High surrogate without low one\000"

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld6
_$XMLWRITE$_Ld6:
	.short	0,1
	.long	0,-1,30
.reference _$XMLWRITE$_Ld5
.globl	_$XMLWRITE$_Ld5
_$XMLWRITE$_Ld5:
.reference _$XMLWRITE$_Ld6
	.ascii	"Low surrogate without high one\000"

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld8
_$XMLWRITE$_Ld8:
	.long	-1,12
.reference _$XMLWRITE$_Ld7
.globl	_$XMLWRITE$_Ld7
_$XMLWRITE$_Ld7:
.reference _$XMLWRITE$_Ld8
	.short	38,113,117,111,116,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld10
_$XMLWRITE$_Ld10:
	.long	-1,10
.reference _$XMLWRITE$_Ld9
.globl	_$XMLWRITE$_Ld9
_$XMLWRITE$_Ld9:
.reference _$XMLWRITE$_Ld10
	.short	38,97,109,112,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld12
_$XMLWRITE$_Ld12:
	.long	-1,8
.reference _$XMLWRITE$_Ld11
.globl	_$XMLWRITE$_Ld11
_$XMLWRITE$_Ld11:
.reference _$XMLWRITE$_Ld12
	.short	38,108,116,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld14
_$XMLWRITE$_Ld14:
	.long	-1,8
.reference _$XMLWRITE$_Ld13
.globl	_$XMLWRITE$_Ld13
_$XMLWRITE$_Ld13:
.reference _$XMLWRITE$_Ld14
	.short	38,103,116,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld16
_$XMLWRITE$_Ld16:
	.long	-1,10
.reference _$XMLWRITE$_Ld15
.globl	_$XMLWRITE$_Ld15
_$XMLWRITE$_Ld15:
.reference _$XMLWRITE$_Ld16
	.short	38,35,120,57,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld18
_$XMLWRITE$_Ld18:
	.long	-1,10
.reference _$XMLWRITE$_Ld17
.globl	_$XMLWRITE$_Ld17
_$XMLWRITE$_Ld17:
.reference _$XMLWRITE$_Ld18
	.short	38,35,120,65,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld20
_$XMLWRITE$_Ld20:
	.long	-1,10
.reference _$XMLWRITE$_Ld19
.globl	_$XMLWRITE$_Ld19
_$XMLWRITE$_Ld19:
.reference _$XMLWRITE$_Ld20
	.short	38,35,120,68,59,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld22
_$XMLWRITE$_Ld22:
	.short	0,1
	.long	0,-1,17
.reference _$XMLWRITE$_Ld21
.globl	_$XMLWRITE$_Ld21
_$XMLWRITE$_Ld21:
.reference _$XMLWRITE$_Ld22
	.ascii	"Illegal character\000"

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld24
_$XMLWRITE$_Ld24:
	.long	-1,30
.reference _$XMLWRITE$_Ld23
.globl	_$XMLWRITE$_Ld23
_$XMLWRITE$_Ld23:
.reference _$XMLWRITE$_Ld24
	.short	93,93,93,93,62,60,33,91,67,68,65,84,65,91,62,0

.data
	.align 2
.globl	_TC_XMLWRITE_TEXTNODECALLBACKS
_TC_XMLWRITE_TEXTNODECALLBACKS:
	.long	_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
	.long	_XMLWRITE_TEXTNODECANONICALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT

.const
	.align 3
.globl	_$XMLWRITE$_Ld25
_$XMLWRITE$_Ld25:
	.byte	0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld27
_$XMLWRITE$_Ld27:
	.long	-1,12
.reference _$XMLWRITE$_Ld26
.globl	_$XMLWRITE$_Ld26
_$XMLWRITE$_Ld26:
.reference _$XMLWRITE$_Ld27
	.short	32,120,109,108,110,115,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld29
_$XMLWRITE$_Ld29:
	.long	-1,4
.reference _$XMLWRITE$_Ld28
.globl	_$XMLWRITE$_Ld28
_$XMLWRITE$_Ld28:
.reference _$XMLWRITE$_Ld29
	.short	61,34,0

.const
	.align 3
.globl	_$XMLWRITE$_Ld30
_$XMLWRITE$_Ld30:
	.byte	255,255,255,255,68,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld32
_$XMLWRITE$_Ld32:
	.long	-1,4
.reference _$XMLWRITE$_Ld31
.globl	_$XMLWRITE$_Ld31
_$XMLWRITE$_Ld31:
.reference _$XMLWRITE$_Ld32
	.short	47,62,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld34
_$XMLWRITE$_Ld34:
	.long	-1,4
.reference _$XMLWRITE$_Ld33
.globl	_$XMLWRITE$_Ld33
_$XMLWRITE$_Ld33:
.reference _$XMLWRITE$_Ld34
	.short	60,47,0

.const
	.align 3
.globl	_$XMLWRITE$_Ld35
_$XMLWRITE$_Ld35:
	.byte	255,253,255,255,64,0,0,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld37
_$XMLWRITE$_Ld37:
	.long	-1,18
.reference _$XMLWRITE$_Ld36
.globl	_$XMLWRITE$_Ld36
_$XMLWRITE$_Ld36:
.reference _$XMLWRITE$_Ld37
	.short	60,33,91,67,68,65,84,65,91,0

.const
	.align 3
.globl	_$XMLWRITE$_Ld38
_$XMLWRITE$_Ld38:
	.byte	255,217,255,255,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld40
_$XMLWRITE$_Ld40:
	.long	-1,6
.reference _$XMLWRITE$_Ld39
.globl	_$XMLWRITE$_Ld39
_$XMLWRITE$_Ld39:
.reference _$XMLWRITE$_Ld40
	.short	93,93,62,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld42
_$XMLWRITE$_Ld42:
	.long	-1,4
.reference _$XMLWRITE$_Ld41
.globl	_$XMLWRITE$_Ld41
_$XMLWRITE$_Ld41:
.reference _$XMLWRITE$_Ld42
	.short	60,63,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld44
_$XMLWRITE$_Ld44:
	.long	-1,4
.reference _$XMLWRITE$_Ld43
.globl	_$XMLWRITE$_Ld43
_$XMLWRITE$_Ld43:
.reference _$XMLWRITE$_Ld44
	.short	63,62,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld46
_$XMLWRITE$_Ld46:
	.long	-1,8
.reference _$XMLWRITE$_Ld45
.globl	_$XMLWRITE$_Ld45
_$XMLWRITE$_Ld45:
.reference _$XMLWRITE$_Ld46
	.short	60,33,45,45,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld48
_$XMLWRITE$_Ld48:
	.long	-1,6
.reference _$XMLWRITE$_Ld47
.globl	_$XMLWRITE$_Ld47
_$XMLWRITE$_Ld47:
.reference _$XMLWRITE$_Ld48
	.short	45,45,62,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld50
_$XMLWRITE$_Ld50:
	.long	-1,30
.reference _$XMLWRITE$_Ld49
.globl	_$XMLWRITE$_Ld49
_$XMLWRITE$_Ld49:
.reference _$XMLWRITE$_Ld50
	.short	60,63,120,109,108,32,118,101,114,115,105,111,110,61,34,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld52
_$XMLWRITE$_Ld52:
	.long	-1,6
.reference _$XMLWRITE$_Ld51
.globl	_$XMLWRITE$_Ld51
_$XMLWRITE$_Ld51:
.reference _$XMLWRITE$_Ld52
	.short	49,46,48,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld54
_$XMLWRITE$_Ld54:
	.long	-1,34
.reference _$XMLWRITE$_Ld53
.globl	_$XMLWRITE$_Ld53
_$XMLWRITE$_Ld53:
.reference _$XMLWRITE$_Ld54
	.short	32,101,110,99,111,100,105,110,103,61,34,117,116,102,45,56,34,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld56
_$XMLWRITE$_Ld56:
	.long	-1,34
.reference _$XMLWRITE$_Ld55
.globl	_$XMLWRITE$_Ld55
_$XMLWRITE$_Ld55:
.reference _$XMLWRITE$_Ld56
	.short	32,115,116,97,110,100,97,108,111,110,101,61,34,121,101,115,34,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld58
_$XMLWRITE$_Ld58:
	.long	-1,46
.reference _$XMLWRITE$_Ld57
.globl	_$XMLWRITE$_Ld57
_$XMLWRITE$_Ld57:
.reference _$XMLWRITE$_Ld58
	.short	60,63,120,109,108,45,115,116,121,108,101,115,104,101,101,116,32,116,121,112,101,61,34,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld60
_$XMLWRITE$_Ld60:
	.long	-1,16
.reference _$XMLWRITE$_Ld59
.globl	_$XMLWRITE$_Ld59
_$XMLWRITE$_Ld59:
.reference _$XMLWRITE$_Ld60
	.short	34,32,104,114,101,102,61,34,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld62
_$XMLWRITE$_Ld62:
	.long	-1,6
.reference _$XMLWRITE$_Ld61
.globl	_$XMLWRITE$_Ld61
_$XMLWRITE$_Ld61:
.reference _$XMLWRITE$_Ld62
	.short	34,63,62,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld64
_$XMLWRITE$_Ld64:
	.long	-1,20
.reference _$XMLWRITE$_Ld63
.globl	_$XMLWRITE$_Ld63
_$XMLWRITE$_Ld63:
.reference _$XMLWRITE$_Ld64
	.short	60,33,68,79,67,84,89,80,69,32,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld66
_$XMLWRITE$_Ld66:
	.long	-1,14
.reference _$XMLWRITE$_Ld65
.globl	_$XMLWRITE$_Ld65
_$XMLWRITE$_Ld65:
.reference _$XMLWRITE$_Ld66
	.short	80,85,66,76,73,67,32,0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld68
_$XMLWRITE$_Ld68:
	.long	-1,14
.reference _$XMLWRITE$_Ld67
.globl	_$XMLWRITE$_Ld67
_$XMLWRITE$_Ld67:
.reference _$XMLWRITE$_Ld68
	.short	83,89,83,84,69,77,32,0
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

Lfpc_write_text_ansistr$stub:
.indirect_symbol fpc_write_text_ansistr
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

Lfpc_write_end$stub:
.indirect_symbol fpc_write_end
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

L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_ALLOCMEM$LONGWORD$$POINTER
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

Lfpc_unicodestr_setlength$stub:
.indirect_symbol fpc_unicodestr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_unique$stub:
.indirect_symbol fpc_unicodestr_unique
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
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

L_XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRTCHARS$PWIDECHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRTSTR$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRTCHR$WIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__CONVWRITE$WIDESTRING$TSETOFCHAR$TSPECIALCHARCALLBACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITELEMENT$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITELEMENT$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITATTRIBUTE$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITATTRIBUTE$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITTEXT$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITTEXT$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITCDATA$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITCDATA$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITENTITYREF$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITENTITYREF$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITPI$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITPI$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITCOMMENT$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITCOMMENT$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT_CANONICAL$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITDOCUMENT_CANONICAL$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITDOCUMENT$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITDOCUMENT$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITDOCUMENTTYPE$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITDOCUMENTTYPE$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__VISITFRAGMENT$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__VISITFRAGMENT$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT$stub:
.indirect_symbol _XMLWRITE_COMPARE$WIDESTRING$WIDESTRING$$LONGINT
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

L_CLASSES_TFPLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__DEFINEBINDING$WIDESTRING$WIDESTRING$TBINDING
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

L_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN$stub:
.indirect_symbol _DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN
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

L_XMLUTILS_TNSSUPPORT_$__CHECKATTRIBUTE$WIDESTRING$WIDESTRING$TBINDING$$TATTRIBUTEACTION$stub:
.indirect_symbol _XMLUTILS_TNSSUPPORT_$__CHECKATTRIBUTE$WIDESTRING$WIDESTRING$TBINDING$$TATTRIBUTEACTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__WRITENSDEF$TBINDING$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRITENSDEF$TBINDING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__WRTINDENT$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRTINDENT
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

L_XMLWRITE_TXMLWRITER_$__NAMESPACEFIXUP$TDOMELEMENT$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__NAMESPACEFIXUP$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__INCINDENT$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__INCINDENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRITENODE$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__DECINDENT$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__DECINDENT
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

L_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING
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

L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENTTYPE_$__GETPUBLICID$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__GETPUBLICID$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__WRTQUOTEDLITERAL$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENTTYPE_$__GETINTERNALSUBSET$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__GETINTERNALSUBSET$$WIDESTRING
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

L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TSTREAM$stub:
.indirect_symbol _XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TTEXTSTREAM_$__CREATE$TEXT$$TTEXTSTREAM$stub:
.indirect_symbol _XMLWRITE_TTEXTSTREAM_$__CREATE$TEXT$$TTEXTSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_TXMLWRITER_$__CREATE$TSTREAM$$TXMLWRITER$stub:
.indirect_symbol _XMLWRITE_TXMLWRITER_$__CREATE$TSTREAM$$TXMLWRITER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING$stub:
.indirect_symbol _XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TEXT$stub:
.indirect_symbol _XMLWRITE_WRITEXMLFILE$TXMLDOCUMENT$TEXT
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
.globl	_$XMLWRITE$_Ld70
_$XMLWRITE$_Ld70:
	.short	0
	.long	_$XMLWRITE$_Ld71
	.align 2
.globl	_$XMLWRITE$_Ld71
_$XMLWRITE$_Ld71:
	.short	0

.const_data
	.align 2
.globl	_INIT_XMLWRITE_TXMLWRITER
_INIT_XMLWRITE_TXMLWRITER:
	.byte	15,10
	.ascii	"TXMLWriter"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	12
	.long	_INIT_SYSTEM_WIDESTRING
	.long	32

.const_data
	.align 2
.globl	_RTTI_XMLWRITE_TXMLWRITER
_RTTI_XMLWRITE_TXMLWRITER:
	.byte	15,10
	.ascii	"TXMLWriter"
	.long	_VMT_XMLWRITE_TXMLWRITER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"XMLWrite"
	.short	0

.const_data
	.align 2
.globl	_$XMLWRITE$_Ld73
_$XMLWRITE$_Ld73:
	.short	0
	.long	_$XMLWRITE$_Ld74
	.align 2
.globl	_$XMLWRITE$_Ld74
_$XMLWRITE$_Ld74:
	.short	0

.const_data
	.align 2
.globl	_RTTI_XMLWRITE_TTEXTSTREAM
_RTTI_XMLWRITE_TTEXTSTREAM:
	.byte	15,11
	.ascii	"TTextStream"
	.long	_VMT_XMLWRITE_TTEXTSTREAM
	.long	_RTTI_CLASSES_TSTREAM
	.short	0
	.byte	8
	.ascii	"XMLWrite"
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
L_$XMLWRITE$_Ld1$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_TNSSUPPORT$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_TNSSUPPORT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ECONVERTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld3$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld5$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld7$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld9$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld11$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld13$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld15$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld17$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld19$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld21$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld23$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLWRITE_TEXTNODENORMALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld25$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld26$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld28$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLWRITE_ATTRSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld30$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld30
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLWRITE_SORTNSDEFS$POINTER$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLWRITE_SORTNSDEFS$POINTER$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLWRITE_SORTATTS$POINTER$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLWRITE_SORTATTS$POINTER$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld31$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld33$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLWRITE_TEXTNODECALLBACKS$non_lazy_ptr:
.indirect_symbol _TC_XMLWRITE_TEXTNODECALLBACKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld35$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLWRITE_TEXTNODECANONICALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLWRITE_TEXTNODECANONICALCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld36$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_XMLWRITE_CDSECTSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT$non_lazy_ptr:
.indirect_symbol _XMLWRITE_CDSECTSPECIALCHARCALLBACK$TXMLWRITER$WIDESTRING$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld38$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld38
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld39$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld41$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld43$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld45$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld47$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld49$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld51$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld53$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld55$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TXMLDOCUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld57$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld59$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld61$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld63$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld65$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$XMLWRITE$_Ld67$non_lazy_ptr:
.indirect_symbol _$XMLWRITE$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLWRITE_TTEXTSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_XMLWRITE_TTEXTSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLWRITE_TXMLWRITER$non_lazy_ptr:
.indirect_symbol _VMT_XMLWRITE_TXMLWRITER
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

