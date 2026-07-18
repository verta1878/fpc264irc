# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD
_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$1,%eax
	jne	Lj5
	jmp	Lj6
Lj5:
	movl	L_VMT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj6:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING
_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj17
	jmp	Lj18
Lj17:
	movl	-4(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj21
Lj18:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
Lj21:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE
_RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj27
Lj27:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj28
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj31
	jmp	Lj32
Lj31:
	jmp	Lj28
Lj32:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj33
	jmp	Lj34
Lj33:
	jmp	Lj28
Lj34:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj35
	jmp	Lj37
Lj37:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	testb	%al,%al
	je	Lj35
	jmp	Lj36
Lj35:
	movl	$0,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SDESCCHANGENOTALLOWED$non_lazy_ptr-Lj27(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION$non_lazy_ptr-Lj27(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj27(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj36:
Lj28:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj29
	call	LFPC_RERAISE$stub
Lj29:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE
_RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj57
Lj57:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj58
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj61
	jmp	Lj62
Lj61:
	jmp	Lj58
Lj62:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj63
	jmp	Lj65
Lj65:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	testb	%al,%al
	je	Lj63
	jmp	Lj64
Lj63:
	movl	$0,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SDESCCHANGENOTALLOWED$non_lazy_ptr-Lj57(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION$non_lazy_ptr-Lj57(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj57(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj64:
Lj58:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	call	LFPC_RERAISE$stub
Lj59:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__SETOWNER$TABSTRACTRESOURCE
_RESOURCE_TRESOURCEDESC_$__SETOWNER$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD
_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE$stub
	movl	-8(%ebp),%eax
	movl	$1,12(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING
_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING:
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
	jne	Lj102
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE$stub
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,4(%ebx)
Lj102:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj103
	call	LFPC_RERAISE$stub
Lj103:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC
_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj121
	jmp	Lj122
Lj121:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj122:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj127
	jmp	Lj128
Lj127:
	jmp	Lj119
Lj128:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj131
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj135
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,4(%ebx)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
Lj135:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj136
	call	LFPC_RERAISE$stub
Lj136:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj148
	jmp	Lj147
Lj148:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj146
	jmp	Lj147
Lj146:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj147:
Lj131:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj133
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj152
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj153
	jmp	Lj154
Lj153:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj154:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj152:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj151
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj151:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj133
Lj133:
Lj119:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC
_RESOURCE_TRESOURCEDESC_$__CREATE$LONGWORD$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj161
	jmp	Lj162
Lj161:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj162:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj167
	jmp	Lj168
Lj167:
	jmp	Lj159
Lj168:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj171
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj175
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
Lj175:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj176
	call	LFPC_RERAISE$stub
Lj176:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj188
	jmp	Lj187
Lj188:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj186
	jmp	Lj187
Lj186:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj187:
Lj171:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj173
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj192
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj193
	jmp	Lj194
Lj193:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj194:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj192:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj191
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj191:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj173
Lj173:
Lj159:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__CREATE$ANSISTRING$$TRESOURCEDESC
_RESOURCE_TRESOURCEDESC_$__CREATE$ANSISTRING$$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj201
	jmp	Lj202
Lj201:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj202:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj207
	jmp	Lj208
Lj207:
	jmp	Lj199
Lj208:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj211
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj215
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
Lj215:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj216
	call	LFPC_RERAISE$stub
Lj216:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj228
	jmp	Lj227
Lj228:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj226
	jmp	Lj227
Lj226:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj227:
Lj211:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj213
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj232
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj233
	jmp	Lj234
Lj233:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj234:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj232:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj231
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj231:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj213
Lj213:
Lj199:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC
_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE$stub
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj252
	decl	%eax
	je	Lj251
	jmp	Lj250
Lj251:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,4(%ebx)
	jmp	Lj249
Lj252:
	movl	-4(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	jmp	Lj249
Lj250:
Lj249:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCEDESC_$__EQUALS$TRESOURCEDESC$$BOOLEAN
_RESOURCE_TRESOURCEDESC_$__EQUALS$TRESOURCEDESC$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj263
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj268
	jmp	Lj269
Lj268:
	jmp	Lj263
Lj269:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj272
	decl	%eax
	je	Lj273
	jmp	Lj271
Lj272:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj270
Lj273:
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	seteb	-9(%ebp)
	jmp	Lj270
Lj271:
Lj270:
Lj263:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj264
	call	LFPC_RERAISE$stub
Lj264:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM
_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj289
Lj289:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj290
	jmp	Lj291
Lj290:
	movl	L_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM$non_lazy_ptr-Lj289(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD$stub
	movl	$0,%edx
	movl	%edx,8(%esp)
	movl	%eax,4(%esp)
	movl	L_VMT_RESDATASTREAM_TRESOURCEDATASTREAM$non_lazy_ptr-Lj289(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D$stub
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
Lj291:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__GETCACHEDATA$$BOOLEAN
_RESOURCE_TABSTRACTRESOURCE_$__GETCACHEDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN
_RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movb	-4(%ebp),%dl
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCACHED$BOOLEAN$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD
_RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj332
	jmp	Lj333
Lj332:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj336
Lj333:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-8(%ebp)
Lj336:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD
_RESOURCE_TABSTRACTRESOURCE_$__SETLANGID$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj342
Lj342:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj343
	jmp	Lj344
Lj343:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,-12(%ebp)
	movl	$7,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SLANGIDCHANGENOTALLOWED$non_lazy_ptr-Lj342(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION$non_lazy_ptr-Lj342(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj342(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj344:
	movl	-8(%ebp),%edx
	movw	-4(%ebp),%ax
	movw	%ax,4(%edx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC
_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__SETOWNER$TABSTRACTRESOURCE$stub
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__SETOWNERLIST$TRESOURCES
_RESOURCE_TABSTRACTRESOURCE_$__SETOWNERLIST$TRESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,44(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__SETCHILDOWNER$TABSTRACTRESOURCE
_RESOURCE_TABSTRACTRESOURCE_$__SETCHILDOWNER$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,48(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE
_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj375
	jmp	Lj376
Lj375:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj376:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj381
	jmp	Lj382
Lj381:
	jmp	Lj373
Lj382:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj385
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj389
	movl	-8(%ebp),%eax
	movw	$0,4(%eax)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	movw	$4112,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	movl	-8(%ebp),%eax
	movl	$0,36(%eax)
	movl	-8(%ebp),%eax
	movl	$0,40(%eax)
	movl	-8(%ebp),%eax
	movl	$0,44(%eax)
	movl	-8(%ebp),%eax
	movl	$0,48(%eax)
Lj389:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj390
	call	LFPC_RERAISE$stub
Lj390:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj418
	jmp	Lj417
Lj418:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj416
	jmp	Lj417
Lj416:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj417:
Lj385:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj387
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj422
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj423
	jmp	Lj424
Lj423:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj424:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj422:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj421
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj421:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj387
Lj387:
Lj373:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__DESTROY
_RESOURCE_TABSTRACTRESOURCE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj431
	jmp	Lj432
Lj431:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj432:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj435
	jmp	Lj436
Lj435:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj436:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj441
	jmp	Lj440
Lj441:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj439
	jmp	Lj440
Lj439:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj440:
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCE_$__SETCUSTOMRAWDATASTREAM$TSTREAM
_RESOURCE_TABSTRACTRESOURCE_$__SETCUSTOMRAWDATASTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__GETRAWDATA$$TSTREAM$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	call	L_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD
_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__SETCACHEDATA$BOOLEAN
_RESOURCE_TRESOURCES_$__SETCACHEDATA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	20(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj482
	jmp	Lj483
Lj482:
	jmp	Lj480
Lj483:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,20(%eax)
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj486
	jmp	Lj487
Lj486:
	jmp	Lj480
Lj487:
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj489
	decl	-12(%ebp)
	.align 2
Lj490:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE$stub
	movl	%eax,%esi
	movb	-4(%ebp),%dl
	movl	%esi,%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj490
Lj489:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj503
	jmp	Lj504
Lj503:
	movl	-8(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj504:
Lj480:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__NOTIFYLOADED
_RESOURCE_TRESOURCES_$__NOTIFYLOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj510
	decl	-8(%ebp)
	.align 2
Lj511:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*120(%edx)
	cmpl	-8(%ebp),%ebx
	jg	Lj511
Lj510:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INITREADERLIST
_RESOURCE_TRESOURCES_$__INITREADERLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj523
Lj523:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj523(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj524
	jmp	Lj525
Lj524:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj523(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj523(%ebx),%edx
	movl	%eax,(%edx)
Lj525:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INITWRITERLIST
_RESOURCE_TRESOURCES_$__INITWRITERLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj533
Lj533:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj533(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj534
	jmp	Lj535
Lj534:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj533(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj533(%ebx),%edx
	movl	%eax,(%edx)
Lj535:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__DISPOSESTREAMERLIST$TFPLIST
_RESOURCE_TRESOURCES_$__DISPOSESTREAMERLIST$TFPLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj544
	jmp	Lj545
Lj544:
	jmp	Lj542
Lj545:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj547
	decl	-20(%ebp)
	.align 2
Lj548:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj556
	.align 2
Lj555:
	movl	-12(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj556:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj555
	jmp	Lj557
Lj557:
	cmpl	-20(%ebp),%ebx
	jg	Lj548
Lj547:
Lj542:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__DISPOSEREADERLIST
_RESOURCE_TRESOURCES_$__DISPOSEREADERLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj565
Lj565:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj565(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__DISPOSESTREAMERLIST$TFPLIST$stub
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj565(%ebx),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__DISPOSEWRITERLIST
_RESOURCE_TRESOURCES_$__DISPOSEWRITERLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj573
Lj573:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj573(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__DISPOSESTREAMERLIST$TFPLIST$stub
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj573(%ebx),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$ANSISTRING$$TABSTRACTRESOURCEREADER
_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$ANSISTRING$$TABSTRACTRESOURCEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj581
Lj581:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj582
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INITREADERLIST$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-80(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj581(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj600
	decl	-20(%ebp)
	.align 2
Lj601:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj581(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-24(%ebp),%eax
	leal	-80(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-80(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj608
	jmp	Lj609
Lj608:
	jmp	Lj619
	.align 2
Lj618:
	movl	-24(%ebp),%eax
	movl	256(%eax),%edx
	movl	$0,%eax
	movl	-24(%ebp),%ecx
	movl	256(%ecx),%ecx
	call	*116(%ecx)
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movb	%al,-33(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpb	$0,-33(%ebp)
	jne	Lj637
	jmp	Lj638
Lj637:
	jmp	Lj582
Lj638:
	leal	-16(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-24(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,-24(%ebp)
Lj619:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj618
	jmp	Lj620
Lj620:
	movl	-20(%ebp),%edx
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj581(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	256(%eax),%edx
	movl	$0,%eax
	movl	-24(%ebp),%ecx
	movl	256(%ecx),%ecx
	call	*116(%ecx)
	movl	%eax,-16(%ebp)
	jmp	Lj582
Lj609:
	cmpl	-20(%ebp),%esi
	jg	Lj601
Lj600:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	L_RESSTR_RESOURCE_SREADERNOTFOUNDEXT$non_lazy_ptr-Lj581(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-80(%ebp),%ecx
	movl	L_VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION$non_lazy_ptr-Lj581(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj581(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj582:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj583
	call	LFPC_RERAISE$stub
Lj583:
	movl	-16(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$$TABSTRACTRESOURCEREADER
_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$$TABSTRACTRESOURCEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj670
Lj670:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INITREADERLIST$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj670(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj680
	decl	-16(%ebp)
	.align 2
Lj681:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj670(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	jmp	Lj689
	.align 2
Lj688:
	movl	-20(%ebp),%eax
	movl	256(%eax),%edx
	movl	$0,%eax
	movl	-20(%ebp),%ecx
	movl	256(%ecx),%ecx
	call	*116(%ecx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movb	%al,-29(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpb	$0,-29(%ebp)
	jne	Lj707
	jmp	Lj708
Lj707:
	jmp	Lj669
Lj708:
	leal	-12(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-20(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,-20(%ebp)
Lj689:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj688
	jmp	Lj690
Lj690:
	cmpl	-16(%ebp),%esi
	jg	Lj681
Lj680:
	movl	L_RESSTR_RESOURCE_SREADERNOTFOUNDPROBE$non_lazy_ptr-Lj670(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION$non_lazy_ptr-Lj670(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj670(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj669:
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__MOVEFROM$TRESOURCES
_RESOURCE_TRESOURCES_$__MOVEFROM$TRESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__BEGINMOVEFROM$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj723
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj728
	decl	-16(%ebp)
	.align 2
Lj729:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj738
	jmp	Lj739
Lj738:
	jmp	Lj727
Lj739:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj740
	jmp	Lj741
Lj740:
	movb	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub
	jmp	Lj750
Lj741:
	movb	$1,(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub
Lj750:
Lj727:
	cmpl	-16(%ebp),%ebx
	jg	Lj729
Lj728:
Lj723:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__ENDMOVEFROM$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj724
	decl	%eax
	testl	%eax,%eax
	je	Lj725
Lj725:
	call	LFPC_RERAISE$stub
Lj724:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FINDWRITERCLASS$ANSISTRING$$TRESOURCEWRITERCLASS
_RESOURCE_TRESOURCES_$__FINDWRITERCLASS$ANSISTRING$$TRESOURCEWRITERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj762
Lj762:
	popl	%ebx
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
	jne	Lj763
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INITWRITERLIST$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj762(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj777
	decl	-16(%ebp)
	.align 2
Lj778:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj762(%ebx),%eax
	movl	(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-20(%ebp),%eax
	leal	-64(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj785
	jmp	Lj786
Lj785:
	movl	-20(%ebp),%eax
	movl	256(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj763
Lj786:
	cmpl	-16(%ebp),%esi
	jg	Lj778
Lj777:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	L_RESSTR_RESOURCE_SWRITERNOTFOUNDEXT$non_lazy_ptr-Lj762(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	movl	L_VMT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION$non_lazy_ptr-Lj762(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj762(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj763:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj764
	call	LFPC_RERAISE$stub
Lj764:
	movl	-12(%ebp),%eax
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN
_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj812
Lj812:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj813
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%esi,%ecx
	call	L_RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj830
	jmp	Lj831
Lj830:
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	L_VMT_RESMERGER_TRESOURCEMERGER$non_lazy_ptr-Lj812(%ebx),%eax
	call	L_RESMERGER_TRESOURCEMERGER_$__MERGE$TABSTRACTRESOURCE$TABSTRACTRESOURCE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj832
	jmp	Lj833
Lj832:
	jmp	Lj813
Lj833:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%esi
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%esi
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SRESDUPLICATE$non_lazy_ptr-Lj812(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION$non_lazy_ptr-Lj812(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj812(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj831:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj874
	jmp	Lj875
Lj874:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCES_$__QUIETREMOVE$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub
Lj875:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-12(%ebp),%eax
	movb	20(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN$stub
Lj813:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj814
	call	LFPC_RERAISE$stub
Lj814:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__ADDNOTREE$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__ADDNOTREE$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-8(%ebp),%eax
	movb	20(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__BEGINMOVEFROM
_RESOURCE_TRESOURCES_$__BEGINMOVEFROM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__ENDMOVEFROM
_RESOURCE_TRESOURCES_$__ENDMOVEFROM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	decl	24(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj934
	jmp	Lj935
Lj934:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	28(%edx),%eax
	je	Lj936
	jmp	Lj937
Lj936:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	jmp	Lj940
Lj937:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TFPLIST_$__PACK$stub
Lj940:
Lj935:
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__ADD$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__ADD$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD
_RESOURCE_TRESOURCES_$__ADDAUTOID$TABSTRACTRESOURCE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj963
	jmp	Lj964
Lj963:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub
Lj964:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-16(%ebp),%edx
	movl	%ebx,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movb	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INTERNALCLEAR
_RESOURCE_TRESOURCES_$__INTERNALCLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_RESOURCETREE_TRESOURCETREENODE_$__CLEAR$stub
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj992
	decl	-8(%ebp)
	.align 2
Lj993:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj993
Lj992:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__CLEAR
_RESOURCE_TRESOURCES_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALCLEAR$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1010
	jmp	Lj1011
Lj1010:
	movl	-4(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1011:
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1015
Lj1015:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1016
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1029
	jmp	Lj1030
Lj1029:
	movl	$2,(%esp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	movzwl	8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SRESOURCENOTFOUNDLANG$non_lazy_ptr-Lj1015(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION$non_lazy_ptr-Lj1015(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj1015(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1030:
Lj1016:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1017
	call	LFPC_RERAISE$stub
Lj1017:
	movl	-16(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	call	Lj1050
Lj1050:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1051
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1062
	jmp	Lj1063
Lj1062:
	movl	$1,(%esp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SRESOURCENOTFOUND$non_lazy_ptr-Lj1050(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION$non_lazy_ptr-Lj1050(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj1050(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1063:
Lj1051:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1052
	call	LFPC_RERAISE$stub
Lj1052:
	movl	-16(%ebp),%eax
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$ANSISTRING$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$ANSISTRING$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$LONGWORD$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$LONGWORD$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$LONGWORD$ANSISTRING$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$LONGWORD$ANSISTRING$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$ANSISTRING$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$ANSISTRING$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$LONGWORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$ANSISTRING$LONGWORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$LONGWORD$ANSISTRING$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$LONGWORD$ANSISTRING$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__FIND$LONGWORD$LONGWORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__SETID$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE$stub
	movl	-16(%ebp),%eax
	movl	$0,%edx
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE$stub
	movl	-16(%ebp),%eax
	movl	$0,%edx
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE$stub
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%ebx,%ecx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REMOVE$LONGINT$$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__REMOVE$LONGINT$$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$LONGINT$stub
	movl	-12(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%ebx,%ecx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE
_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	call	Lj1327
Lj1327:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1328
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1331
	jmp	Lj1332
Lj1331:
	jmp	Lj1328
Lj1332:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj1339
	jmp	Lj1340
Lj1339:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%esi
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%esi
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	%esi,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_RESOURCE_SRESOURCENOTFOUNDLANG$non_lazy_ptr-Lj1327(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION$non_lazy_ptr-Lj1327(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La11:
	movl	%ebp,%ecx
	leal	La11-Lj1327(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1340:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1367
	jmp	Lj1368
Lj1367:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	$0,%ecx
	call	L_CLASSES_TFPLIST_$__PUT$LONGINT$POINTER$stub
	jmp	Lj1375
Lj1368:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj1375:
	movl	-8(%ebp),%eax
	incl	28(%eax)
Lj1328:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1329
	call	LFPC_RERAISE$stub
Lj1329:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__INTERNALREMOVE$LONGINT
_RESOURCE_TRESOURCES_$__INTERNALREMOVE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1382
	jmp	Lj1383
Lj1382:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$0,%ecx
	call	L_CLASSES_TFPLIST_$__PUT$LONGINT$POINTER$stub
	jmp	Lj1390
Lj1383:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
Lj1390:
	movl	-8(%ebp),%eax
	incl	28(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__QUIETREMOVE$TABSTRACTRESOURCE$LONGINT$BOOLEAN
_RESOURCE_TRESOURCES_$__QUIETREMOVE$TABSTRACTRESOURCE$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj1397
	jmp	Lj1398
Lj1397:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$LONGINT$stub
	jmp	Lj1403
Lj1398:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE$stub
Lj1403:
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%ebx,%ecx
	call	L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM
_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$$TABSTRACTRESOURCEREADER$stub
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1428
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER$stub
Lj1428:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1429
	decl	%eax
	testl	%eax,%eax
	je	Lj1430
Lj1430:
	call	LFPC_RERAISE$stub
Lj1429:
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER
_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INTERNALCLEAR$stub
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__NOTIFYLOADED$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__LOADFROMFILE$ANSISTRING
_RESOURCE_TRESOURCES_$__LOADFROMFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj1453
Lj1453:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1454
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1461
	jmp	Lj1462
Lj1461:
	movl	-8(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1462:
	movw	$32,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1453(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$ANSISTRING$$TABSTRACTRESOURCEREADER$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1483
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER$stub
Lj1483:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movb	20(%eax),%al
	testb	%al,%al
	je	Lj1495
	jmp	Lj1496
Lj1495:
	movl	-8(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1496:
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1484
	decl	%eax
	testl	%eax,%eax
	je	Lj1485
Lj1485:
	call	LFPC_RERAISE$stub
Lj1484:
Lj1454:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1455
	call	LFPC_RERAISE$stub
Lj1455:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__LOADFROMFILE$ANSISTRING$TABSTRACTRESOURCEREADER
_RESOURCE_TRESOURCES_$__LOADFROMFILE$ANSISTRING$TABSTRACTRESOURCEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1506
Lj1506:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1507
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	jne	Lj1510
	jmp	Lj1511
Lj1510:
	movl	-12(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1511:
	movw	$32,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1506(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,32(%edx)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1524
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER$stub
Lj1524:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movb	20(%eax),%al
	testb	%al,%al
	je	Lj1534
	jmp	Lj1535
Lj1534:
	movl	-12(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1535:
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1525
	decl	%eax
	testl	%eax,%eax
	je	Lj1526
Lj1526:
	call	LFPC_RERAISE$stub
Lj1525:
Lj1507:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1508
	call	LFPC_RERAISE$stub
Lj1508:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REGISTERSTREAMER$TFPLIST$ANSISTRING$TCLASS
_RESOURCE_TRESOURCES_$__REGISTERSTREAMER$TFPLIST$ANSISTRING$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1540
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$264,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,260(%eax)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,256(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1564
	decl	-24(%ebp)
	.align 2
Lj1565:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-20(%ebp),%eax
	leal	-68(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-68(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1572
	jmp	Lj1573
Lj1572:
	jmp	Lj1583
	.align 2
Lj1582:
	movl	-20(%ebp),%eax
	movl	260(%eax),%eax
	movl	%eax,-20(%ebp)
Lj1583:
	movl	-20(%ebp),%eax
	movl	260(%eax),%eax
	testl	%eax,%eax
	jne	Lj1582
	jmp	Lj1584
Lj1584:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,260(%edx)
	jmp	Lj1540
Lj1573:
	cmpl	-24(%ebp),%ebx
	jg	Lj1565
Lj1564:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj1540:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1541
	call	LFPC_RERAISE$stub
Lj1541:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__SENDUPDATERAWDATA
_RESOURCE_TRESOURCES_$__SENDUPDATERAWDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1596
	decl	-8(%ebp)
	.align 2
Lj1597:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE$stub
	movl	%eax,%esi
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*136(%edx)
	cmpl	-8(%ebp),%ebx
	jg	Lj1597
Lj1596:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REGISTERREADER$ANSISTRING$TRESOURCEREADERCLASS
_RESOURCE_TRESOURCES_$__REGISTERREADER$ANSISTRING$TRESOURCEREADERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1609
Lj1609:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INITREADERLIST$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr-Lj1609(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__REGISTERSTREAMER$TFPLIST$ANSISTRING$TCLASS$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__REGISTERWRITER$ANSISTRING$TRESOURCEWRITERCLASS
_RESOURCE_TRESOURCES_$__REGISTERWRITER$ANSISTRING$TRESOURCEWRITERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1621
Lj1621:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__INITWRITERLIST$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr-Lj1621(%ebx),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__REGISTERSTREAMER$TFPLIST$ANSISTRING$TCLASS$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__WRITETOSTREAM$TSTREAM$TABSTRACTRESOURCEWRITER
_RESOURCE_TRESOURCES_$__WRITETOSTREAM$TSTREAM$TABSTRACTRESOURCEWRITER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__SENDUPDATERAWDATA$stub
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING
_RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1644
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_RESOURCE_TRESOURCES_$__FINDWRITERCLASS$ANSISTRING$$TRESOURCEWRITERCLASS$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	$0,%eax
	movl	%ebx,%ecx
	call	*112(%ecx)
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1663
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING$TABSTRACTRESOURCEWRITER$stub
Lj1663:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1664
	decl	%eax
	testl	%eax,%eax
	je	Lj1665
Lj1665:
	call	LFPC_RERAISE$stub
Lj1664:
Lj1644:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1645
	call	LFPC_RERAISE$stub
Lj1645:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING$TABSTRACTRESOURCEWRITER
_RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING$TABSTRACTRESOURCEWRITER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj1682
Lj1682:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1683
	movw	$65312,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1682(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1696
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__WRITETOSTREAM$TSTREAM$TABSTRACTRESOURCEWRITER$stub
Lj1696:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1697
	decl	%eax
	testl	%eax,%eax
	je	Lj1698
Lj1698:
	call	LFPC_RERAISE$stub
Lj1697:
Lj1683:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1684
	call	LFPC_RERAISE$stub
Lj1684:
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__CREATE$$TRESOURCES
_RESOURCE_TRESOURCES_$__CREATE$$TRESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1709
Lj1709:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1710
	jmp	Lj1711
Lj1710:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1711:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1716
	jmp	Lj1717
Lj1716:
	jmp	Lj1708
Lj1717:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1720
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1724
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1709(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	L_VMT_RESOURCETREE_TROOTRESTREENODE$non_lazy_ptr-Lj1709(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_RESOURCETREE_TROOTRESTREENODE$non_lazy_ptr-Lj1709(%ebx),%ecx
	call	*108(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj1709(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj1709(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-8(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	movl	$0,32(%eax)
	movl	-8(%ebp),%eax
	movb	$1,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
Lj1724:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1725
	call	LFPC_RERAISE$stub
Lj1725:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1761
	jmp	Lj1760
Lj1761:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1759
	jmp	Lj1760
Lj1759:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1760:
Lj1720:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1722
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1765
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1766
	jmp	Lj1767
Lj1766:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1767:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1765:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1764
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1764:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1722
Lj1722:
Lj1708:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TRESOURCES_$__DESTROY
_RESOURCE_TRESOURCES_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1774
	jmp	Lj1775
Lj1774:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1775:
	movl	-8(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1790
	jmp	Lj1789
Lj1790:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1788
	jmp	Lj1789
Lj1788:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1789:
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__SETDATASIZE$TABSTRACTRESOURCE$LONGWORD
_RESOURCE_TABSTRACTRESOURCEREADER_$__SETDATASIZE$TABSTRACTRESOURCE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__SETHEADERSIZE$TABSTRACTRESOURCE$LONGWORD
_RESOURCE_TABSTRACTRESOURCEREADER_$__SETHEADERSIZE$TABSTRACTRESOURCE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__SETDATAOFFSET$TABSTRACTRESOURCE$LONGWORD
_RESOURCE_TABSTRACTRESOURCEREADER_$__SETDATAOFFSET$TABSTRACTRESOURCE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,32(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__SETRAWDATA$TABSTRACTRESOURCE$TSTREAM
_RESOURCE_TABSTRACTRESOURCEREADER_$__SETRAWDATA$TABSTRACTRESOURCE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj1807
	jmp	Lj1808
Lj1807:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1808:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,40(%eax)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__CALLSUBREADERLOAD$TABSTRACTRESOURCEREADER$TRESOURCES$TSTREAM
_RESOURCE_TABSTRACTRESOURCEREADER_$__CALLSUBREADERLOAD$TABSTRACTRESOURCEREADER$TRESOURCES$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__ADDNOTREE$TRESOURCES$TABSTRACTRESOURCE
_RESOURCE_TABSTRACTRESOURCEREADER_$__ADDNOTREE$TRESOURCES$TABSTRACTRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_RESOURCE_TRESOURCES_$__ADDNOTREE$TABSTRACTRESOURCE$stub
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEREADER_$__GETTREE$TRESOURCES$$TOBJECT
_RESOURCE_TABSTRACTRESOURCEREADER_$__GETTREE$TRESOURCES$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TGENERICRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
_RESOURCE_TGENERICRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN:
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
.globl	_RESOURCE_TGENERICRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
_RESOURCE_TGENERICRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN:
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
.globl	_RESOURCE_TGENERICRESOURCE_$__NOTIFYRESOURCESLOADED
_RESOURCE_TGENERICRESOURCE_$__NOTIFYRESOURCESLOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TGENERICRESOURCE_$__UPDATERAWDATA
_RESOURCE_TGENERICRESOURCE_$__UPDATERAWDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TGENERICRESOURCE_$__GETTYPE$$TRESOURCEDESC
_RESOURCE_TGENERICRESOURCE_$__GETTYPE$$TRESOURCEDESC:
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
.globl	_RESOURCE_TGENERICRESOURCE_$__GETNAME$$TRESOURCEDESC
_RESOURCE_TGENERICRESOURCE_$__GETNAME$$TRESOURCEDESC:
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
.globl	_RESOURCE_TGENERICRESOURCE_$__CREATE$TRESOURCEDESC$TRESOURCEDESC$$TGENERICRESOURCE
_RESOURCE_TGENERICRESOURCE_$__CREATE$TRESOURCEDESC$TRESOURCEDESC$$TGENERICRESOURCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1852
Lj1852:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1853
	jmp	Lj1854
Lj1853:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1854:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1859
	jmp	Lj1860
Lj1859:
	jmp	Lj1851
Lj1860:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1863
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1867
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj1852(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-12(%ebp),%edx
	movl	%eax,52(%edx)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
	movl	L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr-Lj1852(%ebx),%edx
	movl	$0,%eax
	call	L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub
	movl	-12(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	8(%ebp),%edx
	call	L_RESOURCE_TRESOURCEDESC_$__ASSIGN$TRESOURCEDESC$stub
	movl	-12(%ebp),%eax
	movl	52(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub
	movl	-12(%ebp),%eax
	movl	56(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub
Lj1867:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1868
	call	LFPC_RERAISE$stub
Lj1868:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1904
	jmp	Lj1903
Lj1904:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1902
	jmp	Lj1903
Lj1902:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1903:
Lj1863:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1865
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1908
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1909
	jmp	Lj1910
Lj1909:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1910:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1908:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1907
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1907:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1865
Lj1865:
Lj1851:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TGENERICRESOURCE_$__DESTROY
_RESOURCE_TGENERICRESOURCE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1917
	jmp	Lj1918
Lj1917:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1918:
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	52(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_RESOURCE_TABSTRACTRESOURCE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1931
	jmp	Lj1930
Lj1931:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1929
	jmp	Lj1930
Lj1929:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1930:
	leave
	ret

.text
	.align 4
.globl	_RESOURCE_TABSTRACTRESOURCEWRITER_$__GETTREE$TRESOURCES$$TOBJECT
_RESOURCE_TABSTRACTRESOURCEWRITER_$__GETTREE$TRESOURCES$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_RESOURCE
_FINALIZE$_RESOURCE:
.reference __RESOURCE_finalize
.globl	__RESOURCE_finalize
__RESOURCE_finalize:
.reference _FINALIZE$_RESOURCE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1939
Lj1939:
	popl	%ebx
	movl	L_VMT_RESOURCE_TRESOURCES$non_lazy_ptr-Lj1939(%ebx),%eax
	call	L_RESOURCE_TRESOURCES_$__DISPOSEREADERLIST$stub
	movl	L_VMT_RESOURCE_TRESOURCES$non_lazy_ptr-Lj1939(%ebx),%eax
	call	L_RESOURCE_TRESOURCES_$__DISPOSEWRITERLIST$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$RESOURCE$_Ld1
_$RESOURCE$_Ld1:
	.byte	18
	.ascii	"EResourceException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEEXCEPTION
_VMT_RESOURCE_ERESOURCEEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$RESOURCE$_Ld1
	.long	0,0
	.long	_$RESOURCE$_Ld2
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
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
.globl	_$RESOURCE$_Ld4
_$RESOURCE$_Ld4:
	.byte	26
	.ascii	"EResourceDescTypeException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION
_VMT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld4
	.long	0,0
	.long	_$RESOURCE$_Ld5
	.long	_RTTI_RESOURCE_ERESOURCEDESCTYPEEXCEPTION
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
.globl	_$RESOURCE$_Ld7
_$RESOURCE$_Ld7:
	.byte	38
	.ascii	"EResourceDescChangeNotAllowedException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION
_VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld7
	.long	0,0
	.long	_$RESOURCE$_Ld8
	.long	_RTTI_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION
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
.globl	_$RESOURCE$_Ld10
_$RESOURCE$_Ld10:
	.byte	40
	.ascii	"EResourceLangIDChangeNotAllowedException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION
_VMT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld10
	.long	0,0
	.long	_$RESOURCE$_Ld11
	.long	_RTTI_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION
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
.globl	_$RESOURCE$_Ld13
_$RESOURCE$_Ld13:
	.byte	27
	.ascii	"EResourceDuplicateException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld13
	.long	0,0
	.long	_$RESOURCE$_Ld14
	.long	_RTTI_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
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
.globl	_$RESOURCE$_Ld16
_$RESOURCE$_Ld16:
	.byte	26
	.ascii	"EResourceNotFoundException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION
_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld16
	.long	0,0
	.long	_$RESOURCE$_Ld17
	.long	_RTTI_RESOURCE_ERESOURCENOTFOUNDEXCEPTION
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
.globl	_$RESOURCE$_Ld19
_$RESOURCE$_Ld19:
	.byte	23
	.ascii	"ENoMoreFreeIDsException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ENOMOREFREEIDSEXCEPTION
_VMT_RESOURCE_ENOMOREFREEIDSEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld19
	.long	0,0
	.long	_$RESOURCE$_Ld20
	.long	_RTTI_RESOURCE_ENOMOREFREEIDSEXCEPTION
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
.globl	_$RESOURCE$_Ld22
_$RESOURCE$_Ld22:
	.byte	24
	.ascii	"EResourceReaderException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEREADEREXCEPTION
_VMT_RESOURCE_ERESOURCEREADEREXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld22
	.long	0,0
	.long	_$RESOURCE$_Ld23
	.long	_RTTI_RESOURCE_ERESOURCEREADEREXCEPTION
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
.globl	_$RESOURCE$_Ld25
_$RESOURCE$_Ld25:
	.byte	32
	.ascii	"EResourceReaderNotFoundException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION
_VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEREADEREXCEPTION
	.long	_$RESOURCE$_Ld25
	.long	0,0
	.long	_$RESOURCE$_Ld26
	.long	_RTTI_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION
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
.globl	_$RESOURCE$_Ld28
_$RESOURCE$_Ld28:
	.byte	35
	.ascii	"EResourceReaderWrongFormatException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION
_VMT_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEREADEREXCEPTION
	.long	_$RESOURCE$_Ld28
	.long	0,0
	.long	_$RESOURCE$_Ld29
	.long	_RTTI_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION
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
.globl	_$RESOURCE$_Ld31
_$RESOURCE$_Ld31:
	.byte	45
	.ascii	"EResourceReaderUnexpectedEndOfStreamException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION
_VMT_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEREADEREXCEPTION
	.long	_$RESOURCE$_Ld31
	.long	0,0
	.long	_$RESOURCE$_Ld32
	.long	_RTTI_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION
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
.globl	_$RESOURCE$_Ld34
_$RESOURCE$_Ld34:
	.byte	24
	.ascii	"EResourceWriterException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEWRITEREXCEPTION
_VMT_RESOURCE_ERESOURCEWRITEREXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_$RESOURCE$_Ld34
	.long	0,0
	.long	_$RESOURCE$_Ld35
	.long	_RTTI_RESOURCE_ERESOURCEWRITEREXCEPTION
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
.globl	_$RESOURCE$_Ld37
_$RESOURCE$_Ld37:
	.byte	32
	.ascii	"EResourceWriterNotFoundException"

.const_data
	.align 2
.globl	_VMT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION
_VMT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION:
	.long	12,-12
	.long	_VMT_RESOURCE_ERESOURCEWRITEREXCEPTION
	.long	_$RESOURCE$_Ld37
	.long	0,0
	.long	_$RESOURCE$_Ld38
	.long	_RTTI_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION
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
.globl	_$RESOURCE$_Ld40
_$RESOURCE$_Ld40:
	.byte	17
	.ascii	"TAbstractResource"

.const_data
	.align 2
.globl	_VMT_RESOURCE_TABSTRACTRESOURCE
_VMT_RESOURCE_TABSTRACTRESOURCE:
	.long	52,-52
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESOURCE$_Ld40
	.long	0,0
	.long	_$RESOURCE$_Ld41
	.long	_RTTI_RESOURCE_TABSTRACTRESOURCE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCE_TABSTRACTRESOURCE_$__DESTROY
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE
	.long	FPC_ABSTRACTERROR
	.long	_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld43
_$RESOURCE$_Ld43:
	.byte	13
	.ascii	"TResourceDesc"

.const_data
	.align 2
.globl	_VMT_RESOURCE_TRESOURCEDESC
_VMT_RESOURCE_TRESOURCEDESC:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESOURCE$_Ld43
	.long	0,0
	.long	_$RESOURCE$_Ld44
	.long	_RTTI_RESOURCE_TRESOURCEDESC
	.long	_INIT_RESOURCE_TRESOURCEDESC
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
.globl	_$RESOURCE$_Ld46
_$RESOURCE$_Ld46:
	.byte	10
	.ascii	"TResources"

.const_data
	.align 2
.globl	_VMT_RESOURCE_TRESOURCES
_VMT_RESOURCE_TRESOURCES:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESOURCE$_Ld46
	.long	0,0
	.long	_$RESOURCE$_Ld47
	.long	_RTTI_RESOURCE_TRESOURCES
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCE_TRESOURCES_$__DESTROY
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
.globl	_$RESOURCE$_Ld49
_$RESOURCE$_Ld49:
	.byte	16
	.ascii	"TGenericResource"

.const_data
	.align 2
.globl	_VMT_RESOURCE_TGENERICRESOURCE
_VMT_RESOURCE_TGENERICRESOURCE:
	.long	60,-60
	.long	_VMT_RESOURCE_TABSTRACTRESOURCE
	.long	_$RESOURCE$_Ld49
	.long	0,0
	.long	_$RESOURCE$_Ld50
	.long	_RTTI_RESOURCE_TGENERICRESOURCE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_RESOURCE_TGENERICRESOURCE_$__DESTROY
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
	.long	_RESOURCE_TGENERICRESOURCE_$__GETTYPE$$TRESOURCEDESC
	.long	_RESOURCE_TGENERICRESOURCE_$__GETNAME$$TRESOURCEDESC
	.long	_RESOURCE_TGENERICRESOURCE_$__CHANGEDESCTYPEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_RESOURCE_TGENERICRESOURCE_$__CHANGEDESCVALUEALLOWED$TRESOURCEDESC$$BOOLEAN
	.long	_RESOURCE_TGENERICRESOURCE_$__NOTIFYRESOURCESLOADED
	.long	_RESOURCE_TABSTRACTRESOURCE_$__CREATE$$TABSTRACTRESOURCE
	.long	_RESOURCE_TGENERICRESOURCE_$__CREATE$TRESOURCEDESC$TRESOURCEDESC$$TGENERICRESOURCE
	.long	_RESOURCE_TABSTRACTRESOURCE_$__COMPARECONTENTS$TABSTRACTRESOURCE$$BOOLEAN
	.long	_RESOURCE_TGENERICRESOURCE_$__UPDATERAWDATA
	.long	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld52
_$RESOURCE$_Ld52:
	.byte	23
	.ascii	"TAbstractResourceReader"

.const_data
	.align 2
.globl	_VMT_RESOURCE_TABSTRACTRESOURCEREADER
_VMT_RESOURCE_TABSTRACTRESOURCEREADER:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESOURCE$_Ld52
	.long	0,0
	.long	_$RESOURCE$_Ld53
	.long	_RTTI_RESOURCE_TABSTRACTRESOURCEREADER
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld55
_$RESOURCE$_Ld55:
	.byte	23
	.ascii	"TAbstractResourceWriter"

.const_data
	.align 2
.globl	_VMT_RESOURCE_TABSTRACTRESOURCEWRITER
_VMT_RESOURCE_TABSTRACTRESOURCEWRITER:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$RESOURCE$_Ld55
	.long	0,0
	.long	_$RESOURCE$_Ld56
	.long	_RTTI_RESOURCE_TABSTRACTRESOURCEWRITER
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_RESOURCE
_THREADVARLIST_RESOURCE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$RESOURCE$_Ld59
_$RESOURCE$_Ld59:
	.short	0,1
	.long	0,-1,8
.reference _$RESOURCE$_Ld58
.globl	_$RESOURCE$_Ld58
_$RESOURCE$_Ld58:
.reference _$RESOURCE$_Ld59
	.ascii	"RESOURCE\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld61
_$RESOURCE$_Ld61:
	.short	0,1
	.long	0,-1,46
.reference _$RESOURCE$_Ld60
.globl	_$RESOURCE$_Ld60
_$RESOURCE$_Ld60:
.reference _$RESOURCE$_Ld61
	.ascii	"Cannot find resource reader for extension '%s'\000"
	.align 2
.globl	_$RESOURCE$_Ld63
_$RESOURCE$_Ld63:
	.short	0,1
	.long	0,-1,27
.reference _$RESOURCE$_Ld62
.globl	_$RESOURCE$_Ld62
_$RESOURCE$_Ld62:
.reference _$RESOURCE$_Ld63
	.ascii	"resource.sreadernotfoundext\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld65
_$RESOURCE$_Ld65:
	.short	0,1
	.long	0,-1,46
.reference _$RESOURCE$_Ld64
.globl	_$RESOURCE$_Ld64
_$RESOURCE$_Ld64:
.reference _$RESOURCE$_Ld65
	.ascii	"Cannot find a resource reader: unknown format.\000"
	.align 2
.globl	_$RESOURCE$_Ld67
_$RESOURCE$_Ld67:
	.short	0,1
	.long	0,-1,29
.reference _$RESOURCE$_Ld66
.globl	_$RESOURCE$_Ld66
_$RESOURCE$_Ld66:
.reference _$RESOURCE$_Ld67
	.ascii	"resource.sreadernotfoundprobe\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld69
_$RESOURCE$_Ld69:
	.short	0,1
	.long	0,-1,46
.reference _$RESOURCE$_Ld68
.globl	_$RESOURCE$_Ld68
_$RESOURCE$_Ld68:
.reference _$RESOURCE$_Ld69
	.ascii	"Cannot find resource writer for extension '%s'\000"
	.align 2
.globl	_$RESOURCE$_Ld71
_$RESOURCE$_Ld71:
	.short	0,1
	.long	0,-1,27
.reference _$RESOURCE$_Ld70
.globl	_$RESOURCE$_Ld70
_$RESOURCE$_Ld70:
.reference _$RESOURCE$_Ld71
	.ascii	"resource.swriternotfoundext\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld73
_$RESOURCE$_Ld73:
	.short	0,1
	.long	0,-1,37
.reference _$RESOURCE$_Ld72
.globl	_$RESOURCE$_Ld72
_$RESOURCE$_Ld72:
.reference _$RESOURCE$_Ld73
	.ascii	"Cannot modify %s resource description\000"
	.align 2
.globl	_$RESOURCE$_Ld75
_$RESOURCE$_Ld75:
	.short	0,1
	.long	0,-1,30
.reference _$RESOURCE$_Ld74
.globl	_$RESOURCE$_Ld74
_$RESOURCE$_Ld74:
.reference _$RESOURCE$_Ld75
	.ascii	"resource.sdescchangenotallowed\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld77
_$RESOURCE$_Ld77:
	.short	0,1
	.long	0,-1,37
.reference _$RESOURCE$_Ld76
.globl	_$RESOURCE$_Ld76
_$RESOURCE$_Ld76:
.reference _$RESOURCE$_Ld77
	.ascii	"Cannot modify %s resource language ID\000"
	.align 2
.globl	_$RESOURCE$_Ld79
_$RESOURCE$_Ld79:
	.short	0,1
	.long	0,-1,32
.reference _$RESOURCE$_Ld78
.globl	_$RESOURCE$_Ld78
_$RESOURCE$_Ld78:
.reference _$RESOURCE$_Ld79
	.ascii	"resource.slangidchangenotallowed\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld81
_$RESOURCE$_Ld81:
	.short	0,1
	.long	0,-1,56
.reference _$RESOURCE$_Ld80
.globl	_$RESOURCE$_Ld80
_$RESOURCE$_Ld80:
.reference _$RESOURCE$_Ld81
	.ascii	"Duplicate resource: Type = %s, Name = %s, Lang ID ="
	.ascii	" %.4x\000"
	.align 2
.globl	_$RESOURCE$_Ld83
_$RESOURCE$_Ld83:
	.short	0,1
	.long	0,-1,22
.reference _$RESOURCE$_Ld82
.globl	_$RESOURCE$_Ld82
_$RESOURCE$_Ld82:
.reference _$RESOURCE$_Ld83
	.ascii	"resource.sresduplicate\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld85
_$RESOURCE$_Ld85:
	.short	0,1
	.long	0,-1,42
.reference _$RESOURCE$_Ld84
.globl	_$RESOURCE$_Ld84
_$RESOURCE$_Ld84:
.reference _$RESOURCE$_Ld85
	.ascii	"Cannot find resource: Type = %s, Name = %s\000"
	.align 2
.globl	_$RESOURCE$_Ld87
_$RESOURCE$_Ld87:
	.short	0,1
	.long	0,-1,26
.reference _$RESOURCE$_Ld86
.globl	_$RESOURCE$_Ld86
_$RESOURCE$_Ld86:
.reference _$RESOURCE$_Ld87
	.ascii	"resource.sresourcenotfound\000"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld89
_$RESOURCE$_Ld89:
	.short	0,1
	.long	0,-1,58
.reference _$RESOURCE$_Ld88
.globl	_$RESOURCE$_Ld88
_$RESOURCE$_Ld88:
.reference _$RESOURCE$_Ld89
	.ascii	"Cannot find resource: Type = %s, Name = %s, Lang ID"
	.ascii	" = %.4x\000"
	.align 2
.globl	_$RESOURCE$_Ld91
_$RESOURCE$_Ld91:
	.short	0,1
	.long	0,-1,30
.reference _$RESOURCE$_Ld90
.globl	_$RESOURCE$_Ld90
_$RESOURCE$_Ld90:
.reference _$RESOURCE$_Ld91
	.ascii	"resource.sresourcenotfoundlang\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_RESOURCE_REGISTEREDREADERS
_TC_RESOURCE_REGISTEREDREADERS:
	.long	0

.data
	.align 2
.globl	_TC_RESOURCE_REGISTEREDWRITERS
_TC_RESOURCE_REGISTEREDWRITERS:
	.long	0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
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

L_RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETNAME$$ANSISTRING
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

L_RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CANCHANGETYPE$TDESCTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CANCHANGEVALUE
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

L_RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__CREATE$$TRESOURCEDESC
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

L_RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__SETNAME$ANSISTRING
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

L_RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__GETID$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__GETDATASIZE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__CREATE$crcB2CB768D
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

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__GETCACHED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCACHED$BOOLEAN$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCACHED$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCEDESC_$__SETOWNER$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCEDESC_$__SETOWNER$TABSTRACTRESOURCE
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

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__COMPARE$TSTREAM$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM$stub:
.indirect_symbol _RESDATASTREAM_TRESOURCEDATASTREAM_$__SETCUSTOMSTREAM$TSTREAM
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

L_RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__GETCOUNT$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__GETITEM$LONGINT$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETCACHEDATA$BOOLEAN
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

L_RESOURCE_TRESOURCES_$__DISPOSESTREAMERLIST$TFPLIST$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__DISPOSESTREAMERLIST$TFPLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INITREADERLIST$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INITREADERLIST
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

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
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

L_RESOURCE_TRESOURCES_$__BEGINMOVEFROM$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__BEGINMOVEFROM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INTERNALADD$TABSTRACTRESOURCE$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__ENDMOVEFROM$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__ENDMOVEFROM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INITWRITERLIST$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INITWRITERLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INTERNALFIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESMERGER_TRESOURCEMERGER_$__MERGE$TABSTRACTRESOURCE$TABSTRACTRESOURCE$$BOOLEAN$stub:
.indirect_symbol _RESMERGER_TRESOURCEMERGER_$__MERGE$TABSTRACTRESOURCE$TABSTRACTRESOURCE$$BOOLEAN
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

L_RESOURCE_TRESOURCES_$__QUIETREMOVE$TABSTRACTRESOURCE$LONGINT$BOOLEAN$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__QUIETREMOVE$TABSTRACTRESOURCE$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
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

L_CLASSES_TFPLIST_$__PACK$stub:
.indirect_symbol _CLASSES_TFPLIST_$__PACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__REMOVE$TABSTRACTRESOURCE$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__CLEAR$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INTERNALCLEAR$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INTERNALCLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__FIND$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$WORD$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INTERNALREMOVE$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCETREE_TRESOURCETREENODE_$__REMOVE$TRESOURCEDESC$TRESOURCEDESC$$TABSTRACTRESOURCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__INTERNALREMOVE$LONGINT$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__INTERNALREMOVE$LONGINT
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

L_CLASSES_TFPLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__PUT$LONGINT$POINTER
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

L_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$$TABSTRACTRESOURCEREADER$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$$TABSTRACTRESOURCEREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__LOADFROMSTREAM$TSTREAM$TABSTRACTRESOURCEREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__NOTIFYLOADED$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__NOTIFYLOADED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
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

L_RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$ANSISTRING$$TABSTRACTRESOURCEREADER$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__FINDREADER$TSTREAM$ANSISTRING$$TABSTRACTRESOURCEREADER
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

L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_GETMEM$LONGWORD$$POINTER
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

L_RESOURCE_TRESOURCES_$__REGISTERSTREAMER$TFPLIST$ANSISTRING$TCLASS$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__REGISTERSTREAMER$TFPLIST$ANSISTRING$TCLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__SENDUPDATERAWDATA$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__SENDUPDATERAWDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__FINDWRITERCLASS$ANSISTRING$$TRESOURCEWRITERCLASS$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__FINDWRITERCLASS$ANSISTRING$$TRESOURCEWRITERCLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING$TABSTRACTRESOURCEWRITER$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__WRITETOFILE$ANSISTRING$TABSTRACTRESOURCEWRITER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__WRITETOSTREAM$TSTREAM$TABSTRACTRESOURCEWRITER$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__WRITETOSTREAM$TSTREAM$TABSTRACTRESOURCEWRITER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__CLEAR$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__ADDNOTREE$TABSTRACTRESOURCE$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__ADDNOTREE$TABSTRACTRESOURCE
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

L_RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC$stub:
.indirect_symbol _RESOURCE_TABSTRACTRESOURCE_$__SETDESCOWNER$TRESOURCEDESC
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

L_RESOURCE_TRESOURCES_$__DISPOSEREADERLIST$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__DISPOSEREADERLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_RESOURCE_TRESOURCES_$__DISPOSEWRITERLIST$stub:
.indirect_symbol _RESOURCE_TRESOURCES_$__DISPOSEWRITERLIST
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
.globl	_INIT_RESOURCE_TDESCTYPE
_INIT_RESOURCE_TDESCTYPE:
	.byte	3,9
	.ascii	"TDescType"
	.byte	5
	.long	0,1,0
	.byte	6
	.ascii	"dtName"
	.byte	4
	.ascii	"dtID"
	.byte	8
	.ascii	"resource"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TDESCTYPE
_RTTI_RESOURCE_TDESCTYPE:
	.byte	3,9
	.ascii	"TDescType"
	.byte	5
	.long	0,1,0
	.byte	6
	.ascii	"dtName"
	.byte	4
	.ascii	"dtID"
	.byte	8
	.ascii	"resource"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TDESCTYPE_s2o
_RTTI_RESOURCE_TDESCTYPE_s2o:
	.long	2,1
	.long	_RTTI_RESOURCE_TDESCTYPE+31
	.long	0
	.long	_RTTI_RESOURCE_TDESCTYPE+24

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TDESCTYPE_o2s
_RTTI_RESOURCE_TDESCTYPE_o2s:
	.long	0
	.long	_RTTI_RESOURCE_TDESCTYPE+24
	.long	_RTTI_RESOURCE_TDESCTYPE+31

.const_data
	.align 2
.globl	_$RESOURCE$_Ld2
_$RESOURCE$_Ld2:
	.short	0
	.long	_$RESOURCE$_Ld3
	.align 2
.globl	_$RESOURCE$_Ld3
_$RESOURCE$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEEXCEPTION
_INIT_RESOURCE_ERESOURCEEXCEPTION:
	.byte	15,18
	.ascii	"EResourceException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEEXCEPTION
_RTTI_RESOURCE_ERESOURCEEXCEPTION:
	.byte	15,18
	.ascii	"EResourceException"
	.long	_VMT_RESOURCE_ERESOURCEEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld5
_$RESOURCE$_Ld5:
	.short	0
	.long	_$RESOURCE$_Ld6
	.align 2
.globl	_$RESOURCE$_Ld6
_$RESOURCE$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION
_INIT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION:
	.byte	15,26
	.ascii	"EResourceDescTypeException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEDESCTYPEEXCEPTION
_RTTI_RESOURCE_ERESOURCEDESCTYPEEXCEPTION:
	.byte	15,26
	.ascii	"EResourceDescTypeException"
	.long	_VMT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld8
_$RESOURCE$_Ld8:
	.short	0
	.long	_$RESOURCE$_Ld9
	.align 2
.globl	_$RESOURCE$_Ld9
_$RESOURCE$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION
_INIT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION:
	.byte	15,38
	.ascii	"EResourceDescChangeNotAllowedException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION
_RTTI_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION:
	.byte	15,38
	.ascii	"EResourceDescChangeNotAllowedException"
	.long	_VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld11
_$RESOURCE$_Ld11:
	.short	0
	.long	_$RESOURCE$_Ld12
	.align 2
.globl	_$RESOURCE$_Ld12
_$RESOURCE$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION
_INIT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION:
	.byte	15,40
	.ascii	"EResourceLangIDChangeNotAllowedException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION
_RTTI_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION:
	.byte	15,40
	.ascii	"EResourceLangIDChangeNotAllowedException"
	.long	_VMT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld14
_$RESOURCE$_Ld14:
	.short	0
	.long	_$RESOURCE$_Ld15
	.align 2
.globl	_$RESOURCE$_Ld15
_$RESOURCE$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
_INIT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION:
	.byte	15,27
	.ascii	"EResourceDuplicateException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
_RTTI_RESOURCE_ERESOURCEDUPLICATEEXCEPTION:
	.byte	15,27
	.ascii	"EResourceDuplicateException"
	.long	_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld17
_$RESOURCE$_Ld17:
	.short	0
	.long	_$RESOURCE$_Ld18
	.align 2
.globl	_$RESOURCE$_Ld18
_$RESOURCE$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION
_INIT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION:
	.byte	15,26
	.ascii	"EResourceNotFoundException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCENOTFOUNDEXCEPTION
_RTTI_RESOURCE_ERESOURCENOTFOUNDEXCEPTION:
	.byte	15,26
	.ascii	"EResourceNotFoundException"
	.long	_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld20
_$RESOURCE$_Ld20:
	.short	0
	.long	_$RESOURCE$_Ld21
	.align 2
.globl	_$RESOURCE$_Ld21
_$RESOURCE$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ENOMOREFREEIDSEXCEPTION
_INIT_RESOURCE_ENOMOREFREEIDSEXCEPTION:
	.byte	15,23
	.ascii	"ENoMoreFreeIDsException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ENOMOREFREEIDSEXCEPTION
_RTTI_RESOURCE_ENOMOREFREEIDSEXCEPTION:
	.byte	15,23
	.ascii	"ENoMoreFreeIDsException"
	.long	_VMT_RESOURCE_ENOMOREFREEIDSEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld23
_$RESOURCE$_Ld23:
	.short	0
	.long	_$RESOURCE$_Ld24
	.align 2
.globl	_$RESOURCE$_Ld24
_$RESOURCE$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEREADEREXCEPTION
_INIT_RESOURCE_ERESOURCEREADEREXCEPTION:
	.byte	15,24
	.ascii	"EResourceReaderException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEREADEREXCEPTION
_RTTI_RESOURCE_ERESOURCEREADEREXCEPTION:
	.byte	15,24
	.ascii	"EResourceReaderException"
	.long	_VMT_RESOURCE_ERESOURCEREADEREXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld26
_$RESOURCE$_Ld26:
	.short	0
	.long	_$RESOURCE$_Ld27
	.align 2
.globl	_$RESOURCE$_Ld27
_$RESOURCE$_Ld27:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION
_INIT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION:
	.byte	15,32
	.ascii	"EResourceReaderNotFoundException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION
_RTTI_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION:
	.byte	15,32
	.ascii	"EResourceReaderNotFoundException"
	.long	_VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEREADEREXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld29
_$RESOURCE$_Ld29:
	.short	0
	.long	_$RESOURCE$_Ld30
	.align 2
.globl	_$RESOURCE$_Ld30
_$RESOURCE$_Ld30:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION
_INIT_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION:
	.byte	15,35
	.ascii	"EResourceReaderWrongFormatException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION
_RTTI_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION:
	.byte	15,35
	.ascii	"EResourceReaderWrongFormatException"
	.long	_VMT_RESOURCE_ERESOURCEREADERWRONGFORMATEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEREADEREXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld32
_$RESOURCE$_Ld32:
	.short	0
	.long	_$RESOURCE$_Ld33
	.align 2
.globl	_$RESOURCE$_Ld33
_$RESOURCE$_Ld33:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION
_INIT_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION:
	.byte	15,45
	.ascii	"EResourceReaderUnexpectedEndOfStreamException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION
_RTTI_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION:
	.byte	15,45
	.ascii	"EResourceReaderUnexpectedEndOfStreamException"
	.long	_VMT_RESOURCE_ERESOURCEREADERUNEXPECTEDENDOFSTREAMEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEREADEREXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld35
_$RESOURCE$_Ld35:
	.short	0
	.long	_$RESOURCE$_Ld36
	.align 2
.globl	_$RESOURCE$_Ld36
_$RESOURCE$_Ld36:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEWRITEREXCEPTION
_INIT_RESOURCE_ERESOURCEWRITEREXCEPTION:
	.byte	15,24
	.ascii	"EResourceWriterException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEWRITEREXCEPTION
_RTTI_RESOURCE_ERESOURCEWRITEREXCEPTION:
	.byte	15,24
	.ascii	"EResourceWriterException"
	.long	_VMT_RESOURCE_ERESOURCEWRITEREXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEEXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld38
_$RESOURCE$_Ld38:
	.short	0
	.long	_$RESOURCE$_Ld39
	.align 2
.globl	_$RESOURCE$_Ld39
_$RESOURCE$_Ld39:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION
_INIT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION:
	.byte	15,32
	.ascii	"EResourceWriterNotFoundException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION
_RTTI_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION:
	.byte	15,32
	.ascii	"EResourceWriterNotFoundException"
	.long	_VMT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION
	.long	_RTTI_RESOURCE_ERESOURCEWRITEREXCEPTION
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld41
_$RESOURCE$_Ld41:
	.short	0
	.long	_$RESOURCE$_Ld42
	.align 2
.globl	_$RESOURCE$_Ld42
_$RESOURCE$_Ld42:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TABSTRACTRESOURCE
_INIT_RESOURCE_TABSTRACTRESOURCE:
	.byte	15,17
	.ascii	"TAbstractResource"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TABSTRACTRESOURCE
_RTTI_RESOURCE_TABSTRACTRESOURCE:
	.byte	15,17
	.ascii	"TAbstractResource"
	.long	_VMT_RESOURCE_TABSTRACTRESOURCE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF210
_INIT_RESOURCE_DEF210:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF213
_INIT_RESOURCE_DEF213:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$RESOURCE$_Ld44
_$RESOURCE$_Ld44:
	.short	0
	.long	_$RESOURCE$_Ld45
	.align 2
.globl	_$RESOURCE$_Ld45
_$RESOURCE$_Ld45:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TRESOURCEDESC
_INIT_RESOURCE_TRESOURCEDESC:
	.byte	15,13
	.ascii	"TResourceDesc"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TRESOURCEDESC
_RTTI_RESOURCE_TRESOURCEDESC:
	.byte	15,13
	.ascii	"TResourceDesc"
	.long	_VMT_RESOURCE_TRESOURCEDESC
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF290
_INIT_RESOURCE_DEF290:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF324
_INIT_RESOURCE_DEF324:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF294
_INIT_RESOURCE_DEF294:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF306
_INIT_RESOURCE_DEF306:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF309
_INIT_RESOURCE_DEF309:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_RESOURCE_DEF280
_INIT_RESOURCE_DEF280:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$RESOURCE$_Ld47
_$RESOURCE$_Ld47:
	.short	0
	.long	_$RESOURCE$_Ld48
	.align 2
.globl	_$RESOURCE$_Ld48
_$RESOURCE$_Ld48:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TRESOURCES
_INIT_RESOURCE_TRESOURCES:
	.byte	15,10
	.ascii	"TResources"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TRESOURCES
_RTTI_RESOURCE_TRESOURCES:
	.byte	15,10
	.ascii	"TResources"
	.long	_VMT_RESOURCE_TRESOURCES
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TRESOURCECLASS
_INIT_RESOURCE_TRESOURCECLASS:
	.byte	0
	.ascii	"\016TResourceClass"

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TRESOURCECLASS
_RTTI_RESOURCE_TRESOURCECLASS:
	.byte	0
	.ascii	"\016TResourceClass"

.const_data
	.align 2
.globl	_$RESOURCE$_Ld50
_$RESOURCE$_Ld50:
	.short	0
	.long	_$RESOURCE$_Ld51
	.align 2
.globl	_$RESOURCE$_Ld51
_$RESOURCE$_Ld51:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TGENERICRESOURCE
_INIT_RESOURCE_TGENERICRESOURCE:
	.byte	15,16
	.ascii	"TGenericResource"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TGENERICRESOURCE
_RTTI_RESOURCE_TGENERICRESOURCE:
	.byte	15,16
	.ascii	"TGenericResource"
	.long	_VMT_RESOURCE_TGENERICRESOURCE
	.long	_RTTI_RESOURCE_TABSTRACTRESOURCE
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld53
_$RESOURCE$_Ld53:
	.short	0
	.long	_$RESOURCE$_Ld54
	.align 2
.globl	_$RESOURCE$_Ld54
_$RESOURCE$_Ld54:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TABSTRACTRESOURCEREADER
_INIT_RESOURCE_TABSTRACTRESOURCEREADER:
	.byte	15,23
	.ascii	"TAbstractResourceReader"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TABSTRACTRESOURCEREADER
_RTTI_RESOURCE_TABSTRACTRESOURCEREADER:
	.byte	15,23
	.ascii	"TAbstractResourceReader"
	.long	_VMT_RESOURCE_TABSTRACTRESOURCEREADER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_$RESOURCE$_Ld56
_$RESOURCE$_Ld56:
	.short	0
	.long	_$RESOURCE$_Ld57
	.align 2
.globl	_$RESOURCE$_Ld57
_$RESOURCE$_Ld57:
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TABSTRACTRESOURCEWRITER
_INIT_RESOURCE_TABSTRACTRESOURCEWRITER:
	.byte	15,23
	.ascii	"TAbstractResourceWriter"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TABSTRACTRESOURCEWRITER
_RTTI_RESOURCE_TABSTRACTRESOURCEWRITER:
	.byte	15,23
	.ascii	"TAbstractResourceWriter"
	.long	_VMT_RESOURCE_TABSTRACTRESOURCEWRITER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"resource"
	.short	0

.const_data
	.align 2
.globl	_INIT_RESOURCE_TRESOURCEREADERCLASS
_INIT_RESOURCE_TRESOURCEREADERCLASS:
	.byte	0
	.ascii	"\024TResourceReaderClass"

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TRESOURCEREADERCLASS
_RTTI_RESOURCE_TRESOURCEREADERCLASS:
	.byte	0
	.ascii	"\024TResourceReaderClass"

.const_data
	.align 2
.globl	_INIT_RESOURCE_TRESOURCEWRITERCLASS
_INIT_RESOURCE_TRESOURCEWRITERCLASS:
	.byte	0
	.ascii	"\024TResourceWriterClass"

.const_data
	.align 2
.globl	_RTTI_RESOURCE_TRESOURCEWRITERCLASS
_RTTI_RESOURCE_TRESOURCEWRITERCLASS:
	.byte	0
	.ascii	"\024TResourceWriterClass"
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
L_VMT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCEDESCTYPEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SDESCCHANGENOTALLOWED$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SDESCCHANGENOTALLOWED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCEDESCCHANGENOTALLOWEDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM$non_lazy_ptr:
.indirect_symbol _VMT_RESDATASTREAM_TCACHEDRESOURCEDATASTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESDATASTREAM_TRESOURCEDATASTREAM$non_lazy_ptr:
.indirect_symbol _VMT_RESDATASTREAM_TRESOURCEDATASTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SLANGIDCHANGENOTALLOWED$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SLANGIDCHANGENOTALLOWED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCELANGIDCHANGENOTALLOWEDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_RESOURCE_REGISTEREDREADERS$non_lazy_ptr:
.indirect_symbol _TC_RESOURCE_REGISTEREDREADERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_RESOURCE_REGISTEREDWRITERS$non_lazy_ptr:
.indirect_symbol _TC_RESOURCE_REGISTEREDWRITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SREADERNOTFOUNDEXT$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SREADERNOTFOUNDEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCEREADERNOTFOUNDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SREADERNOTFOUNDPROBE$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SREADERNOTFOUNDPROBE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SWRITERNOTFOUNDEXT$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SWRITERNOTFOUNDEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCEWRITERNOTFOUNDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESMERGER_TRESOURCEMERGER$non_lazy_ptr:
.indirect_symbol _VMT_RESMERGER_TRESOURCEMERGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SRESDUPLICATE$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SRESDUPLICATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCEDUPLICATEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SRESOURCENOTFOUNDLANG$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SRESOURCENOTFOUNDLANG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_ERESOURCENOTFOUNDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RESOURCE_SRESOURCENOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_RESOURCE_SRESOURCENOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCETREE_TROOTRESTREENODE$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCETREE_TROOTRESTREENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_TRESOURCEDESC$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TRESOURCEDESC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_RESOURCE_TRESOURCES$non_lazy_ptr:
.indirect_symbol _VMT_RESOURCE_TRESOURCES
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_RESOURCE_START
_RESSTR_RESOURCE_START:
	.long	_$RESOURCE$_Ld58
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_RESOURCE_SREADERNOTFOUNDEXT
_RESSTR_RESOURCE_SREADERNOTFOUNDEXT:
	.long	_$RESOURCE$_Ld62
	.long	_$RESOURCE$_Ld60
	.long	_$RESOURCE$_Ld60
	.long	74104855

.data
	.align 2
.globl	_RESSTR_RESOURCE_SREADERNOTFOUNDPROBE
_RESSTR_RESOURCE_SREADERNOTFOUNDPROBE:
	.long	_$RESOURCE$_Ld66
	.long	_$RESOURCE$_Ld64
	.long	_$RESOURCE$_Ld64
	.long	96014430

.data
	.align 2
.globl	_RESSTR_RESOURCE_SWRITERNOTFOUNDEXT
_RESSTR_RESOURCE_SWRITERNOTFOUNDEXT:
	.long	_$RESOURCE$_Ld70
	.long	_$RESOURCE$_Ld68
	.long	_$RESOURCE$_Ld68
	.long	100909079

.data
	.align 2
.globl	_RESSTR_RESOURCE_SDESCCHANGENOTALLOWED
_RESSTR_RESOURCE_SDESCCHANGENOTALLOWED:
	.long	_$RESOURCE$_Ld74
	.long	_$RESOURCE$_Ld72
	.long	_$RESOURCE$_Ld72
	.long	166134030

.data
	.align 2
.globl	_RESSTR_RESOURCE_SLANGIDCHANGENOTALLOWED
_RESSTR_RESOURCE_SLANGIDCHANGENOTALLOWED:
	.long	_$RESOURCE$_Ld78
	.long	_$RESOURCE$_Ld76
	.long	_$RESOURCE$_Ld76
	.long	193287876

.data
	.align 2
.globl	_RESSTR_RESOURCE_SRESDUPLICATE
_RESSTR_RESOURCE_SRESDUPLICATE:
	.long	_$RESOURCE$_Ld82
	.long	_$RESOURCE$_Ld80
	.long	_$RESOURCE$_Ld80
	.long	261915672

.data
	.align 2
.globl	_RESSTR_RESOURCE_SRESOURCENOTFOUND
_RESSTR_RESOURCE_SRESOURCENOTFOUND:
	.long	_$RESOURCE$_Ld86
	.long	_$RESOURCE$_Ld84
	.long	_$RESOURCE$_Ld84
	.long	44722979

.data
	.align 2
.globl	_RESSTR_RESOURCE_SRESOURCENOTFOUNDLANG
_RESSTR_RESOURCE_SRESOURCENOTFOUNDLANG:
	.long	_$RESOURCE$_Ld90
	.long	_$RESOURCE$_Ld88
	.long	_$RESOURCE$_Ld88
	.long	245138328

.data
	.align 2
.globl	_RESSTR_RESOURCE_END
_RESSTR_RESOURCE_END:
	.long	_RESSTR_RESOURCE_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

