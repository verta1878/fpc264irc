# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE
_DBF_PGFILE_TPAGEDFILE_$__CREATE$$TPAGEDFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
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
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	56(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,56(%esi)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	$0,24(%eax)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-8(%ebp),%eax
	movb	$0,44(%eax)
	movl	-8(%ebp),%eax
	movb	$0,46(%eax)
	movl	-8(%ebp),%eax
	movb	$1,47(%eax)
	movl	-8(%ebp),%eax
	movb	$0,52(%eax)
	movl	-8(%ebp),%eax
	movb	$7,48(%eax)
	movl	-8(%ebp),%eax
	movb	$0,49(%eax)
	movl	-8(%ebp),%eax
	movb	$0,51(%eax)
	movl	-8(%ebp),%eax
	movb	$1,53(%eax)
	movl	-8(%ebp),%eax
	movb	$0,54(%eax)
	movl	-8(%ebp),%eax
	movl	$0,40(%eax)
	movl	-8(%ebp),%eax
	movl	$0,60(%eax)
	movl	-8(%ebp),%eax
	movb	$0,64(%eax)
	movl	-8(%ebp),%eax
	movb	$0,88(%eax)
	movl	-8(%ebp),%eax
	movl	$0,76(%eax)
	movl	-8(%ebp),%eax
	movl	$0,84(%eax)
	movl	-8(%ebp),%eax
	movl	$0,72(%eax)
	movl	-8(%ebp),%eax
	movb	$0,89(%eax)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj76
	jmp	Lj75
Lj76:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj74
	jmp	Lj75
Lj74:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj75:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj80
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj81
	jmp	Lj82
Lj81:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj82:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj80:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj79
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj79:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__DESTROY
_DBF_PGFILE_TPAGEDFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj89
	jmp	Lj90
Lj89:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj90:
	movl	-8(%ebp),%eax
	cmpb	$0,54(%eax)
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES$stub
Lj94:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-8(%ebp),%eax
	movb	$0,54(%eax)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj101
	jmp	Lj102
Lj101:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj102:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj111
	jmp	Lj110
Lj111:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj109
	jmp	Lj110
Lj109:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj110:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__OPENFILE
_DBF_PGFILE_TPAGEDFILE_$__OPENFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj115
Lj115:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,44(%eax)
	jne	Lj116
	jmp	Lj117
Lj116:
	jmp	Lj114
Lj117:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	movb	%al,50(%edx)
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj122
Lj122:
	jnc	Lj120
	jmp	Lj121
Lj120:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj123
	jmp	Lj124
Lj123:
	movl	-4(%ebp),%eax
	cmpb	$0,51(%eax)
	jne	Lj127
	jmp	Lj128
Lj127:
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	cmpb	$4,%al
	jb	Lj130
	subb	$4,%al
	je	Lj131
	subb	$2,%al
	jb	Lj130
	subb	$1,%al
	jbe	Lj132
	jmp	Lj130
Lj131:
	movl	-4(%ebp),%eax
	movb	$3,48(%eax)
	jmp	Lj129
Lj132:
	movl	-4(%ebp),%eax
	movb	$5,48(%eax)
	jmp	Lj129
Lj130:
Lj129:
Lj128:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj137
	jmp	Lj138
Lj137:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_FILECREATE$ANSISTRING$$LONGINT$stub
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	jmp	Lj145
Lj138:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr-Lj115(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj115(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj115(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj145:
Lj124:
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	cmpb	$3,%al
	jb	Lj157
	subb	$3,%al
	je	Lj158
	decb	%al
	je	Lj159
	decb	%al
	je	Lj160
	decb	%al
	je	Lj161
	jmp	Lj157
Lj158:
	movw	$34,-6(%ebp)
	jmp	Lj156
Lj159:
	movw	$34,-6(%ebp)
	jmp	Lj156
Lj160:
	movw	$66,-6(%ebp)
	jmp	Lj156
Lj161:
	movw	$66,-6(%ebp)
	jmp	Lj156
Lj157:
	movw	$64,-6(%ebp)
Lj156:
	movw	-6(%ebp),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj115(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj182
	jmp	Lj183
Lj182:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj183:
	jmp	Lj190
Lj121:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj191
	jmp	Lj192
Lj191:
	movl	-4(%ebp),%eax
	movb	$1,48(%eax)
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj115(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
Lj192:
Lj190:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	movl	-4(%ebp),%edx
	movb	%al,52(%edx)
	movl	-4(%ebp),%eax
	movb	$1,44(%eax)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE$stub
Lj114:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE
_DBF_PGFILE_TPAGEDFILE_$__CLOSEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,44(%eax)
	jne	Lj215
	jmp	Lj216
Lj215:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER$stub
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj223
Lj223:
	jnc	Lj221
	jmp	Lj222
Lj221:
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	call	L_DBF_COMMON_FREEANDNIL$formal$stub
Lj222:
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	call	L_DBF_COMMON_FREEMEMANDNIL$POINTER$stub
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	50(%eax),%al
	movb	%al,48(%edx)
	movl	-4(%ebp),%eax
	movb	$0,44(%eax)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
Lj216:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__DELETEFILE
_DBF_PGFILE_TPAGEDFILE_$__DELETEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj236
	jmp	Lj237
Lj236:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
Lj237:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__FILECREATED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj241
Lj241:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%edx
	movl	L_TC_DBF_PGFILE_TPAGEDFILE_$_FILECREATED$$BOOLEAN_CREATIONMODES$non_lazy_ptr-Lj241(%ecx),%eax
	movb	(%eax,%edx,1),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj245
Lj245:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%edx
	movl	L_TC_DBF_PGFILE_TPAGEDFILE_$_ISSHAREDACCESS$$BOOLEAN_SHAREDACCESSMODES$non_lazy_ptr-Lj245(%ecx),%eax
	movb	(%eax,%edx,1),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS
_DBF_PGFILE_TPAGEDFILE_$__CHECKEXCLUSIVEACCESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj249
Lj249:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj250
	jmp	Lj251
Lj250:
	movl	L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr-Lj249(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr-Lj249(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj249(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj251:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	47(%eax),%al
	testb	%al,%al
	je	Lj262
	jmp	Lj263
Lj262:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj266
Lj263:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj267
	jmp	Lj268
Lj267:
	movl	$0,-12(%ebp)
	jmp	Lj271
Lj268:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	decl	%edx
	movl	20(%eax),%ebx
	imull	%edx,%ebx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%ecx
	movl	12(%edx),%eax
	addl	%eax,%ecx
	addl	%ecx,%ebx
	movl	%ebx,-12(%ebp)
Lj271:
Lj266:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__CHECKCACHEDSIZE$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__CHECKCACHEDSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj276
	jmp	Lj277
Lj276:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movb	$1,45(%eax)
Lj277:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	.align 2
Lj284:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj295
	jmp	Lj296
Lj295:
	call	L_DBF_WTIL_GETLASTERROR$$LONGINT$stub
	cmpl	$13,%eax
	je	Lj297
	jmp	Lj298
Lj297:
	movl	$1,%eax
	call	L_SYSUTILS_SLEEP$LONGWORD$stub
	jmp	Lj301
Lj298:
	jmp	Lj282
Lj301:
	jmp	Lj302
Lj296:
	jmp	Lj282
Lj302:
	jmp	Lj284
Lj282:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__UPDATECACHEDSIZE$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__UPDATECACHEDSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj305
	jmp	Lj306
Lj305:
	.align 2
Lj307:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	28(%eax),%eax
	addl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj309
	jmp	Lj307
Lj309:
Lj306:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER
_DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj314
	jmp	Lj313
Lj314:
	movl	-4(%ebp),%eax
	cmpb	$0,88(%eax)
	jne	Lj312
	jmp	Lj313
Lj312:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	60(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT$stub
	movl	-4(%ebp),%eax
	movb	$0,88(%eax)
Lj313:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SINGLEREADRECORD$LONGINT$POINTER$$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SINGLEREADRECORD$LONGINT$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SINGLEWRITERECORD$LONGINT$POINTER
_DBF_PGFILE_TPAGEDFILE_$__SINGLEWRITERECORD$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SYNCHRONIZEBUFFER$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SYNCHRONIZEBUFFER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,68(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,72(%edx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	72(%eax),%ecx
	movl	84(%edx),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	cmpl	32(%eax),%ecx
	jg	Lj367
	jmp	Lj368
Lj367:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%eax),%ecx
	movl	72(%edx),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,80(%eax)
	jmp	Lj371
Lj368:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	%eax,80(%edx)
Lj371:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,76(%edx)
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	60(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,80(%edx)
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__ISRECORDPRESENT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	testb	%al,%al
	je	Lj388
	jmp	Lj390
Lj390:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj388
	jmp	Lj389
Lj388:
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj389:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj399
	jmp	Lj398
Lj399:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj397
	jmp	Lj398
Lj397:
	movb	$1,-9(%ebp)
	jmp	Lj400
Lj398:
	movb	$0,-9(%ebp)
Lj400:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__READRECORD$LONGINT$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj403
	jmp	Lj404
Lj403:
	movl	-12(%ebp),%eax
	movl	68(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	imull	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj410
	jmp	Lj408
Lj410:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj409
	jmp	Lj408
Lj409:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	80(%eax),%edx
	jle	Lj407
	jmp	Lj408
Lj407:
	jmp	Lj411
Lj408:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SYNCHRONIZEBUFFER$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	80(%edx),%eax
	jg	Lj416
	jmp	Lj417
Lj416:
	movl	$0,-16(%ebp)
	jmp	Lj401
Lj417:
	movl	$0,-20(%ebp)
Lj411:
	movl	-12(%ebp),%eax
	movl	60(%eax),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%edx
	movl	16(%edx),%ecx
	movl	-8(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj430
Lj404:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SINGLEREADRECORD$LONGINT$POINTER$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj430:
Lj401:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER
_DBF_PGFILE_TPAGEDFILE_$__WRITERECORD$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj441
	jmp	Lj442
Lj441:
	movl	-12(%ebp),%eax
	movl	68(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	imull	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj448
	jmp	Lj446
Lj448:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj447
	jmp	Lj446
Lj447:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	cmpl	-16(%ebp),%eax
	jge	Lj445
	jmp	Lj446
Lj445:
	movl	-12(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj449
	jmp	Lj450
Lj449:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,76(%edx)
Lj450:
	jmp	Lj453
Lj446:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SYNCHRONIZEBUFFER$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%ecx
	movl	20(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-16(%ebp)
Lj453:
	movl	-12(%ebp),%eax
	movl	60(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	leal	(%ecx,%edx,1),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	$1,88(%eax)
	movl	-12(%ebp),%eax
	movl	72(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UPDATECACHEDSIZE$LONGINT$stub
	jmp	Lj472
Lj442:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__SINGLEWRITERECORD$LONGINT$POINTER$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UPDATECACHEDSIZE$LONGINT$stub
Lj472:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETBUFFERAHEAD$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__SETBUFFERAHEAD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	64(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj487
	jmp	Lj488
Lj487:
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER$stub
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,64(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE$stub
Lj488:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM
_DBF_PGFILE_TPAGEDFILE_$__SETSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj497
	jmp	Lj498
Lj497:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj498:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING
_DBF_PGFILE_TPAGEDFILE_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj503
	movl	-8(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj506
	jmp	Lj507
Lj506:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	56(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,56(%ebx)
Lj507:
Lj503:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj504
	call	LFPC_RERAISE$stub
Lj504:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE
_DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj512
	jmp	Lj513
Lj512:
	movl	-4(%ebp),%eax
	movl	$65536,84(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj516
	jmp	Lj517
Lj516:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	84(%eax),%eax
	cltd
	idivl	20(%ecx)
	movl	-4(%ebp),%eax
	subl	%edx,84(%eax)
Lj517:
	jmp	Lj518
Lj513:
	movl	-4(%ebp),%eax
	movl	$0,84(%eax)
Lj518:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj521
	jmp	Lj522
Lj521:
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj522:
	movl	-4(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj527
	jmp	Lj526
Lj527:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	jne	Lj525
	jmp	Lj526
Lj525:
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	jmp	Lj532
Lj526:
	movl	-4(%ebp),%eax
	movl	$0,60(%eax)
Lj532:
	movl	-4(%ebp),%eax
	movl	$-1,68(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,72(%eax)
	movl	-4(%ebp),%eax
	movb	$0,88(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER
_DBF_PGFILE_TPAGEDFILE_$__WRITEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,46(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj545
	jmp	Lj546
Lj545:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub
Lj546:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER
_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,46(%eax)
	jne	Lj551
	jmp	Lj552
Lj551:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	testl	%eax,%eax
	je	Lj557
	jmp	Lj559
Lj559:
	movl	-4(%ebp),%eax
	cmpb	$0,89(%eax)
	jne	Lj557
	jmp	Lj558
Lj557:
	movb	$1,89(%ebx)
	jmp	Lj566
Lj558:
	movb	$0,89(%ebx)
Lj566:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-4(%ebp),%ecx
	movl	32(%ecx),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	cmpl	%ecx,%edx
	jg	Lj567
	jl	Lj568
	cmpl	%ebx,%eax
	ja	Lj567
	jmp	Lj568
Lj567:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movb	$1,45(%eax)
Lj568:
	movl	-4(%ebp),%eax
	movb	$0,46(%eax)
Lj552:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__READHEADER
_DBF_PGFILE_TPAGEDFILE_$__READHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj583
	jmp	Lj584
Lj583:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-4(%ebp),%ecx
	movl	8(%ecx),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj589
	jmp	Lj590
Lj589:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj595
	jmp	Lj596
Lj595:
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj605
Lj596:
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT$stub
Lj605:
	jmp	Lj612
Lj590:
	movl	$0,-8(%ebp)
Lj612:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	-8(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj584:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE
_DBF_PGFILE_TPAGEDFILE_$__TRYEXCLUSIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj622
Lj622:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	testb	%al,%al
	je	Lj625
	jmp	Lj624
Lj625:
	movl	-4(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj623
	jmp	Lj624
Lj623:
	movl	-4(%ebp),%eax
	movzbl	48(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	L_TC_DBF_PGFILE_TPAGEDFILE_$_TRYEXCLUSIVE_NEWTEMPMODE$non_lazy_ptr-Lj622(%ebx),%edx
	movb	-5(%edx,%eax,1),%al
	movb	%al,49(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%eax
	movb	$4,48(%eax)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj636
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
Lj636:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj638
	movl	L_VMT_CLASSES_EFOPENERROR$non_lazy_ptr-Lj622(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj642
	movl	%eax,-48(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj643
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj643:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj647
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj647:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj638
Lj642:
	call	LFPC_RERAISE$stub
Lj638:
Lj624:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE
_DBF_PGFILE_TPAGEDFILE_$__ENDEXCLUSIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	testb	%al,%al
	jne	Lj650
	jmp	Lj651
Lj650:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	49(%eax),%al
	movb	%al,48(%edx)
	movl	-4(%ebp),%eax
	movb	$0,49(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
Lj651:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__DISABLEFORCECREATE
_DBF_PGFILE_TPAGEDFILE_$__DISABLEFORCECREATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	48(%eax),%al
	cmpb	$3,%al
	jb	Lj663
	subb	$3,%al
	je	Lj664
	subb	$2,%al
	je	Lj665
	jmp	Lj663
Lj664:
	movl	-4(%ebp),%eax
	movb	$4,48(%eax)
	jmp	Lj662
Lj665:
	movl	-4(%ebp),%eax
	movb	$6,48(%eax)
	jmp	Lj662
Lj663:
Lj662:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SETHEADEROFFSET$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj672
	jmp	Lj673
Lj672:
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
Lj673:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SETHEADERSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj680
	jmp	Lj681
Lj680:
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj686
	jmp	Lj685
Lj686:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj684
	jmp	Lj685
Lj684:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj685:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj691
	jmp	Lj692
Lj691:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	leal	40(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj692:
	movl	-8(%ebp),%eax
	movb	$1,45(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub
Lj681:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SETRECORDSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj703
	jmp	Lj704
Lj703:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%eax
	movb	$1,45(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__RECALCPAGESPERRECORD$stub
Lj704:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETPAGESIZE$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SETPAGESIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj715
	jmp	Lj716
Lj715:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movb	$1,45(%eax)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__RECALCPAGESPERRECORD$stub
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE$stub
Lj716:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__RECALCPAGESPERRECORD
_DBF_PGFILE_TPAGEDFILE_$__RECALCPAGESPERRECORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj727
	jmp	Lj728
Lj727:
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	jmp	Lj731
Lj728:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	16(%eax),%eax
	cltd
	idivl	20(%ecx)
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
Lj731:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj736
	jmp	Lj737
Lj736:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj742
	jmp	Lj743
Lj742:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movb	$1,45(%eax)
Lj743:
Lj737:
	movl	-4(%ebp),%eax
	cmpb	$0,45(%eax)
	jne	Lj748
	jmp	Lj749
Lj748:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj750
	jmp	Lj752
Lj752:
	movl	-4(%ebp),%eax
	movb	44(%eax),%al
	testb	%al,%al
	je	Lj750
	jmp	Lj751
Lj750:
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	jmp	Lj755
Lj751:
	movl	-4(%ebp),%eax
	cmpb	$0,47(%eax)
	jne	Lj756
	jmp	Lj757
Lj756:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%eax),%eax
	movl	12(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%ecx
	cltd
	idivl	20(%ecx)
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	jmp	Lj760
Lj757:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	32(%eax),%eax
	cltd
	idivl	20(%ecx)
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
Lj760:
Lj755:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$0,%eax
	jl	Lj763
	jmp	Lj764
Lj763:
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
Lj764:
	movl	-4(%ebp),%eax
	movb	$0,45(%eax)
Lj749:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__SETRECORDCOUNT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jne	Lj773
	jmp	Lj774
Lj773:
	movl	-8(%ebp),%eax
	cmpb	$0,47(%eax)
	jne	Lj777
	jmp	Lj778
Lj777:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	12(%eax),%ecx
	movl	8(%ebx),%eax
	addl	%eax,%ecx
	addl	%ecx,%edx
	movl	-8(%ebp),%eax
	movl	%edx,32(%eax)
	jmp	Lj781
Lj778:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,32(%eax)
Lj781:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj774:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__SETPAGEOFFSETBYHEADER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	47(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj792
	jmp	Lj793
Lj792:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,47(%eax)
	movl	-8(%ebp),%eax
	movb	$1,45(%eax)
Lj793:
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__WRITECHAR$BYTE
_DBF_PGFILE_TPAGEDFILE_$__WRITECHAR$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	-4(%ebp),%edx
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	testl	%eax,%eax
	je	Lj800
	jmp	Lj802
Lj802:
	movl	-8(%ebp),%eax
	cmpb	$0,89(%eax)
	jne	Lj800
	jmp	Lj801
Lj800:
	movb	$1,89(%esi)
	jmp	Lj809
Lj801:
	movb	$0,89(%esi)
Lj809:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__READCHAR$$BYTE
_DBF_PGFILE_TPAGEDFILE_$__READCHAR$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	-5(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT$stub
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__FLUSH
_DBF_PGFILE_TPAGEDFILE_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKCACHEDSIZE$LONGINT$stub
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CHECKCACHEDSIZE$LONGINT$stub
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	testl	%eax,%eax
	je	Lj848
	jmp	Lj850
Lj850:
	movl	-12(%ebp),%eax
	cmpb	$0,89(%eax)
	jne	Lj848
	jmp	Lj849
Lj848:
	movb	$1,89(%ebx)
	jmp	Lj857
Lj849:
	movb	$0,89(%ebx)
Lj857:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__RESETERROR
_DBF_PGFILE_TPAGEDFILE_$__RESETERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,89(%eax)
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__LOCKSECTION$LONGWORD$LONGWORD$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-14(%ebp)
	.align 2
Lj866:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$0,%ecx
	call	L_DBF_WTIL_LOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj885
	jmp	Lj884
Lj885:
	cmpb	$0,8(%ebp)
	jne	Lj883
	jmp	Lj884
Lj883:
	call	L_DBF_WTIL_GETLASTERROR$$LONGINT$stub
	cmpl	$13,%eax
	je	Lj886
	jmp	Lj887
Lj886:
	movl	$10,%eax
	call	L_SYSUTILS_SLEEP$LONGWORD$stub
	jmp	Lj890
Lj887:
	movb	$1,-14(%ebp)
Lj890:
Lj884:
	cmpb	$0,-13(%ebp)
	jne	Lj868
	jmp	Lj894
Lj894:
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj868
	jmp	Lj893
Lj893:
	cmpb	$0,-14(%ebp)
	jne	Lj868
	jmp	Lj866
Lj868:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__UNLOCKSECTION$LONGWORD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	$0,%ecx
	call	L_DBF_WTIL_UNLOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__LOCKALLPAGES$BOOLEAN$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__LOCKALLPAGES$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj915
	jmp	Lj914
Lj915:
	movl	-8(%ebp),%eax
	movb	54(%eax),%al
	testb	%al,%al
	je	Lj913
	jmp	Lj914
Lj913:
	movl	-8(%ebp),%eax
	cmpb	$0,53(%eax)
	jne	Lj916
	jmp	Lj917
Lj916:
	movl	$1147483647,-16(%ebp)
	movl	$1000000001,-20(%ebp)
	jmp	Lj922
Lj917:
	movl	$0,-16(%ebp)
	movl	$2147483647,-20(%ebp)
Lj922:
	movb	-4(%ebp),%al
	movb	%al,(%esp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
	movb	%al,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	-9(%ebp),%dl
	movb	%dl,54(%eax)
	jmp	Lj939
Lj914:
	movb	$1,-9(%ebp)
Lj939:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES
_DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj946
	jmp	Lj945
Lj946:
	movl	-4(%ebp),%eax
	cmpb	$0,54(%eax)
	jne	Lj944
	jmp	Lj945
Lj944:
	movl	-4(%ebp),%eax
	cmpb	$0,53(%eax)
	jne	Lj947
	jmp	Lj948
Lj947:
	movl	$1147483647,-8(%ebp)
	movl	$1000000001,-12(%ebp)
	jmp	Lj953
Lj948:
	movl	$0,-8(%ebp)
	movl	$2147483647,-12(%ebp)
Lj953:
	movl	-4(%ebp),%esi
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	testb	%al,%al
	seteb	54(%esi)
Lj945:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN
_DBF_PGFILE_TPAGEDFILE_$__LOCKPAGE$LONGINT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj970
	jmp	Lj969
Lj970:
	movl	-12(%ebp),%eax
	movb	54(%eax),%al
	testb	%al,%al
	je	Lj968
	jmp	Lj969
Lj968:
	movl	-12(%ebp),%eax
	cmpb	$0,53(%eax)
	jne	Lj971
	jmp	Lj972
Lj971:
	movl	-4(%ebp),%edx
	movl	$2147483647,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	$1,-24(%ebp)
	jmp	Lj977
Lj972:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-24(%ebp)
Lj977:
	movb	-8(%ebp),%al
	movb	%al,(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
	movb	%al,-13(%ebp)
	jmp	Lj996
Lj969:
	movb	$1,-13(%ebp)
Lj996:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT
_DBF_PGFILE_TPAGEDFILE_$__UNLOCKPAGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj1003
	jmp	Lj1002
Lj1003:
	movl	-8(%ebp),%eax
	movb	54(%eax),%al
	testb	%al,%al
	je	Lj1001
	jmp	Lj1002
Lj1001:
	movl	-8(%ebp),%eax
	cmpb	$0,53(%eax)
	jne	Lj1004
	jmp	Lj1005
Lj1004:
	movl	-4(%ebp),%edx
	movl	$2147483647,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	$1,-16(%ebp)
	jmp	Lj1010
Lj1005:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
Lj1010:
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
Lj1002:
	movl	-20(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$DBF_PGFILE$_Ld1
_$DBF_PGFILE$_Ld1:
	.byte	10
	.ascii	"TPagedFile"

.const_data
	.align 2
.globl	_VMT_DBF_PGFILE_TPAGEDFILE
_VMT_DBF_PGFILE_TPAGEDFILE:
	.long	92,-92
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$DBF_PGFILE$_Ld1
	.long	0,0
	.long	_$DBF_PGFILE$_Ld2
	.long	_RTTI_DBF_PGFILE_TPAGEDFILE
	.long	_INIT_DBF_PGFILE_TPAGEDFILE
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_DBF_PGFILE_TPAGEDFILE_$__DESTROY
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
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_DBF_PGFILE
_THREADVARLIST_DBF_PGFILE:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_DBF_PGFILE_TPAGEDFILE_$_FILECREATED$$BOOLEAN_CREATIONMODES
_TC_DBF_PGFILE_TPAGEDFILE_$_FILECREATED$$BOOLEAN_CREATIONMODES:
	.byte	0,1,0,1,0,1,0,0

.data
.globl	_TC_DBF_PGFILE_TPAGEDFILE_$_ISSHAREDACCESS$$BOOLEAN_SHAREDACCESSMODES
_TC_DBF_PGFILE_TPAGEDFILE_$_ISSHAREDACCESS$$BOOLEAN_SHAREDACCESSMODES:
	.byte	0,0,0,0,0,1,1,1

.data
.globl	_TC_DBF_PGFILE_TPAGEDFILE_$_TRYEXCLUSIVE_NEWTEMPMODE
_TC_DBF_PGFILE_TPAGEDFILE_$_TRYEXCLUSIVE_NEWTEMPMODE:
	.byte	6,6,7
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

L_DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UNLOCKALLPAGES
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

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
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

L_SYSUTILS_FILECREATE$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILECREATE$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILECLOSE$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILECLOSE$LONGINT
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

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__ISSHAREDACCESS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UPDATEBUFFERSIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FLUSHHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__FLUSHBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_COMMON_FREEANDNIL$formal$stub:
.indirect_symbol _DBF_COMMON_FREEANDNIL$formal
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

L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
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

L_DBF_WTIL_GETLASTERROR$$LONGINT$stub:
.indirect_symbol _DBF_WTIL_GETLASTERROR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_SLEEP$LONGWORD$stub:
.indirect_symbol _SYSUTILS_SLEEP$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__WRITEBLOCK$POINTER$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CALCPAGEOFFSET$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READBLOCK$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__GETRECORDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SYNCHRONIZEBUFFER$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SYNCHRONIZEBUFFER$LONGINT
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

L_DBF_PGFILE_TPAGEDFILE_$__SINGLEREADRECORD$LONGINT$POINTER$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SINGLEREADRECORD$LONGINT$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__UPDATECACHEDSIZE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__UPDATECACHEDSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__SINGLEWRITERECORD$LONGINT$POINTER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__SINGLEWRITERECORD$LONGINT$POINTER
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

L_DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READ$POINTER$LONGINT$$LONGINT
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

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__READHEADER$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__READHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__RECALCPAGESPERRECORD$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__RECALCPAGESPERRECORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_PGFILE_TPAGEDFILE_$__CHECKCACHEDSIZE$LONGINT$stub:
.indirect_symbol _DBF_PGFILE_TPAGEDFILE_$__CHECKCACHEDSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_LOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL$stub:
.indirect_symbol _DBF_WTIL_LOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DBF_WTIL_UNLOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL$stub:
.indirect_symbol _DBF_WTIL_UNLOCKFILE$LONGINT$LONGWORD$LONGWORD$LONGWORD$LONGWORD$$LONGBOOL
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
.globl	_INIT_DBF_PGFILE_TPAGEDFILEMODE
_INIT_DBF_PGFILE_TPAGEDFILEMODE:
	.byte	3,14
	.ascii	"TPagedFileMode"
	.byte	1
	.long	0,7,0
	.byte	6
	.ascii	"pfNone"
	.byte	14
	.ascii	"pfMemoryCreate"
	.byte	12
	.ascii	"pfMemoryOpen"
	.byte	17
	.ascii	"pfExclusiveCreate"
	.byte	15
	.ascii	"pfExclusiveOpen"
	.byte	17
	.ascii	"pfReadWriteCreate"
	.byte	15
	.ascii	"pfReadWriteOpen"
	.byte	10
	.ascii	"pfReadOnly"
	.byte	10
	.ascii	"dbf_pgfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_PGFILE_TPAGEDFILEMODE
_RTTI_DBF_PGFILE_TPAGEDFILEMODE:
	.byte	3,14
	.ascii	"TPagedFileMode"
	.byte	1
	.long	0,7,0
	.byte	6
	.ascii	"pfNone"
	.byte	14
	.ascii	"pfMemoryCreate"
	.byte	12
	.ascii	"pfMemoryOpen"
	.byte	17
	.ascii	"pfExclusiveCreate"
	.byte	15
	.ascii	"pfExclusiveOpen"
	.byte	17
	.ascii	"pfReadWriteCreate"
	.byte	15
	.ascii	"pfReadWriteOpen"
	.byte	10
	.ascii	"pfReadOnly"
	.byte	10
	.ascii	"dbf_pgfile"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_DBF_PGFILE_TPAGEDFILEMODE_s2o
_RTTI_DBF_PGFILE_TPAGEDFILEMODE_s2o:
	.long	8,3
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+64
	.long	4
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+82
	.long	1
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+36
	.long	2
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+51
	.long	0
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+29
	.long	7
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+132
	.long	5
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+98
	.long	6
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+116

.const_data
	.align 2
.globl	_RTTI_DBF_PGFILE_TPAGEDFILEMODE_o2s
_RTTI_DBF_PGFILE_TPAGEDFILEMODE_o2s:
	.long	0
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+29
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+36
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+51
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+64
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+82
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+98
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+116
	.long	_RTTI_DBF_PGFILE_TPAGEDFILEMODE+132

.const_data
	.align 2
.globl	_INIT_DBF_PGFILE_DEF103
_INIT_DBF_PGFILE_DEF103:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$DBF_PGFILE$_Ld2
_$DBF_PGFILE$_Ld2:
	.short	0
	.long	_$DBF_PGFILE$_Ld3
	.align 2
.globl	_$DBF_PGFILE$_Ld3
_$DBF_PGFILE$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_DBF_PGFILE_TPAGEDFILE
_INIT_DBF_PGFILE_TPAGEDFILE:
	.byte	15,10
	.ascii	"TPagedFile"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	56

.const_data
	.align 2
.globl	_RTTI_DBF_PGFILE_TPAGEDFILE
_RTTI_DBF_PGFILE_TPAGEDFILE:
	.byte	15,10
	.ascii	"TPagedFile"
	.long	_VMT_DBF_PGFILE_TPAGEDFILE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	10
	.ascii	"dbf_pgfile"
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
L_TC_SYSUTILS_EMPTYSTR$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_EMPTYSTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_FILE_NOT_FOUND$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_FILE_NOT_FOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_PGFILE_TPAGEDFILE_$_FILECREATED$$BOOLEAN_CREATIONMODES$non_lazy_ptr:
.indirect_symbol _TC_DBF_PGFILE_TPAGEDFILE_$_FILECREATED$$BOOLEAN_CREATIONMODES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_PGFILE_TPAGEDFILE_$_ISSHAREDACCESS$$BOOLEAN_SHAREDACCESSMODES$non_lazy_ptr:
.indirect_symbol _TC_DBF_PGFILE_TPAGEDFILE_$_ISSHAREDACCESS$$BOOLEAN_SHAREDACCESSMODES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS$non_lazy_ptr:
.indirect_symbol _U_DBF_STR_STRING_NEED_EXCLUSIVE_ACCESS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DBF_COMMON_EDBFERROR$non_lazy_ptr:
.indirect_symbol _VMT_DBF_COMMON_EDBFERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DBF_PGFILE_TPAGEDFILE_$_TRYEXCLUSIVE_NEWTEMPMODE$non_lazy_ptr:
.indirect_symbol _TC_DBF_PGFILE_TPAGEDFILE_$_TRYEXCLUSIVE_NEWTEMPMODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_EFOPENERROR$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_EFOPENERROR
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

