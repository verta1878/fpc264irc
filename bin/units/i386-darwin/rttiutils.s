# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO
_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST
_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj9
	jmp	Lj10
Lj9:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj10:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj15
	jmp	Lj16
Lj15:
	jmp	Lj7
Lj16:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj19
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj23
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj26
	jmp	Lj27
Lj26:
	movb	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSINFO$$POINTER$stub
	movl	8(%ebp),%edx
	movl	$0,%ecx
	call	L_TYPINFO_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	shll	$2,%eax
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movb	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSINFO$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	4(%edx),%ecx
	movl	8(%ebp),%edx
	call	L_TYPINFO_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT$stub
	jmp	Lj56
Lj27:
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
Lj56:
Lj23:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj24
	call	LFPC_RERAISE$stub
Lj24:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj63
	jmp	Lj62
Lj63:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj62:
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj21
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj67
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj68
	jmp	Lj69
Lj68:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj69:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj67:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj66
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj66:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj21
Lj21:
Lj7:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__DESTROY
_RTTIUTILS_TPROPINFOLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj76
	jmp	Lj77
Lj76:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj77:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj80
	jmp	Lj81
Lj80:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj81:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj88
	jmp	Lj87
Lj88:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj87:
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__CONTAINS$PPROPINFO$$BOOLEAN
_RTTIUTILS_TPROPINFOLIST_$__CONTAINS$PPROPINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj93
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj97
	decl	-16(%ebp)
	.align 2
Lj98:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%esi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	(%esi),%eax
	je	Lj103
	jmp	Lj102
Lj103:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%edi
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	leal	27(%esi),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%eax
	movl	%edi,%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj101
	jmp	Lj102
Lj101:
	movb	$1,-9(%ebp)
	jmp	Lj93
Lj102:
	cmpl	-16(%ebp),%ebx
	jg	Lj98
Lj97:
	movb	$0,-9(%ebp)
Lj93:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj94
	call	LFPC_RERAISE$stub
Lj94:
	movb	-9(%ebp),%al
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO
_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
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
	jne	Lj122
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj126
	decl	-16(%ebp)
	.align 2
Lj127:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%esi
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	leal	27(%esi),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj130
	jmp	Lj131
Lj130:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj122
Lj131:
	cmpl	-16(%ebp),%ebx
	jg	Lj127
Lj126:
	movl	$0,-12(%ebp)
Lj122:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj123
	call	LFPC_RERAISE$stub
Lj123:
	movl	-12(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__DELETE$LONGINT
_RTTIUTILS_TPROPINFOLIST_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj146
	jmp	Lj147
Lj146:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	subl	%eax,%ecx
	shll	$2,%ecx
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,4),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-4(%ebp),%ebx
	leal	(%edx,%ebx,4),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj147:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__GET$LONGINT$$PPROPINFO
_RTTIUTILS_TPROPINFOLIST_$__GET$LONGINT$$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPINFOLIST_$__INTERSECT$TPROPINFOLIST
_RTTIUTILS_TPROPINFOLIST_$__INTERSECT$TPROPINFOLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj161
	incl	-12(%ebp)
	.align 2
Lj162:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__CONTAINS$PPROPINFO$$BOOLEAN$stub
	testb	%al,%al
	je	Lj163
	jmp	Lj164
Lj163:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__DELETE$LONGINT$stub
Lj164:
	cmpl	$0,-12(%ebp)
	jg	Lj162
Lj161:
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_CREATESTOREDITEM$ANSISTRING$ANSISTRING$$ANSISTRING
_RTTIUTILS_CREATESTOREDITEM$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj174
Lj174:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj179
	jmp	Lj178
Lj179:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj177
	jmp	Lj178
Lj177:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	L_$RTTIUTILS$_Ld3$non_lazy_ptr-Lj174(%esi),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj178:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN
_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj188
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj195
	movl	-4(%eax),%eax
Lj195:
	testl	%eax,%eax
	je	Lj193
	jmp	Lj194
Lj193:
	jmp	Lj188
Lj194:
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj202
	jmp	Lj203
