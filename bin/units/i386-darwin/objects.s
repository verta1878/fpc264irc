# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_OBJECTS_CALLVOIDCONSTRUCTOR$POINTER$POINTER$POINTER$$POINTER
_OBJECTS_CALLVOIDCONSTRUCTOR$POINTER$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLPOINTERCONSTRUCTOR$POINTER$POINTER$POINTER$POINTER$$POINTER
_OBJECTS_CALLPOINTERCONSTRUCTOR$POINTER$POINTER$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLVOIDMETHOD$POINTER$POINTER$$POINTER
_OBJECTS_CALLVOIDMETHOD$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLPOINTERMETHOD$POINTER$POINTER$POINTER$$POINTER
_OBJECTS_CALLPOINTERMETHOD$POINTER$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLVOIDLOCAL$POINTER$POINTER$$POINTER
_OBJECTS_CALLVOIDLOCAL$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLPOINTERLOCAL$POINTER$POINTER$POINTER$$POINTER
_OBJECTS_CALLPOINTERLOCAL$POINTER$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLVOIDMETHODLOCAL$POINTER$POINTER$POINTER$$POINTER
_OBJECTS_CALLVOIDMETHODLOCAL$POINTER$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*%edx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CALLPOINTERMETHODLOCAL$POINTER$POINTER$POINTER$POINTER$$POINTER
_OBJECTS_CALLPOINTERMETHODLOCAL$POINTER$POINTER$POINTER$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_REGISTERERROR
_OBJECTS_REGISTERERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	$212,%ax
	call	L_SYSTEM_RUNERROR$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_CHECKEMPTY$TRECT
_OBJECTS_CHECKEMPTY$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj69
	jmp	Lj71
Lj71:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	12(%edx),%eax
	jge	Lj69
	jmp	Lj70
Lj69:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
Lj70:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__EMPTY$$BOOLEAN
_OBJECTS_TRECT_$__EMPTY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj82
	jmp	Lj84
Lj84:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	12(%edx),%eax
	jge	Lj82
	jmp	Lj83
Lj82:
	movb	$1,-5(%ebp)
	jmp	Lj85
Lj83:
	movb	$0,-5(%ebp)
Lj85:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__EQUALS$TRECT$$BOOLEAN
_OBJECTS_TRECT_$__EQUALS$TRECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-28(%ebp),%eax
	je	Lj92
	jmp	Lj89
Lj92:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj91
	jmp	Lj89
Lj91:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj90
	jmp	Lj89
Lj90:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-16(%ebp),%eax
	je	Lj88
	jmp	Lj89
Lj88:
	movb	$1,-9(%ebp)
	jmp	Lj93
Lj89:
	movb	$0,-9(%ebp)
Lj93:
	movb	-9(%ebp),%al
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__CONTAINS$TPOINT$$BOOLEAN
_OBJECTS_TRECT_$__CONTAINS$TPOINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	(%eax),%edx
	jge	Lj100
	jmp	Lj97
Lj100:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj99
	jmp	Lj97
Lj99:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	4(%eax),%edx
	jge	Lj98
	jmp	Lj97
Lj98:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	12(%eax),%edx
	jl	Lj96
	jmp	Lj97
Lj96:
	movb	$1,-9(%ebp)
	jmp	Lj101
Lj97:
	movb	$0,-9(%ebp)
Lj101:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__COPY$TRECT
_OBJECTS_TRECT_$__COPY$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__UNION$TRECT
_OBJECTS_TRECT_$__UNION$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	(%eax),%edx
	jl	Lj110
	jmp	Lj111
Lj110:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
Lj111:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	4(%eax),%edx
	jl	Lj114
	jmp	Lj115
Lj114:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,4(%eax)
Lj115:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	8(%eax),%edx
	jg	Lj118
	jmp	Lj119
Lj118:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
Lj119:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	12(%eax),%edx
	jg	Lj122
	jmp	Lj123
Lj122:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
Lj123:
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__INTERSECT$TRECT
_OBJECTS_TRECT_$__INTERSECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	cmpl	(%eax),%edx
	jg	Lj128
	jmp	Lj129
Lj128:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
Lj129:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj132
	jmp	Lj133
Lj132:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,4(%eax)
Lj133:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj136
	jmp	Lj137
Lj136:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
Lj137:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	12(%eax),%edx
	jl	Lj140
	jmp	Lj141
Lj140:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
Lj141:
	movl	-8(%ebp),%eax
	call	L_OBJECTS_CHECKEMPTY$TRECT$stub
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__MOVE$LONGINT$LONGINT
_OBJECTS_TRECT_$__MOVE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__GROW$LONGINT$LONGINT
_OBJECTS_TRECT_$__GROW$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,12(%eax)
	movl	-12(%ebp),%eax
	call	L_OBJECTS_CHECKEMPTY$TRECT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRECT_$__ASSIGN$LONGINT$LONGINT$LONGINT$LONGINT
_OBJECTS_TRECT_$__ASSIGN$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TOBJECT_$__INIT$$LONGBOOL
_OBJECTS_TOBJECT_$__INIT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj172
	jmp	Lj173
Lj172:
	jmp	Lj162
Lj173:
	leal	-12(%ebp),%eax
	leal	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	movl	-12(%ebp),%ecx
	subl	%ecx,%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj162:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TOBJECT_$__FREE
_OBJECTS_TOBJECT_$__FREE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*12(%ecx)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TOBJECT_$__IS_OBJECT$POINTER$$BOOLEAN
_OBJECTS_TOBJECT_$__IS_OBJECT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movb	$0,-9(%ebp)
	jmp	Lj197
	.align 2
Lj196:
	movl	-20(%ebp),%eax
	cmpl	-4(%ebp),%eax
	je	Lj199
	jmp	Lj200
Lj199:
	movb	$1,-9(%ebp)
	jmp	Lj198
Lj200:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
Lj197:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj196
	jmp	Lj198
Lj198:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TOBJECT_$__DONE
_OBJECTS_TOBJECT_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__INIT$$LONGBOOL
_OBJECTS_TSTREAM_$__INIT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj214
Lj214:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj223
	jmp	Lj224
Lj223:
	jmp	Lj213
Lj224:
	movl	-8(%ebp),%eax
	movw	$0,4(%eax)
	movl	-8(%ebp),%eax
	movw	$0,6(%eax)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%edx
	movl	L_TC_OBJECTS_DEFAULTTPCOMPATIBLE$non_lazy_ptr-Lj214(%ebx),%eax
	movb	(%eax),%al
	movb	%al,16(%edx)
Lj213:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__GET$$POBJECT
_OBJECTS_TSTREAM_$__GET$$POBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj236
Lj236:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj237
	jmp	Lj238
