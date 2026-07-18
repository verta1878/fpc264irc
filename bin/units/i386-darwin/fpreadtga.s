# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__CREATE$$TFPREADERTARGA
_FPREADTGA_TFPREADERTARGA_$__CREATE$$TFPREADERTARGA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj6:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj15
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj21
	jmp	Lj20
Lj21:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19
	jmp	Lj20
Lj19:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj20:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj25
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj26
	jmp	Lj27
Lj26:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj27:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj25:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj24
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj24:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__DESTROY
_FPREADTGA_TFPREADERTARGA_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj34
	jmp	Lj35
Lj34:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj35:
	movl	-8(%ebp),%eax
	call	L_FPREADTGA_TFPREADERTARGA_$__FREEBUFFERS$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj46
	jmp	Lj45
Lj46:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj44
	jmp	Lj45
Lj44:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj45:
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__FREEBUFFERS
_FPREADTGA_TFPREADERTARGA_$__FREEBUFFERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	testl	%eax,%eax
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,308(%eax)
Lj52:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	jne	Lj57
	jmp	Lj58
Lj57:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,308(%eax)
Lj58:
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__ANALYZEHEADER$TFPCUSTOMIMAGE
_FPREADTGA_TFPREADERTARGA_$__ANALYZEHEADER$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj64
Lj64:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	%eax,%ebx
	movzbl	2(%ebx),%eax
	decl	%eax
	cmpl	$3,%eax
	jb	Lj70
	subl	$8,%eax
	cmpl	$3,%eax
	jb	Lj70
Lj70:
	jnc	Lj69
	jmp	Lj68
Lj69:
	movzbl	16(%ebx),%eax
	cmpl	$8,%eax
	je	Lj71
	cmpl	$16,%eax
	je	Lj71
	cmpl	$24,%eax
	je	Lj71
	cmpl	$32,%eax
	je	Lj71
Lj71:
	jne	Lj67
	jmp	Lj68
