# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GETTEXT_ENDIANFIXMOTABLE$PMOSTRINGTABLE$LONGINT
_GETTEXT_ENDIANFIXMOTABLE$PMOSTRINGTABLE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj8
	decl	-12(%ebp)
	.align 2
Lj9:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%edx,%ecx,8)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-12(%ebp),%ebx
	jg	Lj9
Lj8:
Lj6:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_ENDIANFIXHASHTABLE$PLONGWORDARRAY$LONGINT
_GETTEXT_ENDIANFIXHASHTABLE$PLONGWORDARRAY$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj20
	jmp	Lj21
Lj20:
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj23
	decl	-12(%ebp)
	.align 2
Lj24:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-12(%ebp),%ebx
	jg	Lj24
Lj23:
Lj21:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TMOFILE_$__CREATE$TSTREAM$$TMOFILE
_GETTEXT_TMOFILE_$__CREATE$TSTREAM$$TMOFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	movl	%edi,-132(%ebp)
	call	Lj30
Lj30:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj31
	jmp	Lj32
Lj31:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj32:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	jmp	Lj38
Lj37:
	jmp	Lj29
Lj38:
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj41
	leal	-100(%ebp),%ecx
	leal	-124(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj45
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	leal	-40(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$28,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	-40(%ebp),%eax
	cmpl	$-1794895138,%eax
	jne	Lj60
	jmp	Lj59
Lj60:
	movl	-40(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	cmpl	$-1794895138,%eax
	jne	Lj58
	jmp	Lj59
Lj58:
	movl	L_VMT_GETTEXT_EMOFILEERROR$non_lazy_ptr-Lj30(%ebx),%edx
	movl	L_$GETTEXT$_Ld1$non_lazy_ptr-Lj30(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj30(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj59:
	movl	-40(%ebp),%eax
	cmpl	$-1794895138,%eax
	setneb	-45(%ebp)
	cmpb	$0,-45(%ebp)
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	-36(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	call	L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
Lj72:
	movl	-32(%ebp),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	16(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-32(%ebp),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	20(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-32(%ebp),%edx
	shll	$2,%edx
	movl	-12(%ebp),%eax
	leal	24(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-32(%ebp),%edx
	shll	$2,%edx
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-32(%ebp),%eax
	shll	$3,%eax
	movl	-4(%ebp),%edi
	movl	-4(%ebp),%ecx
	movl	(%ecx),%esi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	*128(%esi)
	cmpb	$0,-45(%ebp)
	jne	Lj123
	jmp	Lj124
Lj123:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_GETTEXT_ENDIANFIXMOTABLE$PMOSTRINGTABLE$LONGINT$stub
Lj124:
	movl	-24(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-32(%ebp),%eax
	shll	$3,%eax
	movl	-4(%ebp),%edi
	movl	-4(%ebp),%ecx
	movl	(%ecx),%esi
	movl	%eax,%ecx
	movl	%edi,%eax
	call	*128(%esi)
	cmpb	$0,-45(%ebp)
	jne	Lj139
	jmp	Lj140
Lj139:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_GETTEXT_ENDIANFIXMOTABLE$PMOSTRINGTABLE$LONGINT$stub
Lj140:
	movl	-12(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%esi
	decl	%esi
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%esi
	jl	Lj148
	decl	-44(%ebp)
	.align 2
Lj149:
	incl	-44(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-44(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-44(%ebp),%edx
	movl	(%eax,%edx,8),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-44(%ebp),%ecx
	leal	(%eax,%ecx,4),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-44(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-44(%ebp),%eax
	movl	(%ecx,%eax,8),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edi
	movl	(%edi),%edi
	call	*128(%edi)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-44(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-44(%ebp),%ecx
	movl	(%eax,%ecx,8),%eax
	movb	$0,(%edx,%eax,1)
	cmpl	-44(%ebp),%esi
	jg	Lj149
Lj148:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%edi
	jl	Lj167
	decl	-44(%ebp)
	.align 2
Lj168:
	incl	-44(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-44(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-44(%ebp),%edx
	movl	(%eax,%edx,8),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-44(%ebp),%ecx
	leal	(%eax,%ecx,4),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-44(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-44(%ebp),%eax
	movl	(%ecx,%eax,8),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	-44(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	-44(%ebp),%ecx
	movl	(%eax,%ecx,8),%eax
	movb	$0,(%edx,%eax,1)
	cmpl	-44(%ebp),%edi
	jg	Lj168
Lj167:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	shll	$2,%edx
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	shll	$2,%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	cmpb	$0,-45(%ebp)
	jne	Lj201
	jmp	Lj202
Lj201:
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	call	L_GETTEXT_ENDIANFIXHASHTABLE$PLONGWORDARRAY$LONGINT$stub
Lj202:
Lj45:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj46
	call	LFPC_RERAISE$stub
Lj46:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj209
	jmp	Lj208
Lj209:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj207
	jmp	Lj208
Lj207:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj208:
Lj41:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj43
	leal	-100(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj213
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj214
	jmp	Lj215
Lj214:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj215:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj213:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj212
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj212:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj43
Lj43:
Lj29:
	movl	-12(%ebp),%eax
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	movl	-132(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE
_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	call	Lj221
Lj221:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj222
	jmp	Lj223
Lj222:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj223:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj228
	jmp	Lj229
Lj228:
	jmp	Lj220
Lj229:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj232
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj236
	movw	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj221(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj249
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_GETTEXT_TMOFILE_$__CREATE$TSTREAM$$TMOFILE$stub
Lj249:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj250
	decl	%eax
	testl	%eax,%eax
	je	Lj251
Lj251:
	call	LFPC_RERAISE$stub
Lj250:
Lj236:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj237
	call	LFPC_RERAISE$stub
Lj237:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj263
	jmp	Lj262
Lj263:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj261
	jmp	Lj262
Lj261:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj262:
Lj232:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj234
	leal	-68(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj267
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj268
	jmp	Lj269
Lj268:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj269:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj267:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj266
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj266:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj234
Lj234:
Lj220:
	movl	-12(%ebp),%eax
	movl	-140(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TMOFILE_$__DESTROY
_GETTEXT_TMOFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj276
	jmp	Lj277
Lj276:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj277:
	movl	-8(%ebp),%eax
	movl	4(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj281
	decl	-12(%ebp)
	.align 2
Lj282:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	Lfpc_freemem$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj282
Lj281:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj303
	jmp	Lj302
Lj303:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj301
	jmp	Lj302
Lj301:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj302:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TMOFILE_$__TRANSLATE$PCHAR$LONGINT$LONGWORD$$ANSISTRING
_GETTEXT_TMOFILE_$__TRANSLATE$PCHAR$LONGINT$LONGWORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj308
	jmp	Lj309
Lj308:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj306
Lj309:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	xorl	%edx,%edx
	divl	8(%ecx)
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	subl	$2,%ecx
	movl	12(%ebp),%eax
	xorl	%edx,%edx
	divl	%ecx
	incl	%edx
	movl	%edx,-20(%ebp)
	jmp	Lj317
	.align 2
Lj316:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj321
	jmp	Lj323
Lj323:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj321
	jmp	Lj322
Lj321:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj306
Lj322:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-8(%ebp),%eax
	je	Lj328
	jmp	Lj327
Lj328:
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	-24(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT$stub
	testl	%eax,%eax
	je	Lj326
	jmp	Lj327
Lj326:
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-24(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	8(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	jmp	Lj306
Lj327:
	movl	-12(%ebp),%eax
	movl	8(%eax),%ebx
	movl	$0,%ecx
	movl	-20(%ebp),%eax
	movl	$0,%edx
	subl	%eax,%ebx
	sbbl	%edx,%ecx
	movl	-16(%ebp),%edx
	movl	$0,%eax
	cmpl	%eax,%ecx
	jl	Lj337
	jg	Lj338
	cmpl	%edx,%ebx
	jbe	Lj337
	jmp	Lj338
Lj337:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	subl	%eax,-16(%ebp)
	jmp	Lj339
Lj338:
	movl	-20(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj339:
Lj317:
	jmp	Lj316
Lj306:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$LONGWORD$$ANSISTRING
_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$LONGWORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj341
Lj341:
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
	jne	Lj342
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj351
	movl	-4(%ecx),%ecx
Lj351:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj354
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj341(%ebx),%eax
	movl	%eax,%edx
Lj354:
	movl	-12(%ebp),%eax
	call	L_GETTEXT_TMOFILE_$__TRANSLATE$PCHAR$LONGINT$LONGWORD$$ANSISTRING$stub
Lj342:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj343
	call	LFPC_RERAISE$stub
Lj343:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$$ANSISTRING
_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj359
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_OBJPAS_HASH$ANSISTRING$$LONGWORD$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$LONGWORD$$ANSISTRING$stub
Lj359:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj360
	call	LFPC_RERAISE$stub
Lj360:
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TRANSLATE$ANSISTRING$ANSISTRING$LONGINT$POINTER$$ANSISTRING
_GETTEXT_TRANSLATE$ANSISTRING$ANSISTRING$LONGINT$POINTER$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj373
Lj373:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj374
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj381
	jmp	Lj382
Lj381:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$GETTEXT$_Ld3$non_lazy_ptr-Lj373(%esi),%eax
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	leal	-60(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-60(%ebp),%edx
	movl	8(%ebp),%ecx
	movl	12(%ebp),%eax
	call	L_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$$ANSISTRING$stub
Lj382:
	cmpb	$0,-13(%ebp)
	jne	Lj395
	jmp	Lj397
Lj397:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj395
	jmp	Lj396
Lj395:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	12(%ebp),%eax
	call	L_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$LONGWORD$$ANSISTRING$stub
Lj396:
Lj374:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj375
	call	LFPC_RERAISE$stub
Lj375:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TRANSLATERESOURCESTRINGS$TMOFILE
_GETTEXT_TRANSLATERESOURCESTRINGS$TMOFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj407
Lj407:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_GETTEXT_TRANSLATE$ANSISTRING$ANSISTRING$LONGINT$POINTER$$ANSISTRING$non_lazy_ptr-Lj407(%ebx),%eax
	movl	-4(%ebp),%edx
	call	L_OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$TMOFILE
_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$TMOFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_GETLANGUAGEIDS$ANSISTRING$ANSISTRING
_GETTEXT_GETLANGUAGEIDS$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj415
Lj415:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj416
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	L_$GETTEXT$_Ld5$non_lazy_ptr-Lj415(%ebx),%eax
	call	L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj427
	movl	-4(%eax),%eax
Lj427:
	testl	%eax,%eax
	je	Lj425
	jmp	Lj426
Lj425:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	L_$GETTEXT$_Ld7$non_lazy_ptr-Lj415(%ebx),%eax
	call	L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj436
	movl	-4(%eax),%eax
Lj436:
	testl	%eax,%eax
	je	Lj434
	jmp	Lj435
Lj434:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	L_$GETTEXT$_Ld9$non_lazy_ptr-Lj415(%ebx),%eax
	call	L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj445
	movl	-4(%eax),%eax
Lj445:
	testl	%eax,%eax
	je	Lj443
	jmp	Lj444
Lj443:
	jmp	Lj416
Lj444:
Lj435:
Lj426:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%esi)
Lj416:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj417
	call	LFPC_RERAISE$stub
Lj417:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TRANSLATERESOURCESTRINGS$ANSISTRING
_GETTEXT_TRANSLATERESOURCESTRINGS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-152(%ebp)
	call	Lj457
Lj457:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-148(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj458
	leal	-16(%ebp),%edx
	leal	-12(%ebp),%eax
	call	L_GETTEXT_GETLANGUAGEIDS$ANSISTRING$ANSISTRING$stub
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$11,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj473
	jmp	Lj474
Lj473:
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj479
	movl	-20(%ebp),%ecx
	movl	L_VMT_GETTEXT_TMOFILE$non_lazy_ptr-Lj457(%ebx),%edx
	movl	$0,%eax
	call	L_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE$stub
	movl	%eax,-8(%ebp)
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj491
	movl	-8(%ebp),%eax
	call	L_GETTEXT_TRANSLATERESOURCESTRINGS$TMOFILE$stub
Lj491:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj492
	decl	%eax
	testl	%eax,%eax
	je	Lj493
Lj493:
	call	LFPC_RERAISE$stub
Lj492:
Lj479:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj481
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj457(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj499
	movl	%eax,-68(%ebp)
	leal	-140(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj500
Lj500:
	call	LFPC_POPADDRSTACK$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj502
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj502:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj481
Lj499:
	call	LFPC_RERAISE$stub
Lj481:
Lj474:
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-148(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	$5,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-148(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-148(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	$11,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj521
	jmp	Lj522
Lj521:
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj527
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-148(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	$11,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-148(%ebp),%ecx
	movl	L_VMT_GETTEXT_TMOFILE$non_lazy_ptr-Lj457(%ebx),%edx
	movl	$0,%eax
	call	L_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE$stub
	movl	%eax,-8(%ebp)
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-140(%ebp)
	testl	%eax,%eax
	jne	Lj547
	movl	-8(%ebp),%eax
	call	L_GETTEXT_TRANSLATERESOURCESTRINGS$TMOFILE$stub
Lj547:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-140(%ebp),%eax
	testl	%eax,%eax
	je	Lj548
	decl	%eax
	testl	%eax,%eax
	je	Lj549
Lj549:
	call	LFPC_RERAISE$stub
Lj548:
Lj527:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj529
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj457(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj555
	movl	%eax,-104(%ebp)
	leal	-116(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-120(%ebp)
	testl	%eax,%eax
	jne	Lj556
Lj556:
	call	LFPC_POPADDRSTACK$stub
	movl	-120(%ebp),%eax
	testl	%eax,%eax
	je	Lj558
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj558:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj529
Lj555:
	call	LFPC_RERAISE$stub
Lj529:
Lj522:
Lj458:
	call	LFPC_POPADDRSTACK$stub
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj459
	call	LFPC_RERAISE$stub
Lj459:
	movl	-152(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$ANSISTRING
_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-200(%ebp)
	call	Lj578
Lj578:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-152(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj579
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_GETTEXT_GETLANGUAGEIDS$ANSISTRING$ANSISTRING$stub
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj588
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	$11,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-104(%ebp),%ecx
	movl	L_VMT_GETTEXT_TMOFILE$non_lazy_ptr-Lj578(%ebx),%edx
	movl	$0,%eax
	call	L_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE$stub
	movl	%eax,-12(%ebp)
	leal	-124(%ebp),%ecx
	leal	-148(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj608
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$TMOFILE$stub
Lj608:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj609
	decl	%eax
	testl	%eax,%eax
	je	Lj610
Lj610:
	call	LFPC_RERAISE$stub
Lj609:
Lj588:
	call	LFPC_POPADDRSTACK$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj590
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj578(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj618
	movl	%eax,-148(%ebp)
	leal	-116(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-120(%ebp)
	testl	%eax,%eax
	jne	Lj619
Lj619:
	call	LFPC_POPADDRSTACK$stub
	movl	-120(%ebp),%eax
	testl	%eax,%eax
	je	Lj621
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj621:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj590
Lj618:
	call	LFPC_RERAISE$stub
Lj590:
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-152(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	$5,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-152(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-152(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-148(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-132(%ebp)
	testl	%eax,%eax
	jne	Lj634
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-152(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-156(%ebp)
	movl	$11,-160(%ebp)
	leal	-160(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-152(%ebp),%ecx
	movl	L_VMT_GETTEXT_TMOFILE$non_lazy_ptr-Lj578(%ebx),%edx
	movl	$0,%eax
	call	L_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE$stub
	movl	%eax,-12(%ebp)
	leal	-172(%ebp),%ecx
	leal	-196(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-156(%ebp)
	testl	%eax,%eax
	jne	Lj654
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$TMOFILE$stub
Lj654:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-156(%ebp),%eax
	testl	%eax,%eax
	je	Lj655
	decl	%eax
	testl	%eax,%eax
	je	Lj656
Lj656:
	call	LFPC_RERAISE$stub
Lj655:
Lj634:
	call	LFPC_POPADDRSTACK$stub
	movl	-132(%ebp),%eax
	testl	%eax,%eax
	je	Lj636
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj578(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj664
	movl	%eax,-196(%ebp)
	leal	-164(%ebp),%ecx
	leal	-192(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-168(%ebp)
	testl	%eax,%eax
	jne	Lj665
Lj665:
	call	LFPC_POPADDRSTACK$stub
	movl	-168(%ebp),%eax
	testl	%eax,%eax
	je	Lj667
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj667:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj636
Lj664:
	call	LFPC_RERAISE$stub
Lj636:
Lj579:
	call	LFPC_POPADDRSTACK$stub
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj580
	call	LFPC_RERAISE$stub
Lj580:
	movl	-200(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_GETTEXT
_FINALIZE$_GETTEXT:
.reference __GETTEXT_finalize
.globl	__GETTEXT_finalize
__GETTEXT_finalize:
.reference _FINALIZE$_GETTEXT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_OBJPAS_FINALIZERESOURCETABLES$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$GETTEXT$_Ld11
_$GETTEXT$_Ld11:
	.byte	7
	.ascii	"TMOFile"

.const_data
	.align 2
.globl	_VMT_GETTEXT_TMOFILE
_VMT_GETTEXT_TMOFILE:
	.long	32,-32
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$GETTEXT$_Ld11
	.long	0,0
	.long	_$GETTEXT$_Ld12
	.long	_RTTI_GETTEXT_TMOFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_GETTEXT_TMOFILE_$__DESTROY
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
.globl	_$GETTEXT$_Ld14
_$GETTEXT$_Ld14:
	.byte	12
	.ascii	"EMOFileError"

.const_data
	.align 2
.globl	_VMT_GETTEXT_EMOFILEERROR
_VMT_GETTEXT_EMOFILEERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$GETTEXT$_Ld14
	.long	0,0
	.long	_$GETTEXT$_Ld15
	.long	_RTTI_GETTEXT_EMOFILEERROR
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

.data
	.align 2
.globl	_THREADVARLIST_GETTEXT
_THREADVARLIST_GETTEXT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$GETTEXT$_Ld2
_$GETTEXT$_Ld2:
	.short	0,1
	.long	0,-1,30
.reference _$GETTEXT$_Ld1
.globl	_$GETTEXT$_Ld1
_$GETTEXT$_Ld1:
.reference _$GETTEXT$_Ld2
	.ascii	"Invalid magic - not a MO file?\000"

.const_data
	.align 2
.globl	_$GETTEXT$_Ld4
_$GETTEXT$_Ld4:
	.short	0,1
	.long	0,-1,1
.reference _$GETTEXT$_Ld3
.globl	_$GETTEXT$_Ld3
_$GETTEXT$_Ld3:
.reference _$GETTEXT$_Ld4
	.ascii	"\004\000"

.const_data
	.align 2
.globl	_$GETTEXT$_Ld6
_$GETTEXT$_Ld6:
	.short	0,1
	.long	0,-1,6
.reference _$GETTEXT$_Ld5
.globl	_$GETTEXT$_Ld5
_$GETTEXT$_Ld5:
.reference _$GETTEXT$_Ld6
	.ascii	"LC_ALL\000"

.const_data
	.align 2
.globl	_$GETTEXT$_Ld8
_$GETTEXT$_Ld8:
	.short	0,1
	.long	0,-1,11
.reference _$GETTEXT$_Ld7
.globl	_$GETTEXT$_Ld7
_$GETTEXT$_Ld7:
.reference _$GETTEXT$_Ld8
	.ascii	"LC_MESSAGES\000"

.const_data
	.align 2
.globl	_$GETTEXT$_Ld10
_$GETTEXT$_Ld10:
	.short	0,1
	.long	0,-1,4
.reference _$GETTEXT$_Ld9
.globl	_$GETTEXT$_Ld9
_$GETTEXT$_Ld9:
.reference _$GETTEXT$_Ld10
	.ascii	"LANG\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD$stub:
.indirect_symbol _SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETTEXT_ENDIANFIXMOTABLE$PMOSTRINGTABLE$LONGINT$stub:
.indirect_symbol _GETTEXT_ENDIANFIXMOTABLE$PMOSTRINGTABLE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETTEXT_ENDIANFIXHASHTABLE$PLONGWORDARRAY$LONGINT$stub:
.indirect_symbol _GETTEXT_ENDIANFIXHASHTABLE$PLONGWORDARRAY$LONGINT
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

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETTEXT_TMOFILE_$__CREATE$TSTREAM$$TMOFILE$stub:
.indirect_symbol _GETTEXT_TMOFILE_$__CREATE$TSTREAM$$TMOFILE
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

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_ansistr$stub:
.indirect_symbol fpc_pchar_to_ansistr
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

L_GETTEXT_TMOFILE_$__TRANSLATE$PCHAR$LONGINT$LONGWORD$$ANSISTRING$stub:
.indirect_symbol _GETTEXT_TMOFILE_$__TRANSLATE$PCHAR$LONGINT$LONGWORD$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_HASH$ANSISTRING$$LONGWORD$stub:
.indirect_symbol _OBJPAS_HASH$ANSISTRING$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$LONGWORD$$ANSISTRING$stub:
.indirect_symbol _GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$LONGWORD$$ANSISTRING
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

L_GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _GETTEXT_TMOFILE_$__TRANSLATE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER$stub:
.indirect_symbol _OBJPAS_SETRESOURCESTRINGS$TRESOURCEITERATOR$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
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

L_GETTEXT_GETLANGUAGEIDS$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _GETTEXT_GETLANGUAGEIDS$ANSISTRING$ANSISTRING
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

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE$stub:
.indirect_symbol _GETTEXT_TMOFILE_$__CREATE$ANSISTRING$$TMOFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GETTEXT_TRANSLATERESOURCESTRINGS$TMOFILE$stub:
.indirect_symbol _GETTEXT_TRANSLATERESOURCESTRINGS$TMOFILE
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

L_GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$TMOFILE$stub:
.indirect_symbol _GETTEXT_TRANSLATEUNITRESOURCESTRINGS$ANSISTRING$TMOFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_FINALIZERESOURCETABLES$stub:
.indirect_symbol _OBJPAS_FINALIZERESOURCETABLES
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
.globl	_INIT_GETTEXT_TMOFILEHEADER
_INIT_GETTEXT_TMOFILEHEADER:
	.byte	13,13
	.ascii	"TMOFileHeader"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GETTEXT_TMOFILEHEADER
_RTTI_GETTEXT_TMOFILEHEADER:
	.byte	13,13
	.ascii	"TMOFileHeader"
	.long	28,7
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24

.const_data
	.align 2
.globl	_INIT_GETTEXT_TMOSTRINGINFO
_INIT_GETTEXT_TMOSTRINGINFO:
	.byte	13,13
	.ascii	"TMOStringInfo"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GETTEXT_TMOSTRINGINFO
_RTTI_GETTEXT_TMOSTRINGINFO:
	.byte	13,13
	.ascii	"TMOStringInfo"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GETTEXT_TMOSTRINGTABLE
_INIT_GETTEXT_TMOSTRINGTABLE:
	.byte	12
	.ascii	"\016TMOStringTable"
	.long	8,134217729
	.long	_INIT_GETTEXT_TMOSTRINGINFO
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GETTEXT_TMOSTRINGTABLE
_RTTI_GETTEXT_TMOSTRINGTABLE:
	.byte	12
	.ascii	"\016TMOStringTable"
	.long	8,134217729
	.long	_RTTI_GETTEXT_TMOSTRINGINFO
	.long	-1

.const_data
	.align 2
.globl	_INIT_GETTEXT_PMOSTRINGTABLE
_INIT_GETTEXT_PMOSTRINGTABLE:
	.byte	0
	.ascii	"\016PMOStringTable"

.const_data
	.align 2
.globl	_RTTI_GETTEXT_PMOSTRINGTABLE
_RTTI_GETTEXT_PMOSTRINGTABLE:
	.byte	0
	.ascii	"\016PMOStringTable"

.const_data
	.align 2
.globl	_INIT_GETTEXT_TLONGWORDARRAY
_INIT_GETTEXT_TLONGWORDARRAY:
	.byte	12
	.ascii	"\016TLongWordArray"
	.long	4,268435457
	.long	_INIT_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_RTTI_GETTEXT_TLONGWORDARRAY
_RTTI_GETTEXT_TLONGWORDARRAY:
	.byte	12
	.ascii	"\016TLongWordArray"
	.long	4,268435457
	.long	_RTTI_SYSTEM_LONGWORD
	.long	19

.const_data
	.align 2
.globl	_INIT_GETTEXT_PLONGWORDARRAY
_INIT_GETTEXT_PLONGWORDARRAY:
	.byte	0
	.ascii	"\016PLongWordArray"

.const_data
	.align 2
.globl	_RTTI_GETTEXT_PLONGWORDARRAY
_RTTI_GETTEXT_PLONGWORDARRAY:
	.byte	0
	.ascii	"\016PLongWordArray"

.const_data
	.align 2
.globl	_INIT_GETTEXT_TPCHARARRAY
_INIT_GETTEXT_TPCHARARRAY:
	.byte	12
	.ascii	"\013TPCharArray"
	.long	4,268435457
	.long	_INIT_SYSTEM_PCHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GETTEXT_TPCHARARRAY
_RTTI_GETTEXT_TPCHARARRAY:
	.byte	12
	.ascii	"\013TPCharArray"
	.long	4,268435457
	.long	_RTTI_SYSTEM_PCHAR
	.long	-1

.const_data
	.align 2
.globl	_INIT_GETTEXT_PPCHARARRAY
_INIT_GETTEXT_PPCHARARRAY:
	.byte	0
	.ascii	"\013PPCharArray"

.const_data
	.align 2
.globl	_RTTI_GETTEXT_PPCHARARRAY
_RTTI_GETTEXT_PPCHARARRAY:
	.byte	0
	.ascii	"\013PPCharArray"

.const_data
	.align 2
.globl	_$GETTEXT$_Ld12
_$GETTEXT$_Ld12:
	.short	0
	.long	_$GETTEXT$_Ld13
	.align 2
.globl	_$GETTEXT$_Ld13
_$GETTEXT$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_GETTEXT_TMOFILE
_INIT_GETTEXT_TMOFILE:
	.byte	15,7
	.ascii	"TMOFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GETTEXT_TMOFILE
_RTTI_GETTEXT_TMOFILE:
	.byte	15,7
	.ascii	"TMOFile"
	.long	_VMT_GETTEXT_TMOFILE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	7
	.ascii	"gettext"
	.short	0

.const_data
	.align 2
.globl	_$GETTEXT$_Ld15
_$GETTEXT$_Ld15:
	.short	0
	.long	_$GETTEXT$_Ld16
	.align 2
.globl	_$GETTEXT$_Ld16
_$GETTEXT$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_GETTEXT_EMOFILEERROR
_INIT_GETTEXT_EMOFILEERROR:
	.byte	15,12
	.ascii	"EMOFileError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GETTEXT_EMOFILEERROR
_RTTI_GETTEXT_EMOFILEERROR:
	.byte	15,12
	.ascii	"EMOFileError"
	.long	_VMT_GETTEXT_EMOFILEERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"gettext"
	.short	0

.const_data
	.align 2
.globl	_INIT_GETTEXT_DEF86
_INIT_GETTEXT_DEF86:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_GETTEXT_DEF88
_INIT_GETTEXT_DEF88:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_GETTEXT_DEF90
_INIT_GETTEXT_DEF90:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_GETTEXT_DEF93
_INIT_GETTEXT_DEF93:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_GETTEXT_DEF95
_INIT_GETTEXT_DEF95:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_GETTEXT_DEF77
_INIT_GETTEXT_DEF77:
	.byte	12
	.ascii	"\000"
	.long	4,3
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
L_VMT_GETTEXT_EMOFILEERROR$non_lazy_ptr:
.indirect_symbol _VMT_GETTEXT_EMOFILEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETTEXT$_Ld1$non_lazy_ptr:
.indirect_symbol _$GETTEXT$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETTEXT$_Ld3$non_lazy_ptr:
.indirect_symbol _$GETTEXT$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_GETTEXT_TRANSLATE$ANSISTRING$ANSISTRING$LONGINT$POINTER$$ANSISTRING$non_lazy_ptr:
.indirect_symbol _GETTEXT_TRANSLATE$ANSISTRING$ANSISTRING$LONGINT$POINTER$$ANSISTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETTEXT$_Ld5$non_lazy_ptr:
.indirect_symbol _$GETTEXT$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETTEXT$_Ld7$non_lazy_ptr:
.indirect_symbol _$GETTEXT$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GETTEXT$_Ld9$non_lazy_ptr:
.indirect_symbol _$GETTEXT$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_GETTEXT_TMOFILE$non_lazy_ptr:
.indirect_symbol _VMT_GETTEXT_TMOFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
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

