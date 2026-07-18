# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE
_DTDMODEL_TDTDMODEL_$__GETENTITIES$$THASHTABLE:
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
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movb	$1,(%esp)
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$256,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
Lj6:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE
_DTDMODEL_TDTDMODEL_$__GETNOTATIONS$$THASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj21
	jmp	Lj22
Lj21:
	movb	$1,(%esp)
	movl	L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr-Lj20(%ebx),%edx
	movl	$256,%ecx
	movl	$0,%eax
	call	L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
Lj22:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL
_DTDMODEL_TDTDMODEL_$__CREATE$THASHTABLE$$TDTDMODEL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj37
	jmp	Lj38
Lj37:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj38:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj43
	jmp	Lj44
Lj43:
	jmp	Lj35
Lj44:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj47
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj51
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	$1,4(%eax)
Lj51:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj52
	call	LFPC_RERAISE$stub
Lj52:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj60
	jmp	Lj59
Lj60:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj58
	jmp	Lj59
Lj58:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj59:
Lj47:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj49
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj64
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj65
	jmp	Lj66
Lj65:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj66:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj64:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj63
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj63:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj49
Lj49:
Lj35:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TDTDMODEL_$__DESTROY
_DTDMODEL_TDTDMODEL_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj73
	jmp	Lj74
Lj73:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj74:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj87
	jmp	Lj86
Lj87:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj85
	jmp	Lj86
