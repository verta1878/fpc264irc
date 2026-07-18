# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_AVL_TREE_COMPAREPOINTER$POINTER$POINTER$$LONGINT
_AVL_TREE_COMPAREPOINTER$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	$-1,-12(%ebp)
	jmp	Lj9
Lj6:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj10
	jmp	Lj11
Lj10:
	movl	$1,-12(%ebp)
	jmp	Lj14
Lj11:
	movl	$0,-12(%ebp)
Lj14:
Lj9:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEENUMERATOR_$__CREATE$TAVLTREE$$TAVLTREENODEENUMERATOR
_AVL_TREE_TAVLTREENODEENUMERATOR_$__CREATE$TAVLTREE$$TAVLTREENODEENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj19
	jmp	Lj20
Lj19:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	jmp	Lj26
Lj25:
	jmp	Lj17
Lj26:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj29
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj33
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj33:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj34
	call	LFPC_RERAISE$stub
Lj34:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj40
	jmp	Lj39
Lj40:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj39
Lj38:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj39:
Lj29:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj31
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj44
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj45
	jmp	Lj46
Lj45:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj46:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj44:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj43
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj43:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj31
Lj31:
Lj17:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEENUMERATOR_$__MOVENEXT$$BOOLEAN
_AVL_TREE_TAVLTREENODEENUMERATOR_$__MOVENEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj53
	jmp	Lj54