Lj67:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj64(%esi),%edx
	movl	L_$FPREADTGA$_Ld1$non_lazy_ptr-Lj64(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj64(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj68:
	movl	-8(%ebp),%edx
	movb	17(%ebx),%al
	andb	$32,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	300(%edx)
	movl	-8(%ebp),%edx
	movb	17(%ebx),%al
	andb	$15,%al
	movb	%al,42(%edx)
	movl	-8(%ebp),%edx
	movb	16(%ebx),%al
	movb	%al,301(%edx)
	movl	-8(%ebp),%edx
	movzbl	2(%ebx),%eax
	cmpl	$8,%eax
	setgb	299(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,299(%eax)
	jne	Lj86
	jmp	Lj87
Lj86:
	movzbl	2(%ebx),%eax
	subl	$8,%eax
	movb	%al,2(%ebx)
Lj87:
	movl	-8(%ebp),%eax
	movzbl	301(%eax),%edi
	movl	%edi,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edi
	sarl	$3,%edi
	movw	12(%ebx),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movzwl	%ax,%eax
	imull	%eax,%edi
	movl	-8(%ebp),%eax
	movl	%edi,312(%eax)
	movl	-8(%ebp),%eax
	movl	312(%eax),%edx
	movl	-8(%ebp),%eax
	leal	308(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movzbl	2(%ebx),%eax
	cmpl	$3,%eax
	je	Lj98
	jmp	Lj99
Lj98:
	movl	-8(%ebp),%eax
	movl	$2040,316(%eax)
	jmp	Lj102
Lj99:
	movw	5(%ebx),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movzwl	%ax,%eax
	shll	$3,%eax
	movl	-8(%ebp),%edx
	movl	%eax,316(%edx)
Lj102:
	movl	-8(%ebp),%eax
	movl	316(%eax),%edx
	movl	-8(%ebp),%eax
	leal	304(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movw	12(%ebx),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movw	%ax,%dx
	movzwl	%dx,%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT$stub
	movw	14(%ebx),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movw	%ax,%dx
	movzwl	%dx,%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT$stub
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__CREATEGRAYPALETTE
_FPREADTGA_TFPREADERTARGA_$__CREATEGRAYPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.align 2
Lj127:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	movl	-8(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movl	-8(%ebp),%edx
	imull	$255,%edx
	movw	%dx,(%eax)
	movl	-8(%ebp),%edx
	imull	$255,%edx
	movw	%dx,2(%eax)
	movl	-8(%ebp),%edx
	imull	$255,%edx
	movw	%dx,4(%eax)
	movw	$65535,6(%eax)
	cmpl	$255,-8(%ebp)
	jl	Lj127
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__READPALETTE$TSTREAM
_FPREADTGA_TFPREADERTARGA_$__READPALETTE$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	31(%eax),%al
	cmpb	$16,%al
	jb	Lj141
	subb	$16,%al
	je	Lj142
	subb	$8,%al
	je	Lj142
	subb	$8,%al
	je	Lj143
	jmp	Lj141
Lj142:
	movl	-8(%ebp),%eax
	movw	29(%eax),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj145
	decl	-20(%ebp)
	.align 2
Lj146:
	incl	-20(%ebp)
	leal	-11(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$3,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	304(%eax),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movzbl	-9(%ebp),%edx
	shll	$8,%edx
	movw	%dx,(%eax)
	movzbl	-10(%ebp),%edx
	shll	$8,%edx
	movw	%dx,2(%eax)
	movzbl	-11(%ebp),%edx
	shll	$8,%edx
	movw	%dx,4(%eax)
	movw	$65535,6(%eax)
	cmpl	-20(%ebp),%ebx
	jg	Lj146
Lj145:
	jmp	Lj140
Lj143:
	movl	-8(%ebp),%eax
	movw	29(%eax),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj166
	decl	-20(%ebp)
	.align 2
Lj167:
	incl	-20(%ebp)
	leal	-15(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	304(%eax),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,8),%eax
	movzbl	-13(%ebp),%edx
	shll	$8,%edx
	movw	%dx,(%eax)
	movzbl	-14(%ebp),%edx
	shll	$8,%edx
	movw	%dx,2(%eax)
	movzbl	-15(%ebp),%edx
	shll	$8,%edx
	movw	%dx,4(%eax)
	movl	-8(%ebp),%edx
	movzbl	42(%edx),%edx
	cmpl	$8,%edx
	je	Lj184
	jmp	Lj185
Lj184:
	movb	-12(%ebp),%dl
	andb	$128,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	jne	Lj186
	jmp	Lj187
Lj186:
	movw	$0,6(%eax)
	jmp	Lj190
Lj187:
	movw	$65535,6(%eax)
Lj190:
Lj185:
	cmpl	-20(%ebp),%ebx
	jg	Lj167
Lj166:
	jmp	Lj140
Lj141:
Lj140:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADTGA_TFPREADERTARGA_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj194
Lj194:
	popl	%edi
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
	jne	Lj195
	movl	-12(%ebp),%eax
	leal	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$18,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTGA_TFPREADERTARGA_$__ANALYZEHEADER$TFPCUSTOMIMAGE$stub
	movl	-12(%ebp),%eax
	movzbl	24(%eax),%eax
	cmpl	$0,%eax
	jg	Lj208
	jmp	Lj209
Lj208:
	movl	-12(%ebp),%eax
	movzbl	24(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	43(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_setlength$stub
	movl	-12(%ebp),%eax
	movzbl	24(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%eax
	movzbl	43(%eax),%eax
	testl	%eax,%eax
	jne	Lj222
	jmp	Lj223
Lj222:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	leal	43(%eax),%eax
	leal	-64(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$FPREADTGA$_Ld3$non_lazy_ptr-Lj194(%edi),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj223:
Lj209:
	movl	-12(%ebp),%eax
	movzbl	25(%eax),%eax
	testl	%eax,%eax
	jne	Lj234
	jmp	Lj235
Lj234:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTGA_TFPREADERTARGA_$__READPALETTE$TSTREAM$stub
Lj235:
	movl	-12(%ebp),%eax
	movzbl	26(%eax),%eax
	cmpl	$3,%eax
	je	Lj240
	jmp	Lj241
Lj240:
	movl	-12(%ebp),%eax
	call	L_FPREADTGA_TFPREADERTARGA_$__CREATEGRAYPALETTE$stub
Lj241:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,300(%eax)
	jne	Lj246
	jmp	Lj247
Lj246:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj249
	decl	-20(%ebp)
	.align 2
Lj250:
	incl	-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	cmpl	-20(%ebp),%ebx
	jg	Lj250
Lj249:
	jmp	Lj263
Lj247:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jl	Lj265
	incl	-20(%ebp)
	.align 2
Lj266:
	decl	-20(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	cmpl	$0,-20(%ebp)
	jg	Lj266
Lj265:
Lj263:
Lj195:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj196
	call	LFPC_RERAISE$stub
Lj196:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__READSCANLINE$LONGINT$TSTREAM
_FPREADTGA_TFPREADERTARGA_$__READSCANLINE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movb	299(%eax),%al
	testb	%al,%al
	je	Lj281
	jmp	Lj282
Lj281:
	movl	-12(%ebp),%eax
	movl	308(%eax),%edx
	movl	-12(%ebp),%eax
	movl	312(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	jmp	Lj289
Lj282:
	movl	-12(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movw	36(%eax),%ax
	movw	%ax,(%esp)
	call	L_TARGACMN_TOWORD$TWORDREC$$WORD$stub
	movw	%ax,%bx
	movzwl	%bx,%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj293
	decl	-24(%ebp)
	.align 2
Lj294:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movl	324(%eax),%eax
	cmpl	$0,%eax
	jg	Lj297
	jmp	Lj298
Lj297:
	movl	-12(%ebp),%eax
	decl	324(%eax)
	jmp	Lj299
Lj298:
	movl	-12(%ebp),%eax
	decl	320(%eax)
	movl	-12(%ebp),%eax
	movl	320(%eax),%eax
	cmpl	$0,%eax
	jl	Lj300
	jmp	Lj301
Lj300:
	leal	-17(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-17(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj308
	jmp	Lj309
Lj308:
	movl	-12(%ebp),%edx
	movb	-17(%ebp),%al
	andb	$127,%al
	movzbl	%al,%eax
	movl	%eax,324(%edx)
	movl	-12(%ebp),%eax
	movl	$0,320(%eax)
	jmp	Lj314
Lj309:
	movl	-12(%ebp),%edx
	movb	-17(%ebp),%al
	andb	$127,%al
	movzbl	%al,%eax
	movl	%eax,320(%edx)
Lj314:
Lj301:
	movl	-12(%ebp),%eax
	movzbl	301(%eax),%ecx
	shrl	$3,%ecx
	movl	-12(%ebp),%eax
	leal	328(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
Lj299:
	movl	-12(%ebp),%eax
	movzbl	301(%eax),%eax
	shrl	$3,%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj324
	decl	-28(%ebp)
	.align 2
Lj325:
	incl	-28(%ebp)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	-16(%ebp),%esi
	movb	328(%edx,%ecx,1),%dl
	movb	%dl,(%esi)
	incl	-16(%ebp)
	cmpl	-28(%ebp),%eax
	jg	Lj325
Lj324:
	cmpl	-24(%ebp),%ebx
	jg	Lj294
Lj293:
Lj289:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
_FPREADTGA_TFPREADERTARGA_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	$65535,-18(%ebp)
	movl	-12(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movb	26(%eax),%al
	cmpb	$1,%al
	jb	Lj335
	decb	%al
	je	Lj336
	decb	%al
	je	Lj337
	decb	%al
	je	Lj338
	jmp	Lj335
Lj336:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj340
	decl	-16(%ebp)
	.align 2
Lj341:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	304(%eax),%ecx
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	leal	(%ecx,%eax,8),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj341
Lj340:
	jmp	Lj334
Lj337:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj351
	decl	-16(%ebp)
	.align 2
Lj352:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movb	301(%eax),%al
	cmpb	$8,%al
	jb	Lj354
	subb	$8,%al
	je	Lj355
	subb	$8,%al
	je	Lj355
	subb	$8,%al
	je	Lj356
	subb	$8,%al
	je	Lj356
	jmp	Lj354
Lj355:
	movl	-32(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-26(%ebp)
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movzwl	-26(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-26(%ebp)
	movzwl	-26(%ebp),%eax
	shrl	$10,%eax
	shll	$11,%eax
	movw	%ax,-24(%ebp)
	movzwl	-26(%ebp),%eax
	shrl	$5,%eax
	shll	$11,%eax
	movw	%ax,-22(%ebp)
	movzwl	-26(%ebp),%eax
	shll	$11,%eax
	movw	%ax,-20(%ebp)
	jmp	Lj353
Lj356:
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-32(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-20(%ebp)
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-32(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-22(%ebp)
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	movl	-32(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movw	%ax,-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	301(%eax),%eax
	cmpl	$32,%eax
	je	Lj373
	jmp	Lj374
Lj373:
	incl	-32(%ebp)
	movw	$65535,-18(%ebp)
	movl	-12(%ebp),%eax
	movzbl	42(%eax),%eax
	cmpl	$8,%eax
	je	Lj377
	jmp	Lj378
Lj377:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj379
	jmp	Lj380
Lj379:
	movw	$0,-18(%ebp)
Lj380:
Lj378:
Lj374:
	jmp	Lj353
Lj354:
Lj353:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-32(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj352
Lj351:
	jmp	Lj334
Lj338:
	movl	-12(%ebp),%eax
	movb	301(%eax),%al
	cmpb	$8,%al
	jb	Lj392
	subb	$8,%al
	je	Lj393
	subb	$8,%al
	je	Lj394
	jmp	Lj392
Lj393:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj396
	decl	-16(%ebp)
	.align 2
Lj397:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	304(%eax),%ecx
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	leal	(%ecx,%eax,8),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj397
Lj396:
	jmp	Lj391
Lj394:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj407
	decl	-16(%ebp)
	.align 2
Lj408:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	304(%eax),%edx
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movw	4(%edx,%eax,8),%ax
	movw	%ax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	304(%eax),%edx
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movw	2(%edx,%eax,8),%ax
	movw	%ax,-22(%ebp)
	movl	-12(%ebp),%eax
	movl	304(%eax),%edx
	movl	-32(%ebp),%eax
	movzbl	(%eax),%eax
	movw	(%edx,%eax,8),%ax
	movw	%ax,-24(%ebp)
	incl	-32(%ebp)
	movw	$65535,-18(%ebp)
	movl	-12(%ebp),%eax
	movzbl	42(%eax),%eax
	cmpl	$8,%eax
	je	Lj417
	jmp	Lj418
Lj417:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj419
	jmp	Lj420
Lj419:
	movw	$0,-18(%ebp)
Lj420:
Lj418:
	incl	-32(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj408
Lj407:
	jmp	Lj391
Lj392:
Lj391:
	jmp	Lj334
Lj335:
Lj334:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTGA_TFPREADERTARGA_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADTGA_TFPREADERTARGA_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
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
.globl	_INIT$_FPREADTGA
_INIT$_FPREADTGA:
.reference __FPREADTGA_init
.globl	__FPREADTGA_init
__FPREADTGA_init:
.reference _INIT$_FPREADTGA
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADTGA_TFPREADERTARGA$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADTGA$_Ld5$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADTGA$_Ld7$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADTGA$_Ld9
_$FPREADTGA$_Ld9:
	.byte	14
	.ascii	"TFPReaderTarga"

.const_data
	.align 2
.globl	_VMT_FPREADTGA_TFPREADERTARGA
_VMT_FPREADTGA_TFPREADERTARGA:
	.long	332,-332
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADTGA$_Ld9
	.long	0,0
	.long	_$FPREADTGA$_Ld10
	.long	_RTTI_FPREADTGA_TFPREADERTARGA
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADTGA_TFPREADERTARGA_$__DESTROY
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPREADTGA_TFPREADERTARGA_$__CREATE$$TFPREADERTARGA
	.long	_FPREADTGA_TFPREADERTARGA_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADTGA_TFPREADERTARGA_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADTGA_TFPREADERTARGA_$__READSCANLINE$LONGINT$TSTREAM
	.long	_FPREADTGA_TFPREADERTARGA_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADTGA
_THREADVARLIST_FPREADTGA:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADTGA$_Ld2
_$FPREADTGA$_Ld2:
	.short	0,1
	.long	0,-1,36
.reference _$FPREADTGA$_Ld1
.globl	_$FPREADTGA$_Ld1
_$FPREADTGA$_Ld1:
.reference _$FPREADTGA$_Ld2
	.ascii	"Unknown/Unsupported Targa image type\000"

.const_data
	.align 2
.globl	_$FPREADTGA$_Ld4
_$FPREADTGA$_Ld4:
	.short	0,1
	.long	0,-1,2
.reference _$FPREADTGA$_Ld3
.globl	_$FPREADTGA$_Ld3
_$FPREADTGA$_Ld3:
.reference _$FPREADTGA$_Ld4
	.ascii	"ID\000"

.const_data
	.align 2
.globl	_$FPREADTGA$_Ld6
_$FPREADTGA$_Ld6:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADTGA$_Ld5
.globl	_$FPREADTGA$_Ld5
_$FPREADTGA$_Ld5:
.reference _$FPREADTGA$_Ld6
	.ascii	"tga\000"

.const_data
	.align 2
.globl	_$FPREADTGA$_Ld8
_$FPREADTGA$_Ld8:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTGA$_Ld7
.globl	_$FPREADTGA$_Ld7
_$FPREADTGA$_Ld7:
.reference _$FPREADTGA$_Ld8
	.ascii	"TARGA Format\000"
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

L_FPREADTGA_TFPREADERTARGA_$__FREEBUFFERS$stub:
.indirect_symbol _FPREADTGA_TFPREADERTARGA_$__FREEBUFFERS
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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

L_TARGACMN_TOWORD$TWORDREC$$WORD$stub:
.indirect_symbol _TARGACMN_TOWORD$TWORDREC$$WORD
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTGA_TFPREADERTARGA_$__ANALYZEHEADER$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADTGA_TFPREADERTARGA_$__ANALYZEHEADER$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_setlength$stub:
.indirect_symbol fpc_shortstr_setlength
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTGA_TFPREADERTARGA_$__READPALETTE$TSTREAM$stub:
.indirect_symbol _FPREADTGA_TFPREADERTARGA_$__READPALETTE$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTGA_TFPREADERTARGA_$__CREATEGRAYPALETTE$stub:
.indirect_symbol _FPREADTGA_TFPREADERTARGA_$__CREATEGRAYPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1
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
.globl	_$FPREADTGA$_Ld10
_$FPREADTGA$_Ld10:
	.short	0
	.long	_$FPREADTGA$_Ld11
	.align 2
.globl	_$FPREADTGA$_Ld11
_$FPREADTGA$_Ld11:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADTGA_TFPREADERTARGA
_INIT_FPREADTGA_TFPREADERTARGA:
	.byte	15,14
	.ascii	"TFPReaderTarga"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADTGA_TFPREADERTARGA
_RTTI_FPREADTGA_TFPREADERTARGA:
	.byte	15,14
	.ascii	"TFPReaderTarga"
	.long	_VMT_FPREADTGA_TFPREADERTARGA
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadTGA"
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
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTGA$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADTGA$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTGA$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADTGA$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADTGA_TFPREADERTARGA$non_lazy_ptr:
.indirect_symbol _VMT_FPREADTGA_TFPREADERTARGA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTGA$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADTGA$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTGA$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPREADTGA$_Ld7
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

