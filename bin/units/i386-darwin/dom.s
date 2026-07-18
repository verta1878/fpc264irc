# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR
_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-372(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-96(%ebp)
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
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-368(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-368(%ebp),%eax
	leal	-112(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-112(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	L_$DOM$_Ld5$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-104(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	leal	-96(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-96(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
Lj19:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj46
	jmp	Lj45
Lj46:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj44
	jmp	Lj45
Lj44:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj45:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-124(%ebp),%ecx
	leal	-368(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj50
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj52:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj50:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj49:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	movl	-372(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE
_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj59
	jmp	Lj60
Lj59:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj60:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj65
	jmp	Lj66
Lj65:
	jmp	Lj57
Lj66:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj69
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj73
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj73:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj74
	call	LFPC_RERAISE$stub
Lj74:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj85
Lj86:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj84
	jmp	Lj85
Lj84:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj85:
Lj69:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj71
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj90
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj91
	jmp	Lj92
Lj91:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj92:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj90:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj89:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj71
Lj71:
Lj57:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST
_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj99
	jmp	Lj100
Lj99:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj100:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj105
	jmp	Lj106
Lj105:
	jmp	Lj97
Lj106:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj109
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj113
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj113:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj114
	call	LFPC_RERAISE$stub
Lj114:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj126
	jmp	Lj125
Lj126:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj124
	jmp	Lj125
Lj124:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj125:
Lj109:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj111
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj130
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj131
	jmp	Lj132
Lj131:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj132:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj130:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj129
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj129:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj111
Lj111:
Lj97:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMWRONGDOCUMENT_$__CREATE$ANSISTRING$$EDOMWRONGDOCUMENT
_DOM_EDOMWRONGDOCUMENT_$__CREATE$ANSISTRING$$EDOMWRONGDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj139
	jmp	Lj140
Lj139:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj140:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj145
	jmp	Lj146
Lj145:
	jmp	Lj137
Lj146:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj149
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj153
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$4,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj153:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj154
	call	LFPC_RERAISE$stub
Lj154:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj166
	jmp	Lj165
Lj166:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj164
	jmp	Lj165
Lj164:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj165:
Lj149:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj151
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj170
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj171
	jmp	Lj172
Lj171:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj172:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj170:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj169
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj169:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj151
Lj151:
Lj137:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND
_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj179
	jmp	Lj180
Lj179:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj180:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj185
	jmp	Lj186
Lj185:
	jmp	Lj177
Lj186:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj189
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj193
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$8,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj193:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj194
	call	LFPC_RERAISE$stub
Lj194:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj206
	jmp	Lj205
Lj206:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj204
	jmp	Lj205
Lj204:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj205:
Lj189:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj191
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj210
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj211
	jmp	Lj212
Lj211:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj212:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj210:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj209
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj209:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj191
Lj191:
Lj177:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED
_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj219
	jmp	Lj220
Lj219:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj220:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj225
	jmp	Lj226
Lj225:
	jmp	Lj217
Lj226:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj229
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj233
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$9,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj233:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj234
	call	LFPC_RERAISE$stub
Lj234:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj246
	jmp	Lj245
Lj246:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj244
	jmp	Lj245
Lj244:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj245:
Lj229:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj231
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj250
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj251
	jmp	Lj252
Lj251:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj252:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj250:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj249
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj249:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj231
Lj231:
Lj217:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMINUSEATTRIBUTE_$__CREATE$ANSISTRING$$EDOMINUSEATTRIBUTE
_DOM_EDOMINUSEATTRIBUTE_$__CREATE$ANSISTRING$$EDOMINUSEATTRIBUTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj259
	jmp	Lj260
Lj259:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj260:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj265
	jmp	Lj266
Lj265:
	jmp	Lj257
Lj266:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj269
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj273
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$10,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj273:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj274
	call	LFPC_RERAISE$stub
Lj274:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj286
	jmp	Lj285
Lj286:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj284
	jmp	Lj285
Lj284:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj285:
Lj269:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj271
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj290
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj291
	jmp	Lj292
Lj291:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj292:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj290:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj289
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj289:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj271
Lj271:
Lj257:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMINVALIDSTATE_$__CREATE$ANSISTRING$$EDOMINVALIDSTATE
_DOM_EDOMINVALIDSTATE_$__CREATE$ANSISTRING$$EDOMINVALIDSTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj299
	jmp	Lj300
Lj299:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj300:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj305
	jmp	Lj306
Lj305:
	jmp	Lj297
Lj306:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj309
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj313
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$11,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj313:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj314
	call	LFPC_RERAISE$stub
Lj314:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj326
	jmp	Lj325
Lj326:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj324
	jmp	Lj325
Lj324:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj325:
Lj309:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj311
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj330
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj332:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj330:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj329
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj329:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj311
Lj311:
Lj297:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMSYNTAX_$__CREATE$ANSISTRING$$EDOMSYNTAX
_DOM_EDOMSYNTAX_$__CREATE$ANSISTRING$$EDOMSYNTAX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj339
	jmp	Lj340
Lj339:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj340:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj345
	jmp	Lj346
Lj345:
	jmp	Lj337
Lj346:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj349
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj353
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$12,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj353:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj354
	call	LFPC_RERAISE$stub
Lj354:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj366
	jmp	Lj365
Lj366:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj364
	jmp	Lj365
Lj364:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj365:
Lj349:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj351
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj370
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj371
	jmp	Lj372
Lj371:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj372:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj370:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj369
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj369:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj351
Lj351:
Lj337:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMINVALIDMODIFICATION_$__CREATE$ANSISTRING$$EDOMINVALIDMODIFICATION
_DOM_EDOMINVALIDMODIFICATION_$__CREATE$ANSISTRING$$EDOMINVALIDMODIFICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj379
	jmp	Lj380
Lj379:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj380:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj385
	jmp	Lj386
Lj385:
	jmp	Lj377
Lj386:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj389
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj393
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$13,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj393:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj394
	call	LFPC_RERAISE$stub
Lj394:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj406
	jmp	Lj405
Lj406:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj404
	jmp	Lj405
Lj404:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj405:
Lj389:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj391
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj410
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj411
	jmp	Lj412
Lj411:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj412:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj410:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj409
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj409:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj391
Lj391:
Lj377:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMNAMESPACE_$__CREATE$ANSISTRING$$EDOMNAMESPACE
_DOM_EDOMNAMESPACE_$__CREATE$ANSISTRING$$EDOMNAMESPACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj419
	jmp	Lj420
Lj419:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj420:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj425
	jmp	Lj426
Lj425:
	jmp	Lj417
Lj426:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj429
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj433
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$14,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj433:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj434
	call	LFPC_RERAISE$stub
Lj434:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj446
	jmp	Lj445
Lj446:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj444
	jmp	Lj445
Lj444:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj445:
Lj429:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj431
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj450
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj451
	jmp	Lj452
Lj451:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj452:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj450:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj449
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj449:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj431
Lj431:
Lj417:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_EDOMINVALIDACCESS_$__CREATE$ANSISTRING$$EDOMINVALIDACCESS
_DOM_EDOMINVALIDACCESS_$__CREATE$ANSISTRING$$EDOMINVALIDACCESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj459
	jmp	Lj460
Lj459:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj460:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj465
	jmp	Lj466
Lj465:
	jmp	Lj457
Lj466:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj469
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj473
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
Lj473:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj474
	call	LFPC_RERAISE$stub
Lj474:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj486
	jmp	Lj485
Lj486:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj484
	jmp	Lj485
Lj484:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj485:
Lj469:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj471
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj490
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj491
	jmp	Lj492
Lj491:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj492:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj490:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj489
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj489:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj471
Lj471:
Lj457:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj499
	jmp	Lj500
Lj499:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj500:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj505
	jmp	Lj506
Lj505:
	jmp	Lj497
Lj506:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj509
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj513
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
Lj513:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj514
	call	LFPC_RERAISE$stub
Lj514:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj524
	jmp	Lj523
Lj524:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj522
	jmp	Lj523
Lj522:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj523:
Lj509:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj511
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj528
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj529
	jmp	Lj530
Lj529:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj530:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj528:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj527
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj527:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj511
Lj511:
Lj497:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__DESTROY
_DOM_TDOMNODE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj537
	jmp	Lj538
Lj537:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj538:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj541
	jmp	Lj542
Lj541:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
Lj542:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj553
	jmp	Lj552
Lj553:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj551
	jmp	Lj552
Lj551:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj552:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__FREEINSTANCE
_DOM_TDOMNODE_$__FREEINSTANCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj558
	jmp	Lj559
Lj558:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__CLEANUPINSTANCE$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TNODEPOOL_$__FREENODE$TDOMNODE$stub
	jmp	Lj566
Lj559:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREEINSTANCE$stub
Lj566:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETCHILDNODES$$TDOMNODELIST
_DOM_TDOMNODE_$__GETCHILDNODES$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMDOCUMENT_$__GETCHILDNODELIST$TDOMNODE$$TDOMNODELIST$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE:
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
.globl	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE:
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
.globl	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP:
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
.globl	_DOM_TDOMNODE_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj600
Lj600:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj600(%ebx),%edx
	movl	L_$DOM$_Ld7$non_lazy_ptr-Lj600(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj600(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj612
Lj612:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj612(%ebx),%edx
	movl	L_$DOM$_Ld9$non_lazy_ptr-Lj612(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj612(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__DETACHCHILD$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_$__DETACHCHILD$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj624
Lj624:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj624(%ebx),%edx
	movl	L_$DOM$_Ld11$non_lazy_ptr-Lj624(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj624(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__HASCHILDNODES$$BOOLEAN
_DOM_TDOMNODE_$__HASCHILDNODES$$BOOLEAN:
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
.globl	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE
_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%ecx
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	call	Lj666
Lj666:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj667
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	-328(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$4,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	$0,%ecx
	movl	L_$DOM$_Ld13$non_lazy_ptr-Lj666(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj666(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj666(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-16(%ebp)
Lj667:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj668
	call	LFPC_RERAISE$stub
Lj668:
	movl	-16(%ebp),%eax
	movl	-332(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE:
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
.globl	_DOM_TDOMNODE_$__GETREVISION$$LONGINT
_DOM_TDOMNODE_$__GETREVISION$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	60(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__ISSUPPORTED$WIDESTRING$WIDESTRING$$BOOLEAN
_DOM_TDOMNODE_$__ISSUPPORTED$WIDESTRING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMIMPLEMENTATION_$__HASFEATURE$WIDESTRING$WIDESTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN:
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
.globl	_DOM_TDOMNODE_$__NORMALIZE
_DOM_TDOMNODE_$__NORMALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj721
	.align 2
Lj720:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$3,%eax
	je	Lj723
	jmp	Lj724
Lj723:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj729
	jmp	Lj730
Lj729:
	cmpl	$0,-16(%ebp)
	jne	Lj731
	jmp	Lj732
Lj731:
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__APPENDDATA$WIDESTRING$stub
	movl	-16(%ebp),%eax
	andl	$-9,8(%eax)
	jmp	Lj737
Lj732:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj721
Lj737:
Lj730:
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj746
Lj724:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-16(%ebp)
Lj746:
Lj721:
	cmpl	$0,-8(%ebp)
	jne	Lj720
	jmp	Lj722
Lj722:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETTEXTCONTENT$$WIDESTRING
_DOM_TDOMNODE_$__GETTEXTCONTENT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__SETTEXTCONTENT$WIDESTRING
_DOM_TDOMNODE_$__SETTEXTCONTENT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING
_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING
_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING
_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING
_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN
_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj785
	jmp	Lj786
Lj785:
	movl	-8(%ebp),%eax
	orl	$1,8(%eax)
	jmp	Lj787
Lj786:
	movl	-8(%ebp),%eax
	andl	$-2,8(%eax)
Lj787:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj793
	.align 2
Lj792:
	movb	-4(%ebp),%dl
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj793:
	cmpl	$0,-12(%ebp)
	jne	Lj792
	jmp	Lj794
Lj794:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	testb	%al,%al
	jne	Lj801
	jmp	Lj802
Lj801:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj810
	decl	-20(%ebp)
	.align 2
Lj811:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,%esi
	movb	-4(%ebp),%dl
	movl	%esi,%eax
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj811
Lj810:
Lj802:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__CHANGING
_DOM_TDOMNODE_$__CHANGING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj825
Lj825:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$1,8(%eax)
	jne	Lj828
	jmp	Lj827
Lj828:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	$32,8(%eax)
	je	Lj826
	jmp	Lj827
Lj826:
	movl	L_$DOM$_Ld15$non_lazy_ptr-Lj825(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj825(%ebx),%edx
	movl	$7,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj825(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj827:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT
_DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj844
	.align 2
Lj843:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzwl	(%eax,%edx,2),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	subl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	incl	-20(%ebp)
Lj844:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj848
	jmp	Lj845
Lj848:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj843
	jmp	Lj845
Lj845:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj850
Lj850:
	popl	%esi
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
	jne	Lj851
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj862
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj862:
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj865
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj865:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj868
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj850(%esi),%edx
	movl	%edx,%eax
Lj868:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj871
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj850(%esi),%edx
	movl	%edx,%ebx
Lj871:
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj851:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj852
	call	LFPC_RERAISE$stub
Lj852:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT
_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$2,%eax
	jl	Lj881
	subl	$2,%eax
	je	Lj883
	subl	$7,%eax
	je	Lj882
	jmp	Lj881
Lj882:
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj880
Lj883:
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMATTR_$__GETOWNERELEMENT$$TDOMELEMENT$stub
	movl	%eax,-8(%ebp)
	jmp	Lj880
Lj881:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj899
	.align 2
Lj898:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
Lj899:
	cmpl	$0,-12(%ebp)
	jne	Lj905
	jmp	Lj900
Lj905:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	jne	Lj898
	jmp	Lj900
Lj900:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj880:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING
_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj911
Lj911:
	popl	%esi
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
	jne	Lj912
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj917
	jmp	Lj918
Lj917:
	jmp	Lj912
Lj918:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj919
	jmp	Lj920
Lj919:
	movl	-8(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj925
	jmp	Lj924
Lj925:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-68(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj923
	jmp	Lj924
Lj923:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	jmp	Lj912
Lj924:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	testb	%al,%al
	jne	Lj938
	jmp	Lj939
Lj938:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj947
	decl	-24(%ebp)
	.align 2
Lj948:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-68(%ebp),%eax
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj911(%esi),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj960
	jmp	Lj959
Lj960:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-68(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj957
	jmp	Lj959
Lj959:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-68(%ebp),%eax
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj911(%esi),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj977
	jmp	Lj958
Lj977:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj957
	jmp	Lj958
Lj957:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	jmp	Lj912
Lj958:
	cmpl	-24(%ebp),%ebx
	jg	Lj948
Lj947:
Lj939:
Lj920:
	movl	-8(%ebp),%eax
	call	L_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING$stub
Lj912:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj913
	call	LFPC_RERAISE$stub
Lj913:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__LOOKUPPREFIX$WIDESTRING$$WIDESTRING
_DOM_TDOMNODE_$__LOOKUPPREFIX$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1004
	jmp	Lj1006
Lj1006:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1004
	jmp	Lj1005
Lj1004:
	jmp	Lj1000
Lj1005:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj1007
	jmp	Lj1008
Lj1007:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__INTERNALLOOKUPPREFIX$WIDESTRING$TDOMELEMENT$$WIDESTRING$stub
	jmp	Lj1019
Lj1008:
	movl	-8(%ebp),%eax
	call	L_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_DOM_TDOMNODE_$__LOOKUPPREFIX$WIDESTRING$$WIDESTRING$stub
Lj1019:
Lj1000:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__ISDEFAULTNAMESPACE$WIDESTRING$$BOOLEAN
_DOM_TDOMNODE_$__ISDEFAULTNAMESPACE$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1031
Lj1031:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1032
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1037
	jmp	Lj1038
Lj1037:
	jmp	Lj1032
Lj1038:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj1039
	jmp	Lj1040
Lj1039:
	movl	-8(%ebp),%eax
	movzwl	42(%eax),%eax
	testl	%eax,%eax
	je	Lj1043
	jmp	Lj1044
Lj1043:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj1032
	jmp	Lj1055
Lj1044:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	testb	%al,%al
	jne	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1065
	decl	-24(%ebp)
	.align 2
Lj1066:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-68(%ebp),%eax
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj1031(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1075
	jmp	Lj1076
Lj1075:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-68(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj1032
Lj1076:
	cmpl	-24(%ebp),%esi
	jg	Lj1066
Lj1065:
Lj1057:
Lj1055:
Lj1040:
	movl	-8(%ebp),%eax
	call	L_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_DOM_TDOMNODE_$__ISDEFAULTNAMESPACE$WIDESTRING$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj1032:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1033
	call	LFPC_RERAISE$stub
Lj1033:
	movb	-9(%ebp),%al
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_$__GETBASEURI$$WIDESTRING
_DOM_TDOMNODE_$__GETBASEURI$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$7,%eax
	jl	Lj1108
	subl	$7,%eax
	je	Lj1110
	subl	$2,%eax
	je	Lj1109
	jmp	Lj1108
Lj1109:
	movl	-4(%ebp),%esi
	movl	48(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	48(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj1107
Lj1110:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	testl	%eax,%eax
	jne	Lj1115
	jmp	Lj1116
Lj1115:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	call	L_DOM_TDOMNODE_$__GETBASEURI$$WIDESTRING$stub
	jmp	Lj1127
Lj1116:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	%eax,%ebx
	movl	48(%ebx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	48(%ebx),%eax
	movl	%eax,(%esi)
Lj1127:
	jmp	Lj1107
Lj1108:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj1107:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE:
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
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY
_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1144
	jmp	Lj1145
Lj1144:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1145:
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__FREECHILDREN$stub
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1158
	jmp	Lj1157
Lj1158:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1156
	jmp	Lj1157
Lj1156:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1157:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj1162
Lj1162:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	24(%edx),%eax
	jne	Lj1171
	jmp	Lj1172
Lj1171:
	movl	-24(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj1173
	jmp	Lj1175
Lj1175:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj1173
	jmp	Lj1174
Lj1173:
	movl	L_VMT_DOM_EDOMWRONGDOCUMENT$non_lazy_ptr-Lj1162(%ebx),%edx
	movl	L_$DOM$_Ld19$non_lazy_ptr-Lj1162(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMWRONGDOCUMENT_$__CREATE$ANSISTRING$$EDOMWRONGDOCUMENT$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1162(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1174:
Lj1172:
	cmpl	$0,-8(%ebp)
	jne	Lj1184
	jmp	Lj1183
Lj1184:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	-12(%ebp),%eax
	jne	Lj1182
	jmp	Lj1183
Lj1182:
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj1162(%ebx),%edx
	movl	L_$DOM$_Ld19$non_lazy_ptr-Lj1162(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj1162(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1183:
	movl	-24(%ebp),%eax
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj1196
	subl	$4,%eax
	cmpl	$2,%eax
	jb	Lj1196
Lj1196:
	jnc	Lj1195
	jmp	Lj1194
Lj1195:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	testl	%eax,%eax
	jne	Lj1193
	jmp	Lj1194
Lj1193:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1202
	.align 2
Lj1201:
	movl	-20(%ebp),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1204
	jmp	Lj1205
Lj1204:
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj1162(%ebx),%edx
	movl	L_$DOM$_Ld21$non_lazy_ptr-Lj1162(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj1162(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1205:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-20(%ebp)
Lj1202:
	cmpl	$0,-20(%ebp)
	jne	Lj1201
	jmp	Lj1203
Lj1203:
Lj1194:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1216
	jmp	Lj1217
Lj1216:
	jmp	Lj1161
Lj1217:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	incl	60(%eax)
	movl	-24(%ebp),%eax
	cmpl	$11,%eax
	je	Lj1218
	jmp	Lj1219
Lj1218:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj1224
	jmp	Lj1225
Lj1224:
	jmp	Lj1227
	.align 2
Lj1226:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$12,%esi
	jbe	Lj1235
	clc
	jmp	Lj1236
Lj1235:
	movl	L_TC_DOM_VALIDCHILDREN$non_lazy_ptr-Lj1162(%ebx),%edx
	btl	%esi,-4(%edx,%eax,4)
Lj1236:
	jnc	Lj1229
	jmp	Lj1230
Lj1229:
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj1162(%ebx),%edx
	movl	L_$DOM$_Ld19$non_lazy_ptr-Lj1162(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj1162(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1230:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
Lj1227:
	cmpl	$0,-20(%ebp)
	jne	Lj1226
	jmp	Lj1228
Lj1228:
	jmp	Lj1246
	.align 2
Lj1245:
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*160(%esi)
Lj1246:
	movl	-4(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1245
	jmp	Lj1247
Lj1247:
Lj1225:
	jmp	Lj1161
Lj1219:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-24(%ebp),%edx
	cmpl	$12,%edx
	jbe	Lj1258
	clc
	jmp	Lj1259
Lj1258:
	movl	L_TC_DOM_VALIDCHILDREN$non_lazy_ptr-Lj1162(%ebx),%ecx
	btl	%edx,-4(%ecx,%eax,4)
Lj1259:
	jnc	Lj1254
	jmp	Lj1255
Lj1254:
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj1162(%ebx),%edx
	movl	L_$DOM$_Ld19$non_lazy_ptr-Lj1162(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj1162(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1255:
	movl	-4(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1266
	jmp	Lj1267
Lj1266:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
Lj1267:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1274
	jmp	Lj1275
Lj1274:
	movl	-12(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1276
	jmp	Lj1277
Lj1276:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,16(%edx)
	jmp	Lj1282
Lj1277:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,28(%eax)
Lj1282:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
	jmp	Lj1287
Lj1275:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1288
	jmp	Lj1289
Lj1288:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,28(%eax)
	jmp	Lj1292
Lj1289:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj1292:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
Lj1287:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
Lj1161:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE:
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
	call	*160(%ebx)
	cmpl	$0,-8(%ebp)
	jne	Lj1311
	jmp	Lj1310
Lj1311:
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1309
	jmp	Lj1310
Lj1309:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE$stub
Lj1310:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1319
Lj1319:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	-8(%ebp),%eax
	jne	Lj1322
	jmp	Lj1323
Lj1322:
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj1319(%ebx),%edx
	movl	L_$DOM$_Ld23$non_lazy_ptr-Lj1319(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La11:
	movl	%ebp,%ecx
	leal	La11-Lj1319(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1323:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	incl	60(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1332
	jmp	Lj1333
Lj1332:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-8(%ebp),%edx
	movl	20(%eax),%eax
	movl	%eax,28(%edx)
	jmp	Lj1336
Lj1333:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,20(%edx)
Lj1336:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1339
	jmp	Lj1340
Lj1339:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	movl	%eax,32(%edx)
	jmp	Lj1343
Lj1340:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj1343:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1356
	jmp	Lj1357
Lj1356:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,16(%edx)
	jmp	Lj1362
Lj1357:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,28(%eax)
Lj1362:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1371
	jmp	Lj1372
Lj1371:
	movb	$1,-5(%ebp)
	jmp	Lj1373
Lj1372:
	movb	$0,-5(%ebp)
Lj1373:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1379
	.align 2
Lj1378:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*196(%ecx)
	testl	%eax,%eax
	je	Lj1381
	jmp	Lj1382
Lj1381:
	jmp	Lj1374
Lj1382:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1379:
	cmpl	$0,-12(%ebp)
	jne	Lj1378
	jmp	Lj1380
Lj1380:
Lj1374:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT
_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	jmp	Lj1396
	.align 2
Lj1395:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movb	$1,%dl
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
Lj1396:
	cmpl	$0,-16(%ebp)
	jne	Lj1395
	jmp	Lj1397
Lj1397:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__FREECHILDREN
_DOM_TDOMNODE_WITHCHILDREN_$__FREECHILDREN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1415
	.align 2
Lj1414:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1415:
	cmpl	$0,-8(%ebp)
	jne	Lj1414
	jmp	Lj1416
Lj1416:
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING
_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
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
	jne	Lj1433
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1441
	.align 2
Lj1440:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$3,%eax
	jl	Lj1444
	subl	$3,%eax
	je	Lj1445
	subl	$4,%eax
	jl	Lj1444
	subl	$1,%eax
	jle	Lj1446
	jmp	Lj1444
Lj1445:
	movl	-12(%ebp),%eax
	testl	$8,8(%eax)
	je	Lj1449
	jmp	Lj1450
Lj1449:
	movl	-12(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_concat$stub
Lj1450:
	jmp	Lj1443
Lj1446:
	jmp	Lj1443
Lj1444:
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_concat$stub
Lj1443:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1441:
	cmpl	$0,-12(%ebp)
	jne	Lj1440
	jmp	Lj1442
Lj1442:
Lj1433:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1434
	call	LFPC_RERAISE$stub
Lj1434:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING
_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	jmp	Lj1474
	.align 2
Lj1473:
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
Lj1474:
	movl	-8(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1473
	jmp	Lj1475
Lj1475:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1480
	jmp	Lj1481
Lj1480:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
Lj1481:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST
_DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1491
Lj1491:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1492
	jmp	Lj1493
Lj1492:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1493:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1498
	jmp	Lj1499
Lj1498:
	jmp	Lj1490
Lj1499:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1502
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1506
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMNODE_$__GETREVISION$$LONGINT$stub
	decl	%eax
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1491(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
Lj1506:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1507
	call	LFPC_RERAISE$stub
Lj1507:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1527
	jmp	Lj1526
Lj1527:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1525
	jmp	Lj1526
Lj1525:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1526:
Lj1502:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1504
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1531
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1532
	jmp	Lj1533
Lj1532:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1533:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1531:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1530
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1530:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1504
Lj1504:
Lj1490:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODELIST_$__DESTROY
_DOM_TDOMNODELIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1539
Lj1539:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1540
	jmp	Lj1541
Lj1540:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1541:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	L_VMT_DOM_TDOMNODE_WITHCHILDREN$non_lazy_ptr-Lj1539(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1546
	jmp	Lj1545
Lj1546:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	36(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj1544
	jmp	Lj1545
Lj1544:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	$0,36(%eax)
	jmp	Lj1553
Lj1545:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DOM_TDOMDOCUMENT_$__NODELISTDESTROYED$TDOMNODELIST$stub
Lj1553:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1566
	jmp	Lj1565
Lj1566:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1564
	jmp	Lj1565
Lj1564:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1565:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODELIST_$__NODEFILTER$TDOMNODE$$TFILTERRESULT
_DOM_TDOMNODELIST_$__NODEFILTER$TDOMNODE$$TFILTERRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$3,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODELIST_$__BUILDLIST
_DOM_TDOMNODELIST_$__BUILDLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DOM_TDOMNODE_$__GETREVISION$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-8(%ebp)
	jmp	Lj1586
	.align 2
Lj1585:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj1596
Lj1596:
	jc	Lj1594
	jmp	Lj1595
Lj1594:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj1595:
	movl	$0,-12(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	je	Lj1605
	cmpl	$2,%eax
	je	Lj1605
Lj1605:
	je	Lj1603
	jmp	Lj1604
Lj1603:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-12(%ebp)
Lj1604:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1610
	jmp	Lj1611
Lj1610:
	jmp	Lj1613
	.align 2
Lj1612:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj1617
	jmp	Lj1618
Lj1617:
	jmp	Lj1614
Lj1618:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-8(%ebp)
Lj1613:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj1612
	jmp	Lj1614
Lj1614:
Lj1611:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1586:
	cmpl	$0,-8(%ebp)
	jne	Lj1585
	jmp	Lj1587
Lj1587:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODELIST_$__GETCOUNT$$LONGWORD
_DOM_TDOMNODELIST_$__GETCOUNT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DOM_TDOMNODE_$__GETREVISION$$LONGINT$stub
	cmpl	8(%ebx),%eax
	jne	Lj1627
	jmp	Lj1628
Lj1627:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj1628:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODELIST_$__GETITEM$LONGWORD$$TDOMNODE
_DOM_TDOMNODELIST_$__GETITEM$LONGWORD$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DOM_TDOMNODE_$__GETREVISION$$LONGINT$stub
	cmpl	8(%ebx),%eax
	jne	Lj1637
	jmp	Lj1638
Lj1637:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj1638:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj1643
	jmp	Lj1644
Lj1643:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1647
Lj1644:
	movl	$0,-12(%ebp)
Lj1647:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$$TDOMELEMENTLIST
_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$$TDOMELEMENTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj1651
Lj1651:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1652
	jmp	Lj1653
Lj1652:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1653:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1658
	jmp	Lj1659
Lj1658:
	jmp	Lj1650
Lj1659:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1662
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1666
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST$stub
	movl	8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,16(%esi)
	movl	-12(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	L_$DOM$_Ld25$non_lazy_ptr-Lj1651(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	setneb	30(%esi)
Lj1666:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1667
	call	LFPC_RERAISE$stub
Lj1667:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1685
	jmp	Lj1684
Lj1685:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1683
	jmp	Lj1684
Lj1683:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1684:
Lj1662:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1664
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1689
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1690
	jmp	Lj1691
Lj1690:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1691:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1689:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1688
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1688:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1664
Lj1664:
Lj1650:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$WIDESTRING$$TDOMELEMENTLIST
_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$WIDESTRING$$TDOMELEMENTLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj1697
Lj1697:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1698
	jmp	Lj1699
Lj1698:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1699:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1704
	jmp	Lj1705
Lj1704:
	jmp	Lj1696
Lj1705:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1708
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1712
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST$stub
	movl	8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,24(%esi)
	movl	-12(%ebp),%eax
	movb	$1,28(%eax)
	movl	-12(%ebp),%esi
	movl	12(%ebp),%eax
	movl	L_$DOM$_Ld25$non_lazy_ptr-Lj1697(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	seteb	29(%esi)
	movl	-12(%ebp),%eax
	movb	29(%eax),%al
	testb	%al,%al
	je	Lj1731
	jmp	Lj1732
Lj1731:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	12(%ebp),%edx
	movb	$0,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,20(%edx)
Lj1732:
	movl	-12(%ebp),%esi
	movl	8(%ebp),%eax
	movl	L_$DOM$_Ld25$non_lazy_ptr-Lj1697(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	setneb	30(%esi)
Lj1712:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1713
	call	LFPC_RERAISE$stub
Lj1713:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1749
	jmp	Lj1748
Lj1749:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1747
	jmp	Lj1748
Lj1747:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1748:
Lj1708:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1710
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1753
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1754
	jmp	Lj1755
Lj1754:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1755:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1753:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1752
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1752:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1710
Lj1710:
Lj1696:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENTLIST_$__NODEFILTER$TDOMNODE$$TFILTERRESULT
_DOM_TDOMELEMENTLIST_$__NODEFILTER$TDOMNODE$$TFILTERRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj1761
Lj1761:
	popl	%esi
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
	jne	Lj1762
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	je	Lj1767
	jmp	Lj1768
Lj1767:
	movl	-8(%ebp),%eax
	cmpb	$0,28(%eax)
	jne	Lj1771
	jmp	Lj1772
Lj1771:
	movl	-8(%ebp),%eax
	cmpb	$0,29(%eax)
	jne	Lj1773
	jmp	Lj1775
Lj1775:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	40(%eax),%ax
	cmpw	20(%edx),%ax
	je	Lj1773
	jmp	Lj1774
Lj1773:
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1780
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1780:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movb	30(%eax),%al
	testb	%al,%al
	je	Lj1781
	jmp	Lj1783
Lj1783:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj1785
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1785:
	cmpl	%eax,%edx
	je	Lj1784
	jmp	Lj1782
Lj1784:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	-2(%edx,%eax,2),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	testl	%edx,%edx
	je	Lj1790
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj1790:
	shll	$1,%edx
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ebx
	testl	%ebx,%ebx
	jne	Lj1793
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1761(%esi),%ecx
	movl	%ecx,%ebx
Lj1793:
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1781
	jmp	Lj1782
Lj1781:
	movl	$2,-12(%ebp)
Lj1782:
Lj1774:
	jmp	Lj1796
Lj1772:
	movl	-8(%ebp),%eax
	movb	30(%eax),%al
	testb	%al,%al
	je	Lj1797
	jmp	Lj1799
Lj1799:
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-64(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%edx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1797
	jmp	Lj1798
Lj1797:
	movl	$2,-12(%ebp)
Lj1798:
Lj1796:
Lj1768:
Lj1762:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1763
	call	LFPC_RERAISE$stub
Lj1763:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP
_DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1811
Lj1811:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1812
	jmp	Lj1813
Lj1812:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1813:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1818
	jmp	Lj1819
Lj1818:
	jmp	Lj1810
Lj1819:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1822
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1826
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1811(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
Lj1826:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1827
	call	LFPC_RERAISE$stub
Lj1827:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1843
	jmp	Lj1842
Lj1843:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1841
	jmp	Lj1842
Lj1841:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1842:
Lj1822:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1824
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1847
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1848
	jmp	Lj1849
Lj1848:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1849:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1847:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1846
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1846:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1824
Lj1824:
Lj1810:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__DESTROY
_DOM_TDOMNAMEDNODEMAP_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1856
	jmp	Lj1857
Lj1856:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1857:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj1861
	incl	-12(%ebp)
	.align 2
Lj1862:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj1862
Lj1861:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1873
	jmp	Lj1872
Lj1873:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1871
	jmp	Lj1872
Lj1871:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1872:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj1878
	jmp	Lj1879
Lj1878:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1882
Lj1879:
	movl	$0,-12(%ebp)
Lj1882:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD
_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD:
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
.globl	_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN
_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1898
	.align 2
Lj1897:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	4(%ecx),%ebx
	movl	-28(%ebp),%ecx
	movl	(%ebx,%ecx,4),%ecx
	movl	(%ecx),%ecx
	call	*196(%ecx)
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1908
	jmp	Lj1909
Lj1908:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1912
Lj1909:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj1915
	jmp	Lj1916
Lj1915:
	movb	$1,-13(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1916:
Lj1912:
Lj1898:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1897
	jmp	Lj1899
Lj1899:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1925
	jmp	Lj1926
Lj1925:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1935
Lj1926:
	movl	$0,-12(%ebp)
Lj1935:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT
_DOM_TDOMNAMEDNODEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	$1,8(%eax)
	jne	Lj1946
	jmp	Lj1947
Lj1946:
	movl	$7,-12(%ebp)
	jmp	Lj1950
Lj1947:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	cmpl	24(%edx),%eax
	jne	Lj1951
	jmp	Lj1952
Lj1951:
	movl	$4,-12(%ebp)
Lj1952:
Lj1950:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj1956
Lj1956:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1957
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1966
	jmp	Lj1967
Lj1966:
	movl	L_$DOM$_Ld27$non_lazy_ptr-Lj1956(%ebx),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj1956(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La12:
	movl	%ebp,%ecx
	leal	La12-Lj1956(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1967:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-68(%ebp),%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj1988
	jmp	Lj1989
Lj1988:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	jmp	Lj1957
Lj1989:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
	movl	$0,-12(%ebp)
Lj1957:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1958
	call	LFPC_RERAISE$stub
Lj1958:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEMNS$TDOMNODE$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEMNS$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__DELETE$LONGWORD$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__DELETE$LONGWORD$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__INTERNALREMOVE$WIDESTRING$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__INTERNALREMOVE$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2020
	jmp	Lj2021
Lj2020:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-12(%ebp)
	jmp	Lj2034
Lj2021:
	movl	$0,-12(%ebp)
Lj2034:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__REMOVENAMEDITEM$WIDESTRING$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__REMOVENAMEDITEM$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2038
Lj2038:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	$1,8(%eax)
	jne	Lj2039
	jmp	Lj2040
Lj2039:
	movl	L_$DOM$_Ld29$non_lazy_ptr-Lj2038(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj2038(%ebx),%edx
	movl	$7,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La13:
	movl	%ebp,%ecx
	leal	La13-Lj2038(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2040:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__INTERNALREMOVE$WIDESTRING$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2055
	jmp	Lj2056
Lj2055:
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj2038(%ebx),%edx
	movl	L_$DOM$_Ld29$non_lazy_ptr-Lj2038(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La14:
	movl	%ebp,%ecx
	leal	La14-Lj2038(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2056:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNAMEDNODEMAP_$__REMOVENAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
_DOM_TDOMNAMEDNODEMAP_$__REMOVENAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2064
Lj2064:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj2064(%ebx),%edx
	movl	L_$DOM$_Ld31$non_lazy_ptr-Lj2064(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La15:
	movl	%ebp,%ecx
	leal	La15-Lj2064(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__DELETE$LONGWORD$$TDOMNODE
_DOM_TATTRIBUTEMAP_$__DELETE$LONGWORD$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__DELETE$LONGWORD$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj2081
	jmp	Lj2082
Lj2081:
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	cmpl	$0,44(%eax)
	jne	Lj2085
	jmp	Lj2086
Lj2085:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TATTRIBUTEMAP_$__RESTOREDEFAULT$PHASHITEM$stub
Lj2086:
Lj2082:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT
_DOM_TATTRIBUTEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2099
	jmp	Lj2100
Lj2099:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$2,%eax
	jne	Lj2101
	jmp	Lj2102
Lj2101:
	movl	$3,-12(%ebp)
	jmp	Lj2107
Lj2102:
	movl	-4(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj2110
	jmp	Lj2109
Lj2110:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	4(%edx),%eax
	jne	Lj2108
	jmp	Lj2109
Lj2108:
	movl	$10,-12(%ebp)
Lj2109:
Lj2107:
Lj2100:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__RESTOREDEFAULT$PHASHITEM
_DOM_TATTRIBUTEMAP_$__RESTOREDEFAULT$PHASHITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,44(%eax)
	jne	Lj2116
	jmp	Lj2115
Lj2115:
	jmp	Lj2113
Lj2116:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	44(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj2119
	jmp	Lj2120
Lj2119:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj2129
	jmp	Lj2128
Lj2129:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj2130
	cmpl	$3,%eax
	je	Lj2130
Lj2130:
	je	Lj2127
	jmp	Lj2128
Lj2127:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DOM_TDOMELEMENT_$__RESTOREDEFAULTATTR$TATTRIBUTEDEF$stub
Lj2128:
Lj2120:
Lj2113:
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN
_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj2136
Lj2136:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj2138
	decl	-20(%ebp)
	.align 2
Lj2139:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%esi
	movzwl	40(%esi),%eax
	cmpl	-4(%ebp),%eax
	je	Lj2142
	jmp	Lj2143
Lj2142:
	movl	44(%esi),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj2146
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2136(%edi),%edx
	movl	%edx,%eax
Lj2146:
	movl	%eax,-24(%ebp)
	movzwl	42(%esi),%eax
	cmpl	$1,%eax
	jg	Lj2147
	jmp	Lj2148
Lj2147:
	movzwl	42(%esi),%eax
	shll	$1,%eax
	addl	%eax,-24(%ebp)
Lj2148:
	movl	44(%esi),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2153
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj2153:
	movzwl	42(%esi),%edx
	subl	%edx,%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2156
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj2156:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2159
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2136(%edi),%edx
	movl	%edx,%eax
Lj2159:
	movl	-24(%ebp),%edx
	call	L_DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj2149
	jmp	Lj2150
Lj2149:
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj2135
Lj2150:
Lj2143:
	cmpl	-20(%ebp),%ebx
	jg	Lj2139
Lj2138:
	movb	$0,-13(%ebp)
Lj2135:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__INTERNALREMOVENS$WIDESTRING$WIDESTRING$$TDOMNODE
_DOM_TATTRIBUTEMAP_$__INTERNALREMOVENS$WIDESTRING$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movb	$0,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2182
	jmp	Lj2181
Lj2182:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2180
	jmp	Lj2181
Lj2180:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	%eax,-16(%ebp)
Lj2181:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__GETNAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
_DOM_TATTRIBUTEMAP_$__GETNAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movb	$0,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2209
	jmp	Lj2208
Lj2209:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2207
	jmp	Lj2208
Lj2207:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2220
Lj2208:
	movl	$0,-16(%ebp)
Lj2220:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE
_DOM_TATTRIBUTEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj2231
	jmp	Lj2232
Lj2231:
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
Lj2232:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__SETNAMEDITEMNS$TDOMNODE$$TDOMNODE
_DOM_TATTRIBUTEMAP_$__SETNAMEDITEMNS$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj2238
Lj2238:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2239
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2248
	jmp	Lj2249
Lj2248:
	movl	L_$DOM$_Ld33$non_lazy_ptr-Lj2238(%ebx),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj2238(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La16:
	movl	%ebp,%ecx
	leal	La16-Lj2238(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2249:
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-68(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzwl	40(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2260
	jmp	Lj2261
Lj2260:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj2261:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub
	movb	%al,-21(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj2290
	jmp	Lj2289
Lj2290:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2288
	jmp	Lj2289
Lj2288:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	jmp	Lj2295
Lj2289:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
Lj2295:
	cmpl	$0,-12(%ebp)
	jne	Lj2302
	jmp	Lj2303
Lj2302:
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
Lj2303:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%edx)
Lj2239:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2240
	call	LFPC_RERAISE$stub
Lj2240:
	movl	-12(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TATTRIBUTEMAP_$__REMOVENAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
_DOM_TATTRIBUTEMAP_$__REMOVENAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2309
Lj2309:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	$1,8(%eax)
	jne	Lj2310
	jmp	Lj2311
Lj2310:
	movl	L_$DOM$_Ld31$non_lazy_ptr-Lj2309(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj2309(%ebx),%edx
	movl	$7,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La17:
	movl	%ebp,%ecx
	leal	La17-Lj2309(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2311:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TATTRIBUTEMAP_$__INTERNALREMOVENS$WIDESTRING$WIDESTRING$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2328
	jmp	Lj2329
Lj2328:
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj2309(%ebx),%edx
	movl	L_$DOM$_Ld31$non_lazy_ptr-Lj2309(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La18:
	movl	%ebp,%ecx
	leal	La18-Lj2309(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2329:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD
_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj2340
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj2340:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__GETNODEVALUE$$WIDESTRING
_DOM_TDOMCHARACTERDATA_$__GETNODEVALUE$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING
_DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	28(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__SUBSTRINGDATA$LONGWORD$LONGWORD$$WIDESTRING
_DOM_TDOMCHARACTERDATA_$__SUBSTRINGDATA$LONGWORD$LONGWORD$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2352
Lj2352:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD$stub
	cmpl	-4(%ebp),%eax
	jb	Lj2353
	jmp	Lj2354
Lj2353:
	movl	L_VMT_DOM_EDOMINDEXSIZE$non_lazy_ptr-Lj2352(%ebx),%edx
	movl	L_$DOM$_Ld35$non_lazy_ptr-Lj2352(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE$stub
La19:
	movl	%ebp,%ecx
	leal	La19-Lj2352(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2354:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-8(%ebp),%ecx
	call	Lfpc_unicodestr_copy$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__APPENDDATA$WIDESTRING
_DOM_TDOMCHARACTERDATA_$__APPENDDATA$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	-4(%ebp),%ecx
	call	Lfpc_unicodestr_concat$stub
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__INSERTDATA$LONGWORD$WIDESTRING
_DOM_TDOMCHARACTERDATA_$__INSERTDATA$LONGWORD$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2382
Lj2382:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD$stub
	cmpl	-4(%ebp),%eax
	jb	Lj2385
	jmp	Lj2386
Lj2385:
	movl	L_VMT_DOM_EDOMINDEXSIZE$non_lazy_ptr-Lj2382(%ebx),%edx
	movl	L_$DOM$_Ld37$non_lazy_ptr-Lj2382(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE$stub
La20:
	movl	%ebp,%ecx
	leal	La20-Lj2382(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2386:
	movl	-4(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	leal	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__DELETEDATA$LONGWORD$LONGWORD
_DOM_TDOMCHARACTERDATA_$__DELETEDATA$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj2402
Lj2402:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD$stub
	cmpl	-4(%ebp),%eax
	jb	Lj2405
	jmp	Lj2406
Lj2405:
	movl	L_VMT_DOM_EDOMINDEXSIZE$non_lazy_ptr-Lj2402(%ebx),%edx
	movl	L_$DOM$_Ld39$non_lazy_ptr-Lj2402(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE$stub
La21:
	movl	%ebp,%ecx
	leal	La21-Lj2402(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2406:
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCHARACTERDATA_$__REPLACEDATA$LONGWORD$LONGWORD$WIDESTRING
_DOM_TDOMCHARACTERDATA_$__REPLACEDATA$LONGWORD$LONGWORD$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__DELETEDATA$LONGWORD$LONGWORD$stub
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__INSERTDATA$LONGWORD$WIDESTRING$stub
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTFRAGMENT_$__GETNODETYPE$$LONGINT
_DOM_TDOMDOCUMENTFRAGMENT_$__GETNODETYPE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$11,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTFRAGMENT_$__GETNODENAME$$WIDESTRING
_DOM_TDOMDOCUMENTFRAGMENT_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj2440
Lj2440:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$DOM$_Ld41$non_lazy_ptr-Lj2440(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTFRAGMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMDOCUMENTFRAGMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATEDOCUMENTFRAGMENT$$TDOMDOCUMENTFRAGMENT$stub
	movl	%eax,-16(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj2449
	jmp	Lj2450
Lj2449:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT$stub
Lj2450:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING
_DOM_TDOMNODE_TOPLEVEL_$__GETXMLVERSION$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj2458
Lj2458:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	52(%eax),%esi
	movl	L_TC_XMLUTILS_XMLVERSIONSTR$non_lazy_ptr-Lj2458(%edi),%edx
	movl	(%edx,%esi,4),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	L_TC_XMLUTILS_XMLVERSIONSTR$non_lazy_ptr-Lj2458(%edi),%eax
	movl	(%eax,%esi,4),%eax
	movl	%eax,(%ebx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT
_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2462
Lj2462:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-12(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2463
	jmp	Lj2464
Lj2463:
	movl	$-5,-16(%ebp)
	jmp	Lj2461
Lj2464:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2473
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj2473:
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%edx
	movw	$58,%ax
	call	L_SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2480
	jmp	Lj2481
Lj2480:
	movl	-24(%ebp),%eax
	decl	%eax
	movl	-16(%ebp),%edx
	incl	%edx
	movl	%edx,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj2483
	decl	-20(%ebp)
	.align 2
Lj2484:
	incl	-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movw	-2(%ecx,%edx,2),%dx
	cmpw	$58,%dx
	je	Lj2485
	jmp	Lj2486
Lj2485:
	movl	$-14,-16(%ebp)
	jmp	Lj2461
Lj2486:
	cmpl	-20(%ebp),%eax
	jg	Lj2484
Lj2483:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2489
	jmp	Lj2492
Lj2492:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	je	Lj2489
	jmp	Lj2491
Lj2491:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	-2(%edx,%eax,2),%eax
	movb	-12(%ebp),%cl
	movl	$1,%edx
	call	L_XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2489
	jmp	Lj2490
Lj2489:
	movl	$-14,-16(%ebp)
	jmp	Lj2461
Lj2490:
Lj2481:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2501
	jmp	Lj2502
Lj2501:
	jmp	Lj2461
Lj2502:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2507
	jmp	Lj2506
Lj2507:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2503
	jmp	Lj2506
Lj2506:
	movl	-24(%ebp),%eax
	cmpl	$5,%eax
	je	Lj2510
	jmp	Lj2511
Lj2511:
	movl	-16(%ebp),%eax
	cmpl	$6,%eax
	je	Lj2510
	jmp	Lj2509
Lj2510:
	movl	-4(%ebp),%edx
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj2462(%ebx),%eax
	call	L_SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj2508
	jmp	Lj2509
Lj2508:
	movb	$1,%dl
	jmp	Lj2516
Lj2509:
	movb	$0,%dl
Lj2516:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	seteb	%al
	cmpb	%al,%dl
	jne	Lj2503
	jmp	Lj2505
Lj2505:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	je	Lj2518
	jmp	Lj2504
Lj2518:
	movl	-4(%ebp),%edx
	movl	L_$DOM$_Ld43$non_lazy_ptr-Lj2462(%ebx),%eax
	call	L_SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj2517
	jmp	Lj2504
Lj2517:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj2503
	jmp	Lj2504
Lj2503:
	movl	$-14,-16(%ebp)
Lj2504:
Lj2461:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMIMPLEMENTATION_$__HASFEATURE$WIDESTRING$WIDESTRING$$BOOLEAN
_DOM_TDOMIMPLEMENTATION_$__HASFEATURE$WIDESTRING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj2526
Lj2526:
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
	jne	Lj2527
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-20(%ebp),%eax
	movl	L_$DOM$_Ld45$non_lazy_ptr-Lj2526(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2537
	jmp	Lj2536
Lj2537:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2534
	jmp	Lj2543
Lj2543:
	movl	-8(%ebp),%eax
	movl	L_$DOM$_Ld47$non_lazy_ptr-Lj2526(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2534
	jmp	Lj2542
Lj2542:
	movl	-8(%ebp),%eax
	movl	L_$DOM$_Ld49$non_lazy_ptr-Lj2526(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2534
	jmp	Lj2536
Lj2536:
	movl	-20(%ebp),%eax
	movl	L_$DOM$_Ld51$non_lazy_ptr-Lj2526(%ebx),%edx
	call	L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2552
	jmp	Lj2535
Lj2552:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2534
	jmp	Lj2557
Lj2557:
	movl	-8(%ebp),%eax
	movl	L_$DOM$_Ld49$non_lazy_ptr-Lj2526(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2534
	jmp	Lj2535
Lj2534:
	movb	$1,-13(%ebp)
	jmp	Lj2562
Lj2535:
	movb	$0,-13(%ebp)
Lj2562:
Lj2527:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2528
	call	LFPC_RERAISE$stub
Lj2528:
	movb	-13(%ebp),%al
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMIMPLEMENTATION_$__CREATEDOCUMENTTYPE$WIDESTRING$WIDESTRING$WIDESTRING$$TDOMDOCUMENTTYPE
_DOM_TDOMIMPLEMENTATION_$__CREATEDOCUMENTTYPE$WIDESTRING$WIDESTRING$WIDESTRING$$TDOMDOCUMENTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj2570
Lj2570:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$-1,%edx
	call	L_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2579
	jmp	Lj2580
Lj2579:
	movl	L_$DOM$_Ld53$non_lazy_ptr-Lj2570(%ebx),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	negl	%ecx
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj2570(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La22:
	movl	%ebp,%ecx
	leal	La22-Lj2570(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2580:
	movl	L_VMT_DTDMODEL_TDTDMODEL$non_lazy_ptr-Lj2570(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL$stub
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-24(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,20(%esi)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-24(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,28(%esi)
	movl	8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-24(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,24(%esi)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_TDOMDOCUMENTTYPE$non_lazy_ptr-Lj2570(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE$stub
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	call	L_DTDMODEL_TDTDMODEL_$__RELEASE$stub
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMIMPLEMENTATION_$__CREATEDOCUMENT$WIDESTRING$WIDESTRING$TDOMDOCUMENTTYPE$$TDOMDOCUMENT
_DOM_TDOMIMPLEMENTATION_$__CREATEDOCUMENT$WIDESTRING$WIDESTRING$TDOMDOCUMENTTYPE$$TDOMDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	call	Lj2616
Lj2616:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpl	$0,8(%ebp)
	jne	Lj2619
	jmp	Lj2618
Lj2619:
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	testl	%eax,%eax
	jne	Lj2617
	jmp	Lj2618
Lj2617:
	movl	L_VMT_DOM_EDOMWRONGDOCUMENT$non_lazy_ptr-Lj2616(%ebx),%edx
	movl	L_$DOM$_Ld55$non_lazy_ptr-Lj2616(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMWRONGDOCUMENT_$__CREATE$ANSISTRING$$EDOMWRONGDOCUMENT$stub
La23:
	movl	%ebp,%ecx
	leal	La23-Lj2616(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2618:
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj2616(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr-Lj2616(%ebx),%ecx
	call	*224(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,64(%edx)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2638
	cmpl	$0,8(%ebp)
	jne	Lj2642
	jmp	Lj2643
Lj2642:
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,24(%edx)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
Lj2643:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATEELEMENTNS$WIDESTRING$WIDESTRING$$TDOMELEMENT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMNODE_$__APPENDCHILD$TDOMNODE$$TDOMNODE$stub
Lj2638:
	call	LFPC_POPADDRSTACK$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2640
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj2663
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2663:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj2662
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2662:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2640
Lj2640:
	movl	-16(%ebp),%eax
	movl	-104(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATE$$TDOMDOCUMENT
_DOM_TDOMDOCUMENT_$__CREATE$$TDOMDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj2667
Lj2667:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2668
	jmp	Lj2669
Lj2668:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2669:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2674
	jmp	Lj2675
Lj2674:
	jmp	Lj2666
Lj2675:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2678
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2682
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,24(%eax)
	movl	L_VMT_DOM_TDOMENTITY$non_lazy_ptr-Lj2667(%ebx),%eax
	movl	%eax,-92(%ebp)
	movl	-92(%ebp),%eax
	movl	(%eax),%eax
	addl	$4,%eax
	decl	%eax
	andl	$-4,%eax
	addl	$4,%eax
	movl	-8(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	call	L_SYSTEM_ALLOCMEM$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	%eax,88(%edx)
	movb	$1,(%esp)
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	$256,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-8(%ebp),%edx
	movl	%eax,72(%edx)
	movl	$3,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_DOM_TNAMESPACES$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	-8(%ebp),%eax
	leal	68(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%esi
	leal	4(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj2667(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esi)
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%esi
	leal	8(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj2667(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%esi)
	movl	-8(%ebp),%ecx
	movl	L_VMT_DOM_TDOMELEMENT$non_lazy_ptr-Lj2667(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
Lj2682:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2683
	call	LFPC_RERAISE$stub
Lj2683:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2737
	jmp	Lj2736
Lj2737:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2735
	jmp	Lj2736
Lj2735:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2736:
Lj2678:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2680
	leal	-92(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj2741
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2742
	jmp	Lj2743
Lj2742:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2743:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2741:
	call	LFPC_POPADDRSTACK$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj2740
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2740:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2680
Lj2680:
Lj2666:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__DESTROY
_DOM_TDOMDOCUMENT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2750
	jmp	Lj2751
Lj2750:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2751:
	movl	-8(%ebp),%eax
	orl	$32,8(%eax)
	movl	-8(%ebp),%eax
	leal	56(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY$stub
	movl	-8(%ebp),%eax
	movl	84(%eax),%ebx
	movl	%ebx,%eax
	sarl	$31,%eax
	andl	$3,%eax
	addl	%eax,%ebx
	sarl	$2,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2765
	decl	-12(%ebp)
	.align 2
Lj2766:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj2766
Lj2765:
	movl	-8(%ebp),%eax
	movl	88(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2775
	jmp	Lj2774
Lj2775:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2773
	jmp	Lj2774
Lj2773:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2774:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CLONENODE$BOOLEAN$$TDOMNODE
_DOM_TDOMDOCUMENT_$__CLONENODE$BOOLEAN$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	movl	%ebx,%ecx
	call	*224(%ecx)
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%esi
	movl	40(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	40(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	40(%esi),%eax
	movl	%eax,40(%ebx)
	movl	-8(%ebp),%esi
	movl	44(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	44(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	44(%esi),%eax
	movl	%eax,44(%ebx)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,52(%edx)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	92(%eax),%al
	movb	%al,92(%edx)
	movl	-8(%ebp),%esi
	movl	48(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	48(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	48(%esi),%eax
	movl	%eax,48(%ebx)
	cmpb	$0,-4(%ebp)
	jne	Lj2802
	jmp	Lj2803
Lj2802:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub
	movl	%eax,-24(%ebp)
	jmp	Lj2813
	.align 2
Lj2812:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj2815
	jmp	Lj2816
Lj2815:
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	movb	$1,%dl
	movl	-20(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
Lj2816:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
Lj2813:
	cmpl	$0,-20(%ebp)
	jne	Lj2812
	jmp	Lj2814
Lj2814:
Lj2803:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE
_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2832
Lj2832:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	testl	$32,8(%eax)
	jne	Lj2833
	jmp	Lj2834
Lj2833:
	movl	L_$DOM$_Ld57$non_lazy_ptr-Lj2832(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj2832(%ebx),%edx
	movl	$15,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La24:
	movl	%ebp,%ecx
	leal	La24-Lj2832(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2834:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	$4,%eax
	decl	%eax
	andl	$-4,%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj2847
	jmp	Lj2848
Lj2847:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
	jmp	Lj2831
Lj2848:
	movl	-8(%ebp),%eax
	movl	88(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$3,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	movl	(%ecx,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2855
	jmp	Lj2856
Lj2855:
	movl	$32,(%esp)
	movl	-20(%ebp),%ecx
	movl	L_VMT_DOM_TNODEPOOL$non_lazy_ptr-Lj2832(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TNODEPOOL_$__CREATE$LONGINT$LONGINT$$TNODEPOOL$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	88(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$3,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%ecx,%edx,4)
Lj2856:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TNODEPOOL_$__ALLOCNODE$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
Lj2831:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__REMOVEID$TDOMELEMENT
_DOM_TDOMDOCUMENT_$__REMOVEID$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__REMOVEDATA$TOBJECT$$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETNODETYPE$$LONGINT
_DOM_TDOMDOCUMENT_$__GETNODETYPE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$9,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETNODENAME$$WIDESTRING
_DOM_TDOMDOCUMENT_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj2886
Lj2886:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$DOM$_Ld59$non_lazy_ptr-Lj2886(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETTEXTCONTENT$$WIDESTRING
_DOM_TDOMDOCUMENT_$__GETTEXTCONTENT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__SETTEXTCONTENT$WIDESTRING
_DOM_TDOMDOCUMENT_$__SETTEXTCONTENT$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
_DOM_TDOMDOCUMENT_$__GETOWNERDOCUMENT$$TDOMDOCUMENT:
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
.globl	_DOM_TDOMDOCUMENT_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
_DOM_TDOMDOCUMENT_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2900
Lj2900:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2908
	jmp	Lj2907
Lj2908:
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	testl	%eax,%eax
	jne	Lj2905
	jmp	Lj2907
Lj2907:
	movl	-20(%ebp),%eax
	cmpl	$10,%eax
	je	Lj2911
	jmp	Lj2906
Lj2911:
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub
	testl	%eax,%eax
	jne	Lj2905
	jmp	Lj2906
Lj2905:
	movl	L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr-Lj2900(%ebx),%edx
	movl	L_$DOM$_Ld61$non_lazy_ptr-Lj2900(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMHIERARCHYREQUEST_$__CREATE$ANSISTRING$$EDOMHIERARCHYREQUEST$stub
La25:
	movl	%ebp,%ecx
	leal	La25-Lj2900(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2906:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
_DOM_TDOMDOCUMENT_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2937
	jmp	Lj2936
Lj2937:
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub
	cmpl	-8(%ebp),%eax
	je	Lj2934
	jmp	Lj2936
Lj2936:
	movl	-20(%ebp),%eax
	cmpl	$10,%eax
	je	Lj2940
	jmp	Lj2935
Lj2940:
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub
	cmpl	-8(%ebp),%eax
	je	Lj2934
	jmp	Lj2935
Lj2934:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2951
	jmp	Lj2952
Lj2951:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE$stub
Lj2952:
	jmp	Lj2957
Lj2935:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
Lj2957:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT
_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2971
	.align 2
Lj2970:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj2971:
	cmpl	$0,-12(%ebp)
	jne	Lj2975
	jmp	Lj2972
Lj2975:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$1,%eax
	jne	Lj2970
	jmp	Lj2972
Lj2972:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE
_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2985
	.align 2
Lj2984:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
Lj2985:
	cmpl	$0,-12(%ebp)
	jne	Lj2989
	jmp	Lj2986
Lj2989:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$10,%eax
	jne	Lj2984
	jmp	Lj2986
Lj2986:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEELEMENT$WIDESTRING$$TDOMELEMENT
_DOM_TDOMDOCUMENT_$__CREATEELEMENT$WIDESTRING$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2995
Lj2995:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2996
	jmp	Lj2997
Lj2996:
	movl	L_$DOM$_Ld63$non_lazy_ptr-Lj2995(%esi),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj2995(%esi),%edx
	movl	$5,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La26:
	movl	%ebp,%ecx
	leal	La26-Lj2995(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2997:
	movl	L_VMT_DOM_TDOMELEMENT$non_lazy_ptr-Lj2995(%esi),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj3028
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj3028:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj3031
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2995(%esi),%ecx
	movl	%ecx,%ebx
Lj3031:
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__ATTACHDEFAULTATTRS$stub
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT
_DOM_TDOMDOCUMENT_$__CREATEELEMENTBUF$PWIDECHAR$LONGINT$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj3035
Lj3035:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_TDOMELEMENT$non_lazy_ptr-Lj3035(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-16(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEDOCUMENTFRAGMENT$$TDOMDOCUMENTFRAGMENT
_DOM_TDOMDOCUMENT_$__CREATEDOCUMENTFRAGMENT$$TDOMDOCUMENTFRAGMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3057
Lj3057:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_DOM_TDOMDOCUMENTFRAGMENT$non_lazy_ptr-Lj3057(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT
_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3071
Lj3071:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_TDOMTEXT$non_lazy_ptr-Lj3071(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%esi)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT
_DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj3087
Lj3087:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_TDOMTEXT$non_lazy_ptr-Lj3087(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-16(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	28(%esi),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	cmpb	$0,8(%ebp)
	jne	Lj3106
	jmp	Lj3107
Lj3106:
	movl	-16(%ebp),%eax
	orl	$8,8(%eax)
Lj3107:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATECOMMENT$WIDESTRING$$TDOMCOMMENT
_DOM_TDOMDOCUMENT_$__CREATECOMMENT$WIDESTRING$$TDOMCOMMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3109
Lj3109:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_TDOMCOMMENT$non_lazy_ptr-Lj3109(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%esi)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATECOMMENTBUF$PWIDECHAR$LONGINT$$TDOMCOMMENT
_DOM_TDOMDOCUMENT_$__CREATECOMMENTBUF$PWIDECHAR$LONGINT$$TDOMCOMMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj3125
Lj3125:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_TDOMCOMMENT$non_lazy_ptr-Lj3125(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-16(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	28(%esi),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATECDATASECTION$WIDESTRING$$TDOMCDATASECTION
_DOM_TDOMDOCUMENT_$__CREATECDATASECTION$WIDESTRING$$TDOMCDATASECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3145
Lj3145:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj3145(%ebx),%edx
	movl	L_$DOM$_Ld65$non_lazy_ptr-Lj3145(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La27:
	movl	%ebp,%ecx
	leal	La27-Lj3145(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING$$TDOMPROCESSINGINSTRUCTION
_DOM_TDOMDOCUMENT_$__CREATEPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING$$TDOMPROCESSINGINSTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj3155
Lj3155:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj3155(%ebx),%edx
	movl	L_$DOM$_Ld67$non_lazy_ptr-Lj3155(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La28:
	movl	%ebp,%ecx
	leal	La28-Lj3155(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTE$WIDESTRING$$TDOMATTR
_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTE$WIDESTRING$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3165
Lj3165:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3166
	jmp	Lj3167
Lj3166:
	movl	L_$DOM$_Ld69$non_lazy_ptr-Lj3165(%esi),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj3165(%esi),%edx
	movl	$5,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La29:
	movl	%ebp,%ecx
	leal	La29-Lj3165(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3167:
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj3165(%esi),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj3198
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj3198:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj3201
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3165(%esi),%ecx
	movl	%ecx,%ebx
Lj3201:
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-12(%ebp),%eax
	orl	$16,8(%eax)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTEBUF$PWIDECHAR$LONGINT$$TDOMATTR
_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTEBUF$PWIDECHAR$LONGINT$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj3203
Lj3203:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj3203(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-16(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-16(%ebp),%eax
	orl	$16,8(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEENTITYREFERENCE$WIDESTRING$$TDOMENTITYREFERENCE
_DOM_TDOMDOCUMENT_$__CREATEENTITYREFERENCE$WIDESTRING$$TDOMENTITYREFERENCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3225
Lj3225:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj3225(%ebx),%edx
	movl	L_$DOM$_Ld71$non_lazy_ptr-Lj3225(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La30:
	movl	%ebp,%ecx
	leal	La30-Lj3225(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETCHILDNODELIST$TDOMNODE$$TDOMNODELIST
_DOM_TDOMDOCUMENT_$__GETCHILDNODELIST$TDOMNODE$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3235
Lj3235:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_DOM_TDOMNODE_WITHCHILDREN$non_lazy_ptr-Lj3235(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj3236
	jmp	Lj3237
Lj3236:
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,-4(%ebp)
Lj3237:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3246
	jmp	Lj3247
Lj3246:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DOM_TDOMNODELIST$non_lazy_ptr-Lj3235(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,36(%eax)
Lj3247:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST
_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj3259
Lj3259:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj3260
	jmp	Lj3261
Lj3260:
	movb	$1,(%esp)
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj3259(%ebx),%edx
	movl	$32,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-12(%ebp),%edx
	movl	%eax,80(%edx)
Lj3261:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3274
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj3274:
	addl	$2,%eax
	movl	%eax,-20(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj3275
	jmp	Lj3276
Lj3275:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3277
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj3277:
	incl	%eax
	addl	%eax,-20(%ebp)
Lj3276:
	movl	-20(%ebp),%edx
	shll	$1,%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj3282
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	addl	$4,-28(%ebp)
	movl	12(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj3292
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj3292:
	shll	$1,%ecx
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3295
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3259(%ebx),%edx
	movl	%edx,%eax
Lj3295:
	movl	-28(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	cmpb	$0,8(%ebp)
	jne	Lj3298
	jmp	Lj3299
Lj3298:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3300
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj3300:
	shll	$1,%eax
	addl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movw	$12,(%eax)
	addl	$2,-28(%ebp)
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj3305
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj3305:
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3308
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3259(%ebx),%edx
	movl	%edx,%eax
Lj3308:
	movl	-28(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj3299:
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3321
	jmp	Lj3322
Lj3321:
	cmpb	$0,8(%ebp)
	jne	Lj3323
	jmp	Lj3324
Lj3323:
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DOM_TDOMELEMENTLIST$non_lazy_ptr-Lj3259(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$WIDESTRING$$TDOMELEMENTLIST$stub
	movl	%eax,-16(%ebp)
	jmp	Lj3337
Lj3324:
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_DOM_TDOMELEMENTLIST$non_lazy_ptr-Lj3259(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$$TDOMELEMENTLIST$stub
	movl	%eax,-16(%ebp)
Lj3337:
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
Lj3322:
Lj3282:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj3283
	decl	%eax
	testl	%eax,%eax
	je	Lj3284
Lj3284:
	call	LFPC_RERAISE$stub
Lj3283:
	movl	-16(%ebp),%eax
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETELEMENTSBYTAGNAME$WIDESTRING$$TDOMNODELIST
_DOM_TDOMDOCUMENT_$__GETELEMENTSBYTAGNAME$WIDESTRING$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETELEMENTSBYTAGNAMENS$WIDESTRING$WIDESTRING$$TDOMNODELIST
_DOM_TDOMDOCUMENT_$__GETELEMENTSBYTAGNAMENS$WIDESTRING$WIDESTRING$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__NODELISTDESTROYED$TDOMNODELIST
_DOM_TDOMDOCUMENT_$__NODELISTDESTROYED$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	testl	$32,8(%eax)
	je	Lj3384
	jmp	Lj3383
Lj3384:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	jne	Lj3382
	jmp	Lj3383
Lj3382:
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_XMLUTILS_THASHTABLE_$__REMOVEDATA$TOBJECT$$BOOLEAN$stub
Lj3383:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTENS$WIDESTRING$WIDESTRING$$TDOMATTR
_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTENS$WIDESTRING$WIDESTRING$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj3390
Lj3390:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$1,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%cl
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3407
	jmp	Lj3408
Lj3407:
	movl	L_$DOM$_Ld73$non_lazy_ptr-Lj3390(%ebx),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	negl	%ecx
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj3390(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La31:
	movl	%ebp,%ecx
	leal	La31-Lj3390(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3408:
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj3390(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj3435
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj3435:
	movl	-8(%ebp),%esi
	testl	%esi,%esi
	jne	Lj3438
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3390(%ebx),%ecx
	movl	%ecx,%esi
Lj3438:
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-16(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-16(%ebp),%eax
	movw	-20(%ebp),%dx
	movw	%dx,40(%eax)
	movl	-16(%ebp),%eax
	movw	-24(%ebp),%dx
	movw	%dx,42(%eax)
	movl	-16(%ebp),%eax
	orl	$4,8(%eax)
	movl	-16(%ebp),%eax
	orl	$16,8(%eax)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__CREATEELEMENTNS$WIDESTRING$WIDESTRING$$TDOMELEMENT
_DOM_TDOMDOCUMENT_$__CREATEELEMENTNS$WIDESTRING$WIDESTRING$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj3444
Lj3444:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$1,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%cl
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3461
	jmp	Lj3462
Lj3461:
	movl	L_$DOM$_Ld75$non_lazy_ptr-Lj3444(%ebx),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	negl	%ecx
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj3444(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La32:
	movl	%ebp,%ecx
	leal	La32-Lj3444(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3462:
	movl	L_VMT_DOM_TDOMELEMENT$non_lazy_ptr-Lj3444(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj3489
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj3489:
	movl	-8(%ebp),%esi
	testl	%esi,%esi
	jne	Lj3492
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3444(%ebx),%ecx
	movl	%ecx,%esi
Lj3492:
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-16(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-16(%ebp),%edx
	movw	-20(%ebp),%ax
	movw	%ax,40(%edx)
	movl	-16(%ebp),%eax
	movw	-24(%ebp),%dx
	movw	%dx,42(%eax)
	movl	-16(%ebp),%eax
	orl	$4,8(%eax)
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__ATTACHDEFAULTATTRS$stub
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__GETELEMENTBYID$WIDESTRING$$TDOMELEMENT
_DOM_TDOMDOCUMENT_$__GETELEMENTBYID$WIDESTRING$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3500
Lj3500:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,56(%eax)
	jne	Lj3503
	jmp	Lj3504
Lj3503:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj3511
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj3511:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj3514
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3500(%ebx),%esi
	movl	%esi,%edx
Lj3514:
	call	L_XMLUTILS_THASHTABLE_$__GET$PWIDECHAR$LONGINT$$TOBJECT$stub
	movl	%eax,-12(%ebp)
Lj3504:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__IMPORTNODE$TDOMNODE$BOOLEAN$$TDOMNODE
_DOM_TDOMDOCUMENT_$__IMPORTNODE$TDOMNODE$BOOLEAN$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%ecx
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT
_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj3526
Lj3526:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj3528
	decl	-20(%ebp)
	.align 2
Lj3529:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3532
	jmp	Lj3533
Lj3532:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3525
Lj3533:
	cmpl	-20(%ebp),%ebx
	jg	Lj3529
Lj3528:
	cmpb	$0,-8(%ebp)
	jne	Lj3540
	jmp	Lj3541
Lj3540:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_DOM_TNAMESPACES$non_lazy_ptr-Lj3526(%esi),%edx
	movl	-12(%ebp),%eax
	leal	68(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%eax
	movl	68(%eax),%edi
	movl	-16(%ebp),%ebx
	leal	(%edi,%ebx,4),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%edi,%ebx,4)
	jmp	Lj3558
Lj3541:
	movl	$-1,-16(%ebp)
Lj3558:
Lj3525:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__SETXMLVERSION$WIDESTRING
_DOM_TDOMDOCUMENT_$__SETXMLVERSION$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3562
Lj3562:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj3562(%ebx),%edx
	movl	L_$DOM$_Ld77$non_lazy_ptr-Lj3562(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La33:
	movl	%ebp,%ecx
	leal	La33-Lj3562(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENT_$__SETXMLSTANDALONE$BOOLEAN
_DOM_TDOMDOCUMENT_$__SETXMLSTANDALONE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3570
Lj3570:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj3570(%ebx),%edx
	movl	L_$DOM$_Ld79$non_lazy_ptr-Lj3570(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La34:
	movl	%ebp,%ecx
	leal	La34-Lj3570(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TXMLDOCUMENT_$__CREATE$$TXMLDOCUMENT
_DOM_TXMLDOCUMENT_$__CREATE$$TXMLDOCUMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3579
	jmp	Lj3580
Lj3579:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj3580:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3585
	jmp	Lj3586
Lj3585:
	jmp	Lj3577
Lj3586:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3589
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3593
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMDOCUMENT_$__CREATE$$TDOMDOCUMENT$stub
	movl	-8(%ebp),%eax
	movl	$1,52(%eax)
Lj3593:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3594
	call	LFPC_RERAISE$stub
Lj3594:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3604
	jmp	Lj3603
Lj3604:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3602
	jmp	Lj3603
Lj3602:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3603:
Lj3589:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3591
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3608
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3609
	jmp	Lj3610
Lj3609:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3610:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3608:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3607
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3607:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3591
Lj3591:
Lj3577:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TXMLDOCUMENT_$__CREATECDATASECTION$WIDESTRING$$TDOMCDATASECTION
_DOM_TXMLDOCUMENT_$__CREATECDATASECTION$WIDESTRING$$TDOMCDATASECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj3616
Lj3616:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_VMT_DOM_TDOMCDATASECTION$non_lazy_ptr-Lj3616(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%esi)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TXMLDOCUMENT_$__CREATEPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING$$TDOMPROCESSINGINSTRUCTION
_DOM_TXMLDOCUMENT_$__CREATEPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING$$TDOMPROCESSINGINSTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj3632
Lj3632:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3633
	jmp	Lj3634
Lj3633:
	movl	L_$DOM$_Ld81$non_lazy_ptr-Lj3632(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj3632(%ebx),%edx
	movl	$5,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La35:
	movl	%ebp,%ecx
	leal	La35-Lj3632(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3634:
	movl	L_VMT_DOM_TDOMPROCESSINGINSTRUCTION$non_lazy_ptr-Lj3632(%ebx),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	32(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,32(%esi)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TXMLDOCUMENT_$__CREATEENTITYREFERENCE$WIDESTRING$$TDOMENTITYREFERENCE
_DOM_TXMLDOCUMENT_$__CREATEENTITYREFERENCE$WIDESTRING$$TDOMENTITYREFERENCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj3664
Lj3664:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3665
	jmp	Lj3666
Lj3665:
	movl	L_$DOM$_Ld83$non_lazy_ptr-Lj3664(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj3664(%ebx),%edx
	movl	$5,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La36:
	movl	%ebp,%ecx
	leal	La36-Lj3664(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3666:
	movl	L_VMT_DOM_TDOMENTITYREFERENCE$non_lazy_ptr-Lj3664(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	40(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,40(%esi)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj3697
	jmp	Lj3698
Lj3697:
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP$stub
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj3709
	jmp	Lj3710
Lj3709:
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT$stub
Lj3710:
Lj3698:
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TXMLDOCUMENT_$__SETXMLVERSION$WIDESTRING
_DOM_TXMLDOCUMENT_$__SETXMLVERSION$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3722
Lj3722:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$DOM$_Ld47$non_lazy_ptr-Lj3722(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3723
	jmp	Lj3724
Lj3723:
	movl	-8(%ebp),%eax
	movl	$1,52(%eax)
	jmp	Lj3731
Lj3724:
	movl	-4(%ebp),%eax
	movl	L_$DOM$_Ld85$non_lazy_ptr-Lj3722(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3732
	jmp	Lj3733
Lj3732:
	movl	-8(%ebp),%eax
	movl	$2,52(%eax)
	jmp	Lj3740
Lj3733:
	movl	L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr-Lj3722(%ebx),%edx
	movl	L_$DOM$_Ld87$non_lazy_ptr-Lj3722(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub
La37:
	movl	%ebp,%ecx
	leal	La37-Lj3722(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3740:
Lj3731:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TXMLDOCUMENT_$__SETXMLSTANDALONE$BOOLEAN
_DOM_TXMLDOCUMENT_$__SETXMLSTANDALONE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,92(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__GETNODENAME$$WIDESTRING
_DOM_TDOMNODE_NS_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,44(%eax)
	jne	Lj3753
	jmp	Lj3754
Lj3753:
	movl	-4(%ebp),%eax
	movl	44(%eax),%esi
	movl	(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj3757
Lj3754:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj3757:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__GETLOCALNAME$$WIDESTRING
_DOM_TDOMNODE_NS_$__GETLOCALNAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj3762
	jmp	Lj3763
Lj3762:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%eax
	movl	$2147483647,%ecx
	call	Lfpc_unicodestr_copy$stub
	jmp	Lj3772
Lj3763:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj3772:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__GETNAMESPACEURI$$WIDESTRING
_DOM_TDOMNODE_NS_$__GETNAMESPACEURI$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	68(%eax),%esi
	movl	-4(%ebp),%eax
	movzwl	40(%eax),%ebx
	movl	(%esi,%ebx,4),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	(%esi,%ebx,4),%eax
	movl	%eax,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__GETPREFIX$$WIDESTRING
_DOM_TDOMNODE_NS_$__GETPREFIX$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%eax
	cmpl	$2,%eax
	jl	Lj3781
	jmp	Lj3782
Lj3781:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj3785
Lj3782:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzwl	42(%eax),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_unicodestr_copy$stub
Lj3785:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__SETPREFIX$WIDESTRING
_DOM_TDOMNODE_NS_$__SETPREFIX$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj3795
Lj3795:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-72(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3796
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%dl
	movl	-4(%ebp),%eax
	call	L_XMLUTILS_ISXMLNAME$WIDESTRING$BOOLEAN$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3801
	jmp	Lj3802
Lj3801:
	movl	L_$DOM$_Ld89$non_lazy_ptr-Lj3795(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj3795(%ebx),%edx
	movl	$5,%ecx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La38:
	movl	%ebp,%ecx
	leal	La38-Lj3795(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3802:
	movl	-4(%ebp),%edx
	movw	$58,%ax
	call	L_SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj3815
	jmp	Lj3819
Lj3819:
	movl	-8(%ebp),%eax
	testl	$4,8(%eax)
	je	Lj3815
	jmp	Lj3818
Lj3818:
	movl	-4(%ebp),%eax
	movl	L_$DOM$_Ld43$non_lazy_ptr-Lj3795(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3824
	jmp	Lj3817
Lj3824:
	movl	-8(%ebp),%eax
	movzwl	40(%eax),%eax
	cmpl	$1,%eax
	jne	Lj3815
	jmp	Lj3817
Lj3817:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%edx
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj3795(%ebx),%eax
	cmpl	%eax,%edx
	je	Lj3830
	jmp	Lj3829
Lj3830:
	movl	-4(%ebp),%eax
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj3795(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3835
	jmp	Lj3829
Lj3835:
	movl	-8(%ebp),%eax
	movzwl	40(%eax),%eax
	cmpl	$2,%eax
	jne	Lj3815
	jmp	Lj3829
Lj3829:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%eax
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj3795(%ebx),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj3815
	jmp	Lj3816
Lj3815:
	movl	L_VMT_DOM_EDOMNAMESPACE$non_lazy_ptr-Lj3795(%ebx),%edx
	movl	L_$DOM$_Ld89$non_lazy_ptr-Lj3795(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNAMESPACE_$__CREATE$ANSISTRING$$EDOMNAMESPACE$stub
La39:
	movl	%ebp,%ecx
	leal	La39-Lj3795(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3816:
	movl	-4(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$DOM$_Ld91$non_lazy_ptr-Lj3795(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	42(%eax),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	(%eax),%eax
	movl	$2147483647,%ecx
	call	Lfpc_unicodestr_copy$stub
	movl	-72(%ebp),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_unicodestr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	72(%eax),%eax
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj3870
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj3870:
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj3873
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3795(%ebx),%esi
	movl	%esi,%edx
Lj3873:
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-8(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3876
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj3876:
	incl	%eax
	movl	-8(%ebp),%edx
	movw	%ax,42(%edx)
Lj3796:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3797
	call	LFPC_RERAISE$stub
Lj3797:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__COMPARENAME$WIDESTRING$$LONGINT
_DOM_TDOMNODE_NS_$__COMPARENAME$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj3884
Lj3884:
	popl	%esi
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
	jne	Lj3885
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3896
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj3896:
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	jne	Lj3903
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3884(%esi),%eax
	movl	%eax,%edx
Lj3903:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3906
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj3906:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj3909
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj3884(%esi),%ecx
	movl	%ecx,%ebx
Lj3909:
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	L_DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj3885:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3886
	call	LFPC_RERAISE$stub
Lj3886:
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT
_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movb	$1,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	-12(%ebp),%edx
	movw	%ax,40(%edx)
	movl	-12(%ebp),%edx
	movw	-8(%ebp),%ax
	movw	%ax,42(%edx)
	movl	-12(%ebp),%eax
	orl	$4,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__GETNODETYPE$$LONGINT
_DOM_TDOMATTR_$__GETNODETYPE$$LONGINT:
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
.globl	_DOM_TDOMATTR_$__GETPARENTNODE$$TDOMNODE
_DOM_TDOMATTR_$__GETPARENTNODE$$TDOMNODE:
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
.globl	_DOM_TDOMATTR_$__DESTROY
_DOM_TDOMATTR_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3932
	jmp	Lj3933
Lj3932:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3933:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj3938
	jmp	Lj3937
Lj3938:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	$32,8(%eax)
	je	Lj3936
	jmp	Lj3937
Lj3936:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DOM_TDOMELEMENT_$__REMOVEATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub
Lj3937:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3951
	jmp	Lj3950
Lj3951:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3949
	jmp	Lj3950
Lj3949:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3950:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMATTR_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3956
	movl	-12(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj3959
	jmp	Lj3960
Lj3959:
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%ebx,%ecx
	call	L_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTENS$WIDESTRING$WIDESTRING$$TDOMATTR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj3977
Lj3960:
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTE$WIDESTRING$$TDOMATTR$stub
	movl	%eax,-16(%ebp)
Lj3977:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,48(%edx)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT$stub
Lj3956:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3957
	call	LFPC_RERAISE$stub
Lj3957:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__GETNODEVALUE$$WIDESTRING
_DOM_TDOMATTR_$__GETNODEVALUE$$WIDESTRING:
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
	jne	Lj3998
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	-52(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj4007
	jmp	Lj4008
Lj4007:
	movl	-8(%ebp),%eax
	call	L_XMLUTILS_NORMALIZESPACES$WIDESTRING$stub
Lj4008:
Lj3998:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3999
	call	LFPC_RERAISE$stub
Lj3999:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__SETNODEVALUE$WIDESTRING
_DOM_TDOMATTR_$__SETNODEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-8(%ebp),%eax
	orl	$16,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN
_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$16,8(%eax)
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__GETISID$$BOOLEAN
_DOM_TDOMATTR_$__GETISID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	cmpl	$1,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMATTR_$__GETOWNERELEMENT$$TDOMELEMENT
_DOM_TDOMATTR_$__GETOWNERELEMENT$$TDOMELEMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETNODETYPE$$LONGINT
_DOM_TDOMELEMENT_$__GETNODETYPE$$LONGINT:
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
.globl	_DOM_TDOMELEMENT_$__DESTROY
_DOM_TDOMELEMENT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4035
	jmp	Lj4036
Lj4035:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj4036:
	movl	-8(%ebp),%eax
	orl	$32,8(%eax)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$0,56(%eax)
	jne	Lj4039
	jmp	Lj4040
Lj4039:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DOM_TDOMDOCUMENT_$__REMOVEID$TDOMELEMENT$stub
Lj4040:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,48(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4055
	jmp	Lj4054
Lj4055:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4053
	jmp	Lj4054
Lj4053:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj4054:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMELEMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj4059
Lj4059:
	popl	%edi
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj4060
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj4063
	jmp	Lj4064
Lj4063:
	movl	-12(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj4065
	jmp	Lj4066
Lj4065:
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-72(%ebp),%ebx
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%ebx,%ecx
	call	L_DOM_TDOMDOCUMENT_$__CREATEELEMENTNS$WIDESTRING$WIDESTRING$$TDOMELEMENT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj4083
Lj4066:
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*208(%ecx)
	movl	%eax,-16(%ebp)
Lj4083:
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4094
	jmp	Lj4095
Lj4094:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj4097
	decl	-20(%ebp)
	.align 2
Lj4098:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	call	L_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4107
	jmp	Lj4108
Lj4107:
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	movb	$1,%dl
	movl	-24(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj4108:
	cmpl	-20(%ebp),%esi
	jg	Lj4098
Lj4097:
Lj4095:
	jmp	Lj4125
Lj4064:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_VMT_DOM_TDOMELEMENT$non_lazy_ptr-Lj4059(%edi),%edx
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	40(%edx),%eax
	movl	%eax,40(%ecx)
	movl	44(%edx),%eax
	movl	%eax,44(%ecx)
	movl	-12(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj4140
	jmp	Lj4141
Lj4140:
	movl	-16(%ebp),%eax
	orl	$4,8(%eax)
Lj4141:
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4142
	jmp	Lj4143
Lj4142:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj4145
	decl	-20(%ebp)
	.align 2
Lj4146:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%eax
	movb	$1,%dl
	movl	-24(%ebp),%esi
	movl	(%esi),%esi
	call	*188(%esi)
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	call	L_DOM_TDOMATTR_$__GETSPECIFIED$$BOOLEAN$stub
	testb	%al,%al
	je	Lj4163
	jmp	Lj4164
Lj4163:
	movl	-28(%ebp),%eax
	andl	$-17,8(%eax)
Lj4164:
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj4146
Lj4145:
Lj4143:
Lj4125:
	cmpb	$0,-4(%ebp)
	jne	Lj4171
	jmp	Lj4172
Lj4171:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT$stub
Lj4172:
Lj4060:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj4061
	call	LFPC_RERAISE$stub
Lj4061:
	movl	-16(%ebp),%eax
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__ATTACHDEFAULTATTRS
_DOM_TDOMELEMENT_$__ATTACHDEFAULTATTRS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,44(%eax)
	jne	Lj4182
	jmp	Lj4181
Lj4181:
	jmp	Lj4179
Lj4182:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj4187
	jmp	Lj4186
Lj4187:
	movl	-8(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj4185
	jmp	Lj4186
Lj4185:
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__GETATTRDEFCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4189
	decl	-16(%ebp)
	.align 2
Lj4190:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TELEMENTDECL_$__ATTRDEFBYINDEX$LONGINT$$TATTRIBUTEDEF$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj4201
	cmpl	$3,%eax
	je	Lj4201
Lj4201:
	je	Lj4199
	jmp	Lj4200
Lj4199:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__RESTOREDEFAULTATTR$TATTRIBUTEDEF$stub
Lj4200:
	cmpl	-16(%ebp),%ebx
	jg	Lj4190
Lj4189:
Lj4186:
Lj4179:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__INTERNALLOOKUPPREFIX$WIDESTRING$TDOMELEMENT$$WIDESTRING
_DOM_TDOMELEMENT_$__INTERNALLOOKUPPREFIX$WIDESTRING$TDOMELEMENT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj4207
Lj4207:
	popl	%esi
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
	jne	Lj4208
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4213
	jmp	Lj4214
Lj4213:
	jmp	Lj4208
Lj4214:
	movl	-12(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj4218
	jmp	Lj4216
Lj4218:
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-64(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4217
	jmp	Lj4216
Lj4217:
	movl	-12(%ebp),%eax
	movzwl	42(%eax),%eax
	cmpl	$0,%eax
	jg	Lj4215
	jmp	Lj4216
Lj4215:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4231
	jmp	Lj4232
Lj4231:
	jmp	Lj4208
Lj4232:
Lj4216:
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4243
	jmp	Lj4244
Lj4243:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj4246
	decl	-16(%ebp)
	.align 2
Lj4247:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-20(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
	movl	-64(%ebp),%eax
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj4207(%esi),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4258
	jmp	Lj4257
Lj4258:
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-64(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4256
	jmp	Lj4257
Lj4256:
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj4279
	jmp	Lj4280
Lj4279:
	jmp	Lj4208
Lj4280:
Lj4257:
	cmpl	-16(%ebp),%ebx
	jg	Lj4247
Lj4246:
Lj4244:
	movl	-12(%ebp),%eax
	call	L_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT$stub
	movl	%eax,%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_DOM_TDOMELEMENT_$__INTERNALLOOKUPPREFIX$WIDESTRING$TDOMELEMENT$$WIDESTRING$stub
Lj4208:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj4209
	call	LFPC_RERAISE$stub
Lj4209:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_LOADATTRIBUTE$TDOMDOCUMENT$PNODEDATA$$TDOMATTR
_DOM_LOADATTRIBUTE$TDOMDOCUMENT$PNODEDATA$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj4304
Lj4304:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4304(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,44(%edx)
	movl	-8(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj4319
	jmp	Lj4320
Lj4319:
	movl	-12(%ebp),%eax
	orl	$16,8(%eax)
Lj4320:
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj4321
	jmp	Lj4322
Lj4321:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,48(%edx)
Lj4322:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj4325
	jmp	Lj4326
Lj4325:
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT$stub
Lj4326:
	movl	-8(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj4333
	jmp	Lj4334
Lj4333:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4338
	.align 2
Lj4337:
	movl	-16(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	$3,%eax
	jb	Lj4341
	subl	$3,%eax
	je	Lj4342
	subl	$2,%eax
	je	Lj4343
	jmp	Lj4341
Lj4342:
	movl	-16(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	jmp	Lj4340
Lj4343:
	movl	-16(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
	jmp	Lj4340
Lj4341:
Lj4340:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
Lj4338:
	cmpl	$0,-16(%ebp)
	jne	Lj4337
	jmp	Lj4339
Lj4339:
	jmp	Lj4362
Lj4334:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj4363
	jmp	Lj4364
Lj4363:
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__INTERNALAPPEND$TDOMNODE$stub
Lj4364:
Lj4362:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__RESTOREDEFAULTATTR$TATTRIBUTEDEF
_DOM_TDOMELEMENT_$__RESTOREDEFAULTATTR$TATTRIBUTEDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4374
Lj4374:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj4375
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	$32,8(%eax)
	jne	Lj4378
	jmp	Lj4379
Lj4378:
	jmp	Lj4375
Lj4379:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_DOM_LOADATTRIBUTE$TDOMDOCUMENT$PNODEDATA$$TDOMATTR$stub
	movl	%eax,-12(%ebp)
	leal	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-20(%ebp),%edx
	movw	$58,%ax
	call	L_SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%edx
	movl	L_$DOM$_Ld17$non_lazy_ptr-Lj4374(%ebx),%eax
	call	L_SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj4396
	jmp	Lj4397
Lj4396:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj4405
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4405:
	cmpl	$5,%eax
	je	Lj4402
	jmp	Lj4404
Lj4404:
	movl	-16(%ebp),%eax
	cmpl	$6,%eax
	je	Lj4402
	jmp	Lj4403
Lj4402:
	movl	-16(%ebp),%ecx
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj4374(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT$stub
Lj4403:
	jmp	Lj4412
Lj4397:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4413
	jmp	Lj4414
Lj4413:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	je	Lj4417
	jmp	Lj4416
Lj4417:
	movl	-20(%ebp),%edx
	movl	L_$DOM$_Ld43$non_lazy_ptr-Lj4374(%ebx),%eax
	call	L_SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj4415
	jmp	Lj4416
Lj4415:
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj4374(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$4,%ecx
	call	L_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT$stub
	jmp	Lj4428
Lj4416:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_unicodestr_copy$stub
	movl	-68(%ebp),%edx
	leal	-24(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING$stub
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_NS_$__SETNSI$WIDESTRING$LONGINT$stub
Lj4428:
Lj4414:
Lj4412:
	movl	-8(%ebp),%eax
	testl	$4,8(%eax)
	jne	Lj4449
	jmp	Lj4450
Lj4449:
	movl	-12(%ebp),%eax
	orl	$4,8(%eax)
Lj4450:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub
Lj4375:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj4376
	call	LFPC_RERAISE$stub
Lj4376:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__NORMALIZE
_DOM_TDOMELEMENT_$__NORMALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4469
	jmp	Lj4470
Lj4469:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj4472
	decl	-8(%ebp)
	.align 2
Lj4473:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*184(%edx)
	cmpl	-8(%ebp),%ebx
	jg	Lj4473
Lj4472:
Lj4470:
	movl	-4(%ebp),%eax
	call	L_DOM_TDOMNODE_$__NORMALIZE$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
_DOM_TDOMELEMENT_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4487
Lj4487:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj4488
	jmp	Lj4489
Lj4488:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DOM_TATTRIBUTEMAP$non_lazy_ptr-Lj4487(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP$stub
	movl	-4(%ebp),%edx
	movl	%eax,48(%edx)
Lj4489:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETATTRIBUTE$WIDESTRING$$WIDESTRING
_DOM_TDOMELEMENT_$__GETATTRIBUTE$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj4502
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
	movl	-8(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4509
	jmp	Lj4510
Lj4509:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj4517
	jmp	Lj4518
Lj4517:
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-60(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,(%ebx)
Lj4518:
Lj4510:
Lj4502:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4503
	call	LFPC_RERAISE$stub
Lj4503:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETATTRIBUTENS$WIDESTRING$WIDESTRING$$WIDESTRING
_DOM_TDOMELEMENT_$__GETATTRIBUTENS$WIDESTRING$WIDESTRING$$WIDESTRING:
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
	jne	Lj4527
	movl	8(%ebp),%eax
	movl	$0,%edx
	call	Lfpc_unicodestr_setlength$stub
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4534
	jmp	Lj4535
Lj4534:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	48(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj4544
	jmp	Lj4545
Lj4544:
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-60(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,(%ebx)
Lj4545:
Lj4535:
Lj4527:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4528
	call	LFPC_RERAISE$stub
Lj4528:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__SETATTRIBUTE$WIDESTRING$WIDESTRING
_DOM_TDOMELEMENT_$__SETATTRIBUTE$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj4553
Lj4553:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4556
	jmp	Lj4557
Lj4556:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,%edx
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4553(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-20(%ebp)
	jmp	Lj4578
Lj4557:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTE$WIDESTRING$$TDOMATTR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	8(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
Lj4578:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__REMOVEATTRIBUTE$WIDESTRING
_DOM_TDOMELEMENT_$__REMOVEATTRIBUTE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-8(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4601
	jmp	Lj4602
Lj4601:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__INTERNALREMOVE$WIDESTRING$$TDOMNODE$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj4602:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__REMOVEATTRIBUTENS$WIDESTRING$WIDESTRING
_DOM_TDOMELEMENT_$__REMOVEATTRIBUTENS$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4615
	jmp	Lj4616
Lj4615:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_DOM_TATTRIBUTEMAP_$__INTERNALREMOVENS$WIDESTRING$WIDESTRING$$TDOMNODE$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj4616:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__SETATTRIBUTENS$WIDESTRING$WIDESTRING$WIDESTRING
_DOM_TDOMELEMENT_$__SETATTRIBUTENS$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj4628
Lj4628:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj4629
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movb	$1,%cl
	call	L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	52(%eax),%eax
	cmpl	$2,%eax
	seteb	%cl
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4650
	jmp	Lj4651
Lj4650:
	movl	L_$DOM$_Ld93$non_lazy_ptr-Lj4628(%ebx),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	negl	%ecx
	movl	L_VMT_DOM_EDOMERROR$non_lazy_ptr-Lj4628(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub
La40:
	movl	%ebp,%ecx
	leal	La40-Lj4628(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj4651:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_unicodestr_copy$stub
	movl	-72(%ebp),%ecx
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	%esi,%eax
	call	L_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj4660
	jmp	Lj4661
Lj4660:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETITEM$LONGWORD$$TDOMNODE$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
	jmp	Lj4692
Lj4661:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4628(%ebx),%edx
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%edx
	movw	-24(%ebp),%ax
	movw	%ax,40(%edx)
	movl	-20(%ebp),%eax
	orl	$4,8(%eax)
Lj4692:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	8(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	72(%eax),%eax
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj4727
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj4727:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj4730
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj4628(%ebx),%esi
	movl	%esi,%edx
Lj4730:
	call	L_XMLUTILS_THASHTABLE_$__FINDORADD$PWIDECHAR$LONGINT$$PHASHITEM$stub
	movl	-20(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-20(%ebp),%edx
	movw	-28(%ebp),%ax
	movw	%ax,42(%edx)
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj4629:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj4630
	call	LFPC_RERAISE$stub
Lj4630:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR
_DOM_TDOMELEMENT_$__GETATTRIBUTENODE$WIDESTRING$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj4738
Lj4738:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4739
	jmp	Lj4740
Lj4739:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE$stub
	movl	%eax,%edx
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4738(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	jmp	Lj4751
Lj4740:
	movl	$0,-12(%ebp)
Lj4751:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETATTRIBUTENODENS$WIDESTRING$WIDESTRING$$TDOMATTR
_DOM_TDOMELEMENT_$__GETATTRIBUTENODENS$WIDESTRING$WIDESTRING$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj4755
Lj4755:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4756
	jmp	Lj4757
Lj4756:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	48(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	%eax,%edx
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4755(%esi),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	jmp	Lj4770
Lj4757:
	movl	$0,-16(%ebp)
Lj4770:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR
_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4774
Lj4774:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	%eax,%edx
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4774(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__SETATTRIBUTENODENS$TDOMATTR$$TDOMATTR
_DOM_TDOMELEMENT_$__SETATTRIBUTENODENS$TDOMATTR$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj4790
Lj4790:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	%eax,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	%eax,%edx
	movl	L_VMT_DOM_TDOMATTR$non_lazy_ptr-Lj4790(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__REMOVEATTRIBUTENODE$TDOMATTR$$TDOMATTR
_DOM_TDOMELEMENT_$__REMOVEATTRIBUTENODE$TDOMATTR$$TDOMATTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj4806
Lj4806:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4811
	jmp	Lj4812
Lj4811:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jg	Lj4819
	jmp	Lj4820
Lj4819:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	48(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj4805
Lj4820:
Lj4812:
	movl	L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr-Lj4806(%ebx),%edx
	movl	L_$DOM$_Ld95$non_lazy_ptr-Lj4806(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub
La41:
	movl	%ebp,%ecx
	leal	La41-Lj4806(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj4805:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETELEMENTSBYTAGNAME$WIDESTRING$$TDOMNODELIST
_DOM_TDOMELEMENT_$__GETELEMENTSBYTAGNAME$WIDESTRING$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	$0,%ecx
	call	L_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__GETELEMENTSBYTAGNAMENS$WIDESTRING$WIDESTRING$$TDOMNODELIST
_DOM_TDOMELEMENT_$__GETELEMENTSBYTAGNAMENS$WIDESTRING$WIDESTRING$$TDOMNODELIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__HASATTRIBUTE$WIDESTRING$$BOOLEAN
_DOM_TDOMELEMENT_$__HASATTRIBUTE$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4863
	jmp	Lj4862
Lj4863:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEM$WIDESTRING$$TDOMNODE$stub
	testl	%eax,%eax
	jne	Lj4861
	jmp	Lj4862
Lj4861:
	movb	$1,-9(%ebp)
	jmp	Lj4868
Lj4862:
	movb	$0,-9(%ebp)
Lj4868:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__HASATTRIBUTENS$WIDESTRING$WIDESTRING$$BOOLEAN
_DOM_TDOMELEMENT_$__HASATTRIBUTENS$WIDESTRING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4873
	jmp	Lj4872
Lj4873:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	48(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	testl	%eax,%eax
	jne	Lj4871
	jmp	Lj4872
Lj4871:
	movb	$1,-13(%ebp)
	jmp	Lj4880
Lj4872:
	movb	$0,-13(%ebp)
Lj4880:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMELEMENT_$__HASATTRIBUTES$$BOOLEAN
_DOM_TDOMELEMENT_$__HASATTRIBUTES$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,48(%eax)
	jne	Lj4885
	jmp	Lj4884
Lj4885:
	movl	-4(%ebp),%eax
	movl	48(%eax),%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__GETLENGTH$$LONGWORD$stub
	cmpl	$0,%eax
	ja	Lj4883
	jmp	Lj4884
Lj4883:
	movb	$1,-5(%ebp)
	jmp	Lj4888
Lj4884:
	movb	$0,-5(%ebp)
Lj4888:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMTEXT_$__GETNODETYPE$$LONGINT
_DOM_TDOMTEXT_$__GETNODETYPE$$LONGINT:
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
.globl	_DOM_TDOMTEXT_$__GETNODENAME$$WIDESTRING
_DOM_TDOMTEXT_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj4894
Lj4894:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$DOM$_Ld97$non_lazy_ptr-Lj4894(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMTEXT_$__SETNODEVALUE$WIDESTRING
_DOM_TDOMTEXT_$__SETNODEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING$stub
	movl	-8(%ebp),%eax
	andl	$-9,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMTEXT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMTEXT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMTEXT_$__SPLITTEXT$LONGWORD$$TDOMTEXT
_DOM_TDOMTEXT_$__SPLITTEXT$LONGWORD$$TDOMTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj4912
Lj4912:
	popl	%ebx
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
	jne	Lj4913
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj4922
	jmp	Lj4923
Lj4922:
	movl	L_VMT_DOM_EDOMINDEXSIZE$non_lazy_ptr-Lj4912(%ebx),%edx
	movl	L_$DOM$_Ld99$non_lazy_ptr-Lj4912(%ebx),%ecx
	movl	$0,%eax
	call	L_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE$stub
La42:
	movl	%ebp,%ecx
	leal	La42-Lj4912(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj4923:
	movb	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	incl	%eax
	leal	-2(%edx,%eax,2),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATETEXTNODEBUF$PWIDECHAR$LONGINT$BOOLEAN$$TDOMTEXT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	$8,%edx
	andl	8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%edx,8(%eax)
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	$1,%edx
	call	Lfpc_unicodestr_copy$stub
	movl	-60(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	28(%esi),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj4952
	jmp	Lj4953
Lj4952:
	movl	-8(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	12(%esi),%esi
	movl	(%esi),%esi
	call	*160(%esi)
Lj4953:
Lj4913:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj4914
	call	LFPC_RERAISE$stub
Lj4914:
	movl	-12(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMTEXT_$__ISELEMENTCONTENTWHITESPACE$$BOOLEAN
_DOM_TDOMTEXT_$__ISELEMENTCONTENTWHITESPACE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	$8,8(%eax)
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCOMMENT_$__GETNODETYPE$$LONGINT
_DOM_TDOMCOMMENT_$__GETNODETYPE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$8,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCOMMENT_$__GETNODENAME$$WIDESTRING
_DOM_TDOMCOMMENT_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj4969
Lj4969:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$DOM$_Ld101$non_lazy_ptr-Lj4969(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCOMMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMCOMMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__CREATECOMMENT$WIDESTRING$$TDOMCOMMENT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCDATASECTION_$__GETNODETYPE$$LONGINT
_DOM_TDOMCDATASECTION_$__GETNODETYPE$$LONGINT:
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
.globl	_DOM_TDOMCDATASECTION_$__GETNODENAME$$WIDESTRING
_DOM_TDOMCDATASECTION_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj4985
Lj4985:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_$DOM$_Ld103$non_lazy_ptr-Lj4985(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	%ebx,(%edi)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMCDATASECTION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMCDATASECTION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*212(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETNODETYPE$$LONGINT
_DOM_TDOMDOCUMENTTYPE_$__GETNODETYPE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$10,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETNODENAME$$WIDESTRING
_DOM_TDOMDOCUMENTTYPE_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	20(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	20(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETPUBLICID$$WIDESTRING
_DOM_TDOMDOCUMENTTYPE_$__GETPUBLICID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	28(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING
_DOM_TDOMDOCUMENTTYPE_$__GETSYSTEMID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	24(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	24(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETINTERNALSUBSET$$WIDESTRING
_DOM_TDOMDOCUMENTTYPE_$__GETINTERNALSUBSET$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	32(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	32(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_CONVERTENTITY$PHASHITEM$POINTER$$BOOLEAN
_DOM_CONVERTENTITY$PHASHITEM$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj5017
Lj5017:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	%eax,%ecx
	movl	L_VMT_DOM_TDOMENTITY$non_lazy_ptr-Lj5017(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,56(%edx)
	movl	-16(%ebp),%eax
	movb	$1,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP$stub
	movl	%eax,%esi
	movl	-16(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_CONVERTNOTATION$PHASHITEM$POINTER$$BOOLEAN
_DOM_CONVERTNOTATION$PHASHITEM$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj5045
Lj5045:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	%eax,%ecx
	movl	L_VMT_DOM_TDOMNOTATION$non_lazy_ptr-Lj5045(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,28(%edx)
	movl	-16(%ebp),%eax
	movb	$1,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENTTYPE_$__GETNOTATIONS$$TDOMNAMEDNODEMAP$stub
	movl	%eax,%esi
	movl	-16(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE
_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj5073
Lj5073:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5074
	jmp	Lj5075
Lj5074:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj5075:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5080
	jmp	Lj5081
Lj5080:
	jmp	Lj5072
Lj5081:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5084
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5088
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	8(%ebp),%eax
	call	L_DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE$stub
	movl	%eax,%esi
	movl	L_DOM_CONVERTENTITY$PHASHITEM$POINTER$$BOOLEAN$non_lazy_ptr-Lj5073(%ebx),%edx
	movl	-12(%ebp),%ecx
	movl	%esi,%eax
	call	L_XMLUTILS_THASHTABLE_$__FOREACH$THASHFOREACH$POINTER$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE$stub
	movl	%eax,%esi
	movl	L_DOM_CONVERTNOTATION$PHASHITEM$POINTER$$BOOLEAN$non_lazy_ptr-Lj5073(%ebx),%edx
	movl	-12(%ebp),%ecx
	movl	%esi,%eax
	call	L_XMLUTILS_THASHTABLE_$__FOREACH$THASHFOREACH$POINTER$stub
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
Lj5088:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5089
	call	LFPC_RERAISE$stub
Lj5089:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5127
	jmp	Lj5126
Lj5127:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5125
	jmp	Lj5126
Lj5125:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj5126:
Lj5084:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj5086
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5131
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5132
	jmp	Lj5133
Lj5132:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj5133:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj5131:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5130
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj5130:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj5086
Lj5086:
Lj5072:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__DESTROY
_DOM_TDOMDOCUMENTTYPE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5140
	jmp	Lj5141
Lj5140:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj5141:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_DTDMODEL_TDTDMODEL_$__RELEASE$stub
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DOM_TDOMNODE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5156
	jmp	Lj5155
Lj5156:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5154
	jmp	Lj5155
Lj5154:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj5155:
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP
_DOM_TDOMDOCUMENTTYPE_$__GETENTITIES$$TDOMNAMEDNODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj5160
Lj5160:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj5161
	jmp	Lj5162
Lj5161:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DOM_TDOMNAMEDNODEMAP$non_lazy_ptr-Lj5160(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP$stub
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
Lj5162:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMDOCUMENTTYPE_$__GETNOTATIONS$$TDOMNAMEDNODEMAP
_DOM_TDOMDOCUMENTTYPE_$__GETNOTATIONS$$TDOMNAMEDNODEMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj5174
Lj5174:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj5175
	jmp	Lj5176
Lj5175:
	movl	-4(%ebp),%ecx
	movl	L_VMT_DOM_TDOMNAMEDNODEMAP$non_lazy_ptr-Lj5174(%ebx),%edx
	movl	$0,%eax
	call	L_DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP$stub
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
Lj5176:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNOTATION_$__GETNODETYPE$$LONGINT
_DOM_TDOMNOTATION_$__GETNODETYPE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$12,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNOTATION_$__GETNODENAME$$WIDESTRING
_DOM_TDOMNOTATION_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	8(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNOTATION_$__GETPUBLICID$$WIDESTRING
_DOM_TDOMNOTATION_$__GETPUBLICID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	12(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNOTATION_$__GETSYSTEMID$$WIDESTRING
_DOM_TDOMNOTATION_$__GETSYSTEMID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	16(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	16(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMNOTATION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMNOTATION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5204
Lj5204:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_TDOMNOTATION$non_lazy_ptr-Lj5204(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,28(%edx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITY_$__GETNODETYPE$$LONGINT
_DOM_TDOMENTITY_$__GETNODETYPE$$LONGINT:
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
.globl	_DOM_TDOMENTITY_$__GETNODENAME$$WIDESTRING
_DOM_TDOMENTITY_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%esi
	movl	8(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITY_$__GETPUBLICID$$WIDESTRING
_DOM_TDOMENTITY_$__GETPUBLICID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%esi
	movl	20(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	20(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITY_$__GETSYSTEMID$$WIDESTRING
_DOM_TDOMENTITY_$__GETSYSTEMID$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%esi
	movl	24(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	24(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITY_$__GETNOTATIONNAME$$WIDESTRING
_DOM_TDOMENTITY_$__GETNOTATIONNAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%esi
	movl	28(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITY_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMENTITY_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj5240
Lj5240:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_VMT_DOM_TDOMENTITY$non_lazy_ptr-Lj5240(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,56(%edx)
	cmpb	$0,-4(%ebp)
	jne	Lj5255
	jmp	Lj5256
Lj5255:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT$stub
Lj5256:
	movl	-16(%ebp),%eax
	movb	$1,%dl
	call	L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITYREFERENCE_$__GETNODETYPE$$LONGINT
_DOM_TDOMENTITYREFERENCE_$__GETNODETYPE$$LONGINT:
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
.globl	_DOM_TDOMENTITYREFERENCE_$__GETNODENAME$$WIDESTRING
_DOM_TDOMENTITYREFERENCE_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	40(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	40(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMENTITYREFERENCE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMENTITYREFERENCE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMPROCESSINGINSTRUCTION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
_DOM_TDOMPROCESSINGINSTRUCTION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*216(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODETYPE$$LONGINT
_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODETYPE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$7,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODENAME$$WIDESTRING
_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODENAME$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	28(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	28(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODEVALUE$$WIDESTRING
_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODEVALUE$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	32(%esi),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	32(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DOM_TDOMPROCESSINGINSTRUCTION_$__SETNODEVALUE$WIDESTRING
_DOM_TDOMPROCESSINGINSTRUCTION_$__SETNODEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DOM_TDOMNODE_$__CHANGING$stub
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	32(%ebx),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,32(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DOM_TNODEPOOL_$__CREATE$LONGINT$LONGINT$$TNODEPOOL
_DOM_TNODEPOOL_$__CREATE$LONGINT$LONGINT$$TNODEPOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5313
	jmp	Lj5314
Lj5313:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj5314:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5319
	jmp	Lj5320
Lj5319:
	jmp	Lj5311
Lj5320:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5323
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5327
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DOM_TNODEPOOL_$__ADDEXTENT$LONGINT$stub
Lj5327:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5328
	call	LFPC_RERAISE$stub
Lj5328:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5338
	jmp	Lj5337
Lj5338:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5336
	jmp	Lj5337
Lj5336:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj5337:
Lj5323:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj5325
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj5342
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5343
	jmp	Lj5344
Lj5343:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj5344:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj5342:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj5341
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj5341:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj5325
Lj5325:
Lj5311:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TNODEPOOL_$__DESTROY
_DOM_TNODEPOOL_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5351
	jmp	Lj5352
Lj5351:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj5352:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	16(%eax),%edx
	movl	12(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj5362
	.align 2
Lj5361:
	movl	-28(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	addl	$4,%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	jmp	Lj5367
	.align 2
Lj5366:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj5369
	jmp	Lj5370
Lj5369:
	movl	-20(%ebp),%eax
	movl	$1,%edx
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj5370:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	addl	%eax,-20(%ebp)
Lj5367:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj5366
	jmp	Lj5368
Lj5368:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-28(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-28(%ebp)
	movl	-12(%ebp),%eax
	addl	$4,%eax
	movl	%eax,-20(%ebp)
Lj5362:
	cmpl	$0,-12(%ebp)
	jne	Lj5361
	jmp	Lj5363
Lj5363:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5391
	jmp	Lj5390
Lj5391:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5389
	jmp	Lj5390
Lj5389:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj5390:
	leave
	ret

.text
	.align 4
.globl	_DOM_TNODEPOOL_$__ADDEXTENT$LONGINT
_DOM_TNODEPOOL_$__ADDEXTENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	addl	$4,%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	addl	$4,%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	leave
	ret

.text
	.align 4
.globl	_DOM_TNODEPOOL_$__ALLOCNODE$TDOMNODECLASS$$TDOMNODE
_DOM_TNODEPOOL_$__ALLOCNODE$TDOMNODECLASS$$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj5410
	jmp	Lj5411
Lj5410:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	jmp	Lj5416
Lj5411:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	cmpl	16(%eax),%edx
	ja	Lj5417
	jmp	Lj5418
Lj5417:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	shll	$1,%edx
	movl	-8(%ebp),%eax
	call	L_DOM_TNODEPOOL_$__ADDEXTENT$LONGINT$stub
Lj5418:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	subl	%eax,16(%edx)
Lj5416:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DOM_TNODEPOOL_$__FREENODE$TDOMNODE
_DOM_TNODEPOOL_$__FREENODE$TDOMNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	leave
	ret

.text
	.align 4
.globl	_INIT$_DOM
_INIT$_DOM:
.reference __DOM_init_implicit
.globl	__DOM_init_implicit
__DOM_init_implicit:
.reference _INIT$_DOM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DOM
_FINALIZE$_DOM:
.reference __DOM_finalize_implicit
.globl	__DOM_finalize_implicit
__DOM_finalize_implicit:
.reference _FINALIZE$_DOM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj5440
Lj5440:
	popl	%ebx
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj5440(%ebx),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	L_TC_DOM_STDURI_XML$non_lazy_ptr-Lj5440(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj5440(%ebx),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	L_TC_DOM_STDURI_XMLNS$non_lazy_ptr-Lj5440(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DOM$_Ld105
_$DOM$_Ld105:
	.byte	12
	.ascii	"TDOMDocument"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMDOCUMENT
_VMT_DOM_TDOMDOCUMENT:
	.long	96,-96
	.long	_VMT_DOM_TDOMNODE_TOPLEVEL
	.long	_$DOM$_Ld105
	.long	0,0
	.long	_$DOM$_Ld106
	.long	_RTTI_DOM_TDOMDOCUMENT
	.long	_INIT_DOM_TDOMDOCUMENT
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMDOCUMENT_$__DESTROY
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
	.long	_DOM_TDOMDOCUMENT_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMDOCUMENT_$__GETNODETYPE$$LONGINT
	.long	_DOM_TDOMDOCUMENT_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMDOCUMENT_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMDOCUMENT_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMDOCUMENT_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMDOCUMENT_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMDOCUMENT_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__NORMALIZE
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	_DOM_TDOMDOCUMENT_$__SETXMLVERSION$WIDESTRING
	.long	_DOM_TDOMDOCUMENT_$__SETXMLSTANDALONE$BOOLEAN
	.long	_DOM_TDOMDOCUMENT_$__CREATEELEMENT$WIDESTRING$$TDOMELEMENT
	.long	_DOM_TDOMDOCUMENT_$__CREATECDATASECTION$WIDESTRING$$TDOMCDATASECTION
	.long	_DOM_TDOMDOCUMENT_$__CREATEPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING$$TDOMPROCESSINGINSTRUCTION
	.long	_DOM_TDOMDOCUMENT_$__CREATEENTITYREFERENCE$WIDESTRING$$TDOMENTITYREFERENCE
	.long	_DOM_TDOMDOCUMENT_$__CREATE$$TDOMDOCUMENT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld108
_$DOM$_Ld108:
	.byte	12
	.ascii	"TDOMNodeList"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNODELIST
_VMT_DOM_TDOMNODELIST:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DOM$_Ld108
	.long	0,0
	.long	_$DOM$_Ld109
	.long	_RTTI_DOM_TDOMNODELIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODELIST_$__DESTROY
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
	.long	_DOM_TDOMNODELIST_$__NODEFILTER$TDOMNODE$$TFILTERRESULT
	.long	_DOM_TDOMNODELIST_$__BUILDLIST
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld111
_$DOM$_Ld111:
	.byte	16
	.ascii	"TDOMNamedNodeMap"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNAMEDNODEMAP
_VMT_DOM_TDOMNAMEDNODEMAP:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DOM$_Ld111
	.long	0,0
	.long	_$DOM$_Ld112
	.long	_RTTI_DOM_TDOMNAMEDNODEMAP
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNAMEDNODEMAP_$__DESTROY
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
	.long	_DOM_TDOMNAMEDNODEMAP_$__DELETE$LONGWORD$$TDOMNODE
	.long	_DOM_TDOMNAMEDNODEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT
	.long	_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNAMEDNODEMAP_$__GETNAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEMNS$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNAMEDNODEMAP_$__REMOVENAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld114
_$DOM$_Ld114:
	.byte	8
	.ascii	"TDOMAttr"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMATTR
_VMT_DOM_TDOMATTR:
	.long	52,-52
	.long	_VMT_DOM_TDOMNODE_NS
	.long	_$DOM$_Ld114
	.long	0,0
	.long	_$DOM$_Ld115
	.long	_RTTI_DOM_TDOMATTR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMATTR_$__DESTROY
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
	.long	_DOM_TDOMNODE_NS_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMATTR_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMATTR_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMATTR_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMATTR_$__GETNODETYPE$$LONGINT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__NORMALIZE
	.long	_DOM_TDOMATTR_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_NS_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld117
_$DOM$_Ld117:
	.byte	11
	.ascii	"TDOMElement"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMELEMENT
_VMT_DOM_TDOMELEMENT:
	.long	52,-52
	.long	_VMT_DOM_TDOMNODE_NS
	.long	_$DOM$_Ld117
	.long	0,0
	.long	_$DOM$_Ld118
	.long	_RTTI_DOM_TDOMELEMENT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMELEMENT_$__DESTROY
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
	.long	_DOM_TDOMNODE_NS_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMELEMENT_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMELEMENT_$__GETNODETYPE$$LONGINT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMELEMENT_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMELEMENT_$__NORMALIZE
	.long	_DOM_TDOMELEMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_NS_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld120
_$DOM$_Ld120:
	.byte	8
	.ascii	"TDOMText"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMTEXT
_VMT_DOM_TDOMTEXT:
	.long	32,-32
	.long	_VMT_DOM_TDOMCHARACTERDATA
	.long	_$DOM$_Ld120
	.long	0,0
	.long	_$DOM$_Ld121
	.long	_RTTI_DOM_TDOMTEXT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMTEXT_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMCHARACTERDATA_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMTEXT_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMTEXT_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMTEXT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld123
_$DOM$_Ld123:
	.byte	11
	.ascii	"TDOMComment"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMCOMMENT
_VMT_DOM_TDOMCOMMENT:
	.long	32,-32
	.long	_VMT_DOM_TDOMCHARACTERDATA
	.long	_$DOM$_Ld123
	.long	0,0
	.long	_$DOM$_Ld124
	.long	_RTTI_DOM_TDOMCOMMENT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMCOMMENT_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMCHARACTERDATA_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMCOMMENT_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMCOMMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld126
_$DOM$_Ld126:
	.byte	16
	.ascii	"TDOMCDATASection"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMCDATASECTION
_VMT_DOM_TDOMCDATASECTION:
	.long	32,-32
	.long	_VMT_DOM_TDOMTEXT
	.long	_$DOM$_Ld126
	.long	0,0
	.long	_$DOM$_Ld127
	.long	_RTTI_DOM_TDOMCDATASECTION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMCDATASECTION_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMCHARACTERDATA_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMTEXT_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMCDATASECTION_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMCDATASECTION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld129
_$DOM$_Ld129:
	.byte	16
	.ascii	"TDOMDocumentType"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMDOCUMENTTYPE
_VMT_DOM_TDOMDOCUMENTTYPE:
	.long	40,-40
	.long	_VMT_DOM_TDOMNODE
	.long	_$DOM$_Ld129
	.long	0,0
	.long	_$DOM$_Ld130
	.long	_RTTI_DOM_TDOMDOCUMENTTYPE
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
.globl	_$DOM$_Ld132
_$DOM$_Ld132:
	.byte	19
	.ascii	"TDOMEntityReference"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMENTITYREFERENCE
_VMT_DOM_TDOMENTITYREFERENCE:
	.long	44,-44
	.long	_VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	_$DOM$_Ld132
	.long	0,0
	.long	_$DOM$_Ld133
	.long	_RTTI_DOM_TDOMENTITYREFERENCE
	.long	_INIT_DOM_TDOMENTITYREFERENCE
	.long	0
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
	.long	_DOM_TDOMENTITYREFERENCE_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMENTITYREFERENCE_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMENTITYREFERENCE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld135
_$DOM$_Ld135:
	.byte	25
	.ascii	"TDOMProcessingInstruction"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMPROCESSINGINSTRUCTION
_VMT_DOM_TDOMPROCESSINGINSTRUCTION:
	.long	36,-36
	.long	_VMT_DOM_TDOMNODE
	.long	_$DOM$_Ld135
	.long	0,0
	.long	_$DOM$_Ld136
	.long	_RTTI_DOM_TDOMPROCESSINGINSTRUCTION
	.long	_INIT_DOM_TDOMPROCESSINGINSTRUCTION
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMPROCESSINGINSTRUCTION_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMPROCESSINGINSTRUCTION_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMPROCESSINGINSTRUCTION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld138
_$DOM$_Ld138:
	.byte	9
	.ascii	"TNodePool"

.const_data
	.align 2
.globl	_VMT_DOM_TNODEPOOL
_VMT_DOM_TNODEPOOL:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DOM$_Ld138
	.long	0,0
	.long	_$DOM$_Ld139
	.long	_RTTI_DOM_TNODEPOOL
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TNODEPOOL_$__DESTROY
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
.globl	_$DOM$_Ld141
_$DOM$_Ld141:
	.byte	9
	.ascii	"EDOMError"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMERROR
_VMT_DOM_EDOMERROR:
	.long	16,-16
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$DOM$_Ld141
	.long	0,0
	.long	_$DOM$_Ld142
	.long	_RTTI_DOM_EDOMERROR
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
.globl	_$DOM$_Ld144
_$DOM$_Ld144:
	.byte	13
	.ascii	"EDOMIndexSize"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMINDEXSIZE
_VMT_DOM_EDOMINDEXSIZE:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld144
	.long	0,0
	.long	_$DOM$_Ld145
	.long	_RTTI_DOM_EDOMINDEXSIZE
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
.globl	_$DOM$_Ld147
_$DOM$_Ld147:
	.byte	20
	.ascii	"EDOMHierarchyRequest"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMHIERARCHYREQUEST
_VMT_DOM_EDOMHIERARCHYREQUEST:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld147
	.long	0,0
	.long	_$DOM$_Ld148
	.long	_RTTI_DOM_EDOMHIERARCHYREQUEST
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
.globl	_$DOM$_Ld150
_$DOM$_Ld150:
	.byte	17
	.ascii	"EDOMWrongDocument"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMWRONGDOCUMENT
_VMT_DOM_EDOMWRONGDOCUMENT:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld150
	.long	0,0
	.long	_$DOM$_Ld151
	.long	_RTTI_DOM_EDOMWRONGDOCUMENT
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
.globl	_$DOM$_Ld153
_$DOM$_Ld153:
	.byte	12
	.ascii	"EDOMNotFound"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMNOTFOUND
_VMT_DOM_EDOMNOTFOUND:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld153
	.long	0,0
	.long	_$DOM$_Ld154
	.long	_RTTI_DOM_EDOMNOTFOUND
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
.globl	_$DOM$_Ld156
_$DOM$_Ld156:
	.byte	16
	.ascii	"EDOMNotSupported"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMNOTSUPPORTED
_VMT_DOM_EDOMNOTSUPPORTED:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld156
	.long	0,0
	.long	_$DOM$_Ld157
	.long	_RTTI_DOM_EDOMNOTSUPPORTED
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
.globl	_$DOM$_Ld159
_$DOM$_Ld159:
	.byte	18
	.ascii	"EDOMInUseAttribute"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMINUSEATTRIBUTE
_VMT_DOM_EDOMINUSEATTRIBUTE:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld159
	.long	0,0
	.long	_$DOM$_Ld160
	.long	_RTTI_DOM_EDOMINUSEATTRIBUTE
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
.globl	_$DOM$_Ld162
_$DOM$_Ld162:
	.byte	16
	.ascii	"EDOMInvalidState"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMINVALIDSTATE
_VMT_DOM_EDOMINVALIDSTATE:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld162
	.long	0,0
	.long	_$DOM$_Ld163
	.long	_RTTI_DOM_EDOMINVALIDSTATE
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
.globl	_$DOM$_Ld165
_$DOM$_Ld165:
	.byte	10
	.ascii	"EDOMSyntax"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMSYNTAX
_VMT_DOM_EDOMSYNTAX:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld165
	.long	0,0
	.long	_$DOM$_Ld166
	.long	_RTTI_DOM_EDOMSYNTAX
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
.globl	_$DOM$_Ld168
_$DOM$_Ld168:
	.byte	23
	.ascii	"EDOMInvalidModification"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMINVALIDMODIFICATION
_VMT_DOM_EDOMINVALIDMODIFICATION:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld168
	.long	0,0
	.long	_$DOM$_Ld169
	.long	_RTTI_DOM_EDOMINVALIDMODIFICATION
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
.globl	_$DOM$_Ld171
_$DOM$_Ld171:
	.byte	13
	.ascii	"EDOMNamespace"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMNAMESPACE
_VMT_DOM_EDOMNAMESPACE:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld171
	.long	0,0
	.long	_$DOM$_Ld172
	.long	_RTTI_DOM_EDOMNAMESPACE
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
.globl	_$DOM$_Ld174
_$DOM$_Ld174:
	.byte	17
	.ascii	"EDOMInvalidAccess"

.const_data
	.align 2
.globl	_VMT_DOM_EDOMINVALIDACCESS
_VMT_DOM_EDOMINVALIDACCESS:
	.long	16,-16
	.long	_VMT_DOM_EDOMERROR
	.long	_$DOM$_Ld174
	.long	0,0
	.long	_$DOM$_Ld175
	.long	_RTTI_DOM_EDOMINVALIDACCESS
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
.globl	_$DOM$_Ld177
_$DOM$_Ld177:
	.byte	8
	.ascii	"TDOMNode"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNODE
_VMT_DOM_TDOMNODE:
	.long	28,-28
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DOM$_Ld177
	.long	0,0
	.long	_$DOM$_Ld178
	.long	_RTTI_DOM_TDOMNODE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	FPC_ABSTRACTERROR
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
.globl	_$DOM$_Ld180
_$DOM$_Ld180:
	.byte	21
	.ascii	"TDOMNode_WithChildren"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNODE_WITHCHILDREN
_VMT_DOM_TDOMNODE_WITHCHILDREN:
	.long	40,-40
	.long	_VMT_DOM_TDOMNODE
	.long	_$DOM$_Ld180
	.long	0,0
	.long	_$DOM$_Ld181
	.long	_RTTI_DOM_TDOMNODE_WITHCHILDREN
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
.globl	_$DOM$_Ld183
_$DOM$_Ld183:
	.byte	17
	.ascii	"TDOMNode_TopLevel"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNODE_TOPLEVEL
_VMT_DOM_TDOMNODE_TOPLEVEL:
	.long	56,-56
	.long	_VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	_$DOM$_Ld183
	.long	0,0
	.long	_$DOM$_Ld184
	.long	_RTTI_DOM_TDOMNODE_TOPLEVEL
	.long	_INIT_DOM_TDOMNODE_TOPLEVEL
	.long	0
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
.globl	_$DOM$_Ld186
_$DOM$_Ld186:
	.byte	15
	.ascii	"TDOMElementList"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMELEMENTLIST
_VMT_DOM_TDOMELEMENTLIST:
	.long	32,-32
	.long	_VMT_DOM_TDOMNODELIST
	.long	_$DOM$_Ld186
	.long	0,0
	.long	_$DOM$_Ld187
	.long	_RTTI_DOM_TDOMELEMENTLIST
	.long	_INIT_DOM_TDOMELEMENTLIST
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODELIST_$__DESTROY
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
	.long	_DOM_TDOMELEMENTLIST_$__NODEFILTER$TDOMNODE$$TFILTERRESULT
	.long	_DOM_TDOMNODELIST_$__BUILDLIST
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld189
_$DOM$_Ld189:
	.byte	17
	.ascii	"TDOMCharacterData"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMCHARACTERDATA
_VMT_DOM_TDOMCHARACTERDATA:
	.long	32,-32
	.long	_VMT_DOM_TDOMNODE
	.long	_$DOM$_Ld189
	.long	0,0
	.long	_$DOM$_Ld190
	.long	_RTTI_DOM_TDOMCHARACTERDATA
	.long	_INIT_DOM_TDOMCHARACTERDATA
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMCHARACTERDATA_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	FPC_ABSTRACTERROR
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
.globl	_$DOM$_Ld192
_$DOM$_Ld192:
	.byte	18
	.ascii	"TDOMImplementation"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMIMPLEMENTATION
_VMT_DOM_TDOMIMPLEMENTATION:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DOM$_Ld192
	.long	0,0
	.long	_$DOM$_Ld193
	.long	_RTTI_DOM_TDOMIMPLEMENTATION
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
.globl	_$DOM$_Ld195
_$DOM$_Ld195:
	.byte	20
	.ascii	"TDOMDocumentFragment"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMDOCUMENTFRAGMENT
_VMT_DOM_TDOMDOCUMENTFRAGMENT:
	.long	40,-40
	.long	_VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	_$DOM$_Ld195
	.long	0,0
	.long	_$DOM$_Ld196
	.long	_RTTI_DOM_TDOMDOCUMENTFRAGMENT
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
	.long	_DOM_TDOMDOCUMENTFRAGMENT_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMDOCUMENTFRAGMENT_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMDOCUMENTFRAGMENT_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld198
_$DOM$_Ld198:
	.byte	12
	.ascii	"TXMLDocument"

.const_data
	.align 2
.globl	_VMT_DOM_TXMLDOCUMENT
_VMT_DOM_TXMLDOCUMENT:
	.long	104,-104
	.long	_VMT_DOM_TDOMDOCUMENT
	.long	_$DOM$_Ld198
	.long	0,0
	.long	_$DOM$_Ld199
	.long	_RTTI_DOM_TXMLDOCUMENT
	.long	_INIT_DOM_TXMLDOCUMENT
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMDOCUMENT_$__DESTROY
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
	.long	_DOM_TDOMDOCUMENT_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMDOCUMENT_$__GETNODETYPE$$LONGINT
	.long	_DOM_TDOMDOCUMENT_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMDOCUMENT_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_$__SETPREFIX$WIDESTRING
	.long	_DOM_TDOMDOCUMENT_$__GETOWNERDOCUMENT$$TDOMDOCUMENT
	.long	_DOM_TDOMDOCUMENT_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMDOCUMENT_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__DETACHCHILD$TDOMNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__HASCHILDNODES$$BOOLEAN
	.long	_DOM_TDOMDOCUMENT_$__CLONENODE$BOOLEAN$$TDOMNODE
	.long	_DOM_TDOMNODE_$__HASATTRIBUTES$$BOOLEAN
	.long	_DOM_TDOMNODE_$__NORMALIZE
	.long	_DOM_TDOMNODE_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	_DOM_TXMLDOCUMENT_$__SETXMLVERSION$WIDESTRING
	.long	_DOM_TXMLDOCUMENT_$__SETXMLSTANDALONE$BOOLEAN
	.long	_DOM_TDOMDOCUMENT_$__CREATEELEMENT$WIDESTRING$$TDOMELEMENT
	.long	_DOM_TXMLDOCUMENT_$__CREATECDATASECTION$WIDESTRING$$TDOMCDATASECTION
	.long	_DOM_TXMLDOCUMENT_$__CREATEPROCESSINGINSTRUCTION$WIDESTRING$WIDESTRING$$TDOMPROCESSINGINSTRUCTION
	.long	_DOM_TXMLDOCUMENT_$__CREATEENTITYREFERENCE$WIDESTRING$$TDOMENTITYREFERENCE
	.long	_DOM_TXMLDOCUMENT_$__CREATE$$TXMLDOCUMENT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld201
_$DOM$_Ld201:
	.byte	11
	.ascii	"TDOMNode_NS"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNODE_NS
_VMT_DOM_TDOMNODE_NS:
	.long	48,-48
	.long	_VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	_$DOM$_Ld201
	.long	0,0
	.long	_$DOM$_Ld202
	.long	_RTTI_DOM_TDOMNODE_NS
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
	.long	_DOM_TDOMNODE_NS_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	FPC_ABSTRACTERROR
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__GETTEXTCONTENT$$WIDESTRING
	.long	_DOM_TDOMNODE_WITHCHILDREN_$__SETTEXTCONTENT$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETLOCALNAME$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETNAMESPACEURI$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__GETPREFIX$$WIDESTRING
	.long	_DOM_TDOMNODE_NS_$__SETPREFIX$WIDESTRING
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
	.long	_DOM_TDOMNODE_NS_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld204
_$DOM$_Ld204:
	.byte	12
	.ascii	"TDOMNotation"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMNOTATION
_VMT_DOM_TDOMNOTATION:
	.long	32,-32
	.long	_VMT_DOM_TDOMNODE
	.long	_$DOM$_Ld204
	.long	0,0
	.long	_$DOM$_Ld205
	.long	_RTTI_DOM_TDOMNOTATION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNODE_$__DESTROY
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
	.long	_DOM_TDOMNOTATION_$__GETNODENAME$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETNODEVALUE$$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETPARENTNODE$$TDOMNODE
	.long	_DOM_TDOMNODE_$__SETNODEVALUE$WIDESTRING
	.long	_DOM_TDOMNODE_$__GETFIRSTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETLASTCHILD$$TDOMNODE
	.long	_DOM_TDOMNODE_$__GETATTRIBUTES$$TDOMNAMEDNODEMAP
	.long	_DOM_TDOMNOTATION_$__GETNODETYPE$$LONGINT
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
	.long	_DOM_TDOMNOTATION_$__CLONENODE$BOOLEAN$TDOMDOCUMENT$$TDOMNODE
	.long	_DOM_TDOMNODE_$__FINDNODE$WIDESTRING$$TDOMNODE
	.long	_DOM_TDOMNODE_$__COMPARENAME$WIDESTRING$$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld207
_$DOM$_Ld207:
	.byte	10
	.ascii	"TDOMEntity"

.const_data
	.align 2
.globl	_VMT_DOM_TDOMENTITY
_VMT_DOM_TDOMENTITY:
	.long	60,-60
	.long	_VMT_DOM_TDOMNODE_TOPLEVEL
	.long	_$DOM$_Ld207
	.long	0,0
	.long	_$DOM$_Ld208
	.long	_RTTI_DOM_TDOMENTITY
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
.globl	_$DOM$_Ld210
_$DOM$_Ld210:
	.byte	13
	.ascii	"TAttributeMap"

.const_data
	.align 2
.globl	_VMT_DOM_TATTRIBUTEMAP
_VMT_DOM_TATTRIBUTEMAP:
	.long	12,-12
	.long	_VMT_DOM_TDOMNAMEDNODEMAP
	.long	_$DOM$_Ld210
	.long	0,0
	.long	_$DOM$_Ld211
	.long	_RTTI_DOM_TATTRIBUTEMAP
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DOM_TDOMNAMEDNODEMAP_$__DESTROY
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
	.long	_DOM_TATTRIBUTEMAP_$__DELETE$LONGWORD$$TDOMNODE
	.long	_DOM_TATTRIBUTEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT
	.long	_DOM_TATTRIBUTEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE
	.long	_DOM_TATTRIBUTEMAP_$__GETNAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
	.long	_DOM_TATTRIBUTEMAP_$__SETNAMEDITEMNS$TDOMNODE$$TDOMNODE
	.long	_DOM_TATTRIBUTEMAP_$__REMOVENAMEDITEMNS$WIDESTRING$WIDESTRING$$TDOMNODE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DOM
_THREADVARLIST_DOM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$DOM$_Ld2
_$DOM$_Ld2:
	.long	-1,72
.reference _$DOM$_Ld1
.globl	_$DOM$_Ld1
_$DOM$_Ld1:
.reference _$DOM$_Ld2
	.short	104,116,116,112,58,47,47,119,119,119,46,119,51,46,111,114,103,47,88,77,76,47,49,57,57,56,47,110,97,109
	.short	101,115,112,97,99,101,0

.const_data
	.align 2
.globl	_$DOM$_Ld4
_$DOM$_Ld4:
	.long	-1,58
.reference _$DOM$_Ld3
.globl	_$DOM$_Ld3
_$DOM$_Ld3:
.reference _$DOM$_Ld4
	.short	104,116,116,112,58,47,47,119,119,119,46,119,51,46,111,114,103,47,50,48,48,48,47,120,109,108,110,115
	.short	47,0
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_DOM_STDURI_XML
_TC_DOM_STDURI_XML:
	.long	_$DOM$_Ld1

.data
	.align 2
.globl	_TC_DOM_STDURI_XMLNS
_TC_DOM_STDURI_XMLNS:
	.long	_$DOM$_Ld3

.const_data
	.align 2
.globl	_$DOM$_Ld6
_$DOM$_Ld6:
	.short	0,1
	.long	0,-1,4
.reference _$DOM$_Ld5
.globl	_$DOM$_Ld5
_$DOM$_Ld5:
.reference _$DOM$_Ld6
	.ascii	" in \000"

.const_data
	.align 2
.globl	_$DOM$_Ld8
_$DOM$_Ld8:
	.short	0,1
	.long	0,-1,17
.reference _$DOM$_Ld7
.globl	_$DOM$_Ld7
_$DOM$_Ld7:
.reference _$DOM$_Ld8
	.ascii	"Node.InsertBefore\000"

.const_data
	.align 2
.globl	_$DOM$_Ld10
_$DOM$_Ld10:
	.short	0,1
	.long	0,-1,17
.reference _$DOM$_Ld9
.globl	_$DOM$_Ld9
_$DOM$_Ld9:
.reference _$DOM$_Ld10
	.ascii	"Node.ReplaceChild\000"

.const_data
	.align 2
.globl	_$DOM$_Ld12
_$DOM$_Ld12:
	.short	0,1
	.long	0,-1,16
.reference _$DOM$_Ld11
.globl	_$DOM$_Ld11
_$DOM$_Ld11:
.reference _$DOM$_Ld12
	.ascii	"Node.RemoveChild\000"

.const_data
	.align 2
.globl	_$DOM$_Ld14
_$DOM$_Ld14:
	.short	0,1
	.long	0,-1,40
.reference _$DOM$_Ld13
.globl	_$DOM$_Ld13
_$DOM$_Ld13:
.reference _$DOM$_Ld14
	.ascii	"Cloning/importing of %s is not supported\000"

.const_data
	.align 2
.globl	_$DOM$_Ld16
_$DOM$_Ld16:
	.short	0,1
	.long	0,-1,18
.reference _$DOM$_Ld15
.globl	_$DOM$_Ld15
_$DOM$_Ld15:
.reference _$DOM$_Ld16
	.ascii	"Node.CheckReadOnly\000"

.const_data
	.align 2
.globl	_$DOM$_Ld18
_$DOM$_Ld18:
	.long	-1,10
.reference _$DOM$_Ld17
.globl	_$DOM$_Ld17
_$DOM$_Ld17:
.reference _$DOM$_Ld18
	.short	120,109,108,110,115,0

.data
	.align 2
.globl	_TC_DOM_VALIDCHILDREN
_TC_DOM_VALIDCHILDREN:
	.byte	186,1,0,0,40,0,0,0,0,0,0,0,0,0,0,0,186,1,0,0,186,1,0,0,0,0,0,0,0,0,0,0,130,5,0,0,0,0,0,0,186,1,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$DOM$_Ld20
_$DOM$_Ld20:
	.short	0,1
	.long	0,-1,19
.reference _$DOM$_Ld19
.globl	_$DOM$_Ld19
_$DOM$_Ld19:
.reference _$DOM$_Ld20
	.ascii	"NodeWC.InsertBefore\000"

.const_data
	.align 2
.globl	_$DOM$_Ld22
_$DOM$_Ld22:
	.short	0,1
	.long	0,-1,35
.reference _$DOM$_Ld21
.globl	_$DOM$_Ld21
_$DOM$_Ld21:
.reference _$DOM$_Ld22
	.ascii	"NodeWC.InsertBefore (cycle in tree)\000"

.const_data
	.align 2
.globl	_$DOM$_Ld24
_$DOM$_Ld24:
	.short	0,1
	.long	0,-1,18
.reference _$DOM$_Ld23
.globl	_$DOM$_Ld23
_$DOM$_Ld23:
.reference _$DOM$_Ld24
	.ascii	"NodeWC.RemoveChild\000"

.const_data
	.align 2
.globl	_$DOM$_Ld26
_$DOM$_Ld26:
	.long	-1,2
.reference _$DOM$_Ld25
.globl	_$DOM$_Ld25
_$DOM$_Ld25:
.reference _$DOM$_Ld26
	.short	42,0

.const_data
	.align 2
.globl	_$DOM$_Ld28
_$DOM$_Ld28:
	.short	0,1
	.long	0,-1,25
.reference _$DOM$_Ld27
.globl	_$DOM$_Ld27
_$DOM$_Ld27:
.reference _$DOM$_Ld28
	.ascii	"NamedNodeMap.SetNamedItem\000"

.const_data
	.align 2
.globl	_$DOM$_Ld30
_$DOM$_Ld30:
	.short	0,1
	.long	0,-1,28
.reference _$DOM$_Ld29
.globl	_$DOM$_Ld29
_$DOM$_Ld29:
.reference _$DOM$_Ld30
	.ascii	"NamedNodeMap.RemoveNamedItem\000"

.const_data
	.align 2
.globl	_$DOM$_Ld32
_$DOM$_Ld32:
	.short	0,1
	.long	0,-1,30
.reference _$DOM$_Ld31
.globl	_$DOM$_Ld31
_$DOM$_Ld31:
.reference _$DOM$_Ld32
	.ascii	"NamedNodeMap.RemoveNamedItemNS\000"

.const_data
	.align 2
.globl	_$DOM$_Ld34
_$DOM$_Ld34:
	.short	0,1
	.long	0,-1,27
.reference _$DOM$_Ld33
.globl	_$DOM$_Ld33
_$DOM$_Ld33:
.reference _$DOM$_Ld34
	.ascii	"NamedNodeMap.SetNamedItemNS\000"

.const_data
	.align 2
.globl	_$DOM$_Ld36
_$DOM$_Ld36:
	.short	0,1
	.long	0,-1,27
.reference _$DOM$_Ld35
.globl	_$DOM$_Ld35
_$DOM$_Ld35:
.reference _$DOM$_Ld36
	.ascii	"CharacterData.SubstringData\000"

.const_data
	.align 2
.globl	_$DOM$_Ld38
_$DOM$_Ld38:
	.short	0,1
	.long	0,-1,24
.reference _$DOM$_Ld37
.globl	_$DOM$_Ld37
_$DOM$_Ld37:
.reference _$DOM$_Ld38
	.ascii	"CharacterData.InsertData\000"

.const_data
	.align 2
.globl	_$DOM$_Ld40
_$DOM$_Ld40:
	.short	0,1
	.long	0,-1,24
.reference _$DOM$_Ld39
.globl	_$DOM$_Ld39
_$DOM$_Ld39:
.reference _$DOM$_Ld40
	.ascii	"CharacterData.DeleteData\000"

.const_data
	.align 2
.globl	_$DOM$_Ld42
_$DOM$_Ld42:
	.long	-1,36
.reference _$DOM$_Ld41
.globl	_$DOM$_Ld41
_$DOM$_Ld41:
.reference _$DOM$_Ld42
	.short	35,100,111,99,117,109,101,110,116,45,102,114,97,103,109,101,110,116,0

.const_data
	.align 2
.globl	_$DOM$_Ld44
_$DOM$_Ld44:
	.long	-1,6
.reference _$DOM$_Ld43
.globl	_$DOM$_Ld43
_$DOM$_Ld43:
.reference _$DOM$_Ld44
	.short	120,109,108,0

.const_data
	.align 2
.globl	_$DOM$_Ld46
_$DOM$_Ld46:
	.short	0,1
	.long	0,-1,3
.reference _$DOM$_Ld45
.globl	_$DOM$_Ld45
_$DOM$_Ld45:
.reference _$DOM$_Ld46
	.ascii	"XML\000"

.const_data
	.align 2
.globl	_$DOM$_Ld48
_$DOM$_Ld48:
	.long	-1,6
.reference _$DOM$_Ld47
.globl	_$DOM$_Ld47
_$DOM$_Ld47:
.reference _$DOM$_Ld48
	.short	49,46,48,0

.const_data
	.align 2
.globl	_$DOM$_Ld50
_$DOM$_Ld50:
	.long	-1,6
.reference _$DOM$_Ld49
.globl	_$DOM$_Ld49
_$DOM$_Ld49:
.reference _$DOM$_Ld50
	.short	50,46,48,0

.const_data
	.align 2
.globl	_$DOM$_Ld52
_$DOM$_Ld52:
	.short	0,1
	.long	0,-1,4
.reference _$DOM$_Ld51
.globl	_$DOM$_Ld51
_$DOM$_Ld51:
.reference _$DOM$_Ld52
	.ascii	"Core\000"

.const_data
	.align 2
.globl	_$DOM$_Ld54
_$DOM$_Ld54:
	.short	0,1
	.long	0,-1,33
.reference _$DOM$_Ld53
.globl	_$DOM$_Ld53
_$DOM$_Ld53:
.reference _$DOM$_Ld54
	.ascii	"Implementation.CreateDocumentType\000"

.const_data
	.align 2
.globl	_$DOM$_Ld56
_$DOM$_Ld56:
	.short	0,1
	.long	0,-1,29
.reference _$DOM$_Ld55
.globl	_$DOM$_Ld55
_$DOM$_Ld55:
.reference _$DOM$_Ld56
	.ascii	"Implementation.CreateDocument\000"

.const_data
	.align 2
.globl	_$DOM$_Ld58
_$DOM$_Ld58:
	.short	0,1
	.long	0,-1,48
.reference _$DOM$_Ld57
.globl	_$DOM$_Ld57
_$DOM$_Ld57:
.reference _$DOM$_Ld58
	.ascii	"Attempt to allocate node memory while destroying\000"

.const_data
	.align 2
.globl	_$DOM$_Ld60
_$DOM$_Ld60:
	.long	-1,18
.reference _$DOM$_Ld59
.globl	_$DOM$_Ld59
_$DOM$_Ld59:
.reference _$DOM$_Ld60
	.short	35,100,111,99,117,109,101,110,116,0

.const_data
	.align 2
.globl	_$DOM$_Ld62
_$DOM$_Ld62:
	.short	0,1
	.long	0,-1,21
.reference _$DOM$_Ld61
.globl	_$DOM$_Ld61
_$DOM$_Ld61:
.reference _$DOM$_Ld62
	.ascii	"Document.InsertBefore\000"

.const_data
	.align 2
.globl	_$DOM$_Ld64
_$DOM$_Ld64:
	.short	0,1
	.long	0,-1,25
.reference _$DOM$_Ld63
.globl	_$DOM$_Ld63
_$DOM$_Ld63:
.reference _$DOM$_Ld64
	.ascii	"DOMDocument.CreateElement\000"

.const_data
	.align 2
.globl	_$DOM$_Ld66
_$DOM$_Ld66:
	.short	0,1
	.long	0,-1,30
.reference _$DOM$_Ld65
.globl	_$DOM$_Ld65
_$DOM$_Ld65:
.reference _$DOM$_Ld66
	.ascii	"DOMDocument.CreateCDATASection\000"

.const_data
	.align 2
.globl	_$DOM$_Ld68
_$DOM$_Ld68:
	.short	0,1
	.long	0,-1,39
.reference _$DOM$_Ld67
.globl	_$DOM$_Ld67
_$DOM$_Ld67:
.reference _$DOM$_Ld68
	.ascii	"DOMDocument.CreateProcessingInstruction\000"

.const_data
	.align 2
.globl	_$DOM$_Ld70
_$DOM$_Ld70:
	.short	0,1
	.long	0,-1,27
.reference _$DOM$_Ld69
.globl	_$DOM$_Ld69
_$DOM$_Ld69:
.reference _$DOM$_Ld70
	.ascii	"DOMDocument.CreateAttribute\000"

.const_data
	.align 2
.globl	_$DOM$_Ld72
_$DOM$_Ld72:
	.short	0,1
	.long	0,-1,33
.reference _$DOM$_Ld71
.globl	_$DOM$_Ld71
_$DOM$_Ld71:
.reference _$DOM$_Ld72
	.ascii	"DOMDocument.CreateEntityReference\000"

.const_data
	.align 2
.globl	_$DOM$_Ld74
_$DOM$_Ld74:
	.short	0,1
	.long	0,-1,26
.reference _$DOM$_Ld73
.globl	_$DOM$_Ld73
_$DOM$_Ld73:
.reference _$DOM$_Ld74
	.ascii	"Document.CreateAttributeNS\000"

.const_data
	.align 2
.globl	_$DOM$_Ld76
_$DOM$_Ld76:
	.short	0,1
	.long	0,-1,24
.reference _$DOM$_Ld75
.globl	_$DOM$_Ld75
_$DOM$_Ld75:
.reference _$DOM$_Ld76
	.ascii	"Document.CreateElementNS\000"

.const_data
	.align 2
.globl	_$DOM$_Ld78
_$DOM$_Ld78:
	.short	0,1
	.long	0,-1,25
.reference _$DOM$_Ld77
.globl	_$DOM$_Ld77
_$DOM$_Ld77:
.reference _$DOM$_Ld78
	.ascii	"DOMDocument.SetXMLVersion\000"

.const_data
	.align 2
.globl	_$DOM$_Ld80
_$DOM$_Ld80:
	.short	0,1
	.long	0,-1,28
.reference _$DOM$_Ld79
.globl	_$DOM$_Ld79
_$DOM$_Ld79:
.reference _$DOM$_Ld80
	.ascii	"DOMDocument.SetXMLStandalone\000"

.const_data
	.align 2
.globl	_$DOM$_Ld82
_$DOM$_Ld82:
	.short	0,1
	.long	0,-1,39
.reference _$DOM$_Ld81
.globl	_$DOM$_Ld81
_$DOM$_Ld81:
.reference _$DOM$_Ld82
	.ascii	"XMLDocument.CreateProcessingInstruction\000"

.const_data
	.align 2
.globl	_$DOM$_Ld84
_$DOM$_Ld84:
	.short	0,1
	.long	0,-1,33
.reference _$DOM$_Ld83
.globl	_$DOM$_Ld83
_$DOM$_Ld83:
.reference _$DOM$_Ld84
	.ascii	"XMLDocument.CreateEntityReference\000"

.const_data
	.align 2
.globl	_$DOM$_Ld86
_$DOM$_Ld86:
	.long	-1,6
.reference _$DOM$_Ld85
.globl	_$DOM$_Ld85
_$DOM$_Ld85:
.reference _$DOM$_Ld86
	.short	49,46,49,0

.const_data
	.align 2
.globl	_$DOM$_Ld88
_$DOM$_Ld88:
	.short	0,1
	.long	0,-1,25
.reference _$DOM$_Ld87
.globl	_$DOM$_Ld87
_$DOM$_Ld87:
.reference _$DOM$_Ld88
	.ascii	"XMLDocument.SetXMLVersion\000"

.const_data
	.align 2
.globl	_$DOM$_Ld90
_$DOM$_Ld90:
	.short	0,1
	.long	0,-1,14
.reference _$DOM$_Ld89
.globl	_$DOM$_Ld89
_$DOM$_Ld89:
.reference _$DOM$_Ld90
	.ascii	"Node.SetPrefix\000"

.const_data
	.align 2
.globl	_$DOM$_Ld92
_$DOM$_Ld92:
	.long	-1,2
.reference _$DOM$_Ld91
.globl	_$DOM$_Ld91
_$DOM$_Ld91:
.reference _$DOM$_Ld92
	.short	58,0

.const_data
	.align 2
.globl	_$DOM$_Ld94
_$DOM$_Ld94:
	.short	0,1
	.long	0,-1,22
.reference _$DOM$_Ld93
.globl	_$DOM$_Ld93
_$DOM$_Ld93:
.reference _$DOM$_Ld94
	.ascii	"Element.SetAttributeNS\000"

.const_data
	.align 2
.globl	_$DOM$_Ld96
_$DOM$_Ld96:
	.short	0,1
	.long	0,-1,27
.reference _$DOM$_Ld95
.globl	_$DOM$_Ld95
_$DOM$_Ld95:
.reference _$DOM$_Ld96
	.ascii	"Element.RemoveAttributeNode\000"

.const_data
	.align 2
.globl	_$DOM$_Ld98
_$DOM$_Ld98:
	.long	-1,10
.reference _$DOM$_Ld97
.globl	_$DOM$_Ld97
_$DOM$_Ld97:
.reference _$DOM$_Ld98
	.short	35,116,101,120,116,0

.const_data
	.align 2
.globl	_$DOM$_Ld100
_$DOM$_Ld100:
	.short	0,1
	.long	0,-1,14
.reference _$DOM$_Ld99
.globl	_$DOM$_Ld99
_$DOM$_Ld99:
.reference _$DOM$_Ld100
	.ascii	"Text.SplitText\000"

.const_data
	.align 2
.globl	_$DOM$_Ld102
_$DOM$_Ld102:
	.long	-1,16
.reference _$DOM$_Ld101
.globl	_$DOM$_Ld101
_$DOM$_Ld101:
.reference _$DOM$_Ld102
	.short	35,99,111,109,109,101,110,116,0

.const_data
	.align 2
.globl	_$DOM$_Ld104
_$DOM$_Ld104:
	.long	-1,28
.reference _$DOM$_Ld103
.globl	_$DOM$_Ld103
_$DOM$_Ld103:
.reference _$DOM$_Ld104
	.short	35,99,100,97,116,97,45,115,101,99,116,105,111,110,0
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
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

L_DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR$stub:
.indirect_symbol _DOM_EDOMERROR_$__CREATE$LONGINT$ANSISTRING$$EDOMERROR
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CLEANUPINSTANCE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CLEANUPINSTANCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TNODEPOOL_$__FREENODE$TDOMNODE$stub:
.indirect_symbol _DOM_TNODEPOOL_$__FREENODE$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREEINSTANCE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREEINSTANCE
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

L_DOM_TDOMDOCUMENT_$__GETCHILDNODELIST$TDOMNODE$$TDOMNODELIST$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETCHILDNODELIST$TDOMNODE$$TDOMNODELIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__CHANGING$stub:
.indirect_symbol _DOM_TDOMNODE_$__CHANGING
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

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND$stub:
.indirect_symbol _DOM_EDOMNOTFOUND_$__CREATE$ANSISTRING$$EDOMNOTFOUND
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

L_DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED$stub:
.indirect_symbol _DOM_EDOMNOTSUPPORTED_$__CREATE$ANSISTRING$$EDOMNOTSUPPORTED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMIMPLEMENTATION_$__HASFEATURE$WIDESTRING$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _DOM_TDOMIMPLEMENTATION_$__HASFEATURE$WIDESTRING$WIDESTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMCHARACTERDATA_$__APPENDDATA$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMCHARACTERDATA_$__APPENDDATA$WIDESTRING
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

L_DOM_TDOMNODE_$__SETREADONLY$BOOLEAN$stub:
.indirect_symbol _DOM_TDOMNODE_$__SETREADONLY$BOOLEAN
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

L_DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DOM_COMPAREDOMSTRINGS$PWIDECHAR$PWIDECHAR$LONGINT$LONGINT$$LONGINT
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

L_DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETDOCUMENTELEMENT$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMATTR_$__GETOWNERELEMENT$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMATTR_$__GETOWNERELEMENT$$TDOMELEMENT
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

L_DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT$stub:
.indirect_symbol _DOM_GETANCESTORELEMENT$TDOMNODE$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMNODE_$__LOOKUPNAMESPACEURI$WIDESTRING$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMELEMENT_$__INTERNALLOOKUPPREFIX$WIDESTRING$TDOMELEMENT$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__INTERNALLOOKUPPREFIX$WIDESTRING$TDOMELEMENT$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__LOOKUPPREFIX$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMNODE_$__LOOKUPPREFIX$WIDESTRING$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__ISDEFAULTNAMESPACE$WIDESTRING$$BOOLEAN$stub:
.indirect_symbol _DOM_TDOMNODE_$__ISDEFAULTNAMESPACE$WIDESTRING$$BOOLEAN
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

L_DOM_TDOMNODE_$__GETBASEURI$$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMNODE_$__GETBASEURI$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_WITHCHILDREN_$__FREECHILDREN$stub:
.indirect_symbol _DOM_TDOMNODE_WITHCHILDREN_$__FREECHILDREN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__DESTROY$stub:
.indirect_symbol _DOM_TDOMNODE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_EDOMWRONGDOCUMENT_$__CREATE$ANSISTRING$$EDOMWRONGDOCUMENT$stub:
.indirect_symbol _DOM_EDOMWRONGDOCUMENT_$__CREATE$ANSISTRING$$EDOMWRONGDOCUMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_$__REMOVECHILD$TDOMNODE$$TDOMNODE
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

Lfpc_unicodestr_concat$stub:
.indirect_symbol fpc_unicodestr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATETEXTNODE$WIDESTRING$$TDOMTEXT
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

L_DOM_TDOMNODE_$__GETREVISION$$LONGINT$stub:
.indirect_symbol _DOM_TDOMNODE_$__GETREVISION$$LONGINT
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

L_DOM_TDOMDOCUMENT_$__NODELISTDESTROYED$TDOMNODELIST$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__NODELISTDESTROYED$TDOMNODELIST
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

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST$stub:
.indirect_symbol _DOM_TDOMNODELIST_$__CREATE$TDOMNODE$$TDOMNODELIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__INDEXOFNS$WIDESTRING$BOOLEAN$$LONGINT
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

L_DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__FIND$WIDESTRING$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__INSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__INTERNALREMOVE$WIDESTRING$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__INTERNALREMOVE$WIDESTRING$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__DELETE$LONGWORD$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__DELETE$LONGWORD$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TATTRIBUTEMAP_$__RESTOREDEFAULT$PHASHITEM$stub:
.indirect_symbol _DOM_TATTRIBUTEMAP_$__RESTOREDEFAULT$PHASHITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__VALIDATEINSERT$TDOMNODE$$LONGINT
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

L_DOM_TDOMELEMENT_$__RESTOREDEFAULTATTR$TATTRIBUTEDEF$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__RESTOREDEFAULTATTR$TATTRIBUTEDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _DOM_TATTRIBUTEMAP_$__FINDNS$LONGINT$WIDESTRING$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__SETNAMEDITEM$TDOMNODE$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TATTRIBUTEMAP_$__INTERNALREMOVENS$WIDESTRING$WIDESTRING$$TDOMNODE$stub:
.indirect_symbol _DOM_TATTRIBUTEMAP_$__INTERNALREMOVENS$WIDESTRING$WIDESTRING$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD$stub:
.indirect_symbol _DOM_TDOMCHARACTERDATA_$__GETLENGTH$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE$stub:
.indirect_symbol _DOM_EDOMINDEXSIZE_$__CREATE$ANSISTRING$$EDOMINDEXSIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_copy$stub:
.indirect_symbol fpc_unicodestr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT$stub:
.indirect_symbol _SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMCHARACTERDATA_$__DELETEDATA$LONGWORD$LONGWORD$stub:
.indirect_symbol _DOM_TDOMCHARACTERDATA_$__DELETEDATA$LONGWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMCHARACTERDATA_$__INSERTDATA$LONGWORD$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMCHARACTERDATA_$__INSERTDATA$LONGWORD$WIDESTRING
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

L_DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT$stub:
.indirect_symbol _DOM_TDOMNODE_WITHCHILDREN_$__CLONECHILDREN$TDOMNODE$TDOMDOCUMENT
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

L_XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_ISXMLNAME$PWIDECHAR$LONGINT$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
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

L_SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN
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

L_DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT$stub:
.indirect_symbol _DOM_CHECKQNAME$WIDESTRING$LONGINT$BOOLEAN$$LONGINT
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

L_DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__CREATE$TDOMDOCUMENT$TDTDMODEL$$TDOMDOCUMENTTYPE
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

L_DOM_TDOMDOCUMENT_$__CREATEELEMENTNS$WIDESTRING$WIDESTRING$$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATEELEMENTNS$WIDESTRING$WIDESTRING$$TDOMELEMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_$__CREATE$TDOMDOCUMENT$$TDOMNODE
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

L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_WITHCHILDREN_$__DESTROY$stub:
.indirect_symbol _DOM_TDOMNODE_WITHCHILDREN_$__DESTROY
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

L_DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETDOCTYPE$$TDOMDOCUMENTTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TNODEPOOL_$__CREATE$LONGINT$LONGINT$$TNODEPOOL$stub:
.indirect_symbol _DOM_TNODEPOOL_$__CREATE$LONGINT$LONGINT$$TNODEPOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TNODEPOOL_$__ALLOCNODE$TDOMNODECLASS$$TDOMNODE$stub:
.indirect_symbol _DOM_TNODEPOOL_$__ALLOCNODE$TDOMNODECLASS$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__REMOVEDATA$TOBJECT$$BOOLEAN$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__REMOVEDATA$TOBJECT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_WITHCHILDREN_$__INSERTBEFORE$TDOMNODE$TDOMNODE$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMNODE_WITHCHILDREN_$__REPLACECHILD$TDOMNODE$TDOMNODE$$TDOMNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__ALLOC$TDOMNODECLASS$$TDOMNODE
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

L_DOM_TDOMELEMENT_$__ATTACHDEFAULTATTRS$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__ATTACHDEFAULTATTRS
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
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

L_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$WIDESTRING$$TDOMELEMENTLIST$stub:
.indirect_symbol _DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$WIDESTRING$$TDOMELEMENTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$$TDOMELEMENTLIST$stub:
.indirect_symbol _DOM_TDOMELEMENTLIST_$__CREATE$TDOMNODE$WIDESTRING$$TDOMELEMENTLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__GETELEMENTLIST$TDOMNODE$WIDESTRING$WIDESTRING$BOOLEAN$$TDOMNODELIST
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

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATE$$TDOMDOCUMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATE$$TDOMDOCUMENT
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

L_DOM_EDOMNAMESPACE_$__CREATE$ANSISTRING$$EDOMNAMESPACE$stub:
.indirect_symbol _DOM_EDOMNAMESPACE_$__CREATE$ANSISTRING$$EDOMNAMESPACE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_concat_multi$stub:
.indirect_symbol fpc_unicodestr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMELEMENT_$__REMOVEATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__REMOVEATTRIBUTENODE$TDOMATTR$$TDOMATTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTENS$WIDESTRING$WIDESTRING$$TDOMATTR$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATEATTRIBUTENS$WIDESTRING$WIDESTRING$$TDOMATTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__CREATEATTRIBUTE$WIDESTRING$$TDOMATTR$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATEATTRIBUTE$WIDESTRING$$TDOMATTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_NORMALIZESPACES$WIDESTRING$stub:
.indirect_symbol _XMLUTILS_NORMALIZESPACES$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENT_$__REMOVEID$TDOMELEMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__REMOVEID$TDOMELEMENT
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

L_DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR$stub:
.indirect_symbol _DOM_TDOMELEMENT_$__SETATTRIBUTENODE$TDOMATTR$$TDOMATTR
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

L_DOM_TDOMNODE_$__NORMALIZE$stub:
.indirect_symbol _DOM_TDOMNODE_$__NORMALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP$stub:
.indirect_symbol _DOM_TDOMNAMEDNODEMAP_$__CREATE$TDOMNODE$$TDOMNAMEDNODEMAP
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

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING$stub:
.indirect_symbol _DOM_TDOMCHARACTERDATA_$__SETNODEVALUE$WIDESTRING
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

L_DOM_TDOMDOCUMENT_$__CREATECOMMENT$WIDESTRING$$TDOMCOMMENT$stub:
.indirect_symbol _DOM_TDOMDOCUMENT_$__CREATECOMMENT$WIDESTRING$$TDOMCOMMENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DOM_TDOMDOCUMENTTYPE_$__GETNOTATIONS$$TDOMNAMEDNODEMAP$stub:
.indirect_symbol _DOM_TDOMDOCUMENTTYPE_$__GETNOTATIONS$$TDOMNAMEDNODEMAP
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

L_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE$stub:
.indirect_symbol _DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__FOREACH$THASHFOREACH$POINTER$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__FOREACH$THASHFOREACH$POINTER
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

L_DOM_TNODEPOOL_$__ADDEXTENT$LONGINT$stub:
.indirect_symbol _DOM_TNODEPOOL_$__ADDEXTENT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT
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
.globl	_$DOM$_Ld106
_$DOM$_Ld106:
	.short	0
	.long	_$DOM$_Ld107
	.align 2
.globl	_$DOM$_Ld107
_$DOM$_Ld107:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNODE
_INIT_DOM_TDOMNODE:
	.byte	15,8
	.ascii	"TDOMNode"
	.long	4,0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNODE_WITHCHILDREN
_INIT_DOM_TDOMNODE_WITHCHILDREN:
	.byte	15,21
	.ascii	"TDOMNode_WithChildren"
	.long	4,0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNODE_TOPLEVEL
_INIT_DOM_TDOMNODE_TOPLEVEL:
	.byte	15,17
	.ascii	"TDOMNode_TopLevel"
	.long	4,3
	.long	_INIT_SYSTEM_WIDESTRING
	.long	40
	.long	_INIT_SYSTEM_WIDESTRING
	.long	44
	.long	_INIT_SYSTEM_WIDESTRING
	.long	48

.const_data
	.align 2
.globl	_INIT_DOM_TNAMESPACES
_INIT_DOM_TNAMESPACES:
	.byte	21
	.ascii	"\013TNamespaces"
	.long	4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258
	.long	_INIT_SYSTEM_WIDESTRING
	.byte	3
	.ascii	"DOM"

.const_data
	.align 2
.globl	_INIT_DOM_TDOMDOCUMENT
_INIT_DOM_TDOMDOCUMENT:
	.byte	15,12
	.ascii	"TDOMDocument"
	.long	4,1
	.long	_INIT_DOM_TNAMESPACES
	.long	68

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNODE
_RTTI_DOM_TDOMNODE:
	.byte	15,8
	.ascii	"TDOMNode"
	.long	_VMT_DOM_TDOMNODE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNODE_WITHCHILDREN
_RTTI_DOM_TDOMNODE_WITHCHILDREN:
	.byte	15,21
	.ascii	"TDOMNode_WithChildren"
	.long	_VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	_RTTI_DOM_TDOMNODE
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNODE_TOPLEVEL
_RTTI_DOM_TDOMNODE_TOPLEVEL:
	.byte	15,17
	.ascii	"TDOMNode_TopLevel"
	.long	_VMT_DOM_TDOMNODE_TOPLEVEL
	.long	_RTTI_DOM_TDOMNODE_WITHCHILDREN
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMDOCUMENT
_RTTI_DOM_TDOMDOCUMENT:
	.byte	15,12
	.ascii	"TDOMDocument"
	.long	_VMT_DOM_TDOMDOCUMENT
	.long	_RTTI_DOM_TDOMNODE_TOPLEVEL
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld109
_$DOM$_Ld109:
	.short	0
	.long	_$DOM$_Ld110
	.align 2
.globl	_$DOM$_Ld110
_$DOM$_Ld110:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNODELIST
_INIT_DOM_TDOMNODELIST:
	.byte	15,12
	.ascii	"TDOMNodeList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNODELIST
_RTTI_DOM_TDOMNODELIST:
	.byte	15,12
	.ascii	"TDOMNodeList"
	.long	_VMT_DOM_TDOMNODELIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld112
_$DOM$_Ld112:
	.short	0
	.long	_$DOM$_Ld113
	.align 2
.globl	_$DOM$_Ld113
_$DOM$_Ld113:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNAMEDNODEMAP
_INIT_DOM_TDOMNAMEDNODEMAP:
	.byte	15,16
	.ascii	"TDOMNamedNodeMap"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNAMEDNODEMAP
_RTTI_DOM_TDOMNAMEDNODEMAP:
	.byte	15,16
	.ascii	"TDOMNamedNodeMap"
	.long	_VMT_DOM_TDOMNAMEDNODEMAP
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld115
_$DOM$_Ld115:
	.short	0
	.long	_$DOM$_Ld116
	.align 2
.globl	_$DOM$_Ld116
_$DOM$_Ld116:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNODE_NS
_INIT_DOM_TDOMNODE_NS:
	.byte	15,11
	.ascii	"TDOMNode_NS"
	.long	4,0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMATTR
_INIT_DOM_TDOMATTR:
	.byte	15,8
	.ascii	"TDOMAttr"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNODE_NS
_RTTI_DOM_TDOMNODE_NS:
	.byte	15,11
	.ascii	"TDOMNode_NS"
	.long	_VMT_DOM_TDOMNODE_NS
	.long	_RTTI_DOM_TDOMNODE_WITHCHILDREN
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMATTR
_RTTI_DOM_TDOMATTR:
	.byte	15,8
	.ascii	"TDOMAttr"
	.long	_VMT_DOM_TDOMATTR
	.long	_RTTI_DOM_TDOMNODE_NS
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld118
_$DOM$_Ld118:
	.short	0
	.long	_$DOM$_Ld119
	.align 2
.globl	_$DOM$_Ld119
_$DOM$_Ld119:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMELEMENT
_INIT_DOM_TDOMELEMENT:
	.byte	15,11
	.ascii	"TDOMElement"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMELEMENT
_RTTI_DOM_TDOMELEMENT:
	.byte	15,11
	.ascii	"TDOMElement"
	.long	_VMT_DOM_TDOMELEMENT
	.long	_RTTI_DOM_TDOMNODE_NS
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld121
_$DOM$_Ld121:
	.short	0
	.long	_$DOM$_Ld122
	.align 2
.globl	_$DOM$_Ld122
_$DOM$_Ld122:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMCHARACTERDATA
_INIT_DOM_TDOMCHARACTERDATA:
	.byte	15,17
	.ascii	"TDOMCharacterData"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	28

.const_data
	.align 2
.globl	_INIT_DOM_TDOMTEXT
_INIT_DOM_TDOMTEXT:
	.byte	15,8
	.ascii	"TDOMText"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMCHARACTERDATA
_RTTI_DOM_TDOMCHARACTERDATA:
	.byte	15,17
	.ascii	"TDOMCharacterData"
	.long	_VMT_DOM_TDOMCHARACTERDATA
	.long	_RTTI_DOM_TDOMNODE
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMTEXT
_RTTI_DOM_TDOMTEXT:
	.byte	15,8
	.ascii	"TDOMText"
	.long	_VMT_DOM_TDOMTEXT
	.long	_RTTI_DOM_TDOMCHARACTERDATA
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld124
_$DOM$_Ld124:
	.short	0
	.long	_$DOM$_Ld125
	.align 2
.globl	_$DOM$_Ld125
_$DOM$_Ld125:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMCOMMENT
_INIT_DOM_TDOMCOMMENT:
	.byte	15,11
	.ascii	"TDOMComment"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMCOMMENT
_RTTI_DOM_TDOMCOMMENT:
	.byte	15,11
	.ascii	"TDOMComment"
	.long	_VMT_DOM_TDOMCOMMENT
	.long	_RTTI_DOM_TDOMCHARACTERDATA
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld127
_$DOM$_Ld127:
	.short	0
	.long	_$DOM$_Ld128
	.align 2
.globl	_$DOM$_Ld128
_$DOM$_Ld128:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMCDATASECTION
_INIT_DOM_TDOMCDATASECTION:
	.byte	15,16
	.ascii	"TDOMCDATASection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMCDATASECTION
_RTTI_DOM_TDOMCDATASECTION:
	.byte	15,16
	.ascii	"TDOMCDATASection"
	.long	_VMT_DOM_TDOMCDATASECTION
	.long	_RTTI_DOM_TDOMTEXT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld130
_$DOM$_Ld130:
	.short	0
	.long	_$DOM$_Ld131
	.align 2
.globl	_$DOM$_Ld131
_$DOM$_Ld131:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMDOCUMENTTYPE
_INIT_DOM_TDOMDOCUMENTTYPE:
	.byte	15,16
	.ascii	"TDOMDocumentType"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMDOCUMENTTYPE
_RTTI_DOM_TDOMDOCUMENTTYPE:
	.byte	15,16
	.ascii	"TDOMDocumentType"
	.long	_VMT_DOM_TDOMDOCUMENTTYPE
	.long	_RTTI_DOM_TDOMNODE
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld133
_$DOM$_Ld133:
	.short	0
	.long	_$DOM$_Ld134
	.align 2
.globl	_$DOM$_Ld134
_$DOM$_Ld134:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMENTITYREFERENCE
_INIT_DOM_TDOMENTITYREFERENCE:
	.byte	15,19
	.ascii	"TDOMEntityReference"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	40

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMENTITYREFERENCE
_RTTI_DOM_TDOMENTITYREFERENCE:
	.byte	15,19
	.ascii	"TDOMEntityReference"
	.long	_VMT_DOM_TDOMENTITYREFERENCE
	.long	_RTTI_DOM_TDOMNODE_WITHCHILDREN
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld136
_$DOM$_Ld136:
	.short	0
	.long	_$DOM$_Ld137
	.align 2
.globl	_$DOM$_Ld137
_$DOM$_Ld137:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMPROCESSINGINSTRUCTION
_INIT_DOM_TDOMPROCESSINGINSTRUCTION:
	.byte	15,25
	.ascii	"TDOMProcessingInstruction"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	28
	.long	_INIT_SYSTEM_WIDESTRING
	.long	32

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMPROCESSINGINSTRUCTION
_RTTI_DOM_TDOMPROCESSINGINSTRUCTION:
	.byte	15,25
	.ascii	"TDOMProcessingInstruction"
	.long	_VMT_DOM_TDOMPROCESSINGINSTRUCTION
	.long	_RTTI_DOM_TDOMNODE
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld139
_$DOM$_Ld139:
	.short	0
	.long	_$DOM$_Ld140
	.align 2
.globl	_$DOM$_Ld140
_$DOM$_Ld140:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TNODEPOOL
_INIT_DOM_TNODEPOOL:
	.byte	15,9
	.ascii	"TNodePool"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TNODEPOOL
_RTTI_DOM_TNODEPOOL:
	.byte	15,9
	.ascii	"TNodePool"
	.long	_VMT_DOM_TNODEPOOL
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_PNODEPOOLARRAY
_INIT_DOM_PNODEPOOLARRAY:
	.byte	0
	.ascii	"\016PNodePoolArray"

.const_data
	.align 2
.globl	_RTTI_DOM_PNODEPOOLARRAY
_RTTI_DOM_PNODEPOOLARRAY:
	.byte	0
	.ascii	"\016PNodePoolArray"

.const_data
	.align 2
.globl	_INIT_DOM_TNODEPOOLARRAY
_INIT_DOM_TNODEPOOLARRAY:
	.byte	12
	.ascii	"\016TNodePoolArray"
	.long	4,536870911
	.long	_INIT_DOM_TNODEPOOL
	.long	-1

.const_data
	.align 2
.globl	_RTTI_DOM_TNODEPOOLARRAY
_RTTI_DOM_TNODEPOOLARRAY:
	.byte	12
	.ascii	"\016TNodePoolArray"
	.long	4,536870911
	.long	_RTTI_DOM_TNODEPOOL
	.long	-1

.const_data
	.align 2
.globl	_INIT_DOM_TSETOFCHAR
_INIT_DOM_TSETOFCHAR:
	.byte	5,10
	.ascii	"TSetOfChar"
	.byte	1
	.long	_INIT_SYSTEM_CHAR

.const_data
	.align 2
.globl	_RTTI_DOM_TSETOFCHAR
_RTTI_DOM_TSETOFCHAR:
	.byte	5,10
	.ascii	"TSetOfChar"
	.byte	1
	.long	_RTTI_SYSTEM_CHAR

.const_data
	.align 2
.globl	_INIT_DOM_PDOMSTRING
_INIT_DOM_PDOMSTRING:
	.byte	0
	.ascii	"\012PDOMString"

.const_data
	.align 2
.globl	_RTTI_DOM_PDOMSTRING
_RTTI_DOM_PDOMSTRING:
	.byte	0
	.ascii	"\012PDOMString"

.const_data
	.align 2
.globl	_INIT_DOM_DEF408
_INIT_DOM_DEF408:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DOM$_Ld142
_$DOM$_Ld142:
	.short	0
	.long	_$DOM$_Ld143
	.align 2
.globl	_$DOM$_Ld143
_$DOM$_Ld143:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMERROR
_INIT_DOM_EDOMERROR:
	.byte	15,9
	.ascii	"EDOMError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMERROR
_RTTI_DOM_EDOMERROR:
	.byte	15,9
	.ascii	"EDOMError"
	.long	_VMT_DOM_EDOMERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld145
_$DOM$_Ld145:
	.short	0
	.long	_$DOM$_Ld146
	.align 2
.globl	_$DOM$_Ld146
_$DOM$_Ld146:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMINDEXSIZE
_INIT_DOM_EDOMINDEXSIZE:
	.byte	15,13
	.ascii	"EDOMIndexSize"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMINDEXSIZE
_RTTI_DOM_EDOMINDEXSIZE:
	.byte	15,13
	.ascii	"EDOMIndexSize"
	.long	_VMT_DOM_EDOMINDEXSIZE
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld148
_$DOM$_Ld148:
	.short	0
	.long	_$DOM$_Ld149
	.align 2
.globl	_$DOM$_Ld149
_$DOM$_Ld149:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMHIERARCHYREQUEST
_INIT_DOM_EDOMHIERARCHYREQUEST:
	.byte	15,20
	.ascii	"EDOMHierarchyRequest"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMHIERARCHYREQUEST
_RTTI_DOM_EDOMHIERARCHYREQUEST:
	.byte	15,20
	.ascii	"EDOMHierarchyRequest"
	.long	_VMT_DOM_EDOMHIERARCHYREQUEST
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld151
_$DOM$_Ld151:
	.short	0
	.long	_$DOM$_Ld152
	.align 2
.globl	_$DOM$_Ld152
_$DOM$_Ld152:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMWRONGDOCUMENT
_INIT_DOM_EDOMWRONGDOCUMENT:
	.byte	15,17
	.ascii	"EDOMWrongDocument"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMWRONGDOCUMENT
_RTTI_DOM_EDOMWRONGDOCUMENT:
	.byte	15,17
	.ascii	"EDOMWrongDocument"
	.long	_VMT_DOM_EDOMWRONGDOCUMENT
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld154
_$DOM$_Ld154:
	.short	0
	.long	_$DOM$_Ld155
	.align 2
.globl	_$DOM$_Ld155
_$DOM$_Ld155:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMNOTFOUND
_INIT_DOM_EDOMNOTFOUND:
	.byte	15,12
	.ascii	"EDOMNotFound"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMNOTFOUND
_RTTI_DOM_EDOMNOTFOUND:
	.byte	15,12
	.ascii	"EDOMNotFound"
	.long	_VMT_DOM_EDOMNOTFOUND
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld157
_$DOM$_Ld157:
	.short	0
	.long	_$DOM$_Ld158
	.align 2
.globl	_$DOM$_Ld158
_$DOM$_Ld158:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMNOTSUPPORTED
_INIT_DOM_EDOMNOTSUPPORTED:
	.byte	15,16
	.ascii	"EDOMNotSupported"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMNOTSUPPORTED
_RTTI_DOM_EDOMNOTSUPPORTED:
	.byte	15,16
	.ascii	"EDOMNotSupported"
	.long	_VMT_DOM_EDOMNOTSUPPORTED
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld160
_$DOM$_Ld160:
	.short	0
	.long	_$DOM$_Ld161
	.align 2
.globl	_$DOM$_Ld161
_$DOM$_Ld161:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMINUSEATTRIBUTE
_INIT_DOM_EDOMINUSEATTRIBUTE:
	.byte	15,18
	.ascii	"EDOMInUseAttribute"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMINUSEATTRIBUTE
_RTTI_DOM_EDOMINUSEATTRIBUTE:
	.byte	15,18
	.ascii	"EDOMInUseAttribute"
	.long	_VMT_DOM_EDOMINUSEATTRIBUTE
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld163
_$DOM$_Ld163:
	.short	0
	.long	_$DOM$_Ld164
	.align 2
.globl	_$DOM$_Ld164
_$DOM$_Ld164:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMINVALIDSTATE
_INIT_DOM_EDOMINVALIDSTATE:
	.byte	15,16
	.ascii	"EDOMInvalidState"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMINVALIDSTATE
_RTTI_DOM_EDOMINVALIDSTATE:
	.byte	15,16
	.ascii	"EDOMInvalidState"
	.long	_VMT_DOM_EDOMINVALIDSTATE
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld166
_$DOM$_Ld166:
	.short	0
	.long	_$DOM$_Ld167
	.align 2
.globl	_$DOM$_Ld167
_$DOM$_Ld167:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMSYNTAX
_INIT_DOM_EDOMSYNTAX:
	.byte	15,10
	.ascii	"EDOMSyntax"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMSYNTAX
_RTTI_DOM_EDOMSYNTAX:
	.byte	15,10
	.ascii	"EDOMSyntax"
	.long	_VMT_DOM_EDOMSYNTAX
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld169
_$DOM$_Ld169:
	.short	0
	.long	_$DOM$_Ld170
	.align 2
.globl	_$DOM$_Ld170
_$DOM$_Ld170:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMINVALIDMODIFICATION
_INIT_DOM_EDOMINVALIDMODIFICATION:
	.byte	15,23
	.ascii	"EDOMInvalidModification"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMINVALIDMODIFICATION
_RTTI_DOM_EDOMINVALIDMODIFICATION:
	.byte	15,23
	.ascii	"EDOMInvalidModification"
	.long	_VMT_DOM_EDOMINVALIDMODIFICATION
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld172
_$DOM$_Ld172:
	.short	0
	.long	_$DOM$_Ld173
	.align 2
.globl	_$DOM$_Ld173
_$DOM$_Ld173:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMNAMESPACE
_INIT_DOM_EDOMNAMESPACE:
	.byte	15,13
	.ascii	"EDOMNamespace"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMNAMESPACE
_RTTI_DOM_EDOMNAMESPACE:
	.byte	15,13
	.ascii	"EDOMNamespace"
	.long	_VMT_DOM_EDOMNAMESPACE
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld175
_$DOM$_Ld175:
	.short	0
	.long	_$DOM$_Ld176
	.align 2
.globl	_$DOM$_Ld176
_$DOM$_Ld176:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_EDOMINVALIDACCESS
_INIT_DOM_EDOMINVALIDACCESS:
	.byte	15,17
	.ascii	"EDOMInvalidAccess"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_EDOMINVALIDACCESS
_RTTI_DOM_EDOMINVALIDACCESS:
	.byte	15,17
	.ascii	"EDOMInvalidAccess"
	.long	_VMT_DOM_EDOMINVALIDACCESS
	.long	_RTTI_DOM_EDOMERROR
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TNODEFLAGENUM
_INIT_DOM_TNODEFLAGENUM:
	.byte	3,13
	.ascii	"TNodeFlagEnum"
	.byte	5
	.long	0,5,0
	.byte	10
	.ascii	"nfReadonly"
	.byte	10
	.ascii	"nfRecycled"
	.byte	8
	.ascii	"nfLevel2"
	.byte	13
	.ascii	"nfIgnorableWS"
	.byte	11
	.ascii	"nfSpecified"
	.byte	12
	.ascii	"nfDestroying"
	.byte	3
	.ascii	"DOM"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DOM_TNODEFLAGENUM
_RTTI_DOM_TNODEFLAGENUM:
	.byte	3,13
	.ascii	"TNodeFlagEnum"
	.byte	5
	.long	0,5,0
	.byte	10
	.ascii	"nfReadonly"
	.byte	10
	.ascii	"nfRecycled"
	.byte	8
	.ascii	"nfLevel2"
	.byte	13
	.ascii	"nfIgnorableWS"
	.byte	11
	.ascii	"nfSpecified"
	.byte	12
	.ascii	"nfDestroying"
	.byte	3
	.ascii	"DOM"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DOM_TNODEFLAGENUM_s2o
_RTTI_DOM_TNODEFLAGENUM_s2o:
	.long	6,5
	.long	_RTTI_DOM_TNODEFLAGENUM+85
	.long	3
	.long	_RTTI_DOM_TNODEFLAGENUM+59
	.long	2
	.long	_RTTI_DOM_TNODEFLAGENUM+50
	.long	0
	.long	_RTTI_DOM_TNODEFLAGENUM+28
	.long	1
	.long	_RTTI_DOM_TNODEFLAGENUM+39
	.long	4
	.long	_RTTI_DOM_TNODEFLAGENUM+73

.const_data
	.align 2
.globl	_RTTI_DOM_TNODEFLAGENUM_o2s
_RTTI_DOM_TNODEFLAGENUM_o2s:
	.long	0
	.long	_RTTI_DOM_TNODEFLAGENUM+28
	.long	_RTTI_DOM_TNODEFLAGENUM+39
	.long	_RTTI_DOM_TNODEFLAGENUM+50
	.long	_RTTI_DOM_TNODEFLAGENUM+59
	.long	_RTTI_DOM_TNODEFLAGENUM+73
	.long	_RTTI_DOM_TNODEFLAGENUM+85

.const_data
	.align 2
.globl	_INIT_DOM_TNODEFLAGS
_INIT_DOM_TNODEFLAGS:
	.byte	5,10
	.ascii	"TNodeFlags"
	.byte	5
	.long	_INIT_DOM_TNODEFLAGENUM

.const_data
	.align 2
.globl	_RTTI_DOM_TNODEFLAGS
_RTTI_DOM_TNODEFLAGS:
	.byte	5,10
	.ascii	"TNodeFlags"
	.byte	5
	.long	_RTTI_DOM_TNODEFLAGENUM

.const_data
	.align 2
.globl	_$DOM$_Ld178
_$DOM$_Ld178:
	.short	0
	.long	_$DOM$_Ld179
	.align 2
.globl	_$DOM$_Ld179
_$DOM$_Ld179:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNODECLASS
_INIT_DOM_TDOMNODECLASS:
	.byte	0
	.ascii	"\015TDOMNodeClass"

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNODECLASS
_RTTI_DOM_TDOMNODECLASS:
	.byte	0
	.ascii	"\015TDOMNodeClass"

.const_data
	.align 2
.globl	_$DOM$_Ld181
_$DOM$_Ld181:
	.short	0
	.long	_$DOM$_Ld182
	.align 2
.globl	_$DOM$_Ld182
_$DOM$_Ld182:
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld184
_$DOM$_Ld184:
	.short	0
	.long	_$DOM$_Ld185
	.align 2
.globl	_$DOM$_Ld185
_$DOM$_Ld185:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TFILTERRESULT
_INIT_DOM_TFILTERRESULT:
	.byte	3,13
	.ascii	"TFilterResult"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"frFalse"
	.byte	16
	.ascii	"frNorecurseFalse"
	.byte	6
	.ascii	"frTrue"
	.byte	15
	.ascii	"frNorecurseTrue"
	.byte	3
	.ascii	"DOM"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DOM_TFILTERRESULT
_RTTI_DOM_TFILTERRESULT:
	.byte	3,13
	.ascii	"TFilterResult"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"frFalse"
	.byte	16
	.ascii	"frNorecurseFalse"
	.byte	6
	.ascii	"frTrue"
	.byte	15
	.ascii	"frNorecurseTrue"
	.byte	3
	.ascii	"DOM"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DOM_TFILTERRESULT_s2o
_RTTI_DOM_TFILTERRESULT_s2o:
	.long	4,0
	.long	_RTTI_DOM_TFILTERRESULT+28
	.long	1
	.long	_RTTI_DOM_TFILTERRESULT+36
	.long	3
	.long	_RTTI_DOM_TFILTERRESULT+60
	.long	2
	.long	_RTTI_DOM_TFILTERRESULT+53

.const_data
	.align 2
.globl	_RTTI_DOM_TFILTERRESULT_o2s
_RTTI_DOM_TFILTERRESULT_o2s:
	.long	0
	.long	_RTTI_DOM_TFILTERRESULT+28
	.long	_RTTI_DOM_TFILTERRESULT+36
	.long	_RTTI_DOM_TFILTERRESULT+53
	.long	_RTTI_DOM_TFILTERRESULT+60

.const_data
	.align 2
.globl	_$DOM$_Ld187
_$DOM$_Ld187:
	.short	0
	.long	_$DOM$_Ld188
	.align 2
.globl	_$DOM$_Ld188
_$DOM$_Ld188:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMELEMENTLIST
_INIT_DOM_TDOMELEMENTLIST:
	.byte	15,15
	.ascii	"TDOMElementList"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	16
	.long	_INIT_SYSTEM_WIDESTRING
	.long	24

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMELEMENTLIST
_RTTI_DOM_TDOMELEMENTLIST:
	.byte	15,15
	.ascii	"TDOMElementList"
	.long	_VMT_DOM_TDOMELEMENTLIST
	.long	_RTTI_DOM_TDOMNODELIST
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld190
_$DOM$_Ld190:
	.short	0
	.long	_$DOM$_Ld191
	.align 2
.globl	_$DOM$_Ld191
_$DOM$_Ld191:
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld193
_$DOM$_Ld193:
	.short	0
	.long	_$DOM$_Ld194
	.align 2
.globl	_$DOM$_Ld194
_$DOM$_Ld194:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMIMPLEMENTATION
_INIT_DOM_TDOMIMPLEMENTATION:
	.byte	15,18
	.ascii	"TDOMImplementation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMIMPLEMENTATION
_RTTI_DOM_TDOMIMPLEMENTATION:
	.byte	15,18
	.ascii	"TDOMImplementation"
	.long	_VMT_DOM_TDOMIMPLEMENTATION
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld196
_$DOM$_Ld196:
	.short	0
	.long	_$DOM$_Ld197
	.align 2
.globl	_$DOM$_Ld197
_$DOM$_Ld197:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMDOCUMENTFRAGMENT
_INIT_DOM_TDOMDOCUMENTFRAGMENT:
	.byte	15,20
	.ascii	"TDOMDocumentFragment"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMDOCUMENTFRAGMENT
_RTTI_DOM_TDOMDOCUMENTFRAGMENT:
	.byte	15,20
	.ascii	"TDOMDocumentFragment"
	.long	_VMT_DOM_TDOMDOCUMENTFRAGMENT
	.long	_RTTI_DOM_TDOMNODE_WITHCHILDREN
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TNAMESPACES
_RTTI_DOM_TNAMESPACES:
	.byte	21
	.ascii	"\013TNamespaces"
	.long	4
	.long	_RTTI_SYSTEM_WIDESTRING
	.long	258
	.long	_RTTI_SYSTEM_WIDESTRING
	.byte	3
	.ascii	"DOM"

.const_data
	.align 2
.globl	_$DOM$_Ld199
_$DOM$_Ld199:
	.short	0
	.long	_$DOM$_Ld200
	.align 2
.globl	_$DOM$_Ld200
_$DOM$_Ld200:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TXMLDOCUMENT
_INIT_DOM_TXMLDOCUMENT:
	.byte	15,12
	.ascii	"TXMLDocument"
	.long	4,2
	.long	_INIT_SYSTEM_WIDESTRING
	.long	96
	.long	_INIT_SYSTEM_WIDESTRING
	.long	100

.const_data
	.align 2
.globl	_RTTI_DOM_TXMLDOCUMENT
_RTTI_DOM_TXMLDOCUMENT:
	.byte	15,12
	.ascii	"TXMLDocument"
	.long	_VMT_DOM_TXMLDOCUMENT
	.long	_RTTI_DOM_TDOMDOCUMENT
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TNAMESPACEINFO
_INIT_DOM_TNAMESPACEINFO:
	.byte	13,14
	.ascii	"TNamespaceInfo"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_DOM_TNAMESPACEINFO
_RTTI_DOM_TNAMESPACEINFO:
	.byte	13,14
	.ascii	"TNamespaceInfo"
	.long	8,3
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_XMLUTILS_PHASHITEM
	.long	4

.const_data
	.align 2
.globl	_INIT_DOM_DEF844
_INIT_DOM_DEF844:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_UNICODESTRING
	.long	258

.const_data
	.align 2
.globl	_$DOM$_Ld202
_$DOM$_Ld202:
	.short	0
	.long	_$DOM$_Ld203
	.align 2
.globl	_$DOM$_Ld203
_$DOM$_Ld203:
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld205
_$DOM$_Ld205:
	.short	0
	.long	_$DOM$_Ld206
	.align 2
.globl	_$DOM$_Ld206
_$DOM$_Ld206:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMNOTATION
_INIT_DOM_TDOMNOTATION:
	.byte	15,12
	.ascii	"TDOMNotation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMNOTATION
_RTTI_DOM_TDOMNOTATION:
	.byte	15,12
	.ascii	"TDOMNotation"
	.long	_VMT_DOM_TDOMNOTATION
	.long	_RTTI_DOM_TDOMNODE
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_$DOM$_Ld208
_$DOM$_Ld208:
	.short	0
	.long	_$DOM$_Ld209
	.align 2
.globl	_$DOM$_Ld209
_$DOM$_Ld209:
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_TDOMENTITY
_INIT_DOM_TDOMENTITY:
	.byte	15,10
	.ascii	"TDOMEntity"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TDOMENTITY
_RTTI_DOM_TDOMENTITY:
	.byte	15,10
	.ascii	"TDOMEntity"
	.long	_VMT_DOM_TDOMENTITY
	.long	_RTTI_DOM_TDOMNODE_TOPLEVEL
	.short	0
	.byte	3
	.ascii	"DOM"
	.short	0

.const_data
	.align 2
.globl	_INIT_DOM_PEXTENT
_INIT_DOM_PEXTENT:
	.byte	0
	.ascii	"\007PExtent"

.const_data
	.align 2
.globl	_RTTI_DOM_PEXTENT
_RTTI_DOM_PEXTENT:
	.byte	0
	.ascii	"\007PExtent"

.const_data
	.align 2
.globl	_INIT_DOM_TEXTENT
_INIT_DOM_TEXTENT:
	.byte	13,7
	.ascii	"TExtent"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DOM_TEXTENT
_RTTI_DOM_TEXTENT:
	.byte	13,7
	.ascii	"TExtent"
	.long	4,1
	.long	_RTTI_DOM_PEXTENT
	.long	0

.const_data
	.align 2
.globl	_$DOM$_Ld211
_$DOM$_Ld211:
	.short	0
	.long	_$DOM$_Ld212
	.align 2
.globl	_$DOM$_Ld212
_$DOM$_Ld212:
	.short	0

.const_data
	.align 2
.globl	_RTTI_DOM_TATTRIBUTEMAP
_RTTI_DOM_TATTRIBUTEMAP:
	.byte	15,13
	.ascii	"TAttributeMap"
	.long	_VMT_DOM_TATTRIBUTEMAP
	.long	_RTTI_DOM_TDOMNAMEDNODEMAP
	.short	0
	.byte	3
	.ascii	"DOM"
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
L_$DOM$_Ld5$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMHIERARCHYREQUEST$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMHIERARCHYREQUEST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld7$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld9$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMNOTFOUND$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMNOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld11$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld13$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMNOTSUPPORTED$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMNOTSUPPORTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld15$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMERROR$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld17$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMWRONGDOCUMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMWRONGDOCUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld19$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld21$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOM_VALIDCHILDREN$non_lazy_ptr:
.indirect_symbol _TC_DOM_VALIDCHILDREN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld23$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMNODE_WITHCHILDREN$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMNODE_WITHCHILDREN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld25$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld27$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld29$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld31$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld33$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMINDEXSIZE$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMINDEXSIZE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld35$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld37$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld39$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld41$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_XMLUTILS_XMLVERSIONSTR$non_lazy_ptr:
.indirect_symbol _TC_XMLUTILS_XMLVERSIONSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld43$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld45$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld47$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld49$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld51$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld53$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TDTDMODEL$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TDTDMODEL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMDOCUMENTTYPE$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMDOCUMENTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld55$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TXMLDOCUMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TXMLDOCUMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMENTITY$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMENTITY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_THASHTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_DOM_TNAMESPACES$non_lazy_ptr:
.indirect_symbol _INIT_DOM_TNAMESPACES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOM_STDURI_XML$non_lazy_ptr:
.indirect_symbol _TC_DOM_STDURI_XML
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DOM_STDURI_XMLNS$non_lazy_ptr:
.indirect_symbol _TC_DOM_STDURI_XMLNS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMELEMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMELEMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld57$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TNODEPOOL$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TNODEPOOL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld59$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld61$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld63$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMDOCUMENTFRAGMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMDOCUMENTFRAGMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMTEXT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMTEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMCOMMENT$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMCOMMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld65$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld67$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld69$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMATTR$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMATTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld71$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMNODELIST$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMNODELIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMELEMENTLIST$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMELEMENTLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld73$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld75$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld77$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld79$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMCDATASECTION$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMCDATASECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld81$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMPROCESSINGINSTRUCTION$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMPROCESSINGINSTRUCTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld83$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMENTITYREFERENCE$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMENTITYREFERENCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld85$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld87$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld89$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld89
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_EDOMNAMESPACE$non_lazy_ptr:
.indirect_symbol _VMT_DOM_EDOMNAMESPACE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld91$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld91
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TATTRIBUTEMAP$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TATTRIBUTEMAP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld93$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld93
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld95$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld97$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld99$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld101$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DOM$_Ld103$non_lazy_ptr:
.indirect_symbol _$DOM$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMNOTATION$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMNOTATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DOM_CONVERTENTITY$PHASHITEM$POINTER$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _DOM_CONVERTENTITY$PHASHITEM$POINTER$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_DOM_CONVERTNOTATION$PHASHITEM$POINTER$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _DOM_CONVERTNOTATION$PHASHITEM$POINTER$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DOM_TDOMNAMEDNODEMAP$non_lazy_ptr:
.indirect_symbol _VMT_DOM_TDOMNAMEDNODEMAP
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