Lj202:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%eax
	leal	-64(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	leal	-68(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj235
	movl	-4(%eax),%eax
Lj235:
	cmpl	$0,%eax
	jg	Lj234
	jmp	Lj233
Lj234:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj236
	movl	-4(%eax),%eax
Lj236:
	cmpl	$0,%eax
	jg	Lj232
	jmp	Lj233
Lj232:
	movb	$1,-13(%ebp)
	jmp	Lj237
Lj233:
	movb	$0,-13(%ebp)
Lj237:
Lj203:
Lj188:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj189
	call	LFPC_RERAISE$stub
Lj189:
	movb	-13(%ebp),%al
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_REPLACECOMPONENTNAME$ANSISTRING$ANSISTRING$$ANSISTRING
_RTTIUTILS_REPLACECOMPONENTNAME$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj240
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	leal	-20(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj245
	jmp	Lj246
Lj245:
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_CREATESTOREDITEM$ANSISTRING$ANSISTRING$$ANSISTRING$stub
Lj246:
Lj240:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	call	LFPC_RERAISE$stub
Lj241:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_UPDATESTOREDLIST$TCOMPONENT$TSTRINGS$BOOLEAN
_RTTIUTILS_UPDATESTOREDLIST$TCOMPONENT$TSTRINGS$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-24(%ebp)
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
	jne	Lj273
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj276
	jmp	Lj278
Lj278:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj276
	jmp	Lj277
Lj276:
	jmp	Lj273
Lj277:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj280
	incl	-16(%ebp)
	.align 2
Lj281:
	decl	-16(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-72(%ebp),%eax
	leal	-28(%ebp),%ecx
	leal	-24(%ebp),%edx
	call	L_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj284
	jmp	Lj285
Lj284:
	cmpb	$0,-12(%ebp)
	jne	Lj298
	jmp	Lj299
Lj298:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__FINDCOMPONENT$ANSISTRING$$TCOMPONENT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj306
	jmp	Lj307
Lj306:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
	jmp	Lj312
Lj307:
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
Lj312:
	jmp	Lj319
Lj299:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj326
	jmp	Lj327
Lj326:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-76(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	16(%edx),%edx
	leal	-72(%ebp),%ecx
	call	L_RTTIUTILS_REPLACECOMPONENTNAME$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	jmp	Lj346
Lj327:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj346:
Lj319:
	jmp	Lj351
Lj285:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj351:
	cmpl	$0,-16(%ebp)
	jg	Lj281
Lj280:
Lj273:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
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
	je	Lj274
	call	LFPC_RERAISE$stub
Lj274:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
_RTTIUTILS_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj369
Lj369:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	L_U_RTTIUTILS_FINDGLOBALCOMPONENTCALLBACK$non_lazy_ptr-Lj369(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj372
	jmp	Lj373
Lj372:
	movl	-4(%ebp),%eax
	movl	L_U_RTTIUTILS_FINDGLOBALCOMPONENTCALLBACK$non_lazy_ptr-Lj369(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	%eax,-8(%ebp)
Lj373:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__GETITEMNAME$ANSISTRING$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__GETITEMNAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-100(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj388
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj393
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj397
	jmp	Lj398
Lj397:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj400
	decb	%al
	je	Lj401
	decb	%al
	je	Lj402
	decb	%al
	je	Lj403
	decb	%al
	je	Lj404
	decb	%al
	je	Lj411
	subb	$2,%al
	je	Lj410
	decb	%al
	jb	Lj400
	subb	$1,%al
	jbe	Lj406
	decb	%al
	je	Lj407
	decb	%al
	je	Lj408
	subb	$4,%al
	je	Lj412
	subb	$2,%al
	je	Lj405
	decb	%al
	je	Lj401
	decb	%al
	je	Lj409
	jmp	Lj400
Lj401:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj402:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORECHARPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj403:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREENUMPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj404:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj405:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREWCHARPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj406:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj407:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj408:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREVARIANTPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj409:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREINT64PROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj410:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj411:
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORESETPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj399
Lj412:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	jmp	Lj399
Lj400:
	jmp	Lj391
Lj399:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj481
	jmp	Lj484
Lj484:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$7,%eax
	je	Lj485
	cmpl	$15,%eax
	je	Lj485
Lj485:
	je	Lj481
	jmp	Lj483
Lj483:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	subl	$8,%eax
	cmpl	$3,%eax
	jb	Lj486
	cmpl	$9,%eax
	stc
	je	Lj486
	clc
Lj486:
	jc	Lj481
	jmp	Lj482
Lj481:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-108(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-108(%ebp),%edx
	leal	-104(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-104(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-100(%ebp),%eax
	leal	-12(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	jmp	Lj511
Lj482:
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
Lj511:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj515
	decb	%al
	je	Lj517
	decb	%al
	je	Lj518
	decb	%al
	je	Lj519
	decb	%al
	je	Lj520
	decb	%al
	je	Lj527
	subb	$2,%al
	je	Lj526
	decb	%al
	jb	Lj515
	subb	$1,%al
	jbe	Lj522
	decb	%al
	je	Lj523
	decb	%al
	je	Lj524
	subb	$4,%al
	je	Lj528
	subb	$2,%al
	je	Lj521
	decb	%al
	je	Lj516
	decb	%al
	je	Lj525
	jmp	Lj515
Lj516:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADINTEGERPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj517:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADINTEGERPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj518:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADCHARPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj519:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADENUMPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj520:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADFLOATPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj521:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADWCHARPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj522:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADLSTRINGPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj523:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADLSTRINGPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj524:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADVARIANTPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj525:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADINT64PROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj526:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj527:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADSETPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj528:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADCLASSPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj514
Lj515:
	jmp	Lj391
Lj514:
Lj398:
Lj393:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj395
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj395
Lj391:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	jmp	Lj388
Lj395:
Lj388:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj389
	call	LFPC_RERAISE$stub
Lj389:
	movl	-112(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
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
	jne	Lj621
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj624
	jmp	Lj625
Lj624:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj627
	decb	%al
	je	Lj628
	decb	%al
	je	Lj629
	decb	%al
	je	Lj630
	decb	%al
	je	Lj631
	decb	%al
	je	Lj638
	subb	$2,%al
	je	Lj637
	subb	$2,%al
	je	Lj632
	decb	%al
	je	Lj633
	decb	%al
	je	Lj635
	subb	$4,%al
	je	Lj639
	subb	$2,%al
	je	Lj634
	decb	%al
	je	Lj640
	decb	%al
	je	Lj636
	jmp	Lj627
Lj628:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj629:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORECHARPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj630:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREENUMPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj631:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj632:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj633:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj634:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREWCHARPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj635:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREVARIANTPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj636:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREINT64PROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj637:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj638:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORESETPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj639:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORECLASSPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj640:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj626
Lj627:
	jmp	Lj621
Lj626:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj719
	jmp	Lj721
Lj721:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	subl	$7,%eax
	cmpl	$4,%eax
	jb	Lj722
	cmpl	$10,%eax
	stc
	je	Lj722
	clc
Lj722:
	jc	Lj719
	jmp	Lj720
Lj719:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-64(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%edx
	leal	-60(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-60(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
Lj720:
Lj625:
Lj621:
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
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj622
	call	LFPC_RERAISE$stub
Lj622:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORECHARPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORECHARPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	-12(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREENUMPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STOREENUMPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO$stub
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj786
Lj786:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj787
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED$stub
	fstpt	4(%esp)
	movl	-4(%ebp),%eax
	call	L_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO$stub
	call	L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub
	movzbl	(%eax),%eax
	movl	L_TC_RTTIUTILS_TPROPSSTORAGE_$_STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING_PRECISIONS$non_lazy_ptr-Lj786(%ebx),%edx
	movl	(%edx,%eax,4),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_FLOATTOSTRF$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj786(%ebx),%eax
	movb	3(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%edx
	movl	L_$RTTIUTILS$_Ld3$non_lazy_ptr-Lj786(%ebx),%ecx
	movl	%esi,%eax
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
Lj787:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj788
	call	LFPC_RERAISE$stub
Lj788:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREWCHARPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STOREWCHARPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	-12(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREVARIANTPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STOREVARIANTPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj849
Lj849:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj849(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj850
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj849(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-72(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$stub
	leal	-72(%ebp),%eax
	movl	-12(%ebp),%edx
	call	L_SYSTEM_assign$VARIANT$$ANSISTRING$stub
Lj850:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj849(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj851
	call	LFPC_RERAISE$stub
Lj851:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREINT64PROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STOREINT64PROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORESETPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORESETPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj874
Lj874:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj875
	movl	L_$RTTIUTILS$_Ld5$non_lazy_ptr-Lj874(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	call	L_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO$stub
	call	L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub
	movl	1(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj894:
	incl	-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj897
	clc
	jmp	Lj898
Lj897:
	btl	%eax,-20(%ebp)
Lj898:
	jc	Lj895
	jmp	Lj896
Lj895:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj901
	movl	-4(%eax),%eax
Lj901:
	cmpl	$1,%eax
	jne	Lj899
	jmp	Lj900
Lj899:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld7$non_lazy_ptr-Lj874(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj900:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj896:
	cmpl	$31,-24(%ebp)
	jl	Lj894
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld9$non_lazy_ptr-Lj874(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj875:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj876
	call	LFPC_RERAISE$stub
Lj876:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGSPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGSPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj927
Lj927:
	popl	-100(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj928
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-88(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-88(%ebp),%edx
	leal	-84(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-84(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	$1,%ecx
	movl	-100(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj927(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-16(%ebp),%edx
	movl	-100(%ebp),%ecx
	movl	L_VMT_CLASSES_TSTRINGS$non_lazy_ptr-Lj927(%ecx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj963
	jmp	Lj962
Lj963:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$0,%eax
	jg	Lj961
	jmp	Lj962
Lj961:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	leal	-88(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	L_$RTTIUTILS$_Ld13$non_lazy_ptr-Lj927(%ebx),%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%edi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%edi
	jl	Lj985
	decl	-20(%ebp)
	.align 2
Lj986:
	incl	-20(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	$0,%ecx
	movl	-100(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld15$non_lazy_ptr-Lj927(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-88(%ebp),%esi
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ebx
	movl	%esi,%ecx
	call	*104(%ebx)
	cmpl	-20(%ebp),%edi
	jg	Lj986
Lj985:
Lj962:
Lj928:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj929
	call	LFPC_RERAISE$stub
Lj929:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORECOMPONENTPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORECOMPONENTPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%edi,-324(%ebp)
	call	Lj1018
Lj1018:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1019
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1028
	jmp	Lj1029
Lj1028:
	movl	-16(%ebp),%edi
	movl	16(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%edi),%eax
	movl	%eax,(%esi)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1034
	jmp	Lj1033
Lj1034:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	8(%edx),%eax
	jne	Lj1032
	jmp	Lj1033
Lj1032:
	movl	-16(%ebp),%eax
	movl	12(%eax),%esi
	movl	16(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1037
	jmp	Lj1038
Lj1037:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-320(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-320(%ebp),%eax
	leal	-64(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1051
	jmp	Lj1050
Lj1051:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	$84,%al
	je	Lj1049
	jmp	Lj1050
Lj1049:
	leal	-20(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj1050:
Lj1038:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1018(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,(%esi)
Lj1033:
	jmp	Lj1070
Lj1029:
	movl	L_$RTTIUTILS$_Ld17$non_lazy_ptr-Lj1018(%ebx),%esi
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj1070:
Lj1019:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1020
	call	LFPC_RERAISE$stub
Lj1020:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	movl	-324(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STORECLASSPROPERTY$PPROPINFO$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__STORECLASSPROPERTY$PPROPINFO$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-212(%ebp)
	movl	%esi,-208(%ebp)
	movl	%edi,-204(%ebp)
	call	Lj1080
Lj1080:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-160(%ebp)
	movl	$0,-156(%ebp)
	movl	$0,-152(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1083
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1094
	jmp	Lj1095
Lj1094:
	movl	-24(%ebp),%edx
	movl	L_VMT_CLASSES_TSTRINGS$non_lazy_ptr-Lj1080(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1096
	jmp	Lj1097
Lj1096:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGSPROPERTY$PPROPINFO$$ANSISTRING$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	jmp	Lj1108
Lj1097:
	movl	-24(%ebp),%edx
	movl	L_VMT_CLASSES_TCOLLECTION$non_lazy_ptr-Lj1080(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1109
	jmp	Lj1110
Lj1109:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$11,-84(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-92(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-92(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	leal	-88(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1080(%esi),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	leal	-104(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-132(%ebp)
	testl	%eax,%eax
	jne	Lj1141
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-152(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-152(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	leal	-88(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%eax
	movl	%eax,-144(%ebp)
	movl	$11,-148(%ebp)
	movl	L_$RTTIUTILS$_Ld13$non_lazy_ptr-Lj1080(%esi),%eax
	movl	%eax,-136(%ebp)
	movl	$11,-140(%ebp)
	leal	-148(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1080(%esi),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-92(%ebp),%ebx
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	movl	-24(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	leal	-152(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-152(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%edi
	movl	%ebx,%ecx
	call	*104(%edi)
	movl	-24(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1178
	decl	-20(%ebp)
	.align 2
Lj1179:
	incl	-20(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-136(%ebp)
	movl	$0,-140(%ebp)
	leal	-140(%ebp),%edx
	movl	$0,%eax
	movl	L_$RTTIUTILS$_Ld15$non_lazy_ptr-Lj1080(%esi),%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-92(%ebp),%edx
	movl	L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr-Lj1080(%esi),%eax
	movl	(%eax),%ecx
	leal	-152(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-152(%ebp),%edi
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-144(%ebp)
	movl	$11,-148(%ebp)
	leal	-156(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-156(%ebp)
	leal	-160(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-160(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-160(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-160(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	leal	-156(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-156(%ebp),%eax
	movl	%eax,-136(%ebp)
	movl	$11,-140(%ebp)
	leal	-148(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1080(%esi),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	%ebp,%eax
	movl	%edi,%ecx
	call	L_RTTIUTILS_TPROPSSTORAGE_$_STORECLASSPROPERTY$PPROPINFO$$ANSISTRING_STOREOBJECTPROPS$crcE90A4070$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj1179
Lj1178:
Lj1141:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-132(%ebp),%eax
	testl	%eax,%eax
	je	Lj1142
	decl	%eax
	testl	%eax,%eax
	je	Lj1143
Lj1143:
	call	LFPC_RERAISE$stub
Lj1142:
	jmp	Lj1228
Lj1110:
	movl	-24(%ebp),%edx
	movl	L_VMT_CLASSES_TCOMPONENT$non_lazy_ptr-Lj1080(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1229
	jmp	Lj1230
Lj1229:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STORECOMPONENTPROPERTY$PPROPINFO$$ANSISTRING$stub
	jmp	Lj1083
Lj1230:
Lj1228:
Lj1108:
Lj1095:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	leal	-172(%ebp),%ecx
	leal	-196(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-200(%ebp)
	testl	%eax,%eax
	jne	Lj1245
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	leal	-160(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-160(%ebp)
	leal	-156(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-156(%ebp)
	movl	-4(%ebp),%eax
	leal	27(%eax),%eax
	leal	-156(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-156(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	leal	-160(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-160(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$_STORECLASSPROPERTY$PPROPINFO$$ANSISTRING_STOREOBJECTPROPS$crcE90A4070$stub
Lj1245:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-200(%ebp),%eax
	testl	%eax,%eax
	je	Lj1246
	decl	%eax
	testl	%eax,%eax
	je	Lj1247
Lj1247:
	call	LFPC_RERAISE$stub
Lj1246:
Lj1083:
	call	LFPC_POPADDRSTACK$stub
	leal	-160(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-160(%ebp)
	leal	-156(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-156(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1084
	call	LFPC_RERAISE$stub
Lj1084:
	movl	-212(%ebp),%ebx
	movl	-208(%ebp),%esi
	movl	-204(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$_STORECLASSPROPERTY$PPROPINFO$$ANSISTRING_STOREOBJECTPROPS$crcE90A4070
_RTTIUTILS_TPROPSSTORAGE_$_STORECLASSPROPERTY$PPROPINFO$$ANSISTRING_STOREOBJECTPROPS$crcE90A4070:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj1082
Lj1082:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	28(%eax),%edx
	movl	%edx,28(%ebx)
	movl	32(%eax),%eax
	movl	%eax,32(%ebx)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	36(%eax),%edx
	movl	%edx,36(%ebx)
	movl	40(%eax),%eax
	movl	%eax,40(%ebx)
	movl	$134217662,(%esp)
	movl	4(%ebx),%ecx
	movl	L_VMT_RTTIUTILS_TPROPINFOLIST$non_lazy_ptr-Lj1082(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST$stub
	movl	%eax,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1291
	movl	-20(%ebp),%eax
	movl	8(%eax),%edi
	decl	%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj1296
	decl	-16(%ebp)
	.align 2
Lj1297:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__GET$LONGINT$$PPROPINFO$stub
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO$stub
	cmpl	-16(%ebp),%edi
	jg	Lj1297
Lj1296:
Lj1291:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1292
	decl	%eax
	testl	%eax,%eax
	je	Lj1293
Lj1293:
	call	LFPC_RERAISE$stub
Lj1292:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADINTEGERPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADINTEGERPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADCHARPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADCHARPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADENUMPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADENUMPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
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
	jne	Lj1330
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub
	movl	%eax,%ebx
	movl	5(%ebx),%esi
	movl	1(%ebx),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1342
	decl	-16(%ebp)
	.align 2
Lj1343:
	incl	-16(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_TYPINFO_GETENUMNAME$PTYPEINFO$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1344
	jmp	Lj1345
Lj1344:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	jmp	Lj1330
Lj1345:
	cmpl	-16(%ebp),%esi
	jg	Lj1343
Lj1342:
Lj1330:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1331
	call	LFPC_RERAISE$stub
Lj1331:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADFLOATPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADFLOATPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-64(%ebp)
	call	Lj1363
Lj1363:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1364
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1363(%ebx),%eax
	movb	3(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld3$non_lazy_ptr-Lj1363(%ebx),%edx
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	call	L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub
	fstpt	(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED$stub
Lj1364:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1365
	call	LFPC_RERAISE$stub
Lj1365:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADINT64PROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADINT64PROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADLSTRINGPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADLSTRINGPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADWCHARPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADWCHARPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADVARIANTPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADVARIANTPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj1418
Lj1418:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1418(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1419
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1418(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_assign$ANSISTRING$$VARIANT$stub
	leal	-72(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$stub
Lj1419:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1418(%ebx),%eax
	movl	%eax,%edx
	leal	-72(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1420
	call	LFPC_RERAISE$stub
Lj1420:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADSETPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADSETPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj1441
Lj1441:
	popl	-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-36(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj1442
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO$stub
	call	L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub
	movl	1(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-124(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld19$non_lazy_ptr-Lj1441(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%ebx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj1460
	decl	-28(%ebp)
	.align 2
Lj1461:
	incl	-28(%ebp)
	leal	-112(%ebp),%edi
	movl	-124(%ebp),%edx
	movl	L_$RTTIUTILS$_Ld19$non_lazy_ptr-Lj1441(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	leal	-116(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-112(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING$stub
	leal	-116(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-120(%ebp)
	testl	%eax,%eax
	jne	Lj1480
	movl	-36(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1490
	jmp	Lj1491
Lj1490:
	movzbl	-24(%ebp),%eax
	btsl	%eax,-20(%ebp)
Lj1491:
Lj1480:
	call	LFPC_POPADDRSTACK$stub
	movl	-120(%ebp),%eax
	testl	%eax,%eax
	je	Lj1482
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1482
Lj1482:
	cmpl	-28(%ebp),%ebx
	jg	Lj1461
Lj1460:
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
Lj1442:
	call	LFPC_POPADDRSTACK$stub
	leal	-36(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-36(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj1443
	call	LFPC_RERAISE$stub
Lj1443:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGSPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGSPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%esi,-152(%ebp)
	movl	%edi,-148(%ebp)
	call	Lj1505
Lj1505:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-92(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1506
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	L_VMT_CLASSES_TSTRINGS$non_lazy_ptr-Lj1505(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1515
	jmp	Lj1516
Lj1515:
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	leal	-96(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-96(%ebp),%edx
	leal	-92(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*112(%esi)
	movl	-92(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1505(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	L_$RTTIUTILS$_Ld20$non_lazy_ptr-Lj1505(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	L_$RTTIUTILS$_Ld13$non_lazy_ptr-Lj1505(%ebx),%ecx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*100(%esi)
	movl	-92(%ebp),%eax
	leal	-96(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1559
	jmp	Lj1560
Lj1559:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1505(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-20(%ebp)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj1567
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1572
	decl	-24(%ebp)
	.align 2
Lj1573:
	incl	-24(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	$0,%eax
	movl	L_$RTTIUTILS$_Ld15$non_lazy_ptr-Lj1505(%ebx),%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-92(%ebp),%ecx
	movl	$0,4(%esp)
	leal	-96(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	call	*100(%edi)
	movl	-96(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%esi
	jg	Lj1573
Lj1572:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj1567:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj1568
	decl	%eax
	testl	%eax,%eax
	je	Lj1569
Lj1569:
	call	LFPC_RERAISE$stub
Lj1568:
Lj1560:
Lj1516:
Lj1506:
	call	LFPC_POPADDRSTACK$stub
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1507
	call	LFPC_RERAISE$stub
Lj1507:
	movl	-156(%ebp),%ebx
	movl	-152(%ebp),%esi
	movl	-148(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADCOMPONENTPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADCOMPONENTPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj1609
Lj1609:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1610
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1613
	jmp	Lj1614
Lj1613:
	jmp	Lj1610
Lj1614:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%edx
	movl	L_$RTTIUTILS$_Ld17$non_lazy_ptr-Lj1609(%ebx),%eax
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1619
	jmp	Lj1620
Lj1619:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub
	jmp	Lj1610
Lj1620:
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1641
	jmp	Lj1642
Lj1641:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	leal	-16(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-72(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	jmp	Lj1667
Lj1642:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
Lj1667:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1674
	jmp	Lj1675
Lj1674:
	movl	-16(%ebp),%eax
	call	L_RTTIUTILS_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT$stub
	movl	%eax,-24(%ebp)
	jmp	Lj1680
Lj1675:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj1680:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1683
	jmp	Lj1684
Lj1683:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__FINDCOMPONENT$ANSISTRING$$TCOMPONENT$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT$stub
Lj1684:
Lj1610:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1611
	call	LFPC_RERAISE$stub
Lj1611:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADCLASSPROPERTY$ANSISTRING$PPROPINFO
_RTTIUTILS_TPROPSSTORAGE_$__LOADCLASSPROPERTY$ANSISTRING$PPROPINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	call	Lj1708
Lj1708:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-216(%ebp)
	movl	$0,-212(%ebp)
	movl	$0,-144(%ebp)
	movl	$0,-140(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-116(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1711
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1720
	jmp	Lj1721
Lj1720:
	movl	-32(%ebp),%edx
	movl	L_VMT_CLASSES_TSTRINGS$non_lazy_ptr-Lj1708(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1722
	jmp	Lj1723
Lj1722:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGSPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj1734
Lj1723:
	movl	-32(%ebp),%edx
	movl	L_VMT_CLASSES_TCOLLECTION$non_lazy_ptr-Lj1708(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1735
	jmp	Lj1736
Lj1735:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	leal	-84(%ebp),%ecx
	leal	-108(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-112(%ebp)
	testl	%eax,%eax
	jne	Lj1745
	movl	-32(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%eax
	movl	%eax,(%esp)
	leal	-140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-140(%ebp)
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	leal	-144(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-144(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	leal	-140(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-140(%ebp),%eax
	movl	%eax,-132(%ebp)
	movl	$11,-136(%ebp)
	movl	L_$RTTIUTILS$_Ld13$non_lazy_ptr-Lj1708(%ebx),%eax
	movl	%eax,-124(%ebp)
	movl	$11,-128(%ebp)
	leal	-136(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1708(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-120(%ebp),%esi
	leal	-116(%ebp),%eax
	movl	%eax,(%esp)
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%edi
	movl	%esi,%ecx
	call	*100(%edi)
	movl	-116(%ebp),%eax
	movl	-24(%ebp),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-32(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	cmpl	-24(%ebp),%eax
	setneb	-25(%ebp)
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	leal	-156(%ebp),%ecx
	leal	-180(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-184(%ebp)
	testl	%eax,%eax
	jne	Lj1797
	cmpb	$0,-25(%ebp)
	jne	Lj1801
	jmp	Lj1802
Lj1801:
	movl	-32(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
Lj1802:
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1806
	decl	-20(%ebp)
	.align 2
Lj1807:
	incl	-20(%ebp)
	cmpb	$0,-25(%ebp)
	jne	Lj1808
	jmp	Lj1809
Lj1808:
	movl	-32(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
Lj1809:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-140(%ebp)
	leal	-140(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	$0,-192(%ebp)
	leal	-192(%ebp),%edx
	movl	$0,%eax
	movl	L_$RTTIUTILS$_Ld15$non_lazy_ptr-Lj1708(%ebx),%edi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-140(%ebp),%edx
	movl	L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr-Lj1708(%ebx),%eax
	movl	(%eax),%ecx
	leal	-144(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edi
	leal	-140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-140(%ebp)
	leal	-140(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-204(%ebp)
	movl	$11,-208(%ebp)
	leal	-212(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-212(%ebp)
	leal	-216(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-216(%ebp)
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	leal	-216(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-216(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	leal	-212(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-212(%ebp),%eax
	movl	%eax,-196(%ebp)
	movl	$11,-200(%ebp)
	leal	-208(%ebp),%edx
	movl	$1,%ecx
	movl	L_$RTTIUTILS$_Ld11$non_lazy_ptr-Lj1708(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-140(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	%ebp,%eax
	movl	%edi,%ecx
	call	L_RTTIUTILS_TPROPSSTORAGE_$_LOADCLASSPROPERTY$ANSISTRING$PPROPINFO_LOADOBJECTPROPS$crcE90A4070$stub
	cmpl	-20(%ebp),%esi
	jg	Lj1807
Lj1806:
Lj1797:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%edx),%edx
	call	*152(%edx)
	movl	-184(%ebp),%eax
	testl	%eax,%eax
	je	Lj1798
	decl	%eax
	testl	%eax,%eax
	je	Lj1799
Lj1799:
	call	LFPC_RERAISE$stub
Lj1798:
Lj1745:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-112(%ebp),%eax
	testl	%eax,%eax
	je	Lj1746
	decl	%eax
	testl	%eax,%eax
	je	Lj1747
Lj1747:
	call	LFPC_RERAISE$stub
Lj1746:
	jmp	Lj1860
Lj1736:
	movl	-32(%ebp),%edx
	movl	L_VMT_CLASSES_TCOMPONENT$non_lazy_ptr-Lj1708(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1861
	jmp	Lj1862
Lj1861:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADCOMPONENTPROPERTY$ANSISTRING$PPROPINFO$stub
	jmp	Lj1711
Lj1862:
Lj1860:
Lj1734:
Lj1721:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	leal	-228(%ebp),%ecx
	leal	-252(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-256(%ebp)
	testl	%eax,%eax
	jne	Lj1877
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%esp)
	leal	-216(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-216(%ebp)
	leal	-212(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-212(%ebp)
	movl	-8(%ebp),%eax
	leal	27(%eax),%eax
	leal	-212(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-212(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	leal	-216(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-216(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	%ebp,%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$_LOADCLASSPROPERTY$ANSISTRING$PPROPINFO_LOADOBJECTPROPS$crcE90A4070$stub
Lj1877:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-256(%ebp),%eax
	testl	%eax,%eax
	je	Lj1878
	decl	%eax
	testl	%eax,%eax
	je	Lj1879
Lj1879:
	call	LFPC_RERAISE$stub
Lj1878:
Lj1711:
	call	LFPC_POPADDRSTACK$stub
	leal	-216(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-216(%ebp)
	leal	-212(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-212(%ebp)
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-140(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1712
	call	LFPC_RERAISE$stub
Lj1712:
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$_LOADCLASSPROPERTY$ANSISTRING$PPROPINFO_LOADOBJECTPROPS$crcE90A4070
_RTTIUTILS_TPROPSSTORAGE_$_LOADCLASSPROPERTY$ANSISTRING$PPROPINFO_LOADOBJECTPROPS$crcE90A4070:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj1710
Lj1710:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%edx
	movl	%edx,20(%ebx)
	movl	24(%eax),%eax
	movl	%eax,24(%ebx)
	movl	$134217662,(%esp)
	movl	4(%ebx),%ecx
	movl	L_VMT_RTTIUTILS_TPROPINFOLIST$non_lazy_ptr-Lj1710(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST$stub
	movl	%eax,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1921
	movl	-20(%ebp),%eax
	movl	8(%eax),%edi
	decl	%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj1926
	decl	-16(%ebp)
	.align 2
Lj1927:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__GET$LONGINT$$PPROPINFO$stub
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO$stub
	cmpl	-16(%ebp),%edi
	jg	Lj1927
Lj1926:
Lj1921:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1922
	decl	%eax
	testl	%eax,%eax
	je	Lj1923
Lj1923:
	call	LFPC_RERAISE$stub
Lj1922:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREPROPERTIES$TSTRINGS
_RTTIUTILS_TPROPSSTORAGE_$__STOREPROPERTIES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj1939
Lj1939:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-100(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1940
	movl	$134217662,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RTTIUTILS_TPROPINFOLIST$non_lazy_ptr-Lj1939(%edi),%edx
	movl	$0,%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1953
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1958
	decl	-12(%ebp)
	.align 2
Lj1959:
	incl	-12(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-100(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1959
Lj1958:
Lj1953:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1954
	decl	%eax
	testl	%eax,%eax
	je	Lj1955
Lj1955:
	call	LFPC_RERAISE$stub
Lj1954:
Lj1940:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1941
	call	LFPC_RERAISE$stub
Lj1941:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADPROPERTIES$TSTRINGS
_RTTIUTILS_TPROPSSTORAGE_$__LOADPROPERTIES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj1979
Lj1979:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-100(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1980
	movl	$134217662,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RTTIUTILS_TPROPINFOLIST$non_lazy_ptr-Lj1979(%edi),%edx
	movl	$0,%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1993
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1998
	decl	-12(%ebp)
	.align 2
Lj1999:
	incl	-12(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-100(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1999
Lj1998:
Lj1993:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1994
	decl	%eax
	testl	%eax,%eax
	je	Lj1995
Lj1995:
	call	LFPC_RERAISE$stub
Lj1994:
Lj1980:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1981
	call	LFPC_RERAISE$stub
Lj1981:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__CREATEINFOLIST$TCOMPONENT$TSTRINGS$$TSTRINGS
_RTTIUTILS_TPROPSSTORAGE_$__CREATEINFOLIST$TCOMPONENT$TSTRINGS$$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-160(%ebp)
	movl	%esi,-156(%ebp)
	movl	%edi,-152(%ebp)
	call	Lj2019
Lj2019:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_RTTIUTILS_UPDATESTOREDLIST$TCOMPONENT$TSTRINGS$BOOLEAN$stub
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj2019(%edi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj2034
	movl	-16(%ebp),%eax
	movb	$1,%dl
	call	L_CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj2043
	decl	-20(%ebp)
	.align 2
Lj2044:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	cmpl	$0,%eax
	jl	Lj2053
	jmp	Lj2054
Lj2053:
	movl	$134217662,(%esp)
	movl	-24(%ebp),%ecx
	movl	L_VMT_RTTIUTILS_TPROPINFOLIST$non_lazy_ptr-Lj2019(%edi),%edx
	movl	$0,%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST$stub
	movl	%eax,-28(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj2075
	movl	-24(%ebp),%eax
	movl	16(%eax),%edx
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	(%esi),%esi
	call	*168(%esi)
Lj2075:
	call	LFPC_POPADDRSTACK$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj2077
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj2086
	movl	-28(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2086:
	call	LFPC_POPADDRSTACK$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj2085
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2085:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2077
Lj2077:
Lj2054:
	cmpl	-20(%ebp),%ebx
	jg	Lj2044
Lj2043:
Lj2034:
	call	LFPC_POPADDRSTACK$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj2036
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj2019(%edi),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj2089
	movl	%eax,-72(%ebp)
	leal	-148(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj2090
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	$0,-16(%ebp)
Lj2090:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj2096
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2096:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2036
Lj2089:
	call	LFPC_RERAISE$stub
Lj2036:
	movl	-16(%ebp),%eax
	movl	-160(%ebp),%ebx
	movl	-156(%ebp),%esi
	movl	-152(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__FREEINFOLISTS$TSTRINGS
_RTTIUTILS_TPROPSSTORAGE_$__FREEINFOLISTS$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj2100
	incl	-12(%ebp)
	.align 2
Lj2101:
	decl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj2101
Lj2100:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__LOADOBJECTSPROPS$TCOMPONENT$TSTRINGS
_RTTIUTILS_TPROPSSTORAGE_$__LOADOBJECTSPROPS$TCOMPONENT$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj2115
Lj2115:
	popl	-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-120(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj2116
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__CREATEINFOLIST$TCOMPONENT$TSTRINGS$$TSTRINGS$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2127
	jmp	Lj2128
Lj2127:
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj2129
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj2136
	decl	-20(%ebp)
	.align 2
Lj2137:
	incl	-20(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-120(%ebp),%eax
	leal	-36(%ebp),%ecx
	leal	-32(%ebp),%edx
	call	L_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2140
	jmp	Lj2141
Lj2140:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edi
	movl	16(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%edi),%eax
	movl	%eax,12(%ebx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2168
	jmp	Lj2169
Lj2168:
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-124(%ebp),%eax
	movl	L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr-Lj2115(%eax),%ecx
	movl	(%ecx),%ecx
	leal	-120(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-120(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-120(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2184
	jmp	Lj2185
Lj2184:
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO$stub
Lj2185:
Lj2169:
Lj2141:
	cmpl	-20(%ebp),%esi
	jg	Lj2137
Lj2136:
Lj2129:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__FREEINFOLISTS$TSTRINGS$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj2130
	decl	%eax
	testl	%eax,%eax
	je	Lj2131
Lj2131:
	call	LFPC_RERAISE$stub
Lj2130:
Lj2128:
Lj2116:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	leal	-36(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-36(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj2117
	call	LFPC_RERAISE$stub
Lj2117:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__STOREOBJECTSPROPS$TCOMPONENT$TSTRINGS
_RTTIUTILS_TPROPSSTORAGE_$__STOREOBJECTSPROPS$TCOMPONENT$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj2213
Lj2213:
	popl	-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-120(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj2214
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__CREATEINFOLIST$TCOMPONENT$TSTRINGS$$TSTRINGS$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2225
	jmp	Lj2226
Lj2225:
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj2227
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj2234
	decl	-20(%ebp)
	.align 2
Lj2235:
	incl	-20(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-120(%ebp),%eax
	leal	-36(%ebp),%ecx
	leal	-32(%ebp),%edx
	call	L_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2238
	jmp	Lj2239
Lj2238:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edi
	movl	16(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	16(%edi),%eax
	movl	%eax,12(%ebx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2266
	jmp	Lj2267
Lj2266:
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-124(%ebp),%eax
	movl	L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr-Lj2213(%eax),%ecx
	movl	(%ecx),%ecx
	leal	-120(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-120(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-120(%ebp),%eax
	movl	%eax,12(%ebx)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2282
	jmp	Lj2283
Lj2282:
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO$stub
Lj2283:
Lj2267:
Lj2239:
	cmpl	-20(%ebp),%esi
	jg	Lj2235
Lj2234:
Lj2227:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RTTIUTILS_TPROPSSTORAGE_$__FREEINFOLISTS$TSTRINGS$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj2228
	decl	%eax
	testl	%eax,%eax
	je	Lj2229
Lj2229:
	call	LFPC_RERAISE$stub
Lj2228:
Lj2226:
Lj2214:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	leal	-36(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-36(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj2215
	call	LFPC_RERAISE$stub
Lj2215:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__CREATESTORAGE$$TPROPSSTORAGE
_RTTIUTILS_TPROPSSTORAGE_$__CREATESTORAGE$$TPROPSSTORAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2311
Lj2311:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_RTTIUTILS_TPROPSSTORAGE$non_lazy_ptr-Lj2311(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj2320
	jmp	Lj2321
Lj2320:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	call	*%ebx
	jmp	Lj2332
Lj2321:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj2332:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj2337
	jmp	Lj2338
Lj2337:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
Lj2338:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RTTIUTILS_TPROPSSTORAGE_$__ERASESECTION$ANSISTRING
_RTTIUTILS_TPROPSSTORAGE_$__ERASESECTION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj2349
	jmp	Lj2350
Lj2349:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	36(%ecx),%ecx
	call	*%ecx
Lj2350:
	leave
	ret

.text
	.align 4
.globl	_INIT$_RTTIUTILS
_INIT$_RTTIUTILS:
.reference __RTTIUTILS_init_implicit
.globl	__RTTIUTILS_init_implicit
__RTTIUTILS_init_implicit:
.reference _INIT$_RTTIUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_RTTIUTILS
_FINALIZE$_RTTIUTILS:
.reference __RTTIUTILS_finalize_implicit
.globl	__RTTIUTILS_finalize_implicit
__RTTIUTILS_finalize_implicit:
.reference _FINALIZE$_RTTIUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2358
Lj2358:
	popl	%ebx
	movl	L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr-Lj2358(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr-Lj2358(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_RTTIUTILS_FINDGLOBALCOMPONENTCALLBACK
.data
.zerofill __DATA, __common, _U_RTTIUTILS_FINDGLOBALCOMPONENTCALLBACK, 4,2



.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld22
_$RTTIUTILS$_Ld22:
	.byte	13
	.ascii	"TPropInfoList"

.const_data
	.align 2
.globl	_VMT_RTTIUTILS_TPROPINFOLIST
_VMT_RTTIUTILS_TPROPINFOLIST:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RTTIUTILS$_Ld22
	.long	0,0
	.long	_$RTTIUTILS$_Ld23
	.long	_RTTI_RTTIUTILS_TPROPINFOLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RTTIUTILS_TPROPINFOLIST_$__DESTROY
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
.globl	_$RTTIUTILS$_Ld25
_$RTTIUTILS$_Ld25:
	.byte	13
	.ascii	"TPropsStorage"

.const_data
	.align 2
.globl	_VMT_RTTIUTILS_TPROPSSTORAGE
_VMT_RTTIUTILS_TPROPSSTORAGE:
	.long	44,-44
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RTTIUTILS$_Ld25
	.long	0,0
	.long	_$RTTIUTILS$_Ld26
	.long	_RTTI_RTTIUTILS_TPROPSSTORAGE
	.long	_INIT_RTTIUTILS_TPROPSSTORAGE
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
	.long	_RTTIUTILS_TPROPSSTORAGE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
	.long	_RTTIUTILS_TPROPSSTORAGE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING
	.long	_RTTIUTILS_TPROPSSTORAGE_$__ERASESECTION$ANSISTRING
	.long	_RTTIUTILS_TPROPSSTORAGE_$__GETITEMNAME$ANSISTRING$$ANSISTRING
	.long	_RTTIUTILS_TPROPSSTORAGE_$__CREATESTORAGE$$TPROPSSTORAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_RTTIUTILS
_THREADVARLIST_RTTIUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld2
_$RTTIUTILS$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$RTTIUTILS$_Ld1
.globl	_$RTTIUTILS$_Ld1
_$RTTIUTILS$_Ld1:
.reference _$RTTIUTILS$_Ld2
	.ascii	"_\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_RTTIUTILS_SPROPNAMEDELIMITER
_TC_RTTIUTILS_SPROPNAMEDELIMITER:
	.long	_$RTTIUTILS$_Ld1

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld4
_$RTTIUTILS$_Ld4:
	.short	0,1
	.long	0,-1,1
.reference _$RTTIUTILS$_Ld3
.globl	_$RTTIUTILS$_Ld3
_$RTTIUTILS$_Ld3:
.reference _$RTTIUTILS$_Ld4
	.ascii	".\000"

.data
	.align 2
.globl	_TC_RTTIUTILS_TPROPSSTORAGE_$_STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING_PRECISIONS
_TC_RTTIUTILS_TPROPSSTORAGE_$_STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING_PRECISIONS:
	.long	7,15,18,18,19

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld6
_$RTTIUTILS$_Ld6:
	.short	0,1
	.long	0,-1,1
.reference _$RTTIUTILS$_Ld5
.globl	_$RTTIUTILS$_Ld5
_$RTTIUTILS$_Ld5:
.reference _$RTTIUTILS$_Ld6
	.ascii	"[\000"

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld8
_$RTTIUTILS$_Ld8:
	.short	0,1
	.long	0,-1,1
.reference _$RTTIUTILS$_Ld7
.globl	_$RTTIUTILS$_Ld7
_$RTTIUTILS$_Ld7:
.reference _$RTTIUTILS$_Ld8
	.ascii	",\000"

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld10
_$RTTIUTILS$_Ld10:
	.short	0,1
	.long	0,-1,1
.reference _$RTTIUTILS$_Ld9
.globl	_$RTTIUTILS$_Ld9
_$RTTIUTILS$_Ld9:
.reference _$RTTIUTILS$_Ld10
	.ascii	"]\000"

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld12
_$RTTIUTILS$_Ld12:
	.short	0,1
	.long	0,-1,5
.reference _$RTTIUTILS$_Ld11
.globl	_$RTTIUTILS$_Ld11
_$RTTIUTILS$_Ld11:
.reference _$RTTIUTILS$_Ld12
	.ascii	"%s.%s\000"

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld14
_$RTTIUTILS$_Ld14:
	.short	0,1
	.long	0,-1,5
.reference _$RTTIUTILS$_Ld13
.globl	_$RTTIUTILS$_Ld13
_$RTTIUTILS$_Ld13:
.reference _$RTTIUTILS$_Ld14
	.ascii	"Count\000"

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld16
_$RTTIUTILS$_Ld16:
	.short	0,1
	.long	0,-1,6
.reference _$RTTIUTILS$_Ld15
.globl	_$RTTIUTILS$_Ld15
_$RTTIUTILS$_Ld15:
.reference _$RTTIUTILS$_Ld16
	.ascii	"Item%d\000"

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld18
_$RTTIUTILS$_Ld18:
	.short	0,1
	.long	0,-1,6
.reference _$RTTIUTILS$_Ld17
.globl	_$RTTIUTILS$_Ld17
_$RTTIUTILS$_Ld17:
.reference _$RTTIUTILS$_Ld18
	.ascii	"(null)\000"

.const
	.align 3
.globl	_$RTTIUTILS$_Ld19
_$RTTIUTILS$_Ld19:
	.byte	0,0,0,0,1,16,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld21
_$RTTIUTILS$_Ld21:
	.short	0,1
	.long	0,-1,1
.reference _$RTTIUTILS$_Ld20
.globl	_$RTTIUTILS$_Ld20
_$RTTIUTILS$_Ld20:
.reference _$RTTIUTILS$_Ld21
	.ascii	"0\000"
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

L_SYSTEM_TOBJECT_$__CLASSINFO$$POINTER$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT$stub:
.indirect_symbol _TYPINFO_GETPROPLIST$PTYPEINFO$TTYPEKINDS$PPROPLIST$BOOLEAN$$LONGINT
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

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
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

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPINFOLIST_$__CONTAINS$PPROPINFO$$BOOLEAN$stub:
.indirect_symbol _RTTIUTILS_TPROPINFOLIST_$__CONTAINS$PPROPINFO$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPINFOLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _RTTIUTILS_TPROPINFOLIST_$__DELETE$LONGINT
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

L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
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

L_RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _RTTIUTILS_PARSESTOREDITEM$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_CREATESTOREDITEM$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_CREATESTOREDITEM$ANSISTRING$ANSISTRING$$ANSISTRING
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

L_CLASSES_TCOMPONENT_$__FINDCOMPONENT$ANSISTRING$$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__FINDCOMPONENT$ANSISTRING$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_REPLACECOMPONENTNAME$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_REPLACECOMPONENTNAME$ANSISTRING$ANSISTRING$$ANSISTRING
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

L_RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREINTEGERPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STORECHARPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORECHARPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STOREENUMPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREENUMPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STOREWCHARPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREWCHARPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORELSTRINGPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STOREVARIANTPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREVARIANTPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STOREINT64PROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREINT64PROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STORESETPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORESETPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADINTEGERPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADINTEGERPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADCHARPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADCHARPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADENUMPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADENUMPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADFLOATPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADFLOATPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADWCHARPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADWCHARPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADLSTRINGPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADLSTRINGPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADVARIANTPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADVARIANTPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADINT64PROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADINT64PROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADSETPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADSETPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADCLASSPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADCLASSPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STORECLASSPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORECLASSPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64$stub:
.indirect_symbol _TYPINFO_GETORDPROP$TOBJECT$PPROPINFO$$INT64
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

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO$stub:
.indirect_symbol _RTTIUTILS_GETPROPTYPE$PPROPINFO$$PTYPEINFO
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

L_TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED$stub:
.indirect_symbol _TYPINFO_GETFLOATPROP$TOBJECT$PPROPINFO$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA$stub:
.indirect_symbol _TYPINFO_GETTYPEDATA$PTYPEINFO$$PTYPEDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOSTRF$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTRF$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _TYPINFO_GETSTRPROP$TOBJECT$PPROPINFO$$ANSISTRING
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

L_TYPINFO_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT$stub:
.indirect_symbol _TYPINFO_GETVARIANTPROP$TOBJECT$PPROPINFO$$VARIANT
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

LFPC_INITIALIZE$stub:
.indirect_symbol FPC_INITIALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64$stub:
.indirect_symbol _TYPINFO_GETINT64PROP$TOBJECT$PPROPINFO$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT$stub:
.indirect_symbol _TYPINFO_GETOBJECTPROP$TOBJECT$PPROPINFO$$TOBJECT
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
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

L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
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

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGSPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORESTRINGSPROPERTY$PPROPINFO$$ANSISTRING
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

L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$_STORECLASSPROPERTY$PPROPINFO$$ANSISTRING_STOREOBJECTPROPS$crcE90A4070$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$_STORECLASSPROPERTY$PPROPINFO$$ANSISTRING_STOREOBJECTPROPS$crcE90A4070
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

L_RTTIUTILS_TPROPSSTORAGE_$__STORECOMPONENTPROPERTY$PPROPINFO$$ANSISTRING$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STORECOMPONENTPROPERTY$PPROPINFO$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST$stub:
.indirect_symbol _RTTIUTILS_TPROPINFOLIST_$__CREATE$TOBJECT$TTYPEKINDS$$TPROPINFOLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPINFOLIST_$__GET$LONGINT$$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPINFOLIST_$__GET$LONGINT$$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__STOREANYPROPERTY$PPROPINFO
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

L_TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64$stub:
.indirect_symbol _TYPINFO_SETORDPROP$TOBJECT$PPROPINFO$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED$stub:
.indirect_symbol _SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED$stub:
.indirect_symbol _TYPINFO_SETFLOATPROP$TOBJECT$PPROPINFO$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub:
.indirect_symbol _SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64$stub:
.indirect_symbol _TYPINFO_SETINT64PROP$TOBJECT$PPROPINFO$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING$stub:
.indirect_symbol _TYPINFO_SETSTRPROP$TOBJECT$PPROPINFO$ANSISTRING
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

L_TYPINFO_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT$stub:
.indirect_symbol _TYPINFO_SETVARIANTPROP$TOBJECT$PPROPINFO$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT$stub:
.indirect_symbol _STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT$stub:
.indirect_symbol _TYPINFO_GETENUMVALUE$PTYPEINFO$ANSISTRING$$LONGINT
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

L_RTTIUTILS_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT$stub:
.indirect_symbol _RTTIUTILS_FINDGLOBALCOMPONENT$ANSISTRING$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TYPINFO_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT$stub:
.indirect_symbol _TYPINFO_SETOBJECTPROP$TOBJECT$PPROPINFO$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGSPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADSTRINGSPROPERTY$ANSISTRING$PPROPINFO
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

L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$_LOADCLASSPROPERTY$ANSISTRING$PPROPINFO_LOADOBJECTPROPS$crcE90A4070$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$_LOADCLASSPROPERTY$ANSISTRING$PPROPINFO_LOADOBJECTPROPS$crcE90A4070
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADCOMPONENTPROPERTY$ANSISTRING$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADCOMPONENTPROPERTY$ANSISTRING$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__LOADANYPROPERTY$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO$stub:
.indirect_symbol _RTTIUTILS_TPROPINFOLIST_$__FIND$ANSISTRING$$PPROPINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_UPDATESTOREDLIST$TCOMPONENT$TSTRINGS$BOOLEAN$stub:
.indirect_symbol _RTTIUTILS_UPDATESTOREDLIST$TCOMPONENT$TSTRINGS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN$stub:
.indirect_symbol _CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN
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

L_RTTIUTILS_TPROPSSTORAGE_$__CREATEINFOLIST$TCOMPONENT$TSTRINGS$$TSTRINGS$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__CREATEINFOLIST$TCOMPONENT$TSTRINGS$$TSTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RTTIUTILS_TPROPSSTORAGE_$__FREEINFOLISTS$TSTRINGS$stub:
.indirect_symbol _RTTIUTILS_TPROPSSTORAGE_$__FREEINFOLISTS$TSTRINGS
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
.globl	_$RTTIUTILS$_Ld23
_$RTTIUTILS$_Ld23:
	.short	0
	.long	_$RTTIUTILS$_Ld24
	.align 2
.globl	_$RTTIUTILS$_Ld24
_$RTTIUTILS$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_TPROPINFOLIST
_INIT_RTTIUTILS_TPROPINFOLIST:
	.byte	15,13
	.ascii	"TPropInfoList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RTTIUTILS_TPROPINFOLIST
_RTTI_RTTIUTILS_TPROPINFOLIST:
	.byte	15,13
	.ascii	"TPropInfoList"
	.long	_VMT_RTTIUTILS_TPROPINFOLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"rttiutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_TREADSTREVENT
_INIT_RTTIUTILS_TREADSTREVENT:
	.byte	6,13
	.ascii	"TReadStrEvent"
	.byte	1,3,2,8
	.ascii	"ASection"
	.ascii	"\012AnsiString"
	.byte	2,4
	.ascii	"Item"
	.ascii	"\012AnsiString"
	.byte	2,7
	.ascii	"Default"
	.ascii	"\012AnsiString"
	.ascii	"\012AnsiString"
	.long	_RTTI_SYSTEM_ANSISTRING
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_RTTI_RTTIUTILS_TREADSTREVENT
_RTTI_RTTIUTILS_TREADSTREVENT:
	.byte	6,13
	.ascii	"TReadStrEvent"
	.byte	1,3,2,8
	.ascii	"ASection"
	.ascii	"\012AnsiString"
	.byte	2,4
	.ascii	"Item"
	.ascii	"\012AnsiString"
	.byte	2,7
	.ascii	"Default"
	.ascii	"\012AnsiString"
	.ascii	"\012AnsiString"
	.long	_RTTI_SYSTEM_ANSISTRING
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_TWRITESTREVENT
_INIT_RTTIUTILS_TWRITESTREVENT:
	.byte	6,14
	.ascii	"TWriteStrEvent"
	.byte	0,3,2,8
	.ascii	"ASection"
	.ascii	"\012AnsiString"
	.byte	2,4
	.ascii	"Item"
	.ascii	"\012AnsiString"
	.byte	2,5
	.ascii	"Value"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_RTTI_RTTIUTILS_TWRITESTREVENT
_RTTI_RTTIUTILS_TWRITESTREVENT:
	.byte	6,14
	.ascii	"TWriteStrEvent"
	.byte	0,3,2,8
	.ascii	"ASection"
	.ascii	"\012AnsiString"
	.byte	2,4
	.ascii	"Item"
	.ascii	"\012AnsiString"
	.byte	2,5
	.ascii	"Value"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_TERASESECTEVENT
_INIT_RTTIUTILS_TERASESECTEVENT:
	.byte	6,15
	.ascii	"TEraseSectEvent"
	.byte	0,1,2,8
	.ascii	"ASection"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_RTTI_RTTIUTILS_TERASESECTEVENT
_RTTI_RTTIUTILS_TERASESECTEVENT:
	.byte	6,15
	.ascii	"TEraseSectEvent"
	.byte	0,1,2,8
	.ascii	"ASection"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF158
_INIT_RTTIUTILS_DEF158:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF161
_INIT_RTTIUTILS_DEF161:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF165
_INIT_RTTIUTILS_DEF165:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF139
_INIT_RTTIUTILS_DEF139:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF148
_INIT_RTTIUTILS_DEF148:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF203
_INIT_RTTIUTILS_DEF203:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF207
_INIT_RTTIUTILS_DEF207:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF185
_INIT_RTTIUTILS_DEF185:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$RTTIUTILS$_Ld26
_$RTTIUTILS$_Ld26:
	.short	0
	.long	_$RTTIUTILS$_Ld27
	.align 2
.globl	_$RTTIUTILS$_Ld27
_$RTTIUTILS$_Ld27:
	.short	0

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_TPROPSSTORAGE
_INIT_RTTIUTILS_TPROPSSTORAGE:
	.byte	15,13
	.ascii	"TPropsStorage"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_RTTIUTILS_TPROPSSTORAGE
_RTTI_RTTIUTILS_TPROPSSTORAGE:
	.byte	15,13
	.ascii	"TPropsStorage"
	.long	_VMT_RTTIUTILS_TPROPSSTORAGE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"rttiutils"
	.short	0

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_DEF106
_INIT_RTTIUTILS_DEF106:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RTTIUTILS_TFINDCOMPONENTEVENT
_INIT_RTTIUTILS_TFINDCOMPONENTEVENT:
	.byte	23,19
	.ascii	"TFindComponentEvent"

.const_data
	.align 2
.globl	_RTTI_RTTIUTILS_TFINDCOMPONENTEVENT
_RTTI_RTTIUTILS_TFINDCOMPONENTEVENT:
	.byte	23,19
	.ascii	"TFindComponentEvent"
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
L_$RTTIUTILS$_Ld3$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_RTTIUTILS_FINDGLOBALCOMPONENTCALLBACK$non_lazy_ptr:
.indirect_symbol _U_RTTIUTILS_FINDGLOBALCOMPONENTCALLBACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_RTTIUTILS_TPROPSSTORAGE_$_STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING_PRECISIONS$non_lazy_ptr:
.indirect_symbol _TC_RTTIUTILS_TPROPSSTORAGE_$_STOREFLOATPROPERTY$PPROPINFO$$ANSISTRING_PRECISIONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_VARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld5$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld7$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld9$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld11$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGS$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld13$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld15$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld17$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TCOLLECTION$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TCOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_RTTIUTILS_SPROPNAMEDELIMITER$non_lazy_ptr:
.indirect_symbol _TC_RTTIUTILS_SPROPNAMEDELIMITER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TCOMPONENT$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TCOMPONENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RTTIUTILS_TPROPINFOLIST$non_lazy_ptr:
.indirect_symbol _VMT_RTTIUTILS_TPROPINFOLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld19$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$RTTIUTILS$_Ld20$non_lazy_ptr:
.indirect_symbol _$RTTIUTILS$_Ld20
	.long	0

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
L_VMT_RTTIUTILS_TPROPSSTORAGE$non_lazy_ptr:
.indirect_symbol _VMT_RTTIUTILS_TPROPSSTORAGE
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

