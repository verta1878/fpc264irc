# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const
_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj4
Lj4:
	popl	-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
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
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj4(%ecx),%eax
	movl	(%eax,%edx,4),%ecx
	movl	-16(%ebp),%eax
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj4(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-16(%ebp),%ebx
	leal	La1-Lj4(%ebx),%edx
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
.globl	_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES
_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj16
Lj16:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj16(%ebx),%eax
	movl	(%eax,%edx,4),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj16(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj16(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE
_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj24
Lj24:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj25
	jmp	Lj26
Lj25:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj26:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj31
	jmp	Lj32
Lj31:
	jmp	Lj23
Lj32:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj35
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj39
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj24(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-12(%ebp),%eax
	movl	$0,32(%eax)
	movl	-12(%ebp),%eax
	movl	$0,28(%eax)
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*148(%esi)
Lj39:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	call	LFPC_RERAISE$stub
Lj40:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj66
	jmp	Lj65
Lj66:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj64
	jmp	Lj65
Lj64:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj65:
Lj35:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj70
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj72:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj70:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj69
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj69:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj37
Lj37:
Lj23:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY
_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj79
	jmp	Lj80
Lj79:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj80:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj85
	jmp	Lj86
Lj85:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj86:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TPERSISTENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj95
	jmp	Lj94
Lj95:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj94:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$TFPCUSTOMIMAGEREADER
_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$TFPCUSTOMIMAGEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__IMAGEREAD$TSTREAM$TFPCUSTOMIMAGE$$TFPCUSTOMIMAGE$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING$TFPCUSTOMIMAGEREADER
_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING$TFPCUSTOMIMAGEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj107
Lj107:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj108
	jmp	Lj109
Lj108:
	movw	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj107(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj122
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$TFPCUSTOMIMAGEREADER$stub
Lj122:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj123
	decl	%eax
	testl	%eax,%eax
	je	Lj124
Lj124:
	call	LFPC_RERAISE$stub
Lj123:
	jmp	Lj134
Lj109:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%edx
	movl	$0,%ecx
	movl	$2,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj134:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOSTREAM$TSTREAM$TFPCUSTOMIMAGEWRITER
_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOSTREAM$TSTREAM$TFPCUSTOMIMAGEWRITER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGEWRITER_$__IMAGEWRITE$TSTREAM$TFPCUSTOMIMAGE$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER
_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj150
Lj150:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	$65280,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj150(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj161
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOSTREAM$TSTREAM$TFPCUSTOMIMAGEWRITER$stub
Lj161:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj162
	decl	%eax
	testl	%eax,%eax
	je	Lj163
Lj163:
	call	LFPC_RERAISE$stub
Lj162:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-180(%ebp)
	movl	%esi,-176(%ebp)
	call	Lj174
Lj174:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj175
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	leal	-84(%ebp),%edx
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-84(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj190
	jmp	Lj189
Lj190:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj188
	jmp	Lj189
Lj188:
	leal	-12(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj189:
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj174(%ebx),%eax
	movl	(%eax),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	L_$FPIMAGE$_Ld33$non_lazy_ptr-Lj174(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj208
	.align 2
Lj207:
	movl	-20(%ebp),%edx
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj174(%ebx),%eax
	movl	(%eax),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA$stub
	movl	%eax,-36(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%edx
	leal	-88(%ebp),%eax
	movl	L_$FPIMAGE$_Ld33$non_lazy_ptr-Lj174(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj216
	jmp	Lj217
Lj216:
	leal	-100(%ebp),%ecx
	leal	-124(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj234
	movl	-36(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj240
	jmp	Lj241
Lj240:
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	-28(%ebp),%ecx
	call	*104(%ecx)
	movl	%eax,-32(%ebp)
	leal	-140(%ebp),%ecx
	leal	-164(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-168(%ebp)
	testl	%eax,%eax
	jne	Lj248
	movl	-32(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER$stub
Lj248:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-168(%ebp),%eax
	testl	%eax,%eax
	je	Lj249
	decl	%eax
	testl	%eax,%eax
	je	Lj250
Lj250:
	call	LFPC_RERAISE$stub
Lj249:
	jmp	Lj230
Lj241:
Lj234:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj174(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj262
	movl	%eax,-132(%ebp)
	leal	-144(%ebp),%ecx
	leal	-168(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-172(%ebp)
	testl	%eax,%eax
	jne	Lj263
	movl	-132(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,-40(%ebp)
Lj263:
	call	LFPC_POPADDRSTACK$stub
	movl	-172(%ebp),%eax
	testl	%eax,%eax
	je	Lj269
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj269:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj236
Lj262:
	call	LFPC_RERAISE$stub
Lj230:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	jmp	Lj209
Lj236:
Lj217:
	decl	-20(%ebp)
Lj208:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj207
	jmp	Lj209
Lj209:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj270
	jmp	Lj271
Lj270:
	movl	-40(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	$0,%ecx
	movl	$14,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj271:
Lj175:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-40(%ebp)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj176
	call	LFPC_RERAISE$stub
Lj176:
	movl	-180(%ebp),%ebx
	movl	-176(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM
_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%ebx,-240(%ebp)
	movl	%esi,-236(%ebp)
	call	Lj297
Lj297:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-24(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj298
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj303
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj297(%ebx),%eax
	movl	(%eax),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj312
	.align 2
Lj311:
	movl	-12(%ebp),%edx
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj297(%ebx),%eax
	movl	(%eax),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA$stub
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj320
	jmp	Lj321
Lj320:
	movl	-28(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
Lj321:
	cmpl	$0,-16(%ebp)
	jne	Lj324
	jmp	Lj325
Lj324:
	movl	-16(%ebp),%edx
	movl	$0,%eax
	movl	-16(%ebp),%ecx
	call	*104(%ecx)
	movl	%eax,-20(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj332
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CHECKCONTENTS$TSTREAM$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj338
	jmp	Lj339
Lj338:
	leal	-160(%ebp),%ecx
	leal	-184(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-188(%ebp)
	testl	%eax,%eax
	jne	Lj350
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	jmp	Lj346
Lj350:
	call	LFPC_POPADDRSTACK$stub
	movl	-188(%ebp),%eax
	testl	%eax,%eax
	je	Lj352
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj297(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj364
	movl	%eax,-192(%ebp)
	leal	-204(%ebp),%ecx
	leal	-228(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-232(%ebp)
	testl	%eax,%eax
	jne	Lj365
	movl	-192(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,-24(%ebp)
Lj365:
	call	LFPC_POPADDRSTACK$stub
	movl	-232(%ebp),%eax
	testl	%eax,%eax
	je	Lj371
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj371:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj352
Lj364:
	call	LFPC_RERAISE$stub
Lj346:
	call	LFPC_POPADDRSTACK$stub
	movl	-188(%ebp),%eax
	jmp	Lj336
Lj352:
Lj339:
Lj332:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*136(%esi)
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj333
	decl	%eax
	testl	%eax,%eax
	je	Lj334
	subl	$2,%eax
	testl	%eax,%eax
	je	Lj313
Lj334:
	call	LFPC_RERAISE$stub
Lj336:
	movl	-148(%ebp),%eax
	movl	$3,-148(%ebp)
	jmp	Lj332
Lj333:
Lj325:
	decl	-12(%ebp)
Lj312:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj311
	jmp	Lj313
Lj313:
Lj303:
	call	LFPC_POPADDRSTACK$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj305
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj297(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj380
	movl	%eax,-112(%ebp)
	leal	-124(%ebp),%ecx
	leal	-232(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj381
	movl	-112(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-132(%ebp)
	movl	$11,-136(%ebp)
	leal	-136(%ebp),%edx
	movl	$0,%ecx
	movl	$11,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj381:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj389
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj389:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj305
Lj380:
	call	LFPC_RERAISE$stub
Lj305:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj390
	jmp	Lj391
Lj390:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj392
	jmp	Lj393
Lj392:
	movl	$12,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$stub
	jmp	Lj396
Lj393:
	movl	-24(%ebp),%eax
	movl	%eax,-228(%ebp)
	movl	$11,-232(%ebp)
	leal	-232(%ebp),%edx
	movl	$0,%ecx
	movl	$13,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj396:
Lj391:
Lj298:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj299
	call	LFPC_RERAISE$stub
Lj299:
	movl	-240(%ebp),%ebx
	movl	-236(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-180(%ebp)
	movl	%esi,-176(%ebp)
	call	Lj410
Lj410:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj411
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	leal	-84(%ebp),%edx
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-84(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj426
	jmp	Lj425
Lj426:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj424
	jmp	Lj425
Lj424:
	leal	-12(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj425:
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj410(%ebx),%eax
	movl	(%eax),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	L_$FPIMAGE$_Ld33$non_lazy_ptr-Lj410(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj444
	.align 2
Lj443:
	movl	-20(%ebp),%edx
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj410(%ebx),%eax
	movl	(%eax),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA$stub
	movl	%eax,-36(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-36(%ebp),%eax
	movl	4(%eax),%edx
	leal	-88(%ebp),%eax
	movl	L_$FPIMAGE$_Ld33$non_lazy_ptr-Lj410(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj452
	jmp	Lj453
Lj452:
	leal	-100(%ebp),%ecx
	leal	-124(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj470
	movl	-36(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj476
	jmp	Lj477
Lj476:
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	-28(%ebp),%ecx
	call	*104(%ecx)
	movl	%eax,-32(%ebp)
	leal	-140(%ebp),%ecx
	leal	-164(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-168(%ebp)
	testl	%eax,%eax
	jne	Lj484
	movl	-32(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING$TFPCUSTOMIMAGEREADER$stub
Lj484:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-168(%ebp),%eax
	testl	%eax,%eax
	je	Lj485
	decl	%eax
	testl	%eax,%eax
	je	Lj486
Lj486:
	call	LFPC_RERAISE$stub
Lj485:
	jmp	Lj466
Lj477:
Lj470:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj472
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj410(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj498
	movl	%eax,-132(%ebp)
	leal	-144(%ebp),%ecx
	leal	-168(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-172(%ebp)
	testl	%eax,%eax
	jne	Lj499
	movl	-132(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,-40(%ebp)
Lj499:
	call	LFPC_POPADDRSTACK$stub
	movl	-172(%ebp),%eax
	testl	%eax,%eax
	je	Lj505
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj505:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj472
Lj498:
	call	LFPC_RERAISE$stub
Lj466:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	jmp	Lj445
Lj472:
Lj453:
	decl	-20(%ebp)
Lj444:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj443
	jmp	Lj445
Lj445:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj506
	jmp	Lj507
Lj506:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj508
	jmp	Lj509
Lj508:
	movw	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj410(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-24(%ebp)
	leal	-172(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj520
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$stub
Lj520:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj521
	decl	%eax
	testl	%eax,%eax
	je	Lj522
Lj522:
	call	LFPC_RERAISE$stub
Lj521:
Lj509:
	jmp	Lj530
Lj507:
	movl	-40(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	$0,%ecx
	movl	$13,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj530:
Lj411:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-40(%ebp)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj412
	call	LFPC_RERAISE$stub
Lj412:
	movl	-180(%ebp),%ebx
	movl	-176(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__SETHEIGHT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj557
	jmp	Lj558
Lj557:
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
Lj558:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__SETWIDTH$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj567
	jmp	Lj568
Lj567:
	movl	-8(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
Lj568:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRAVALUE$LONGINT$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRAVALUE$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	call	Lj582
Lj582:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj583
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-16(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj598
	jmp	Lj599
Lj598:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%ecx
	leal	-64(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-64(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	jmp	Lj620
Lj599:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj582(%esi),%eax
	movl	28(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$11,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$0,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj620:
Lj583:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj584
	call	LFPC_RERAISE$stub
Lj584:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAVALUE$LONGINT$$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAVALUE$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj635
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-16(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj650
	jmp	Lj651
Lj650:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	jmp	Lj660
Lj651:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj660:
Lj635:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj636
	call	LFPC_RERAISE$stub
Lj636:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRAKEY$LONGINT$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRAKEY$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj671
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-16(%ebp),%edx
	movb	$61,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj686
	jmp	Lj687
Lj686:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj702
Lj687:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj702:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj671:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj672
	call	LFPC_RERAISE$stub
Lj672:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTRINGS_$__SETVALUE$ANSISTRING$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTRINGS_$__GETVALUE$ANSISTRING$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__REMOVEEXTRA$ANSISTRING
_FPIMAGE_TFPCUSTOMIMAGE_$__REMOVEEXTRA$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	20(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*204(%ecx)
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj755
	jmp	Lj756
Lj755:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	20(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj756:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKPALETTEINDEX$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT:
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
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*124(%ebx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	8(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN
_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj861
	jmp	Lj862
Lj861:
	movb	$1,-5(%ebp)
	jmp	Lj863
Lj862:
	movb	$0,-5(%ebp)
Lj863:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj865
Lj865:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj868
	jmp	Lj869
Lj868:
	movb	$1,%al
	jmp	Lj870
Lj869:
	movb	$0,%al
Lj870:
	cmpb	-4(%ebp),%al
	jne	Lj866
	jmp	Lj867
Lj866:
	cmpb	$0,-4(%ebp)
	jne	Lj871
	jmp	Lj872
Lj871:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj865(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	jmp	Lj881
Lj872:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
Lj881:
Lj867:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKPALETTEINDEX$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKPALETTEINDEX$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj887
Lj887:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj888
	jmp	Lj889
Lj888:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	jl	Lj892
	jmp	Lj894
Lj894:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jle	Lj892
	jmp	Lj893
Lj892:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj887(%ebx),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj893:
	jmp	Lj903
Lj889:
	movl	$15,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$stub
Lj903:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT
_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj907
Lj907:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj908
	jmp	Lj910
Lj910:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj908
	jmp	Lj909
Lj908:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj907(%ebx),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-28(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj909:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj917
	jmp	Lj919
Lj919:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj917
	jmp	Lj918
Lj917:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj907(%ebx),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-28(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj918:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj928
	jmp	Lj929
Lj928:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movb	20(%ebp),%al
	movb	%al,12(%esp)
	movb	24(%ebp),%al
	movb	%al,16(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	12(%ebx),%ebx
	call	*%ebx
Lj929:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj947
Lj947:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPIMAGE_TFPCUSTOMIMAGE$non_lazy_ptr-Lj947(%edi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj948
	jmp	Lj949
Lj948:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	20(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	movb	%al,%dl
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj972
	jmp	Lj973
Lj972:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
Lj973:
	movl	-12(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj990
	jmp	Lj991
Lj990:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj995
	decl	-16(%ebp)
	.align 2
Lj996:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj998
	decl	-20(%ebp)
	.align 2
Lj999:
	incl	-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-20(%ebp),%esi
	jg	Lj999
Lj998:
	cmpl	-16(%ebp),%ebx
	jg	Lj996
Lj995:
	jmp	Lj1014
Lj991:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1016
	decl	-16(%ebp)
	.align 2
Lj1017:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1019
	decl	-20(%ebp)
	.align 2
Lj1020:
	incl	-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-20(%ebp),%esi
	jg	Lj1020
Lj1019:
	cmpl	-16(%ebp),%ebx
	jg	Lj1017
Lj1016:
Lj1014:
	jmp	Lj1035
Lj949:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub
Lj1035:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__CREATE$LONGINT$LONGINT$$TFPMEMORYIMAGE
_FPIMAGE_TFPMEMORYIMAGE_$__CREATE$LONGINT$LONGINT$$TFPMEMORYIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1042
	jmp	Lj1043
Lj1042:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1043:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1048
	jmp	Lj1049
Lj1048:
	jmp	Lj1040
Lj1049:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1052
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1056
	movl	-12(%ebp),%eax
	movl	$0,36(%eax)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
	movl	-12(%ebp),%eax
	movb	$0,%dl
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
Lj1056:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1057
	call	LFPC_RERAISE$stub
Lj1057:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1075
	jmp	Lj1074
Lj1075:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1073
	jmp	Lj1074
Lj1073:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1074:
Lj1052:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1054
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1079
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1080
	jmp	Lj1081
Lj1080:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1081:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1079:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1078
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1078:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1054
Lj1054:
Lj1040:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__DESTROY
_FPIMAGE_TFPMEMORYIMAGE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1088
	jmp	Lj1089
Lj1088:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1089:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj1092
	jmp	Lj1093
Lj1092:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1093:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1102
	jmp	Lj1101
Lj1102:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1100
	jmp	Lj1101
Lj1100:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1101:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPMEMORYIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj1107
	jmp	Lj1108
Lj1107:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1117
Lj1108:
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	(%ecx,%eax,8),%edx
	movl	%edx,-20(%ebp)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,-16(%ebp)
Lj1117:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPMEMORYIMAGE_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPMEMORYIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj1126
	jmp	Lj1127
Lj1126:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj1136
Lj1127:
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	8(%ebp),%ebx
	movl	(%ebx),%edx
	movl	%edx,(%ecx,%eax,8)
	movl	4(%ebx),%edx
	movl	%edx,4(%ecx,%eax,8)
Lj1136:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPMEMORYIMAGE_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	8(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_LOWEST$LONGINT$LONGINT$$LONGINT
_FPIMAGE_LOWEST$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj1145
	jmp	Lj1146
Lj1145:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1149
Lj1146:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1149:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPMEMORYIMAGE_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1154
	jmp	Lj1156
Lj1156:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj1154
	jmp	Lj1155
Lj1154:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%ecx
	movl	32(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj1161
	jmp	Lj1162
Lj1161:
	movl	-24(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1165
Lj1162:
	movl	-24(%ebp),%eax
	shll	$3,%eax
	movl	%eax,-24(%ebp)
Lj1165:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1168
	jmp	Lj1169
Lj1168:
	movl	$0,-32(%ebp)
	jmp	Lj1172
Lj1169:
	movl	-24(%ebp),%edx
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	-32(%ebp),%eax
	movw	$0,%cx
	call	L_SYSTEM_FILLWORD$formal$LONGINT$WORD$stub
Lj1172:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1186
	jmp	Lj1184
Lj1186:
	movl	-12(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj1185
	jmp	Lj1184
Lj1185:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1183
	jmp	Lj1184
Lj1183:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1187
	jmp	Lj1188
Lj1187:
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_LOWEST$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FPIMAGE_LOWEST$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1202
	decl	-24(%ebp)
	.align 2
Lj1203:
	incl	-24(%ebp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-24(%ebp),%edx
	imull	%edx,%eax
	leal	(%ecx,%eax,4),%eax
	movl	-32(%ebp),%esi
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%ecx
	imull	%ecx,%edx
	leal	(%esi,%edx,4),%edx
	movl	-16(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	cmpl	-24(%ebp),%ebx
	jg	Lj1203
Lj1202:
Lj1188:
Lj1184:
	movl	-12(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj1210
	jmp	Lj1211
Lj1210:
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1211:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,36(%eax)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj1155:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPMEMORYIMAGE_$__SETUSEPALETTE$BOOLEAN
_FPIMAGE_TFPMEMORYIMAGE_$__SETUSEPALETTE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj1223
Lj1223:
	popl	%edi
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj1226
	jmp	Lj1227
Lj1226:
	movb	$1,%al
	jmp	Lj1228
Lj1227:
	movb	$0,%al
Lj1228:
	cmpb	-4(%ebp),%al
	jne	Lj1224
	jmp	Lj1225
Lj1224:
	cmpb	$0,-4(%ebp)
	jne	Lj1229
	jmp	Lj1230
Lj1229:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj1223(%edi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj1239
	jmp	Lj1240
Lj1239:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	32(%eax),%edx
	movl	28(%ecx),%eax
	imull	%eax,%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	leal	36(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1248
	decl	-20(%ebp)
	.align 2
Lj1249:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1251
	decl	-24(%ebp)
	.align 2
Lj1252:
	incl	-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-20(%ebp),%ecx
	imull	%ecx,%eax
	movl	-24(%ebp),%ecx
	addl	%ecx,%eax
	leal	(%edx,%eax,8),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-24(%ebp),%esi
	jg	Lj1252
Lj1251:
	cmpl	-20(%ebp),%ebx
	jg	Lj1249
Lj1248:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1240:
	jmp	Lj1263
Lj1230:
	movl	-8(%ebp),%eax
	cmpl	$0,36(%eax)
	jne	Lj1264
	jmp	Lj1265
Lj1264:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	32(%eax),%edx
	movl	28(%ecx),%eax
	imull	%eax,%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	leal	36(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj1273
	decl	-20(%ebp)
	.align 2
Lj1274:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj1276
	decl	-24(%ebp)
	.align 2
Lj1277:
	incl	-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-20(%ebp),%ecx
	imull	%ecx,%eax
	movl	-24(%ebp),%ecx
	addl	%ecx,%eax
	movl	(%edx,%eax,4),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-24(%ebp),%esi
	jg	Lj1277
Lj1276:
	cmpl	-20(%ebp),%ebx
	jg	Lj1274
Lj1273:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1265:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
Lj1263:
Lj1225:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__CREATE$$TIMAGEHANDLERSMANAGER
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__CREATE$$TIMAGEHANDLERSMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1297
Lj1297:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1298
	jmp	Lj1299
Lj1298:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1299:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1304
	jmp	Lj1305
Lj1304:
	jmp	Lj1296
Lj1305:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1308
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1312
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1297(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
Lj1312:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1313
	call	LFPC_RERAISE$stub
Lj1313:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1327
	jmp	Lj1326
Lj1327:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1325
	jmp	Lj1326
Lj1325:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1326:
Lj1308:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1310
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1331
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1332
	jmp	Lj1333
Lj1332:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1333:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1331:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1330
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1330:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1310
Lj1310:
Lj1296:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__DESTROY
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1340
	jmp	Lj1341
Lj1340:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1341:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj1345
	incl	-12(%ebp)
	.align 2
Lj1346:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-12(%ebp)
	jg	Lj1346
Lj1345:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1365
	jmp	Lj1364
Lj1365:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1363
	jmp	Lj1364
Lj1363:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1364:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING
_FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1370
	movl	-4(%ebp),%edx
	movb	$59,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1379
	jmp	Lj1380
Lj1379:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1383
Lj1380:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
Lj1383:
Lj1370:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1371
	call	LFPC_RERAISE$stub
Lj1371:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEHANDLERS$crcE22684A8
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEHANDLERS$crcE22684A8:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1393
Lj1393:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1394
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1403
	jmp	Lj1404
Lj1403:
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$8,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj1404:
	movl	L_VMT_FPIMAGE_TIHDATA$non_lazy_ptr-Lj1393(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%esi)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,4(%esi)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,12(%esi)
	movl	-16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1394:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1395
	call	LFPC_RERAISE$stub
Lj1395:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1440
Lj1440:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1441
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1450
	jmp	Lj1451
Lj1450:
	movl	-16(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj1452
	jmp	Lj1453
Lj1452:
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$9,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
	jmp	Lj1460
Lj1453:
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
Lj1460:
	jmp	Lj1463
Lj1451:
	movl	L_VMT_FPIMAGE_TIHDATA$non_lazy_ptr-Lj1440(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%esi)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,4(%esi)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,12(%esi)
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-16(%ebp),%eax
	movl	$0,20(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1463:
Lj1441:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1442
	call	LFPC_RERAISE$stub
Lj1442:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1493
Lj1493:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1494
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1503
	jmp	Lj1504
Lj1503:
	movl	-16(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj1505
	jmp	Lj1506
Lj1505:
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	$0,%ecx
	movl	$10,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
	jmp	Lj1513
Lj1506:
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
Lj1513:
	jmp	Lj1516
Lj1504:
	movl	L_VMT_FPIMAGE_TIHDATA$non_lazy_ptr-Lj1493(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,8(%esi)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,4(%esi)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,12(%esi)
	movl	-16(%ebp),%eax
	movl	$0,16(%eax)
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1516:
Lj1494:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1495
	call	LFPC_RERAISE$stub
Lj1495:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	.align 2
Lj1557:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1559
	jmp	Lj1560
Lj1560:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1559
	jmp	Lj1557
Lj1559:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1569
	jmp	Lj1570
Lj1569:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1577
Lj1570:
	movl	$0,-12(%ebp)
Lj1577:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1584
	jmp	Lj1583
Lj1584:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jg	Lj1582
	jmp	Lj1583
Lj1582:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1593
Lj1583:
	movl	$0,-12(%ebp)
Lj1593:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETTYPENAME$LONGINT$$ANSISTRING
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETTYPENAME$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETREADER$ANSISTRING$$TFPCUSTOMIMAGEREADERCLASS
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETREADER$ANSISTRING$$TFPCUSTOMIMAGEREADERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1614
	jmp	Lj1615
Lj1614:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1618
Lj1615:
	movl	$0,-12(%ebp)
Lj1618:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETWRITER$ANSISTRING$$TFPCUSTOMIMAGEWRITERCLASS
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETWRITER$ANSISTRING$$TFPCUSTOMIMAGEWRITERCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1629
	jmp	Lj1630
Lj1629:
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1633
Lj1630:
	movl	$0,-12(%ebp)
Lj1633:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETEXT$ANSISTRING$$ANSISTRING
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETEXT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1644
	jmp	Lj1645
Lj1644:
	movl	-16(%ebp),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj1648
Lj1645:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj1648:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDEFEXT$ANSISTRING$$ANSISTRING
_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDEFEXT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1659
	jmp	Lj1660
Lj1659:
	movl	-16(%ebp),%esi
	movl	12(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj1663
Lj1660:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
Lj1663:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1668
	jmp	Lj1669
Lj1668:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1669:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1674
	jmp	Lj1675
Lj1674:
	jmp	Lj1666
Lj1675:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1678
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1682
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
Lj1682:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1683
	call	LFPC_RERAISE$stub
Lj1683:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1691
	jmp	Lj1690
Lj1691:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1689
	jmp	Lj1690
Lj1689:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1690:
Lj1678:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1680
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1695
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1696
	jmp	Lj1697
Lj1696:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1697:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1695:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1694
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1694:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1680
Lj1680:
Lj1666:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1704
	jmp	Lj1705
Lj1704:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movb	20(%ebp),%al
	movb	%al,12(%esp)
	movb	-8(%ebp),%al
	movb	%al,16(%esp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
	jmp	Lj1722
Lj1705:
	movl	-12(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj1723
	jmp	Lj1724
Lj1723:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movb	20(%ebp),%al
	movb	%al,12(%esp)
	movb	-8(%ebp),%al
	movb	%al,16(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	16(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj1724:
Lj1722:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1742
Lj1742:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1743
	jmp	Lj1744
Lj1743:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1744:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1749
	jmp	Lj1750
Lj1749:
	jmp	Lj1741
Lj1750:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1753
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1757
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub
	movl	-8(%ebp),%edx
	movl	L_VMT_FPIMAGE_TFPMEMORYIMAGE$non_lazy_ptr-Lj1742(%ebx),%eax
	movl	%eax,20(%edx)
Lj1757:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1758
	call	LFPC_RERAISE$stub
Lj1758:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1768
	jmp	Lj1767
Lj1768:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1766
	jmp	Lj1767
Lj1766:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1767:
Lj1753:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1755
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1772
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1773
	jmp	Lj1774
Lj1773:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1774:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1772:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1771
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1771:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1755
Lj1755:
Lj1741:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGEREADER_$__IMAGEREAD$TSTREAM$TFPCUSTOMIMAGE$$TFPCUSTOMIMAGE
_FPIMAGE_TFPCUSTOMIMAGEREADER_$__IMAGEREAD$TSTREAM$TFPCUSTOMIMAGE$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj1780
Lj1780:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1781
	cmpl	$0,-4(%ebp)
	jne	Lj1786
	jmp	Lj1785
Lj1785:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj1780(%ebx),%eax
	movl	12(%eax),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj1780(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj1780(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1786:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	cmpl	$0,-8(%ebp)
	jne	Lj1796
	jmp	Lj1795
Lj1795:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	-12(%ebp),%esi
	movl	20(%esi),%esi
	call	*144(%esi)
	movl	%eax,-16(%ebp)
	jmp	Lj1807
Lj1796:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1807:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1812
	jmp	Lj1813
Lj1812:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movl	16(%edx),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj1813:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CHECKCONTENTS$TSTREAM$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1818
	jmp	Lj1819
Lj1818:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*108(%esi)
	jmp	Lj1830
Lj1819:
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj1780(%ebx),%edx
	movl	L_$FPIMAGE$_Ld35$non_lazy_ptr-Lj1780(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj1780(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1830:
Lj1781:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1782
	decl	%eax
	testl	%eax,%eax
	je	Lj1783
Lj1783:
	call	LFPC_RERAISE$stub
Lj1782:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CHECKCONTENTS$TSTREAM$$BOOLEAN
_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CHECKCONTENTS$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1842
Lj1842:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1843
	jmp	Lj1844
Lj1843:
	movb	$1,-10(%ebp)
	jmp	Lj1845
Lj1844:
	movb	$0,-10(%ebp)
Lj1845:
	cmpl	$0,-4(%ebp)
	jne	Lj1847
	jmp	Lj1846
Lj1846:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj1842(%ebx),%eax
	movl	12(%eax),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj1842(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj1842(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1847:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1854
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movb	%al,-9(%ebp)
Lj1854:
	call	LFPC_POPADDRSTACK$stub
	movb	-10(%ebp),%al
	testb	%al,%al
	je	Lj1866
	jmp	Lj1867
Lj1866:
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
Lj1867:
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1855
	decl	%eax
	testl	%eax,%eax
	je	Lj1856
Lj1856:
	call	LFPC_RERAISE$stub
Lj1855:
	movb	-9(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCUSTOMIMAGEWRITER_$__IMAGEWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPIMAGE_TFPCUSTOMIMAGEWRITER_$__IMAGEWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj1871
Lj1871:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj1873
	jmp	Lj1872
Lj1872:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj1871(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj1871(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1871(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1873:
	cmpl	$0,-4(%ebp)
	jne	Lj1881
	jmp	Lj1880
Lj1880:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj1871(%ebx),%eax
	movl	12(%eax),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj1871(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj1871(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1881:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1888
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,16(%edx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*108(%esi)
Lj1888:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1889
	decl	%eax
	testl	%eax,%eax
	je	Lj1890
Lj1890:
	call	LFPC_RERAISE$stub
Lj1889:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE
_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1916
	jmp	Lj1917
Lj1916:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1917:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1922
	jmp	Lj1923
Lj1922:
	jmp	Lj1914
Lj1923:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1926
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1930
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1937
	jmp	Lj1938
Lj1937:
	movl	-4(%ebp),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	jmp	Lj1943
Lj1938:
	movl	-12(%ebp),%eax
	movl	$0,4(%eax)
Lj1943:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj1930:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1931
	call	LFPC_RERAISE$stub
Lj1931:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1954
	jmp	Lj1953
Lj1954:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1952
	jmp	Lj1953
Lj1952:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1953:
Lj1926:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1928
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1958
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1959
	jmp	Lj1960
Lj1959:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1960:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1958:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1957
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1957:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1928
Lj1928:
Lj1914:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__DESTROY
_FPIMAGE_TFPPALETTE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1967
	jmp	Lj1968
Lj1967:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1968:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jg	Lj1971
	jmp	Lj1972
Lj1971:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj1972:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1981
	jmp	Lj1980
Lj1981:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1979
	jmp	Lj1980
Lj1979:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1980:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__BUILD$TFPCUSTOMIMAGE
_FPIMAGE_TFPPALETTE_$__BUILD$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj1986
	jmp	Lj1987
Lj1986:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1993
	decl	-12(%ebp)
	.align 2
Lj1994:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1996
	decl	-16(%ebp)
	.align 2
Lj1997:
	incl	-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	cmpl	-16(%ebp),%esi
	jg	Lj1997
Lj1996:
	cmpl	-12(%ebp),%ebx
	jg	Lj1994
Lj1993:
Lj1987:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__COPY$TFPPALETTE
_FPIMAGE_TFPPALETTE_$__COPY$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj2010
	jmp	Lj2011
Lj2010:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2015
	decl	-12(%ebp)
	.align 2
Lj2016:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj2016
Lj2015:
Lj2011:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__MERGE$TFPPALETTE
_FPIMAGE_TFPPALETTE_$__MERGE$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2030
	decl	-12(%ebp)
	.align 2
Lj2031:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	cmpl	-12(%ebp),%ebx
	jg	Lj2031
Lj2030:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__CHECKINDEX$LONGINT
_FPIMAGE_TFPPALETTE_$__CHECKINDEX$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2043
Lj2043:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj2044
	jmp	Lj2046
Lj2046:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2044
	jmp	Lj2045
Lj2044:
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj2043(%ebx),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub
Lj2045:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__ADD$TFPCOLOR$$LONGINT
_FPIMAGE_TFPPALETTE_$__ADD$TFPCOLOR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	incl	8(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	12(%edx),%eax
	jg	Lj2057
	jmp	Lj2058
Lj2057:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
Lj2058:
	movl	-8(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ebx,%ecx,8)
	movl	4(%edx),%eax
	movl	%eax,4(%ebx,%ecx,8)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__SETCOLOR$LONGINT$TFPCOLOR
_FPIMAGE_TFPPALETTE_$__SETCOLOR$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj2065
	jmp	Lj2066
Lj2065:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	jmp	Lj2071
Lj2066:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*108(%ecx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%ebx,%ecx,8)
	movl	4(%edx),%eax
	movl	%eax,4(%ebx,%ecx,8)
Lj2071:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR:
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
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	(%edx,%ecx,8),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx,%ecx,8),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT
_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__ENLARGEDATA
_FPIMAGE_TFPPALETTE_$__ENLARGEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$16,%eax
	jle	Lj2094
	jmp	Lj2095
Lj2094:
	movl	-4(%ebp),%eax
	movl	$32,12(%eax)
	jmp	Lj2098
Lj2095:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$128,%eax
	jle	Lj2099
	jmp	Lj2100
Lj2099:
	movl	-4(%ebp),%eax
	movl	$256,12(%eax)
	jmp	Lj2103
Lj2100:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	addl	%eax,12(%edx)
Lj2103:
Lj2098:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	shll	$3,%edx
	leal	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2108
	jmp	Lj2109
Lj2108:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	shll	$3,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj2109:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__SETCOUNT$LONGINT
_FPIMAGE_TFPPALETTE_$__SETCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2121
Lj2121:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2122
	jmp	Lj2123
Lj2122:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj2124
	jmp	Lj2125
Lj2124:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	$8,%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj2125:
	movl	-4(%ebp),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj2133
	decl	-12(%ebp)
	.align 2
Lj2134:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	4(%edx),%ecx
	movl	-12(%ebp),%esi
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj2121(%ebx),%edx
	movl	(%edx),%edx
	movl	%edx,(%ecx,%esi,8)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj2121(%ebx),%edx
	movl	4(%edx),%edx
	movl	%edx,4(%ecx,%esi,8)
	cmpl	-12(%ebp),%eax
	jg	Lj2134
Lj2133:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
Lj2123:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__SETCAPACITY$LONGINT
_FPIMAGE_TFPPALETTE_$__SETCAPACITY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2140
Lj2140:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jg	Lj2141
	jmp	Lj2142
Lj2141:
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-4(%ebp)
Lj2142:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj2149
	jmp	Lj2150
Lj2149:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj2150:
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jl	Lj2157
	jmp	Lj2158
Lj2157:
	movl	-4(%ebp),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj2162
	decl	-12(%ebp)
	.align 2
Lj2163:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	4(%edx),%ecx
	movl	-12(%ebp),%esi
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj2140(%ebx),%edx
	movl	(%edx),%edx
	movl	%edx,(%ecx,%esi,8)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj2140(%ebx),%edx
	movl	4(%edx),%edx
	movl	%edx,4(%ecx,%esi,8)
	cmpl	-12(%ebp),%eax
	jg	Lj2163
Lj2162:
Lj2158:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__INDEXOF$TFPCOLOR$$LONGINT
_FPIMAGE_TFPPALETTE_$__INDEXOF$TFPCOLOR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	.align 2
Lj2170:
	decl	-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2172
	jmp	Lj2173
Lj2173:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,8),%eax
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2172
	jmp	Lj2170
Lj2172:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2178
	jmp	Lj2179
Lj2178:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
	movl	%eax,-12(%ebp)
Lj2179:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPPALETTE_$__CLEAR
_FPIMAGE_TFPPALETTE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATEBLACKANDWHITEPALETTE$$TFPPALETTE
_FPIMAGE_CREATEBLACKANDWHITEPALETTE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj2193
Lj2193:
	popl	%ebx
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj2193(%ebx),%edx
	movl	$2,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-8(%ebp)
	movw	$65535,-10(%ebp)
	movw	$65535,-16(%ebp)
	movw	$65535,-14(%ebp)
	movw	$65535,-12(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movw	$0,-16(%ebp)
	movw	$0,-14(%ebp)
	movw	$0,-12(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATEWEBSAFEPALETTE$$TFPPALETTE
_FPIMAGE_CREATEWEBSAFEPALETTE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj2231
Lj2231:
	popl	%ebx
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj2231(%ebx),%edx
	movl	$216,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-20(%ebp)
	movw	$65535,-6(%ebp)
	movl	$0,-16(%ebp)
	movw	$65535,-12(%ebp)
	jmp	Lj2247
	.align 2
Lj2246:
	movw	$65535,-10(%ebp)
	jmp	Lj2252
	.align 2
Lj2251:
	movw	$65535,-8(%ebp)
	jmp	Lj2257
	.align 2
Lj2256:
	leal	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2265
	jmp	Lj2266
Lj2265:
	jmp	Lj2258
Lj2266:
	subw	$13107,-8(%ebp)
Lj2257:
	jmp	Lj2256
Lj2258:
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	je	Lj2267
	jmp	Lj2268
Lj2267:
	jmp	Lj2253
Lj2268:
	subw	$13107,-10(%ebp)
Lj2252:
	jmp	Lj2251
Lj2253:
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2269
	jmp	Lj2270
Lj2269:
	jmp	Lj2248
Lj2270:
	subw	$13107,-12(%ebp)
Lj2247:
	jmp	Lj2246
Lj2248:
	movl	-20(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATEGRAYSCALEPALETTE$$TFPPALETTE
_FPIMAGE_CREATEGRAYSCALEPALETTE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj2274
Lj2274:
	popl	%ebx
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj2274(%ebx),%edx
	movl	$256,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-20(%ebp)
	movw	$65535,-6(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj2287:
	incl	-16(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-12(%ebp)
	movzwl	-12(%ebp),%eax
	shll	$8,%eax
	movzwl	-12(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-12(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-8(%ebp)
	leal	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	cmpl	$255,-16(%ebp)
	jl	Lj2287
	movl	-20(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATEVGAPALETTE$$TFPPALETTE
_FPIMAGE_CREATEVGAPALETTE$$TFPPALETTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj2305
Lj2305:
	popl	%ebx
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj2305(%ebx),%edx
	movl	$16,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-8(%ebp)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLNAVY$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLBLUE$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$2,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLMAROON$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$3,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLPURPLE$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLDKGREEN$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$5,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLRED$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$6,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLTEAL$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$7,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLFUCHSIA$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$8,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLOLIVE$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$9,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLGRAY$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$10,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLLIME$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$11,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLAQUA$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$12,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLSILVER$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$13,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLYELLOW$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$14,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj2305(%ebx),%ecx
	movl	-8(%ebp),%eax
	movl	$15,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD
_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj2413
Lj2413:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr-Lj2413(%edx),%eax
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr-Lj2413(%edx),%eax
	flds	4(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	movl	L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr-Lj2413(%edx),%eax
	flds	8(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-24(%ebp)
	fwait
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$65535,%eax
	ja	Lj2416
	jmp	Lj2417
Lj2416:
	movw	$65535,-6(%ebp)
	jmp	Lj2420
Lj2417:
	movw	-12(%ebp),%ax
	movw	%ax,-6(%ebp)
Lj2420:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_ALPHABLEND$TFPCOLOR$TFPCOLOR$$TFPCOLOR
_FPIMAGE_ALPHABLEND$TFPCOLOR$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	call	Lj2424
Lj2424:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-36(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-32(%ebp)
	movw	-30(%ebp),%ax
	cmpw	$65535,%ax
	je	Lj2425
	jmp	Lj2426
Lj2425:
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2429
Lj2426:
	movzwl	-30(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	movl	L_$FPIMAGE$_Ld37$non_lazy_ptr-Lj2424(%ecx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fld1
	fsubp	%st,%st(1)
	movzwl	-22(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	movl	L_$FPIMAGE$_Ld37$non_lazy_ptr-Lj2424(%ecx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fmulp	%st,%st(1)
	fstps	-20(%ebp)
	movzwl	-36(%ebp),%edx
	movzwl	-30(%ebp),%eax
	mull	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$0,-44(%ebp)
	fildq	-48(%ebp)
	movl	L_$FPIMAGE$_Ld37$non_lazy_ptr-Lj2424(%ecx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movzwl	-28(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-8(%ebp)
	fwait
	movw	-8(%ebp),%ax
	movw	%ax,-16(%ebp)
	movzwl	-34(%ebp),%edx
	movzwl	-30(%ebp),%eax
	mull	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-52(%ebp)
	fildq	-56(%ebp)
	movl	L_$FPIMAGE$_Ld37$non_lazy_ptr-Lj2424(%ecx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movzwl	-26(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-8(%ebp)
	fwait
	movw	-8(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-32(%ebp),%edx
	movzwl	-30(%ebp),%eax
	mull	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-60(%ebp)
	fildq	-64(%ebp)
	movl	L_$FPIMAGE$_Ld37$non_lazy_ptr-Lj2424(%ecx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	movzwl	-24(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-8(%ebp)
	fwait
	movw	-8(%ebp),%ax
	movw	%ax,-12(%ebp)
	movzwl	-30(%ebp),%eax
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	movl	L_$FPIMAGE$_Ld38$non_lazy_ptr-Lj2424(%ecx),%eax
	flds	(%eax)
	flds	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-8(%ebp)
	fwait
	movw	-8(%ebp),%ax
	movw	%ax,-10(%ebp)
Lj2429:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_COMPARECOLORS$TFPCOLOR$TFPCOLOR$$LONGINT
_FPIMAGE_COMPARECOLORS$TFPCOLOR$TFPCOLOR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2444
	jmp	Lj2445
Lj2444:
	jmp	Lj2440
Lj2445:
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	2(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2448
	jmp	Lj2449
Lj2448:
	jmp	Lj2440
Lj2449:
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	4(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2452
	jmp	Lj2453
Lj2452:
	jmp	Lj2440
Lj2453:
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	6(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj2440:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC
_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movl	8(%ebp),%edx
	movw	-8(%ebp),%ax
	movw	%ax,2(%edx)
	movl	8(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,4(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_GETFPCOMPACTIMGCLASS$TFPCOMPACTIMGDESC$$TFPCOMPACTIMGBASECLASS
_FPIMAGE_GETFPCOMPACTIMGCLASS$TFPCOMPACTIMGDESC$$TFPCOMPACTIMGBASECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2465
Lj2465:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,(%eax)
	jne	Lj2466
	jmp	Lj2467
Lj2466:
	movl	-4(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2468
	jmp	Lj2469
Lj2468:
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	cmpl	$8,%eax
	jle	Lj2470
	jmp	Lj2471
Lj2470:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2474
Lj2471:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
Lj2474:
	jmp	Lj2477
Lj2469:
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	cmpl	$8,%eax
	jle	Lj2478
	jmp	Lj2479
Lj2478:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2482
Lj2479:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
Lj2482:
Lj2477:
	jmp	Lj2485
Lj2467:
	movl	-4(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj2486
	jmp	Lj2487
Lj2486:
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	cmpl	$8,%eax
	jle	Lj2488
	jmp	Lj2489
Lj2488:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2492
Lj2489:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
Lj2492:
	jmp	Lj2495
Lj2487:
	movl	-4(%ebp),%eax
	movzwl	2(%eax),%eax
	cmpl	$8,%eax
	jle	Lj2496
	jmp	Lj2497
Lj2496:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGRGB8BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj2500
Lj2497:
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGRGB16BIT$non_lazy_ptr-Lj2465(%edx),%eax
	movl	%eax,-8(%ebp)
Lj2500:
Lj2495:
Lj2485:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE
_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_GETFPCOMPACTIMGCLASS$TFPCOMPACTIMGDESC$$TFPCOMPACTIMGBASECLASS$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	-20(%ebp),%ebx
	call	*144(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATECOMPATIBLEFPCOMPACTIMG$TFPCUSTOMIMAGE$LONGINT$LONGINT$$TFPCUSTOMIMAGE
_FPIMAGE_CREATECOMPATIBLEFPCOMPACTIMG$TFPCUSTOMIMAGE$LONGINT$LONGINT$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2520
Lj2520:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGBASE$non_lazy_ptr-Lj2520(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2521
	jmp	Lj2522
Lj2521:
	movl	-4(%ebp),%eax
	leal	36(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
	movl	%eax,-16(%ebp)
	jmp	Lj2535
Lj2522:
	leal	-22(%ebp),%ecx
	movl	-4(%ebp),%eax
	movw	$4,%dx
	call	L_FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC$stub
	leal	-22(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
	movl	%eax,-16(%ebp)
Lj2535:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_CREATECOMPATIBLEFPCOMPACTIMGWITHALPHA$TFPCUSTOMIMAGE$LONGINT$LONGINT$$TFPCUSTOMIMAGE
_FPIMAGE_CREATECOMPATIBLEFPCOMPACTIMGWITHALPHA$TFPCUSTOMIMAGE$LONGINT$LONGINT$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj2551
Lj2551:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGBASE$non_lazy_ptr-Lj2551(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2552
	jmp	Lj2553
Lj2552:
	movl	-4(%ebp),%edx
	movl	36(%edx),%eax
	movl	%eax,-22(%ebp)
	movw	40(%edx),%ax
	movw	%ax,-18(%ebp)
	jmp	Lj2560
Lj2553:
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movw	$4,%dx
	call	L_FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC$stub
	movl	-28(%ebp),%eax
	movl	%eax,-22(%ebp)
	movw	-24(%ebp),%ax
	movw	%ax,-18(%ebp)
Lj2560:
	movb	$1,-18(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	leal	-22(%ebp),%eax
	call	L_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC
_FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	call	Lj2580
Lj2580:
	popl	%edi
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$1,-17(%ebp)
	movb	$1,-18(%ebp)
	movzwl	-8(%ebp),%eax
	cmpl	$8,%eax
	setlb	-19(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,4(%eax)
	movl	-12(%ebp),%eax
	movb	$1,(%eax)
	movl	-12(%ebp),%eax
	movw	$8,2(%eax)
	movl	-4(%ebp),%edx
	movl	L_VMT_FPIMAGE_TFPCOMPACTIMGBASE$non_lazy_ptr-Lj2580(%edi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2595
	jmp	Lj2596
Lj2595:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	36(%eax),%edx
	movl	%edx,-30(%ebp)
	movw	40(%eax),%ax
	movw	%ax,-26(%ebp)
	movzwl	-28(%ebp),%eax
	cmpl	$8,%eax
	jle	Lj2605
	jmp	Lj2606
Lj2605:
	movb	$0,-19(%ebp)
Lj2606:
	cmpb	$0,-30(%ebp)
	jne	Lj2609
	jmp	Lj2610
Lj2609:
	movb	$0,-17(%ebp)
Lj2610:
	movb	-26(%ebp),%al
	testb	%al,%al
	je	Lj2613
	jmp	Lj2614
Lj2613:
	movb	$0,-18(%ebp)
Lj2614:
Lj2596:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj2620
	jmp	Lj2618
Lj2620:
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj2619
	jmp	Lj2618
Lj2619:
	movb	-19(%ebp),%al
	testb	%al,%al
	je	Lj2617
	jmp	Lj2618
Lj2617:
	jmp	Lj2579
Lj2618:
	movzwl	-8(%ebp),%ecx
	movl	$65535,%eax
	shll	%cl,%eax
	movw	%ax,-50(%ebp)
	movw	-50(%ebp),%ax
	andw	$65535,%ax
	movw	%ax,-52(%ebp)
	movzbw	-50(%ebp),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movzbw	-50(%ebp),%dx
	movzwl	%dx,%edx
	addl	%edx,%eax
	movw	%ax,-16(%ebp)
	movb	$1,-14(%ebp)
	movb	$1,-13(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj2632
	decl	-36(%ebp)
	.align 2
Lj2633:
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%esi
	jl	Lj2635
	decl	-40(%ebp)
	.align 2
Lj2636:
	incl	-40(%ebp)
	movl	-36(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-56(%ebp),%eax
	movl	%eax,-44(%ebp)
	cmpb	$0,-18(%ebp)
	jne	Lj2647
	jmp	Lj2646
Lj2647:
	movw	-42(%ebp),%ax
	movw	-50(%ebp),%dx
	andw	%dx,%ax
	cmpw	-52(%ebp),%ax
	jne	Lj2645
	jmp	Lj2646
Lj2645:
	movb	$0,-18(%ebp)
	movl	-12(%ebp),%eax
	movb	$1,4(%eax)
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj2654
	jmp	Lj2653
Lj2654:
	movb	-19(%ebp),%al
	testb	%al,%al
	je	Lj2652
	jmp	Lj2653
Lj2652:
	jmp	Lj2635
Lj2653:
Lj2646:
	cmpb	$0,-17(%ebp)
	jne	Lj2658
	jmp	Lj2657
Lj2658:
	movw	-48(%ebp),%dx
	movw	-50(%ebp),%ax
	andw	%ax,%dx
	movw	-46(%ebp),%ax
	movw	-50(%ebp),%cx
	andw	%cx,%ax
	cmpw	%ax,%dx
	jne	Lj2655
	jmp	Lj2657
Lj2657:
	movw	-48(%ebp),%dx
	movw	-50(%ebp),%ax
	andw	%ax,%dx
	movw	-44(%ebp),%ax
	movw	-50(%ebp),%cx
	andw	%cx,%ax
	cmpw	%ax,%dx
	jne	Lj2655
	jmp	Lj2656
Lj2655:
	movb	$0,-17(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj2665
	jmp	Lj2664
Lj2665:
	movb	-19(%ebp),%al
	testb	%al,%al
	je	Lj2663
	jmp	Lj2664
Lj2663:
	jmp	Lj2635
Lj2664:
Lj2656:
	cmpb	$0,-19(%ebp)
	jne	Lj2666
	jmp	Lj2667
Lj2666:
	movw	-48(%ebp),%ax
	movw	%ax,-60(%ebp)
	movl	%ebp,-56(%ebp)
	movw	-16(%ebp),%ax
	movw	-60(%ebp),%dx
	andw	%dx,%ax
	movw	%ax,-60(%ebp)
	movb	-60(%ebp),%al
	movb	%al,-57(%ebp)
	cmpb	$0,-14(%ebp)
	jne	Lj2679
	jmp	Lj2678
Lj2679:
	movzbl	-57(%ebp),%eax
	testl	%eax,%eax
	je	Lj2677
	jmp	Lj2678
Lj2677:
	movb	$1,-14(%ebp)
	jmp	Lj2680
Lj2678:
	movb	$0,-14(%ebp)
Lj2680:
	cmpb	$0,-13(%ebp)
	jne	Lj2683
	jmp	Lj2682
Lj2683:
	movzwl	-60(%ebp),%eax
	shrl	$8,%eax
	cmpb	-57(%ebp),%al
	je	Lj2681
	jmp	Lj2682
Lj2681:
	movb	$1,-13(%ebp)
	jmp	Lj2684
Lj2682:
	movb	$0,-13(%ebp)
Lj2684:
	movw	-46(%ebp),%ax
	movw	%ax,-60(%ebp)
	movl	%ebp,-56(%ebp)
	movw	-16(%ebp),%ax
	movw	-60(%ebp),%dx
	andw	%dx,%ax
	movw	%ax,-60(%ebp)
	movb	-60(%ebp),%al
	movb	%al,-57(%ebp)
	cmpb	$0,-14(%ebp)
	jne	Lj2696
	jmp	Lj2695
Lj2696:
	movzbl	-57(%ebp),%eax
	testl	%eax,%eax
	je	Lj2694
	jmp	Lj2695
Lj2694:
	movb	$1,-14(%ebp)
	jmp	Lj2697
Lj2695:
	movb	$0,-14(%ebp)
Lj2697:
	cmpb	$0,-13(%ebp)
	jne	Lj2700
	jmp	Lj2699
Lj2700:
	movzwl	-60(%ebp),%eax
	shrl	$8,%eax
	cmpb	-57(%ebp),%al
	je	Lj2698
	jmp	Lj2699
Lj2698:
	movb	$1,-13(%ebp)
	jmp	Lj2701
Lj2699:
	movb	$0,-13(%ebp)
Lj2701:
	movw	-44(%ebp),%ax
	movw	%ax,-60(%ebp)
	movl	%ebp,-56(%ebp)
	movw	-16(%ebp),%dx
	movw	-60(%ebp),%ax
	andw	%ax,%dx
	movw	%dx,-60(%ebp)
	movb	-60(%ebp),%al
	movb	%al,-57(%ebp)
	cmpb	$0,-14(%ebp)
	jne	Lj2713
	jmp	Lj2712
Lj2713:
	movzbl	-57(%ebp),%eax
	testl	%eax,%eax
	je	Lj2711
	jmp	Lj2712
Lj2711:
	movb	$1,-14(%ebp)
	jmp	Lj2714
Lj2712:
	movb	$0,-14(%ebp)
Lj2714:
	cmpb	$0,-13(%ebp)
	jne	Lj2717
	jmp	Lj2716
Lj2717:
	movzwl	-60(%ebp),%eax
	shrl	$8,%eax
	cmpb	-57(%ebp),%al
	je	Lj2715
	jmp	Lj2716
Lj2715:
	movb	$1,-13(%ebp)
	jmp	Lj2718
Lj2716:
	movb	$0,-13(%ebp)
Lj2718:
	movw	-42(%ebp),%ax
	movw	%ax,-60(%ebp)
	movl	%ebp,-56(%ebp)
	movw	-16(%ebp),%ax
	movw	-60(%ebp),%dx
	andw	%dx,%ax
	movw	%ax,-60(%ebp)
	movb	-60(%ebp),%al
	movb	%al,-57(%ebp)
	cmpb	$0,-14(%ebp)
	jne	Lj2730
	jmp	Lj2729
Lj2730:
	movzbl	-57(%ebp),%eax
	testl	%eax,%eax
	je	Lj2728
	jmp	Lj2729
Lj2728:
	movb	$1,-14(%ebp)
	jmp	Lj2731
Lj2729:
	movb	$0,-14(%ebp)
Lj2731:
	cmpb	$0,-13(%ebp)
	jne	Lj2734
	jmp	Lj2733
Lj2734:
	movzwl	-60(%ebp),%eax
	shrl	$8,%eax
	cmpb	-57(%ebp),%al
	je	Lj2732
	jmp	Lj2733
Lj2732:
	movb	$1,-13(%ebp)
	jmp	Lj2735
Lj2733:
	movb	$0,-13(%ebp)
Lj2735:
	movb	-14(%ebp),%al
	testb	%al,%al
	je	Lj2738
	jmp	Lj2737
Lj2738:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2736
	jmp	Lj2737
Lj2736:
	movb	$0,-19(%ebp)
	movl	-12(%ebp),%eax
	movw	$16,2(%eax)
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj2745
	jmp	Lj2744
Lj2745:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj2743
	jmp	Lj2744
Lj2743:
	jmp	Lj2635
Lj2744:
Lj2737:
Lj2667:
	cmpl	-40(%ebp),%esi
	jg	Lj2636
Lj2635:
	cmpl	-36(%ebp),%ebx
	jg	Lj2633
Lj2632:
Lj2579:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_GETMINIMUMPTDESC$crc0120BF59_NEED16BIT$WORD
_FPIMAGE_GETMINIMUMPTDESC$crc0120BF59_NEED16BIT$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	-16(%eax),%ax
	movw	-4(%ebp),%dx
	andw	%dx,%ax
	movw	%ax,-4(%ebp)
	movb	-4(%ebp),%al
	movb	%al,-9(%ebp)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpb	$0,-14(%eax)
	jne	Lj2752
	jmp	Lj2751
Lj2752:
	movzbl	-9(%ebp),%eax
	testl	%eax,%eax
	je	Lj2750
	jmp	Lj2751
Lj2750:
	movb	$1,-14(%edx)
	jmp	Lj2753
Lj2751:
	movb	$0,-14(%edx)
Lj2753:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	cmpb	$0,-13(%eax)
	jne	Lj2756
	jmp	Lj2755
Lj2756:
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	cmpb	-9(%ebp),%al
	je	Lj2754
	jmp	Lj2755
Lj2754:
	movb	$1,-13(%edx)
	jmp	Lj2757
Lj2755:
	movb	$0,-13(%edx)
Lj2757:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_GETMINIMUMFPCOMPACTIMG$TFPCUSTOMIMAGE$BOOLEAN$WORD$$TFPCUSTOMIMAGE
_FPIMAGE_GETMINIMUMFPCOMPACTIMG$TFPCUSTOMIMAGE$BOOLEAN$WORD$$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-42(%ebp),%ecx
	movw	-12(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC$stub
	movl	-42(%ebp),%eax
	movl	%eax,-22(%ebp)
	movw	-38(%ebp),%ax
	movw	%ax,-18(%ebp)
	leal	-22(%ebp),%eax
	call	L_FPIMAGE_GETFPCOMPACTIMGCLASS$TFPCOMPACTIMGDESC$$TFPCOMPACTIMGBASECLASS$stub
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-28(%ebp),%eax
	je	Lj2772
	jmp	Lj2773
Lj2772:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2758
Lj2773:
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edx
	leal	-22(%ebp),%eax
	call	L_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj2789
	decl	-32(%ebp)
	.align 2
Lj2790:
	incl	-32(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj2792
	decl	-36(%ebp)
	.align 2
Lj2793:
	incl	-36(%ebp)
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-36(%ebp),%esi
	jg	Lj2793
Lj2792:
	cmpl	-32(%ebp),%ebx
	jg	Lj2790
Lj2789:
	cmpb	$0,-8(%ebp)
	jne	Lj2808
	jmp	Lj2809
Lj2808:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj2809:
Lj2758:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_COLORROUND$DOUBLE$$WORD
_FPIMAGE_COLORROUND$DOUBLE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj2813
Lj2813:
	popl	%edx
	movl	L_$FPIMAGE$_Ld39$non_lazy_ptr-Lj2813(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2814
	jmp	Lj2815
Lj2814:
	movw	$65535,-2(%ebp)
	jmp	Lj2818
Lj2815:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2819
	jmp	Lj2820
Lj2819:
	movw	$0,-2(%ebp)
	jmp	Lj2823
Lj2820:
	fldl	8(%ebp)
	fistpq	-12(%ebp)
	fwait
	movw	-12(%ebp),%ax
	movw	%ax,-2(%ebp)
Lj2823:
Lj2818:
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movw	-24(%ebp),%ax
	movw	%ax,-20(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-16(%ebp)
	movw	-22(%ebp),%ax
	movw	%ax,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-16(%ebp)
	movl	8(%ebp),%eax
	movw	6(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAYALPHA16BIT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAYALPHA16BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2854
	jmp	Lj2855
Lj2854:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2855:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2860
	jmp	Lj2861
Lj2860:
	jmp	Lj2852
Lj2861:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2864
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2868
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movw	$16,%dx
	movb	$1,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj2868:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2869
	call	LFPC_RERAISE$stub
Lj2869:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2891
	jmp	Lj2890
Lj2891:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2889
	jmp	Lj2890
Lj2889:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2890:
Lj2864:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2866
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2895
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2896
	jmp	Lj2897
Lj2896:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2897:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2895:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2894
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2894:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2866
Lj2866:
Lj2852:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2904
	jmp	Lj2905
Lj2904:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2905:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2918
	jmp	Lj2917
Lj2918:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2916
	jmp	Lj2917
Lj2916:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2917:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj2925
	jmp	Lj2924
Lj2925:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj2923
	jmp	Lj2924
Lj2923:
	jmp	Lj2921
Lj2924:
	movl	-4(%ebp),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj2921:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	(%ecx,%eax,2),%ax
	movw	%ax,-22(%ebp)
	movzbl	-22(%ebp),%eax
	shll	$8,%eax
	movzbl	-22(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-20(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-16(%ebp)
	movzbl	-21(%ebp),%eax
	shll	$8,%eax
	movzbl	-21(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	shrl	$8,%eax
	movb	%al,-14(%ebp)
	movl	8(%ebp),%eax
	movzwl	6(%eax),%eax
	shrl	$8,%eax
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	-14(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAYALPHA8BIT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAYALPHA8BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2964
	jmp	Lj2965
Lj2964:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2965:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2970
	jmp	Lj2971
Lj2970:
	jmp	Lj2962
Lj2971:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2974
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2978
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movw	$8,%dx
	movb	$1,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj2978:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2979
	call	LFPC_RERAISE$stub
Lj2979:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3001
	jmp	Lj3000
Lj3001:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2999
	jmp	Lj3000
Lj2999:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3000:
Lj2974:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2976
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3005
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3006
	jmp	Lj3007
Lj3006:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3007:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3005:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3004
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3004:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2976
Lj2976:
Lj2962:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3014
	jmp	Lj3015
Lj3014:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3015:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3028
	jmp	Lj3027
Lj3028:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3026
	jmp	Lj3027
Lj3026:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3027:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3035
	jmp	Lj3034
Lj3035:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3033
	jmp	Lj3034
Lj3033:
	jmp	Lj3031
Lj3034:
	movl	-4(%ebp),%edx
	shll	$1,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3031:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	(%ecx,%eax,2),%ax
	movw	%ax,-20(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	8(%ebp),%edx
	movw	(%edx),%dx
	movw	%dx,(%ecx,%eax,2)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAY16BIT
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAY16BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3068
	jmp	Lj3069
Lj3068:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3069:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3074
	jmp	Lj3075
Lj3074:
	jmp	Lj3066
Lj3075:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3078
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3082
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$0,%cl
	movw	$16,%dx
	movb	$1,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj3082:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3083
	call	LFPC_RERAISE$stub
Lj3083:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3105
	jmp	Lj3104
Lj3105:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3103
	jmp	Lj3104
Lj3103:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3104:
Lj3078:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3080
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3109
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3110
	jmp	Lj3111
Lj3110:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3111:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3109:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3108
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3108:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3080
Lj3080:
Lj3066:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3118
	jmp	Lj3119
Lj3118:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3119:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3132
	jmp	Lj3131
Lj3132:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3130
	jmp	Lj3131
Lj3130:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3131:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3139
	jmp	Lj3138
Lj3139:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3137
	jmp	Lj3138
Lj3137:
	jmp	Lj3135
Lj3138:
	movl	-4(%ebp),%edx
	shll	$1,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3135:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movzbw	(%ecx,%eax,1),%ax
	movw	%ax,-20(%ebp)
	movzwl	-20(%ebp),%eax
	shll	$8,%eax
	movzwl	-20(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-20(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	8(%ebp),%edx
	movzwl	(%edx),%edx
	shrl	$8,%edx
	movb	%dl,(%ecx,%eax,1)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAY8BIT
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAY8BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3174
	jmp	Lj3175
Lj3174:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3175:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3180
	jmp	Lj3181
Lj3180:
	jmp	Lj3172
Lj3181:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3184
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3188
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$0,%cl
	movw	$8,%dx
	movb	$1,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj3188:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3189
	call	LFPC_RERAISE$stub
Lj3189:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3211
	jmp	Lj3210
Lj3211:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3209
	jmp	Lj3210
Lj3209:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3210:
Lj3184:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3186
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3215
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3216
	jmp	Lj3217
Lj3216:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3217:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3215:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3214
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3214:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3186
Lj3186:
Lj3172:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3224
	jmp	Lj3225
Lj3224:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3225:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3238
	jmp	Lj3237
Lj3238:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3236
	jmp	Lj3237
Lj3236:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3237:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3245
	jmp	Lj3244
Lj3245:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3243
	jmp	Lj3244
Lj3243:
	jmp	Lj3241
Lj3244:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3241:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movzbl	-24(%ebp),%eax
	shll	$8,%eax
	movzbl	-24(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-20(%ebp)
	movzbl	-23(%ebp),%eax
	shll	$8,%eax
	movzbl	-23(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-18(%ebp)
	movzbl	-22(%ebp),%eax
	shll	$8,%eax
	movzbl	-22(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-16(%ebp)
	movzbl	-21(%ebp),%eax
	shll	$8,%eax
	movzbl	-21(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	shrl	$8,%eax
	movb	%al,-16(%ebp)
	movl	8(%ebp),%eax
	movzwl	2(%eax),%eax
	shrl	$8,%eax
	movb	%al,-15(%ebp)
	movl	8(%ebp),%eax
	movzwl	4(%eax),%eax
	shrl	$8,%eax
	movb	%al,-14(%ebp)
	movl	8(%ebp),%eax
	movzwl	6(%eax),%eax
	shrl	$8,%eax
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGBA8BIT
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGBA8BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3288
	jmp	Lj3289
Lj3288:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3289:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3294
	jmp	Lj3295
Lj3294:
	jmp	Lj3286
Lj3295:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3298
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3302
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movw	$8,%dx
	movb	$0,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj3302:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3303
	call	LFPC_RERAISE$stub
Lj3303:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3325
	jmp	Lj3324
Lj3325:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3323
	jmp	Lj3324
Lj3323:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3324:
Lj3298:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3300
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3329
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3330
	jmp	Lj3331
Lj3330:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3331:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3329:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3328
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3328:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3300
Lj3300:
Lj3286:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3338
	jmp	Lj3339
Lj3338:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3339:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3352
	jmp	Lj3351
Lj3352:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3350
	jmp	Lj3351
Lj3350:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3351:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3359
	jmp	Lj3358
Lj3359:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3357
	jmp	Lj3358
Lj3357:
	jmp	Lj3355
Lj3358:
	movl	-4(%ebp),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3355:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	imull	%ecx,%eax
	movl	-4(%ebp),%ecx
	addl	%ecx,%eax
	imull	$3,%eax
	movw	(%edx,%eax),%cx
	movw	%cx,-23(%ebp)
	movb	2(%edx,%eax),%al
	movb	%al,-21(%ebp)
	movzbl	-23(%ebp),%eax
	shll	$8,%eax
	movzbl	-23(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-20(%ebp)
	movzbl	-22(%ebp),%eax
	shll	$8,%eax
	movzbl	-22(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-18(%ebp)
	movzbl	-21(%ebp),%eax
	shll	$8,%eax
	movzbl	-21(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	shrl	$8,%eax
	movb	%al,-15(%ebp)
	movl	8(%ebp),%eax
	movzwl	2(%eax),%eax
	shrl	$8,%eax
	movb	%al,-14(%ebp)
	movl	8(%ebp),%eax
	movzwl	4(%eax),%eax
	shrl	$8,%eax
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	imull	%ecx,%eax
	movl	-4(%ebp),%ecx
	addl	%ecx,%eax
	imull	$3,%eax
	movw	-15(%ebp),%cx
	movw	%cx,(%edx,%eax)
	movb	-13(%ebp),%cl
	movb	%cl,2(%edx,%eax)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGB8BIT
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGB8BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3400
	jmp	Lj3401
Lj3400:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3401:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3406
	jmp	Lj3407
Lj3406:
	jmp	Lj3398
Lj3407:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3410
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3414
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$0,%cl
	movw	$8,%dx
	movb	$0,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj3414:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3415
	call	LFPC_RERAISE$stub
Lj3415:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3437
	jmp	Lj3436
Lj3437:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3435
	jmp	Lj3436
Lj3435:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3436:
Lj3410:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3412
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3441
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3442
	jmp	Lj3443
Lj3442:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3443:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3441:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3440
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3440:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3412
Lj3412:
Lj3398:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3450
	jmp	Lj3451
Lj3450:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3451:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3464
	jmp	Lj3463
Lj3464:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3462
	jmp	Lj3463
Lj3462:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3463:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3471
	jmp	Lj3470
Lj3471:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3469
	jmp	Lj3470
Lj3469:
	jmp	Lj3467
Lj3470:
	movl	-4(%ebp),%edx
	imull	$3,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3467:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	imull	%ecx,%eax
	movl	-4(%ebp),%ecx
	addl	%ecx,%eax
	imull	$6,%eax
	movl	(%edx,%eax),%ecx
	movl	%ecx,-26(%ebp)
	movw	4(%edx,%eax),%ax
	movw	%ax,-22(%ebp)
	movw	-26(%ebp),%ax
	movw	%ax,-20(%ebp)
	movw	-24(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-22(%ebp),%ax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-18(%ebp)
	movl	8(%ebp),%eax
	movw	2(%eax),%ax
	movw	%ax,-16(%ebp)
	movl	8(%ebp),%eax
	movw	4(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%ecx
	imull	%ecx,%eax
	movl	-4(%ebp),%ecx
	addl	%ecx,%eax
	imull	$6,%eax
	movl	-18(%ebp),%ecx
	movl	%ecx,(%edx,%eax)
	movw	-14(%ebp),%cx
	movw	%cx,4(%edx,%eax)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGB16BIT
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGB16BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3512
	jmp	Lj3513
Lj3512:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3513:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3518
	jmp	Lj3519
Lj3518:
	jmp	Lj3510
Lj3519:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3522
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3526
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$0,%cl
	movw	$16,%dx
	movb	$0,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj3526:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3527
	call	LFPC_RERAISE$stub
Lj3527:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3549
	jmp	Lj3548
Lj3549:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3547
	jmp	Lj3548
Lj3547:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3548:
Lj3522:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3524
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3553
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3554
	jmp	Lj3555
Lj3554:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3555:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3553:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3552
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3552:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3524
Lj3524:
Lj3510:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3562
	jmp	Lj3563
Lj3562:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3563:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3576
	jmp	Lj3575
Lj3576:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3574
	jmp	Lj3575
Lj3574:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3575:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3583
	jmp	Lj3582
Lj3583:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3581
	jmp	Lj3582
Lj3581:
	jmp	Lj3579
Lj3582:
	movl	-4(%ebp),%edx
	imull	$6,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3579:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	(%ecx,%eax,8),%edx
	movl	%edx,-20(%ebp)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT:
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
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	8(%ebp),%ebx
	movl	(%ebx),%edx
	movl	%edx,(%ecx,%eax,8)
	movl	4(%ebx),%edx
	movl	%edx,4(%ecx,%eax,8)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGBA16BIT
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGBA16BIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3610
	jmp	Lj3611
Lj3610:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj3611:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3616
	jmp	Lj3617
Lj3616:
	jmp	Lj3608
Lj3617:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3620
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3624
	leal	-98(%ebp),%eax
	movl	%eax,(%esp)
	movb	$1,%cl
	movw	$16,%dx
	movb	$0,%al
	call	L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub
	movl	-12(%ebp),%edx
	movl	-98(%ebp),%eax
	movl	%eax,36(%edx)
	movw	-94(%ebp),%ax
	movw	%ax,40(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub
Lj3624:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3625
	call	LFPC_RERAISE$stub
Lj3625:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3647
	jmp	Lj3646
Lj3647:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3645
	jmp	Lj3646
Lj3645:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3646:
Lj3620:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3622
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj3651
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3652
	jmp	Lj3653
Lj3652:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3653:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3651:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj3650
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3650:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3622
Lj3622:
Lj3608:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__DESTROY
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3660
	jmp	Lj3661
Lj3660:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3661:
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3674
	jmp	Lj3673
Lj3674:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3672
	jmp	Lj3673
Lj3672:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3673:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETSIZE$LONGINT$LONGINT
_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETSIZE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj3681
	jmp	Lj3680
Lj3681:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj3679
	jmp	Lj3680
Lj3679:
	jmp	Lj3677
Lj3680:
	movl	-4(%ebp),%edx
	shll	$3,%edx
	movl	-8(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub
Lj3677:
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_FPCOLOR$WORD$WORD$WORD$$TFPCOLOR
_FPIMAGE_FPCOLOR$WORD$WORD$WORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-20(%ebp)
	movw	-8(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-16(%ebp)
	movw	$65535,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR
_FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-20(%ebp)
	movw	-8(%ebp),%ax
	movw	%ax,-18(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,-16(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,-14(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN
_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	(%eax),%ax
	cmpw	(%edx),%ax
	je	Lj3718
	jmp	Lj3715
Lj3718:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	2(%eax),%ax
	cmpw	2(%edx),%ax
	je	Lj3717
	jmp	Lj3715
Lj3717:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	4(%eax),%ax
	cmpw	4(%edx),%ax
	je	Lj3716
	jmp	Lj3715
Lj3716:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	6(%eax),%ax
	cmpw	6(%edx),%ax
	je	Lj3714
	jmp	Lj3715
Lj3714:
	movb	$1,-9(%ebp)
	jmp	Lj3719
Lj3715:
	movb	$0,-9(%ebp)
Lj3719:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD
_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-20(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR
_FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leal	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR
_FPIMAGE_or$TFPCOLOR$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub
	orl	%eax,%ebx
	orl	%edx,%esi
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR
_FPIMAGE_and$TFPCOLOR$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub
	andl	%eax,%ebx
	andl	%edx,%esi
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR
_FPIMAGE_xor$TFPCOLOR$TFPCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub
	xorl	%eax,%ebx
	xorl	%edx,%esi
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPIMAGE
_INIT$_FPIMAGE:
.reference __FPIMAGE_init
.globl	__FPIMAGE_init
__FPIMAGE_init:
.reference _INIT$_FPIMAGE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPIMAGE_TIMAGEHANDLERSMANAGER$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__CREATE$$TIMAGEHANDLERSMANAGER$stub
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_TC_FPIMAGE_GCM_JPEG$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%edx
	movl	L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%edx,(%eax)
	movl	L_TC_FPIMAGE_GCM_JPEG$non_lazy_ptr-Lj2(%ebx),%eax
	movl	4(%eax),%eax
	movl	L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,4(%edx)
	movl	L_TC_FPIMAGE_GCM_JPEG$non_lazy_ptr-Lj2(%ebx),%eax
	movl	8(%eax),%eax
	movl	L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FPIMAGE
_FINALIZE$_FPIMAGE:
.reference __FPIMAGE_finalize
.globl	__FPIMAGE_finalize
__FPIMAGE_finalize:
.reference _FINALIZE$_FPIMAGE
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj3759
Lj3759:
	popl	%ebx
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj3759(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	L_INIT_FPIMAGE_DEF158$non_lazy_ptr-Lj3759(%ebx),%edx
	movl	L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr-Lj3759(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_FPIMAGE_IMAGEHANDLERS
.data
.zerofill __DATA, __common, _U_FPIMAGE_IMAGEHANDLERS, 4,2




	.align 2
.globl _U_FPIMAGE_GRAYCONVMATRIX
.data
.zerofill __DATA, __common, _U_FPIMAGE_GRAYCONVMATRIX, 12,2



.const_data
	.align 2
.globl	_$FPIMAGE$_Ld40
_$FPIMAGE$_Ld40:
	.byte	20
	.ascii	"TFPCustomImageReader"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER:
	.long	24,-24
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEHANDLER
	.long	_$FPIMAGE$_Ld40
	.long	0,0
	.long	_$FPIMAGE$_Ld41
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld43
_$FPIMAGE$_Ld43:
	.byte	20
	.ascii	"TFPCustomImageWriter"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER:
	.long	20,-20
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEHANDLER
	.long	_$FPIMAGE$_Ld43
	.long	0,0
	.long	_$FPIMAGE$_Ld44
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld46
_$FPIMAGE$_Ld46:
	.byte	14
	.ascii	"TFPCustomImage"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCUSTOMIMAGE
_VMT_FPIMAGE_TFPCUSTOMIMAGE:
	.long	36,-36
	.long	_VMT_CLASSES_TPERSISTENT
	.long	_$FPIMAGE$_Ld46
	.long	0,0
	.long	_$FPIMAGE$_Ld47
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGE
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld49
_$FPIMAGE$_Ld49:
	.byte	16
	.ascii	"FPImageException"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_FPIMAGEEXCEPTION
_VMT_FPIMAGE_FPIMAGEEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPIMAGE$_Ld49
	.long	0,0
	.long	_$FPIMAGE$_Ld50
	.long	_RTTI_FPIMAGE_FPIMAGEEXCEPTION
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
.globl	_$FPIMAGE$_Ld52
_$FPIMAGE$_Ld52:
	.byte	10
	.ascii	"TFPPalette"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPPALETTE
_VMT_FPIMAGE_TFPPALETTE:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPIMAGE$_Ld52
	.long	0,0
	.long	_$FPIMAGE$_Ld53
	.long	_RTTI_FPIMAGE_TFPPALETTE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPIMAGE_TFPPALETTE_$__DESTROY
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
	.long	_FPIMAGE_TFPPALETTE_$__SETCOUNT$LONGINT
	.long	_FPIMAGE_TFPPALETTE_$__SETCOLOR$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPPALETTE_$__CHECKINDEX$LONGINT
	.long	_FPIMAGE_TFPPALETTE_$__ENLARGEDATA
	.long	_FPIMAGE_TFPPALETTE_$__BUILD$TFPCUSTOMIMAGE
	.long	_FPIMAGE_TFPPALETTE_$__COPY$TFPPALETTE
	.long	_FPIMAGE_TFPPALETTE_$__MERGE$TFPPALETTE
	.long	_FPIMAGE_TFPPALETTE_$__INDEXOF$TFPCOLOR$$LONGINT
	.long	_FPIMAGE_TFPPALETTE_$__ADD$TFPCOLOR$$LONGINT
	.long	_FPIMAGE_TFPPALETTE_$__CLEAR
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld55
_$FPIMAGE$_Ld55:
	.byte	14
	.ascii	"TFPMemoryImage"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPMEMORYIMAGE
_VMT_FPIMAGE_TFPMEMORYIMAGE:
	.long	40,-40
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGE
	.long	_$FPIMAGE$_Ld55
	.long	0,0
	.long	_$FPIMAGE$_Ld56
	.long	_RTTI_FPIMAGE_TFPMEMORYIMAGE
	.long	0,0,0,0
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__CREATE$LONGINT$LONGINT$$TFPMEMORYIMAGE
	.long	_FPIMAGE_TFPMEMORYIMAGE_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld58
_$FPIMAGE$_Ld58:
	.byte	21
	.ascii	"TFPCustomImageHandler"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCUSTOMIMAGEHANDLER
_VMT_FPIMAGE_TFPCUSTOMIMAGEHANDLER:
	.long	20,-20
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPIMAGE$_Ld58
	.long	0,0
	.long	_$FPIMAGE$_Ld59
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEHANDLER
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld61
_$FPIMAGE$_Ld61:
	.byte	7
	.ascii	"TIHData"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TIHDATA
_VMT_FPIMAGE_TIHDATA:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPIMAGE$_Ld61
	.long	0,0
	.long	_$FPIMAGE$_Ld62
	.long	_RTTI_FPIMAGE_TIHDATA
	.long	_INIT_FPIMAGE_TIHDATA
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
.globl	_$FPIMAGE$_Ld64
_$FPIMAGE$_Ld64:
	.byte	21
	.ascii	"TImageHandlersManager"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TIMAGEHANDLERSMANAGER
_VMT_FPIMAGE_TIMAGEHANDLERSMANAGER:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPIMAGE$_Ld64
	.long	0,0
	.long	_$FPIMAGE$_Ld65
	.long	_RTTI_FPIMAGE_TIMAGEHANDLERSMANAGER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPIMAGE_TIMAGEHANDLERSMANAGER_$__DESTROY
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
.globl	_$FPIMAGE$_Ld67
_$FPIMAGE$_Ld67:
	.byte	17
	.ascii	"TFPCompactImgBase"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
_VMT_FPIMAGE_TFPCOMPACTIMGBASE:
	.long	44,-44
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGE
	.long	_$FPIMAGE$_Ld67
	.long	0,0
	.long	_$FPIMAGE$_Ld68
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld70
_$FPIMAGE$_Ld70:
	.byte	22
	.ascii	"TFPCompactImgGray16Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT
_VMT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld70
	.long	0,0
	.long	_$FPIMAGE$_Ld71
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAY16BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAY16BIT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY16BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld73
_$FPIMAGE$_Ld73:
	.byte	27
	.ascii	"TFPCompactImgGrayAlpha16Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT
_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld73
	.long	0,0
	.long	_$FPIMAGE$_Ld74
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAYALPHA16BIT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld76
_$FPIMAGE$_Ld76:
	.byte	21
	.ascii	"TFPCompactImgGray8Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT
_VMT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld76
	.long	0,0
	.long	_$FPIMAGE$_Ld77
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAY8BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAY8BIT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAY8BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld79
_$FPIMAGE$_Ld79:
	.byte	26
	.ascii	"TFPCompactImgGrayAlpha8Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT
_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld79
	.long	0,0
	.long	_$FPIMAGE$_Ld80
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGGRAYALPHA8BIT
	.long	_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld82
_$FPIMAGE$_Ld82:
	.byte	21
	.ascii	"TFPCompactImgRGBA8Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT
_VMT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld82
	.long	0,0
	.long	_$FPIMAGE$_Ld83
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA8BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGBA8BIT
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA8BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld85
_$FPIMAGE$_Ld85:
	.byte	20
	.ascii	"TFPCompactImgRGB8Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGRGB8BIT
_VMT_FPIMAGE_TFPCOMPACTIMGRGB8BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld85
	.long	0,0
	.long	_$FPIMAGE$_Ld86
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGRGB8BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGB8BIT
	.long	_FPIMAGE_TFPCOMPACTIMGRGB8BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld88
_$FPIMAGE$_Ld88:
	.byte	21
	.ascii	"TFPCompactImgRGB16Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGRGB16BIT
_VMT_FPIMAGE_TFPCOMPACTIMGRGB16BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld88
	.long	0,0
	.long	_$FPIMAGE$_Ld89
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGRGB16BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGB16BIT
	.long	_FPIMAGE_TFPCOMPACTIMGRGB16BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld91
_$FPIMAGE$_Ld91:
	.byte	22
	.ascii	"TFPCompactImgRGBA16Bit"

.const_data
	.align 2
.globl	_VMT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT
_VMT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT:
	.long	48,-48
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_$FPIMAGE$_Ld91
	.long	0,0
	.long	_$FPIMAGE$_Ld92
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA16BIT
	.long	0,0,0,0
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETINTERNALPIXEL$LONGINT$LONGINT$LONGINT
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__GETINTERNALPIXEL$LONGINT$LONGINT$$LONGINT
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__SETUSEPALETTE$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGE_$__PROGRESS$crc9F69896E
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__CREATE$LONGINT$LONGINT$$TFPCOMPACTIMGRGBA16BIT
	.long	_FPIMAGE_TFPCOMPACTIMGRGBA16BIT_$__SETSIZE$LONGINT$LONGINT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPIMAGE
_THREADVARLIST_FPIMAGE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld2
_$FPIMAGE$_Ld2:
	.short	0,1
	.long	0,-1,19
.reference _$FPIMAGE$_Ld1
.globl	_$FPIMAGE$_Ld1
_$FPIMAGE$_Ld1:
.reference _$FPIMAGE$_Ld2
	.ascii	"Invalid %s index %d\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld4
_$FPIMAGE$_Ld4:
	.short	0,1
	.long	0,-1,17
.reference _$FPIMAGE$_Ld3
.globl	_$FPIMAGE$_Ld3
_$FPIMAGE$_Ld3:
.reference _$FPIMAGE$_Ld4
	.ascii	"No image to write\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld6
_$FPIMAGE$_Ld6:
	.short	0,1
	.long	0,-1,24
.reference _$FPIMAGE$_Ld5
.globl	_$FPIMAGE$_Ld5
_$FPIMAGE$_Ld5:
.reference _$FPIMAGE$_Ld6
	.ascii	"File \"%s\" does not exist\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld8
_$FPIMAGE$_Ld8:
	.short	0,1
	.long	0,-1,21
.reference _$FPIMAGE$_Ld7
.globl	_$FPIMAGE$_Ld7
_$FPIMAGE$_Ld7:
.reference _$FPIMAGE$_Ld8
	.ascii	"No stream to write to\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld10
_$FPIMAGE$_Ld10:
	.short	0,1
	.long	0,-1,7
.reference _$FPIMAGE$_Ld9
.globl	_$FPIMAGE$_Ld9
_$FPIMAGE$_Ld9:
.reference _$FPIMAGE$_Ld10
	.ascii	"palette\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld12
_$FPIMAGE$_Ld12:
	.short	0,1
	.long	0,-1,16
.reference _$FPIMAGE$_Ld11
.globl	_$FPIMAGE$_Ld11
_$FPIMAGE$_Ld11:
.reference _$FPIMAGE$_Ld12
	.ascii	"horizontal pixel\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld14
_$FPIMAGE$_Ld14:
	.short	0,1
	.long	0,-1,14
.reference _$FPIMAGE$_Ld13
.globl	_$FPIMAGE$_Ld13
_$FPIMAGE$_Ld13:
.reference _$FPIMAGE$_Ld14
	.ascii	"vertical pixel\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld16
_$FPIMAGE$_Ld16:
	.short	0,1
	.long	0,-1,5
.reference _$FPIMAGE$_Ld15
.globl	_$FPIMAGE$_Ld15
_$FPIMAGE$_Ld15:
.reference _$FPIMAGE$_Ld16
	.ascii	"extra\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld18
_$FPIMAGE$_Ld18:
	.short	0,1
	.long	0,-1,30
.reference _$FPIMAGE$_Ld17
.globl	_$FPIMAGE$_Ld17
_$FPIMAGE$_Ld17:
.reference _$FPIMAGE$_Ld18
	.ascii	"Image type \"%s\" already exists\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld20
_$FPIMAGE$_Ld20:
	.short	0,1
	.long	0,-1,42
.reference _$FPIMAGE$_Ld19
.globl	_$FPIMAGE$_Ld19
_$FPIMAGE$_Ld19:
.reference _$FPIMAGE$_Ld20
	.ascii	"Image type \"%s\" already has a reader class\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld22
_$FPIMAGE$_Ld22:
	.short	0,1
	.long	0,-1,42
.reference _$FPIMAGE$_Ld21
.globl	_$FPIMAGE$_Ld21
_$FPIMAGE$_Ld21:
.reference _$FPIMAGE$_Ld22
	.ascii	"Image type \"%s\" already has a writer class\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld24
_$FPIMAGE$_Ld24:
	.short	0,1
	.long	0,-1,48
.reference _$FPIMAGE$_Ld23
.globl	_$FPIMAGE$_Ld23
_$FPIMAGE$_Ld23:
.reference _$FPIMAGE$_Ld24
	.ascii	"Error while determining image type of stream: %s\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld26
_$FPIMAGE$_Ld26:
	.short	0,1
	.long	0,-1,36
.reference _$FPIMAGE$_Ld25
.globl	_$FPIMAGE$_Ld25
_$FPIMAGE$_Ld25:
.reference _$FPIMAGE$_Ld26
	.ascii	"Can't determine image type of stream\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld28
_$FPIMAGE$_Ld28:
	.short	0,1
	.long	0,-1,30
.reference _$FPIMAGE$_Ld27
.globl	_$FPIMAGE$_Ld27
_$FPIMAGE$_Ld27:
.reference _$FPIMAGE$_Ld28
	.ascii	"Error while reading stream: %s\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld30
_$FPIMAGE$_Ld30:
	.short	0,1
	.long	0,-1,30
.reference _$FPIMAGE$_Ld29
.globl	_$FPIMAGE$_Ld29
_$FPIMAGE$_Ld29:
.reference _$FPIMAGE$_Ld30
	.ascii	"Error while writing stream: %s\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld32
_$FPIMAGE$_Ld32:
	.short	0,1
	.long	0,-1,20
.reference _$FPIMAGE$_Ld31
.globl	_$FPIMAGE$_Ld31
_$FPIMAGE$_Ld31:
.reference _$FPIMAGE$_Ld32
	.ascii	"No palette available\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPIMAGE_ERRORTEXT
_TC_FPIMAGE_ERRORTEXT:
	.long	_$FPIMAGE$_Ld1
	.long	_$FPIMAGE$_Ld3
	.long	_$FPIMAGE$_Ld5
	.long	_$FPIMAGE$_Ld7
	.long	_$FPIMAGE$_Ld9
	.long	_$FPIMAGE$_Ld11
	.long	_$FPIMAGE$_Ld13
	.long	_$FPIMAGE$_Ld15
	.long	_$FPIMAGE$_Ld17
	.long	_$FPIMAGE$_Ld19
	.long	_$FPIMAGE$_Ld21
	.long	_$FPIMAGE$_Ld23
	.long	_$FPIMAGE$_Ld25
	.long	_$FPIMAGE$_Ld27
	.long	_$FPIMAGE$_Ld29
	.long	_$FPIMAGE$_Ld31

.data
.globl	_TC_FPIMAGE_BYTESNEEDED
_TC_FPIMAGE_BYTESNEEDED:
	.byte	1,1,1,1,2,3,1,2,4,2,2,3,4,6,1,2,4,8,2,2,3,4,6,1,2,4,8

.data
	.align 1
.globl	_TC_FPIMAGE_COLTRANSPARENT
_TC_FPIMAGE_COLTRANSPARENT:
	.short	0,0,0,0

.data
	.align 1
.globl	_TC_FPIMAGE_COLBLACK
_TC_FPIMAGE_COLBLACK:
	.short	0,0,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLBLUE
_TC_FPIMAGE_COLBLUE:
	.short	0,0,65535,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLGREEN
_TC_FPIMAGE_COLGREEN:
	.short	0,65535,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLCYAN
_TC_FPIMAGE_COLCYAN:
	.short	0,65535,65535,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLRED
_TC_FPIMAGE_COLRED:
	.short	65535,0,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLMAGENTA
_TC_FPIMAGE_COLMAGENTA:
	.short	65535,0,65535,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLYELLOW
_TC_FPIMAGE_COLYELLOW:
	.short	65535,65535,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLWHITE
_TC_FPIMAGE_COLWHITE:
	.short	65535,65535,65535,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLGRAY
_TC_FPIMAGE_COLGRAY:
	.short	32768,32768,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLLTGRAY
_TC_FPIMAGE_COLLTGRAY:
	.short	49152,49152,49152,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKGRAY
_TC_FPIMAGE_COLDKGRAY:
	.short	16384,16384,16384,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKBLUE
_TC_FPIMAGE_COLDKBLUE:
	.short	0,0,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKGREEN
_TC_FPIMAGE_COLDKGREEN:
	.short	0,32768,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKCYAN
_TC_FPIMAGE_COLDKCYAN:
	.short	0,32768,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKRED
_TC_FPIMAGE_COLDKRED:
	.short	32768,0,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKMAGENTA
_TC_FPIMAGE_COLDKMAGENTA:
	.short	32768,0,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLDKYELLOW
_TC_FPIMAGE_COLDKYELLOW:
	.short	32768,32768,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLMAROON
_TC_FPIMAGE_COLMAROON:
	.short	32768,0,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLLTGREEN
_TC_FPIMAGE_COLLTGREEN:
	.short	0,32768,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLOLIVE
_TC_FPIMAGE_COLOLIVE:
	.short	32768,32768,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLNAVY
_TC_FPIMAGE_COLNAVY:
	.short	0,0,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLPURPLE
_TC_FPIMAGE_COLPURPLE:
	.short	32768,0,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLTEAL
_TC_FPIMAGE_COLTEAL:
	.short	0,32768,32768,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLSILVER
_TC_FPIMAGE_COLSILVER:
	.short	49152,49152,49152,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLLIME
_TC_FPIMAGE_COLLIME:
	.short	0,65535,0,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLFUCHSIA
_TC_FPIMAGE_COLFUCHSIA:
	.short	65535,0,65535,65535

.data
	.align 1
.globl	_TC_FPIMAGE_COLAQUA
_TC_FPIMAGE_COLAQUA:
	.short	0,65535,65535,65535

.data
	.align 2
.globl	_TC_FPIMAGE_GCM_NTSC
_TC_FPIMAGE_GCM_NTSC:
	.byte	135,22,153,62
	.byte	162,69,22,63
	.byte	213,120,233,61

.data
	.align 2
.globl	_TC_FPIMAGE_GCM_JPEG
_TC_FPIMAGE_GCM_JPEG:
	.byte	135,22,153,62
	.byte	162,69,22,63
	.byte	213,120,233,61

.data
	.align 2
.globl	_TC_FPIMAGE_GCM_MATHEMATICAL
_TC_FPIMAGE_GCM_MATHEMATICAL:
	.byte	12,2,171,62
	.byte	250,126,170,62
	.byte	250,126,170,62

.data
	.align 2
.globl	_TC_FPIMAGE_GCM_PHOTOSHOP
_TC_FPIMAGE_GCM_PHOTOSHOP:
	.byte	172,28,90,62
	.byte	61,10,55,63
	.byte	188,116,147,61

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld34
_$FPIMAGE$_Ld34:
	.short	0,1
	.long	0,-1,1
.reference _$FPIMAGE$_Ld33
.globl	_$FPIMAGE$_Ld33
_$FPIMAGE$_Ld33:
.reference _$FPIMAGE$_Ld34
	.ascii	";\000"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld36
_$FPIMAGE$_Ld36:
	.short	0,1
	.long	0,-1,18
.reference _$FPIMAGE$_Ld35
.globl	_$FPIMAGE$_Ld35
_$FPIMAGE$_Ld35:
.reference _$FPIMAGE$_Ld36
	.ascii	"Wrong image format\000"

.const
	.align 3
.globl	_$FPIMAGE$_Ld37
_$FPIMAGE$_Ld37:
	.byte	0,0,0,0,0,0,255,255,14,64

.const
	.align 2
.globl	_$FPIMAGE$_Ld38
_$FPIMAGE$_Ld38:
	.byte	0,255,127,71

.const
	.align 2
.globl	_$FPIMAGE$_Ld39
_$FPIMAGE$_Ld39:
	.byte	0,0,0,0,224,255,239,64
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TPERSISTENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__IMAGEREAD$TSTREAM$TFPCUSTOMIMAGE$$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEREADER_$__IMAGEREAD$TSTREAM$TFPCUSTOMIMAGE$$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$TFPCUSTOMIMAGEREADER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$TFPCUSTOMIMAGEREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const$stub:
.indirect_symbol _FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGEWRITER_$__IMAGEWRITE$TSTREAM$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEWRITER_$__IMAGEWRITE$TSTREAM$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOSTREAM$TSTREAM$TFPCUSTOMIMAGEWRITER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOSTREAM$TSTREAM$TFPCUSTOMIMAGEWRITER
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

L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETCOUNT$$LONGINT
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

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$LONGINT$$TIHDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
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

L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CHECKCONTENTS$TSTREAM$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEREADER_$__CHECKCONTENTS$TSTREAM$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_FPIMGERROR$TERRORTEXTINDICES$stub:
.indirect_symbol _FPIMAGE_FPIMGERROR$TERRORTEXTINDICES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING$TFPCUSTOMIMAGEREADER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMFILE$ANSISTRING$TFPCUSTOMIMAGEREADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__LOADFROMSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__SETVALUE$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__SETVALUE$ANSISTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__GETVALUE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__GETVALUE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKPALETTEINDEX$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__CHECKPALETTEINDEX$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__CHECKINDEX$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
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

L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__CREATE$LONGINT$LONGINT$$TFPCUSTOMIMAGE
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETINTERNALCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETINTERNALCOLOR$LONGINT$LONGINT$TFPCOLOR
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

L_SYSTEM_FILLWORD$formal$LONGINT$WORD$stub:
.indirect_symbol _SYSTEM_FILLWORD$formal$LONGINT$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_LOWEST$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_LOWEST$LONGINT$LONGINT$$LONGINT
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETSIZE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
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

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETDATA$ANSISTRING$$TIHDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_CALCDEFEXT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
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

L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
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

L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_GETFPCOMPACTIMGCLASS$TFPCOMPACTIMGDESC$$TFPCOMPACTIMGBASECLASS$stub:
.indirect_symbol _FPIMAGE_GETFPCOMPACTIMGCLASS$TFPCOMPACTIMGDESC$$TFPCOMPACTIMGBASECLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPIMAGE_CREATEFPCOMPACTIMG$TFPCOMPACTIMGDESC$LONGINT$LONGINT$$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC$stub:
.indirect_symbol _FPIMAGE_GETMINIMUMPTDESC$TFPCUSTOMIMAGE$WORD$$TFPCOMPACTIMGDESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC$stub:
.indirect_symbol _FPIMAGE_GETFPCOMPACTIMGDESC$BOOLEAN$WORD$BOOLEAN$$TFPCOMPACTIMGDESC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD$stub:
.indirect_symbol _FPIMAGE_GETFULLCOLORDATA$TFPCOLOR$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_SETFULLCOLORDATA$QWORD$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__CREATE$$TIMAGEHANDLERSMANAGER$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__CREATE$$TIMAGEHANDLERSMANAGER
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
.globl	_$FPIMAGE$_Ld41
_$FPIMAGE$_Ld41:
	.short	0
	.long	_$FPIMAGE$_Ld42
	.align 2
.globl	_$FPIMAGE$_Ld42
_$FPIMAGE$_Ld42:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGEHANDLER
_INIT_FPIMAGE_TFPCUSTOMIMAGEHANDLER:
	.byte	15,21
	.ascii	"TFPCustomImageHandler"
	.long	4,0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGEREADER
_INIT_FPIMAGE_TFPCUSTOMIMAGEREADER:
	.byte	15,20
	.ascii	"TFPCustomImageReader"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGEHANDLER
_RTTI_FPIMAGE_TFPCUSTOMIMAGEHANDLER:
	.byte	15,21
	.ascii	"TFPCustomImageHandler"
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEHANDLER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER:
	.byte	15,20
	.ascii	"TFPCustomImageReader"
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEHANDLER
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld44
_$FPIMAGE$_Ld44:
	.short	0
	.long	_$FPIMAGE$_Ld45
	.align 2
.globl	_$FPIMAGE$_Ld45
_$FPIMAGE$_Ld45:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGEWRITER
_INIT_FPIMAGE_TFPCUSTOMIMAGEWRITER:
	.byte	15,20
	.ascii	"TFPCustomImageWriter"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER:
	.byte	15,20
	.ascii	"TFPCustomImageWriter"
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEHANDLER
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF306
_INIT_FPIMAGE_DEF306:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF327
_INIT_FPIMAGE_DEF327:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF328
_INIT_FPIMAGE_DEF328:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF325
_INIT_FPIMAGE_DEF325:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF296
_INIT_FPIMAGE_DEF296:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF285
_INIT_FPIMAGE_DEF285:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF301
_INIT_FPIMAGE_DEF301:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF292
_INIT_FPIMAGE_DEF292:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld47
_$FPIMAGE$_Ld47:
	.short	0
	.long	_$FPIMAGE$_Ld48
	.align 2
.globl	_$FPIMAGE$_Ld48
_$FPIMAGE$_Ld48:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGE
_INIT_FPIMAGE_TFPCUSTOMIMAGE:
	.byte	15,14
	.ascii	"TFPCustomImage"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGE
_RTTI_FPIMAGE_TFPCUSTOMIMAGE:
	.byte	15,14
	.ascii	"TFPCustomImage"
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGE
	.long	_RTTI_CLASSES_TPERSISTENT
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld50
_$FPIMAGE$_Ld50:
	.short	0
	.long	_$FPIMAGE$_Ld51
	.align 2
.globl	_$FPIMAGE$_Ld51
_$FPIMAGE$_Ld51:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_FPIMAGEEXCEPTION
_INIT_FPIMAGE_FPIMAGEEXCEPTION:
	.byte	15,16
	.ascii	"FPImageException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_FPIMAGEEXCEPTION
_RTTI_FPIMAGE_FPIMAGEEXCEPTION:
	.byte	15,16
	.ascii	"FPImageException"
	.long	_VMT_FPIMAGE_FPIMAGEEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOLOR
_INIT_FPIMAGE_TFPCOLOR:
	.byte	13,8
	.ascii	"TFPColor"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOLOR
_RTTI_FPIMAGE_TFPCOLOR:
	.byte	13,8
	.ascii	"TFPColor"
	.long	8,4
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOLOR
_INIT_FPIMAGE_PFPCOLOR:
	.byte	0
	.ascii	"\010PFPColor"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOLOR
_RTTI_FPIMAGE_PFPCOLOR:
	.byte	0
	.ascii	"\010PFPColor"

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TCOLORFORMAT
_INIT_FPIMAGE_TCOLORFORMAT:
	.byte	3,12
	.ascii	"TColorFormat"
	.byte	5
	.long	0,26,0
	.byte	6
	.ascii	"cfMono"
	.byte	7
	.ascii	"cfGray2"
	.byte	7
	.ascii	"cfGray4"
	.byte	7
	.ascii	"cfGray8"
	.byte	8
	.ascii	"cfGray16"
	.byte	8
	.ascii	"cfGray24"
	.byte	8
	.ascii	"cfGrayA8"
	.byte	9
	.ascii	"cfGrayA16"
	.byte	9
	.ascii	"cfGrayA32"
	.byte	7
	.ascii	"cfRGB15"
	.byte	7
	.ascii	"cfRGB16"
	.byte	7
	.ascii	"cfRGB24"
	.byte	7
	.ascii	"cfRGB32"
	.byte	7
	.ascii	"cfRGB48"
	.byte	7
	.ascii	"cfRGBA8"
	.byte	8
	.ascii	"cfRGBA16"
	.byte	8
	.ascii	"cfRGBA32"
	.byte	8
	.ascii	"cfRGBA64"
	.byte	7
	.ascii	"cfBGR15"
	.byte	7
	.ascii	"cfBGR16"
	.byte	7
	.ascii	"cfBGR24"
	.byte	7
	.ascii	"cfBGR32"
	.byte	7
	.ascii	"cfBGR48"
	.byte	7
	.ascii	"cfABGR8"
	.byte	8
	.ascii	"cfABGR16"
	.byte	8
	.ascii	"cfABGR32"
	.byte	8
	.ascii	"cfABGR64"
	.byte	7
	.ascii	"FPimage"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TCOLORFORMAT
_RTTI_FPIMAGE_TCOLORFORMAT:
	.byte	3,12
	.ascii	"TColorFormat"
	.byte	5
	.long	0,26,0
	.byte	6
	.ascii	"cfMono"
	.byte	7
	.ascii	"cfGray2"
	.byte	7
	.ascii	"cfGray4"
	.byte	7
	.ascii	"cfGray8"
	.byte	8
	.ascii	"cfGray16"
	.byte	8
	.ascii	"cfGray24"
	.byte	8
	.ascii	"cfGrayA8"
	.byte	9
	.ascii	"cfGrayA16"
	.byte	9
	.ascii	"cfGrayA32"
	.byte	7
	.ascii	"cfRGB15"
	.byte	7
	.ascii	"cfRGB16"
	.byte	7
	.ascii	"cfRGB24"
	.byte	7
	.ascii	"cfRGB32"
	.byte	7
	.ascii	"cfRGB48"
	.byte	7
	.ascii	"cfRGBA8"
	.byte	8
	.ascii	"cfRGBA16"
	.byte	8
	.ascii	"cfRGBA32"
	.byte	8
	.ascii	"cfRGBA64"
	.byte	7
	.ascii	"cfBGR15"
	.byte	7
	.ascii	"cfBGR16"
	.byte	7
	.ascii	"cfBGR24"
	.byte	7
	.ascii	"cfBGR32"
	.byte	7
	.ascii	"cfBGR48"
	.byte	7
	.ascii	"cfABGR8"
	.byte	8
	.ascii	"cfABGR16"
	.byte	8
	.ascii	"cfABGR32"
	.byte	8
	.ascii	"cfABGR64"
	.byte	7
	.ascii	"FPimage"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TCOLORFORMAT_s2o
_RTTI_FPIMAGE_TCOLORFORMAT_s2o:
	.long	27,24
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+228
	.long	25
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+237
	.long	26
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+246
	.long	23
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+220
	.long	18
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+180
	.long	19
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+188
	.long	20
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+196
	.long	21
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+204
	.long	22
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+212
	.long	4
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+58
	.long	1
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+34
	.long	5
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+67
	.long	2
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+42
	.long	3
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+50
	.long	7
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+85
	.long	8
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+95
	.long	6
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+76
	.long	0
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+27
	.long	9
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+105
	.long	10
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+113
	.long	11
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+121
	.long	12
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+129
	.long	13
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+137
	.long	15
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+153
	.long	16
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+162
	.long	17
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+171
	.long	14
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+145

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TCOLORFORMAT_o2s
_RTTI_FPIMAGE_TCOLORFORMAT_o2s:
	.long	0
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+27
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+34
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+42
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+50
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+58
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+67
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+76
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+85
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+95
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+105
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+113
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+121
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+129
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+137
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+145
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+153
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+162
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+171
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+180
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+188
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+196
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+204
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+212
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+220
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+228
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+237
	.long	_RTTI_FPIMAGE_TCOLORFORMAT+246

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PCOLORDATA
_INIT_FPIMAGE_PCOLORDATA:
	.byte	0
	.ascii	"\012PColorData"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PCOLORDATA
_RTTI_FPIMAGE_PCOLORDATA:
	.byte	0
	.ascii	"\012PColorData"

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TDEVICECOLOR
_INIT_FPIMAGE_TDEVICECOLOR:
	.byte	13,12
	.ascii	"TDeviceColor"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TDEVICECOLOR
_RTTI_FPIMAGE_TDEVICECOLOR:
	.byte	13,12
	.ascii	"TDeviceColor"
	.long	12,2
	.long	_RTTI_FPIMAGE_TCOLORFORMAT
	.long	0
	.long	_RTTI_SYSTEM_QWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOLORARRAY
_INIT_FPIMAGE_TFPCOLORARRAY:
	.byte	12
	.ascii	"\015TFPColorArray"
	.long	8,268435455
	.long	_INIT_FPIMAGE_TFPCOLOR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOLORARRAY
_RTTI_FPIMAGE_TFPCOLORARRAY:
	.byte	12
	.ascii	"\015TFPColorArray"
	.long	8,268435455
	.long	_RTTI_FPIMAGE_TFPCOLOR
	.long	-1

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOLORARRAY
_INIT_FPIMAGE_PFPCOLORARRAY:
	.byte	0
	.ascii	"\015PFPColorArray"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOLORARRAY
_RTTI_FPIMAGE_PFPCOLORARRAY:
	.byte	0
	.ascii	"\015PFPColorArray"

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPIMGPROGRESSSTAGE
_INIT_FPIMAGE_TFPIMGPROGRESSSTAGE:
	.byte	3,19
	.ascii	"TFPImgProgressStage"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"psStarting"
	.byte	9
	.ascii	"psRunning"
	.byte	8
	.ascii	"psEnding"
	.byte	7
	.ascii	"FPimage"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE
_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE:
	.byte	3,19
	.ascii	"TFPImgProgressStage"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"psStarting"
	.byte	9
	.ascii	"psRunning"
	.byte	8
	.ascii	"psEnding"
	.byte	7
	.ascii	"FPimage"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE_s2o
_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE_s2o:
	.long	3,2
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE+55
	.long	1
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE+45
	.long	0
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE+34

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE_o2s
_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE_o2s:
	.long	0
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE+34
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE+45
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE+55

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPIMGPROGRESSEVENT
_INIT_FPIMAGE_TFPIMGPROGRESSEVENT:
	.byte	6,19
	.ascii	"TFPImgProgressEvent"
	.byte	0,7,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	0,5
	.ascii	"Stage"
	.ascii	"\023TFPImgProgressStage"
	.byte	0,11
	.ascii	"PercentDone"
	.ascii	"\004Byte"
	.byte	0,9
	.ascii	"RedrawNow"
	.ascii	"\007Boolean"
	.byte	2,1
	.ascii	"R"
	.ascii	"\005TRect"
	.byte	2,3
	.ascii	"Msg"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE
	.long	_RTTI_SYSTEM_BYTE
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_RTTI_TYPES_TRECT
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPIMGPROGRESSEVENT
_RTTI_FPIMAGE_TFPIMGPROGRESSEVENT:
	.byte	6,19
	.ascii	"TFPImgProgressEvent"
	.byte	0,7,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	0,5
	.ascii	"Stage"
	.ascii	"\023TFPImgProgressStage"
	.byte	0,11
	.ascii	"PercentDone"
	.ascii	"\004Byte"
	.byte	0,9
	.ascii	"RedrawNow"
	.ascii	"\007Boolean"
	.byte	2,1
	.ascii	"R"
	.ascii	"\005TRect"
	.byte	2,3
	.ascii	"Msg"
	.ascii	"\012AnsiString"
	.byte	1,8
	.ascii	"Continue"
	.ascii	"\007Boolean"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_FPIMAGE_TFPIMGPROGRESSSTAGE
	.long	_RTTI_SYSTEM_BYTE
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_RTTI_TYPES_TRECT
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_RTTI_SYSTEM_BOOLEAN

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF419
_INIT_FPIMAGE_DEF419:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld53
_$FPIMAGE$_Ld53:
	.short	0
	.long	_$FPIMAGE$_Ld54
	.align 2
.globl	_$FPIMAGE$_Ld54
_$FPIMAGE$_Ld54:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPPALETTE
_INIT_FPIMAGE_TFPPALETTE:
	.byte	15,10
	.ascii	"TFPPalette"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPPALETTE
_RTTI_FPIMAGE_TFPPALETTE:
	.byte	15,10
	.ascii	"TFPPalette"
	.long	_VMT_FPIMAGE_TFPPALETTE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGECLASS
_INIT_FPIMAGE_TFPCUSTOMIMAGECLASS:
	.byte	0
	.ascii	"\023TFPCustomImageClass"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGECLASS
_RTTI_FPIMAGE_TFPCUSTOMIMAGECLASS:
	.byte	0
	.ascii	"\023TFPCustomImageClass"

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPINTEGERARRAY
_INIT_FPIMAGE_TFPINTEGERARRAY:
	.byte	12
	.ascii	"\017TFPIntegerArray"
	.long	4,536870911
	.long	_INIT_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPINTEGERARRAY
_RTTI_FPIMAGE_TFPINTEGERARRAY:
	.byte	12
	.ascii	"\017TFPIntegerArray"
	.long	4,536870911
	.long	_RTTI_SYSTEM_LONGINT
	.long	3

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPINTEGERARRAY
_INIT_FPIMAGE_PFPINTEGERARRAY:
	.byte	0
	.ascii	"\017PFPIntegerArray"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPINTEGERARRAY
_RTTI_FPIMAGE_PFPINTEGERARRAY:
	.byte	0
	.ascii	"\017PFPIntegerArray"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld56
_$FPIMAGE$_Ld56:
	.short	0
	.long	_$FPIMAGE$_Ld57
	.align 2
.globl	_$FPIMAGE$_Ld57
_$FPIMAGE$_Ld57:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPMEMORYIMAGE
_INIT_FPIMAGE_TFPMEMORYIMAGE:
	.byte	15,14
	.ascii	"TFPMemoryImage"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPMEMORYIMAGE
_RTTI_FPIMAGE_TFPMEMORYIMAGE:
	.byte	15,14
	.ascii	"TFPMemoryImage"
	.long	_VMT_FPIMAGE_TFPMEMORYIMAGE
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld59
_$FPIMAGE$_Ld59:
	.short	0
	.long	_$FPIMAGE$_Ld60
	.align 2
.globl	_$FPIMAGE$_Ld60
_$FPIMAGE$_Ld60:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGEREADERCLASS
_INIT_FPIMAGE_TFPCUSTOMIMAGEREADERCLASS:
	.byte	0
	.ascii	"\031TFPCustomImageReaderClass"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADERCLASS
_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADERCLASS:
	.byte	0
	.ascii	"\031TFPCustomImageReaderClass"

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCUSTOMIMAGEWRITERCLASS
_INIT_FPIMAGE_TFPCUSTOMIMAGEWRITERCLASS:
	.byte	0
	.ascii	"\031TFPCustomImageWriterClass"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITERCLASS
_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITERCLASS:
	.byte	0
	.ascii	"\031TFPCustomImageWriterClass"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld62
_$FPIMAGE$_Ld62:
	.short	0
	.long	_$FPIMAGE$_Ld63
	.align 2
.globl	_$FPIMAGE$_Ld63
_$FPIMAGE$_Ld63:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TIHDATA
_INIT_FPIMAGE_TIHDATA:
	.byte	15,7
	.ascii	"TIHData"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TIHDATA
_RTTI_FPIMAGE_TIHDATA:
	.byte	15,7
	.ascii	"TIHData"
	.long	_VMT_FPIMAGE_TIHDATA
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF368
_INIT_FPIMAGE_DEF368:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF371
_INIT_FPIMAGE_DEF371:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF374
_INIT_FPIMAGE_DEF374:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld65
_$FPIMAGE$_Ld65:
	.short	0
	.long	_$FPIMAGE$_Ld66
	.align 2
.globl	_$FPIMAGE$_Ld66
_$FPIMAGE$_Ld66:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TIMAGEHANDLERSMANAGER
_INIT_FPIMAGE_TIMAGEHANDLERSMANAGER:
	.byte	15,21
	.ascii	"TImageHandlersManager"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TIMAGEHANDLERSMANAGER
_RTTI_FPIMAGE_TIMAGEHANDLERSMANAGER:
	.byte	15,21
	.ascii	"TImageHandlersManager"
	.long	_VMT_FPIMAGE_TIMAGEHANDLERSMANAGER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TERRORTEXTINDICES
_INIT_FPIMAGE_TERRORTEXTINDICES:
	.byte	3,17
	.ascii	"TErrorTextIndices"
	.byte	5
	.long	0,15,0
	.byte	15
	.ascii	"StrInvalidIndex"
	.byte	17
	.ascii	"StrNoImageToWrite"
	.byte	9
	.ascii	"StrNoFile"
	.byte	11
	.ascii	"StrNoStream"
	.byte	10
	.ascii	"StrPalette"
	.byte	9
	.ascii	"StrImageX"
	.byte	9
	.ascii	"StrImageY"
	.byte	13
	.ascii	"StrImageExtra"
	.byte	19
	.ascii	"StrTypeAlreadyExist"
	.byte	25
	.ascii	"StrTypeReaderAlreadyExist"
	.byte	25
	.ascii	"StrTypeWriterAlreadyExist"
	.byte	20
	.ascii	"StrCantDetermineType"
	.byte	23
	.ascii	"StrNoCorrectReaderFound"
	.byte	16
	.ascii	"StrReadWithError"
	.byte	17
	.ascii	"StrWriteWithError"
	.byte	21
	.ascii	"StrNoPaletteAvailable"
	.byte	7
	.ascii	"FPimage"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TERRORTEXTINDICES
_RTTI_FPIMAGE_TERRORTEXTINDICES:
	.byte	3,17
	.ascii	"TErrorTextIndices"
	.byte	5
	.long	0,15,0
	.byte	15
	.ascii	"StrInvalidIndex"
	.byte	17
	.ascii	"StrNoImageToWrite"
	.byte	9
	.ascii	"StrNoFile"
	.byte	11
	.ascii	"StrNoStream"
	.byte	10
	.ascii	"StrPalette"
	.byte	9
	.ascii	"StrImageX"
	.byte	9
	.ascii	"StrImageY"
	.byte	13
	.ascii	"StrImageExtra"
	.byte	19
	.ascii	"StrTypeAlreadyExist"
	.byte	25
	.ascii	"StrTypeReaderAlreadyExist"
	.byte	25
	.ascii	"StrTypeWriterAlreadyExist"
	.byte	20
	.ascii	"StrCantDetermineType"
	.byte	23
	.ascii	"StrNoCorrectReaderFound"
	.byte	16
	.ascii	"StrReadWithError"
	.byte	17
	.ascii	"StrWriteWithError"
	.byte	21
	.ascii	"StrNoPaletteAvailable"
	.byte	7
	.ascii	"FPimage"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TERRORTEXTINDICES_s2o
_RTTI_FPIMAGE_TERRORTEXTINDICES_s2o:
	.long	16,11
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+205
	.long	7
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+119
	.long	5
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+99
	.long	6
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+109
	.long	0
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+32
	.long	12
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+226
	.long	2
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+66
	.long	1
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+48
	.long	15
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+285
	.long	3
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+76
	.long	4
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+88
	.long	13
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+250
	.long	8
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+133
	.long	9
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+153
	.long	10
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+179
	.long	14
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+267

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TERRORTEXTINDICES_o2s
_RTTI_FPIMAGE_TERRORTEXTINDICES_o2s:
	.long	0
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+32
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+48
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+66
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+76
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+88
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+99
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+109
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+119
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+133
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+153
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+179
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+205
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+226
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+250
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+267
	.long	_RTTI_FPIMAGE_TERRORTEXTINDICES+285

.const_data
	.align 2
.globl	_INIT_FPIMAGE_DEF158
_INIT_FPIMAGE_DEF158:
	.byte	12
	.ascii	"\000"
	.long	4,16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TGRAYCONVMATRIX
_INIT_FPIMAGE_TGRAYCONVMATRIX:
	.byte	13,15
	.ascii	"TGrayConvMatrix"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TGRAYCONVMATRIX
_RTTI_FPIMAGE_TGRAYCONVMATRIX:
	.byte	13,15
	.ascii	"TGrayConvMatrix"
	.long	12,3
	.long	_RTTI_SYSTEM_SINGLE
	.long	0
	.long	_RTTI_SYSTEM_SINGLE
	.long	4
	.long	_RTTI_SYSTEM_SINGLE
	.long	8

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGDESC
_INIT_FPIMAGE_TFPCOMPACTIMGDESC:
	.byte	13,17
	.ascii	"TFPCompactImgDesc"
	.long	6,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGDESC
_RTTI_FPIMAGE_TFPCOMPACTIMGDESC:
	.byte	13,17
	.ascii	"TFPCompactImgDesc"
	.long	6,3
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	4

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld68
_$FPIMAGE$_Ld68:
	.short	0
	.long	_$FPIMAGE$_Ld69
	.align 2
.globl	_$FPIMAGE$_Ld69
_$FPIMAGE$_Ld69:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGBASE
_INIT_FPIMAGE_TFPCOMPACTIMGBASE:
	.byte	15,17
	.ascii	"TFPCompactImgBase"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
_RTTI_FPIMAGE_TFPCOMPACTIMGBASE:
	.byte	15,17
	.ascii	"TFPCompactImgBase"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGBASECLASS
_INIT_FPIMAGE_TFPCOMPACTIMGBASECLASS:
	.byte	0
	.ascii	"\026TFPCompactImgBaseClass"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGBASECLASS
_RTTI_FPIMAGE_TFPCOMPACTIMGBASECLASS:
	.byte	0
	.ascii	"\026TFPCompactImgBaseClass"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld71
_$FPIMAGE$_Ld71:
	.short	0
	.long	_$FPIMAGE$_Ld72
	.align 2
.globl	_$FPIMAGE$_Ld72
_$FPIMAGE$_Ld72:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT
_INIT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT:
	.byte	15,22
	.ascii	"TFPCompactImgGray16Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAY16BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGGRAY16BIT:
	.byte	15,22
	.ascii	"TFPCompactImgGray16Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BITVALUE
_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BITVALUE:
	.byte	13,32
	.ascii	"TFPCompactImgGrayAlpha16BitValue"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BITVALUE
_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BITVALUE:
	.byte	13,32
	.ascii	"TFPCompactImgGrayAlpha16BitValue"
	.long	4,2
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOMPACTIMGGRAYALPHA16BITVALUE
_INIT_FPIMAGE_PFPCOMPACTIMGGRAYALPHA16BITVALUE:
	.byte	0
	.ascii	" PFPCompactImgGrayAlpha16BitValue"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOMPACTIMGGRAYALPHA16BITVALUE
_RTTI_FPIMAGE_PFPCOMPACTIMGGRAYALPHA16BITVALUE:
	.byte	0
	.ascii	" PFPCompactImgGrayAlpha16BitValue"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld74
_$FPIMAGE$_Ld74:
	.short	0
	.long	_$FPIMAGE$_Ld75
	.align 2
.globl	_$FPIMAGE$_Ld75
_$FPIMAGE$_Ld75:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT
_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT:
	.byte	15,27
	.ascii	"TFPCompactImgGrayAlpha16Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT:
	.byte	15,27
	.ascii	"TFPCompactImgGrayAlpha16Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld77
_$FPIMAGE$_Ld77:
	.short	0
	.long	_$FPIMAGE$_Ld78
	.align 2
.globl	_$FPIMAGE$_Ld78
_$FPIMAGE$_Ld78:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT
_INIT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT:
	.byte	15,21
	.ascii	"TFPCompactImgGray8Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAY8BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGGRAY8BIT:
	.byte	15,21
	.ascii	"TFPCompactImgGray8Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BITVALUE
_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BITVALUE:
	.byte	13,31
	.ascii	"TFPCompactImgGrayAlpha8BitValue"
	.long	2,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BITVALUE
_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BITVALUE:
	.byte	13,31
	.ascii	"TFPCompactImgGrayAlpha8BitValue"
	.long	2,2
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOMPACTIMGGRAYALPHA8BITVALUE
_INIT_FPIMAGE_PFPCOMPACTIMGGRAYALPHA8BITVALUE:
	.byte	0
	.ascii	"\037PFPCompactImgGrayAlpha8BitValue"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOMPACTIMGGRAYALPHA8BITVALUE
_RTTI_FPIMAGE_PFPCOMPACTIMGGRAYALPHA8BITVALUE:
	.byte	0
	.ascii	"\037PFPCompactImgGrayAlpha8BitValue"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld80
_$FPIMAGE$_Ld80:
	.short	0
	.long	_$FPIMAGE$_Ld81
	.align 2
.globl	_$FPIMAGE$_Ld81
_$FPIMAGE$_Ld81:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT
_INIT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT:
	.byte	15,26
	.ascii	"TFPCompactImgGrayAlpha8Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT:
	.byte	15,26
	.ascii	"TFPCompactImgGrayAlpha8Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGBA8BITVALUE
_INIT_FPIMAGE_TFPCOMPACTIMGRGBA8BITVALUE:
	.byte	13,26
	.ascii	"TFPCompactImgRGBA8BitValue"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA8BITVALUE
_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA8BITVALUE:
	.byte	13,26
	.ascii	"TFPCompactImgRGBA8BitValue"
	.long	4,4
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	3

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOMPACTIMGRGBA8BITVALUE
_INIT_FPIMAGE_PFPCOMPACTIMGRGBA8BITVALUE:
	.byte	0
	.ascii	"\032PFPCompactImgRGBA8BitValue"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOMPACTIMGRGBA8BITVALUE
_RTTI_FPIMAGE_PFPCOMPACTIMGRGBA8BITVALUE:
	.byte	0
	.ascii	"\032PFPCompactImgRGBA8BitValue"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld83
_$FPIMAGE$_Ld83:
	.short	0
	.long	_$FPIMAGE$_Ld84
	.align 2
.globl	_$FPIMAGE$_Ld84
_$FPIMAGE$_Ld84:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT
_INIT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT:
	.byte	15,21
	.ascii	"TFPCompactImgRGBA8Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA8BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA8BIT:
	.byte	15,21
	.ascii	"TFPCompactImgRGBA8Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGB8BITVALUE
_INIT_FPIMAGE_TFPCOMPACTIMGRGB8BITVALUE:
	.byte	13,25
	.ascii	"TFPCompactImgRGB8BitValue"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGB8BITVALUE
_RTTI_FPIMAGE_TFPCOMPACTIMGRGB8BITVALUE:
	.byte	13,25
	.ascii	"TFPCompactImgRGB8BitValue"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOMPACTIMGRGB8BITVALUE
_INIT_FPIMAGE_PFPCOMPACTIMGRGB8BITVALUE:
	.byte	0
	.ascii	"\031PFPCompactImgRGB8BitValue"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOMPACTIMGRGB8BITVALUE
_RTTI_FPIMAGE_PFPCOMPACTIMGRGB8BITVALUE:
	.byte	0
	.ascii	"\031PFPCompactImgRGB8BitValue"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld86
_$FPIMAGE$_Ld86:
	.short	0
	.long	_$FPIMAGE$_Ld87
	.align 2
.globl	_$FPIMAGE$_Ld87
_$FPIMAGE$_Ld87:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGB8BIT
_INIT_FPIMAGE_TFPCOMPACTIMGRGB8BIT:
	.byte	15,20
	.ascii	"TFPCompactImgRGB8Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGB8BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGRGB8BIT:
	.byte	15,20
	.ascii	"TFPCompactImgRGB8Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGRGB8BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGB16BITVALUE
_INIT_FPIMAGE_TFPCOMPACTIMGRGB16BITVALUE:
	.byte	13,26
	.ascii	"TFPCompactImgRGB16BitValue"
	.long	6,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGB16BITVALUE
_RTTI_FPIMAGE_TFPCOMPACTIMGRGB16BITVALUE:
	.byte	13,26
	.ascii	"TFPCompactImgRGB16BitValue"
	.long	6,3
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_SYSTEM_WORD
	.long	4

.const_data
	.align 2
.globl	_INIT_FPIMAGE_PFPCOMPACTIMGRGB16BITVALUE
_INIT_FPIMAGE_PFPCOMPACTIMGRGB16BITVALUE:
	.byte	0
	.ascii	"\032PFPCompactImgRGB16BitValue"

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_PFPCOMPACTIMGRGB16BITVALUE
_RTTI_FPIMAGE_PFPCOMPACTIMGRGB16BITVALUE:
	.byte	0
	.ascii	"\032PFPCompactImgRGB16BitValue"

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld89
_$FPIMAGE$_Ld89:
	.short	0
	.long	_$FPIMAGE$_Ld90
	.align 2
.globl	_$FPIMAGE$_Ld90
_$FPIMAGE$_Ld90:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGB16BIT
_INIT_FPIMAGE_TFPCOMPACTIMGRGB16BIT:
	.byte	15,21
	.ascii	"TFPCompactImgRGB16Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGB16BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGRGB16BIT:
	.byte	15,21
	.ascii	"TFPCompactImgRGB16Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGRGB16BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
	.short	0

.const_data
	.align 2
.globl	_$FPIMAGE$_Ld92
_$FPIMAGE$_Ld92:
	.short	0
	.long	_$FPIMAGE$_Ld93
	.align 2
.globl	_$FPIMAGE$_Ld93
_$FPIMAGE$_Ld93:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT
_INIT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT:
	.byte	15,22
	.ascii	"TFPCompactImgRGBA16Bit"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA16BIT
_RTTI_FPIMAGE_TFPCOMPACTIMGRGBA16BIT:
	.byte	15,22
	.ascii	"TFPCompactImgRGBA16Bit"
	.long	_VMT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT
	.long	_RTTI_FPIMAGE_TFPCOMPACTIMGBASE
	.short	0
	.byte	7
	.ascii	"FPimage"
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
L_TC_FPIMAGE_ERRORTEXT$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_ERRORTEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_FPIMAGEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMAGE$_Ld33$non_lazy_ptr:
.indirect_symbol _$FPIMAGE$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCUSTOMIMAGE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCUSTOMIMAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TIHDATA$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TIHDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPMEMORYIMAGE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPMEMORYIMAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMAGE$_Ld35$non_lazy_ptr:
.indirect_symbol _$FPIMAGE$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLBLACK$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLNAVY$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLNAVY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLBLUE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLMAROON$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLMAROON
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLPURPLE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLPURPLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLDKGREEN$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLDKGREEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLRED$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLRED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLTEAL$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLTEAL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLFUCHSIA$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLFUCHSIA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLOLIVE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLOLIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLGRAY$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLGRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLLIME$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLLIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLAQUA$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLAQUA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLSILVER$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLSILVER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLYELLOW$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLYELLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLWHITE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLWHITE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_GRAYCONVMATRIX$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_GRAYCONVMATRIX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMAGE$_Ld37$non_lazy_ptr:
.indirect_symbol _$FPIMAGE$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMAGE$_Ld38$non_lazy_ptr:
.indirect_symbol _$FPIMAGE$_Ld38
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA8BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGGRAYALPHA16BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGGRAY8BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGGRAY16BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGRGBA8BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGRGBA16BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGRGB8BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGRGB8BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGRGB16BIT$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGRGB16BIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPCOMPACTIMGBASE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPCOMPACTIMGBASE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPIMAGE$_Ld39$non_lazy_ptr:
.indirect_symbol _$FPIMAGE$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TIMAGEHANDLERSMANAGER$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TIMAGEHANDLERSMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_GCM_JPEG$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_GCM_JPEG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPIMAGE_DEF158$non_lazy_ptr:
.indirect_symbol _INIT_FPIMAGE_DEF158
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

