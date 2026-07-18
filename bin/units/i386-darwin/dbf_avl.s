# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_AVL_ROTL$PNODE
_DBF_AVL_ROTL$PNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_ROTR$PNODE
_DBF_AVL_ROTR$PNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_HEIGHT$PNODE$$LONGINT
_DBF_AVL_HEIGHT$PNODE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	jmp	Lj26
Lj25:
	movl	$0,-8(%ebp)
	jmp	Lj29
Lj26:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_DBF_AVL_HEIGHT$PNODE$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_DBF_AVL_HEIGHT$PNODE$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj40
	jmp	Lj41
Lj40:
	movl	-16(%ebp),%eax
	jmp	Lj44
Lj41:
	movl	-12(%ebp),%eax
Lj44:
	incl	%eax
	movl	%eax,-8(%ebp)
Lj29:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN
_DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	jmp	Lj50
Lj49:
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj55
Lj50:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj61
	jmp	Lj57
Lj61:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-16(%ebp),%edx
	call	L_DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj60
	jmp	Lj57
Lj60:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj59
	jmp	Lj70
Lj70:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jb	Lj59
	jmp	Lj57
Lj59:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj71
Lj71:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	ja	Lj58
	jmp	Lj57
Lj58:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movsbl	16(%eax),%eax
	cmpl	%eax,%edx
	je	Lj56
	jmp	Lj57
Lj56:
	movb	$1,-9(%ebp)
	jmp	Lj72
Lj57:
	movb	$0,-9(%ebp)
Lj72:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj75
	jmp	Lj76
Lj75:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	jmp	Lj79
Lj76:
	movl	-16(%ebp),%edx
Lj79:
	incl	%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj55:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_CHECKTREE$PNODE$$BOOLEAN
_DBF_AVL_CHECKTREE$PNODE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_BALANCELEFT$PNODE$BOOLEAN
_DBF_AVL_BALANCELEFT$PNODE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj94
	testb	%al,%al
	je	Lj95
	cmpb	$1,%al
	je	Lj96
	jmp	Lj93
