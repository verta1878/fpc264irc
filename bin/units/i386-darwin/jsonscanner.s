# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__CREATE$TSTREAM$BOOLEAN$$TJSONSCANNER
_JSONSCANNER_TJSONSCANNER_$__CREATE$TSTREAM$BOOLEAN$$TJSONSCANNER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
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
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,25(%eax)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj36
	jmp	Lj35
Lj36:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj35
Lj34:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj35:
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
	jne	Lj40
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj41
	jmp	Lj42
Lj41:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj42:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj40:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj39
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj39:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONSCANNER
_JSONSCANNER_TJSONSCANNER_$__CREATE$ANSISTRING$BOOLEAN$$TJSONSCANNER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj48
Lj48:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj49
	jmp	Lj50
Lj49:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj50:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj55
	jmp	Lj56
Lj55:
	jmp	Lj47
Lj56:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj59
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj63
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj48(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*152(%ecx)
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,25(%eax)
Lj63:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj64
	call	LFPC_RERAISE$stub
Lj64:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj80
	jmp	Lj79
Lj80:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj78
	jmp	Lj79
Lj78:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj79:
Lj59:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj61
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj84
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj85
	jmp	Lj86
Lj85:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj86:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj84:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj83
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj83:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj61
Lj61:
Lj47:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__DESTROY
_JSONSCANNER_TJSONSCANNER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj93
	jmp	Lj94
Lj93:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj94:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj105
	jmp	Lj104
Lj105:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj103
	jmp	Lj104
Lj103:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj104:
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__FETCHTOKEN$$TJSONTOKEN
_JSONSCANNER_TJSONSCANNER_$__FETCHTOKEN$$TJSONTOKEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__DOFETCHTOKEN$$TJSONTOKEN$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING
_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj115
Lj115:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_JSONSCANNER_ESCANNERERROR$non_lazy_ptr-Lj115(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj115(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const
_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj123
Lj123:
	popl	-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%edx,%edi
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%esi
	movl	%ebx,%ecx
	movl	%esi,%edx
	movl	%edi,%eax
	call	LFPC_MOVE$stub
	movl	%esi,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	L_VMT_JSONSCANNER_ESCANNERERROR$non_lazy_ptr-Lj123(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	movl	-16(%ebp),%ebx
	leal	La2-Lj123(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__DOFETCHTOKEN$$TJSONTOKEN
_JSONSCANNER_TJSONSCANNER_$__DOFETCHTOKEN$$TJSONTOKEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-188(%ebp)
	movl	%esi,-184(%ebp)
	movl	%edi,-180(%ebp)
	call	Lj135
Lj135:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-112(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj138
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj141
	jmp	Lj142
Lj141:
	movl	%ebp,%eax
	call	L_JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj143
	jmp	Lj144
Lj143:
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	jmp	Lj138
Lj144:
Lj142:
	movl	-4(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,16(%esi)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj155
	subb	$9,%al
	je	Lj156
	subb	$23,%al
	je	Lj156
	subb	$2,%al
	je	Lj157
	subb	$5,%al
	je	Lj157
	subb	$5,%al
	je	Lj158
	decb	%al
	jb	Lj154
	subb	$1,%al
	jbe	Lj159
	subb	$2,%al
	jb	Lj154
	subb	$9,%al
	jbe	Lj159
	decb	%al
	je	Lj160
	subb	$33,%al
	je	Lj163
	subb	$2,%al
	je	Lj164
	subb	$2,%al
	je	Lj165
	subb	$2,%al
	jb	Lj154
	subb	$25,%al
	jbe	Lj165
	decb	%al
	je	Lj161
	subb	$2,%al
	je	Lj162
	jmp	Lj154
Lj155:
	movl	%ebp,%eax
	call	L_JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN$stub
	movl	$1,-8(%ebp)
	jmp	Lj153
Lj156:
	movl	$1,-8(%ebp)
	.align 2
Lj172:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj175
	jmp	Lj176
Lj175:
	movl	%ebp,%eax
	call	L_JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN$stub
	testb	%al,%al
	je	Lj177
	jmp	Lj178
Lj177:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	jmp	Lj138
Lj178:
Lj176:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$9,%eax
	je	Lj183
	cmpl	$32,%eax
	je	Lj183
Lj183:
	je	Lj172
	jmp	Lj174
Lj174:
	jmp	Lj153
Lj157:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	movb	%al,-37(%ebp)
	movb	-37(%ebp),%al
	cmpb	$39,%al
	je	Lj188
	jmp	Lj187
Lj188:
	movl	-4(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj186
	jmp	Lj187
Lj186:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-108(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub
	movl	%eax,-96(%ebp)
	movl	$0,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$2,-92(%ebp)
	leal	-108(%ebp),%ecx
	movl	L_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const$stub
Lj187:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,16(%esi)
	jmp	Lj206
	.align 2
Lj205:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	cmpb	$92,%al
	je	Lj208
	jmp	Lj209
Lj208:
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj224
	subb	$34,%al
	je	Lj214
	subb	$5,%al
	je	Lj215
	subb	$8,%al
	je	Lj222
	subb	$45,%al
	je	Lj221
	subb	$6,%al
	je	Lj217
	subb	$4,%al
	je	Lj220
	subb	$8,%al
	je	Lj218
	subb	$4,%al
	je	Lj219
	subb	$2,%al
	je	Lj216
	decb	%al
	je	Lj223
	jmp	Lj213
Lj214:
	movl	L_$JSONSCANNER$_Ld29$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj215:
	movl	L_$JSONSCANNER$_Ld31$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj216:
	movl	L_$JSONSCANNER$_Ld33$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj217:
	movl	L_$JSONSCANNER$_Ld35$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj218:
	movl	L_$JSONSCANNER$_Ld37$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj219:
	movl	L_$JSONSCANNER$_Ld39$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj220:
	movl	L_$JSONSCANNER$_Ld41$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj221:
	movl	L_$JSONSCANNER$_Ld43$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj222:
	movl	L_$JSONSCANNER$_Ld45$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	jmp	Lj212
Lj223:
	movl	L_$JSONSCANNER$_Ld47$non_lazy_ptr-Lj135(%ebx),%esi
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-44(%ebp)
	movl	$1,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj247:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	jb	Lj249
	subb	$48,%al
	subb	$9,%al
	jbe	Lj250
	subb	$8,%al
	jb	Lj249
	subb	$5,%al
	jbe	Lj250
	subb	$27,%al
	jb	Lj249
	subb	$5,%al
	jbe	Lj250
	jmp	Lj249
Lj250:
	leal	-44(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%esi
	movl	-24(%ebp),%edi
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-1(%esi,%edi,1)
	jmp	Lj248
Lj249:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-108(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub
	movl	%eax,-96(%ebp)
	movl	$0,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$2,-92(%ebp)
	leal	-108(%ebp),%ecx
	movl	L_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const$stub
Lj248:
	cmpl	$4,-24(%ebp)
	jl	Lj247
	movl	-4(%ebp),%eax
	cmpb	$0,25(%eax)
	jne	Lj267
	jmp	Lj268
Lj267:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-44(%ebp),%ecx
	leal	-120(%ebp),%eax
	movl	L_$JSONSCANNER$_Ld49$non_lazy_ptr-Lj135(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-120(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	leal	-116(%ebp),%edx
	call	Lfpc_uchar_to_unicodestr$stub
	movl	-116(%ebp),%eax
	leal	-112(%ebp),%edx
	call	L_SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING$stub
	movl	-112(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-112(%ebp),%eax
	movl	%eax,-44(%ebp)
	jmp	Lj287
Lj268:
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-44(%ebp),%ecx
	leal	-112(%ebp),%eax
	movl	L_$JSONSCANNER$_Ld49$non_lazy_ptr-Lj135(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-112(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	leal	-120(%ebp),%edx
	call	Lfpc_uchar_to_ansistr$stub
	movl	-120(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-120(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj287:
	jmp	Lj212
Lj224:
	movl	L_RESSTR_JSONSCANNER_SERROPENSTRING$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$stub
	jmp	Lj212
Lj213:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-140(%ebp)
	movl	$0,-144(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub
	movl	%eax,-132(%ebp)
	movl	$0,-136(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-124(%ebp)
	movl	$2,-128(%ebp)
	leal	-144(%ebp),%ecx
	movl	L_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const$stub
Lj212:
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	incl	%edx
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj318
	movl	-4(%eax),%eax
Lj318:
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj321
	jmp	Lj322
Lj321:
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-28(%ebp),%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj322:
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%ecx
	addl	%ecx,%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-44(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj337
	movl	-4(%ecx),%ecx
Lj337:
	movl	-44(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj340
	movl	-4(%eax),%eax
Lj340:
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	addl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj209:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj343
	jmp	Lj344
Lj343:
	movl	L_RESSTR_JSONSCANNER_SERROPENSTRING$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$stub
Lj344:
	movl	-4(%ebp),%eax
	incl	28(%eax)
Lj206:
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	movl	$32,(%esp)
	movl	L_$JSONSCANNER$_Ld51$non_lazy_ptr-Lj135(%ebx),%eax
	movzbl	-37(%ebp),%ecx
	leal	-176(%ebp),%edx
	call	Lfpc_varset_set$stub
	movzbl	(%esi),%eax
	btl	%eax,-176(%ebp)
	jc	Lj207
	jmp	Lj205
Lj207:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj357
	jmp	Lj358
Lj357:
	movl	L_RESSTR_JSONSCANNER_SERROPENSTRING$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$stub
Lj358:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj369
	jmp	Lj370
Lj369:
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-28(%ebp),%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj370:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$2,-8(%ebp)
	jmp	Lj153
Lj158:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$7,-8(%ebp)
	jmp	Lj153
Lj159:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj386
	.align 2
Lj385:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	jb	Lj389
	subb	$46,%al
	je	Lj390
	subb	$2,%al
	jb	Lj389
	subb	$9,%al
	jbe	Lj391
	subb	$12,%al
	je	Lj392
	subb	$32,%al
	je	Lj392
	jmp	Lj389
Lj390:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	1(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj395
	cmpl	$21,%eax
	stc
	je	Lj395
	cmpl	$53,%eax
	stc
	je	Lj395
	clc
Lj395:
	jc	Lj393
	jmp	Lj394
Lj393:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	.align 2
Lj396:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$43,%eax
	stc
	je	Lj399
	cmpl	$45,%eax
	stc
	je	Lj399
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj399
	cmpl	$21,%eax
	stc
	je	Lj399
	cmpl	$53,%eax
	stc
	je	Lj399
	clc
Lj399:
	jc	Lj396
	jmp	Lj398
Lj398:
Lj394:
	jmp	Lj387
	jmp	Lj388
Lj391:
	jmp	Lj388
Lj392:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$43,%eax
	je	Lj402
	cmpl	$45,%eax
	je	Lj402
Lj402:
	je	Lj400
	jmp	Lj401
Lj400:
	movl	-4(%ebp),%eax
	incl	28(%eax)
Lj401:
	jmp	Lj404
	.align 2
Lj403:
	movl	-4(%ebp),%eax
	incl	28(%eax)
Lj404:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj406
Lj406:
	jc	Lj403
	jmp	Lj405
Lj405:
	jmp	Lj387
	jmp	Lj388
Lj389:
	jmp	Lj387
Lj388:
Lj386:
	jmp	Lj385
Lj387:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	-32(%ebp),%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj413
	jmp	Lj414
Lj413:
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj414:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj423
	jmp	Lj424
Lj423:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	L_$JSONSCANNER$_Ld52$non_lazy_ptr-Lj135(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj424:
	movl	$3,-8(%ebp)
	jmp	Lj153
Lj160:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$8,-8(%ebp)
	jmp	Lj153
Lj161:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$9,-8(%ebp)
	jmp	Lj153
Lj162:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$10,-8(%ebp)
	jmp	Lj153
Lj163:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$11,-8(%ebp)
	jmp	Lj153
Lj164:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	$12,-8(%ebp)
	jmp	Lj153
Lj165:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj445:
	movl	-4(%ebp),%eax
	incl	28(%eax)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj448
	subl	$17,%eax
	cmpl	$26,%eax
	jb	Lj448
	cmpl	$30,%eax
	stc
	je	Lj448
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj448
Lj448:
	jc	Lj445
	jmp	Lj447
Lj447:
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	movl	-32(%ebp),%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj455
	jmp	Lj456
Lj455:
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj456:
	movl	$4,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj467:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-20(%ebp),%ecx
	movl	L_TC_JSONSCANNER_TOKENINFOS$non_lazy_ptr-Lj135(%ebx),%edx
	movl	(%edx,%ecx,4),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj468
	jmp	Lj469
Lj468:
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
	jmp	Lj138
Lj469:
	cmpl	$6,-20(%ebp)
	jb	Lj467
	movl	-4(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj478
	jmp	Lj479
Lj478:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-140(%ebp)
	movl	$0,-144(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub
	movl	%eax,-132(%ebp)
	movl	$0,-136(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-124(%ebp)
	movl	$2,-128(%ebp)
	leal	-144(%ebp),%ecx
	movl	L_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const$stub
	jmp	Lj490
Lj479:
	movl	$13,-8(%ebp)
Lj490:
	jmp	Lj153
Lj154:
	movl	$2,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-140(%ebp)
	movl	$0,-144(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub
	movl	%eax,-132(%ebp)
	movl	$0,-136(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movzbl	(%eax),%eax
	movl	%eax,-124(%ebp)
	movl	$2,-128(%ebp)
	leal	-144(%ebp),%ecx
	movl	L_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER$non_lazy_ptr-Lj135(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const$stub
Lj153:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,12(%edx)
Lj138:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-44(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-44(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj139
	call	LFPC_RERAISE$stub
Lj139:
	movl	-8(%ebp),%eax
	movl	-188(%ebp),%ebx
	movl	-184(%ebp),%esi
	movl	-180(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN
_JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj137
Lj137:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj511
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	8(%ebx),%eax
	setgb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj518
	jmp	Lj519
Lj518:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	4(%eax),%eax
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj530
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj137(%esi),%edx
	movl	%edx,%eax
Lj530:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	8(%eax)
	jmp	Lj531
Lj519:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,20(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$0,28(%eax)
Lj531:
Lj511:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj512
	call	LFPC_RERAISE$stub
Lj512:
	movb	-5(%ebp),%al
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT
_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj537
Lj537:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj540
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj537(%ecx),%edx
	movl	%edx,%eax
Lj540:
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_JSONSCANNER
_INIT$_JSONSCANNER:
.reference __JSONSCANNER_init_implicit
.globl	__JSONSCANNER_init_implicit
__JSONSCANNER_init_implicit:
.reference _INIT$_JSONSCANNER
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_JSONSCANNER
_FINALIZE$_JSONSCANNER:
.reference __JSONSCANNER_finalize_implicit
.globl	__JSONSCANNER_finalize_implicit
__JSONSCANNER_finalize_implicit:
.reference _FINALIZE$_JSONSCANNER
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj544
Lj544:
	popl	%ebx
	movl	L_INIT_JSONSCANNER_DEF28$non_lazy_ptr-Lj544(%ebx),%edx
	movl	L_TC_JSONSCANNER_TOKENINFOS$non_lazy_ptr-Lj544(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld54
_$JSONSCANNER$_Ld54:
	.byte	13
	.ascii	"EScannerError"

.const_data
	.align 2
.globl	_VMT_JSONSCANNER_ESCANNERERROR
_VMT_JSONSCANNER_ESCANNERERROR:
	.long	12,-12
	.long	_VMT_CLASSES_EPARSERERROR
	.long	_$JSONSCANNER$_Ld54
	.long	0,0
	.long	_$JSONSCANNER$_Ld55
	.long	_RTTI_JSONSCANNER_ESCANNERERROR
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
.globl	_$JSONSCANNER$_Ld57
_$JSONSCANNER$_Ld57:
	.byte	12
	.ascii	"TJSONScanner"

.const_data
	.align 2
.globl	_VMT_JSONSCANNER_TJSONSCANNER
_VMT_JSONSCANNER_TJSONSCANNER:
	.long	32,-32
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$JSONSCANNER$_Ld57
	.long	0,0
	.long	_$JSONSCANNER$_Ld58
	.long	_RTTI_JSONSCANNER_TJSONSCANNER
	.long	_INIT_JSONSCANNER_TJSONSCANNER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_JSONSCANNER_TJSONSCANNER_$__DESTROY
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
.globl	_THREADVARLIST_JSONSCANNER
_THREADVARLIST_JSONSCANNER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld2
_$JSONSCANNER$_Ld2:
	.short	0,1
	.long	0,-1,3
.reference _$JSONSCANNER$_Ld1
.globl	_$JSONSCANNER$_Ld1
_$JSONSCANNER$_Ld1:
.reference _$JSONSCANNER$_Ld2
	.ascii	"EOF\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld4
_$JSONSCANNER$_Ld4:
	.short	0,1
	.long	0,-1,10
.reference _$JSONSCANNER$_Ld3
.globl	_$JSONSCANNER$_Ld3
_$JSONSCANNER$_Ld3:
.reference _$JSONSCANNER$_Ld4
	.ascii	"Whitespace\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld6
_$JSONSCANNER$_Ld6:
	.short	0,1
	.long	0,-1,6
.reference _$JSONSCANNER$_Ld5
.globl	_$JSONSCANNER$_Ld5
_$JSONSCANNER$_Ld5:
.reference _$JSONSCANNER$_Ld6
	.ascii	"String\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld8
_$JSONSCANNER$_Ld8:
	.short	0,1
	.long	0,-1,6
.reference _$JSONSCANNER$_Ld7
.globl	_$JSONSCANNER$_Ld7
_$JSONSCANNER$_Ld7:
.reference _$JSONSCANNER$_Ld8
	.ascii	"Number\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld10
_$JSONSCANNER$_Ld10:
	.short	0,1
	.long	0,-1,4
.reference _$JSONSCANNER$_Ld9
.globl	_$JSONSCANNER$_Ld9
_$JSONSCANNER$_Ld9:
.reference _$JSONSCANNER$_Ld10
	.ascii	"True\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld12
_$JSONSCANNER$_Ld12:
	.short	0,1
	.long	0,-1,5
.reference _$JSONSCANNER$_Ld11
.globl	_$JSONSCANNER$_Ld11
_$JSONSCANNER$_Ld11:
.reference _$JSONSCANNER$_Ld12
	.ascii	"False\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld14
_$JSONSCANNER$_Ld14:
	.short	0,1
	.long	0,-1,4
.reference _$JSONSCANNER$_Ld13
.globl	_$JSONSCANNER$_Ld13
_$JSONSCANNER$_Ld13:
.reference _$JSONSCANNER$_Ld14
	.ascii	"Null\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld16
_$JSONSCANNER$_Ld16:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld15
.globl	_$JSONSCANNER$_Ld15
_$JSONSCANNER$_Ld15:
.reference _$JSONSCANNER$_Ld16
	.ascii	",\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld18
_$JSONSCANNER$_Ld18:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld17
.globl	_$JSONSCANNER$_Ld17
_$JSONSCANNER$_Ld17:
.reference _$JSONSCANNER$_Ld18
	.ascii	":\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld20
_$JSONSCANNER$_Ld20:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld19
.globl	_$JSONSCANNER$_Ld19
_$JSONSCANNER$_Ld19:
.reference _$JSONSCANNER$_Ld20
	.ascii	"{\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld22
_$JSONSCANNER$_Ld22:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld21
.globl	_$JSONSCANNER$_Ld21
_$JSONSCANNER$_Ld21:
.reference _$JSONSCANNER$_Ld22
	.ascii	"}\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld24
_$JSONSCANNER$_Ld24:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld23
.globl	_$JSONSCANNER$_Ld23
_$JSONSCANNER$_Ld23:
.reference _$JSONSCANNER$_Ld24
	.ascii	"[\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld26
_$JSONSCANNER$_Ld26:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld25
.globl	_$JSONSCANNER$_Ld25
_$JSONSCANNER$_Ld25:
.reference _$JSONSCANNER$_Ld26
	.ascii	"]\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld28
_$JSONSCANNER$_Ld28:
	.short	0,1
	.long	0,-1,10
.reference _$JSONSCANNER$_Ld27
.globl	_$JSONSCANNER$_Ld27
_$JSONSCANNER$_Ld27:
.reference _$JSONSCANNER$_Ld28
	.ascii	"identifier\000"

.data
	.align 2
.globl	_$JSONSCANNER$_Ld61
_$JSONSCANNER$_Ld61:
	.short	0,1
	.long	0,-1,11
.reference _$JSONSCANNER$_Ld60
.globl	_$JSONSCANNER$_Ld60
_$JSONSCANNER$_Ld60:
.reference _$JSONSCANNER$_Ld61
	.ascii	"JSONSCANNER\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld63
_$JSONSCANNER$_Ld63:
	.short	0,1
	.long	0,-1,42
.reference _$JSONSCANNER$_Ld62
.globl	_$JSONSCANNER$_Ld62
_$JSONSCANNER$_Ld62:
.reference _$JSONSCANNER$_Ld63
	.ascii	"Invalid character at line %d, pos %d: '%s'\000"
	.align 2
.globl	_$JSONSCANNER$_Ld65
_$JSONSCANNER$_Ld65:
	.short	0,1
	.long	0,-1,32
.reference _$JSONSCANNER$_Ld64
.globl	_$JSONSCANNER$_Ld64
_$JSONSCANNER$_Ld64:
.reference _$JSONSCANNER$_Ld65
	.ascii	"jsonscanner.serrinvalidcharacter\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld67
_$JSONSCANNER$_Ld67:
	.short	0,1
	.long	0,-1,26
.reference _$JSONSCANNER$_Ld66
.globl	_$JSONSCANNER$_Ld66
_$JSONSCANNER$_Ld66:
.reference _$JSONSCANNER$_Ld67
	.ascii	"string exceeds end of line\000"
	.align 2
.globl	_$JSONSCANNER$_Ld69
_$JSONSCANNER$_Ld69:
	.short	0,1
	.long	0,-1,26
.reference _$JSONSCANNER$_Ld68
.globl	_$JSONSCANNER$_Ld68
_$JSONSCANNER$_Ld68:
.reference _$JSONSCANNER$_Ld69
	.ascii	"jsonscanner.serropenstring\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JSONSCANNER_TOKENINFOS
_TC_JSONSCANNER_TOKENINFOS:
	.long	_$JSONSCANNER$_Ld1
	.long	_$JSONSCANNER$_Ld3
	.long	_$JSONSCANNER$_Ld5
	.long	_$JSONSCANNER$_Ld7
	.long	_$JSONSCANNER$_Ld9
	.long	_$JSONSCANNER$_Ld11
	.long	_$JSONSCANNER$_Ld13
	.long	_$JSONSCANNER$_Ld15
	.long	_$JSONSCANNER$_Ld17
	.long	_$JSONSCANNER$_Ld19
	.long	_$JSONSCANNER$_Ld21
	.long	_$JSONSCANNER$_Ld23
	.long	_$JSONSCANNER$_Ld25
	.long	_$JSONSCANNER$_Ld27
	.long	0

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld30
_$JSONSCANNER$_Ld30:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld29
.globl	_$JSONSCANNER$_Ld29
_$JSONSCANNER$_Ld29:
.reference _$JSONSCANNER$_Ld30
	.ascii	"\"\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld32
_$JSONSCANNER$_Ld32:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld31
.globl	_$JSONSCANNER$_Ld31
_$JSONSCANNER$_Ld31:
.reference _$JSONSCANNER$_Ld32
	.ascii	"'\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld34
_$JSONSCANNER$_Ld34:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld33
.globl	_$JSONSCANNER$_Ld33
_$JSONSCANNER$_Ld33:
.reference _$JSONSCANNER$_Ld34
	.ascii	"\011\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld36
_$JSONSCANNER$_Ld36:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld35
.globl	_$JSONSCANNER$_Ld35
_$JSONSCANNER$_Ld35:
.reference _$JSONSCANNER$_Ld36
	.ascii	"\010\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld38
_$JSONSCANNER$_Ld38:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld37
.globl	_$JSONSCANNER$_Ld37
_$JSONSCANNER$_Ld37:
.reference _$JSONSCANNER$_Ld38
	.ascii	"\012\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld40
_$JSONSCANNER$_Ld40:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld39
.globl	_$JSONSCANNER$_Ld39
_$JSONSCANNER$_Ld39:
.reference _$JSONSCANNER$_Ld40
	.ascii	"\015\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld42
_$JSONSCANNER$_Ld42:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld41
.globl	_$JSONSCANNER$_Ld41
_$JSONSCANNER$_Ld41:
.reference _$JSONSCANNER$_Ld42
	.ascii	"\014\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld44
_$JSONSCANNER$_Ld44:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld43
.globl	_$JSONSCANNER$_Ld43
_$JSONSCANNER$_Ld43:
.reference _$JSONSCANNER$_Ld44
	.ascii	"\\\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld46
_$JSONSCANNER$_Ld46:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld45
.globl	_$JSONSCANNER$_Ld45
_$JSONSCANNER$_Ld45:
.reference _$JSONSCANNER$_Ld46
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld48
_$JSONSCANNER$_Ld48:
	.short	0,1
	.long	0,-1,4
.reference _$JSONSCANNER$_Ld47
.globl	_$JSONSCANNER$_Ld47
_$JSONSCANNER$_Ld47:
.reference _$JSONSCANNER$_Ld48
	.ascii	"0000\000"

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld50
_$JSONSCANNER$_Ld50:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld49
.globl	_$JSONSCANNER$_Ld49
_$JSONSCANNER$_Ld49:
.reference _$JSONSCANNER$_Ld50
	.ascii	"$\000"

.const
	.align 3
.globl	_$JSONSCANNER$_Ld51
_$JSONSCANNER$_Ld51:
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld53
_$JSONSCANNER$_Ld53:
	.short	0,1
	.long	0,-1,1
.reference _$JSONSCANNER$_Ld52
.globl	_$JSONSCANNER$_Ld52
_$JSONSCANNER$_Ld52:
.reference _$JSONSCANNER$_Ld53
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

L_JSONSCANNER_TJSONSCANNER_$__DOFETCHTOKEN$$TJSONTOKEN$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__DOFETCHTOKEN$$TJSONTOKEN
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

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
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

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$_DOFETCHTOKEN$$TJSONTOKEN_FETCHLINE$$BOOLEAN
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

L_JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__GETCURCOLUMN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$array_of_const
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

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

Lfpc_uchar_to_unicodestr$stub:
.indirect_symbol fpc_uchar_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING$stub:
.indirect_symbol _SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
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

Lfpc_uchar_to_ansistr$stub:
.indirect_symbol fpc_uchar_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING$stub:
.indirect_symbol _JSONSCANNER_TJSONSCANNER_$__ERROR$ANSISTRING
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_set$stub:
.indirect_symbol fpc_varset_set
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_JSONSCANNER_TJSONTOKEN
_INIT_JSONSCANNER_TJSONTOKEN:
	.byte	3,10
	.ascii	"TJSONToken"
	.byte	5
	.long	0,14,0
	.byte	5
	.ascii	"tkEOF"
	.byte	12
	.ascii	"tkWhitespace"
	.byte	8
	.ascii	"tkString"
	.byte	8
	.ascii	"tkNumber"
	.byte	6
	.ascii	"tkTrue"
	.byte	7
	.ascii	"tkFalse"
	.byte	6
	.ascii	"tkNull"
	.byte	7
	.ascii	"tkComma"
	.byte	7
	.ascii	"tkColon"
	.byte	16
	.ascii	"tkCurlyBraceOpen"
	.byte	17
	.ascii	"tkCurlyBraceClose"
	.byte	18
	.ascii	"tkSquaredBraceOpen"
	.byte	19
	.ascii	"tkSquaredBraceClose"
	.byte	12
	.ascii	"tkIdentifier"
	.byte	9
	.ascii	"tkUnknown"
	.byte	11
	.ascii	"jsonscanner"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_JSONSCANNER_TJSONTOKEN
_RTTI_JSONSCANNER_TJSONTOKEN:
	.byte	3,10
	.ascii	"TJSONToken"
	.byte	5
	.long	0,14,0
	.byte	5
	.ascii	"tkEOF"
	.byte	12
	.ascii	"tkWhitespace"
	.byte	8
	.ascii	"tkString"
	.byte	8
	.ascii	"tkNumber"
	.byte	6
	.ascii	"tkTrue"
	.byte	7
	.ascii	"tkFalse"
	.byte	6
	.ascii	"tkNull"
	.byte	7
	.ascii	"tkComma"
	.byte	7
	.ascii	"tkColon"
	.byte	16
	.ascii	"tkCurlyBraceOpen"
	.byte	17
	.ascii	"tkCurlyBraceClose"
	.byte	18
	.ascii	"tkSquaredBraceOpen"
	.byte	19
	.ascii	"tkSquaredBraceClose"
	.byte	12
	.ascii	"tkIdentifier"
	.byte	9
	.ascii	"tkUnknown"
	.byte	11
	.ascii	"jsonscanner"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_JSONSCANNER_TJSONTOKEN_s2o
_RTTI_JSONSCANNER_TJSONTOKEN_s2o:
	.long	15,8
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+92
	.long	7
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+84
	.long	10
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+117
	.long	9
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+100
	.long	0
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+25
	.long	5
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+69
	.long	13
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+174
	.long	6
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+77
	.long	3
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+53
	.long	12
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+154
	.long	11
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+135
	.long	2
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+44
	.long	4
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+62
	.long	14
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+187
	.long	1
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+31

.const_data
	.align 2
.globl	_RTTI_JSONSCANNER_TJSONTOKEN_o2s
_RTTI_JSONSCANNER_TJSONTOKEN_o2s:
	.long	0
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+25
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+31
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+44
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+53
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+62
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+69
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+77
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+84
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+92
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+100
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+117
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+135
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+154
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+174
	.long	_RTTI_JSONSCANNER_TJSONTOKEN+187

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld55
_$JSONSCANNER$_Ld55:
	.short	0
	.long	_$JSONSCANNER$_Ld56
	.align 2
.globl	_$JSONSCANNER$_Ld56
_$JSONSCANNER$_Ld56:
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONSCANNER_ESCANNERERROR
_INIT_JSONSCANNER_ESCANNERERROR:
	.byte	15,13
	.ascii	"EScannerError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_JSONSCANNER_ESCANNERERROR
_RTTI_JSONSCANNER_ESCANNERERROR:
	.byte	15,13
	.ascii	"EScannerError"
	.long	_VMT_JSONSCANNER_ESCANNERERROR
	.long	_RTTI_CLASSES_EPARSERERROR
	.short	0
	.byte	11
	.ascii	"jsonscanner"
	.short	0

.const_data
	.align 2
.globl	_$JSONSCANNER$_Ld58
_$JSONSCANNER$_Ld58:
	.short	0
	.long	_$JSONSCANNER$_Ld59
	.align 2
.globl	_$JSONSCANNER$_Ld59
_$JSONSCANNER$_Ld59:
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONSCANNER_TJSONSCANNER
_INIT_JSONSCANNER_TJSONSCANNER:
	.byte	15,12
	.ascii	"TJSONScanner"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_JSONSCANNER_TJSONSCANNER
_RTTI_JSONSCANNER_TJSONSCANNER:
	.byte	15,12
	.ascii	"TJSONScanner"
	.long	_VMT_JSONSCANNER_TJSONSCANNER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"jsonscanner"
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONSCANNER_DEF28
_INIT_JSONSCANNER_DEF28:
	.byte	12
	.ascii	"\000"
	.long	4,15
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
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
L_VMT_JSONSCANNER_ESCANNERERROR$non_lazy_ptr:
.indirect_symbol _VMT_JSONSCANNER_ESCANNERERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONSCANNER_SERRINVALIDCHARACTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld29$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld31$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld33$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld35$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld37$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld39$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld41$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld43$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld45$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld47$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld49$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_JSONSCANNER_SERROPENSTRING$non_lazy_ptr:
.indirect_symbol _RESSTR_JSONSCANNER_SERROPENSTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld51$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONSCANNER$_Ld52$non_lazy_ptr:
.indirect_symbol _$JSONSCANNER$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JSONSCANNER_TOKENINFOS$non_lazy_ptr:
.indirect_symbol _TC_JSONSCANNER_TOKENINFOS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_JSONSCANNER_DEF28$non_lazy_ptr:
.indirect_symbol _INIT_JSONSCANNER_DEF28
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_JSONSCANNER_START
_RESSTR_JSONSCANNER_START:
	.long	_$JSONSCANNER$_Ld60
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER
_RESSTR_JSONSCANNER_SERRINVALIDCHARACTER:
	.long	_$JSONSCANNER$_Ld64
	.long	_$JSONSCANNER$_Ld62
	.long	_$JSONSCANNER$_Ld62
	.long	5885991

.data
	.align 2
.globl	_RESSTR_JSONSCANNER_SERROPENSTRING
_RESSTR_JSONSCANNER_SERROPENSTRING:
	.long	_$JSONSCANNER$_Ld68
	.long	_$JSONSCANNER$_Ld66
	.long	_$JSONSCANNER$_Ld66
	.long	127311205

.data
	.align 2
.globl	_RESSTR_JSONSCANNER_END
_RESSTR_JSONSCANNER_END:
	.long	_RESSTR_JSONSCANNER_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