Lj237:
	leal	-18(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*48(%esi)
	movzwl	-18(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj247
Lj238:
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*48(%esi)
Lj247:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj254
	jmp	Lj255
Lj254:
	movl	L_TC_OBJECTS_STREAMTYPES$non_lazy_ptr-Lj236(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj259
	.align 2
Lj258:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
Lj259:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj263
	jmp	Lj260
Lj263:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj258
	jmp	Lj260
Lj260:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj264
	jmp	Lj265
Lj264:
	movw	-12(%ebp),%cx
	movl	-4(%ebp),%eax
	movw	$-5,%dx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
	movl	$0,-8(%ebp)
	jmp	Lj274
Lj265:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	-32(%ebp),%esi
	call	*%esi
	movl	%eax,-8(%ebp)
Lj274:
	jmp	Lj291
Lj255:
	movl	$0,-8(%ebp)
Lj291:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__STRREAD$$PCHAR
_OBJECTS_TSTREAM_$__STRREAD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	je	Lj302
	jmp	Lj303
Lj302:
	movl	$0,-8(%ebp)
	jmp	Lj306
Lj303:
	movzwl	-10(%ebp),%edx
	incl	%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj311
	jmp	Lj312
Lj311:
	movl	-16(%ebp),%edx
	movzwl	-10(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-16(%ebp),%edx
	movzwl	-10(%ebp),%eax
	movb	$0,(%edx,%eax,1)
Lj312:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj306:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__READSTR$$PSHORTSTRING
_OBJECTS_TSTREAM_$__READSTR$$PSHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movzbl	-9(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj331
	jmp	Lj332
Lj331:
	movzbl	-9(%ebp),%edx
	incl	%edx
	leal	-16(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj337
	jmp	Lj338
Lj337:
	movl	-16(%ebp),%eax
	movb	-9(%ebp),%dl
	movb	%dl,(%eax)
	movl	-16(%ebp),%eax
	leal	1(%eax),%edx
	movzbl	-9(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%esi
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	*48(%esi)
Lj338:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj349
Lj332:
	movl	$0,-8(%ebp)
Lj349:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__GETPOS$$LONGINT
_OBJECTS_TSTREAM_$__GETPOS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj354
	jmp	Lj355
Lj354:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj358
Lj355:
	movl	$-1,-8(%ebp)
Lj358:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__GETSIZE$$LONGINT
_OBJECTS_TSTREAM_$__GETSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj363
	jmp	Lj364
Lj363:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj367
Lj364:
	movl	$-1,-8(%ebp)
Lj367:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__CLOSE
_OBJECTS_TSTREAM_$__CLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__RESET
_OBJECTS_TSTREAM_$__RESET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$0,4(%eax)
	movl	-4(%ebp),%eax
	movw	$0,6(%eax)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__FLUSH
_OBJECTS_TSTREAM_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__TRUNCATE
_OBJECTS_TSTREAM_$__TRUNCATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_OBJECTS_ABSTRACT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__PUT$POBJECT
_OBJECTS_TSTREAM_$__PUT$POBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj383
Lj383:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jne	Lj386
	jmp	Lj387
Lj386:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj390
Lj387:
	movl	$0,-16(%ebp)
Lj390:
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj397
	jmp	Lj396
Lj397:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj395
	jmp	Lj396
Lj395:
	movl	L_TC_OBJECTS_STREAMTYPES$non_lazy_ptr-Lj383(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj401
	.align 2
Lj400:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
Lj401:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj405
	jmp	Lj402
Lj405:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj400
	jmp	Lj402
Lj402:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj406
	jmp	Lj407
Lj406:
	movl	-8(%ebp),%eax
	movw	$0,%dx
	movw	$-6,%di
	movl	-8(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
	jmp	Lj382
	jmp	Lj414
Lj407:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
Lj414:
Lj396:
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj417
	jmp	Lj418
Lj417:
	movw	-12(%ebp),%ax
	movw	%ax,-26(%ebp)
	leal	-26(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
	jmp	Lj427
Lj418:
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
Lj427:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj434
	jmp	Lj435
Lj434:
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%ecx
	call	*%ecx
Lj435:
Lj382:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__SEEK$LONGINT
_OBJECTS_TSTREAM_$__SEEK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj448
	jmp	Lj449
Lj448:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj450
	jmp	Lj451
Lj450:
	movl	$0,-4(%ebp)
Lj451:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	8(%eax),%edx
	jle	Lj454
	jmp	Lj455
Lj454:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	jmp	Lj458
Lj455:
	movw	-4(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$-7,%dx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj458:
Lj449:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__STRWRITE$PCHAR
_OBJECTS_TSTREAM_$__STRWRITE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj471
	jmp	Lj472
Lj471:
	jmp	Lj474
	.align 2
Lj473:
	incw	-10(%ebp)
Lj474:
	movl	-16(%ebp),%eax
	movzwl	-10(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	testl	%eax,%eax
	jne	Lj473
	jmp	Lj475
Lj475:
Lj472:
	leal	-10(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj482
	jmp	Lj483
Lj482:
	movl	-4(%ebp),%edx
	movzwl	-10(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%esi
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	*52(%esi)
Lj483:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__WRITESTR$PSHORTSTRING
_OBJECTS_TSTREAM_$__WRITESTR$PSHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj491
Lj491:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj492
	jmp	Lj493
Lj492:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edi
	movl	-8(%ebp),%edx
	movl	(%edx),%ebx
	movl	%eax,%edx
	movl	%edi,%eax
	call	*52(%ebx)
	jmp	Lj500
Lj493:
	movl	L_TC_OBJECTS_TSTREAM_$_WRITESTR$PSHORTSTRING_EMPTY$non_lazy_ptr-Lj491(%esi),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
Lj500:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__OPEN$WORD
_OBJECTS_TSTREAM_$__OPEN$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__ERROR$SMALLINT$SMALLINT
_OBJECTS_TSTREAM_$__ERROR$SMALLINT$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj510
Lj510:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	-12(%ebp),%eax
	movw	-4(%ebp),%dx
	movw	%dx,4(%eax)
	movl	-12(%ebp),%eax
	movw	-8(%ebp),%dx
	movw	%dx,6(%eax)
	movl	L_TC_OBJECTS_STREAMERROR$non_lazy_ptr-Lj510(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj515
	jmp	Lj516
Lj515:
	movl	-12(%ebp),%eax
	movl	L_TC_OBJECTS_STREAMERROR$non_lazy_ptr-Lj510(%ebx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj516:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__READ$formal$LONGINT
_OBJECTS_TSTREAM_$__READ$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	call	L_OBJECTS_ABSTRACT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__WRITE$formal$LONGINT
_OBJECTS_TSTREAM_$__WRITE$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	call	L_OBJECTS_ABSTRACT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTREAM_$__COPYFROM$TSTREAM$LONGINT
_OBJECTS_TSTREAM_$__COPYFROM$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1048,%esp
	movl	%ebx,-1044(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	jmp	Lj526
	.align 2
Lj525:
	movl	-8(%ebp),%eax
	cmpl	$1024,%eax
	jg	Lj528
	jmp	Lj529
Lj528:
	movw	$1024,-14(%ebp)
	jmp	Lj532
Lj529:
	movw	-8(%ebp),%ax
	movw	%ax,-14(%ebp)
Lj532:
	movzwl	-14(%ebp),%ecx
	leal	-1038(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movzwl	-14(%ebp),%ecx
	leal	-1038(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movzwl	-14(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj526:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj525
	jmp	Lj527
Lj527:
	movl	-1044(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__INIT$SHORTSTRING$WORD$$LONGBOOL
_OBJECTS_TDOSSTREAM_$__INIT$SHORTSTRING$WORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-280(%ebp)
	movl	%esi,-276(%ebp)
	call	Lj548
Lj548:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-272(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj557
	jmp	Lj558
Lj557:
	jmp	Lj547
Lj558:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TSTREAM_$__INIT$$LONGBOOL$stub
	movl	L_$OBJECTS$_Ld1$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,(%esp)
	leal	-272(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	movzbl	-272(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	24(%eax),%edx
	leal	-271(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj548(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,20(%edx)
	leal	-272(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_ASSIGN$file$SHORTSTRING$stub
	movzwl	8(%ebp),%eax
	cmpl	$15360,%eax
	je	Lj583
	jmp	Lj584
Lj583:
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_REWRITE$file$LONGINT$stub
	jmp	Lj589
Lj584:
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj548(%esi),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movw	8(%ebp),%ax
	andw	$255,%ax
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj548(%esi),%edx
	movb	%al,(%edx)
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_RESET$file$LONGINT$stub
	movb	-13(%ebp),%dl
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj548(%esi),%eax
	movb	%dl,(%eax)
Lj589:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	288(%eax),%eax
	movl	%eax,20(%edx)
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj604
	jmp	Lj605
Lj604:
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_FILESIZE$file$$INT64$stub
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
Lj605:
	movzwl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj610
	jmp	Lj611
Lj610:
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-16(%ebp)
Lj611:
	movzwl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj614
	jmp	Lj615
Lj614:
	movw	-16(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-2,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
	jmp	Lj622
Lj615:
	movl	-12(%ebp),%eax
	movw	$0,4(%eax)
Lj622:
Lj547:
	movl	-12(%ebp),%eax
	movl	-280(%ebp),%ebx
	movl	-276(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__DONE
_OBJECTS_TDOSSTREAM_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj626
Lj626:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj626(%esi),%edx
	cmpl	(%edx),%eax
	jne	Lj627
	jmp	Lj628
Lj627:
	movl	-8(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	je	Lj633
	jmp	Lj634
Lj633:
	movl	-8(%ebp),%eax
	movw	$0,4(%eax)
	jmp	Lj637
Lj634:
	movw	-10(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj637:
Lj628:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%edx
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj626(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TOBJECT_$__DONE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__CLOSE
_OBJECTS_TDOSSTREAM_$__CLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj659
Lj659:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj659(%esi),%edx
	cmpl	(%edx),%eax
	jne	Lj660
	jmp	Lj661
Lj660:
	movl	-4(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_CLOSE$file$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	testl	%eax,%eax
	je	Lj666
	jmp	Lj667
Lj666:
	movl	-4(%ebp),%eax
	movw	$0,4(%eax)
	jmp	Lj670
Lj667:
	movw	-6(%ebp),%cx
	movl	-4(%ebp),%eax
	movw	$-1,%dx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj670:
Lj661:
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%edx
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj659(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,20(%edx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__TRUNCATE
_OBJECTS_TDOSSTREAM_$__TRUNCATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj683
	jmp	Lj684
Lj683:
	movl	-4(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_TRUNCATE$file$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	testl	%eax,%eax
	je	Lj689
	jmp	Lj690
Lj689:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj693
Lj690:
	movw	-6(%ebp),%cx
	movl	-4(%ebp),%eax
	movw	$-1,%dx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj693:
Lj684:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__SEEK$LONGINT
_OBJECTS_TDOSSTREAM_$__SEEK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj702
	jmp	Lj703
Lj702:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj704
	jmp	Lj705
Lj704:
	movl	$0,-4(%ebp)
Lj705:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_SEEK$file$INT64$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj714
	jmp	Lj715
Lj714:
	movw	-10(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$-7,%dx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
	jmp	Lj722
Lj715:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj722:
Lj703:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__OPEN$WORD
_OBJECTS_TDOSSTREAM_$__OPEN$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj726
Lj726:
	popl	%esi
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj727
	jmp	Lj728
Lj727:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj726(%esi),%eax
	cmpl	(%eax),%edx
	je	Lj729
	jmp	Lj730
Lj729:
	movl	-8(%ebp),%eax
	leal	24(%eax),%edx
	movl	-8(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_ASSIGN$file$PCHAR$stub
	movzwl	-4(%ebp),%eax
	cmpl	$15360,%eax
	je	Lj735
	jmp	Lj736
Lj735:
	movl	-8(%ebp),%eax
	leal	288(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_REWRITE$file$LONGINT$stub
	jmp	Lj741
Lj736:
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj726(%esi),%eax
	movb	(%eax),%al
	movb	%al,-9(%ebp)
	movw	-4(%ebp),%ax
	andw	$3,%ax
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj726(%esi),%edx
	movb	%al,(%edx)
	movl	-8(%ebp),%eax
	leal	288(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_RESET$file$LONGINT$stub
	movb	-9(%ebp),%dl
	movl	L_TC_SYSTEM_FILEMODE$non_lazy_ptr-Lj726(%esi),%eax
	movb	%dl,(%eax)
Lj741:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	288(%eax),%eax
	movl	%eax,20(%edx)
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-12(%ebp)
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj756
	jmp	Lj757
Lj756:
	movl	-8(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_FILESIZE$file$$INT64$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
Lj757:
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj762
	jmp	Lj763
Lj762:
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-12(%ebp)
Lj763:
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj766
	jmp	Lj767
Lj766:
	movw	-12(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$-8,%dx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
	jmp	Lj774
Lj767:
	movl	-8(%ebp),%eax
	movw	$0,4(%eax)
Lj774:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	jmp	Lj779
Lj730:
	movl	-8(%ebp),%eax
	movw	$104,%dx
	movw	$-8,%di
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ebx
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%ebx)
Lj779:
Lj728:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__READ$formal$LONGINT
_OBJECTS_TDOSSTREAM_$__READ$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj787
Lj787:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj788
	jmp	Lj789
Lj788:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	8(%eax),%edx
	jg	Lj790
	jmp	Lj791
Lj790:
	movl	-12(%ebp),%eax
	movw	$0,%dx
	movw	$-3,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
Lj791:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj787(%ebx),%edx
	cmpl	(%edx),%eax
	je	Lj798
	jmp	Lj799
Lj798:
	movl	-12(%ebp),%eax
	movw	$103,%cx
	movw	$-3,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
Lj799:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	jne	Lj816
	jmp	Lj818
Lj818:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj816
	jmp	Lj817
Lj816:
	movl	$0,-16(%ebp)
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	jne	Lj821
	jmp	Lj822
Lj821:
	movw	-18(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-3,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
	jmp	Lj829
Lj822:
	movl	-12(%ebp),%eax
	movw	$0,%dx
	movw	$-3,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
Lj829:
Lj817:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,12(%eax)
Lj789:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	jne	Lj836
	jmp	Lj837
Lj836:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj837:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TDOSSTREAM_$__WRITE$formal$LONGINT
_OBJECTS_TDOSSTREAM_$__WRITE$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj845
Lj845:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	jne	Lj846
	jmp	Lj847
Lj846:
	jmp	Lj844
Lj847:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj845(%ebx),%eax
	cmpl	(%eax),%edx
	je	Lj848
	jmp	Lj849
Lj848:
	movl	-12(%ebp),%eax
	movw	$103,%dx
	movw	$-4,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
Lj849:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	jne	Lj866
	jmp	Lj868
Lj868:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj866
	jmp	Lj867
Lj866:
	movl	$0,-16(%ebp)
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	jne	Lj871
	jmp	Lj872
Lj871:
	movw	-18(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-4,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
	jmp	Lj879
Lj872:
	movl	-12(%ebp),%eax
	movw	$0,%dx
	movw	$-4,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
Lj879:
Lj867:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,12(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	8(%edx),%eax
	jg	Lj886
	jmp	Lj887
Lj886:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
Lj887:
Lj844:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__INIT$SHORTSTRING$WORD$WORD$$LONGBOOL
_OBJECTS_TBUFSTREAM_$__INIT$SHORTSTRING$WORD$WORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj900
	jmp	Lj901
Lj900:
	jmp	Lj890
Lj901:
	movw	12(%ebp),%ax
	movw	%ax,(%esp)
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TDOSSTREAM_$__INIT$SHORTSTRING$WORD$$LONGBOOL$stub
	movl	-12(%ebp),%eax
	movzwl	8(%ebp),%edx
	movl	%edx,644(%eax)
	movzwl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj912
	jmp	Lj913
Lj912:
	movzwl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	656(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj913:
	movl	-12(%ebp),%eax
	movl	656(%eax),%eax
	testl	%eax,%eax
	je	Lj918
	jmp	Lj919
Lj918:
	movl	-12(%ebp),%eax
	movw	$0,%cx
	movw	$-2,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj919:
Lj890:
	movl	-12(%ebp),%eax
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__DONE
_OBJECTS_TBUFSTREAM_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*32(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TDOSSTREAM_$__DONE$stub
	movl	-8(%ebp),%eax
	movl	656(%eax),%eax
	testl	%eax,%eax
	jne	Lj934
	jmp	Lj935
Lj934:
	movl	-8(%ebp),%eax
	movl	644(%eax),%edx
	movl	-8(%ebp),%eax
	movl	656(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj935:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__CLOSE
_OBJECTS_TBUFSTREAM_$__CLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*32(%edx)
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TDOSSTREAM_$__CLOSE$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__FLUSH
_OBJECTS_TBUFSTREAM_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj953
Lj953:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	jne	Lj954
	jmp	Lj955
Lj954:
	jmp	Lj952
Lj955:
	movl	-4(%ebp),%eax
	movzbl	640(%eax),%eax
	cmpl	$2,%eax
	je	Lj958
	jmp	Lj957
Lj958:
	movl	-4(%ebp),%eax
	movl	648(%eax),%eax
	testl	%eax,%eax
	jne	Lj956
	jmp	Lj957
Lj956:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj953(%esi),%edx
	cmpl	(%edx),%eax
	je	Lj959
	jmp	Lj960
Lj959:
	movw	$103,-10(%ebp)
	jmp	Lj963
Lj960:
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	656(%eax),%edx
	movl	-4(%ebp),%eax
	movl	648(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-10(%ebp)
Lj963:
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj974
	jmp	Lj976
Lj976:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	648(%eax),%edx
	jne	Lj974
	jmp	Lj975
Lj974:
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	je	Lj977
	jmp	Lj978
Lj977:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movw	$-4,%dx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
	jmp	Lj985
Lj978:
	movw	-10(%ebp),%cx
	movl	-4(%ebp),%eax
	movw	$-1,%dx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj985:
Lj975:
Lj957:
	movl	-4(%ebp),%eax
	movl	$0,648(%eax)
	movl	-4(%ebp),%eax
	movl	$0,652(%eax)
Lj952:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__TRUNCATE
_OBJECTS_TBUFSTREAM_$__TRUNCATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*32(%edx)
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TDOSSTREAM_$__TRUNCATE$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__SEEK$LONGINT
_OBJECTS_TBUFSTREAM_$__SEEK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1004
	jmp	Lj1005
Lj1004:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1006
	jmp	Lj1007
Lj1006:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*32(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TDOSSTREAM_$__SEEK$LONGINT$stub
Lj1007:
Lj1005:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__OPEN$WORD
_OBJECTS_TBUFSTREAM_$__OPEN$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1016
	jmp	Lj1017
Lj1016:
	movl	-8(%ebp),%eax
	movl	$0,648(%eax)
	movl	-8(%ebp),%eax
	movl	$0,652(%eax)
	movw	-4(%ebp),%dx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TDOSSTREAM_$__OPEN$WORD$stub
Lj1017:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__READ$formal$LONGINT
_OBJECTS_TBUFSTREAM_$__READ$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj1027
Lj1027:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	jne	Lj1028
	jmp	Lj1029
Lj1028:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	jmp	Lj1026
Lj1029:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	8(%eax),%edx
	jg	Lj1036
	jmp	Lj1037
Lj1036:
	movl	-12(%ebp),%eax
	movw	$0,%cx
	movw	$-3,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
Lj1037:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj1027(%ebx),%edx
	cmpl	(%edx),%eax
	je	Lj1044
	jmp	Lj1045
Lj1044:
	movl	-12(%ebp),%eax
	movw	$103,%cx
	movw	$-3,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
Lj1045:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	640(%eax),%eax
	cmpl	$2,%eax
	je	Lj1054
	jmp	Lj1055
Lj1054:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*32(%edx)
Lj1055:
	movl	-12(%ebp),%eax
	movb	$1,640(%eax)
	jmp	Lj1061
	.align 2
Lj1060:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	648(%eax),%eax
	cmpl	652(%edx),%eax
	je	Lj1063
	jmp	Lj1064
Lj1063:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%ecx
	movl	644(%edx),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%eax
	cmpl	8(%eax),%ecx
	jg	Lj1065
	jmp	Lj1066
Lj1065:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%eax),%ecx
	movl	12(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	jmp	Lj1069
Lj1066:
	movl	-12(%ebp),%eax
	movl	644(%eax),%eax
	movl	%eax,-20(%ebp)
Lj1069:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	656(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-26(%ebp)
	movzwl	-26(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1082
	jmp	Lj1084
Lj1084:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj1082
	jmp	Lj1083
Lj1082:
	movzwl	-26(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1085
	jmp	Lj1086
Lj1085:
	movw	-26(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-3,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
	jmp	Lj1093
Lj1086:
	movl	-12(%ebp),%eax
	movw	$0,%dx
	movw	$-3,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
Lj1093:
	jmp	Lj1100
Lj1083:
	movl	-12(%ebp),%eax
	movl	$0,648(%eax)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,652(%edx)
Lj1100:
Lj1064:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1105
	jmp	Lj1106
Lj1105:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	652(%eax),%ecx
	movl	648(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj1109
	jmp	Lj1110
Lj1109:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1110:
	movl	-12(%ebp),%eax
	movl	656(%eax),%edx
	movl	-12(%ebp),%eax
	movl	648(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	subl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,648(%eax)
	movl	-16(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,12(%edx)
Lj1106:
Lj1061:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1119
	jmp	Lj1062
Lj1119:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1060
	jmp	Lj1062
Lj1062:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	jne	Lj1122
	jmp	Lj1121
Lj1122:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1120
	jmp	Lj1121
Lj1120:
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj1121:
Lj1026:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TBUFSTREAM_$__WRITE$formal$LONGINT
_OBJECTS_TBUFSTREAM_$__WRITE$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj1130
Lj1130:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	jne	Lj1131
	jmp	Lj1132
Lj1131:
	jmp	Lj1129
Lj1132:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj1130(%ebx),%edx
	cmpl	(%edx),%eax
	je	Lj1133
	jmp	Lj1134
Lj1133:
	movl	-12(%ebp),%eax
	movw	$103,%dx
	movw	$-4,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
Lj1134:
	movl	-12(%ebp),%eax
	movzbl	640(%eax),%eax
	cmpl	$1,%eax
	je	Lj1141
	jmp	Lj1142
Lj1141:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*32(%edx)
Lj1142:
	movl	-12(%ebp),%eax
	movb	$2,640(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1150
	.align 2
Lj1149:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	648(%eax),%eax
	cmpl	644(%edx),%eax
	je	Lj1152
	jmp	Lj1153
Lj1152:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	656(%eax),%edx
	movl	-12(%ebp),%eax
	movl	644(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	288(%eax),%eax
	call	L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movw	%ax,-22(%ebp)
	movzwl	-22(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1164
	jmp	Lj1166
Lj1166:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	cmpl	644(%edx),%eax
	jne	Lj1164
	jmp	Lj1165
Lj1164:
	movzwl	-22(%ebp),%eax
	testl	%eax,%eax
	je	Lj1167
	jmp	Lj1168
Lj1167:
	movl	-12(%ebp),%eax
	movw	$0,%dx
	movw	$-4,%di
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
	jmp	Lj1175
Lj1168:
	movw	-22(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-1,%dx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*44(%esi)
Lj1175:
Lj1165:
	movl	-12(%ebp),%eax
	movl	$0,648(%eax)
Lj1153:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1184
	jmp	Lj1185
Lj1184:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	644(%eax),%ecx
	movl	648(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj1188
	jmp	Lj1189
Lj1188:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1189:
	movl	-12(%ebp),%eax
	movl	656(%eax),%edx
	movl	-12(%ebp),%eax
	movl	648(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%eax
	subl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,648(%eax)
	movl	-16(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	8(%edx),%eax
	jg	Lj1198
	jmp	Lj1199
Lj1198:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
Lj1199:
Lj1185:
Lj1150:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1202
	jmp	Lj1151
Lj1202:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1149
	jmp	Lj1151
Lj1151:
Lj1129:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TMEMORYSTREAM_$__INIT$LONGINT$WORD$$LONGBOOL
_OBJECTS_TMEMORYSTREAM_$__INIT$LONGINT$WORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1213
	jmp	Lj1214
Lj1213:
	jmp	Lj1203
Lj1214:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TSTREAM_$__INIT$$LONGBOOL$stub
	movzwl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1219
	jmp	Lj1220
Lj1219:
	movl	-12(%ebp),%eax
	movw	$8192,24(%eax)
	jmp	Lj1223
Lj1220:
	movl	-12(%ebp),%eax
	movw	8(%ebp),%dx
	movw	%dx,24(%eax)
Lj1223:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1226
	jmp	Lj1227
Lj1226:
	movw	$1,-14(%ebp)
	jmp	Lj1230
Lj1227:
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%edx,%eax
	decl	%eax
	movl	-12(%ebp),%edx
	movzwl	24(%edx),%ecx
	cltd
	idivl	%ecx
	movw	%ax,-14(%ebp)
Lj1230:
	movzwl	-14(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1233
	jmp	Lj1234
Lj1233:
	movl	-12(%ebp),%eax
	movw	$0,%cx
	movw	$-2,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj1234:
Lj1203:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TMEMORYSTREAM_$__DONE
_OBJECTS_TMEMORYSTREAM_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TOBJECT_$__DONE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TMEMORYSTREAM_$__TRUNCATE
_OBJECTS_TMEMORYSTREAM_$__TRUNCATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1263
	jmp	Lj1264
Lj1263:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj1265
	jmp	Lj1266
Lj1265:
	movw	$1,-6(%ebp)
	jmp	Lj1269
Lj1266:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	24(%eax),%ecx
	movl	12(%edx),%eax
	addl	%ecx,%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movzwl	24(%edx),%ecx
	cltd
	idivl	%ecx
	movw	%ax,-6(%ebp)
Lj1269:
	movzwl	-6(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1272
	jmp	Lj1273
Lj1272:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj1280
Lj1273:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movw	$-1,%dx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj1280:
Lj1264:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TMEMORYSTREAM_$__READ$formal$LONGINT
_OBJECTS_TMEMORYSTREAM_$__READ$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	8(%eax),%edx
	jg	Lj1289
	jmp	Lj1290
Lj1289:
	movl	-12(%ebp),%eax
	movw	$0,%cx
	movw	$-3,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj1290:
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1300
	.align 2
Lj1299:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%ecx
	movl	12(%edx),%eax
	cltd
	idivl	%ecx
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%edx
	movl	-24(%ebp),%eax
	imull	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%eax
	movzwl	-18(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj1312
	jmp	Lj1313
Lj1312:
	movw	-8(%ebp),%ax
	movw	%ax,-14(%ebp)
Lj1313:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movzwl	-16(%ebp),%edx
	movzwl	-18(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	addl	%ecx,%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	movzwl	-14(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzwl	-14(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%eax,12(%edx)
	movzwl	-14(%ebp),%eax
	addl	%eax,-28(%ebp)
	movzwl	-14(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj1300:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1324
	jmp	Lj1301
Lj1324:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1299
	jmp	Lj1301
Lj1301:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1325
	jmp	Lj1326
Lj1325:
	movl	-28(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj1326:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TMEMORYSTREAM_$__WRITE$formal$LONGINT
_OBJECTS_TMEMORYSTREAM_$__WRITE$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	28(%eax),%edx
	jg	Lj1335
	jmp	Lj1336
Lj1335:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	testl	%eax,%eax
	je	Lj1337
	jmp	Lj1338
Lj1337:
	movw	$1,-14(%ebp)
	jmp	Lj1341
Lj1338:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%edx
	movzwl	24(%edx),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-12(%ebp),%edx
	movzwl	24(%edx),%ecx
	cltd
	idivl	%ecx
	movw	%ax,-14(%ebp)
Lj1341:
	movzwl	-14(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1344
	jmp	Lj1345
Lj1344:
	movl	-12(%ebp),%eax
	movw	$0,%cx
	movw	$-4,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*44(%ebx)
Lj1345:
Lj1336:
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1359
	.align 2
Lj1358:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%ecx
	movl	12(%edx),%eax
	cltd
	idivl	%ecx
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%edx
	movl	-24(%ebp),%eax
	imull	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-18(%ebp)
	movl	-12(%ebp),%eax
	movzwl	24(%eax),%eax
	movzwl	-18(%ebp),%edx
	subl	%edx,%eax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj1371
	jmp	Lj1372
Lj1371:
	movw	-8(%ebp),%ax
	movw	%ax,-14(%ebp)
Lj1372:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movzwl	-16(%ebp),%edx
	movzwl	-18(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	addl	%ecx,%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	movzwl	-14(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzwl	-14(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%eax,12(%edx)
	movzwl	-14(%ebp),%eax
	addl	%eax,-28(%ebp)
	movzwl	-14(%ebp),%eax
	subl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	8(%edx),%eax
	jg	Lj1383
	jmp	Lj1384
Lj1383:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
Lj1384:
Lj1359:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1387
	jmp	Lj1360
Lj1387:
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	testw	%ax,%ax
	je	Lj1358
	jmp	Lj1360
Lj1360:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN
_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	20(%eax),%edx
	jne	Lj1390
	jmp	Lj1391
Lj1390:
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$4194304,%eax
	jg	Lj1394
	jmp	Lj1395
Lj1394:
	jmp	Lj1388
Lj1395:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1396
	jmp	Lj1397
Lj1396:
	movl	-4(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	leal	-24(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj1412
	jmp	Lj1411
Lj1412:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1410
	jmp	Lj1411
Lj1410:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj1413
	jmp	Lj1414
Lj1413:
	movl	-8(%ebp),%eax
	movl	20(%eax),%ecx
	shll	$2,%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj1421
Lj1414:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1421:
Lj1411:
	jmp	Lj1428
Lj1397:
	movl	$0,-24(%ebp)
Lj1428:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	cmpl	20(%edx),%eax
	jl	Lj1431
	jmp	Lj1432
Lj1431:
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj1434
	incl	-16(%ebp)
	.align 2
Lj1435:
	decl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-8(%ebp),%edx
	movzwl	24(%edx),%edx
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	cmpl	-16(%ebp),%ebx
	jl	Lj1435
Lj1434:
Lj1432:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1442
	jmp	Lj1441
Lj1442:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	20(%eax),%edx
	jg	Lj1440
	jmp	Lj1441
Lj1440:
	movl	-4(%ebp),%ebx
	decl	%ebx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1444
	decl	-16(%ebp)
	.align 2
Lj1445:
	incl	-16(%ebp)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	-8(%ebp),%edx
	movzwl	24(%edx),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj1445
Lj1444:
Lj1441:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj1452
	jmp	Lj1451
Lj1452:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1450
	jmp	Lj1451
Lj1450:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj1451:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	24(%eax),%eax
	movl	28(%edx),%edx
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,28(%eax)
Lj1391:
	movb	$1,-9(%ebp)
Lj1388:
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL
_OBJECTS_TCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1477
	jmp	Lj1478
Lj1477:
	jmp	Lj1467
Lj1478:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TOBJECT_$__INIT$$LONGBOOL$stub
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*32(%ecx)
Lj1467:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
_OBJECTS_TCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1499
	jmp	Lj1500
Lj1499:
	jmp	Lj1489
Lj1500:
	movl	-4(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj1501
	jmp	Lj1502
Lj1501:
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	leal	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%eax
	leal	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	jmp	Lj1527
Lj1502:
	movl	-12(%ebp),%eax
	leal	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-12(%ebp),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-12(%ebp),%eax
	leal	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
Lj1527:
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*32(%ecx)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1563
	decl	-20(%ebp)
	.align 2
Lj1564:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*20(%ecx)
	movl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATPUT$LONGINT$POINTER$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj1564
Lj1563:
Lj1489:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__DONE
_OBJECTS_TCOLLECTION_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__FREEALL$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*32(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER
_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1591
	jmp	Lj1593
Lj1593:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	8(%eax),%edx
	jge	Lj1591
	jmp	Lj1592
Lj1591:
	movw	-4(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*36(%ebx)
	movl	$0,-12(%ebp)
	jmp	Lj1602
Lj1592:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
Lj1602:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__INDEXOF$POINTER$$LONGINT
_OBJECTS_TCOLLECTION_$__INDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1607
	jmp	Lj1608
Lj1607:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1610
	decl	-16(%ebp)
	.align 2
Lj1611:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	cmpl	-4(%ebp),%edx
	je	Lj1612
	jmp	Lj1613
Lj1612:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj1605
Lj1613:
	cmpl	-16(%ebp),%eax
	jg	Lj1611
Lj1610:
Lj1608:
	movl	$-1,-12(%ebp)
Lj1605:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__GETITEM$TSTREAM$$POINTER
_OBJECTS_TCOLLECTION_$__GETITEM$TSTREAM$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TSTREAM_$__GET$$POBJECT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__LASTTHAT$POINTER$$POINTER
_OBJECTS_TCOLLECTION_$__LASTTHAT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-16(%ebp)
	jl	Lj1627
	incl	-16(%ebp)
	.align 2
Lj1628:
	decl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,%eax
	call	L_SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	testb	%al,%al
	jne	Lj1629
	jmp	Lj1630
Lj1629:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1624
Lj1630:
	cmpl	$1,-16(%ebp)
	jg	Lj1628
Lj1627:
	movl	$0,-12(%ebp)
Lj1624:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__FIRSTTHAT$POINTER$$POINTER
_OBJECTS_TCOLLECTION_$__FIRSTTHAT$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1652
	decl	-16(%ebp)
	.align 2
Lj1653:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	%ebp,%eax
	call	L_SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	testb	%al,%al
	jne	Lj1654
	jmp	Lj1655
Lj1654:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1649
Lj1655:
	cmpl	-16(%ebp),%ebx
	jg	Lj1653
Lj1652:
	movl	$0,-12(%ebp)
Lj1649:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__PACK
_OBJECTS_TCOLLECTION_$__PACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj1681
	.align 2
Lj1680:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj1683
	jmp	Lj1684
Lj1683:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj1685
	jmp	Lj1686
Lj1685:
	movl	-4(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%ebx,%ecx,4)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	$0,(%eax,%edx,4)
Lj1686:
	incl	-8(%ebp)
Lj1684:
	incl	-12(%ebp)
Lj1681:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj1691
	jmp	Lj1682
Lj1691:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	12(%eax),%edx
	jl	Lj1680
	jmp	Lj1682
Lj1682:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj1692
	jmp	Lj1693
Lj1692:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
Lj1693:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__FREEALL
_OBJECTS_TCOLLECTION_$__FREEALL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj1699
	incl	-8(%ebp)
	.align 2
Lj1700:
	decl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*28(%ecx)
	cmpl	$0,-8(%ebp)
	jg	Lj1700
Lj1699:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__DELETEALL
_OBJECTS_TCOLLECTION_$__DELETEALL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__FREE$POINTER
_OBJECTS_TCOLLECTION_$__FREE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__DELETE$POINTER$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*28(%ecx)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__INSERT$POINTER
_OBJECTS_TCOLLECTION_$__INSERT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__DELETE$POINTER
_OBJECTS_TCOLLECTION_$__DELETE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*16(%ecx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATDELETE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__ATFREE$LONGINT
_OBJECTS_TCOLLECTION_$__ATFREE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATDELETE$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*28(%ecx)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__FREEITEM$POINTER
_OBJECTS_TCOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1763
	jmp	Lj1764
Lj1763:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*12(%ecx)
Lj1764:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__ATDELETE$LONGINT
_OBJECTS_TCOLLECTION_$__ATDELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1773
	jmp	Lj1772
Lj1773:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj1771
	jmp	Lj1772
Lj1771:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj1774
	jmp	Lj1775
Lj1774:
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
Lj1775:
	jmp	Lj1782
Lj1772:
	movw	-4(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*36(%ebx)
Lj1782:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__FOREACH$POINTER
_OBJECTS_TCOLLECTION_$__FOREACH$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1792
	decl	-12(%ebp)
	.align 2
Lj1793:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	%ebp,%eax
	call	L_SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%ecx
	call	*%ecx
	cmpl	-12(%ebp),%ebx
	jg	Lj1793
Lj1792:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	cmpl	8(%edx),%eax
	jl	Lj1808
	jmp	Lj1809
Lj1808:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-4(%ebp)
Lj1809:
	movl	-4(%ebp),%eax
	cmpl	$4194304,%eax
	jg	Lj1812
	jmp	Lj1813
Lj1812:
	movl	$4194304,-4(%ebp)
Lj1813:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	12(%eax),%edx
	jne	Lj1816
	jmp	Lj1817
Lj1816:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1818
	jmp	Lj1819
Lj1818:
	movl	$0,-12(%ebp)
	jmp	Lj1822
Lj1819:
	movl	-4(%ebp),%edx
	shll	$2,%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1827
	jmp	Lj1828
Lj1827:
	movl	-4(%ebp),%edx
	shll	$2,%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj1828:
Lj1822:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1835
	jmp	Lj1837
Lj1837:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1835
	jmp	Lj1836
Lj1835:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1840
	jmp	Lj1839
Lj1840:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1838
	jmp	Lj1839
Lj1838:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	shll	$2,%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1839:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1849
	jmp	Lj1848
Lj1849:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1847
	jmp	Lj1848
Lj1847:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj1848:
Lj1836:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
Lj1817:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movswl	-4(%ebp),%eax
	movl	$212,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	call	L_SYSTEM_RUNERROR$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__ATPUT$LONGINT$POINTER
_OBJECTS_TCOLLECTION_$__ATPUT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1866
	jmp	Lj1865
Lj1866:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	cmpl	8(%edx),%eax
	jl	Lj1864
	jmp	Lj1865
Lj1864:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	jmp	Lj1869
Lj1865:
	movw	-4(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-1,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*36(%ebx)
Lj1869:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER
_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1880
	jmp	Lj1879
Lj1880:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	8(%eax),%edx
	jle	Lj1878
	jmp	Lj1879
Lj1878:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj1881
	jmp	Lj1882
Lj1881:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	12(%eax),%edx
	movl	16(%ecx),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*32(%ecx)
Lj1882:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	8(%edx),%eax
	jg	Lj1887
	jmp	Lj1888
Lj1887:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj1889
	jmp	Lj1890
Lj1889:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jg	Lj1892
	incl	-16(%ebp)
	.align 2
Lj1893:
	decl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-16(%ebp),%eax
	incl	%eax
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	-16(%ebp),%esi
	movl	(%ecx,%esi,4),%ecx
	movl	%ecx,(%ebx,%eax,4)
	cmpl	-16(%ebp),%edx
	jl	Lj1893
Lj1892:
Lj1890:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-12(%ebp),%eax
	incl	8(%eax)
	jmp	Lj1898
Lj1888:
	movw	-4(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-2,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*36(%ebx)
Lj1898:
	jmp	Lj1905
Lj1879:
	movw	-4(%ebp),%cx
	movl	-12(%ebp),%eax
	movw	$-1,%dx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*36(%ebx)
Lj1905:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__STORE$TSTREAM
_OBJECTS_TCOLLECTION_$__STORE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj1913
Lj1913:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	Lj1916
	jmp	Lj1917
Lj1916:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$16380,%eax
	jg	Lj1918
	jmp	Lj1919
Lj1918:
	movl	-4(%ebp),%eax
	movw	$0,%dx
	movw	$-4,%di
	movl	-4(%ebp),%ecx
	movl	(%ecx),%esi
	movw	%dx,%cx
	movw	%di,%dx
	call	*44(%esi)
	jmp	Lj1926
Lj1919:
	movl	-8(%ebp),%eax
	leal	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$16380,%eax
	jg	Lj1933
	jmp	Lj1934
Lj1933:
	movw	$16380,-10(%ebp)
	jmp	Lj1937
Lj1934:
	movl	-8(%ebp),%eax
	movw	12(%eax),%ax
	movw	%ax,-10(%ebp)
Lj1937:
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$16380,%eax
	jg	Lj1946
	jmp	Lj1947
Lj1946:
	movw	$16380,-12(%ebp)
	jmp	Lj1950
Lj1947:
	movl	-8(%ebp),%eax
	movw	16(%eax),%ax
	movw	%ax,-12(%ebp)
Lj1950:
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
Lj1926:
	jmp	Lj1959
Lj1917:
	movl	-8(%ebp),%eax
	leal	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
	movl	-8(%ebp),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
	movl	-8(%ebp),%eax
	leal	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*52(%esi)
Lj1959:
	movl	L_OBJECTS_TCOLLECTION_$_STORE$TSTREAM_DOPUTITEM$POINTER$non_lazy_ptr-Lj1913(%ebx),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__FOREACH$POINTER$stub
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$_STORE$TSTREAM_DOPUTITEM$POINTER
_OBJECTS_TCOLLECTION_$_STORE$TSTREAM_DOPUTITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*40(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TCOLLECTION_$__PUTITEM$TSTREAM$POINTER
_OBJECTS_TCOLLECTION_$__PUTITEM$TSTREAM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TSTREAM_$__PUT$POBJECT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL
_OBJECTS_TSORTEDCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2004
	jmp	Lj2005
Lj2004:
	jmp	Lj1994
Lj2005:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL$stub
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
Lj1994:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
_OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2026
	jmp	Lj2027
Lj2026:
	jmp	Lj2016
Lj2027:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL$stub
	movl	-12(%ebp),%eax
	leal	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
Lj2016:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
_OBJECTS_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$-1,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*44(%ecx)
	movl	%eax,%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	testb	%al,%al
	jne	Lj2048
	jmp	Lj2049
Lj2048:
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj2060
	jmp	Lj2061
Lj2060:
	jmp	Lj2063
	.align 2
Lj2062:
	incl	-16(%ebp)
Lj2063:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj2065
	jmp	Lj2064
Lj2065:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2062
	jmp	Lj2064
Lj2064:
Lj2061:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	8(%eax),%edx
	jl	Lj2066
	jmp	Lj2067
Lj2066:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj2067:
Lj2049:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
_OBJECTS_TSORTEDCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	call	L_OBJECTS_ABSTRACT$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj2086
	jmp	Lj2087
Lj2086:
	jmp	Lj2076
Lj2087:
	jmp	Lj2089
	.align 2
Lj2088:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*44(%ecx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%esi
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	*48(%esi)
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2105
	jmp	Lj2106
Lj2105:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2109
Lj2106:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj2112
	jmp	Lj2113
Lj2112:
	movb	$1,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	20(%eax),%al
	testb	%al,%al
	je	Lj2116
	jmp	Lj2117
Lj2116:
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj2117:
Lj2113:
Lj2109:
Lj2089:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2088
	jmp	Lj2090
Lj2090:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
Lj2076:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__INSERT$POINTER
_OBJECTS_TSORTEDCOLLECTION_$__INSERT$POINTER:
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
	call	*44(%ecx)
	movl	%eax,%edx
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	testb	%al,%al
	je	Lj2124
	jmp	Lj2126
Lj2126:
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj2124
	jmp	Lj2125
Lj2124:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER$stub
Lj2125:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM
_OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__STORE$TSTREAM$stub
	movl	-8(%ebp),%eax
	leal	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGCOLLECTION_$__GETITEM$TSTREAM$$POINTER
_OBJECTS_TSTRINGCOLLECTION_$__GETITEM$TSTREAM$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TSTREAM_$__READSTR$$PSHORTSTRING$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
_OBJECTS_TSTRINGCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jb	Lj2167
	jmp	Lj2168
Lj2167:
	movl	-28(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2171
Lj2168:
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
Lj2171:
	movl	$1,-20(%ebp)
	jmp	Lj2177
	.align 2
Lj2176:
	incl	-20(%ebp)
Lj2177:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj2179
	jmp	Lj2178
Lj2179:
	movl	-28(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	movzbl	-20(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	je	Lj2176
	jmp	Lj2178
Lj2178:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	je	Lj2180
	jmp	Lj2181
Lj2180:
	movl	-28(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	movzbl	-20(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	jb	Lj2182
	jmp	Lj2183
Lj2182:
	movl	$-1,-16(%ebp)
	jmp	Lj2186
Lj2183:
	movl	-28(%ebp),%edx
	movzbl	-20(%ebp),%eax
	movl	-32(%ebp),%ecx
	movzbl	-20(%ebp),%ebx
	movb	(%edx,%eax,1),%al
	cmpb	(%ecx,%ebx,1),%al
	ja	Lj2187
	jmp	Lj2188
Lj2187:
	movl	$1,-16(%ebp)
	jmp	Lj2191
Lj2188:
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	ja	Lj2192
	jmp	Lj2193
Lj2192:
	movl	$1,-16(%ebp)
	jmp	Lj2196
Lj2193:
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jb	Lj2197
	jmp	Lj2198
Lj2197:
	movl	$-1,-16(%ebp)
	jmp	Lj2201
Lj2198:
	movl	$0,-16(%ebp)
Lj2201:
Lj2196:
Lj2191:
Lj2186:
	jmp	Lj2204
Lj2181:
	movl	-28(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	movzbl	-20(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	jb	Lj2205
	jmp	Lj2206
Lj2205:
	movl	$-1,-16(%ebp)
	jmp	Lj2209
Lj2206:
	movl	$1,-16(%ebp)
Lj2209:
Lj2204:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGCOLLECTION_$__FREEITEM$POINTER
_OBJECTS_TSTRINGCOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_OBJECTS_DISPOSESTR$PSHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGCOLLECTION_$__PUTITEM$TSTREAM$POINTER
_OBJECTS_TSTRINGCOLLECTION_$__PUTITEM$TSTREAM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TSTREAM_$__WRITESTR$PSHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
_OBJECTS_TSTRCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-20(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2230
	jmp	Lj2231
Lj2230:
	jmp	Lj2233
	.align 2
Lj2232:
	incl	-20(%ebp)
Lj2233:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	testl	%eax,%eax
	jne	Lj2232
	jmp	Lj2234
Lj2234:
Lj2231:
	movl	$0,-24(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2237
	jmp	Lj2238
Lj2237:
	jmp	Lj2240
	.align 2
Lj2239:
	incl	-24(%ebp)
Lj2240:
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	testl	%eax,%eax
	jne	Lj2239
	jmp	Lj2241
Lj2241:
Lj2238:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj2242
	jmp	Lj2243
Lj2242:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj2243:
	movl	$0,-20(%ebp)
	jmp	Lj2249
	.align 2
Lj2248:
	incl	-20(%ebp)
Lj2249:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj2251
	jmp	Lj2250
Lj2251:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	je	Lj2248
	jmp	Lj2250
Lj2250:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	(%edx,%eax,1),%al
	cmpb	(%ecx,%ebx,1),%al
	je	Lj2252
	jmp	Lj2253
Lj2252:
	movl	$0,-16(%ebp)
	jmp	Lj2256
Lj2253:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	jb	Lj2257
	jmp	Lj2258
Lj2257:
	movl	$-1,-16(%ebp)
	jmp	Lj2261
Lj2258:
	movl	$1,-16(%ebp)
Lj2261:
Lj2256:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRCOLLECTION_$__GETITEM$TSTREAM$$POINTER
_OBJECTS_TSTRCOLLECTION_$__GETITEM$TSTREAM$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TSTREAM_$__STRREAD$$PCHAR$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRCOLLECTION_$__FREEITEM$POINTER
_OBJECTS_TSTRCOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2272
	jmp	Lj2273
Lj2272:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj2279
	.align 2
Lj2278:
	incl	-12(%ebp)
Lj2279:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	testl	%eax,%eax
	jne	Lj2278
	jmp	Lj2280
Lj2280:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj2273:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRCOLLECTION_$__PUTITEM$TSTREAM$POINTER
_OBJECTS_TSTRCOLLECTION_$__PUTITEM$TSTREAM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_OBJECTS_TSTREAM_$__STRWRITE$PCHAR$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TUNSORTEDSTRCOLLECTION_$__INSERT$POINTER
_OBJECTS_TUNSORTEDSTRCOLLECTION_$__INSERT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCECOLLECTION_$__KEYOF$POINTER$$POINTER
_OBJECTS_TRESOURCECOLLECTION_$__KEYOF$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCECOLLECTION_$__GETITEM$TSTREAM$$POINTER
_OBJECTS_TRESOURCECOLLECTION_$__GETITEM$TSTREAM$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-288(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	leal	-13(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movzbl	-13(%ebp),%edx
	addl	$9,%edx
	leal	-284(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-284(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2327
	jmp	Lj2328
Lj2327:
	movl	-284(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-284(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-284(%ebp),%eax
	movb	-13(%ebp),%dl
	movb	%dl,8(%eax)
	movl	-284(%ebp),%eax
	leal	9(%eax),%edx
	movzbl	-13(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
Lj2328:
	movl	-284(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-288(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCECOLLECTION_$__FREEITEM$POINTER
_OBJECTS_TRESOURCECOLLECTION_$__FREEITEM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2345
	jmp	Lj2346
Lj2345:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%edx
	addl	$8,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj2346:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCECOLLECTION_$__PUTITEM$TSTREAM$POINTER
_OBJECTS_TRESOURCECOLLECTION_$__PUTITEM$TSTREAM$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2353
	jmp	Lj2354
Lj2353:
	movl	-8(%ebp),%eax
	movzbl	8(%eax),%ecx
	addl	$8,%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	(%edx),%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*52(%esi)
Lj2354:
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__INIT$PSTREAM$$LONGBOOL
_OBJECTS_TRESOURCEFILE_$__INIT$PSTREAM$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj2362
Lj2362:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2371
	jmp	Lj2372
Lj2371:
	jmp	Lj2361
Lj2372:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TOBJECT_$__INIT$$LONGBOOL$stub
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2379
	jmp	Lj2380
Lj2379:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
	.align 2
Lj2387:
	movb	$1,-14(%ebp)
	movl	-12(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*20(%edx)
	subl	$8,%eax
	cmpl	12(%esi),%eax
	jge	Lj2392
	jmp	Lj2393
Lj2392:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	-24(%ebp),%edx
	movl	$8,%ecx
	movl	-12(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*48(%esi)
	movw	-24(%ebp),%ax
	cmpw	$16966,%ax
	jb	Lj2407
	subw	$16966,%ax
	je	Lj2409
	subw	$6151,%ax
	je	Lj2408
	jmp	Lj2407
Lj2408:
	movzwl	-22(%ebp),%eax
	negl	%eax
	andl	$511,%eax
	movzwl	-20(%ebp),%edx
	shll	$9,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-12(%ebp),%edx
	addl	%eax,12(%edx)
	movb	$0,-14(%ebp)
	jmp	Lj2406
Lj2409:
	movzwl	-22(%ebp),%eax
	cmpl	$21072,%eax
	je	Lj2412
	jmp	Lj2413
Lj2412:
	movb	$1,-13(%ebp)
	jmp	Lj2416
Lj2413:
	movl	-20(%ebp),%eax
	addl	$8,%eax
	movl	-12(%ebp),%edx
	addl	%eax,12(%edx)
	movb	$0,-14(%ebp)
Lj2416:
	jmp	Lj2406
Lj2407:
Lj2406:
Lj2393:
	cmpb	$0,-14(%ebp)
	jne	Lj2389
	jmp	Lj2387
Lj2389:
Lj2380:
	cmpb	$0,-13(%ebp)
	jne	Lj2419
	jmp	Lj2420
Lj2419:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	addl	$8,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	leal	16(%edx),%edx
	movl	$4,%ecx
	movl	-12(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*48(%esi)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	12(%eax),%edx
	movl	16(%ecx),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_OBJECTS_TRESOURCECOLLECTION$non_lazy_ptr-Lj2362(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL$stub
	jmp	Lj2441
Lj2420:
	movl	-12(%ebp),%eax
	movl	$12,16(%eax)
	movl	$8,(%esp)
	movl	L_VMT_OBJECTS_TRESOURCECOLLECTION$non_lazy_ptr-Lj2362(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	movl	$0,%ecx
	call	L_OBJECTS_TSORTEDCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL$stub
Lj2441:
Lj2361:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__DONE
_OBJECTS_TRESOURCEFILE_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TRESOURCEFILE_$__FLUSH$stub
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	leal	20(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*12(%ecx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj2460
	jmp	Lj2461
Lj2460:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*12(%ecx)
Lj2461:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__COUNT$$LONGINT
_OBJECTS_TRESOURCEFILE_$__COUNT$$LONGINT:
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
.globl	_OBJECTS_TRESOURCEFILE_$__KEYAT$LONGINT$$SHORTSTRING
_OBJECTS_TRESOURCEFILE_$__KEYAT$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub
	leal	8(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__GET$SHORTSTRING$$POBJECT
_OBJECTS_TRESOURCEFILE_$__GET$SHORTSTRING$$POBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-272(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj2490
	jmp	Lj2492
Lj2492:
	leal	-272(%ebp),%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	-8(%ebp),%ebx
	leal	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	testb	%al,%al
	je	Lj2490
	jmp	Lj2491
Lj2490:
	movl	$0,-12(%ebp)
	jmp	Lj2501
Lj2491:
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub
	movl	12(%ebx),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_OBJECTS_TSTREAM_$__GET$$POBJECT$stub
	movl	%eax,-12(%ebp)
Lj2501:
	movl	-12(%ebp),%eax
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM
_OBJECTS_TRESOURCEFILE_$__SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2515
Lj2515:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2522
	jmp	Lj2521
Lj2522:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj2520
	jmp	Lj2521
Lj2520:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	%eax,-20(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj2527
	jmp	Lj2528
Lj2527:
	movl	-20(%ebp),%edx
	addl	$12,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	L_OBJECTS_TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_DOCOPYRESOURCE$PRESOURCEITEM$non_lazy_ptr-Lj2515(%ebx),%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__FOREACH$POINTER$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
	jmp	Lj2541
Lj2528:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	16(%ecx),%ecx
	call	L_OBJECTS_TSTREAM_$__COPYFROM$TSTREAM$LONGINT$stub
Lj2541:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movb	$1,8(%eax)
Lj2521:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_DOCOPYRESOURCE$PRESOURCEITEM
_OBJECTS_TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_DOCOPYRESOURCE$PRESOURCEITEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%edx
	movl	(%ecx),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ecx),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%edx),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	-8(%ebp),%edx
	movl	-20(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	L_OBJECTS_TSTREAM_$__COPYFROM$TSTREAM$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__FLUSH
_OBJECTS_TRESOURCEFILE_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2573
Lj2573:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj2576
	jmp	Lj2575
Lj2576:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj2574
	jmp	Lj2575
Lj2574:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%edx
	movl	16(%ecx),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	subl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	addl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_TC_OBJECTS_RSTREAMBACKLINK$non_lazy_ptr-Lj2573(%esi),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-12(%ebp),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%edx),%edx
	movl	-4(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	L_TC_OBJECTS_RSTREAMMAGIC$non_lazy_ptr-Lj2573(%esi),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-8(%ebp),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	leal	16(%edx),%edx
	movl	$4,%ecx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*32(%edx)
Lj2575:
	movl	-4(%ebp),%eax
	movb	$0,8(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__DELETE$SHORTSTRING
_OBJECTS_TRESOURCEFILE_$__DELETE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	leal	-268(%ebp),%edx
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	-8(%ebp),%ebx
	leal	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	testb	%al,%al
	jne	Lj2631
	jmp	Lj2632
Lj2631:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__FREE$POINTER$stub
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
Lj2632:
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TRESOURCEFILE_$__PUT$POBJECT$SHORTSTRING
_OBJECTS_TRESOURCEFILE_$__PUT$POBJECT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-536(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-532(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj2651
	jmp	Lj2652
Lj2651:
	jmp	Lj2649
Lj2652:
	leal	-532(%ebp),%edx
	leal	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	movl	-12(%ebp),%ebx
	leal	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	testb	%al,%al
	jne	Lj2653
	jmp	Lj2654
Lj2653:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub
	movl	%eax,-276(%ebp)
	jmp	Lj2667
Lj2654:
	movzbl	-532(%ebp),%edx
	addl	$9,%edx
	leal	-276(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-276(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2672
	jmp	Lj2673
Lj2672:
	movl	-276(%ebp),%eax
	leal	8(%eax),%eax
	leal	-532(%ebp),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-276(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	call	L_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER$stub
Lj2673:
Lj2667:
	movl	-276(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2686
	jmp	Lj2687
Lj2686:
	movl	-276(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	12(%eax),%edx
	movl	16(%ecx),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_OBJECTS_TSTREAM_$__PUT$POBJECT$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	subl	%edx,%eax
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-276(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%eax),%edx
	movl	16(%ecx),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-276(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movb	$1,8(%eax)
Lj2687:
Lj2649:
	movl	-536(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGLIST_$__LOAD$TSTREAM$$LONGBOOL
_OBJECTS_TSTRINGLIST_$__LOAD$TSTREAM$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2716
	jmp	Lj2717
Lj2716:
	jmp	Lj2706
Lj2717:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	leal	-14(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*16(%edx)
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movzwl	-14(%ebp),%ecx
	movl	8(%eax),%edx
	addl	%ecx,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	movl	-12(%ebp),%eax
	leal	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	16(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	12(%eax),%ecx
	shll	$3,%ecx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%edx
	movl	(%edx),%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*48(%esi)
Lj2706:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGLIST_$__DONE
_OBJECTS_TSTRINGLIST_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGLIST_$__GET$LONGWORD$$SHORTSTRING
_OBJECTS_TSTRINGLIST_$__GET$LONGWORD$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-270(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2766
	jmp	Lj2767
Lj2766:
	movw	$0,-14(%ebp)
	jmp	Lj2771
	.align 2
Lj2770:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movzwl	-14(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	$0,%ecx
	subl	%eax,%ebx
	sbbl	%edx,%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movzwl	-14(%ebp),%eax
	movzwl	4(%edx,%eax,8),%eax
	movl	$0,%edx
	cmpl	%edx,%ecx
	jl	Lj2773
	jg	Lj2774
	cmpl	%eax,%ebx
	jb	Lj2773
	jmp	Lj2774
Lj2773:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movzwl	-14(%ebp),%edx
	movl	(%eax,%edx,8),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movzwl	-14(%ebp),%eax
	movzwl	6(%edx,%eax,8),%ecx
	leal	-270(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TSTRINGLIST_$__READSTR$SHORTSTRING$LONGINT$LONGINT$stub
Lj2774:
	incw	-14(%ebp)
Lj2771:
	movzwl	-14(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	12(%edx),%eax
	jl	Lj2783
	jmp	Lj2772
Lj2783:
	movzbl	-270(%ebp),%eax
	testl	%eax,%eax
	je	Lj2770
	jmp	Lj2772
Lj2772:
Lj2767:
	leal	-270(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRINGLIST_$__READSTR$SHORTSTRING$LONGINT$LONGINT
_OBJECTS_TSTRINGLIST_$__READSTR$SHORTSTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*40(%ecx)
	incl	8(%ebp)
	.align 2
Lj2796:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$1,%ecx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%ecx
	movl	-4(%ebp),%edx
	leal	1(%edx),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*48(%ebx)
	decl	8(%ebp)
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2798
	jmp	Lj2796
Lj2798:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRLISTMAKER_$__INIT$LONGWORD$LONGWORD$$LONGBOOL
_OBJECTS_TSTRLISTMAKER_$__INIT$LONGWORD$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_constructor$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2821
	jmp	Lj2822
Lj2821:
	jmp	Lj2811
Lj2822:
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_OBJECTS_TOBJECT_$__INIT$$LONGBOOL$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	8(%ebp),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	24(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj2811:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRLISTMAKER_$__DONE
_OBJECTS_TSTRLISTMAKER_$__DONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	Lfpc_help_destructor$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRLISTMAKER_$__PUT$LONGWORD$SHORTSTRING
_OBJECTS_TSTRLISTMAKER_$__PUT$LONGWORD$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	-12(%ebp),%eax
	movzwl	32(%eax),%eax
	cmpl	$16,%eax
	je	Lj2857
	jmp	Lj2859
Lj2859:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	32(%eax),%ecx
	movl	28(%edx),%eax
	addl	%ecx,%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2857
	jmp	Lj2858
Lj2857:
	movl	-12(%ebp),%eax
	call	L_OBJECTS_TSTRLISTMAKER_$__CLOSECURRENT$stub
Lj2858:
	movl	-12(%ebp),%eax
	movzwl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj2862
	jmp	Lj2863
Lj2862:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,34(%edx)
Lj2863:
	movl	-12(%ebp),%eax
	incw	32(%eax)
	movzbl	-268(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,1),%edx
	leal	-268(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzbl	-268(%ebp),%eax
	incl	%eax
	movl	-12(%ebp),%edx
	addl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRLISTMAKER_$__STORE$TSTREAM
_OBJECTS_TSTRLISTMAKER_$__STORE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_OBJECTS_TSTRLISTMAKER_$__CLOSECURRENT$stub
	movl	-8(%ebp),%eax
	leal	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-8(%ebp),%eax
	leal	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	shll	$3,%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*52(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_TSTRLISTMAKER_$__CLOSECURRENT
_OBJECTS_TSTRLISTMAKER_$__CLOSECURRENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj2904
	jmp	Lj2905
Lj2904:
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	28(%edx),%eax
	movl	%eax,(%ebx,%ecx,8)
	movl	32(%edx),%eax
	movl	%eax,4(%ebx,%ecx,8)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	movw	$0,32(%eax)
Lj2905:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_NEWSTR$SHORTSTRING$$PSHORTSTRING
_OBJECTS_NEWSTR$SHORTSTRING$$PSHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2912
	jmp	Lj2913
Lj2912:
	movl	$0,-12(%ebp)
	jmp	Lj2916
Lj2913:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	incl	%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2921
	jmp	Lj2922
Lj2921:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
Lj2922:
Lj2916:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_DISPOSESTR$PSHORTSTRING
_OBJECTS_DISPOSESTR$PSHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2933
	jmp	Lj2934
Lj2933:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj2934:
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_SETSTR$PSHORTSTRING$SHORTSTRING
_OBJECTS_SETSTR$PSHORTSTRING$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj2941
	jmp	Lj2942
Lj2941:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj2942:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_ABSTRACT
_OBJECTS_ABSTRACT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	$211,%ax
	call	L_SYSTEM_RUNERROR$WORD$stub
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_REGISTEROBJECTS
_OBJECTS_REGISTEROBJECTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2962
Lj2962:
	popl	%ebx
	movl	L_TC_OBJECTS_RCOLLECTION$non_lazy_ptr-Lj2962(%ebx),%eax
	call	L_OBJECTS_REGISTERTYPE$TSTREAMREC$stub
	movl	L_TC_OBJECTS_RSTRINGCOLLECTION$non_lazy_ptr-Lj2962(%ebx),%eax
	call	L_OBJECTS_REGISTERTYPE$TSTREAMREC$stub
	movl	L_TC_OBJECTS_RSTRCOLLECTION$non_lazy_ptr-Lj2962(%ebx),%eax
	call	L_OBJECTS_REGISTERTYPE$TSTREAMREC$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_REGISTERTYPE$TSTREAMREC
_OBJECTS_REGISTERTYPE$TSTREAMREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2970
Lj2970:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_OBJECTS_STREAMTYPES$non_lazy_ptr-Lj2970(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2974
	.align 2
Lj2973:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
Lj2974:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2978
	jmp	Lj2975
Lj2978:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jne	Lj2973
	jmp	Lj2975
Lj2975:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2981
	jmp	Lj2980
Lj2981:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj2979
	jmp	Lj2980
Lj2979:
	movl	-4(%ebp),%edx
	movl	L_TC_OBJECTS_STREAMTYPES$non_lazy_ptr-Lj2970(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	L_TC_OBJECTS_STREAMTYPES$non_lazy_ptr-Lj2970(%ebx),%edx
	movl	%eax,(%edx)
	jmp	Lj2986
Lj2980:
	call	L_OBJECTS_REGISTERERROR$stub
Lj2986:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_LONGMUL$SMALLINT$SMALLINT$$LONGINT
_OBJECTS_LONGMUL$SMALLINT$SMALLINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movswl	-4(%ebp),%eax
	movswl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_OBJECTS_LONGDIV$LONGINT$SMALLINT$$SMALLINT
_OBJECTS_LONGDIV$LONGINT$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movswl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	cltd
	idivl	%ecx
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_INIT$_OBJECTS
_INIT$_OBJECTS:
.reference __OBJECTS_init
.globl	__OBJECTS_init
__OBJECTS_init:
.reference _INIT$_OBJECTS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2
Lj2:
	popl	%edx
	movl	L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr-Lj2(%edx),%eax
	movl	$-1,(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_OBJECTS_INVALIDHANDLE
.data
.zerofill __DATA, __common, _U_OBJECTS_INVALIDHANDLE, 4,2



.const_data
	.align 2
.globl	_VMT_OBJECTS_TOBJECT
_VMT_OBJECTS_TOBJECT:
	.long	4,-4,0
	.long	_OBJECTS_TOBJECT_$__DONE
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TSTREAM
_VMT_OBJECTS_TSTREAM:
	.long	20,-20
	.long	_VMT_OBJECTS_TOBJECT
	.long	_OBJECTS_TOBJECT_$__DONE
	.long	_OBJECTS_TSTREAM_$__GETPOS$$LONGINT
	.long	_OBJECTS_TSTREAM_$__GETSIZE$$LONGINT
	.long	_OBJECTS_TSTREAM_$__OPEN$WORD
	.long	_OBJECTS_TSTREAM_$__CLOSE
	.long	_OBJECTS_TSTREAM_$__FLUSH
	.long	_OBJECTS_TSTREAM_$__TRUNCATE
	.long	_OBJECTS_TSTREAM_$__SEEK$LONGINT
	.long	_OBJECTS_TSTREAM_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TSTREAM_$__READ$formal$LONGINT
	.long	_OBJECTS_TSTREAM_$__WRITE$formal$LONGINT
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TDOSSTREAM
_VMT_OBJECTS_TDOSSTREAM:
	.long	640,-640
	.long	_VMT_OBJECTS_TSTREAM
	.long	_OBJECTS_TDOSSTREAM_$__DONE
	.long	_OBJECTS_TSTREAM_$__GETPOS$$LONGINT
	.long	_OBJECTS_TSTREAM_$__GETSIZE$$LONGINT
	.long	_OBJECTS_TDOSSTREAM_$__OPEN$WORD
	.long	_OBJECTS_TDOSSTREAM_$__CLOSE
	.long	_OBJECTS_TSTREAM_$__FLUSH
	.long	_OBJECTS_TDOSSTREAM_$__TRUNCATE
	.long	_OBJECTS_TDOSSTREAM_$__SEEK$LONGINT
	.long	_OBJECTS_TSTREAM_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TDOSSTREAM_$__READ$formal$LONGINT
	.long	_OBJECTS_TDOSSTREAM_$__WRITE$formal$LONGINT
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TBUFSTREAM
_VMT_OBJECTS_TBUFSTREAM:
	.long	672,-672
	.long	_VMT_OBJECTS_TDOSSTREAM
	.long	_OBJECTS_TBUFSTREAM_$__DONE
	.long	_OBJECTS_TSTREAM_$__GETPOS$$LONGINT
	.long	_OBJECTS_TSTREAM_$__GETSIZE$$LONGINT
	.long	_OBJECTS_TBUFSTREAM_$__OPEN$WORD
	.long	_OBJECTS_TBUFSTREAM_$__CLOSE
	.long	_OBJECTS_TBUFSTREAM_$__FLUSH
	.long	_OBJECTS_TBUFSTREAM_$__TRUNCATE
	.long	_OBJECTS_TBUFSTREAM_$__SEEK$LONGINT
	.long	_OBJECTS_TSTREAM_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TBUFSTREAM_$__READ$formal$LONGINT
	.long	_OBJECTS_TBUFSTREAM_$__WRITE$formal$LONGINT
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TMEMORYSTREAM
_VMT_OBJECTS_TMEMORYSTREAM:
	.long	36,-36
	.long	_VMT_OBJECTS_TSTREAM
	.long	_OBJECTS_TMEMORYSTREAM_$__DONE
	.long	_OBJECTS_TSTREAM_$__GETPOS$$LONGINT
	.long	_OBJECTS_TSTREAM_$__GETSIZE$$LONGINT
	.long	_OBJECTS_TSTREAM_$__OPEN$WORD
	.long	_OBJECTS_TSTREAM_$__CLOSE
	.long	_OBJECTS_TSTREAM_$__FLUSH
	.long	_OBJECTS_TMEMORYSTREAM_$__TRUNCATE
	.long	_OBJECTS_TSTREAM_$__SEEK$LONGINT
	.long	_OBJECTS_TSTREAM_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TMEMORYSTREAM_$__READ$formal$LONGINT
	.long	_OBJECTS_TMEMORYSTREAM_$__WRITE$formal$LONGINT
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TCOLLECTION
_VMT_OBJECTS_TCOLLECTION:
	.long	20,-20
	.long	_VMT_OBJECTS_TOBJECT
	.long	_OBJECTS_TCOLLECTION_$__DONE
	.long	_OBJECTS_TCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__GETITEM$TSTREAM$$POINTER
	.long	_OBJECTS_TCOLLECTION_$__INSERT$POINTER
	.long	_OBJECTS_TCOLLECTION_$__FREEITEM$POINTER
	.long	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TCOLLECTION_$__PUTITEM$TSTREAM$POINTER
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TSORTEDCOLLECTION
_VMT_OBJECTS_TSORTEDCOLLECTION:
	.long	24,-24
	.long	_VMT_OBJECTS_TCOLLECTION
	.long	_OBJECTS_TCOLLECTION_$__DONE
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__GETITEM$TSTREAM$$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INSERT$POINTER
	.long	_OBJECTS_TCOLLECTION_$__FREEITEM$POINTER
	.long	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TCOLLECTION_$__PUTITEM$TSTREAM$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TSTRINGCOLLECTION
_VMT_OBJECTS_TSTRINGCOLLECTION:
	.long	24,-24
	.long	_VMT_OBJECTS_TSORTEDCOLLECTION
	.long	_OBJECTS_TCOLLECTION_$__DONE
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_OBJECTS_TSTRINGCOLLECTION_$__GETITEM$TSTREAM$$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INSERT$POINTER
	.long	_OBJECTS_TSTRINGCOLLECTION_$__FREEITEM$POINTER
	.long	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TSTRINGCOLLECTION_$__PUTITEM$TSTREAM$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_OBJECTS_TSTRINGCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TSTRCOLLECTION
_VMT_OBJECTS_TSTRCOLLECTION:
	.long	24,-24
	.long	_VMT_OBJECTS_TSORTEDCOLLECTION
	.long	_OBJECTS_TCOLLECTION_$__DONE
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_OBJECTS_TSTRCOLLECTION_$__GETITEM$TSTREAM$$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INSERT$POINTER
	.long	_OBJECTS_TSTRCOLLECTION_$__FREEITEM$POINTER
	.long	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TSTRCOLLECTION_$__PUTITEM$TSTREAM$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_OBJECTS_TSTRCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TUNSORTEDSTRCOLLECTION
_VMT_OBJECTS_TUNSORTEDSTRCOLLECTION:
	.long	24,-24
	.long	_VMT_OBJECTS_TSTRINGCOLLECTION
	.long	_OBJECTS_TCOLLECTION_$__DONE
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_OBJECTS_TSTRINGCOLLECTION_$__GETITEM$TSTREAM$$POINTER
	.long	_OBJECTS_TUNSORTEDSTRCOLLECTION_$__INSERT$POINTER
	.long	_OBJECTS_TSTRINGCOLLECTION_$__FREEITEM$POINTER
	.long	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TSTRINGCOLLECTION_$__PUTITEM$TSTREAM$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_OBJECTS_TSTRINGCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TRESOURCECOLLECTION
_VMT_OBJECTS_TRESOURCECOLLECTION:
	.long	24,-24
	.long	_VMT_OBJECTS_TSTRINGCOLLECTION
	.long	_OBJECTS_TCOLLECTION_$__DONE
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INDEXOF$POINTER$$LONGINT
	.long	_OBJECTS_TRESOURCECOLLECTION_$__GETITEM$TSTREAM$$POINTER
	.long	_OBJECTS_TSORTEDCOLLECTION_$__INSERT$POINTER
	.long	_OBJECTS_TRESOURCECOLLECTION_$__FREEITEM$POINTER
	.long	_OBJECTS_TCOLLECTION_$__SETLIMIT$LONGINT
	.long	_OBJECTS_TCOLLECTION_$__ERROR$SMALLINT$SMALLINT
	.long	_OBJECTS_TRESOURCECOLLECTION_$__PUTITEM$TSTREAM$POINTER
	.long	_OBJECTS_TRESOURCECOLLECTION_$__KEYOF$POINTER$$POINTER
	.long	_OBJECTS_TSTRINGCOLLECTION_$__COMPARE$POINTER$POINTER$$LONGINT
	.long	_OBJECTS_TSORTEDCOLLECTION_$__SEARCH$POINTER$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TRESOURCEFILE
_VMT_OBJECTS_TRESOURCEFILE:
	.long	44,-44
	.long	_VMT_OBJECTS_TOBJECT
	.long	_OBJECTS_TRESOURCEFILE_$__DONE
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TSTRINGLIST
_VMT_OBJECTS_TSTRINGLIST:
	.long	20,-20
	.long	_VMT_OBJECTS_TOBJECT
	.long	_OBJECTS_TSTRINGLIST_$__DONE
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_TSTRLISTMAKER
_VMT_OBJECTS_TSTRLISTMAKER:
	.long	36,-36
	.long	_VMT_OBJECTS_TOBJECT
	.long	_OBJECTS_TSTRLISTMAKER_$__DONE
	.long	0

.const_data
	.align 2
.globl	_VMT_OBJECTS_DUMMYOBJECT
_VMT_OBJECTS_DUMMYOBJECT:
	.long	4,-4
	.long	_VMT_OBJECTS_TOBJECT
	.long	_OBJECTS_TOBJECT_$__DONE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_OBJECTS
_THREADVARLIST_OBJECTS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_OBJECTS_STREAMERROR
_TC_OBJECTS_STREAMERROR:
	.long	0

.data
.globl	_TC_OBJECTS_DEFAULTTPCOMPATIBLE
_TC_OBJECTS_DEFAULTTPCOMPATIBLE:
	.byte	0

.data
	.align 2
.globl	_TC_OBJECTS_RCOLLECTION
_TC_OBJECTS_RCOLLECTION:
	.long	50
	.long	_VMT_OBJECTS_TCOLLECTION
	.long	_OBJECTS_TCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
	.long	_OBJECTS_TCOLLECTION_$__STORE$TSTREAM
	.long	0

.data
	.align 2
.globl	_TC_OBJECTS_RSTRINGCOLLECTION
_TC_OBJECTS_RSTRINGCOLLECTION:
	.long	51
	.long	_VMT_OBJECTS_TSTRINGCOLLECTION
	.long	_OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
	.long	_OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM
	.long	0

.data
	.align 2
.globl	_TC_OBJECTS_RSTRCOLLECTION
_TC_OBJECTS_RSTRCOLLECTION:
	.long	69
	.long	_VMT_OBJECTS_TSTRCOLLECTION
	.long	_OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
	.long	_OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM
	.long	0

.data
	.align 2
.globl	_TC_OBJECTS_RSTRINGLIST
_TC_OBJECTS_RSTRINGLIST:
	.long	52
	.long	_VMT_OBJECTS_TSTRINGLIST
	.long	_OBJECTS_TSTRINGLIST_$__LOAD$TSTREAM$$LONGBOOL
	.long	0,0

.data
	.align 2
.globl	_TC_OBJECTS_RSTRLISTMAKER
_TC_OBJECTS_RSTRLISTMAKER:
	.long	52
	.long	_VMT_OBJECTS_TSTRLISTMAKER
	.long	0
	.long	_OBJECTS_TSTRLISTMAKER_$__STORE$TSTREAM
	.long	0

.data
	.align 2
.globl	_TC_OBJECTS_STREAMTYPES
_TC_OBJECTS_STREAMTYPES:
	.long	0

.data
.globl	_TC_OBJECTS_TSTREAM_$_WRITESTR$PSHORTSTRING_EMPTY
_TC_OBJECTS_TSTREAM_$_WRITESTR$PSHORTSTRING_EMPTY:
	.byte	0
	.ascii	" "

.const
	.align 2
.globl	_$OBJECTS$_Ld1
_$OBJECTS$_Ld1:
	.ascii	"\001\000\000"

.data
	.align 2
.globl	_TC_OBJECTS_RSTREAMMAGIC
_TC_OBJECTS_RSTREAMMAGIC:
	.long	1380991558

.data
	.align 2
.globl	_TC_OBJECTS_RSTREAMBACKLINK
_TC_OBJECTS_RSTREAMBACKLINK:
	.long	1279410758

.const
	.align 2
.globl	_$OBJECTS$_Ld2
_$OBJECTS$_Ld2:
	.ascii	"\000\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RUNERROR$WORD$stub:
.indirect_symbol _SYSTEM_RUNERROR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_CHECKEMPTY$TRECT$stub:
.indirect_symbol _OBJECTS_CHECKEMPTY$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_help_constructor$stub:
.indirect_symbol fpc_help_constructor
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_help_destructor$stub:
.indirect_symbol fpc_help_destructor
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

L_OBJECTS_ABSTRACT$stub:
.indirect_symbol _OBJECTS_ABSTRACT
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

L_OBJECTS_TSTREAM_$__INIT$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__INIT$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
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

L_SYSTEM_ASSIGN$file$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REWRITE$file$LONGINT$stub:
.indirect_symbol _SYSTEM_REWRITE$file$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RESET$file$LONGINT$stub:
.indirect_symbol _SYSTEM_RESET$file$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_IORESULT$$WORD$stub:
.indirect_symbol _SYSTEM_IORESULT$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILESIZE$file$$INT64$stub:
.indirect_symbol _SYSTEM_FILESIZE$file$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$file$stub:
.indirect_symbol _SYSTEM_CLOSE$file
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TOBJECT_$__DONE$stub:
.indirect_symbol _OBJECTS_TOBJECT_$__DONE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TRUNCATE$file$stub:
.indirect_symbol _SYSTEM_TRUNCATE$file
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SEEK$file$INT64$stub:
.indirect_symbol _SYSTEM_SEEK$file$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$file$PCHAR$stub:
.indirect_symbol _SYSTEM_ASSIGN$file$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TDOSSTREAM_$__INIT$SHORTSTRING$WORD$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TDOSSTREAM_$__INIT$SHORTSTRING$WORD$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TDOSSTREAM_$__DONE$stub:
.indirect_symbol _OBJECTS_TDOSSTREAM_$__DONE
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

L_OBJECTS_TDOSSTREAM_$__CLOSE$stub:
.indirect_symbol _OBJECTS_TDOSSTREAM_$__CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TDOSSTREAM_$__TRUNCATE$stub:
.indirect_symbol _OBJECTS_TDOSSTREAM_$__TRUNCATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TDOSSTREAM_$__SEEK$LONGINT$stub:
.indirect_symbol _OBJECTS_TDOSSTREAM_$__SEEK$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TDOSSTREAM_$__OPEN$WORD$stub:
.indirect_symbol _OBJECTS_TDOSSTREAM_$__OPEN$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN$stub:
.indirect_symbol _OBJECTS_TMEMORYSTREAM_$__CHANGELISTSIZE$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TOBJECT_$__INIT$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TOBJECT_$__INIT$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__ATPUT$LONGINT$POINTER$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__ATPUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__FREEALL$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__FREEALL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__GET$$POBJECT$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__GET$$POBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER$stub:
.indirect_symbol _SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__AT$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__DELETE$POINTER$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__DELETE$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__ATINSERT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__ATDELETE$LONGINT$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__ATDELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__FOREACH$POINTER$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__FOREACH$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__PUT$POBJECT$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__PUT$POBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__STORE$TSTREAM$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__STORE$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__READSTR$$PSHORTSTRING$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__READSTR$$PSHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_DISPOSESTR$PSHORTSTRING$stub:
.indirect_symbol _OBJECTS_DISPOSESTR$PSHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__WRITESTR$PSHORTSTRING$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__WRITESTR$PSHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__STRREAD$$PCHAR$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__STRREAD$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__STRWRITE$PCHAR$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__STRWRITE$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TSORTEDCOLLECTION_$__LOAD$TSTREAM$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSORTEDCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL$stub:
.indirect_symbol _OBJECTS_TSORTEDCOLLECTION_$__INIT$LONGINT$LONGINT$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TRESOURCEFILE_$__FLUSH$stub:
.indirect_symbol _OBJECTS_TRESOURCEFILE_$__FLUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTREAM_$__COPYFROM$TSTREAM$LONGINT$stub:
.indirect_symbol _OBJECTS_TSTREAM_$__COPYFROM$TSTREAM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM$stub:
.indirect_symbol _OBJECTS_TSORTEDCOLLECTION_$__STORE$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TCOLLECTION_$__FREE$POINTER$stub:
.indirect_symbol _OBJECTS_TCOLLECTION_$__FREE$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTRINGLIST_$__READSTR$SHORTSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _OBJECTS_TSTRINGLIST_$__READSTR$SHORTSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_TSTRLISTMAKER_$__CLOSECURRENT$stub:
.indirect_symbol _OBJECTS_TSTRLISTMAKER_$__CLOSECURRENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_REGISTERTYPE$TSTREAMREC$stub:
.indirect_symbol _OBJECTS_REGISTERTYPE$TSTREAMREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJECTS_REGISTERERROR$stub:
.indirect_symbol _OBJECTS_REGISTERERROR
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
.globl	_INIT_OBJECTS_TCHARSET
_INIT_OBJECTS_TCHARSET:
	.byte	5,8
	.ascii	"TCharSet"
	.byte	1
	.long	_INIT_SYSTEM_CHAR

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TCHARSET
_RTTI_OBJECTS_TCHARSET:
	.byte	5,8
	.ascii	"TCharSet"
	.byte	1
	.long	_RTTI_SYSTEM_CHAR

.const_data
	.align 2
.globl	_INIT_OBJECTS_PCHARSET
_INIT_OBJECTS_PCHARSET:
	.byte	0
	.ascii	"\010PCharSet"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PCHARSET
_RTTI_OBJECTS_PCHARSET:
	.byte	0
	.ascii	"\010PCharSet"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TBYTEARRAY
_INIT_OBJECTS_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,16777216
	.long	_INIT_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TBYTEARRAY
_RTTI_OBJECTS_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,16777216
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_INIT_OBJECTS_PBYTEARRAY
_INIT_OBJECTS_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PBYTEARRAY
_RTTI_OBJECTS_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TWORDARRAY
_INIT_OBJECTS_TWORDARRAY:
	.byte	12
	.ascii	"\012TWordArray"
	.long	2,8388608
	.long	_INIT_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TWORDARRAY
_RTTI_OBJECTS_TWORDARRAY:
	.byte	12
	.ascii	"\012TWordArray"
	.long	2,8388608
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_INIT_OBJECTS_PWORDARRAY
_INIT_OBJECTS_PWORDARRAY:
	.byte	0
	.ascii	"\012PWordArray"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PWORDARRAY
_RTTI_OBJECTS_PWORDARRAY:
	.byte	0
	.ascii	"\012PWordArray"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TPOINTERARRAY
_INIT_OBJECTS_TPOINTERARRAY:
	.byte	12
	.ascii	"\015TPointerArray"
	.long	4,4194304
	.long	_INIT_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TPOINTERARRAY
_RTTI_OBJECTS_TPOINTERARRAY:
	.byte	12
	.ascii	"\015TPointerArray"
	.long	4,4194304
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_INIT_OBJECTS_PPOINTERARRAY
_INIT_OBJECTS_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PPOINTERARRAY
_RTTI_OBJECTS_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.const_data
	.align 2
.globl	_INIT_OBJECTS_ASCIIZ
_INIT_OBJECTS_ASCIIZ:
	.byte	12
	.ascii	"\006AsciiZ"
	.long	1,256
	.long	_INIT_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_OBJECTS_ASCIIZ
_RTTI_OBJECTS_ASCIIZ:
	.byte	12
	.ascii	"\006AsciiZ"
	.long	1,256
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_INIT_OBJECTS_WORDREC
_INIT_OBJECTS_WORDREC:
	.byte	13,7
	.ascii	"WordRec"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_WORDREC
_RTTI_OBJECTS_WORDREC:
	.byte	13,7
	.ascii	"WordRec"
	.long	2,2
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1

.const_data
	.align 2
.globl	_INIT_OBJECTS_LONGREC
_INIT_OBJECTS_LONGREC:
	.byte	13,7
	.ascii	"LongRec"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_LONGREC
_RTTI_OBJECTS_LONGREC:
	.byte	13,7
	.ascii	"LongRec"
	.long	4,2
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2

.const_data
	.align 2
.globl	_INIT_OBJECTS_PTRREC
_INIT_OBJECTS_PTRREC:
	.byte	13,6
	.ascii	"PtrRec"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PTRREC
_RTTI_OBJECTS_PTRREC:
	.byte	13,6
	.ascii	"PtrRec"
	.long	4,2
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTREAMREC
_INIT_OBJECTS_PSTREAMREC:
	.byte	0
	.ascii	"\012PStreamRec"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTREAMREC
_RTTI_OBJECTS_PSTREAMREC:
	.byte	0
	.ascii	"\012PStreamRec"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTREAMREC
_INIT_OBJECTS_TSTREAMREC:
	.byte	13,10
	.ascii	"TStreamRec"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTREAMREC
_RTTI_OBJECTS_TSTREAMREC:
	.byte	13,10
	.ascii	"TStreamRec"
	.long	20,5
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_OBJECTS_PSTREAMREC
	.long	16

.const_data
	.align 2
.globl	_INIT_OBJECTS_PPOINT
_INIT_OBJECTS_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PPOINT
_RTTI_OBJECTS_PPOINT:
	.byte	0
	.ascii	"\006PPoint"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TPOINT
_INIT_OBJECTS_TPOINT:
	.byte	16,6
	.ascii	"TPoint"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TPOINT
_RTTI_OBJECTS_TPOINT:
	.byte	16,6
	.ascii	"TPoint"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_OBJECTS_PRECT
_INIT_OBJECTS_PRECT:
	.byte	0
	.ascii	"\005PRect"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PRECT
_RTTI_OBJECTS_PRECT:
	.byte	0
	.ascii	"\005PRect"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TRECT
_INIT_OBJECTS_TRECT:
	.byte	16,5
	.ascii	"TRect"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TRECT
_RTTI_OBJECTS_TRECT:
	.byte	16,5
	.ascii	"TRect"
	.long	16,2
	.long	_RTTI_OBJECTS_TPOINT
	.long	0
	.long	_RTTI_OBJECTS_TPOINT
	.long	8

.const_data
	.align 2
.globl	_INIT_OBJECTS_TOBJECT
_INIT_OBJECTS_TOBJECT:
	.byte	16,7
	.ascii	"TObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TOBJECT
_RTTI_OBJECTS_TOBJECT:
	.byte	16,7
	.ascii	"TObject"
	.long	4,1
	.long	_RTTI_SYSTEM_POINTER
	.long	0

.const_data
	.align 2
.globl	_INIT_OBJECTS_POBJECT
_INIT_OBJECTS_POBJECT:
	.byte	0
	.ascii	"\007PObject"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_POBJECT
_RTTI_OBJECTS_POBJECT:
	.byte	0
	.ascii	"\007PObject"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTREAM
_INIT_OBJECTS_TSTREAM:
	.byte	16,7
	.ascii	"TStream"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTREAM
_RTTI_OBJECTS_TSTREAM:
	.byte	16,7
	.ascii	"TStream"
	.long	20,6
	.long	_RTTI_OBJECTS_TOBJECT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	4
	.long	_RTTI_SYSTEM_SMALLINT
	.long	6
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	16

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTREAM
_INIT_OBJECTS_PSTREAM:
	.byte	0
	.ascii	"\007PStream"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTREAM
_RTTI_OBJECTS_PSTREAM:
	.byte	0
	.ascii	"\007PStream"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TDOSSTREAM
_INIT_OBJECTS_TDOSSTREAM:
	.byte	16,10
	.ascii	"TDosStream"
	.long	640,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TDOSSTREAM
_RTTI_OBJECTS_TDOSSTREAM:
	.byte	16,10
	.ascii	"TDosStream"
	.long	640,4
	.long	_RTTI_OBJECTS_TSTREAM
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_OBJECTS_ASCIIZ
	.long	24
	.long	_RTTI_SYSTEM_file
	.long	288

.const_data
	.align 2
.globl	_INIT_OBJECTS_PDOSSTREAM
_INIT_OBJECTS_PDOSSTREAM:
	.byte	0
	.ascii	"\012PDosStream"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PDOSSTREAM
_RTTI_OBJECTS_PDOSSTREAM:
	.byte	0
	.ascii	"\012PDosStream"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TBUFSTREAM
_INIT_OBJECTS_TBUFSTREAM:
	.byte	16,10
	.ascii	"TBufStream"
	.long	672,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TBUFSTREAM
_RTTI_OBJECTS_TBUFSTREAM:
	.byte	16,10
	.ascii	"TBufStream"
	.long	672,6
	.long	_RTTI_OBJECTS_TDOSSTREAM
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	640
	.long	_RTTI_SYSTEM_LONGINT
	.long	644
	.long	_RTTI_SYSTEM_LONGINT
	.long	648
	.long	_RTTI_SYSTEM_LONGINT
	.long	652
	.long	_RTTI_OBJECTS_PBYTEARRAY
	.long	656

.const_data
	.align 2
.globl	_INIT_OBJECTS_PBUFSTREAM
_INIT_OBJECTS_PBUFSTREAM:
	.byte	0
	.ascii	"\012PBufStream"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PBUFSTREAM
_RTTI_OBJECTS_PBUFSTREAM:
	.byte	0
	.ascii	"\012PBufStream"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TMEMORYSTREAM
_INIT_OBJECTS_TMEMORYSTREAM:
	.byte	16,13
	.ascii	"TMemoryStream"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TMEMORYSTREAM
_RTTI_OBJECTS_TMEMORYSTREAM:
	.byte	16,13
	.ascii	"TMemoryStream"
	.long	36,5
	.long	_RTTI_OBJECTS_TSTREAM
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_WORD
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_OBJECTS_PPOINTERARRAY
	.long	32

.const_data
	.align 2
.globl	_INIT_OBJECTS_PMEMORYSTREAM
_INIT_OBJECTS_PMEMORYSTREAM:
	.byte	0
	.ascii	"\015PMemoryStream"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PMEMORYSTREAM
_RTTI_OBJECTS_PMEMORYSTREAM:
	.byte	0
	.ascii	"\015PMemoryStream"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TITEMLIST
_INIT_OBJECTS_TITEMLIST:
	.byte	12
	.ascii	"\011TItemList"
	.long	4,4194304
	.long	_INIT_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TITEMLIST
_RTTI_OBJECTS_TITEMLIST:
	.byte	12
	.ascii	"\011TItemList"
	.long	4,4194304
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_INIT_OBJECTS_PITEMLIST
_INIT_OBJECTS_PITEMLIST:
	.byte	0
	.ascii	"\011PItemList"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PITEMLIST
_RTTI_OBJECTS_PITEMLIST:
	.byte	0
	.ascii	"\011PItemList"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TCOLLECTION
_INIT_OBJECTS_TCOLLECTION:
	.byte	16,11
	.ascii	"TCollection"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TCOLLECTION
_RTTI_OBJECTS_TCOLLECTION:
	.byte	16,11
	.ascii	"TCollection"
	.long	20,5
	.long	_RTTI_OBJECTS_TOBJECT
	.long	0
	.long	_RTTI_OBJECTS_PITEMLIST
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_OBJECTS_PCOLLECTION
_INIT_OBJECTS_PCOLLECTION:
	.byte	0
	.ascii	"\013PCollection"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PCOLLECTION
_RTTI_OBJECTS_PCOLLECTION:
	.byte	0
	.ascii	"\013PCollection"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSORTEDCOLLECTION
_INIT_OBJECTS_TSORTEDCOLLECTION:
	.byte	16,17
	.ascii	"TSortedCollection"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSORTEDCOLLECTION
_RTTI_OBJECTS_TSORTEDCOLLECTION:
	.byte	16,17
	.ascii	"TSortedCollection"
	.long	24,2
	.long	_RTTI_OBJECTS_TCOLLECTION
	.long	0
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	20

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSORTEDCOLLECTION
_INIT_OBJECTS_PSORTEDCOLLECTION:
	.byte	0
	.ascii	"\021PSortedCollection"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSORTEDCOLLECTION
_RTTI_OBJECTS_PSORTEDCOLLECTION:
	.byte	0
	.ascii	"\021PSortedCollection"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTRINGCOLLECTION
_INIT_OBJECTS_TSTRINGCOLLECTION:
	.byte	16,17
	.ascii	"TStringCollection"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTRINGCOLLECTION
_RTTI_OBJECTS_TSTRINGCOLLECTION:
	.byte	16,17
	.ascii	"TStringCollection"
	.long	24,1
	.long	_RTTI_OBJECTS_TSORTEDCOLLECTION
	.long	0

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTRINGCOLLECTION
_INIT_OBJECTS_PSTRINGCOLLECTION:
	.byte	0
	.ascii	"\021PStringCollection"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTRINGCOLLECTION
_RTTI_OBJECTS_PSTRINGCOLLECTION:
	.byte	0
	.ascii	"\021PStringCollection"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTRCOLLECTION
_INIT_OBJECTS_TSTRCOLLECTION:
	.byte	16,14
	.ascii	"TStrCollection"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTRCOLLECTION
_RTTI_OBJECTS_TSTRCOLLECTION:
	.byte	16,14
	.ascii	"TStrCollection"
	.long	24,1
	.long	_RTTI_OBJECTS_TSORTEDCOLLECTION
	.long	0

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTRCOLLECTION
_INIT_OBJECTS_PSTRCOLLECTION:
	.byte	0
	.ascii	"\016PStrCollection"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTRCOLLECTION
_RTTI_OBJECTS_PSTRCOLLECTION:
	.byte	0
	.ascii	"\016PStrCollection"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TUNSORTEDSTRCOLLECTION
_INIT_OBJECTS_TUNSORTEDSTRCOLLECTION:
	.byte	16,22
	.ascii	"TUnSortedStrCollection"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TUNSORTEDSTRCOLLECTION
_RTTI_OBJECTS_TUNSORTEDSTRCOLLECTION:
	.byte	16,22
	.ascii	"TUnSortedStrCollection"
	.long	24,1
	.long	_RTTI_OBJECTS_TSTRINGCOLLECTION
	.long	0

.const_data
	.align 2
.globl	_INIT_OBJECTS_PUNSORTEDSTRCOLLECTION
_INIT_OBJECTS_PUNSORTEDSTRCOLLECTION:
	.byte	0
	.ascii	"\026PUnSortedStrCollection"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PUNSORTEDSTRCOLLECTION
_RTTI_OBJECTS_PUNSORTEDSTRCOLLECTION:
	.byte	0
	.ascii	"\026PUnSortedStrCollection"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TRESOURCECOLLECTION
_INIT_OBJECTS_TRESOURCECOLLECTION:
	.byte	16,19
	.ascii	"TResourceCollection"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TRESOURCECOLLECTION
_RTTI_OBJECTS_TRESOURCECOLLECTION:
	.byte	16,19
	.ascii	"TResourceCollection"
	.long	24,1
	.long	_RTTI_OBJECTS_TSTRINGCOLLECTION
	.long	0

.const_data
	.align 2
.globl	_INIT_OBJECTS_PRESOURCECOLLECTION
_INIT_OBJECTS_PRESOURCECOLLECTION:
	.byte	0
	.ascii	"\023PResourceCollection"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PRESOURCECOLLECTION
_RTTI_OBJECTS_PRESOURCECOLLECTION:
	.byte	0
	.ascii	"\023PResourceCollection"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TRESOURCEFILE
_INIT_OBJECTS_TRESOURCEFILE:
	.byte	16,13
	.ascii	"TResourceFile"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TRESOURCEFILE
_RTTI_OBJECTS_TRESOURCEFILE:
	.byte	16,13
	.ascii	"TResourceFile"
	.long	44,6
	.long	_RTTI_OBJECTS_TOBJECT
	.long	0
	.long	_RTTI_OBJECTS_PSTREAM
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_OBJECTS_TRESOURCECOLLECTION
	.long	20

.const_data
	.align 2
.globl	_INIT_OBJECTS_PRESOURCEFILE
_INIT_OBJECTS_PRESOURCEFILE:
	.byte	0
	.ascii	"\015PResourceFile"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PRESOURCEFILE
_RTTI_OBJECTS_PRESOURCEFILE:
	.byte	0
	.ascii	"\015PResourceFile"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTRINDEXREC
_INIT_OBJECTS_TSTRINDEXREC:
	.byte	13,12
	.ascii	"TStrIndexRec"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTRINDEXREC
_RTTI_OBJECTS_TSTRINDEXREC:
	.byte	13,12
	.ascii	"TStrIndexRec"
	.long	8,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTRINDEX
_INIT_OBJECTS_TSTRINDEX:
	.byte	12
	.ascii	"\011TStrIndex"
	.long	8,10000
	.long	_INIT_OBJECTS_TSTRINDEXREC
	.long	-1

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTRINDEX
_RTTI_OBJECTS_TSTRINDEX:
	.byte	12
	.ascii	"\011TStrIndex"
	.long	8,10000
	.long	_RTTI_OBJECTS_TSTRINDEXREC
	.long	-1

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTRINDEX
_INIT_OBJECTS_PSTRINDEX:
	.byte	0
	.ascii	"\011PStrIndex"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTRINDEX
_RTTI_OBJECTS_PSTRINDEX:
	.byte	0
	.ascii	"\011PStrIndex"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTRINGLIST
_INIT_OBJECTS_TSTRINGLIST:
	.byte	16,11
	.ascii	"TStringList"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTRINGLIST
_RTTI_OBJECTS_TSTRINGLIST:
	.byte	16,11
	.ascii	"TStringList"
	.long	20,5
	.long	_RTTI_OBJECTS_TOBJECT
	.long	0
	.long	_RTTI_OBJECTS_PSTREAM
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_OBJECTS_PSTRINDEX
	.long	16

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTRINGLIST
_INIT_OBJECTS_PSTRINGLIST:
	.byte	0
	.ascii	"\013PStringList"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTRINGLIST
_RTTI_OBJECTS_PSTRINGLIST:
	.byte	0
	.ascii	"\013PStringList"

.const_data
	.align 2
.globl	_INIT_OBJECTS_TSTRLISTMAKER
_INIT_OBJECTS_TSTRLISTMAKER:
	.byte	16,13
	.ascii	"TStrListMaker"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_OBJECTS_TSTRLISTMAKER
_RTTI_OBJECTS_TSTRLISTMAKER:
	.byte	16,13
	.ascii	"TStrListMaker"
	.long	36,8
	.long	_RTTI_OBJECTS_TOBJECT
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_OBJECTS_PBYTEARRAY
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_OBJECTS_PSTRINDEX
	.long	24
	.long	_RTTI_OBJECTS_TSTRINDEXREC
	.long	28

.const_data
	.align 2
.globl	_INIT_OBJECTS_PSTRLISTMAKER
_INIT_OBJECTS_PSTRLISTMAKER:
	.byte	0
	.ascii	"\015PStrListMaker"

.const_data
	.align 2
.globl	_RTTI_OBJECTS_PSTRLISTMAKER
_RTTI_OBJECTS_PSTRLISTMAKER:
	.byte	0
	.ascii	"\015PStrListMaker"
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
L_TC_OBJECTS_DEFAULTTPCOMPATIBLE$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_DEFAULTTPCOMPATIBLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_STREAMTYPES$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_STREAMTYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_TSTREAM_$_WRITESTR$PSHORTSTRING_EMPTY$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_TSTREAM_$_WRITESTR$PSHORTSTRING_EMPTY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_STREAMERROR$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_STREAMERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$OBJECTS$_Ld1$non_lazy_ptr:
.indirect_symbol _$OBJECTS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_OBJECTS_INVALIDHANDLE$non_lazy_ptr:
.indirect_symbol _U_OBJECTS_INVALIDHANDLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_FILEMODE$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_FILEMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_OBJECTS_TCOLLECTION_$_STORE$TSTREAM_DOPUTITEM$POINTER$non_lazy_ptr:
.indirect_symbol _OBJECTS_TCOLLECTION_$_STORE$TSTREAM_DOPUTITEM$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_OBJECTS_TRESOURCECOLLECTION$non_lazy_ptr:
.indirect_symbol _VMT_OBJECTS_TRESOURCECOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_OBJECTS_TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_DOCOPYRESOURCE$PRESOURCEITEM$non_lazy_ptr:
.indirect_symbol _OBJECTS_TRESOURCEFILE_$_SWITCHTO$PSTREAM$BOOLEAN$$PSTREAM_DOCOPYRESOURCE$PRESOURCEITEM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_RSTREAMBACKLINK$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_RSTREAMBACKLINK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_RSTREAMMAGIC$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_RSTREAMMAGIC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_RCOLLECTION$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_RCOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_RSTRINGCOLLECTION$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_RSTRINGCOLLECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_OBJECTS_RSTRCOLLECTION$non_lazy_ptr:
.indirect_symbol _TC_OBJECTS_RSTRCOLLECTION
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