Lj94:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj92
Lj95:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$1,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj92
Lj96:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	16(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	cmpb	$0,%al
	jge	Lj105
	jmp	Lj106
Lj105:
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_ROTL$PNODE$stub
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj109
	jmp	Lj110
Lj109:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$-1,16(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$1,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj117
Lj110:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
Lj117:
	jmp	Lj122
Lj106:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	8(%eax),%eax
	movb	16(%eax),%al
	movb	%al,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	12(%eax),%eax
	call	L_DBF_AVL_ROTR$PNODE$stub
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_ROTL$PNODE$stub
	movb	-10(%ebp),%al
	cmpb	$1,%al
	je	Lj129
	jmp	Lj130
Lj129:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$-1,16(%eax)
	jmp	Lj133
Lj130:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
Lj133:
	movb	-10(%ebp),%al
	cmpb	$-1,%al
	je	Lj136
	jmp	Lj137
Lj136:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$1,16(%eax)
	jmp	Lj140
Lj137:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
Lj140:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
Lj122:
	jmp	Lj92
Lj93:
Lj92:
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_BALANCERIGHT$PNODE$BOOLEAN
_DBF_AVL_BALANCERIGHT$PNODE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj151
	testb	%al,%al
	je	Lj150
	cmpb	$1,%al
	je	Lj149
	jmp	Lj148
Lj149:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj147
Lj150:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$-1,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj147
Lj151:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	16(%eax),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	cmpb	$0,%al
	jle	Lj160
	jmp	Lj161
Lj160:
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_ROTR$PNODE$stub
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj164
	jmp	Lj165
Lj164:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$1,16(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$-1,16(%eax)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj172
Lj165:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
Lj172:
	jmp	Lj177
Lj161:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	movb	16(%eax),%al
	movb	%al,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%eax
	call	L_DBF_AVL_ROTL$PNODE$stub
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_ROTR$PNODE$stub
	movb	-10(%ebp),%al
	cmpb	$-1,%al
	je	Lj184
	jmp	Lj185
Lj184:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$1,16(%eax)
	jmp	Lj188
Lj185:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
Lj188:
	movb	-10(%ebp),%al
	cmpb	$1,%al
	je	Lj191
	jmp	Lj192
Lj191:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$-1,16(%eax)
	jmp	Lj195
Lj192:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
Lj195:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
Lj177:
	jmp	Lj147
Lj148:
Lj147:
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_DELRM$PNODE$PNODE$BOOLEAN
_DBF_AVL_DELRM$PNODE$PNODE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj202
	jmp	Lj203
Lj202:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movb	$1,(%eax)
	jmp	Lj210
Lj203:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	12(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_DBF_AVL_DELRM$PNODE$PNODE$BOOLEAN$stub
	movl	-12(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj217
	jmp	Lj218
Lj217:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_BALANCERIGHT$PNODE$BOOLEAN$stub
Lj218:
Lj210:
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__CREATE$$TAVLTREE
_DBF_AVL_TAVLTREE_$__CREATE$$TAVLTREE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj225
	jmp	Lj226
Lj225:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj226:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj231
	jmp	Lj232
Lj231:
	jmp	Lj223
Lj232:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj235
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj239
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
Lj239:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj240
	call	LFPC_RERAISE$stub
Lj240:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj250
	jmp	Lj249
Lj250:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj248
	jmp	Lj249
Lj248:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj249:
Lj235:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj237
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj254
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj255
	jmp	Lj256
Lj255:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj256:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj254:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj253
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj253:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj237
Lj237:
Lj223:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__DESTROY
_DBF_AVL_TAVLTREE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj263
	jmp	Lj264
Lj263:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj264:
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj275
	jmp	Lj274
Lj275:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj273
	jmp	Lj274
Lj273:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj274:
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__CLEAR
_DBF_AVL_TAVLTREE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE$stub
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__DELETENODE$PNODE
_DBF_AVL_TAVLTREE_$__DELETENODE$PNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj288
	jmp	Lj289
Lj288:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	12(%ebx),%ebx
	call	*%ebx
Lj289:
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE
_DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj300
	jmp	Lj301
Lj300:
	jmp	Lj298
Lj301:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__DELETENODE$PNODE$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE$stub
Lj298:
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__FIND$LONGWORD$$POINTER
_DBF_AVL_TAVLTREE_$__FIND$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj321
	.align 2
Lj320:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj323
	jmp	Lj324
Lj323:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj327
Lj324:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
Lj327:
Lj321:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj330
	jmp	Lj322
Lj330:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj320
	jmp	Lj322
Lj322:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj335
Lj332:
	movl	$0,-12(%ebp)
Lj335:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__INSERT$LONGWORD$POINTER$$BOOLEAN
_DBF_AVL_TAVLTREE_$__INSERT$LONGWORD$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$20,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	$0,8(%eax)
	movl	$0,12(%eax)
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	leal	4(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj366
	jmp	Lj367
Lj366:
	movl	-20(%ebp),%eax
	call	Lfpc_freemem$stub
Lj367:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__DELETE$LONGWORD
_DBF_AVL_TAVLTREE_$__DELETE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	4(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN
_DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj380
	jmp	Lj381
Lj380:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	incl	8(%eax)
	movl	-12(%ebp),%eax
	movb	$1,20(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj388
Lj381:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	(%ecx),%eax
	cmpl	(%edx),%eax
	jb	Lj389
	jmp	Lj390
Lj389:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj405
	testb	%al,%al
	je	Lj404
	cmpb	$1,%al
	je	Lj403
	jmp	Lj402
Lj403:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
	jmp	Lj401
Lj404:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$-1,16(%eax)
	jmp	Lj401
Lj405:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj412
	jmp	Lj413
Lj412:
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_ROTR$PNODE$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj418
Lj413:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%eax
	call	L_DBF_AVL_ROTL$PNODE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_ROTR$PNODE$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj425
	testb	%al,%al
	je	Lj426
	cmpb	$1,%al
	je	Lj427
	jmp	Lj424
Lj425:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$1,16(%eax)
	jmp	Lj423
Lj426:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj423
Lj427:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$-1,16(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj423
Lj424:
Lj423:
Lj418:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
	jmp	Lj401
Lj402:
Lj401:
Lj400:
	jmp	Lj444
Lj390:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	(%ecx),%eax
	cmpl	(%edx),%eax
	ja	Lj445
	jmp	Lj446
Lj445:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	12(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj455
	jmp	Lj456
Lj455:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj459
	testb	%al,%al
	je	Lj460
	cmpb	$1,%al
	je	Lj461
	jmp	Lj458
Lj459:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
	jmp	Lj457
Lj460:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$1,16(%eax)
	jmp	Lj457
Lj461:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	16(%eax),%al
	cmpb	$1,%al
	je	Lj468
	jmp	Lj469
Lj468:
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_ROTL$PNODE$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj474
Lj469:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	12(%eax),%eax
	call	L_DBF_AVL_ROTR$PNODE$stub
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_ROTL$PNODE$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	16(%eax),%al
	cmpb	$-1,%al
	je	Lj483
	testb	%al,%al
	je	Lj482
	cmpb	$1,%al
	je	Lj481
	jmp	Lj480
Lj481:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$-1,16(%eax)
	jmp	Lj479
Lj482:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj479
Lj483:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movb	$1,16(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movb	$0,16(%eax)
	jmp	Lj479
Lj480:
Lj479:
Lj474:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,16(%eax)
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
	jmp	Lj457
Lj458:
Lj457:
Lj456:
	jmp	Lj500
Lj446:
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
	movb	$0,-13(%ebp)
Lj500:
Lj444:
Lj388:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE
_DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj507
	jmp	Lj508
Lj507:
	movl	-12(%ebp),%eax
	movb	$0,20(%eax)
	jmp	Lj511
Lj508:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj512
	jmp	Lj513
Lj512:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE$stub
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj520
	jmp	Lj521
Lj520:
	movl	-12(%ebp),%eax
	leal	20(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_BALANCELEFT$PNODE$BOOLEAN$stub
Lj521:
	jmp	Lj526
Lj513:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jb	Lj527
	jmp	Lj528
Lj527:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	12(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE$stub
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj535
	jmp	Lj536
Lj535:
	movl	-12(%ebp),%eax
	leal	20(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_BALANCERIGHT$PNODE$BOOLEAN$stub
Lj536:
	jmp	Lj541
Lj528:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj542
	jmp	Lj543
Lj542:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movb	$1,20(%eax)
	jmp	Lj550
Lj543:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj551
	jmp	Lj552
Lj551:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movb	$1,20(%eax)
	jmp	Lj559
Lj552:
	movl	-12(%ebp),%eax
	leal	20(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	leal	8(%eax),%eax
	leal	-16(%ebp),%edx
	call	L_DBF_AVL_DELRM$PNODE$PNODE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%ecx)
	movl	4(%eax),%eax
	movl	%eax,4(%ecx)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj572
	jmp	Lj573
Lj572:
	movl	-12(%ebp),%eax
	leal	20(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_AVL_BALANCELEFT$PNODE$BOOLEAN$stub
Lj573:
Lj559:
Lj550:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_AVL_TAVLTREE_$__DELETENODE$PNODE$stub
Lj541:
Lj526:
Lj511:
	leave
	ret

.text
	.align 4
.globl	_DBF_AVL_TAVLTREE_$__LOWEST$$PDATA
_DBF_AVL_TAVLTREE_$__LOWEST$$PDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj586
	jmp	Lj587
Lj586:
	movl	$0,-8(%ebp)
	jmp	Lj582
Lj587:
	jmp	Lj591
	.align 2
Lj590:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj591:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj590
	jmp	Lj592
Lj592:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj582:
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_AVL$_Ld1
_$DBF_AVL$_Ld1:
	.byte	8
	.ascii	"TAvlTree"

.const_data
	.align 2
.globl	_VMT_DBF_AVL_TAVLTREE
_VMT_DBF_AVL_TAVLTREE:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_AVL$_Ld1
	.long	0,0
	.long	_$DBF_AVL$_Ld2
	.long	_RTTI_DBF_AVL_TAVLTREE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_AVL_TAVLTREE_$__DESTROY
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
.globl	_THREADVARLIST_DBF_AVL
_THREADVARLIST_DBF_AVL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_HEIGHT$PNODE$$LONGINT$stub:
.indirect_symbol _DBF_AVL_HEIGHT$PNODE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DBF_AVL_CHECKTREE_T$PNODE$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_ROTL$PNODE$stub:
.indirect_symbol _DBF_AVL_ROTL$PNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_ROTR$PNODE$stub:
.indirect_symbol _DBF_AVL_ROTR$PNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_DELRM$PNODE$PNODE$BOOLEAN$stub:
.indirect_symbol _DBF_AVL_DELRM$PNODE$PNODE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_BALANCERIGHT$PNODE$BOOLEAN$stub:
.indirect_symbol _DBF_AVL_BALANCERIGHT$PNODE$BOOLEAN
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

L_DBF_AVL_TAVLTREE_$__CLEAR$stub:
.indirect_symbol _DBF_AVL_TAVLTREE_$__CLEAR
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

L_DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE$stub:
.indirect_symbol _DBF_AVL_TAVLTREE_$__TREEDISPOSE$PNODE
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

L_DBF_AVL_TAVLTREE_$__DELETENODE$PNODE$stub:
.indirect_symbol _DBF_AVL_TAVLTREE_$__DELETENODE$PNODE
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

L_DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN$stub:
.indirect_symbol _DBF_AVL_TAVLTREE_$__INTERNALINSERT$PNODE$PNODE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE$stub:
.indirect_symbol _DBF_AVL_TAVLTREE_$__INTERNALDELETE$LONGWORD$PNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_AVL_BALANCELEFT$PNODE$BOOLEAN$stub:
.indirect_symbol _DBF_AVL_BALANCELEFT$PNODE$BOOLEAN
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
.globl	_INIT_DBF_AVL_TBAL
_INIT_DBF_AVL_TBAL:
	.byte	1,4
	.ascii	"TBal"
	.byte	0
	.long	-1,1

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_TBAL
_RTTI_DBF_AVL_TBAL:
	.byte	1,4
	.ascii	"TBal"
	.byte	0
	.long	-1,1

.const_data
	.align 2
.globl	_$DBF_AVL$_Ld2
_$DBF_AVL$_Ld2:
	.short	0
	.long	_$DBF_AVL$_Ld3
	.align 2
.globl	_$DBF_AVL$_Ld3
_$DBF_AVL$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_AVL_TAVLTREE
_INIT_DBF_AVL_TAVLTREE:
	.byte	15,8
	.ascii	"TAvlTree"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_TAVLTREE
_RTTI_DBF_AVL_TAVLTREE:
	.byte	15,8
	.ascii	"TAvlTree"
	.long	_VMT_DBF_AVL_TAVLTREE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"dbf_avl"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_AVL_PDATA
_INIT_DBF_AVL_PDATA:
	.byte	0
	.ascii	"\005PData"

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_PDATA
_RTTI_DBF_AVL_PDATA:
	.byte	0
	.ascii	"\005PData"

.const_data
	.align 2
.globl	_INIT_DBF_AVL_TDATA
_INIT_DBF_AVL_TDATA:
	.byte	13,5
	.ascii	"TData"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_TDATA
_RTTI_DBF_AVL_TDATA:
	.byte	13,5
	.ascii	"TData"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4

.const_data
	.align 2
.globl	_INIT_DBF_AVL_PNODE
_INIT_DBF_AVL_PNODE:
	.byte	0
	.ascii	"\005PNode"

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_PNODE
_RTTI_DBF_AVL_PNODE:
	.byte	0
	.ascii	"\005PNode"

.const_data
	.align 2
.globl	_INIT_DBF_AVL_TNODE
_INIT_DBF_AVL_TNODE:
	.byte	13,5
	.ascii	"TNode"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_TNODE
_RTTI_DBF_AVL_TNODE:
	.byte	13,5
	.ascii	"TNode"
	.long	20,4
	.long	_RTTI_DBF_AVL_TDATA
	.long	0
	.long	_RTTI_DBF_AVL_PNODE
	.long	8
	.long	_RTTI_DBF_AVL_PNODE
	.long	12
	.long	_RTTI_DBF_AVL_TBAL
	.long	16

.const_data
	.align 2
.globl	_INIT_DBF_AVL_TAVLTREEEVENT
_INIT_DBF_AVL_TAVLTREEEVENT:
	.byte	6,13
	.ascii	"TAvlTreeEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\010TAvlTree"
	.byte	0,4
	.ascii	"Data"
	.ascii	"\005PData"
	.byte	0
	.long	_RTTI_DBF_AVL_TAVLTREE
	.long	_RTTI_DBF_AVL_PDATA

.const_data
	.align 2
.globl	_RTTI_DBF_AVL_TAVLTREEEVENT
_RTTI_DBF_AVL_TAVLTREEEVENT:
	.byte	6,13
	.ascii	"TAvlTreeEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\010TAvlTree"
	.byte	0,4
	.ascii	"Data"
	.ascii	"\005PData"
	.byte	0
	.long	_RTTI_DBF_AVL_TAVLTREE
	.long	_RTTI_DBF_AVL_PDATA
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