Lj85:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj86:
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL
_DTDMODEL_TDTDMODEL_$__REFERENCE$$TDTDMODEL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	incl	4(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TDTDMODEL_$__RELEASE
_DTDMODEL_TDTDMODEL_$__RELEASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj96
	jmp	Lj97
Lj96:
	movl	-4(%ebp),%eax
	decl	4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj98
	jmp	Lj99
Lj98:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj99:
Lj97:
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__ADD$$TCONTENTPARTICLE
_DTDMODEL_TCONTENTPARTICLE_$__ADD$$TCONTENTPARTICLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj105
Lj105:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj106
	jmp	Lj107
Lj106:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj105(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
Lj107:
	movl	L_VMT_DTDMODEL_TCONTENTPARTICLE$non_lazy_ptr-Lj105(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__DESTROY
_DTDMODEL_TCONTENTPARTICLE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj130
	jmp	Lj131
Lj130:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj131:
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj134
	jmp	Lj135
Lj134:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj137
	incl	-12(%ebp)
	.align 2
Lj138:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj138
Lj137:
Lj135:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj155
	jmp	Lj154
Lj155:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj153
	jmp	Lj154
Lj153:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj154:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE
_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT
_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj168
	jmp	Lj169
Lj168:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj172
Lj169:
	movl	$0,-8(%ebp)
Lj172:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN
_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj177
	jmp	Lj179
Lj179:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$3,%eax
	je	Lj177
	jmp	Lj178
Lj177:
	movb	$1,-5(%ebp)
	jmp	Lj180
Lj178:
	movb	$0,-5(%ebp)
Lj180:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj183
	jmp	Lj182
Lj183:
	cmpb	$0,-5(%ebp)
	jne	Lj181
	jmp	Lj182
Lj181:
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj185
	decl	-12(%ebp)
	.align 2
Lj186:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj199
	jmp	Lj200
Lj199:
	jmp	Lj175
Lj200:
	cmpl	-12(%ebp),%ebx
	jg	Lj186
Lj185:
Lj182:
Lj175:
	movb	-5(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN
_DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$2,%eax
	je	Lj205
	jmp	Lj206
Lj205:
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj208
	decl	-16(%ebp)
	.align 2
Lj209:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj222
	jmp	Lj223
Lj222:
	jmp	Lj201
Lj223:
	cmpl	-16(%ebp),%ebx
	jg	Lj209
Lj208:
Lj206:
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj224
	jmp	Lj225
Lj224:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj225:
Lj201:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE
_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1,%eax
	jb	Lj237
	decl	%eax
	je	Lj239
	decl	%eax
	je	Lj238
	jmp	Lj237
Lj238:
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj241
	decl	-16(%ebp)
	.align 2
Lj242:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,%esi
	movl	%esi,%edi
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj259
	jmp	Lj261
Lj261:
	movl	%edi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj259
	jmp	Lj260
Lj259:
	jmp	Lj232
Lj260:
	cmpl	-16(%ebp),%ebx
	jg	Lj242
Lj241:
	jmp	Lj236
Lj239:
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj265
	decl	-16(%ebp)
	.align 2
Lj266:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,%esi
	movl	%esi,%edi
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj283
	jmp	Lj284
Lj283:
	jmp	Lj232
Lj284:
	cmpl	-16(%ebp),%ebx
	jg	Lj266
Lj265:
	jmp	Lj236
Lj237:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj285
	jmp	Lj286
Lj285:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj286:
Lj236:
Lj232:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE
_DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$2,%eax
	je	Lj293
	jmp	Lj294
Lj293:
	movl	-12(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj296
	decl	-20(%ebp)
	.align 2
Lj297:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,%esi
	movl	%esi,%edi
	movl	-4(%ebp),%edx
	movl	%edi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj314
	jmp	Lj316
Lj316:
	movl	%edi,%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj314
	jmp	Lj315
Lj314:
	jmp	Lj289
Lj315:
	cmpl	-20(%ebp),%ebx
	jg	Lj297
Lj296:
Lj294:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$2,%eax
	je	Lj319
	jmp	Lj321
Lj321:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$3,%eax
	je	Lj319
	jmp	Lj320
Lj319:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub
	movl	%eax,-16(%ebp)
Lj320:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj330
	jmp	Lj329
Lj330:
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj328
	jmp	Lj329
Lj328:
	movl	-12(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE$stub
	movl	%eax,-16(%ebp)
Lj329:
Lj289:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TELEMENTDECL_$__GETATTRDEFCOUNT$$LONGINT
_DTDMODEL_TELEMENTDECL_$__GETATTRDEFCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj341
	jmp	Lj342
Lj341:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj345
Lj342:
	movl	$0,-8(%ebp)
Lj345:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TELEMENTDECL_$__ATTRDEFBYINDEX$LONGINT$$TATTRIBUTEDEF
_DTDMODEL_TELEMENTDECL_$__ATTRDEFBYINDEX$LONGINT$$TATTRIBUTEDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj350
	jmp	Lj351
Lj350:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj358
Lj351:
	movl	$0,-12(%ebp)
Lj358:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TELEMENTDECL_$__DESTROY
_DTDMODEL_TELEMENTDECL_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj363
	jmp	Lj364
Lj363:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj364:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj369
	jmp	Lj370
Lj369:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj372
	incl	-12(%ebp)
	.align 2
Lj373:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj373
Lj372:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj370:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj384
	jmp	Lj383
Lj384:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj382
	jmp	Lj383
Lj382:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj383:
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF
_DTDMODEL_TELEMENTDECL_$__GETATTRDEF$PHASHITEM$$TATTRIBUTEDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj389
	jmp	Lj390
Lj389:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj392
	decl	-16(%ebp)
	.align 2
Lj393:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	4(%edx),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	4(%edx),%edx
	cmpl	-4(%ebp),%edx
	je	Lj396
	jmp	Lj397
Lj396:
	jmp	Lj387
Lj397:
	cmpl	-16(%ebp),%eax
	jg	Lj393
Lj392:
Lj390:
	movl	$0,-12(%ebp)
Lj387:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TELEMENTDECL_$__ADDATTRDEF$TATTRIBUTEDEF
_DTDMODEL_TELEMENTDECL_$__ADDATTRDEF$TATTRIBUTEDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj401
Lj401:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj402
	jmp	Lj403
Lj402:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj401(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
Lj403:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	decl	%eax
	cmpl	$3,%eax
	jb	Lj416
Lj416:
	jc	Lj414
	jmp	Lj415
Lj414:
	movl	-8(%ebp),%eax
	movb	$1,12(%eax)
Lj415:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TATTRIBUTEDEF_$__CREATE$PHASHITEM$LONGINT$$TATTRIBUTEDEF
_DTDMODEL_TATTRIBUTEDEF_$__CREATE$PHASHITEM$LONGINT$$TATTRIBUTEDEF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj420
Lj420:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj421
	jmp	Lj422
Lj421:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj422:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj427
	jmp	Lj428
Lj427:
	jmp	Lj419
Lj428:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj431
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj435
	movl	$64,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%esi
	movl	L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr-Lj420(%ebx),%edx
	movl	%esi,%eax
	call	Lfpc_initialize$stub
	movl	-12(%ebp),%eax
	movl	%esi,8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movb	$0,%cl
	movl	$64,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movb	$1,60(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-12(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj466
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj466:
	cmpl	$5,%eax
	je	Lj464
	jmp	Lj465
Lj465:
	movl	8(%ebp),%eax
	cmpl	$6,%eax
	je	Lj464
	jmp	Lj463
Lj464:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	L_$DTDMODEL$_Ld1$non_lazy_ptr-Lj420(%ebx),%eax
	call	L_SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj462
	jmp	Lj463
Lj462:
	movb	$1,24(%esi)
	jmp	Lj471
Lj463:
	movb	$0,24(%esi)
Lj471:
Lj435:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj436
	call	LFPC_RERAISE$stub
Lj436:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj474
	jmp	Lj473
Lj474:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj472
	jmp	Lj473
Lj472:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj473:
Lj431:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj433
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj478
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj479
	jmp	Lj480
Lj479:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj480:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj478:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj477
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj477:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj433
Lj433:
Lj419:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TATTRIBUTEDEF_$__DESTROY
_DTDMODEL_TATTRIBUTEDEF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj486
Lj486:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj487
	jmp	Lj488
Lj487:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj488:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj494
	.align 2
Lj493:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr-Lj486(%ebx),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-12(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj494:
	cmpl	$0,-12(%ebp)
	jne	Lj493
	jmp	Lj495
Lj495:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj512
	jmp	Lj511
Lj512:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj510
	jmp	Lj511
Lj510:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj511:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TATTRIBUTEDEF_$__ADDENUMTOKEN$PWIDECHAR$LONGINT$$BOOLEAN
_DTDMODEL_TATTRIBUTEDEF_$__ADDENUMTOKEN$PWIDECHAR$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj516
Lj516:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj524
	decl	-20(%ebp)
	.align 2
Lj525:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj529
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj529:
	cmpl	-8(%ebp),%eax
	je	Lj528
	jmp	Lj527
Lj528:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-8(%ebp),%edx
	shll	$1,%edx
	movl	-4(%ebp),%edi
	movl	%edx,%ecx
	movl	%edi,%edx
	call	L_SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj526
	jmp	Lj527
Lj526:
	jmp	Lj515
Lj527:
	cmpl	-20(%ebp),%ebx
	jg	Lj525
Lj524:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_DTDMODEL_DEF26$non_lazy_ptr-Lj516(%esi),%edx
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%edi
	movl	-24(%ebp),%ebx
	leal	(%edi,%ebx,4),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	leal	(%edi,%ebx,4),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub
	movb	$1,-13(%ebp)
Lj515:
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DTDMODEL_TATTRIBUTEDEF_$__HASENUMTOKEN$WIDESTRING$$BOOLEAN
_DTDMODEL_TATTRIBUTEDEF_$__HASENUMTOKEN$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	Lfpc_dynarray_length$stub
	testl	%eax,%eax
	je	Lj558
	jmp	Lj559
Lj558:
	jmp	Lj554
Lj559:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	Lfpc_dynarray_length$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj563
	decl	-16(%ebp)
	.align 2
Lj564:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj567
	jmp	Lj568
Lj567:
	jmp	Lj554
Lj568:
	cmpl	-16(%ebp),%ebx
	jg	Lj564
Lj563:
	movb	$0,-9(%ebp)
Lj554:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld3
_$DTDMODEL$_Ld3:
	.byte	16
	.ascii	"TContentParticle"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TCONTENTPARTICLE
_VMT_DTDMODEL_TCONTENTPARTICLE:
	.long	28,-28
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DTDMODEL$_Ld3
	.long	0,0
	.long	_$DTDMODEL$_Ld4
	.long	_RTTI_DTDMODEL_TCONTENTPARTICLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DTDMODEL_TCONTENTPARTICLE_$__DESTROY
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
.globl	_$DTDMODEL$_Ld6
_$DTDMODEL$_Ld6:
	.byte	10
	.ascii	"TDTDObject"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TDTDOBJECT
_VMT_DTDMODEL_TDTDOBJECT:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DTDMODEL$_Ld6
	.long	0,0
	.long	_$DTDMODEL$_Ld7
	.long	_RTTI_DTDMODEL_TDTDOBJECT
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
.globl	_$DTDMODEL$_Ld9
_$DTDMODEL$_Ld9:
	.byte	13
	.ascii	"TAttributeDef"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TATTRIBUTEDEF
_VMT_DTDMODEL_TATTRIBUTEDEF:
	.long	32,-32
	.long	_VMT_DTDMODEL_TDTDOBJECT
	.long	_$DTDMODEL$_Ld9
	.long	0,0
	.long	_$DTDMODEL$_Ld10
	.long	_RTTI_DTDMODEL_TATTRIBUTEDEF
	.long	_INIT_DTDMODEL_TATTRIBUTEDEF
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DTDMODEL_TATTRIBUTEDEF_$__DESTROY
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
.globl	_$DTDMODEL$_Ld12
_$DTDMODEL$_Ld12:
	.byte	12
	.ascii	"TElementDecl"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TELEMENTDECL
_VMT_DTDMODEL_TELEMENTDECL:
	.long	32,-32
	.long	_VMT_DTDMODEL_TDTDOBJECT
	.long	_$DTDMODEL$_Ld12
	.long	0,0
	.long	_$DTDMODEL$_Ld13
	.long	_RTTI_DTDMODEL_TELEMENTDECL
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DTDMODEL_TELEMENTDECL_$__DESTROY
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
.globl	_$DTDMODEL$_Ld15
_$DTDMODEL$_Ld15:
	.byte	11
	.ascii	"TEntityDecl"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TENTITYDECL
_VMT_DTDMODEL_TENTITYDECL:
	.long	64,-64
	.long	_VMT_DTDMODEL_TDTDOBJECT
	.long	_$DTDMODEL$_Ld15
	.long	0,0
	.long	_$DTDMODEL$_Ld16
	.long	_RTTI_DTDMODEL_TENTITYDECL
	.long	_INIT_DTDMODEL_TENTITYDECL
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
.globl	_$DTDMODEL$_Ld18
_$DTDMODEL$_Ld18:
	.byte	13
	.ascii	"TNotationDecl"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TNOTATIONDECL
_VMT_DTDMODEL_TNOTATIONDECL:
	.long	20,-20
	.long	_VMT_DTDMODEL_TDTDOBJECT
	.long	_$DTDMODEL$_Ld18
	.long	0,0
	.long	_$DTDMODEL$_Ld19
	.long	_RTTI_DTDMODEL_TNOTATIONDECL
	.long	_INIT_DTDMODEL_TNOTATIONDECL
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
.globl	_$DTDMODEL$_Ld21
_$DTDMODEL$_Ld21:
	.byte	9
	.ascii	"TDTDModel"

.const_data
	.align 2
.globl	_VMT_DTDMODEL_TDTDMODEL
_VMT_DTDMODEL_TDTDMODEL:
	.long	36,-36
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DTDMODEL$_Ld21
	.long	0,0
	.long	_$DTDMODEL$_Ld22
	.long	_RTTI_DTDMODEL_TDTDMODEL
	.long	_INIT_DTDMODEL_TDTDMODEL
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DTDMODEL_TDTDMODEL_$__DESTROY
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
.globl	_THREADVARLIST_DTDMODEL
_THREADVARLIST_DTDMODEL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld2
_$DTDMODEL$_Ld2:
	.long	-1,10
.reference _$DTDMODEL$_Ld1
.globl	_$DTDMODEL$_Ld1
_$DTDMODEL$_Ld1:
.reference _$DTDMODEL$_Ld2
	.short	120,109,108,110,115,0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE$stub:
.indirect_symbol _XMLUTILS_THASHTABLE_$__CREATE$LONGINT$BOOLEAN$$THASHTABLE
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__GETCHILDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__GETCHILD$LONGINT$$TCONTENTPARTICLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__ISREQUIRED$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__MOREREQUIRED$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__FINDFIRST$TOBJECT$$TCONTENTPARTICLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE$stub:
.indirect_symbol _DTDMODEL_TCONTENTPARTICLE_$__FINDNEXT$TOBJECT$LONGINT$$TCONTENTPARTICLE
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

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
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

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
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

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
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

L_SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT$stub:
.indirect_symbol _SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TCPTYPE
_INIT_DTDMODEL_TCPTYPE:
	.byte	3,7
	.ascii	"TCPType"
	.byte	5
	.long	0,2,0
	.byte	6
	.ascii	"ctName"
	.byte	8
	.ascii	"ctChoice"
	.byte	5
	.ascii	"ctSeq"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCPTYPE
_RTTI_DTDMODEL_TCPTYPE:
	.byte	3,7
	.ascii	"TCPType"
	.byte	5
	.long	0,2,0
	.byte	6
	.ascii	"ctName"
	.byte	8
	.ascii	"ctChoice"
	.byte	5
	.ascii	"ctSeq"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCPTYPE_s2o
_RTTI_DTDMODEL_TCPTYPE_s2o:
	.long	3,1
	.long	_RTTI_DTDMODEL_TCPTYPE+29
	.long	0
	.long	_RTTI_DTDMODEL_TCPTYPE+22
	.long	2
	.long	_RTTI_DTDMODEL_TCPTYPE+38

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCPTYPE_o2s
_RTTI_DTDMODEL_TCPTYPE_o2s:
	.long	0
	.long	_RTTI_DTDMODEL_TCPTYPE+22
	.long	_RTTI_DTDMODEL_TCPTYPE+29
	.long	_RTTI_DTDMODEL_TCPTYPE+38

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TCPQUANT
_INIT_DTDMODEL_TCPQUANT:
	.byte	3,8
	.ascii	"TCPQuant"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"cqOnce"
	.byte	12
	.ascii	"cqZeroOrOnce"
	.byte	12
	.ascii	"cqZeroOrMore"
	.byte	12
	.ascii	"cqOnceOrMore"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCPQUANT
_RTTI_DTDMODEL_TCPQUANT:
	.byte	3,8
	.ascii	"TCPQuant"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"cqOnce"
	.byte	12
	.ascii	"cqZeroOrOnce"
	.byte	12
	.ascii	"cqZeroOrMore"
	.byte	12
	.ascii	"cqOnceOrMore"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCPQUANT_s2o
_RTTI_DTDMODEL_TCPQUANT_s2o:
	.long	4,0
	.long	_RTTI_DTDMODEL_TCPQUANT+23
	.long	3
	.long	_RTTI_DTDMODEL_TCPQUANT+56
	.long	2
	.long	_RTTI_DTDMODEL_TCPQUANT+43
	.long	1
	.long	_RTTI_DTDMODEL_TCPQUANT+30

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCPQUANT_o2s
_RTTI_DTDMODEL_TCPQUANT_o2s:
	.long	0
	.long	_RTTI_DTDMODEL_TCPQUANT+23
	.long	_RTTI_DTDMODEL_TCPQUANT+30
	.long	_RTTI_DTDMODEL_TCPQUANT+43
	.long	_RTTI_DTDMODEL_TCPQUANT+56

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld4
_$DTDMODEL$_Ld4:
	.short	0
	.long	_$DTDMODEL$_Ld5
	.align 2
.globl	_$DTDMODEL$_Ld5
_$DTDMODEL$_Ld5:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TCONTENTPARTICLE
_INIT_DTDMODEL_TCONTENTPARTICLE:
	.byte	15,16
	.ascii	"TContentParticle"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TCONTENTPARTICLE
_RTTI_DTDMODEL_TCONTENTPARTICLE:
	.byte	15,16
	.ascii	"TContentParticle"
	.long	_VMT_DTDMODEL_TCONTENTPARTICLE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
	.short	0

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld7
_$DTDMODEL$_Ld7:
	.short	0
	.long	_$DTDMODEL$_Ld8
	.align 2
.globl	_$DTDMODEL$_Ld8
_$DTDMODEL$_Ld8:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TDTDOBJECT
_INIT_DTDMODEL_TDTDOBJECT:
	.byte	15,10
	.ascii	"TDTDObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TDTDOBJECT
_RTTI_DTDMODEL_TDTDOBJECT:
	.byte	15,10
	.ascii	"TDTDObject"
	.long	_VMT_DTDMODEL_TDTDOBJECT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TATTRDEFAULT
_INIT_DTDMODEL_TATTRDEFAULT:
	.byte	3,12
	.ascii	"TAttrDefault"
	.byte	5
	.long	0,3,0
	.byte	9
	.ascii	"adImplied"
	.byte	9
	.ascii	"adDefault"
	.byte	10
	.ascii	"adRequired"
	.byte	7
	.ascii	"adFixed"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TATTRDEFAULT
_RTTI_DTDMODEL_TATTRDEFAULT:
	.byte	3,12
	.ascii	"TAttrDefault"
	.byte	5
	.long	0,3,0
	.byte	9
	.ascii	"adImplied"
	.byte	9
	.ascii	"adDefault"
	.byte	10
	.ascii	"adRequired"
	.byte	7
	.ascii	"adFixed"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TATTRDEFAULT_s2o
_RTTI_DTDMODEL_TATTRDEFAULT_s2o:
	.long	4,1
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+37
	.long	3
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+58
	.long	0
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+27
	.long	2
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+47

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TATTRDEFAULT_o2s
_RTTI_DTDMODEL_TATTRDEFAULT_o2s:
	.long	0
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+27
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+37
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+47
	.long	_RTTI_DTDMODEL_TATTRDEFAULT+58

.const_data
	.align 2
.globl	_INIT_DTDMODEL_DEF26
_INIT_DTDMODEL_DEF26:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258
	.long	_INIT_SYSTEM_WIDESTRING
	.byte	8
	.ascii	"dtdmodel"

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld10
_$DTDMODEL$_Ld10:
	.short	0
	.long	_$DTDMODEL$_Ld11
	.align 2
.globl	_$DTDMODEL$_Ld11
_$DTDMODEL$_Ld11:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TATTRIBUTEDEF
_INIT_DTDMODEL_TATTRIBUTEDEF:
	.byte	15,13
	.ascii	"TAttributeDef"
	.long	4,1
	.long	_INIT_DTDMODEL_DEF26
	.long	28

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TATTRIBUTEDEF
_RTTI_DTDMODEL_TATTRIBUTEDEF:
	.byte	15,13
	.ascii	"TAttributeDef"
	.long	_VMT_DTDMODEL_TATTRIBUTEDEF
	.long	_RTTI_DTDMODEL_TDTDOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TELEMENTCONTENTTYPE
_INIT_DTDMODEL_TELEMENTCONTENTTYPE:
	.byte	3,19
	.ascii	"TElementContentType"
	.byte	5
	.long	0,4,0
	.byte	12
	.ascii	"ctUndeclared"
	.byte	5
	.ascii	"ctAny"
	.byte	7
	.ascii	"ctEmpty"
	.byte	7
	.ascii	"ctMixed"
	.byte	10
	.ascii	"ctChildren"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE
_RTTI_DTDMODEL_TELEMENTCONTENTTYPE:
	.byte	3,19
	.ascii	"TElementContentType"
	.byte	5
	.long	0,4,0
	.byte	12
	.ascii	"ctUndeclared"
	.byte	5
	.ascii	"ctAny"
	.byte	7
	.ascii	"ctEmpty"
	.byte	7
	.ascii	"ctMixed"
	.byte	10
	.ascii	"ctChildren"
	.byte	8
	.ascii	"dtdmodel"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE_s2o
_RTTI_DTDMODEL_TELEMENTCONTENTTYPE_s2o:
	.long	5,1
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+47
	.long	4
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+69
	.long	2
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+53
	.long	3
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+61
	.long	0
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+34

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE_o2s
_RTTI_DTDMODEL_TELEMENTCONTENTTYPE_o2s:
	.long	0
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+34
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+47
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+53
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+61
	.long	_RTTI_DTDMODEL_TELEMENTCONTENTTYPE+69

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld13
_$DTDMODEL$_Ld13:
	.short	0
	.long	_$DTDMODEL$_Ld14
	.align 2
.globl	_$DTDMODEL$_Ld14
_$DTDMODEL$_Ld14:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TELEMENTDECL
_INIT_DTDMODEL_TELEMENTDECL:
	.byte	15,12
	.ascii	"TElementDecl"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TELEMENTDECL
_RTTI_DTDMODEL_TELEMENTDECL:
	.byte	15,12
	.ascii	"TElementDecl"
	.long	_VMT_DTDMODEL_TELEMENTDECL
	.long	_RTTI_DTDMODEL_TDTDOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
	.short	0

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld16
_$DTDMODEL$_Ld16:
	.short	0
	.long	_$DTDMODEL$_Ld17
	.align 2
.globl	_$DTDMODEL$_Ld17
_$DTDMODEL$_Ld17:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TENTITYDECL
_INIT_DTDMODEL_TENTITYDECL:
	.byte	15,11
	.ascii	"TEntityDecl"
	.long	4,8
	.long	_INIT_SYSTEM_WIDESTRING
	.long	8
	.long	_INIT_SYSTEM_WIDESTRING
	.long	12
	.long	_INIT_SYSTEM_WIDESTRING
	.long	16
	.long	_INIT_SYSTEM_WIDESTRING
	.long	20
	.long	_INIT_SYSTEM_WIDESTRING
	.long	24
	.long	_INIT_SYSTEM_WIDESTRING
	.long	28
	.long	_INIT_SYSTEM_WIDESTRING
	.long	32
	.long	_INIT_SYSTEM_WIDESTRING
	.long	36

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TENTITYDECL
_RTTI_DTDMODEL_TENTITYDECL:
	.byte	15,11
	.ascii	"TEntityDecl"
	.long	_VMT_DTDMODEL_TENTITYDECL
	.long	_RTTI_DTDMODEL_TDTDOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
	.short	0

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld19
_$DTDMODEL$_Ld19:
	.short	0
	.long	_$DTDMODEL$_Ld20
	.align 2
.globl	_$DTDMODEL$_Ld20
_$DTDMODEL$_Ld20:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TNOTATIONDECL
_INIT_DTDMODEL_TNOTATIONDECL:
	.byte	15,13
	.ascii	"TNotationDecl"
	.long	4,3
	.long	_INIT_SYSTEM_WIDESTRING
	.long	8
	.long	_INIT_SYSTEM_WIDESTRING
	.long	12
	.long	_INIT_SYSTEM_WIDESTRING
	.long	16

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TNOTATIONDECL
_RTTI_DTDMODEL_TNOTATIONDECL:
	.byte	15,13
	.ascii	"TNotationDecl"
	.long	_VMT_DTDMODEL_TNOTATIONDECL
	.long	_RTTI_DTDMODEL_TDTDOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
	.short	0

.const_data
	.align 2
.globl	_$DTDMODEL$_Ld22
_$DTDMODEL$_Ld22:
	.short	0
	.long	_$DTDMODEL$_Ld23
	.align 2
.globl	_$DTDMODEL$_Ld23
_$DTDMODEL$_Ld23:
	.short	0

.const_data
	.align 2
.globl	_INIT_DTDMODEL_TDTDMODEL
_INIT_DTDMODEL_TDTDMODEL:
	.byte	15,9
	.ascii	"TDTDModel"
	.long	4,4
	.long	_INIT_SYSTEM_WIDESTRING
	.long	20
	.long	_INIT_SYSTEM_WIDESTRING
	.long	24
	.long	_INIT_SYSTEM_WIDESTRING
	.long	28
	.long	_INIT_SYSTEM_WIDESTRING
	.long	32

.const_data
	.align 2
.globl	_RTTI_DTDMODEL_TDTDMODEL
_RTTI_DTDMODEL_TDTDMODEL:
	.byte	15,9
	.ascii	"TDTDModel"
	.long	_VMT_DTDMODEL_TDTDMODEL
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"dtdmodel"
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
L_VMT_XMLUTILS_THASHTABLE$non_lazy_ptr:
.indirect_symbol _VMT_XMLUTILS_THASHTABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DTDMODEL_TCONTENTPARTICLE$non_lazy_ptr:
.indirect_symbol _VMT_DTDMODEL_TCONTENTPARTICLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_XMLUTILS_TNODEDATA$non_lazy_ptr:
.indirect_symbol _INIT_XMLUTILS_TNODEDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DTDMODEL$_Ld1$non_lazy_ptr:
.indirect_symbol _$DTDMODEL$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_DTDMODEL_DEF26$non_lazy_ptr:
.indirect_symbol _INIT_DTDMODEL_DEF26
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

