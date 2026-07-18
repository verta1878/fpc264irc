# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FGL_TFPSLIST_$__CREATE$LONGINT$$TFPSLIST
_FGL_TFPSLIST_$__CREATE$LONGINT$$TFPSLIST:
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
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,16(%edx)
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
.globl	_FGL_TFPSLIST_$__DESTROY
_FGL_TFPSLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj43
	jmp	Lj44
Lj43:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj44:
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj56
Lj57:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj56:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__COPYITEM$POINTER$POINTER
_FGL_TFPSLIST_$__COPYITEM$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__RAISEINDEXERROR$LONGINT
_FGL_TFPSLIST_$__RAISEINDEXERROR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj69
Lj69:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj69(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER
_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__INTERNALPUT$LONGINT$POINTER
_FGL_TFPSLIST_$__INTERNALPUT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__GET$LONGINT$$POINTER
_FGL_TFPSLIST_$__GET$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj102
	jmp	Lj104
Lj104:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj102
	jmp	Lj103
Lj102:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__RAISEINDEXERROR$LONGINT$stub
Lj103:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__PUT$LONGINT$POINTER
_FGL_TFPSLIST_$__PUT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj117
	jmp	Lj119
Lj119:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj117
	jmp	Lj118
Lj117:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__RAISEINDEXERROR$LONGINT$stub
Lj118:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj130
	jmp	Lj131
Lj130:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
Lj131:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALPUT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__SETCAPACITY$LONGINT
_FGL_TFPSLIST_$__SETCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj143
Lj143:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj144
	jmp	Lj146
Lj146:
	movl	-4(%ebp),%eax
	cmpl	$134217727,%eax
	jg	Lj144
	jmp	Lj145
Lj144:
	movl	L_RESSTR_RTLCONSTS_SLISTCAPACITYERROR$non_lazy_ptr-Lj143(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj145:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj159
	jmp	Lj160
Lj159:
	jmp	Lj142
Lj160:
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	movl	12(%ecx),%ecx
	subl	%ecx,%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	imull	%ecx,%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj142:
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__DEREF$POINTER
_FGL_TFPSLIST_$__DEREF$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__DEREF$LONGINT$LONGINT
_FGL_TFPSLIST_$__DEREF$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	.align 2
Lj193:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj200
	jmp	Lj201
Lj200:
	jmp	Lj195
Lj201:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj193
Lj195:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__SETCOUNT$LONGINT
_FGL_TFPSLIST_$__SETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-268(%ebp)
	call	Lj205
Lj205:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj206
	jmp	Lj208
Lj208:
	movl	-4(%ebp),%eax
	cmpl	$134217727,%eax
	jg	Lj206
	jmp	Lj207
Lj206:
	movl	L_RESSTR_RTLCONSTS_SLISTCOUNTERROR$non_lazy_ptr-Lj205(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj207:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj221
	jmp	Lj222
Lj221:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__SETCAPACITY$LONGINT$stub
Lj222:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj227
	jmp	Lj228
Lj227:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	-4(%ebp),%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	imull	%ecx,%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	jmp	Lj239
Lj228:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj240
	jmp	Lj241
Lj240:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	decl	%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__DEREF$LONGINT$LONGINT$stub
Lj241:
Lj239:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__ADD$POINTER$$LONGINT
_FGL_TFPSLIST_$__ADD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj252
	jmp	Lj253
Lj252:
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__EXPAND$$TFPSLIST$stub
Lj253:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	incl	8(%eax)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__CLEAR
_FGL_TFPSLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj270
	jmp	Lj271
Lj270:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FGL_TFPSLIST_$__SETCOUNT$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FGL_TFPSLIST_$__SETCAPACITY$LONGINT$stub
Lj271:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__DELETE$LONGINT
_FGL_TFPSLIST_$__DELETE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj281
Lj281:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj282
	jmp	Lj284
Lj284:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj282
	jmp	Lj283
Lj282:
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj281(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj283:
	movl	-8(%ebp),%eax
	decl	8(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	8(%edx),%ecx
	movl	-4(%ebp),%edx
	subl	%edx,%ecx
	movl	-8(%ebp),%edx
	movl	16(%edx),%edx
	imull	%edx,%ecx
	movl	-12(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$256,%eax
	jg	Lj319
	jmp	Lj318
Lj319:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$2,%eax
	movl	-8(%ebp),%edx
	cmpl	8(%edx),%eax
	jg	Lj317
	jmp	Lj318
Lj317:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$1,%eax
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj318:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	movl	8(%ecx),%ecx
	subl	%ecx,%edx
	movl	-8(%ebp),%ecx
	movl	16(%ecx),%ecx
	imull	%ecx,%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__EXTRACT$POINTER$POINTER
_FGL_TFPSLIST_$__EXTRACT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj344
	jmp	Lj345
Lj344:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__DELETE$LONGINT$stub
	jmp	Lj368
Lj345:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
Lj368:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT
_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj376
Lj376:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj377
	movl	%ebp,%eax
	call	L_SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER$stub
	movl	%eax,%ebx
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%ecx
	movl	L_VMT_FGL_ELISTERROR$non_lazy_ptr-Lj376(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
	movl	$0,%ecx
	movl	%ebx,%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj377:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj378
	call	LFPC_RERAISE$stub
Lj378:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__EXCHANGE$LONGINT$LONGINT
_FGL_TFPSLIST_$__EXCHANGE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj397
Lj397:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj398
	jmp	Lj400
Lj400:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj398
	jmp	Lj399
Lj398:
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj397(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj399:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj413
	jmp	Lj415
Lj415:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj413
	jmp	Lj414
Lj413:
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj397(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj414:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALEXCHANGE$LONGINT$LONGINT$stub
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__INTERNALEXCHANGE$LONGINT$LONGINT
_FGL_TFPSLIST_$__INTERNALEXCHANGE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	16(%edx),%ecx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	16(%edx),%ecx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	16(%edx),%ecx
	movl	%ebx,%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__EXPAND$$TFPSLIST
_FGL_TFPSLIST_$__EXPAND$$TFPSLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	jl	Lj480
	jmp	Lj481
Lj480:
	jmp	Lj478
Lj481:
	movl	$4,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$3,%eax
	jg	Lj484
	jmp	Lj485
Lj484:
	movl	-12(%ebp),%eax
	addl	$4,%eax
	movl	%eax,-12(%ebp)
Lj485:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$8,%eax
	jg	Lj488
	jmp	Lj489
Lj488:
	movl	-12(%ebp),%eax
	addl	$8,%eax
	movl	%eax,-12(%ebp)
Lj489:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$127,%eax
	jg	Lj492
	jmp	Lj493
Lj492:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	shrl	$2,%eax
	addl	%eax,-12(%ebp)
Lj493:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSLIST_$__SETCAPACITY$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj478:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__GETFIRST$$POINTER
_FGL_TFPSLIST_$__GETFIRST$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj502
	jmp	Lj503
Lj502:
	movl	$0,-8(%ebp)
	jmp	Lj506
Lj503:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
Lj506:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__SETFIRST$POINTER
_FGL_TFPSLIST_$__SETFIRST$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FGL_TFPSLIST_$__PUT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__INDEXOF$POINTER$$LONGINT
_FGL_TFPSLIST_$__INDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GETFIRST$$POINTER$stub
	movl	%eax,-16(%ebp)
	jmp	Lj530
	.align 2
Lj529:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj530:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj534
	jmp	Lj531
Lj534:
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj529
	jmp	Lj531
Lj531:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj541
	jmp	Lj542
Lj541:
	movl	$-1,-12(%ebp)
Lj542:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER
_FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj546
Lj546:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj547
	jmp	Lj549
Lj549:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj547
	jmp	Lj548
Lj547:
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj546(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj548:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj562
	jmp	Lj563
Lj562:
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__EXPAND$$TFPSLIST$stub
Lj563:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj572
	jmp	Lj573
Lj572:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	imull	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
Lj573:
	movl	-8(%ebp),%eax
	incl	8(%eax)
	movl	-12(%ebp),%eax
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__INSERT$LONGINT$POINTER
_FGL_TFPSLIST_$__INSERT$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__GETLAST$$POINTER
_FGL_TFPSLIST_$__GETLAST$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj600
	jmp	Lj601
Lj600:
	movl	$0,-8(%ebp)
	jmp	Lj604
Lj601:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
Lj604:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__SETLAST$POINTER
_FGL_TFPSLIST_$__SETLAST$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__PUT$LONGINT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__MOVE$LONGINT$LONGINT
_FGL_TFPSLIST_$__MOVE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$296,%esp
	movl	%ebx,-296(%ebp)
	call	Lj620
Lj620:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj621
	jmp	Lj623
Lj623:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj621
	jmp	Lj622
Lj621:
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj620(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-292(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-292(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj622:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj636
	jmp	Lj638
Lj638:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj636
	jmp	Lj637
Lj636:
	movl	L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr-Lj620(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-292(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-292(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj637:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj651
	jmp	Lj652
Lj651:
	jmp	Lj619
Lj652:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj677
	jmp	Lj678
Lj677:
	movl	-4(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-36(%ebp)
	jmp	Lj689
Lj678:
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-36(%ebp)
Lj689:
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-36(%ebp),%eax
	imull	%eax,%ecx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj619:
	movl	-296(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__REMOVE$POINTER$$LONGINT
_FGL_TFPSLIST_$__REMOVE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj720
	jmp	Lj721
Lj720:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__DELETE$LONGINT$stub
Lj721:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__PACK
_FGL_TFPSLIST_$__PACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj732
	jmp	Lj733
Lj732:
	movl	-8(%ebp),%edx
	leal	-92(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj733:
	movl	-92(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GETFIRST$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj753
	decl	-16(%ebp)
	.align 2
Lj754:
	incl	-16(%ebp)
	movl	-92(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	je	Lj755
	jmp	Lj756
Lj755:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	addl	%eax,-20(%ebp)
	incl	-12(%ebp)
	jmp	Lj771
Lj756:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
Lj771:
	movl	-8(%ebp),%eax
	addl	%eax,-24(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj754
Lj753:
	movl	-8(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj776
	jmp	Lj777
Lj776:
	movl	-8(%ebp),%edx
	movl	-92(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
Lj777:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__QUICKSORT$LONGINT$LONGINT$TFPSLISTCOMPAREFUNC
_FGL_TFPSLIST_$__QUICKSORT$LONGINT$LONGINT$TFPSLISTCOMPAREFUNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-36(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-32(%ebp)
	.align 2
Lj786:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-24(%ebp)
	.align 2
Lj795:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	jmp	Lj805
	.align 2
Lj804:
	incl	-16(%ebp)
Lj805:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%ebx
	call	*%ebx
	cmpl	$0,%eax
	jg	Lj804
	jmp	Lj806
Lj806:
	jmp	Lj818
	.align 2
Lj817:
	decl	-20(%ebp)
Lj818:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	-36(%ebp),%ebx
	call	*%ebx
	cmpl	$0,%eax
	jl	Lj817
	jmp	Lj819
Lj819:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj830
	jmp	Lj831
Lj830:
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALEXCHANGE$LONGINT$LONGINT$stub
	movl	-24(%ebp),%eax
	cmpl	-16(%ebp),%eax
	je	Lj838
	jmp	Lj839
Lj838:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj842
Lj839:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj843
	jmp	Lj844
Lj843:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj844:
Lj842:
	incl	-16(%ebp)
	decl	-20(%ebp)
Lj831:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj797
	jmp	Lj795
Lj797:
	movl	-4(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj847
	jmp	Lj848
Lj847:
	leal	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__QUICKSORT$LONGINT$LONGINT$TFPSLISTCOMPAREFUNC$stub
Lj848:
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj788
	jmp	Lj786
Lj788:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__SORT$TFPSLISTCOMPAREFUNC
_FGL_TFPSLIST_$__SORT$TFPSLISTCOMPAREFUNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj863
	jmp	Lj861
Lj863:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$2,%eax
	jl	Lj861
	jmp	Lj862
Lj861:
	jmp	Lj859
Lj862:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FGL_TFPSLIST_$__QUICKSORT$LONGINT$LONGINT$TFPSLISTCOMPAREFUNC$stub
Lj859:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSLIST_$__ASSIGN$TFPSLIST
_FGL_TFPSLIST_$__ASSIGN$TFPSLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	call	Lj873
Lj873:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	16(%edx),%eax
	jne	Lj874
	jmp	Lj875
Lj874:
	movl	L_RESSTR_RTLCONSTS_SLISTITEMSIZEERROR$non_lazy_ptr-Lj873(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%ecx
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj875:
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj891
	decl	-12(%ebp)
	.align 2
Lj892:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__ADD$POINTER$$LONGINT$stub
	cmpl	-12(%ebp),%esi
	jg	Lj892
Lj891:
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__CREATE$LONGINT$LONGINT$$TFPSMAP
_FGL_TFPSMAP_$__CREATE$LONGINT$LONGINT$$TFPSMAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1023
	jmp	Lj1024
Lj1023:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1024:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1029
	jmp	Lj1030
Lj1029:
	jmp	Lj1021
Lj1030:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1033
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1037
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FGL_TFPSLIST_$__CREATE$LONGINT$$TFPSLIST$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj1037:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1038
	call	LFPC_RERAISE$stub
Lj1038:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1054
	jmp	Lj1053
Lj1054:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1052
	jmp	Lj1053
Lj1052:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1053:
Lj1033:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1035
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1058
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1059
	jmp	Lj1060
Lj1059:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1060:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1058:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1057
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1057:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1035
Lj1035:
Lj1021:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__COPYKEY$POINTER$POINTER
_FGL_TFPSMAP_$__COPYKEY$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__COPYDATA$POINTER$POINTER
_FGL_TFPSMAP_$__COPYDATA$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__GETKEY$LONGINT$$POINTER
_FGL_TFPSMAP_$__GETKEY$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__GETDATA$LONGINT$$POINTER
_FGL_TFPSMAP_$__GETDATA$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	20(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__GETKEYDATA$POINTER$$POINTER
_FGL_TFPSMAP_$__GETKEYDATA$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	call	Lj1098
Lj1098:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1105
	jmp	Lj1106
Lj1105:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	20(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1113
Lj1106:
	movl	L_RESSTR_RTLCONSTS_SMAPKEYERROR$non_lazy_ptr-Lj1098(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj1113:
	movl	-12(%ebp),%eax
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__BINARYCOMPAREKEY$POINTER$POINTER$$LONGINT
_FGL_TFPSMAP_$__BINARYCOMPAREKEY$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__BINARYCOMPAREDATA$POINTER$POINTER$$LONGINT
_FGL_TFPSMAP_$__BINARYCOMPAREDATA$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC
_FGL_TFPSMAP_$__SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj1147
Lj1147:
	popl	%ecx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1148
	jmp	Lj1149
Lj1148:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,36(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,40(%edx)
	jmp	Lj1152
Lj1149:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_FGL_TFPSMAP_$__BINARYCOMPAREKEY$POINTER$POINTER$$LONGINT$non_lazy_ptr-Lj1147(%ecx),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,36(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,40(%edx)
Lj1152:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC
_FGL_TFPSMAP_$__SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj1156
Lj1156:
	popl	%ecx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1157
	jmp	Lj1158
Lj1157:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,44(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,48(%edx)
	jmp	Lj1161
Lj1158:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	L_FGL_TFPSMAP_$__BINARYCOMPAREDATA$POINTER$POINTER$$LONGINT$non_lazy_ptr-Lj1156(%ecx),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,44(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,48(%edx)
Lj1161:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INITONPTRCOMPARE
_FGL_TFPSMAP_$__INITONPTRCOMPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSMAP_$__SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC$stub
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSMAP_$__SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC$stub
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__PUTKEY$LONGINT$POINTER
_FGL_TFPSMAP_$__PUTKEY$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	call	Lj1175
Lj1175:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj1176
	jmp	Lj1177
Lj1176:
	movl	L_RESSTR_RTLCONSTS_SSORTEDLISTERROR$non_lazy_ptr-Lj1175(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%ecx
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj1177:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*112(%esi)
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__PUTDATA$LONGINT$POINTER
_FGL_TFPSMAP_$__PUTDATA$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__PUTKEYDATA$POINTER$POINTER
_FGL_TFPSMAP_$__PUTKEYDATA$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1220
	jmp	Lj1221
Lj1220:
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__PUTDATA$LONGINT$POINTER$stub
	jmp	Lj1228
Lj1221:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__ADD$POINTER$POINTER$$LONGINT$stub
Lj1228:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__SETSORTED$BOOLEAN
_FGL_TFPSMAP_$__SETSORTED$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	32(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj1237
	jmp	Lj1238
Lj1237:
	jmp	Lj1235
Lj1238:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,32(%eax)
	cmpb	$0,-4(%ebp)
	jne	Lj1241
	jmp	Lj1242
Lj1241:
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSMAP_$__SORT$stub
Lj1242:
Lj1235:
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__ADD$POINTER$$LONGINT
_FGL_TFPSMAP_$__ADD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	call	Lj1246
Lj1246:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj1247
	jmp	Lj1248
Lj1247:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSMAP_$__FIND$POINTER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1249
	jmp	Lj1250
Lj1249:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj1259
	subl	$2,%eax
	je	Lj1260
	jmp	Lj1258
Lj1259:
	jmp	Lj1245
	jmp	Lj1257
Lj1260:
	movl	L_RESSTR_RTLCONSTS_SDUPLICATEITEM$non_lazy_ptr-Lj1246(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%ecx
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
	jmp	Lj1257
Lj1258:
Lj1257:
Lj1250:
	jmp	Lj1273
Lj1248:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj1273:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*112(%esi)
Lj1245:
	movl	-12(%ebp),%eax
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__ADD$POINTER$POINTER$$LONGINT
_FGL_TFPSMAP_$__ADD$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__ADD$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__PUTDATA$LONGINT$POINTER$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__FIND$POINTER$LONGINT$$BOOLEAN
_FGL_TFPSMAP_$__FIND$POINTER$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1309
	.align 2
Lj1308:
	movl	-24(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	36(%ebx),%ebx
	call	*%ebx
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1325
	jmp	Lj1326
Lj1325:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1329
Lj1326:
	movl	-20(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj1332
	jmp	Lj1333
Lj1332:
	movb	$1,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$1,%eax
	jne	Lj1336
	jmp	Lj1337
Lj1336:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj1337:
Lj1333:
Lj1329:
Lj1309:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj1308
	jmp	Lj1310
Lj1310:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,(%edx)
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__LINEARINDEXOF$POINTER$$LONGINT
_FGL_TFPSMAP_$__LINEARINDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GETFIRST$$POINTER$stub
	movl	%eax,-16(%ebp)
	jmp	Lj1351
	.align 2
Lj1350:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj1351:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1355
	jmp	Lj1352
Lj1355:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	36(%ebx),%ebx
	call	*%ebx
	testl	%eax,%eax
	jne	Lj1350
	jmp	Lj1352
Lj1352:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1362
	jmp	Lj1363
Lj1362:
	movl	$-1,-12(%ebp)
Lj1363:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT
_FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj1368
	jmp	Lj1369
Lj1368:
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSMAP_$__FIND$POINTER$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1370
	jmp	Lj1371
Lj1370:
	movl	$-1,-12(%ebp)
Lj1371:
	jmp	Lj1380
Lj1369:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSMAP_$__LINEARINDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj1380:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INDEXOFDATA$POINTER$$LONGINT
_FGL_TFPSMAP_$__INDEXOFDATA$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__GETFIRST$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	20(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1396
	.align 2
Lj1395:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj1396:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1400
	jmp	Lj1397
Lj1400:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	44(%ebx),%ebx
	call	*%ebx
	testl	%eax,%eax
	jne	Lj1395
	jmp	Lj1397
Lj1397:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1407
	jmp	Lj1408
Lj1407:
	movl	$-1,-12(%ebp)
Lj1408:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER
_FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-272(%ebp)
	call	Lj1412
Lj1412:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj1413
	jmp	Lj1414
Lj1413:
	movl	L_RESSTR_RTLCONSTS_SSORTEDLISTERROR$non_lazy_ptr-Lj1412(%ebx),%eax
	movl	4(%eax),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%ecx
	call	L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub
Lj1414:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INSERT$LONGINT$POINTER$POINTER
_FGL_TFPSMAP_$__INSERT$LONGINT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	20(%eax),%ecx
	movl	(%edx),%eax
	addl	%eax,%ecx
	movl	8(%ebp),%eax
	movl	%ecx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INSERTKEY$LONGINT$POINTER
_FGL_TFPSMAP_$__INSERTKEY$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER$stub
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__INSERTKEYDATA$LONGINT$POINTER$POINTER
_FGL_TFPSMAP_$__INSERTKEYDATA$LONGINT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
	movl	-12(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__REMOVE$POINTER$$LONGINT
_FGL_TFPSMAP_$__REMOVE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1483
	jmp	Lj1484
Lj1483:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FGL_TFPSLIST_$__DELETE$LONGINT$stub
Lj1484:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FGL_TFPSMAP_$__SORT
_FGL_TFPSMAP_$__SORT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	36(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FGL_TFPSLIST_$__SORT$TFPSLISTCOMPAREFUNC$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FGL$_Ld1
_$FGL$_Ld1:
	.byte	10
	.ascii	"EListError"

.const_data
	.align 2
.globl	_VMT_FGL_ELISTERROR
_VMT_FGL_ELISTERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FGL$_Ld1
	.long	0,0
	.long	_$FGL$_Ld2
	.long	_RTTI_FGL_ELISTERROR
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
.globl	_$FGL$_Ld4
_$FGL$_Ld4:
	.byte	8
	.ascii	"TFPSList"

.const_data
	.align 2
.globl	_VMT_FGL_TFPSLIST
_VMT_FGL_TFPSLIST:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FGL$_Ld4
	.long	0,0
	.long	_$FGL$_Ld5
	.long	_RTTI_FGL_TFPSLIST
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FGL_TFPSLIST_$__DESTROY
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
	.long	_FGL_TFPSLIST_$__COPYITEM$POINTER$POINTER
	.long	_FGL_TFPSLIST_$__DEREF$POINTER
	.long	0

.const_data
	.align 2
.globl	_$FGL$_Ld7
_$FGL$_Ld7:
	.byte	7
	.ascii	"TFPSMap"

.const_data
	.align 2
.globl	_VMT_FGL_TFPSMAP
_VMT_FGL_TFPSMAP:
	.long	52,-52
	.long	_VMT_FGL_TFPSLIST
	.long	_$FGL$_Ld7
	.long	0,0
	.long	_$FGL$_Ld8
	.long	_RTTI_FGL_TFPSMAP
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FGL_TFPSLIST_$__DESTROY
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
	.long	_FGL_TFPSLIST_$__COPYITEM$POINTER$POINTER
	.long	_FGL_TFPSLIST_$__DEREF$POINTER
	.long	_FGL_TFPSMAP_$__INITONPTRCOMPARE
	.long	_FGL_TFPSMAP_$__COPYKEY$POINTER$POINTER
	.long	_FGL_TFPSMAP_$__COPYDATA$POINTER$POINTER
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FGL
_THREADVARLIST_FGL:
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

L_FGL_TFPSLIST_$__CLEAR$stub:
.indirect_symbol _FGL_TFPSLIST_$__CLEAR
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

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__ERROR$SHORTSTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER$stub:
.indirect_symbol _FGL_TFPSLIST_$__INTERNALGET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__RAISEINDEXERROR$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__RAISEINDEXERROR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__INTERNALPUT$LONGINT$POINTER$stub:
.indirect_symbol _FGL_TFPSLIST_$__INTERNALPUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
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

L_FGL_TFPSLIST_$__SETCAPACITY$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__SETCAPACITY$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLBYTE$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__DEREF$LONGINT$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__DEREF$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__EXPAND$$TFPSLIST$stub:
.indirect_symbol _FGL_TFPSLIST_$__EXPAND$$TFPSLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__SETCOUNT$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__SETCOUNT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER$stub:
.indirect_symbol _SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
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

L_FGL_TFPSLIST_$__INTERNALEXCHANGE$LONGINT$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__INTERNALEXCHANGE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__PUT$LONGINT$POINTER$stub:
.indirect_symbol _FGL_TFPSLIST_$__PUT$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__GETFIRST$$POINTER$stub:
.indirect_symbol _FGL_TFPSLIST_$__GETFIRST$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER$stub:
.indirect_symbol _FGL_TFPSLIST_$__INSERT$LONGINT$$POINTER
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

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__QUICKSORT$LONGINT$LONGINT$TFPSLISTCOMPAREFUNC$stub:
.indirect_symbol _FGL_TFPSLIST_$__QUICKSORT$LONGINT$LONGINT$TFPSLISTCOMPAREFUNC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _FGL_TFPSLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _FGL_TFPSLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__CREATE$LONGINT$$TFPSLIST$stub:
.indirect_symbol _FGL_TFPSLIST_$__CREATE$LONGINT$$TFPSLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _FGL_TFPSMAP_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC$stub:
.indirect_symbol _FGL_TFPSMAP_$__SETONKEYPTRCOMPARE$TFPSLISTCOMPAREFUNC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC$stub:
.indirect_symbol _FGL_TFPSMAP_$__SETONDATAPTRCOMPARE$TFPSLISTCOMPAREFUNC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__PUTDATA$LONGINT$POINTER$stub:
.indirect_symbol _FGL_TFPSMAP_$__PUTDATA$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__ADD$POINTER$POINTER$$LONGINT$stub:
.indirect_symbol _FGL_TFPSMAP_$__ADD$POINTER$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__SORT$stub:
.indirect_symbol _FGL_TFPSMAP_$__SORT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__FIND$POINTER$LONGINT$$BOOLEAN$stub:
.indirect_symbol _FGL_TFPSMAP_$__FIND$POINTER$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _FGL_TFPSMAP_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__LINEARINDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _FGL_TFPSMAP_$__LINEARINDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER$stub:
.indirect_symbol _FGL_TFPSMAP_$__INSERT$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FGL_TFPSLIST_$__SORT$TFPSLISTCOMPAREFUNC$stub:
.indirect_symbol _FGL_TFPSLIST_$__SORT$TFPSLISTCOMPAREFUNC
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
.globl	_$FGL$_Ld2
_$FGL$_Ld2:
	.short	0
	.long	_$FGL$_Ld3
	.align 2
.globl	_$FGL$_Ld3
_$FGL$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_FGL_ELISTERROR
_INIT_FGL_ELISTERROR:
	.byte	15,10
	.ascii	"EListError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FGL_ELISTERROR
_RTTI_FGL_ELISTERROR:
	.byte	15,10
	.ascii	"EListError"
	.long	_VMT_FGL_ELISTERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	3
	.ascii	"fgl"
	.short	0

.const_data
	.align 2
.globl	_$FGL$_Ld5
_$FGL$_Ld5:
	.short	0
	.long	_$FGL$_Ld6
	.align 2
.globl	_$FGL$_Ld6
_$FGL$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_FGL_TFPSLIST
_INIT_FGL_TFPSLIST:
	.byte	15,8
	.ascii	"TFPSList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FGL_TFPSLIST
_RTTI_FGL_TFPSLIST:
	.byte	15,8
	.ascii	"TFPSList"
	.long	_VMT_FGL_TFPSLIST
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	3
	.ascii	"fgl"
	.short	0

.const_data
	.align 2
.globl	_INIT_FGL_TFPSLISTCOMPAREFUNC
_INIT_FGL_TFPSLISTCOMPAREFUNC:
	.byte	6,19
	.ascii	"TFPSListCompareFunc"
	.byte	1,2,0,4
	.ascii	"Key1"
	.ascii	"\007Pointer"
	.byte	0,4
	.ascii	"Key2"
	.ascii	"\007Pointer"
	.ascii	"\007LongInt"
	.long	_RTTI_SYSTEM_LONGINT
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_POINTER

.const_data
	.align 2
.globl	_RTTI_FGL_TFPSLISTCOMPAREFUNC
_RTTI_FGL_TFPSLISTCOMPAREFUNC:
	.byte	6,19
	.ascii	"TFPSListCompareFunc"
	.byte	1,2,0,4
	.ascii	"Key1"
	.ascii	"\007Pointer"
	.byte	0,4
	.ascii	"Key2"
	.ascii	"\007Pointer"
	.ascii	"\007LongInt"
	.long	_RTTI_SYSTEM_LONGINT
	.byte	0
	.long	_RTTI_SYSTEM_POINTER
	.long	_RTTI_SYSTEM_POINTER

.const_data
	.align 2
.globl	_$FGL$_Ld8
_$FGL$_Ld8:
	.short	0
	.long	_$FGL$_Ld9
	.align 2
.globl	_$FGL$_Ld9
_$FGL$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_FGL_TFPSMAP
_INIT_FGL_TFPSMAP:
	.byte	15,7
	.ascii	"TFPSMap"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FGL_TFPSMAP
_RTTI_FGL_TFPSMAP:
	.byte	15,7
	.ascii	"TFPSMap"
	.long	_VMT_FGL_TFPSMAP
	.long	_RTTI_FGL_TFPSLIST
	.short	0
	.byte	3
	.ascii	"fgl"
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
L_RESSTR_RTLCONSTS_SLISTINDEXERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTINDEXERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SLISTCAPACITYERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTCAPACITYERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SLISTCOUNTERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTCOUNTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FGL_ELISTERROR$non_lazy_ptr:
.indirect_symbol _VMT_FGL_ELISTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SLISTITEMSIZEERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SLISTITEMSIZEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SMAPKEYERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SMAPKEYERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FGL_TFPSMAP_$__BINARYCOMPAREKEY$POINTER$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _FGL_TFPSMAP_$__BINARYCOMPAREKEY$POINTER$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FGL_TFPSMAP_$__BINARYCOMPAREDATA$POINTER$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _FGL_TFPSMAP_$__BINARYCOMPAREDATA$POINTER$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SSORTEDLISTERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SSORTEDLISTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_RTLCONSTS_SDUPLICATEITEM$non_lazy_ptr:
.indirect_symbol _RESSTR_RTLCONSTS_SDUPLICATEITEM
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