Lj53:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDLOWEST$$TAVLTREENODE$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj59
Lj54:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
Lj59:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__ADD$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__ADD$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	movl	16(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__ADD$TAVLTREENODE$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__ADD$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__ADD$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	incl	8(%eax)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDINSERTPOS$POINTER$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj102
	jmp	Lj103
Lj102:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj106
Lj103:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
Lj106:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE$stub
	jmp	Lj113
Lj87:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj113:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDLOWEST$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDLOWEST$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj122
	jmp	Lj123
Lj122:
	jmp	Lj125
	.align 2
Lj124:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
Lj125:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj124
	jmp	Lj126
Lj126:
Lj123:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDHIGHEST$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDHIGHEST$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj133
	jmp	Lj134
Lj133:
	jmp	Lj136
	.align 2
Lj135:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
Lj136:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj135
	jmp	Lj137
Lj137:
Lj134:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj142
	jmp	Lj143
Lj142:
	jmp	Lj140
Lj143:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj144
	jmp	Lj146
Lj146:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$-1,%eax
	je	Lj144
	jmp	Lj145
Lj144:
	jmp	Lj140
Lj145:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj149
	jmp	Lj150
Lj149:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj151
	jmp	Lj152
Lj151:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj153
	jmp	Lj154
Lj153:
	movl	-12(%ebp),%eax
	incl	16(%eax)
	jmp	Lj155
Lj154:
	movl	-12(%ebp),%eax
	decl	16(%eax)
Lj155:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
Lj152:
	jmp	Lj140
Lj150:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$2,%eax
	je	Lj160
	jmp	Lj161
Lj160:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jge	Lj164
	jmp	Lj165
Lj164:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj168
	jmp	Lj169
Lj168:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj170
	jmp	Lj171
Lj170:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj174
Lj171:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
Lj174:
	jmp	Lj177
Lj169:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
Lj177:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj188
	jmp	Lj189
Lj188:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj189:
	movl	-16(%ebp),%eax
	movl	16(%eax),%edx
	movl	$1,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-16(%ebp),%eax
	decl	16(%eax)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
	jmp	Lj198
Lj165:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj205
	jmp	Lj206
Lj205:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj207
	jmp	Lj208
Lj207:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	jmp	Lj211
Lj208:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,12(%eax)
Lj211:
	jmp	Lj214
Lj206:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,20(%eax)
Lj214:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj231
	jmp	Lj232
Lj231:
	movl	-32(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj232:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj235
	jmp	Lj236
Lj235:
	movl	-36(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
Lj236:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jle	Lj239
	jmp	Lj240
Lj239:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj243
Lj240:
	movl	-4(%ebp),%eax
	movl	$-1,16(%eax)
Lj243:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jge	Lj246
	jmp	Lj247
Lj246:
	movl	-16(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj250
Lj247:
	movl	-16(%ebp),%eax
	movl	$1,16(%eax)
Lj250:
	movl	-20(%ebp),%eax
	movl	$0,16(%eax)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
Lj198:
	jmp	Lj259
Lj161:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jle	Lj262
	jmp	Lj263
Lj262:
	movl	-24(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj266
	jmp	Lj267
Lj266:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj268
	jmp	Lj269
Lj268:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj272
Lj269:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,12(%eax)
Lj272:
	jmp	Lj275
Lj267:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,20(%edx)
Lj275:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj286
	jmp	Lj287
Lj286:
	movl	-28(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj287:
	movl	-24(%ebp),%eax
	movl	16(%eax),%edx
	movl	$-1,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-24(%ebp),%eax
	incl	16(%eax)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
	jmp	Lj296
Lj263:
	movl	-24(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-28(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj303
	jmp	Lj304
Lj303:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj305
	jmp	Lj306
Lj305:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj309
Lj306:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,12(%eax)
Lj309:
	jmp	Lj312
Lj304:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	%eax,20(%edx)
Lj312:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-28(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-28(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj329
	jmp	Lj330
Lj329:
	movl	-40(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
Lj330:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj333
	jmp	Lj334
Lj333:
	movl	-44(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj334:
	movl	-28(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jge	Lj337
	jmp	Lj338
Lj337:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj341
Lj338:
	movl	-4(%ebp),%eax
	movl	$1,16(%eax)
Lj341:
	movl	-28(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jle	Lj344
	jmp	Lj345
Lj344:
	movl	-24(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj348
Lj345:
	movl	-24(%ebp),%eax
	movl	$-1,16(%eax)
Lj348:
	movl	-28(%ebp),%eax
	movl	$0,16(%eax)
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
Lj296:
Lj259:
Lj140:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj361
	jmp	Lj362
Lj361:
	jmp	Lj357
Lj362:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj363
	jmp	Lj364
Lj363:
	movl	-12(%ebp),%eax
	decl	16(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj365
	jmp	Lj366
Lj365:
	jmp	Lj357
Lj366:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$-1,%eax
	je	Lj367
	jmp	Lj368
Lj367:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE$stub
	jmp	Lj357
Lj368:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$-1,%eax
	je	Lj373
	jmp	Lj374
Lj373:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj379
	jmp	Lj380
Lj379:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj381
	jmp	Lj382
Lj381:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj385
Lj382:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj385:
	jmp	Lj388
Lj380:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
Lj388:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,4(%edx)
Lj400:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj407
Lj374:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj416
	jmp	Lj417
Lj416:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj418
	jmp	Lj419
Lj418:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	jmp	Lj422
Lj419:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,12(%eax)
Lj422:
	jmp	Lj425
Lj417:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,20(%eax)
Lj425:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj442
	jmp	Lj443
Lj442:
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj443:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj446
	jmp	Lj447
Lj446:
	movl	-28(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
Lj447:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jle	Lj450
	jmp	Lj451
Lj450:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj454
Lj451:
	movl	-4(%ebp),%eax
	movl	$-1,16(%eax)
Lj454:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$-1,%eax
	je	Lj457
	jmp	Lj458
Lj457:
	movl	-12(%ebp),%eax
	movl	$1,16(%eax)
	jmp	Lj461
Lj458:
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
Lj461:
	movl	-20(%ebp),%eax
	movl	$0,16(%eax)
Lj407:
	jmp	Lj466
Lj364:
	movl	-12(%ebp),%eax
	incl	16(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj467
	jmp	Lj468
Lj467:
	jmp	Lj357
Lj468:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj469
	jmp	Lj470
Lj469:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE$stub
	jmp	Lj357
Lj470:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj475
	jmp	Lj476
Lj475:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj481
	jmp	Lj482
Lj481:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj483
	jmp	Lj484
Lj483:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj487
Lj484:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj487:
	jmp	Lj490
Lj482:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
Lj490:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj501
	jmp	Lj502
Lj501:
	movl	-32(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
Lj502:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj509
Lj476:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj518
	jmp	Lj519
Lj518:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj520
	jmp	Lj521
Lj520:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj524
Lj521:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,12(%eax)
Lj524:
	jmp	Lj527
Lj519:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,20(%eax)
Lj527:
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-32(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-32(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj544
	jmp	Lj545
Lj544:
	movl	-36(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
Lj545:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj548
	jmp	Lj549
Lj548:
	movl	-40(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj549:
	movl	-32(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jge	Lj552
	jmp	Lj553
Lj552:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	jmp	Lj556
Lj553:
	movl	-4(%ebp),%eax
	movl	$1,16(%eax)
Lj556:
	movl	-32(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$1,%eax
	je	Lj559
	jmp	Lj560
Lj559:
	movl	-12(%ebp),%eax
	movl	$-1,16(%eax)
	jmp	Lj563
Lj560:
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
Lj563:
	movl	-32(%ebp),%eax
	movl	$0,16(%eax)
Lj509:
Lj466:
Lj357:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__CLEAR
_AVL_TREE_TAVLTREE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%ebp,%eax
	call	L_AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE$stub
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE
_AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj580
	jmp	Lj581
Lj580:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj582
	jmp	Lj583
Lj582:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE$stub
Lj583:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj588
	jmp	Lj589
Lj588:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE$stub
Lj589:
Lj581:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__CREATE$TLISTSORTCOMPARE$$TAVLTREE
_AVL_TREE_TAVLTREE_$__CREATE$TLISTSORTCOMPARE$$TAVLTREE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj599
Lj599:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj600
	jmp	Lj601
Lj600:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj601:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj606
	jmp	Lj607
Lj606:
	jmp	Lj598
Lj607:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj610
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj614
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	L_U_AVL_TREE_NODEMEMMANAGER$non_lazy_ptr-Lj599(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
Lj614:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj615
	call	LFPC_RERAISE$stub
Lj615:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj629
	jmp	Lj628
Lj629:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj627
	jmp	Lj628
Lj627:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj628:
Lj610:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj612
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj633
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj634
	jmp	Lj635
Lj634:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj635:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj633:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj632
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj632:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj612
Lj612:
Lj598:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__CREATE$$TAVLTREE
_AVL_TREE_TAVLTREE_$__CREATE$$TAVLTREE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj641
Lj641:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj642
	jmp	Lj643
Lj642:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj643:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj648
	jmp	Lj649
Lj648:
	jmp	Lj640
Lj649:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj652
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj656
	movl	L_AVL_TREE_COMPAREPOINTER$POINTER$POINTER$$LONGINT$non_lazy_ptr-Lj641(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_AVL_TREE_TAVLTREE_$__CREATE$TLISTSORTCOMPARE$$TAVLTREE$stub
Lj656:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj657
	call	LFPC_RERAISE$stub
Lj657:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj667
	jmp	Lj666
Lj667:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj665
	jmp	Lj666
Lj665:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj666:
Lj652:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj654
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj671
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj672
	jmp	Lj673
Lj672:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj673:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj671:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj670
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj670:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj654
Lj654:
Lj640:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj690
	jmp	Lj689
Lj690:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj688
	jmp	Lj689
Lj688:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj691
	jmp	Lj692
Lj691:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj693
	jmp	Lj694
Lj693:
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%eax
	incl	16(%eax)
	jmp	Lj697
Lj694:
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	decl	16(%eax)
Lj697:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
	jmp	Lj704
Lj692:
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
Lj704:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj678
Lj689:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj711
	jmp	Lj712
Lj711:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj719
	jmp	Lj720
Lj719:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj721
	jmp	Lj722
Lj721:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	incl	16(%eax)
	jmp	Lj725
Lj722:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-12(%ebp),%eax
	decl	16(%eax)
Lj725:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
	jmp	Lj732
Lj720:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
Lj732:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj678
Lj712:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj739
	jmp	Lj740
Lj739:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj747
	jmp	Lj748
Lj747:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj749
	jmp	Lj750
Lj749:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	incl	16(%eax)
	jmp	Lj753
Lj750:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	decl	16(%eax)
Lj753:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub
	jmp	Lj760
Lj748:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,20(%eax)
Lj760:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	jmp	Lj678
Lj740:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
	movl	-24(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-28(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj787
	jmp	Lj788
Lj787:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-28(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-24(%ebp),%eax
	je	Lj791
	jmp	Lj792
Lj791:
	movl	-28(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	jmp	Lj795
Lj792:
	movl	-28(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj795:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	jmp	Lj802
Lj788:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj802:
	movl	-24(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj809
	jmp	Lj810
Lj809:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
Lj810:
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj817
	jmp	Lj818
Lj817:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj818:
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj823
	jmp	Lj824
Lj823:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj824:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj827
	jmp	Lj828
Lj827:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj829
	jmp	Lj830
Lj829:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,8(%edx)
	jmp	Lj833
Lj830:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,12(%eax)
Lj833:
	jmp	Lj836
Lj828:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,20(%edx)
Lj836:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE$stub
Lj678:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__REMOVE$POINTER
_AVL_TREE_TAVLTREE_$__REMOVE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj851
	jmp	Lj852
Lj851:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE$stub
Lj852:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__REMOVEPOINTER$POINTER
_AVL_TREE_TAVLTREE_$__REMOVEPOINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDPOINTER$POINTER$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj865
	jmp	Lj866
Lj865:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE$stub
Lj866:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__DESTROY
_AVL_TREE_TAVLTREE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj873
	jmp	Lj874
Lj873:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj874:
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__CLEAR$stub
	movl	-8(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj879
	jmp	Lj880
Lj879:
	movl	-8(%ebp),%eax
	leal	16(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj880:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj889
	jmp	Lj888
Lj889:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj887
	jmp	Lj888
Lj887:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj888:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__GETENUMERATOR$$TAVLTREENODEENUMERATOR
_AVL_TREE_TAVLTREE_$__GETENUMERATOR$$TAVLTREENODEENUMERATOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj893
Lj893:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_AVL_TREE_TAVLTREENODEENUMERATOR$non_lazy_ptr-Lj893(%ebx),%edx
	movl	$0,%eax
	call	L_AVL_TREE_TAVLTREENODEENUMERATOR_$__CREATE$TAVLTREE$$TAVLTREENODEENUMERATOR$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj907
	.align 2
Lj906:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj915
	jmp	Lj916
Lj915:
	jmp	Lj902
Lj916:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj917
	jmp	Lj918
Lj917:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj921
Lj918:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
Lj921:
Lj907:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj906
	jmp	Lj908
Lj908:
Lj902:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj929
	.align 2
Lj928:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	*%ecx
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj937
	jmp	Lj938
Lj937:
	jmp	Lj924
Lj938:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj939
	jmp	Lj940
Lj939:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj943
Lj940:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
Lj943:
Lj929:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj928
	jmp	Lj930
Lj930:
Lj924:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDLEFTMOSTKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDLEFTMOSTKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDLEFTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDLEFTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDLEFTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj976
	jmp	Lj977
Lj976:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj982:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj991
	jmp	Lj993
Lj993:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj991
	jmp	Lj992
Lj991:
	jmp	Lj984
Lj992:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj982
Lj984:
	jmp	Lj1000
Lj977:
	movl	$0,-12(%ebp)
Lj1000:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1005
	jmp	Lj1006
Lj1005:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj1011:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1020
	jmp	Lj1022
Lj1022:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj1020
	jmp	Lj1021
Lj1020:
	jmp	Lj1013
Lj1021:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1011
Lj1013:
	jmp	Lj1029
Lj1006:
	movl	$0,-12(%ebp)
Lj1029:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDNEAREST$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDNEAREST$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1037
	.align 2
Lj1036:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1045
	jmp	Lj1046
Lj1045:
	jmp	Lj1032
Lj1046:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1047
	jmp	Lj1048
Lj1047:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1049
	jmp	Lj1050
Lj1049:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1053
Lj1050:
	jmp	Lj1032
Lj1053:
	jmp	Lj1054
Lj1048:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1055
	jmp	Lj1056
Lj1055:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1059
Lj1056:
	jmp	Lj1032
Lj1059:
Lj1054:
Lj1037:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1036
	jmp	Lj1038
Lj1038:
Lj1032:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDPOINTER$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDPOINTER$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDLEFTMOST$POINTER$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1069
	.align 2
Lj1068:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1071
	jmp	Lj1072
Lj1071:
	jmp	Lj1070
Lj1072:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1079
	jmp	Lj1080
Lj1079:
	jmp	Lj1060
Lj1080:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj1081
	jmp	Lj1082
Lj1081:
	movl	$0,-12(%ebp)
	jmp	Lj1060
Lj1082:
Lj1069:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1068
	jmp	Lj1070
Lj1070:
Lj1060:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDLEFTMOST$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDLEFTMOST$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1098
	.align 2
Lj1097:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1106
	jmp	Lj1108
Lj1108:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj1106
	jmp	Lj1107
Lj1106:
	jmp	Lj1099
Lj1107:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1098:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1097
	jmp	Lj1099
Lj1099:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDRIGHTMOST$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDRIGHTMOST$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1124
	.align 2
Lj1123:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1132
	jmp	Lj1134
Lj1134:
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj1132
	jmp	Lj1133
Lj1132:
	jmp	Lj1125
Lj1133:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1124:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1123
	jmp	Lj1125
Lj1125:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDINSERTPOS$POINTER$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDINSERTPOS$POINTER$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1146
	.align 2
Lj1145:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1154
	jmp	Lj1155
Lj1154:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1156
	jmp	Lj1157
Lj1156:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1160
Lj1157:
	jmp	Lj1141
Lj1160:
	jmp	Lj1161
Lj1155:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1162
	jmp	Lj1163
Lj1162:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1166
Lj1163:
	jmp	Lj1141
Lj1166:
Lj1161:
Lj1146:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1145
	jmp	Lj1147
Lj1147:
Lj1141:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1171
	jmp	Lj1172
Lj1171:
	jmp	Lj1174
	.align 2
Lj1173:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1174:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1173
	jmp	Lj1175
Lj1175:
	jmp	Lj1178
Lj1172:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1182
	.align 2
Lj1181:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1182:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1186
	jmp	Lj1183
Lj1186:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	12(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1181
	jmp	Lj1183
Lj1183:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1178:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1193
	jmp	Lj1194
Lj1193:
	jmp	Lj1196
	.align 2
Lj1195:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1196:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1195
	jmp	Lj1197
Lj1197:
	jmp	Lj1200
Lj1194:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1204
	.align 2
Lj1203:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1204:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1208
	jmp	Lj1205
Lj1208:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1203
	jmp	Lj1205
Lj1205:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1200:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__MOVEDATALEFTMOST$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__MOVEDATALEFTMOST$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1213
	jmp	Lj1214
Lj1213:
	jmp	Lj1211
Lj1214:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj1217:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1226
	jmp	Lj1228
Lj1228:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj1226
	jmp	Lj1227
Lj1226:
	jmp	Lj1219
Lj1227:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1217
Lj1219:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	(%edx),%eax
	je	Lj1235
	jmp	Lj1236
Lj1235:
	jmp	Lj1211
Lj1236:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
Lj1211:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__MOVEDATARIGHTMOST$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__MOVEDATARIGHTMOST$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1247
	jmp	Lj1248
Lj1247:
	jmp	Lj1245
Lj1248:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj1251:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1260
	jmp	Lj1262
Lj1262:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	jne	Lj1260
	jmp	Lj1261
Lj1260:
	jmp	Lj1253
Lj1261:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1251
Lj1253:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	(%edx),%eax
	je	Lj1269
	jmp	Lj1270
Lj1269:
	jmp	Lj1245
Lj1270:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
Lj1245:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__CONSISTENCYCHECK$$LONGINT
_AVL_TREE_TAVLTREE_$__CONSISTENCYCHECK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%ebp,%eax
	call	L_AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1291
	jmp	Lj1292
Lj1291:
	jmp	Lj1279
Lj1292:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj1293
	jmp	Lj1294
Lj1293:
	movl	$-1,-8(%ebp)
	jmp	Lj1279
Lj1294:
Lj1279:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT
_AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1297
	jmp	Lj1298
Lj1297:
	movl	$0,-12(%ebp)
	jmp	Lj1281
Lj1298:
	movl	-8(%ebp),%eax
	incl	-12(%eax)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1301
	jmp	Lj1302
Lj1301:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1303
	jmp	Lj1304
Lj1303:
	movl	$-2,-12(%ebp)
	jmp	Lj1281
Lj1304:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	jg	Lj1307
	jmp	Lj1308
Lj1307:
	movl	$-3,-12(%ebp)
	jmp	Lj1281
Lj1308:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1321
	jmp	Lj1322
Lj1321:
	jmp	Lj1281
Lj1322:
Lj1302:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1323
	jmp	Lj1324
Lj1323:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1325
	jmp	Lj1326
Lj1325:
	movl	$-4,-12(%ebp)
	jmp	Lj1281
Lj1326:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	cmpl	$0,%eax
	jg	Lj1329
	jmp	Lj1330
Lj1329:
	movl	$-5,-12(%ebp)
	jmp	Lj1281
Lj1330:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1343
	jmp	Lj1344
Lj1343:
	jmp	Lj1281
Lj1344:
Lj1324:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1345
	jmp	Lj1346
Lj1345:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT$stub
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1351
Lj1346:
	movl	$0,-16(%ebp)
Lj1351:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1354
	jmp	Lj1355
Lj1354:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT$stub
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1360
Lj1355:
	movl	$0,-20(%ebp)
Lj1360:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	cmpl	16(%eax),%edx
	jne	Lj1363
	jmp	Lj1364
Lj1363:
	movl	$-6,-12(%ebp)
	jmp	Lj1281
Lj1364:
	movl	$0,-12(%ebp)
Lj1281:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FREEANDCLEAR
_AVL_TREE_TAVLTREE_$__FREEANDCLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%ebp,%eax
	call	L_AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE$stub
	movl	-4(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__CLEAR$stub
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE
_AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1379
	jmp	Lj1380
Lj1379:
	jmp	Lj1371
Lj1380:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE$stub
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj1389
	jmp	Lj1390
Lj1389:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1390:
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
Lj1371:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__FREEANDDELETE$TAVLTREENODE
_AVL_TREE_TAVLTREE_$__FREEANDDELETE$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__WRITEREPORTTOSTREAM$TSTREAM$INT64
_AVL_TREE_TAVLTREE_$__WRITEREPORTTOSTREAM$TSTREAM$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj1406
Lj1406:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-76(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1411
	movl	L_$AVL_TREE$_Ld1$non_lazy_ptr-Lj1406(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__CONSISTENCYCHECK$$LONGINT$stub
	leal	-76(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$AVL_TREE$_Ld3$non_lazy_ptr-Lj1406(%ebx),%eax
	movl	%eax,-64(%ebp)
	movl	L_$AVL_TREE$_Ld5$non_lazy_ptr-Lj1406(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	%ebp,%eax
	movl	L_$AVL_TREE$_Ld7$non_lazy_ptr-Lj1406(%ebx),%ecx
	call	L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING$stub
	movl	L_$AVL_TREE$_Ld9$non_lazy_ptr-Lj1406(%ebx),%esi
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING$stub
Lj1411:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1412
	call	LFPC_RERAISE$stub
Lj1412:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING
_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-372(%ebp)
	call	Lj1410
Lj1410:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-368(%ebp)
	movl	$0,-364(%ebp)
	movl	$0,-360(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1448
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1451
	jmp	Lj1452
Lj1451:
	jmp	Lj1448
Lj1452:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	L_$AVL_TREE$_Ld7$non_lazy_ptr-Lj1410(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	-356(%ebp),%ecx
	movb	$8,%dl
	call	L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub
	leal	-356(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$AVL_TREE$_Ld11$non_lazy_ptr-Lj1410(%ebx),%eax
	movl	%eax,-92(%ebp)
	movl	L_$AVL_TREE$_Ld13$non_lazy_ptr-Lj1410(%ebx),%eax
	movl	%eax,-88(%ebp)
	leal	-360(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-360(%ebp)
	leal	-356(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$8,%dl
	call	L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub
	leal	-356(%ebp),%eax
	leal	-360(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-360(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	L_$AVL_TREE$_Ld15$non_lazy_ptr-Lj1410(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-364(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-364(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-356(%ebp),%ecx
	movb	$8,%dl
	call	L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub
	leal	-356(%ebp),%eax
	leal	-364(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-364(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$AVL_TREE$_Ld17$non_lazy_ptr-Lj1410(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-368(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-368(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	leal	-368(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-368(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$AVL_TREE$_Ld5$non_lazy_ptr-Lj1410(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-100(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	$9,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING$stub
	leal	-368(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-368(%ebp)
	movl	-8(%ebp),%edx
	leal	-368(%ebp),%eax
	movl	L_$AVL_TREE$_Ld7$non_lazy_ptr-Lj1410(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-368(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING$stub
Lj1448:
	call	LFPC_POPADDRSTACK$stub
	leal	-368(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-368(%ebp)
	leal	-364(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-364(%ebp)
	leal	-360(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-360(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1449
	call	LFPC_RERAISE$stub
Lj1449:
	movl	-372(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING
_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1527
	jmp	Lj1528
Lj1527:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj1531
	movl	-4(%ecx),%ecx
Lj1531:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj1528:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj1536
	movl	-4(%edx),%edx
Lj1536:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-8(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%esi
	movl	4(%ecx),%ebx
	addl	%edx,%esi
	adcl	%eax,%ebx
	movl	%esi,(%ecx)
	movl	%ebx,4(%ecx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__REPORTASSTRING$$ANSISTRING
_AVL_TREE_TAVLTREE_$__REPORTASSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj1538
Lj1538:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj1538(%esi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-12(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1547
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_AVL_TREE_TAVLTREE_$__WRITEREPORTTOSTREAM$TSTREAM$INT64$stub
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__WRITEREPORTTOSTREAM$TSTREAM$INT64$stub
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj1573
	jl	Lj1574
	cmpl	$0,%eax
	ja	Lj1573
	jmp	Lj1574
Lj1573:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
Lj1574:
Lj1547:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1548
	decl	%eax
	testl	%eax,%eax
	je	Lj1549
Lj1549:
	call	LFPC_RERAISE$stub
Lj1548:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__SETONCOMPARE$TLISTSORTCOMPARE
_AVL_TREE_TAVLTREE_$__SETONCOMPARE$TLISTSORTCOMPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1595
	jmp	Lj1596
Lj1595:
	jmp	Lj1593
Lj1596:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1597
	jmp	Lj1598
Lj1597:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	shll	$2,%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1605
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDLOWEST$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj1616
	.align 2
Lj1615:
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,(%ecx,%edx,4)
	incl	-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub
	movl	%eax,-16(%ebp)
Lj1616:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1615
	jmp	Lj1617
Lj1617:
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1631
	decl	-20(%ebp)
	.align 2
Lj1632:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREE_$__ADD$POINTER$$TAVLTREENODE$stub
	cmpl	-20(%ebp),%ebx
	jg	Lj1632
Lj1631:
Lj1605:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1606
	decl	%eax
	testl	%eax,%eax
	je	Lj1607
Lj1607:
	call	LFPC_RERAISE$stub
Lj1606:
	jmp	Lj1639
Lj1598:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj1639:
Lj1593:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREE_$__SETNODEMANAGER$TBASEAVLTREENODEMANAGER$BOOLEAN
_AVL_TREE_TAVLTREE_$__SETNODEMANAGER$TBASEAVLTREENODEMANAGER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj1644
	jmp	Lj1645
Lj1644:
	movl	-12(%ebp),%eax
	leal	16(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj1645:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT
_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj1654
	jmp	Lj1655
Lj1654:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT$stub
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1660
Lj1655:
	movl	$0,-12(%ebp)
Lj1660:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj1663
	jmp	Lj1664
Lj1663:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	L_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT$stub
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1669
Lj1664:
	movl	$0,-16(%ebp)
Lj1669:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj1672
	jmp	Lj1673
Lj1672:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1676
Lj1673:
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1676:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODE_$__CLEAR
_AVL_TREE_TAVLTREENODE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CREATE$$TAVLTREENODEMEMMANAGER
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CREATE$$TAVLTREENODEMEMMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1693
	jmp	Lj1694
Lj1693:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1694:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1699
	jmp	Lj1700
Lj1699:
	jmp	Lj1691
Lj1700:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1703
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1707
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$100,16(%eax)
	movl	-8(%ebp),%eax
	movl	$8,20(%eax)
Lj1707:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1708
	call	LFPC_RERAISE$stub
Lj1708:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1726
	jmp	Lj1725
Lj1726:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1724
	jmp	Lj1725
Lj1724:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1725:
Lj1703:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1705
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1730
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1731
	jmp	Lj1732
Lj1731:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1732:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1730:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1729
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1729:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1705
Lj1705:
Lj1691:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DESTROY
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1739
	jmp	Lj1740
Lj1739:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1740:
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1751
	jmp	Lj1750
Lj1751:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1749
	jmp	Lj1750
Lj1749:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1750:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSENODE$TAVLTREENODE
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSENODE$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1756
	jmp	Lj1757
Lj1756:
	jmp	Lj1754
Lj1757:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	16(%edx),%eax
	jl	Lj1758
	jmp	Lj1760
Lj1760:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$3,%eax
	movl	-8(%ebp),%edx
	movl	20(%edx),%edx
	imull	%edx,%eax
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jg	Lj1758
	jmp	Lj1759
Lj1758:
	movl	-4(%ebp),%eax
	call	L_AVL_TREE_TAVLTREENODE_$__CLEAR$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	incl	8(%eax)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	addl	$8,%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	imull	%edx,%eax
	shrl	$3,%eax
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jl	Lj1767
	jmp	Lj1768
Lj1767:
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSEFIRSTFREENODE$stub
	movl	-8(%ebp),%eax
	call	L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSEFIRSTFREENODE$stub
Lj1768:
	jmp	Lj1773
Lj1759:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1773:
	movl	-8(%ebp),%eax
	decl	12(%eax)
Lj1754:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__NEWNODE$$TAVLTREENODE
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__NEWNODE$$TAVLTREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1777
Lj1777:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1778
	jmp	Lj1779
Lj1778:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	jmp	Lj1786
Lj1779:
	movl	L_VMT_AVL_TREE_TAVLTREENODE$non_lazy_ptr-Lj1777(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
Lj1786:
	movl	-4(%ebp),%eax
	incl	12(%eax)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CLEAR
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj1796
	.align 2
Lj1795:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1796:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1795
	jmp	Lj1797
Lj1797:
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__SETMAXFREERATIO$LONGINT
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__SETMAXFREERATIO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1810
	jmp	Lj1811
Lj1810:
	movl	$0,-4(%ebp)
Lj1811:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1814
	jmp	Lj1815
Lj1814:
	jmp	Lj1808
Lj1815:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
Lj1808:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__SETMINFREE$LONGINT
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__SETMINFREE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1820
	jmp	Lj1821
Lj1820:
	movl	$0,-4(%ebp)
Lj1821:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1824
	jmp	Lj1825
Lj1824:
	jmp	Lj1818
Lj1825:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
Lj1818:
	leave
	ret

.text
	.align 4
.globl	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSEFIRSTFREENODE
_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSEFIRSTFREENODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj1830
	jmp	Lj1831
Lj1830:
	jmp	Lj1828
Lj1831:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	decl	8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj1828:
	leave
	ret

.text
	.align 4
.globl	_INIT$_AVL_TREE
_INIT$_AVL_TREE:
.reference __AVL_TREE_init
.globl	__AVL_TREE_init
__AVL_TREE_init:
.reference _INIT$_AVL_TREE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_AVL_TREE_TAVLTREENODEMEMMANAGER$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CREATE$$TAVLTREENODEMEMMANAGER$stub
	movl	L_U_AVL_TREE_NODEMEMMANAGER$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_AVL_TREE
_FINALIZE$_AVL_TREE:
.reference __AVL_TREE_finalize
.globl	__AVL_TREE_finalize
__AVL_TREE_finalize:
.reference _FINALIZE$_AVL_TREE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1841
Lj1841:
	popl	%ebx
	movl	L_U_AVL_TREE_NODEMEMMANAGER$non_lazy_ptr-Lj1841(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_U_AVL_TREE_NODEMEMMANAGER$non_lazy_ptr-Lj1841(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_AVL_TREE_NODEMEMMANAGER
.data
.zerofill __DATA, __common, _U_AVL_TREE_NODEMEMMANAGER, 4,2



.const_data
	.align 2
.globl	_$AVL_TREE$_Ld19
_$AVL_TREE$_Ld19:
	.byte	12
	.ascii	"TAVLTreeNode"

.const_data
	.align 2
.globl	_VMT_AVL_TREE_TAVLTREENODE
_VMT_AVL_TREE_TAVLTREENODE:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$AVL_TREE$_Ld19
	.long	0,0
	.long	_$AVL_TREE$_Ld20
	.long	_RTTI_AVL_TREE_TAVLTREENODE
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
.globl	_$AVL_TREE$_Ld22
_$AVL_TREE$_Ld22:
	.byte	23
	.ascii	"TBaseAVLTreeNodeManager"

.const_data
	.align 2
.globl	_VMT_AVL_TREE_TBASEAVLTREENODEMANAGER
_VMT_AVL_TREE_TBASEAVLTREENODEMANAGER:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$AVL_TREE$_Ld22
	.long	0,0
	.long	_$AVL_TREE$_Ld23
	.long	_RTTI_AVL_TREE_TBASEAVLTREENODEMANAGER
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
.globl	_$AVL_TREE$_Ld25
_$AVL_TREE$_Ld25:
	.byte	8
	.ascii	"TAVLTree"

.const_data
	.align 2
.globl	_VMT_AVL_TREE_TAVLTREE
_VMT_AVL_TREE_TAVLTREE:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$AVL_TREE$_Ld25
	.long	0,0
	.long	_$AVL_TREE$_Ld26
	.long	_RTTI_AVL_TREE_TAVLTREE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_AVL_TREE_TAVLTREE_$__DESTROY
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
.globl	_$AVL_TREE$_Ld28
_$AVL_TREE$_Ld28:
	.byte	22
	.ascii	"TAVLTreeNodeEnumerator"

.const_data
	.align 2
.globl	_VMT_AVL_TREE_TAVLTREENODEENUMERATOR
_VMT_AVL_TREE_TAVLTREENODEENUMERATOR:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$AVL_TREE$_Ld28
	.long	0,0
	.long	_$AVL_TREE$_Ld29
	.long	_RTTI_AVL_TREE_TAVLTREENODEENUMERATOR
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
.globl	_$AVL_TREE$_Ld31
_$AVL_TREE$_Ld31:
	.byte	22
	.ascii	"TAVLTreeNodeMemManager"

.const_data
	.align 2
.globl	_VMT_AVL_TREE_TAVLTREENODEMEMMANAGER
_VMT_AVL_TREE_TAVLTREENODEMEMMANAGER:
	.long	24,-24
	.long	_VMT_AVL_TREE_TBASEAVLTREENODEMANAGER
	.long	_$AVL_TREE$_Ld31
	.long	0,0
	.long	_$AVL_TREE$_Ld32
	.long	_RTTI_AVL_TREE_TAVLTREENODEMEMMANAGER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DESTROY
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
	.long	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSENODE$TAVLTREENODE
	.long	_AVL_TREE_TAVLTREENODEMEMMANAGER_$__NEWNODE$$TAVLTREENODE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_AVL_TREE
_THREADVARLIST_AVL_TREE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld2
_$AVL_TREE$_Ld2:
	.short	0,1
	.long	0,-1,13
.reference _$AVL_TREE$_Ld1
.globl	_$AVL_TREE$_Ld1
_$AVL_TREE$_Ld1:
.reference _$AVL_TREE$_Ld2
	.ascii	"Consistency: \000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld4
_$AVL_TREE$_Ld4:
	.short	0,1
	.long	0,-1,22
.reference _$AVL_TREE$_Ld3
.globl	_$AVL_TREE$_Ld3
_$AVL_TREE$_Ld3:
.reference _$AVL_TREE$_Ld4
	.ascii	" ---------------------\000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld6
_$AVL_TREE$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$AVL_TREE$_Ld5
.globl	_$AVL_TREE$_Ld5
_$AVL_TREE$_Ld5:
.reference _$AVL_TREE$_Ld6
	.ascii	"\015\012\000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld8
_$AVL_TREE$_Ld8:
	.short	0,1
	.long	0,-1,2
.reference _$AVL_TREE$_Ld7
.globl	_$AVL_TREE$_Ld7
_$AVL_TREE$_Ld7:
.reference _$AVL_TREE$_Ld8
	.ascii	"  \000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld10
_$AVL_TREE$_Ld10:
	.short	0,1
	.long	0,-1,39
.reference _$AVL_TREE$_Ld9
.globl	_$AVL_TREE$_Ld9
_$AVL_TREE$_Ld9:
.reference _$AVL_TREE$_Ld10
	.ascii	"-End-Of-AVL-Tree---------------------\015\012\000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld12
_$AVL_TREE$_Ld12:
	.short	0,1
	.long	0,-1,4
.reference _$AVL_TREE$_Ld11
.globl	_$AVL_TREE$_Ld11
_$AVL_TREE$_Ld11:
.reference _$AVL_TREE$_Ld12
	.ascii	"    \000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld14
_$AVL_TREE$_Ld14:
	.short	0,1
	.long	0,-1,7
.reference _$AVL_TREE$_Ld13
.globl	_$AVL_TREE$_Ld13
_$AVL_TREE$_Ld13:
.reference _$AVL_TREE$_Ld14
	.ascii	"  Self=\000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld16
_$AVL_TREE$_Ld16:
	.short	0,1
	.long	0,-1,9
.reference _$AVL_TREE$_Ld15
.globl	_$AVL_TREE$_Ld15
_$AVL_TREE$_Ld15:
.reference _$AVL_TREE$_Ld16
	.ascii	"  Parent=\000"

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld18
_$AVL_TREE$_Ld18:
	.short	0,1
	.long	0,-1,10
.reference _$AVL_TREE$_Ld17
.globl	_$AVL_TREE$_Ld17
_$AVL_TREE$_Ld17:
.reference _$AVL_TREE$_Ld18
	.ascii	"  Balance=\000"
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

L_AVL_TREE_TAVLTREE_$__FINDLOWEST$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDLOWEST$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDSUCCESSOR$TAVLTREENODE$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__ADD$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__ADD$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDINSERTPOS$POINTER$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDINSERTPOS$POINTER$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__BALANCEAFTERINSERT$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__BALANCEAFTERDELETE$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$_CLEAR_DELETENODE$TAVLTREENODE
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

L_AVL_TREE_TAVLTREE_$__CREATE$TLISTSORTCOMPARE$$TAVLTREE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__CREATE$TLISTSORTCOMPARE$$TAVLTREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__DELETE$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FIND$POINTER$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDPOINTER$POINTER$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDPOINTER$POINTER$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__CLEAR$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__CLEAR
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

L_AVL_TREE_TAVLTREENODEENUMERATOR_$__CREATE$TAVLTREE$$TAVLTREENODEENUMERATOR$stub:
.indirect_symbol _AVL_TREE_TAVLTREENODEENUMERATOR_$__CREATE$TAVLTREE$$TAVLTREENODEENUMERATOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDKEY$POINTER$TLISTSORTCOMPARE$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDLEFTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDLEFTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDRIGHTMOSTSAMEKEY$TAVLTREENODE$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDPRECESSOR$TAVLTREENODE$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__FINDLEFTMOST$POINTER$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__FINDLEFTMOST$POINTER$$TAVLTREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$_CONSISTENCYCHECK$$LONGINT_CHECKNODE$TAVLTREENODE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT$stub:
.indirect_symbol _AVL_TREE_TAVLTREENODE_$__TREEDEPTH$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$_FREEANDCLEAR_FREENODE$TAVLTREENODE
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$__CONSISTENCYCHECK$$LONGINT$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__CONSISTENCYCHECK$$LONGINT
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITESTR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$_WRITEREPORTTOSTREAM$TSTREAM$INT64_WRITETREENODE$TAVLTREENODE$ANSISTRING
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
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

L_AVL_TREE_TAVLTREE_$__WRITEREPORTTOSTREAM$TSTREAM$INT64$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__WRITEREPORTTOSTREAM$TSTREAM$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

L_AVL_TREE_TAVLTREE_$__ADD$POINTER$$TAVLTREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREE_$__ADD$POINTER$$TAVLTREENODE
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

L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CLEAR$stub:
.indirect_symbol _AVL_TREE_TAVLTREENODEMEMMANAGER_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREENODE_$__CLEAR$stub:
.indirect_symbol _AVL_TREE_TAVLTREENODE_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSEFIRSTFREENODE$stub:
.indirect_symbol _AVL_TREE_TAVLTREENODEMEMMANAGER_$__DISPOSEFIRSTFREENODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_AVL_TREE_TAVLTREENODEMEMMANAGER_$__CREATE$$TAVLTREENODEMEMMANAGER$stub:
.indirect_symbol _AVL_TREE_TAVLTREENODEMEMMANAGER_$__CREATE$$TAVLTREENODEMEMMANAGER
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
.globl	_$AVL_TREE$_Ld20
_$AVL_TREE$_Ld20:
	.short	0
	.long	_$AVL_TREE$_Ld21
	.align 2
.globl	_$AVL_TREE$_Ld21
_$AVL_TREE$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_AVL_TREE_TAVLTREENODE
_INIT_AVL_TREE_TAVLTREENODE:
	.byte	15,12
	.ascii	"TAVLTreeNode"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_AVL_TREE_TAVLTREENODE
_RTTI_AVL_TREE_TAVLTREENODE:
	.byte	15,12
	.ascii	"TAVLTreeNode"
	.long	_VMT_AVL_TREE_TAVLTREENODE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"AVL_Tree"
	.short	0

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld23
_$AVL_TREE$_Ld23:
	.short	0
	.long	_$AVL_TREE$_Ld24
	.align 2
.globl	_$AVL_TREE$_Ld24
_$AVL_TREE$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_AVL_TREE_TBASEAVLTREENODEMANAGER
_INIT_AVL_TREE_TBASEAVLTREENODEMANAGER:
	.byte	15,23
	.ascii	"TBaseAVLTreeNodeManager"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_AVL_TREE_TBASEAVLTREENODEMANAGER
_RTTI_AVL_TREE_TBASEAVLTREENODEMANAGER:
	.byte	15,23
	.ascii	"TBaseAVLTreeNodeManager"
	.long	_VMT_AVL_TREE_TBASEAVLTREENODEMANAGER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"AVL_Tree"
	.short	0

.const_data
	.align 2
.globl	_INIT_AVL_TREE_DEF140
_INIT_AVL_TREE_DEF140:
	.byte	12
	.ascii	"\000"
	.long	4,10
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_AVL_TREE_DEF139
_INIT_AVL_TREE_DEF139:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld26
_$AVL_TREE$_Ld26:
	.short	0
	.long	_$AVL_TREE$_Ld27
	.align 2
.globl	_$AVL_TREE$_Ld27
_$AVL_TREE$_Ld27:
	.short	0

.const_data
	.align 2
.globl	_INIT_AVL_TREE_TAVLTREE
_INIT_AVL_TREE_TAVLTREE:
	.byte	15,8
	.ascii	"TAVLTree"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_AVL_TREE_TAVLTREE
_RTTI_AVL_TREE_TAVLTREE:
	.byte	15,8
	.ascii	"TAVLTree"
	.long	_VMT_AVL_TREE_TAVLTREE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"AVL_Tree"
	.short	0

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld29
_$AVL_TREE$_Ld29:
	.short	0
	.long	_$AVL_TREE$_Ld30
	.align 2
.globl	_$AVL_TREE$_Ld30
_$AVL_TREE$_Ld30:
	.short	0

.const_data
	.align 2
.globl	_INIT_AVL_TREE_TAVLTREENODEENUMERATOR
_INIT_AVL_TREE_TAVLTREENODEENUMERATOR:
	.byte	15,22
	.ascii	"TAVLTreeNodeEnumerator"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_AVL_TREE_TAVLTREENODEENUMERATOR
_RTTI_AVL_TREE_TAVLTREENODEENUMERATOR:
	.byte	15,22
	.ascii	"TAVLTreeNodeEnumerator"
	.long	_VMT_AVL_TREE_TAVLTREENODEENUMERATOR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"AVL_Tree"
	.short	0

.const_data
	.align 2
.globl	_$AVL_TREE$_Ld32
_$AVL_TREE$_Ld32:
	.short	0
	.long	_$AVL_TREE$_Ld33
	.align 2
.globl	_$AVL_TREE$_Ld33
_$AVL_TREE$_Ld33:
	.short	0

.const_data
	.align 2
.globl	_INIT_AVL_TREE_TAVLTREENODEMEMMANAGER
_INIT_AVL_TREE_TAVLTREENODEMEMMANAGER:
	.byte	15,22
	.ascii	"TAVLTreeNodeMemManager"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_AVL_TREE_TAVLTREENODEMEMMANAGER
_RTTI_AVL_TREE_TAVLTREENODEMEMMANAGER:
	.byte	15,22
	.ascii	"TAVLTreeNodeMemManager"
	.long	_VMT_AVL_TREE_TAVLTREENODEMEMMANAGER
	.long	_RTTI_AVL_TREE_TBASEAVLTREENODEMANAGER
	.short	0
	.byte	8
	.ascii	"AVL_Tree"
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
L_U_AVL_TREE_NODEMEMMANAGER$non_lazy_ptr:
.indirect_symbol _U_AVL_TREE_NODEMEMMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_AVL_TREE_COMPAREPOINTER$POINTER$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _AVL_TREE_COMPAREPOINTER$POINTER$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_AVL_TREE_TAVLTREENODEENUMERATOR$non_lazy_ptr:
.indirect_symbol _VMT_AVL_TREE_TAVLTREENODEENUMERATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld1$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld3$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld5$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld7$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld9$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld11$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld13$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld15$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$AVL_TREE$_Ld17$non_lazy_ptr:
.indirect_symbol _$AVL_TREE$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_AVL_TREE_TAVLTREENODE$non_lazy_ptr:
.indirect_symbol _VMT_AVL_TREE_TAVLTREENODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_AVL_TREE_TAVLTREENODEMEMMANAGER$non_lazy_ptr:
.indirect_symbol _VMT_AVL_TREE_TAVLTREENODEMEMMANAGER
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

