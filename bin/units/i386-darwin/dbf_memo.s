# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_MEMO_TMEMOFILE_$__SETDBFVERSION$TXBASEVERSION
_DBF_MEMO_TMEMOFILE_$__SETDBFVERSION$TXBASEVERSION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	96(%eax),%al
	cmpb	-4(%ebp),%al
	je	Lj5
	jmp	Lj6
Lj5:
	jmp	Lj3
Lj6:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,96(%eax)
	movzbl	-4(%ebp),%eax
	cmpl	$5,%eax
	je	Lj11
	cmpl	$7,%eax
	je	Lj11
Lj11:
	je	Lj9
	jmp	Lj10
Lj9:
	movl	-8(%ebp),%eax
	movb	$0,97(%eax)
	jmp	Lj14
Lj10:
	movl	-8(%ebp),%eax
	movb	$32,97(%eax)
Lj14:
Lj3:
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE
_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE:
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
	movl	$0,108(%eax)
	movl	-12(%ebp),%eax
	movb	$0,104(%eax)
	movl	-12(%ebp),%eax
	movb	$32,97(%eax)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,92(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	movb	%al,49(%edx)
Lj33:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj34
	call	LFPC_RERAISE$stub
Lj34:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj52
	jmp	Lj51
Lj52:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj51
Lj50:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj51:
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
	jne	Lj56
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj58
Lj57:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj58:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj56:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj55
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj55:
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
.globl	_DBF_MEMO_TMEMOFILE_$__DESTROY
_DBF_MEMO_TMEMOFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj65
	jmp	Lj66
Lj65:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj66:
	movl	-8(%ebp),%eax
	call	L_DBF_MEMO_TMEMOFILE_$__CLOSE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj77
	jmp	Lj76
Lj77:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj76:
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TMEMOFILE_$__OPEN
_DBF_MEMO_TMEMOFILE_$__OPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	104(%eax),%al
	testb	%al,%al
	je	Lj82
	jmp	Lj83
Lj82:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-4(%ebp),%eax
	movl	$512,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-4(%ebp),%eax
	movb	96(%eax),%al
	cmpb	$2,%al
	je	Lj94
	jmp	Lj95
Lj94:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movb	$3,16(%eax)
Lj95:
	movl	-4(%ebp),%eax
	movb	$0,53(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj100
	jmp	Lj102
Lj102:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj100
	jmp	Lj101
Lj100:
	movl	-4(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	je	Lj105
	jmp	Lj107
Lj107:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	100(%eax),%eax
	cmpl	12(%edx),%eax
	jg	Lj105
	jmp	Lj106
Lj105:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
	jmp	Lj112
Lj106:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	12(%eax),%eax
	cltd
	idivl	100(%ecx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
Lj112:
	movl	-4(%ebp),%eax
	movl	100(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj101:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*156(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj131
	jmp	Lj130
Lj131:
	movl	-4(%ebp),%eax
	movzbl	96(%eax),%eax
	cmpl	$5,%eax
	je	Lj133
	cmpl	$7,%eax
	je	Lj133
Lj133:
	je	Lj129
	jmp	Lj132
Lj132:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$127,%eax
	testl	%eax,%eax
	jne	Lj129
	jmp	Lj130
Lj129:
	movl	-4(%ebp),%eax
	movl	$64,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	$64,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	jmp	Lj144
Lj130:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj145
	jmp	Lj146
Lj145:
	movl	-4(%ebp),%eax
	movl	$512,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-4(%ebp),%eax
	movl	$512,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
Lj146:
Lj144:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	leal	108(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	108(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	$0,(%edx,%eax,1)
	movl	-4(%ebp),%eax
	movl	108(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	incl	%eax
	movb	$0,(%edx,%eax,1)
	movl	-4(%ebp),%eax
	movb	$1,104(%eax)
Lj83:
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TMEMOFILE_$__CLOSE
_DBF_MEMO_TMEMOFILE_$__CLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,104(%eax)
	jne	Lj169
	jmp	Lj170
Lj169:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	jne	Lj173
	jmp	Lj174
Lj173:
	movl	-4(%ebp),%eax
	leal	108(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
Lj174:
	movl	-4(%ebp),%eax
	movb	$0,104(%eax)
Lj170:
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM
_DBF_MEMO_TMEMOFILE_$__READMEMO$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj189
	jmp	Lj191
Lj191:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj189
	jmp	Lj190
Lj189:
	jmp	Lj179
Lj190:
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj200
	jmp	Lj201
Lj200:
	jmp	Lj179
	jmp	Lj202
Lj201:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj203
	jmp	Lj204
Lj203:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-20(%ebp),%eax
	leal	(%ecx,%eax,1),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj204:
Lj202:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*160(%edx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj215
	jmp	Lj216
Lj215:
	movl	$8,-24(%ebp)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	jmp	Lj224
	.align 2
Lj223:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	cmpl	-20(%ebp),%eax
	jl	Lj228
	jmp	Lj229
Lj228:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj229:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-24(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-20(%ebp),%eax
	subl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj238
	jmp	Lj239
Lj238:
	incl	-4(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj239:
Lj224:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj223
	jmp	Lj225
Lj225:
	jmp	Lj248
Lj216:
	movb	$0,-25(%ebp)
	.align 2
Lj251:
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movb	$26,%dl
	call	L_DBF_COMMON_MEMSCAN$POINTER$BYTE$LONGINT$$POINTER$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj262
	jmp	Lj263
Lj262:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-32(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	decl	%eax
	cmpl	%eax,%edx
	jl	Lj266
	jmp	Lj265
Lj266:
	movl	-32(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$26,%al
	je	Lj264
	jmp	Lj267
Lj267:
	movl	-32(%ebp),%eax
	movb	1(%eax),%al
	testb	%al,%al
	je	Lj264
	jmp	Lj265
Lj264:
	movb	$1,-25(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-32(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
	jmp	Lj272
Lj265:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
Lj272:
	jmp	Lj275
Lj263:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
Lj275:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj284
	jmp	Lj285
Lj284:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-26(%ebp)
	incl	-4(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	cmpl	$0,%eax
	jg	Lj288
	jmp	Lj289
Lj288:
	movb	-26(%ebp),%al
	cmpb	$26,%al
	je	Lj298
	jmp	Lj297
Lj298:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movb	(%eax),%al
	cmpb	$26,%al
	je	Lj296
	jmp	Lj299
Lj299:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj296
	jmp	Lj297
Lj296:
	movb	$1,-25(%ebp)
	jmp	Lj300
Lj297:
	movb	$0,-25(%ebp)
Lj300:
	cmpb	$0,-25(%ebp)
	jne	Lj301
	jmp	Lj302
Lj301:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	$1,%eax
	sbbl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj302:
	jmp	Lj309
Lj289:
	movb	$1,-25(%ebp)
Lj309:
Lj285:
	cmpb	$0,-25(%ebp)
	jne	Lj253
	jmp	Lj251
Lj253:
Lj248:
Lj179:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM
_DBF_MEMO_TMEMOFILE_$__WRITEMEMO$LONGINT$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	$0,%edx
	jne	Lj315
	cmpl	$0,%eax
	jne	Lj315
	jmp	Lj314
Lj314:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj320
Lj315:
	movl	-12(%ebp),%eax
	movb	96(%eax),%al
	cmpb	$3,%al
	jae	Lj321
	jmp	Lj322
Lj321:
	movl	$8,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj327
Lj322:
	movl	$0,-16(%ebp)
	movl	$2,-20(%ebp)
Lj327:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj332
	jmp	Lj334
Lj334:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	movl	-16(%ebp),%esi
	movl	%esi,%ebx
	sarl	$31,%ebx
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	addl	%eax,%esi
	adcl	%edx,%ebx
	movl	-20(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	addl	%edx,%esi
	adcl	%eax,%ebx
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	addl	%edx,%esi
	adcl	%eax,%ebx
	subl	$1,%esi
	sbbl	$0,%ebx
	movl	%ebx,4(%esp)
	movl	%esi,(%esp)
	call	Lfpc_div_int64$stub
	movl	%eax,%ecx
	movl	%edx,%ebx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-12(%ebp),%esi
	cltd
	idivl	16(%esi)
	movl	%eax,%edx
	sarl	$31,%edx
	cmpl	%edx,%ebx
	jl	Lj332
	jg	Lj333
	cmpl	%eax,%ecx
	jbe	Lj332
	jmp	Lj333
Lj332:
	movb	$0,-29(%ebp)
	jmp	Lj343
Lj333:
	movb	$1,-29(%ebp)
	movl	-12(%ebp),%eax
	movb	$1,%cl
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*164(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj356
	jmp	Lj357
Lj356:
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
Lj357:
Lj343:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-12(%ebp),%edx
	movb	97(%edx),%cl
	movl	-12(%ebp),%edx
	movl	16(%edx),%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-16(%ebp),%eax
	cmpl	$8,%eax
	je	Lj376
	jmp	Lj377
Lj376:
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-16(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	96(%eax),%eax
	cmpl	$5,%eax
	je	Lj384
	cmpl	$7,%eax
	je	Lj384
Lj384:
	jne	Lj382
	jmp	Lj383
Lj382:
	movl	$589823,%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	108(%edx),%edx
	movl	%eax,(%edx)
	movl	-24(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	108(%edx),%edx
	movl	%eax,4(%edx)
	jmp	Lj393
Lj383:
	movl	$16777216,%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	108(%edx),%edx
	movl	%eax,(%edx)
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	-12(%ebp),%edx
	movl	108(%edx),%edx
	movl	%eax,4(%edx)
Lj393:
Lj377:
	.align 2
Lj404:
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	8(%ebp),%eax
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-28(%ebp)
	jmp	Lj416
	.align 2
Lj415:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-28(%ebp),%eax
	movb	$26,(%edx,%eax,1)
	incl	-28(%ebp)
	decl	-20(%ebp)
Lj416:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	cmpl	-28(%ebp),%edx
	jg	Lj420
	jmp	Lj417
Lj420:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj415
	jmp	Lj417
Lj417:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj421
	jmp	Lj422
Lj421:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	108(%eax),%ebx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ecx
	addl	%ecx,%eax
	leal	(%ebx,%eax,1),%eax
	movl	-12(%ebp),%ecx
	movb	97(%ecx),%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*144(%ebx)
	incl	-36(%ebp)
	jmp	Lj435
Lj422:
	jmp	Lj406
Lj435:
	movl	$0,-16(%ebp)
	jmp	Lj404
Lj406:
	cmpb	$0,-29(%ebp)
	jne	Lj438
	jmp	Lj439
Lj438:
	movl	-36(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*148(%edx)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub
Lj439:
Lj320:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TDBASEMEMOFILE_$__GETBLOCKLEN$$LONGINT
_DBF_MEMO_TDBASEMEMOFILE_$__GETBLOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	96(%eax),%al
	cmpb	$2,%al
	je	Lj452
	jmp	Lj453
Lj452:
	movl	$512,-8(%ebp)
	jmp	Lj456
Lj453:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movw	20(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
Lj456:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TDBASEMEMOFILE_$__GETMEMOSIZE$$LONGINT
_DBF_MEMO_TDBASEMEMOFILE_$__GETMEMOSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	96(%eax),%al
	cmpb	$2,%al
	jne	Lj465
	jmp	Lj464
Lj465:
	movl	-4(%ebp),%eax
	movl	108(%eax),%ebx
	movl	$589823,%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	cmpl	(%ebx),%eax
	je	Lj463
	jmp	Lj464
Lj463:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	4(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj472
Lj464:
	movl	$-1,-8(%ebp)
Lj472:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TDBASEMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT
_DBF_MEMO_TDBASEMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TDBASEMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT
_DBF_MEMO_TDBASEMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TDBASEMEMOFILE_$__SETBLOCKLEN$LONGINT
_DBF_MEMO_TDBASEMEMOFILE_$__SETBLOCKLEN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	96(%eax),%al
	cmpb	$2,%al
	jne	Lj489
	jmp	Lj490
Lj489:
	movw	-4(%ebp),%ax
	call	L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movw	%ax,20(%edx)
Lj490:
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TFOXPROMEMOFILE_$__GETBLOCKLEN$$LONGINT
_DBF_MEMO_TFOXPROMEMOFILE_$__GETBLOCKLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movw	6(%eax),%ax
	call	L_DBF_COMMON_SWAPWORDBE$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TFOXPROMEMOFILE_$__GETMEMOSIZE$$LONGINT
_DBF_MEMO_TFOXPROMEMOFILE_$__GETMEMOSIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	4(%eax),%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TFOXPROMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT
_DBF_MEMO_TFOXPROMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	(%eax),%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TFOXPROMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT
_DBF_MEMO_TFOXPROMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TFOXPROMEMOFILE_$__SETBLOCKLEN$LONGINT
_DBF_MEMO_TFOXPROMEMOFILE_$__SETBLOCKLEN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	-4(%ebp),%ax
	call	L_DBF_COMMON_SWAPWORDBE$WORD$$WORD$stub
	movl	-8(%ebp),%edx
	movl	40(%edx),%edx
	movw	%ax,6(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__CREATE$POINTER$$TNULLMEMOFILE
_DBF_MEMO_TNULLMEMOFILE_$__CREATE$POINTER$$TNULLMEMOFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj527
	jmp	Lj528
Lj527:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj528:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj533
	jmp	Lj534
Lj533:
	jmp	Lj525
Lj534:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj537
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj541
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE$stub
Lj541:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj542
	call	LFPC_RERAISE$stub
Lj542:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj552
	jmp	Lj551
Lj552:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj550
	jmp	Lj551
Lj550:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj551:
Lj537:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj539
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj556
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj557
	jmp	Lj558
Lj557:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj558:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj556:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj555
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj555:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj539
Lj539:
Lj525:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__OPENFILE
_DBF_MEMO_TNULLMEMOFILE_$__OPENFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__CLOSEFILE
_DBF_MEMO_TNULLMEMOFILE_$__CLOSEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__SETHEADEROFFSET$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__SETHEADEROFFSET$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__SETRECORDSIZE$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__SETRECORDSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__SETHEADERSIZE$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__SETHEADERSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
_DBF_MEMO_TNULLMEMOFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
_DBF_MEMO_TNULLMEMOFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__GETBLOCKLEN$$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__GETBLOCKLEN$$LONGINT:
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
.globl	_DBF_MEMO_TNULLMEMOFILE_$__GETMEMOSIZE$$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__GETMEMOSIZE$$LONGINT:
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
.globl	_DBF_MEMO_TNULLMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT:
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
.globl	_DBF_MEMO_TNULLMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__SETBLOCKLEN$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__SETBLOCKLEN$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_MEMO_TNULLMEMOFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
_DBF_MEMO_TNULLMEMOFILE_$__READRECORD$LONGINT$POINTER$$LONGINT:
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
.globl	_DBF_MEMO_TNULLMEMOFILE_$__WRITERECORD$LONGINT$POINTER
_DBF_MEMO_TNULLMEMOFILE_$__WRITERECORD$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld1
_$DBF_MEMO$_Ld1:
	.byte	9
	.ascii	"TMemoFile"

.const_data
	.align 2
.globl	_VMT_DBF_MEMO_TMEMOFILE
_VMT_DBF_MEMO_TMEMOFILE:
	.long	112,-112
	.long	_VMT_DBF_PGFILE_TPAGEDFILE
	.long	_$DBF_MEMO$_Ld1
	.long	0,0
	.long	_$DBF_MEMO$_Ld2
	.long	_RTTI_DBF_MEMO_TMEMOFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_MEMO_TMEMOFILE_$__DESTROY
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
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__OPENFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
	.long	_DBF_PGFILE_TPAGEDFILE_$__FLUSH
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld4
_$DBF_MEMO$_Ld4:
	.byte	15
	.ascii	"TFoxProMemoFile"

.const_data
	.align 2
.globl	_VMT_DBF_MEMO_TFOXPROMEMOFILE
_VMT_DBF_MEMO_TFOXPROMEMOFILE:
	.long	112,-112
	.long	_VMT_DBF_MEMO_TMEMOFILE
	.long	_$DBF_MEMO$_Ld4
	.long	0,0
	.long	_$DBF_MEMO$_Ld5
	.long	_RTTI_DBF_MEMO_TFOXPROMEMOFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_MEMO_TMEMOFILE_$__DESTROY
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
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__OPENFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
	.long	_DBF_PGFILE_TPAGEDFILE_$__FLUSH
	.long	_DBF_MEMO_TFOXPROMEMOFILE_$__GETBLOCKLEN$$LONGINT
	.long	_DBF_MEMO_TFOXPROMEMOFILE_$__GETMEMOSIZE$$LONGINT
	.long	_DBF_MEMO_TFOXPROMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT
	.long	_DBF_MEMO_TFOXPROMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT
	.long	_DBF_MEMO_TFOXPROMEMOFILE_$__SETBLOCKLEN$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld7
_$DBF_MEMO$_Ld7:
	.byte	14
	.ascii	"TDbaseMemoFile"

.const_data
	.align 2
.globl	_VMT_DBF_MEMO_TDBASEMEMOFILE
_VMT_DBF_MEMO_TDBASEMEMOFILE:
	.long	112,-112
	.long	_VMT_DBF_MEMO_TMEMOFILE
	.long	_$DBF_MEMO$_Ld7
	.long	0,0
	.long	_$DBF_MEMO$_Ld8
	.long	_RTTI_DBF_MEMO_TDBASEMEMOFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_MEMO_TMEMOFILE_$__DESTROY
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
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
	.long	_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__OPENFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
	.long	_DBF_PGFILE_TPAGEDFILE_$__FLUSH
	.long	_DBF_MEMO_TDBASEMEMOFILE_$__GETBLOCKLEN$$LONGINT
	.long	_DBF_MEMO_TDBASEMEMOFILE_$__GETMEMOSIZE$$LONGINT
	.long	_DBF_MEMO_TDBASEMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT
	.long	_DBF_MEMO_TDBASEMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT
	.long	_DBF_MEMO_TDBASEMEMOFILE_$__SETBLOCKLEN$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld10
_$DBF_MEMO$_Ld10:
	.byte	13
	.ascii	"TNullMemoFile"

.const_data
	.align 2
.globl	_VMT_DBF_MEMO_TNULLMEMOFILE
_VMT_DBF_MEMO_TNULLMEMOFILE:
	.long	112,-112
	.long	_VMT_DBF_MEMO_TMEMOFILE
	.long	_$DBF_MEMO$_Ld10
	.long	0,0
	.long	_$DBF_MEMO$_Ld11
	.long	_RTTI_DBF_MEMO_TNULLMEMOFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_MEMO_TMEMOFILE_$__DESTROY
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
	.long	_DBF_MEMO_TNULLMEMOFILE_$__SETHEADEROFFSET$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__SETRECORDSIZE$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__SETHEADERSIZE$LONGINT
	.long	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
	.long	_DBF_MEMO_TNULLMEMOFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
	.long	_DBF_MEMO_TNULLMEMOFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
	.long	_DBF_MEMO_TNULLMEMOFILE_$__CLOSEFILE
	.long	_DBF_MEMO_TNULLMEMOFILE_$__OPENFILE
	.long	_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
	.long	_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
	.long	_DBF_MEMO_TNULLMEMOFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__WRITERECORD$LONGINT$POINTER
	.long	_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
	.long	_DBF_PGFILE_TPAGEDFILE_$__FLUSH
	.long	_DBF_MEMO_TNULLMEMOFILE_$__GETBLOCKLEN$$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__GETMEMOSIZE$$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__GETNEXTFREEBLOCK$$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__SETNEXTFREEBLOCK$LONGINT
	.long	_DBF_MEMO_TNULLMEMOFILE_$__SETBLOCKLEN$LONGINT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_MEMO
_THREADVARLIST_DBF_MEMO:
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

L_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE
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

L_DBF_MEMO_TMEMOFILE_$__CLOSE$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__DESTROY$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN
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

L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub:
.indirect_symbol _DBF_COMMON_FREEMEMANDNIL$POINTER
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

L_DBF_COMMON_MEMSCAN$POINTER$BYTE$LONGINT$$POINTER$stub:
.indirect_symbol _DBF_COMMON_MEMSCAN$POINTER$BYTE$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _DBF_COMMON_SWAPINTLE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD$stub:
.indirect_symbol _DBF_COMMON_SWAPINTBE$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPWORDLE$WORD$$WORD$stub:
.indirect_symbol _DBF_COMMON_SWAPWORDLE$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_SWAPWORDBE$WORD$$WORD$stub:
.indirect_symbol _DBF_COMMON_SWAPWORDBE$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE$stub:
.indirect_symbol _DBF_MEMO_TMEMOFILE_$__CREATE$POINTER$$TMEMOFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
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
.globl	_$DBF_MEMO$_Ld2
_$DBF_MEMO$_Ld2:
	.short	0
	.long	_$DBF_MEMO$_Ld3
	.align 2
.globl	_$DBF_MEMO$_Ld3
_$DBF_MEMO$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_MEMO_TMEMOFILE
_INIT_DBF_MEMO_TMEMOFILE:
	.byte	15,9
	.ascii	"TMemoFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_MEMO_TMEMOFILE
_RTTI_DBF_MEMO_TMEMOFILE:
	.byte	15,9
	.ascii	"TMemoFile"
	.long	_VMT_DBF_MEMO_TMEMOFILE
	.long	_RTTI_DBF_PGFILE_TPAGEDFILE
	.short	0
	.byte	8
	.ascii	"dbf_memo"
	.short	0

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld5
_$DBF_MEMO$_Ld5:
	.short	0
	.long	_$DBF_MEMO$_Ld6
	.align 2
.globl	_$DBF_MEMO$_Ld6
_$DBF_MEMO$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_MEMO_TFOXPROMEMOFILE
_INIT_DBF_MEMO_TFOXPROMEMOFILE:
	.byte	15,15
	.ascii	"TFoxProMemoFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_MEMO_TFOXPROMEMOFILE
_RTTI_DBF_MEMO_TFOXPROMEMOFILE:
	.byte	15,15
	.ascii	"TFoxProMemoFile"
	.long	_VMT_DBF_MEMO_TFOXPROMEMOFILE
	.long	_RTTI_DBF_MEMO_TMEMOFILE
	.short	0
	.byte	8
	.ascii	"dbf_memo"
	.short	0

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld8
_$DBF_MEMO$_Ld8:
	.short	0
	.long	_$DBF_MEMO$_Ld9
	.align 2
.globl	_$DBF_MEMO$_Ld9
_$DBF_MEMO$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_MEMO_TDBASEMEMOFILE
_INIT_DBF_MEMO_TDBASEMEMOFILE:
	.byte	15,14
	.ascii	"TDbaseMemoFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_MEMO_TDBASEMEMOFILE
_RTTI_DBF_MEMO_TDBASEMEMOFILE:
	.byte	15,14
	.ascii	"TDbaseMemoFile"
	.long	_VMT_DBF_MEMO_TDBASEMEMOFILE
	.long	_RTTI_DBF_MEMO_TMEMOFILE
	.short	0
	.byte	8
	.ascii	"dbf_memo"
	.short	0

.const_data
	.align 2
.globl	_$DBF_MEMO$_Ld11
_$DBF_MEMO$_Ld11:
	.short	0
	.long	_$DBF_MEMO$_Ld12
	.align 2
.globl	_$DBF_MEMO$_Ld12
_$DBF_MEMO$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_MEMO_TNULLMEMOFILE
_INIT_DBF_MEMO_TNULLMEMOFILE:
	.byte	15,13
	.ascii	"TNullMemoFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_DBF_MEMO_TNULLMEMOFILE
_RTTI_DBF_MEMO_TNULLMEMOFILE:
	.byte	15,13
	.ascii	"TNullMemoFile"
	.long	_VMT_DBF_MEMO_TNULLMEMOFILE
	.long	_RTTI_DBF_MEMO_TMEMOFILE
	.short	0
	.byte	8
	.ascii	"dbf_memo"
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_MEMO_PINTEGER
_INIT_DBF_MEMO_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.const_data
	.align 2
.globl	_RTTI_DBF_MEMO_PINTEGER
_RTTI_DBF_MEMO_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.const_data
	.align 2
.globl	_INIT_DBF_MEMO_TMEMOFILECLASS
_INIT_DBF_MEMO_TMEMOFILECLASS:
	.byte	0
	.ascii	"\016TMemoFileClass"

.const_data
	.align 2
.globl	_RTTI_DBF_MEMO_TMEMOFILECLASS
_RTTI_DBF_MEMO_TMEMOFILECLASS:
	.byte	0
	.ascii	"\016TMemoFileClass"
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

