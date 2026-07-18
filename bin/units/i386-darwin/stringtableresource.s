# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__IDTOINDEX$WORD$$LONGINT
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__IDTOINDEX$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzwl	60(%eax),%edx
	movzwl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKLISTLOADED
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKLISTLOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	call	Lj8
Lj8:
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
	jne	Lj9
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	jne	Lj12
	jmp	Lj13
Lj12:
	jmp	Lj9
Lj13:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj8(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,68(%edx)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	$16,%edx
	movl	-4(%ebp),%ecx
	movl	68(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	$0,%edx
	jne	Lj25
	cmpl	$0,%eax
	jne	Lj25
	jmp	Lj24
Lj24:
	jmp	Lj9
Lj25:
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj42:
	incl	-8(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-308(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__READWIDESTRING$$SHORTSTRING$stub
	leal	-308(%ebp),%eax
	leal	-52(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	68(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	$15,-8(%ebp)
	jl	Lj42
Lj9:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj10
	call	LFPC_RERAISE$stub
Lj10:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__READWIDESTRING$$SHORTSTRING
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__READWIDESTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj57
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	leal	-14(%ebp),%edx
	movl	%ebx,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movzwl	-14(%ebp),%edx
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_setlength$stub
	movl	-12(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj77
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj77:
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj75
	decl	-20(%ebp)
	.align 2
Lj76:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	leal	-14(%ebp),%edx
	movl	%esi,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_unique$stub
	movl	-20(%ebp),%edx
	movw	-14(%ebp),%cx
	movw	%cx,-2(%eax,%edx,2)
	cmpl	-20(%ebp),%ebx
	jg	Lj76
Lj75:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_unicodestr_to_shortstr$stub
Lj57:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj58
	call	LFPC_RERAISE$stub
Lj58:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__WRITEWIDESTRING$SHORTSTRING
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__WRITEWIDESTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj106
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	leal	-14(%ebp),%edx
	movl	%ebx,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_unicodestr$stub
	movl	-12(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj128
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj128:
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj126
	decl	-20(%ebp)
	.align 2
Lj127:
	incl	-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%esi
	leal	-14(%ebp),%edx
	movl	%esi,%eax
	movl	$2,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj127
Lj126:
Lj106:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj107
	call	LFPC_RERAISE$stub
Lj107:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	60(%eax),%eax
	addl	$15,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETFIRSTID$WORD
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETFIRSTID$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$65520,%ax
	movw	%ax,-4(%ebp)
	movl	-8(%ebp),%edx
	movw	-4(%ebp),%ax
	movw	%ax,60(%edx)
	movl	-8(%ebp),%eax
	movb	$1,72(%eax)
	movzwl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$15,%eax
	addl	%eax,%edx
	sarl	$4,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-8(%ebp),%eax
	movb	$0,72(%eax)
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj167
	movw	-4(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKINDEX$WORD$stub
	movl	-8(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKLISTLOADED$stub
	movw	-4(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__IDTOINDEX$WORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	-8(%ebp),%edx
	movl	68(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	-16(%ebp),%eax
	jle	Lj182
	jmp	Lj183
Lj182:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj188
Lj183:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	leal	-60(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	68(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
Lj188:
Lj167:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj168
	call	LFPC_RERAISE$stub
Lj168:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETSTRING$WORD$SHORTSTRING
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__SETSTRING$WORD$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-276(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	$0,-316(%ebp)
	leal	-288(%ebp),%ecx
	leal	-312(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-8(%ebp)
	testl	%eax,%eax
	jne	Lj203
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKINDEX$WORD$stub
	movl	-12(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKLISTLOADED$stub
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__IDTOINDEX$WORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-12(%ebp),%edx
	movl	68(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	-16(%ebp),%eax
	jg	Lj218
	jmp	Lj219
Lj218:
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%edx
	leal	-276(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-316(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	68(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	jmp	Lj232
Lj219:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-12(%ebp),%edx
	movl	68(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	-16(%ebp),%eax
	jle	Lj233
	jmp	Lj234
Lj233:
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-12(%ebp),%edx
	movl	68(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj238
	decl	-20(%ebp)
	.align 2
Lj239:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	68(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-20(%ebp),%ebx
	jg	Lj239
Lj238:
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%edx
	leal	-276(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-316(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	68(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj234:
Lj232:
Lj203:
	call	LFPC_POPADDRSTACK$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj204
	call	LFPC_RERAISE$stub
Lj204:
	movl	-320(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__UPDATERAWDATA
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__UPDATERAWDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj256
	jmp	Lj257
Lj256:
	jmp	Lj254
Lj257:
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	movl	-4(%ebp),%eax
	movzwl	60(%eax),%eax
	movl	%eax,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj275
	decl	-8(%ebp)
	.align 2
Lj276:
	incl	-8(%ebp)
	leal	-264(%ebp),%ecx
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__WRITEWIDESTRING$SHORTSTRING$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj276
Lj275:
	movl	-4(%ebp),%eax
	leal	68(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj254:
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETTYPE$$TRESOURCEDESC
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETTYPE$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETNAME$$TRESOURCEDESC
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETNAME$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	72(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__NOTIFYRESOURCESLOADED
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__NOTIFYRESOURCESLOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKINDEX$WORD
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKINDEX$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj310
Lj310:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	60(%eax),%ax
	cmpw	-4(%ebp),%ax
	ja	Lj311
	jmp	Lj313
Lj313:
	movl	-8(%ebp),%eax
	call	L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD$stub
	cmpw	-4(%ebp),%ax
	jb	Lj311
	jmp	Lj312
Lj311:
	movl	$0,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STRINGTABLERESOURCE_SINDEXOUTOFBOUNDS$non_lazy_ptr-Lj310(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION$non_lazy_ptr-Lj310(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj310(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj312:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CREATE$$TSTRINGTABLERESOURCE
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CREATE$$TSTRINGTABLERESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj327
Lj327:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj328
	jmp	Lj329
Lj328:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj329:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj334
	jmp	Lj335
Lj334:
	jmp	Lj326
Lj335:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj338
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj342
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE$stub
	movl	-8(%ebp),%eax
	movb	$0,72(%eax)
	movl	-8(%ebp),%eax
	movl	$0,68(%eax)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj327(%ebx),%edx
	movl	$6,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,52(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj327(%ebx),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	$16,64(%eax)
	movl	-8(%ebp),%eax
	movw	$0,60(%eax)
	movl	-8(%ebp),%eax
	movl	52(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub
Lj342:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj343
	call	LFPC_RERAISE$stub
Lj343:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj383
	jmp	Lj382
Lj383:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj381
	jmp	Lj382
Lj381:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj382:
Lj338:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj340
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj387
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj388
	jmp	Lj389
Lj388:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj389:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj387:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj386
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj386:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj340
Lj340:
Lj326:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CREATE$crcC533B837
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CREATE$crcC533B837:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj395
Lj395:
	popl	%ebx
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
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$1,%eax
	jne	Lj417
	jmp	Lj419
Lj419:
	movl	8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	cmpl	$1,%eax
	jb	Lj417
	jmp	Lj420
Lj420:
	movl	8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	cmpl	$4096,%eax
	ja	Lj417
	jmp	Lj418
Lj417:
	movl	L_RESSTR_STRINGTABLERESOURCE_SNAMENOTALLOWED$non_lazy_ptr-Lj395(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION$non_lazy_ptr-Lj395(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj395(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj418:
	movl	-12(%ebp),%eax
	movb	$1,72(%eax)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
	movl	-12(%ebp),%eax
	movb	$0,72(%eax)
	movl	-12(%ebp),%eax
	movl	$16,64(%eax)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	decl	%eax
	shll	$4,%eax
	movl	-12(%ebp),%edx
	movw	%ax,60(%edx)
Lj410:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj411
	call	LFPC_RERAISE$stub
Lj411:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj447
	jmp	Lj446
Lj447:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj445
	jmp	Lj446
Lj445:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj446:
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
	jne	Lj451
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj452
	jmp	Lj453
Lj452:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj453:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj451:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj450
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj450:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj408
Lj408:
Lj394:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__DESTROY
_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj460
	jmp	Lj461
Lj460:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj461:
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	jne	Lj468
	jmp	Lj469
Lj468:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj469:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TABSTRACTRESOURCE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj478
	jmp	Lj477
Lj478:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj476
	jmp	Lj477
Lj476:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj477:
	leave
	ret

.text
	.align 4
.globl	_INIT$_STRINGTABLERESOURCE
_INIT$_STRINGTABLERESOURCE:
.reference __STRINGTABLERESOURCE_init
.globl	__STRINGTABLERESOURCE_init
__STRINGTABLERESOURCE_init:
.reference _INIT$_STRINGTABLERESOURCE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$6,%edx
	call	L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld2
_$STRINGTABLERESOURCE$_Ld2:
	.byte	29
	.ascii	"EStringTableResourceException"

.const_data
	.align 2
.globl	_VMT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
_VMT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$STRINGTABLERESOURCE$_Ld2
	.long	0,0
	.long	_$STRINGTABLERESOURCE$_Ld3
	.long	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
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
.globl	_$STRINGTABLERESOURCE$_Ld5
_$STRINGTABLERESOURCE$_Ld5:
	.byte	35
	.ascii	"EStringTableNameNotAllowedException"

.const_data
	.align 2
.globl	_VMT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION
_VMT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION:
	.long	12,-12
	.long	_VMT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
	.long	_$STRINGTABLERESOURCE$_Ld5
	.long	0,0
	.long	_$STRINGTABLERESOURCE$_Ld6
	.long	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION
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
.globl	_$STRINGTABLERESOURCE$_Ld8
_$STRINGTABLERESOURCE$_Ld8:
	.byte	37
	.ascii	"EStringTableIndexOutOfBoundsException"

.const_data
	.align 2
.globl	_VMT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION
_VMT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION:
	.long	12,-12
	.long	_VMT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
	.long	_$STRINGTABLERESOURCE$_Ld8
	.long	0,0
	.long	_$STRINGTABLERESOURCE$_Ld9
	.long	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION
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
.globl	_$STRINGTABLERESOURCE$_Ld11
_$STRINGTABLERESOURCE$_Ld11:
	.byte	20
	.ascii	"TStringTableResource"

.const_data
	.align 2
.globl	_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE:
	.long	76,-76
	.long	_VMT_RESOURCE_TABSTRACTRESOURCE
	.long	_$STRINGTABLERESOURCE$_Ld11
	.long	0,0
	.long	_$STRINGTABLERESOURCE$_Ld12
	.long	_RTTI_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__DESTROY
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
	.long	_RESOURCE_TABSTRACTRESOURCE_$__SETOWNERLIST$TRESOURCES
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETTYPE$$TRESOURCEDESC
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETNAME$$TRESOURCEDESC
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__NOTIFYRESOURCESLOADED
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CREATE$$TSTRINGTABLERESOURCE
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CREATE$crcC533B837
	.long	_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	.long	_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__UPDATERAWDATA
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_STRINGTABLERESOURCE
_THREADVARLIST_STRINGTABLERESOURCE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld15
_$STRINGTABLERESOURCE$_Ld15:
	.short	0,1
	.long	0,-1,19
.reference _$STRINGTABLERESOURCE$_Ld14
.globl	_$STRINGTABLERESOURCE$_Ld14
_$STRINGTABLERESOURCE$_Ld14:
.reference _$STRINGTABLERESOURCE$_Ld15
	.ascii	"STRINGTABLERESOURCE\000"

.const_data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld17
_$STRINGTABLERESOURCE$_Ld17:
	.short	0,1
	.long	0,-1,50
.reference _$STRINGTABLERESOURCE$_Ld16
.globl	_$STRINGTABLERESOURCE$_Ld16
_$STRINGTABLERESOURCE$_Ld16:
.reference _$STRINGTABLERESOURCE$_Ld17
	.ascii	"Resource ID must be an ordinal in the range 1-4096\000"
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld19
_$STRINGTABLERESOURCE$_Ld19:
	.short	0,1
	.long	0,-1,35
.reference _$STRINGTABLERESOURCE$_Ld18
.globl	_$STRINGTABLERESOURCE$_Ld18
_$STRINGTABLERESOURCE$_Ld18:
.reference _$STRINGTABLERESOURCE$_Ld19
	.ascii	"stringtableresource.snamenotallowed\000"

.const_data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld21
_$STRINGTABLERESOURCE$_Ld21:
	.short	0,1
	.long	0,-1,27
.reference _$STRINGTABLERESOURCE$_Ld20
.globl	_$STRINGTABLERESOURCE$_Ld20
_$STRINGTABLERESOURCE$_Ld20:
.reference _$STRINGTABLERESOURCE$_Ld21
	.ascii	"String ID out of bounds: %d\000"
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld23
_$STRINGTABLERESOURCE$_Ld23:
	.short	0,1
	.long	0,-1,37
.reference _$STRINGTABLERESOURCE$_Ld22
.globl	_$STRINGTABLERESOURCE$_Ld22
_$STRINGTABLERESOURCE$_Ld22:
.reference _$STRINGTABLERESOURCE$_Ld23
	.ascii	"stringtableresource.sindexoutofbounds\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld1
_$STRINGTABLERESOURCE$_Ld1:
	.ascii	"\000\000"
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

L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM
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

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__READWIDESTRING$$SHORTSTRING$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__READWIDESTRING$$SHORTSTRING
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

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
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

Lfpc_unicodestr_to_shortstr$stub:
.indirect_symbol fpc_unicodestr_to_shortstr
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

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_unicodestr$stub:
.indirect_symbol fpc_shortstr_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKINDEX$WORD$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKINDEX$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKLISTLOADED$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__CHECKLISTLOADED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__IDTOINDEX$WORD$$LONGINT$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__IDTOINDEX$WORD$$LONGINT
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

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETLASTID$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__GETSTRING$WORD$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__WRITEWIDESTRING$SHORTSTRING$stub:
.indirect_symbol _STRINGTABLERESOURCE_TSTRINGTABLERESOURCE_$__WRITEWIDESTRING$SHORTSTRING
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

L_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC
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

L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD
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

L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC
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

L_RESOURCE_TABSTRACTRESOURCE_$__DESTROY$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS$stub:
.indirect_symbol _RESFACTORY_TRESOURCEFACTORY_$__REGISTERRESOURCECLASS$LONGWORD$TRESOURCECLASS
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
.globl	_$STRINGTABLERESOURCE$_Ld3
_$STRINGTABLERESOURCE$_Ld3:
	.short	0
	.long	_$STRINGTABLERESOURCE$_Ld4
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld4
_$STRINGTABLERESOURCE$_Ld4:
	.short	0

.const_data
	.align 2
.globl	_INIT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
_INIT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION:
	.byte	15,29
	.ascii	"EStringTableResourceException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
_RTTI_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION:
	.byte	15,29
	.ascii	"EStringTableResourceException"
	.long	_VMT_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	19
	.ascii	"stringtableresource"
	.short	0

.const_data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld6
_$STRINGTABLERESOURCE$_Ld6:
	.short	0
	.long	_$STRINGTABLERESOURCE$_Ld7
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld7
_$STRINGTABLERESOURCE$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION
_INIT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION:
	.byte	15,35
	.ascii	"EStringTableNameNotAllowedException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION
_RTTI_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION:
	.byte	15,35
	.ascii	"EStringTableNameNotAllowedException"
	.long	_VMT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION
	.long	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
	.short	0
	.byte	19
	.ascii	"stringtableresource"
	.short	0

.const_data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld9
_$STRINGTABLERESOURCE$_Ld9:
	.short	0
	.long	_$STRINGTABLERESOURCE$_Ld10
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld10
_$STRINGTABLERESOURCE$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION
_INIT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION:
	.byte	15,37
	.ascii	"EStringTableIndexOutOfBoundsException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION
_RTTI_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION:
	.byte	15,37
	.ascii	"EStringTableIndexOutOfBoundsException"
	.long	_VMT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION
	.long	_RTTI_STRINGTABLERESOURCE_ESTRINGTABLERESOURCEEXCEPTION
	.short	0
	.byte	19
	.ascii	"stringtableresource"
	.short	0

.const_data
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld12
_$STRINGTABLERESOURCE$_Ld12:
	.short	0
	.long	_$STRINGTABLERESOURCE$_Ld13
	.align 2
.globl	_$STRINGTABLERESOURCE$_Ld13
_$STRINGTABLERESOURCE$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
_INIT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE:
	.byte	15,20
	.ascii	"TStringTableResource"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
_RTTI_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE:
	.byte	15,20
	.ascii	"TStringTableResource"
	.long	_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
	.long	_RTTI_RESOURCE_TABSTRACTRESOURCE
	.short	0
	.byte	19
	.ascii	"stringtableresource"
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
L_RESSTR_STRINGTABLERESOURCE_SINDEXOUTOFBOUNDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STRINGTABLERESOURCE_SINDEXOUTOFBOUNDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_STRINGTABLERESOURCE_ESTRINGTABLEINDEXOUTOFBOUNDSEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TRESOURCEDESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STRINGTABLERESOURCE_SNAMENOTALLOWED$non_lazy_ptr:
.indirect_symbol _RESSTR_STRINGTABLERESOURCE_SNAMENOTALLOWED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_STRINGTABLERESOURCE_ESTRINGTABLENAMENOTALLOWEDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE$non_lazy_ptr:
.indirect_symbol _VMT_STRINGTABLERESOURCE_TSTRINGTABLERESOURCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESFACTORY_TRESOURCEFACTORY$non_lazy_ptr:
.indirect_symbol _VMT_RESFACTORY_TRESOURCEFACTORY
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_STRINGTABLERESOURCE_START
_RESSTR_STRINGTABLERESOURCE_START:
	.long	_$STRINGTABLERESOURCE$_Ld14
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_STRINGTABLERESOURCE_SNAMENOTALLOWED
_RESSTR_STRINGTABLERESOURCE_SNAMENOTALLOWED:
	.long	_$STRINGTABLERESOURCE$_Ld18
	.long	_$STRINGTABLERESOURCE$_Ld16
	.long	_$STRINGTABLERESOURCE$_Ld16
	.long	25844742

.data
	.align 2
.globl	_RESSTR_STRINGTABLERESOURCE_SINDEXOUTOFBOUNDS
_RESSTR_STRINGTABLERESOURCE_SINDEXOUTOFBOUNDS:
	.long	_$STRINGTABLERESOURCE$_Ld22
	.long	_$STRINGTABLERESOURCE$_Ld20
	.long	_$STRINGTABLERESOURCE$_Ld20
	.long	239229956

.data
	.align 2
.globl	_RESSTR_STRINGTABLERESOURCE_END
_RESSTR_STRINGTABLERESOURCE_END:
	.long	_RESSTR_STRINGTABLERESOURCE_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

