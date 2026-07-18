# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_MEMDS_UNSETFIELDISNULL$PBYTE$LONGINT
_MEMDS_UNSETFIELDISNULL$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shrl	$3,%eax
	addl	%eax,-4(%ebp)
	movl	-8(%ebp),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_SETFIELDISNULL$PBYTE$LONGINT
_MEMDS_SETFIELDISNULL$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shrl	$3,%eax
	addl	%eax,-4(%ebp)
	movl	-8(%ebp),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	andl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN
_MEMDS_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shrl	$3,%eax
	addl	%eax,-4(%ebp)
	movl	-8(%ebp),%ecx
	andl	$7,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MEMDS_READINTEGER$TSTREAM$$LONGINT
_MEMDS_READINTEGER$TSTREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_READSTRING$TSTREAM$$ANSISTRING
_MEMDS_READSTRING$TSTREAM$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj33
	jmp	Lj34
Lj33:
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
Lj34:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_WRITEINTEGER$TSTREAM$LONGINT
_MEMDS_WRITEINTEGER$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_WRITESTRING$TSTREAM$ANSISTRING
_MEMDS_WRITESTRING$TSTREAM$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj53
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj58
	movl	-4(%eax),%eax
Lj58:
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj61
	movl	-4(%edx),%edx
Lj61:
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj64
	jmp	Lj65
Lj64:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj65:
Lj53:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj54
	call	LFPC_RERAISE$stub
Lj54:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CREATE$TCOMPONENT$$TMEMDATASET
_MEMDS_TMEMDATASET_$__CREATE$TCOMPONENT$$TMEMDATASET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj73
Lj73:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj74
	jmp	Lj75
Lj74:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj75:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj80
	jmp	Lj81
Lj80:
	jmp	Lj72
Lj81:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj84
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj88
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj73(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,360(%edx)
	movl	-12(%ebp),%eax
	movl	$0,368(%eax)
	movl	-12(%ebp),%eax
	movl	$0,372(%eax)
	movl	-12(%ebp),%eax
	movl	$0,364(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,376(%eax)
	movl	-12(%ebp),%eax
	movl	$4,216(%eax)
	movl	-12(%ebp),%eax
	movb	$0,380(%eax)
Lj88:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	call	LFPC_RERAISE$stub
Lj89:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj117
	jmp	Lj116
Lj117:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj115
	jmp	Lj116
Lj115:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj116:
Lj84:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj86
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj121
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj122
	jmp	Lj123
Lj122:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj123:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj121:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj120
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj120:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj86
Lj86:
Lj72:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__DESTROY
_MEMDS_TMEMDATASET_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
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
	movl	360(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	388(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	392(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_DB_TDATASET_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj146
	jmp	Lj145
Lj146:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj144
	jmp	Lj145
Lj144:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj145:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
_MEMDS_TMEMDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj153
	jmp	Lj154
Lj153:
	jmp	Lj149
Lj154:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj159
	jmp	Lj158
Lj159:
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj157
	jmp	Lj158
Lj157:
	movb	$1,-9(%ebp)
	jmp	Lj160
Lj158:
	movb	$0,-9(%ebp)
Lj160:
Lj149:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT
_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	372(%eax),%eax
	movl	-4(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSGETFIELDOFFSET$LONGINT$$LONGINT
_MEMDS_TMEMDATASET_$__MDSGETFIELDOFFSET$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	388(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const
_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj176
Lj176:
	popl	-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj177
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-56(%ebp),%eax
	movl	L_VMT_MEMDS_MDSERROR$non_lazy_ptr-Lj176(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-56(%ebp),%ebx
	leal	La1-Lj176(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj177:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj178
	call	LFPC_RERAISE$stub
Lj178:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSGETBUFFERSIZE$LONGINT$$LONGINT
_MEMDS_TMEMDATASET_$__MDSGETBUFFERSIZE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj191
Lj191:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$1,%eax
	jb	Lj199
	decl	%eax
	je	Lj200
	decl	%eax
	je	Lj206
	decl	%eax
	jb	Lj199
	subl	$1,%eax
	jbe	Lj207
	decl	%eax
	je	Lj202
	decl	%eax
	jb	Lj199
	subl	$1,%eax
	jbe	Lj203
	decl	%eax
	je	Lj204
	decl	%eax
	jb	Lj199
	subl	$2,%eax
	jbe	Lj208
	decl	%eax
	je	Lj211
	decl	%eax
	je	Lj212
	decl	%eax
	je	Lj207
	subl	$9,%eax
	je	Lj201
	decl	%eax
	je	Lj210
	decl	%eax
	je	Lj205
	subl	$10,%eax
	je	Lj200
	subl	$2,%eax
	je	Lj209
	decl	%eax
	je	Lj210
	jmp	Lj199
Lj200:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj198
Lj201:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj198
Lj202:
	movl	$2,-12(%ebp)
	jmp	Lj198
Lj203:
	movl	$8,-12(%ebp)
	jmp	Lj198
Lj204:
	movl	$8,-12(%ebp)
	jmp	Lj198
Lj205:
	movl	$8,-12(%ebp)
	jmp	Lj198
Lj206:
	movl	$2,-12(%ebp)
	jmp	Lj198
Lj207:
	movl	$4,-12(%ebp)
	jmp	Lj198
Lj208:
	movl	$8,-12(%ebp)
	jmp	Lj198
Lj209:
	movl	$34,-12(%ebp)
	jmp	Lj198
Lj210:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	incl	%eax
	shll	$1,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj198
Lj211:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj198
Lj212:
	movl	-16(%ebp),%eax
	movl	48(%eax),%eax
	addl	$2,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj198
Lj199:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	L_RESSTR_MEMDS_SERRFIELDTYPENOTSUPPORTED$non_lazy_ptr-Lj191(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const$stub
Lj198:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSGETACTIVEBUFFER$PCHAR$$BOOLEAN
_MEMDS_TMEMDATASET_$__MDSGETACTIVEBUFFER$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$1,%eax
	jb	Lj250
	decl	%eax
	je	Lj251
	decl	%eax
	jb	Lj250
	subl	$1,%eax
	jbe	Lj252
	subl	$2,%eax
	je	Lj254
	decl	%eax
	je	Lj253
	jmp	Lj250
Lj251:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj255
	jmp	Lj256
Lj255:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj261
Lj256:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
Lj261:
	jmp	Lj249
Lj252:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj249
Lj253:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj249
Lj254:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	228(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj249
Lj250:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj249:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSREADRECORD$PCHAR$LONGINT
_MEMDS_TMEMDATASET_$__MDSREADRECORD$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-12(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	372(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSWRITERECORD$PCHAR$LONGINT
_MEMDS_TMEMDATASET_$__MDSWRITERECORD$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-12(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	372(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movb	$1,356(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSAPPENDRECORD$PCHAR
_MEMDS_TMEMDATASET_$__MDSAPPENDRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	368(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	movl	-8(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movl	372(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$1,356(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__ALLOCRECORDBUFFER$$PCHAR
_MEMDS_TMEMDATASET_$__ALLOCRECORDBUFFER$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	372(%eax),%edx
	movl	232(%ecx),%eax
	addl	%eax,%edx
	leal	-8(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__FREERECORDBUFFER$PCHAR
_MEMDS_TMEMDATASET_$__FREERECORDBUFFER$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALINITRECORD$PCHAR
_MEMDS_TMEMDATASET_$__INTERNALINITRECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	372(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CLEARCALCFIELDS$PCHAR
_MEMDS_TMEMDATASET_$__CLEARCALCFIELDS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	leal	(%ebx,%eax,1),%eax
	movl	-8(%ebp),%edx
	movl	232(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALDELETE
_MEMDS_TMEMDATASET_$__INTERNALDELETE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj359
Lj359:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	cmpl	$0,%eax
	jl	Lj360
	jmp	Lj362
Lj362:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	376(%eax),%eax
	cmpl	368(%edx),%eax
	jge	Lj360
	jmp	Lj361
Lj360:
	jmp	Lj358
Lj361:
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj359(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj369
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	cmpl	$0,%eax
	jg	Lj373
	jmp	Lj374
Lj373:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	cmpl	376(%edx),%eax
	jg	Lj383
	jmp	Lj384
Lj383:
	movl	-4(%ebp),%eax
	movl	376(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	subl	%eax,%esi
	movl	%esi,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-4(%ebp),%eax
	movl	376(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	376(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	subl	%eax,%esi
	movl	%esi,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	jmp	Lj421
Lj384:
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
Lj421:
	jmp	Lj432
Lj374:
	movl	-4(%ebp),%eax
	movl	376(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	movl	376(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub
	subl	%eax,%esi
	movl	%esi,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
Lj432:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TMEMORYSTREAM_$__LOADFROMSTREAM$TSTREAM$stub
	movl	-4(%ebp),%eax
	decl	368(%eax)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	testl	%eax,%eax
	je	Lj459
	jmp	Lj460
Lj459:
	movl	-4(%ebp),%eax
	movl	$-1,376(%eax)
	jmp	Lj463
Lj460:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	376(%eax),%eax
	cmpl	368(%edx),%eax
	jge	Lj464
	jmp	Lj465
Lj464:
	movl	-4(%ebp),%eax
	movl	368(%eax),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,376(%eax)
Lj465:
Lj463:
Lj369:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj370
	decl	%eax
	testl	%eax,%eax
	je	Lj371
Lj371:
	call	LFPC_RERAISE$stub
Lj370:
	movl	-4(%ebp),%eax
	movb	$1,356(%eax)
Lj358:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALINITFIELDDEFS
_MEMDS_TMEMDATASET_$__INTERNALINITFIELDDEFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj474
	jmp	Lj475
Lj474:
	movl	-4(%ebp),%eax
	movl	348(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__READFIELDDEFSFROMSTREAM$TSTREAM$stub
Lj475:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT
_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj481
Lj481:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	cmpl	$4,%eax
	jne	Lj486
	jmp	Lj487
Lj486:
	movl	$0,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%ecx
	movl	L_RESSTR_MEMDS_SERRINVALIDDATASTREAM$non_lazy_ptr-Lj481(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const$stub
	jmp	Lj502
Lj487:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj503
	jmp	Lj504
Lj503:
	movl	$2,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$0,-52(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	leal	-52(%ebp),%ecx
	movl	L_RESSTR_MEMDS_SERRINVALIDMARKERATPOS$non_lazy_ptr-Lj481(%ebx),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const$stub
Lj504:
Lj502:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__READFIELDDEFSFROMSTREAM$TSTREAM
_MEMDS_TMEMDATASET_$__READFIELDDEFSFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%edi,-76(%ebp)
	call	Lj514
Lj514:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj515
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	call	L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj531
	decl	-12(%ebp)
	.align 2
Lj532:
	incl	-12(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_READSTRING$TSTREAM$$ANSISTRING$stub
	movl	-4(%ebp),%eax
	call	L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	call	L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	call	L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub
	testl	%eax,%eax
	setneb	-25(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movb	-25(%ebp),%al
	movb	%al,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-8(%ebp),%eax
	movl	268(%eax),%ecx
	movl	L_VMT_DB_TFIELDDEF$non_lazy_ptr-Lj514(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_DB_TFIELDDEF_$__CREATE$crc2A105691$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj532
Lj531:
Lj515:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj516
	call	LFPC_RERAISE$stub
Lj516:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	movl	-76(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALFIRST
_MEMDS_TMEMDATASET_$__INTERNALFIRST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,376(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALLAST
_MEMDS_TMEMDATASET_$__INTERNALLAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	%eax,376(%edx)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALOPEN
_MEMDS_TMEMDATASET_$__INTERNALOPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj580
Lj580:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj581
	jmp	Lj582
Lj581:
	movw	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj580(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,348(%edx)
Lj582:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj593
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*568(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj599
	jmp	Lj600
Lj599:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*256(%edx)
Lj600:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movb	381(%eax),%al
	testb	%al,%al
	je	Lj607
	jmp	Lj608
Lj607:
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__CREATETABLE$stub
Lj608:
	movl	-4(%ebp),%eax
	movl	$-1,376(%eax)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	jne	Lj613
	jmp	Lj614
Lj613:
	movl	-4(%ebp),%eax
	movl	348(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*752(%ecx)
	movl	-4(%ebp),%eax
	movl	348(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT$stub
Lj614:
Lj593:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	leal	348(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj594
	decl	%eax
	testl	%eax,%eax
	je	Lj595
Lj595:
	call	LFPC_RERAISE$stub
Lj594:
	movl	-4(%ebp),%eax
	movb	$1,380(%eax)
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__LOADDATAFROMSTREAM$TSTREAM
_MEMDS_TMEMDATASET_$__LOADDATAFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	L_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	call	L_CLASSES_TMEMORYSTREAM_$__CLEAR$stub
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	cltd
	idivl	372(%ecx)
	movl	-8(%ebp),%edx
	movl	%eax,368(%edx)
	movl	-8(%ebp),%eax
	movl	$-1,376(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__LOADFROMSTREAM$TSTREAM
_MEMDS_TMEMDATASET_$__LOADFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CLOSE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__READFIELDDEFSFROMSTREAM$TSTREAM$stub
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__CREATETABLE$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*752(%ecx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	call	L_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT$stub
	movl	-8(%ebp),%eax
	movb	$0,356(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__LOADFROMFILE$ANSISTRING
_MEMDS_TMEMDATASET_$__LOADFROMFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj676
Lj676:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj677
	movw	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj676(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj690
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__LOADFROMSTREAM$TSTREAM$stub
Lj690:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj691
	decl	%eax
	testl	%eax,%eax
	je	Lj692
Lj692:
	call	LFPC_RERAISE$stub
Lj691:
Lj677:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj678
	call	LFPC_RERAISE$stub
Lj678:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING
_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj702
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING$BOOLEAN$stub
Lj702:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj703
	call	LFPC_RERAISE$stub
Lj703:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING$BOOLEAN
_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	call	Lj712
Lj712:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj713
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj716
	jmp	Lj717
Lj716:
	movl	$-1,(%esp)
	leal	-64(%ebp),%ecx
	movl	L_RESSTR_MEMDS_SERRNOFILENAME$non_lazy_ptr-Lj712(%esi),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const$stub
Lj717:
	movw	$65280,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj712(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj736
	movb	-8(%ebp),%cl
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM$BOOLEAN$stub
Lj736:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj737
	decl	%eax
	testl	%eax,%eax
	je	Lj738
Lj738:
	call	LFPC_RERAISE$stub
Lj737:
Lj713:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj714
	call	LFPC_RERAISE$stub
Lj714:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT
_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM
_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM$BOOLEAN
_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__SAVEFIELDDEFSTOSTREAM$TSTREAM$stub
	cmpb	$0,-8(%ebp)
	jne	Lj768
	jmp	Lj769
Lj768:
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*756(%ebx)
Lj769:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	L_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SAVEFIELDDEFSTOSTREAM$TSTREAM
_MEMDS_TMEMDATASET_$__SAVEFIELDDEFSTOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	L_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj797
	decl	-12(%ebp)
	.align 2
Lj798:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITESTRING$TSTREAM$ANSISTRING$stub
	movl	-16(%ebp),%eax
	movl	48(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	28(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-16(%ebp),%eax
	movzbl	44(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj798
Lj797:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SAVEDATATOSTREAM$TSTREAM$BOOLEAN
_MEMDS_TMEMDATASET_$__SAVEDATATOSTREAM$TSTREAM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj827
	jmp	Lj828
Lj827:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	L_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-12(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-12(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	movl	360(%eax),%eax
	movl	-12(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	360(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-12(%ebp),%eax
	movb	$0,356(%eax)
	jmp	Lj855
Lj828:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	L_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub
Lj855:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALCLOSE
_MEMDS_TMEMDATASET_$__INTERNALCLOSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,356(%eax)
	jne	Lj870
	jmp	Lj869
Lj870:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj868
	jmp	Lj869
Lj868:
	movl	-4(%ebp),%eax
	movl	352(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING$BOOLEAN$stub
Lj869:
	movl	-4(%ebp),%eax
	movb	$0,380(%eax)
	movl	-4(%ebp),%eax
	movb	$0,356(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,256(%eax)
	jne	Lj881
	jmp	Lj882
Lj881:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*264(%edx)
Lj882:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALPOST
_MEMDS_TMEMDATASET_$__INTERNALPOST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj891
Lj891:
	jnc	Lj889
	jmp	Lj890
Lj889:
	jmp	Lj885
Lj890:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__INTERNALPOST$stub
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$2,%eax
	je	Lj894
	jmp	Lj895
Lj894:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	376(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSWRITERECORD$PCHAR$LONGINT$stub
	jmp	Lj904
Lj895:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*512(%ebx)
Lj904:
Lj885:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__ISCURSOROPEN$$BOOLEAN
_MEMDS_TMEMDATASET_$__ISCURSOROPEN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	380(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
_MEMDS_TMEMDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movb	$0,-17(%ebp)
	movl	-12(%ebp),%eax
	movl	368(%eax),%eax
	cmpl	$1,%eax
	jl	Lj923
	jmp	Lj924
Lj923:
	movl	$2,-16(%ebp)
	jmp	Lj917
Lj924:
	.align 2
Lj927:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj932
	decl	%eax
	je	Lj933
	decl	%eax
	je	Lj934
	jmp	Lj931
Lj932:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	376(%eax),%eax
	cmpl	368(%edx),%eax
	jge	Lj935
	jmp	Lj937
Lj937:
	movl	-12(%ebp),%eax
	movl	376(%eax),%eax
	cmpl	$0,%eax
	jl	Lj935
	jmp	Lj936
Lj935:
	movl	$3,-16(%ebp)
Lj936:
	jmp	Lj930
Lj933:
	movl	-12(%ebp),%eax
	movl	368(%eax),%eax
	decl	%eax
	movl	-12(%ebp),%edx
	cmpl	376(%edx),%eax
	jg	Lj940
	jmp	Lj941
Lj940:
	movl	-12(%ebp),%eax
	incl	376(%eax)
	jmp	Lj942
Lj941:
	movl	$2,-16(%ebp)
Lj942:
	jmp	Lj930
Lj934:
	movl	-12(%ebp),%eax
	movl	376(%eax),%eax
	cmpl	$0,%eax
	jg	Lj945
	jmp	Lj946
Lj945:
	movl	-12(%ebp),%eax
	decl	376(%eax)
	jmp	Lj947
Lj946:
	movl	$1,-16(%ebp)
Lj947:
	jmp	Lj930
Lj931:
Lj930:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj950
	jmp	Lj951
Lj950:
	movl	-12(%ebp),%eax
	movl	376(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSREADRECORD$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	376(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	364(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*360(%ecx)
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj966
	jmp	Lj967
Lj966:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSFILTERRECORD$PCHAR$$BOOLEAN$stub
	movb	%al,-17(%ebp)
	jmp	Lj974
Lj967:
	movb	$1,-17(%ebp)
Lj974:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj979
	jmp	Lj978
Lj979:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj977
	jmp	Lj978
Lj977:
	movl	$3,-16(%ebp)
Lj978:
Lj951:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj929
	jmp	Lj982
Lj982:
	cmpb	$0,-17(%ebp)
	jne	Lj929
	jmp	Lj927
Lj929:
Lj917:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
_MEMDS_TMEMDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	leal	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETACTIVEBUFFER$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj993
	jmp	Lj994
Lj993:
	jmp	Lj983
Lj994:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj995
	jmp	Lj996
Lj995:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_MEMDS_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	seteb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1005
	jmp	Lj1004
Lj1005:
	cmpl	$0,-8(%ebp)
	jne	Lj1003
	jmp	Lj1004
Lj1003:
	movl	-12(%ebp),%eax
	movl	392(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	(%eax),%ebx
	movl	-12(%ebp),%eax
	movl	388(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	(%eax),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETRECORDBUFFERPOINTER$PCHAR$LONGINT$$PCHAR$stub
	movl	-8(%ebp),%edx
	movl	%ebx,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1004:
	jmp	Lj1030
Lj996:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movzwl	148(%edx),%edx
	addl	%edx,%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1039
	jmp	Lj1038
Lj1039:
	cmpl	$0,-8(%ebp)
	jne	Lj1037
	jmp	Lj1038
Lj1037:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*288(%edx)
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	1(%eax),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1038:
Lj1030:
Lj983:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SETFIELDDATA$TFIELD$POINTER
_MEMDS_TMEMDATASET_$__SETFIELDDATA$TFIELD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	leal	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETACTIVEBUFFER$PCHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1052
	jmp	Lj1053
Lj1052:
	jmp	Lj1048
Lj1053:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1058
	jmp	Lj1059
Lj1058:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj1062
	cmpl	$5,%eax
	stc
	je	Lj1062
	clc
Lj1062:
	jc	Lj1060
	jmp	Lj1061
Lj1060:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TFIELD_$__VALIDATE$POINTER$stub
Lj1061:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1067
	jmp	Lj1068
Lj1067:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MEMDS_SETFIELDISNULL$PBYTE$LONGINT$stub
	jmp	Lj1073
Lj1068:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_MEMDS_UNSETFIELDISNULL$PBYTE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	392(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	je	Lj1086
	jmp	Lj1087
Lj1086:
	decl	-24(%ebp)
Lj1087:
	movl	-12(%ebp),%eax
	movl	388(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETRECORDBUFFERPOINTER$PCHAR$LONGINT$$PCHAR$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1073:
	jmp	Lj1106
Lj1059:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*508(%edx)
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movzwl	148(%edx),%edx
	addl	%edx,%eax
	addl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	setneb	(%eax)
	cmpl	$0,-8(%ebp)
	jne	Lj1113
	jmp	Lj1114
Lj1113:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*288(%edx)
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1114:
Lj1106:
	movl	-12(%ebp),%eax
	movl	340(%eax),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj1125
Lj1125:
	jnc	Lj1123
	jmp	Lj1124
Lj1123:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*260(%ebx)
Lj1124:
Lj1048:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETRECORDSIZE$$WORD
_MEMDS_TMEMDATASET_$__GETRECORDSIZE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	372(%eax),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALGOTOBOOKMARK$POINTER
_MEMDS_TMEMDATASET_$__INTERNALGOTOBOOKMARK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1137
Lj1137:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1142
	jmp	Lj1141
Lj1142:
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1140
	jmp	Lj1141
Lj1140:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,376(%edx)
	jmp	Lj1145
Lj1141:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	L_RESSTR_MEMDS_SERRBOOKMARKNOTFOUND$non_lazy_ptr-Lj1137(%ebx),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const$stub
Lj1145:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALSETTORECORD$PCHAR
_MEMDS_TMEMDATASET_$__INTERNALSETTORECORD$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*524(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
_MEMDS_TMEMDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
_MEMDS_TMEMDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
_MEMDS_TMEMDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1172
	jmp	Lj1173
Lj1172:
	movl	-12(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%ecx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
Lj1173:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
_MEMDS_TMEMDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1178
	jmp	Lj1179
Lj1178:
	movl	-12(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj1182
Lj1179:
	movl	-12(%ebp),%eax
	movl	364(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	$0,(%edx)
Lj1182:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSFILTERRECORD$PCHAR$$BOOLEAN
_MEMDS_TMEMDATASET_$__MDSFILTERRECORD$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,308(%eax)
	jne	Lj1190
	jmp	Lj1189
Lj1189:
	jmp	Lj1185
Lj1190:
	movl	-8(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1197
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,384(%edx)
	movl	-8(%ebp),%eax
	movl	312(%eax),%eax
	leal	-9(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	308(%ebx),%ebx
	call	*%ebx
Lj1197:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1198
	decl	%eax
	testl	%eax,%eax
	je	Lj1199
Lj1199:
	call	LFPC_RERAISE$stub
Lj1198:
Lj1185:
	movb	-9(%ebp),%al
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__DATASIZE$$LONGINT
_MEMDS_TMEMDATASET_$__DATASIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	-4(%ebp),%edx
	movl	360(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CLEAR
_MEMDS_TMEMDATASET_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_MEMDS_TMEMDATASET_$__CLEAR$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CLEAR$BOOLEAN
_MEMDS_TMEMDATASET_$__CLEAR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	360(%eax),%eax
	call	L_CLASSES_TMEMORYSTREAM_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	$0,368(%eax)
	movl	-8(%ebp),%eax
	movl	$-1,376(%eax)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1233
	jmp	Lj1234
Lj1233:
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj1234:
	cmpb	$0,-4(%ebp)
	jne	Lj1241
	jmp	Lj1242
Lj1241:
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CLOSE$stub
	movl	-8(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
Lj1242:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CALCRECORDLAYOUT
_MEMDS_TMEMDATASET_$__CALCRECORDLAYOUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-12(%ebp),%eax
	shll	$2,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,388(%edx)
	movl	-12(%ebp),%eax
	shll	$2,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-4(%ebp),%edx
	movl	%eax,392(%edx)
	movl	-12(%ebp),%eax
	addl	$7,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movl	-4(%ebp),%edx
	movl	%eax,372(%edx)
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1268
	decl	-8(%ebp)
	.align 2
Lj1269:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	388(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	-4(%ebp),%edx
	movl	372(%edx),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	392(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	%eax,%esi
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSGETBUFFERSIZE$LONGINT$$LONGINT$stub
	movl	%eax,(%esi)
	movl	-4(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	392(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub
	movl	372(%esi),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,372(%eax)
	cmpl	-8(%ebp),%ebx
	jg	Lj1269
Lj1268:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	movl	%eax,364(%edx)
	movl	-4(%ebp),%eax
	movl	372(%eax),%eax
	addl	$8,%eax
	movl	-4(%ebp),%edx
	movl	%eax,372(%edx)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__CREATETABLE
_MEMDS_TMEMDATASET_$__CREATETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*236(%edx)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	call	L_CLASSES_TMEMORYSTREAM_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	$0,368(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,376(%eax)
	movl	-4(%ebp),%eax
	movb	$0,380(%eax)
	movl	-4(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__CALCRECORDLAYOUT$stub
	movl	-4(%ebp),%eax
	movb	$1,381(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
_MEMDS_TMEMDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSAPPENDRECORD$PCHAR$stub
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*536(%edx)
	movl	-12(%ebp),%eax
	incl	368(%eax)
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__SETRECNO$LONGINT
_MEMDS_TMEMDATASET_$__SETRECNO$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_DB_TDATASET_$__CHECKBROWSEMODE$stub
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jge	Lj1334
	jmp	Lj1333
Lj1334:
	movl	-8(%ebp),%eax
	movl	368(%eax),%eax
	cmpl	-4(%ebp),%eax
	jge	Lj1332
	jmp	Lj1333
Lj1332:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	decl	%edx
	movl	%edx,376(%eax)
	movl	$0,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj1333:
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETRECNO$$LONGINT
_MEMDS_TMEMDATASET_$__GETRECNO$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__UPDATECURSORPOS$stub
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	cmpl	$0,%eax
	jl	Lj1345
	jmp	Lj1348
Lj1348:
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	testl	%eax,%eax
	je	Lj1345
	jmp	Lj1347
Lj1347:
	movl	-4(%ebp),%eax
	movl	340(%eax),%eax
	cmpl	$3,%eax
	je	Lj1345
	jmp	Lj1346
Lj1345:
	movl	$0,-8(%ebp)
	jmp	Lj1351
Lj1346:
	movl	-4(%ebp),%eax
	movl	376(%eax),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
Lj1351:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETRECORDCOUNT$$LONGINT
_MEMDS_TMEMDATASET_$__GETRECORDCOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movl	-4(%ebp),%eax
	movl	368(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET
_MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET$BOOLEAN
_MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-296(%ebp)
	movl	%esi,-292(%ebp)
	movl	%edi,-288(%ebp)
	call	Lj1369
Lj1369:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-204(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj1370
	movl	-12(%ebp),%eax
	movb	$1,%dl
	call	L_MEMDS_TMEMDATASET_$__CLEAR$BOOLEAN$stub
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1378
	decl	-16(%ebp)
	.align 2
Lj1379:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	264(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movb	189(%eax),%al
	movb	%al,4(%esp)
	movl	-20(%ebp),%eax
	movl	192(%eax),%eax
	movl	%eax,8(%esp)
	movl	-20(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,12(%esp)
	movl	-20(%ebp),%eax
	movl	100(%eax),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	268(%eax),%ecx
	movl	L_VMT_DB_TFIELDDEF$non_lazy_ptr-Lj1369(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_DB_TFIELDDEF_$__CREATE$crc2A105691$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj1379
Lj1378:
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__CREATETABLE$stub
	cmpb	$0,-8(%ebp)
	jne	Lj1406
	jmp	Lj1407
Lj1406:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__OPEN$stub
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1369(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-32(%ebp)
	leal	-92(%ebp),%ecx
	leal	-116(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-120(%ebp)
	testl	%eax,%eax
	jne	Lj1416
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1369(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-36(%ebp)
	leal	-132(%ebp),%ecx
	leal	-156(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-160(%ebp)
	testl	%eax,%eax
	jne	Lj1426
	movl	-12(%ebp),%eax
	movl	268(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1431
	decl	-16(%ebp)
	.align 2
Lj1432:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	268(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub
	movl	%eax,%edi
	movl	24(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%edi),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__FIELDBYNAME$ANSISTRING$$TFIELD$stub
	movl	%eax,-24(%ebp)
	movl	-40(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__FIELDBYNAME$ANSISTRING$$TFIELD$stub
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-28(%ebp),%edx
	movl	-36(%ebp),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj1432
Lj1431:
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__DISABLECONTROLS$stub
	leal	-172(%ebp),%ecx
	leal	-196(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-200(%ebp)
	testl	%eax,%eax
	jne	Lj1463
	movl	-4(%ebp),%eax
	call	L_DB_TDATASET_$__OPEN$stub
	jmp	Lj1470
	.align 2
Lj1469:
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__APPEND$stub
	movl	-32(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1475
	decl	-16(%ebp)
	.align 2
Lj1476:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-36(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	jb	Lj1492
	decl	%eax
	je	Lj1493
	decl	%eax
	je	Lj1497
	decl	%eax
	je	Lj1498
	subl	$2,%eax
	je	Lj1494
	decl	%eax
	je	Lj1495
	subl	$3,%eax
	je	Lj1499
	decl	%eax
	je	Lj1500
	decl	%eax
	je	Lj1501
	subl	$12,%eax
	je	Lj1493
	subl	$2,%eax
	je	Lj1496
	jmp	Lj1492
Lj1493:
	leal	-204(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-204(%ebp)
	leal	-204(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-204(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*352(%ecx)
	jmp	Lj1491
Lj1494:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	movb	%al,%dl
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*316(%ecx)
	jmp	Lj1491
Lj1495:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*252(%edx)
	fstpl	(%esp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*332(%edx)
	jmp	Lj1491
Lj1496:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*260(%edx)
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*340(%ecx)
	jmp	Lj1491
Lj1497:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*260(%edx)
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*340(%ecx)
	jmp	Lj1491
Lj1498:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*260(%edx)
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*340(%ecx)
	jmp	Lj1491
Lj1499:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*248(%edx)
	fstpl	(%esp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*328(%edx)
	jmp	Lj1491
Lj1500:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*248(%edx)
	fstpl	(%esp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*328(%edx)
	jmp	Lj1491
Lj1501:
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%edx),%edx
	call	*248(%edx)
	fstpl	(%esp)
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%edx),%edx
	call	*328(%edx)
	jmp	Lj1491
Lj1492:
	leal	-204(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-204(%ebp)
	leal	-204(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-28(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-204(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*352(%ecx)
Lj1491:
	cmpl	-16(%ebp),%ebx
	jg	Lj1476
Lj1475:
	leal	-216(%ebp),%ecx
	leal	-240(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-244(%ebp)
	testl	%eax,%eax
	jne	Lj1572
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*736(%edx)
Lj1572:
	call	LFPC_POPADDRSTACK$stub
	movl	-244(%ebp),%eax
	testl	%eax,%eax
	je	Lj1574
	leal	-256(%ebp),%ecx
	leal	-280(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-284(%ebp)
	testl	%eax,%eax
	jne	Lj1579
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*680(%edx)
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1579:
	call	LFPC_POPADDRSTACK$stub
	movl	-284(%ebp),%eax
	testl	%eax,%eax
	je	Lj1578
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1578:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1574
Lj1574:
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	call	L_DB_TDATASET_$__NEXT$stub
Lj1470:
	movl	-4(%ebp),%edx
	cmpb	$0,257(%edx)
	jne	Lj1471
	jmp	Lj1469
Lj1471:
Lj1463:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	call	L_DB_TDATASET_$__ENABLECONTROLS$stub
	movl	-200(%ebp),%eax
	testl	%eax,%eax
	je	Lj1464
	decl	%eax
	testl	%eax,%eax
	je	Lj1465
Lj1465:
	call	LFPC_RERAISE$stub
Lj1464:
Lj1426:
	call	LFPC_POPADDRSTACK$stub
	movl	-36(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-160(%ebp),%eax
	testl	%eax,%eax
	je	Lj1427
	decl	%eax
	testl	%eax,%eax
	je	Lj1428
Lj1428:
	call	LFPC_RERAISE$stub
Lj1427:
Lj1416:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%edx
	movl	%edx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-120(%ebp),%eax
	testl	%eax,%eax
	je	Lj1417
	decl	%eax
	testl	%eax,%eax
	je	Lj1418
Lj1418:
	call	LFPC_RERAISE$stub
Lj1417:
Lj1407:
Lj1370:
	call	LFPC_POPADDRSTACK$stub
	leal	-204(%ebp),%edx
	movl	%edx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-204(%ebp)
	leal	-40(%ebp),%edx
	movl	%edx,%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-40(%ebp)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj1371
	call	LFPC_RERAISE$stub
Lj1371:
	movl	-296(%ebp),%ebx
	movl	-292(%ebp),%esi
	movl	-288(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETRECORDBUFFERPOINTER$PCHAR$LONGINT$$PCHAR
_MEMDS_TMEMDATASET_$__GETRECORDBUFFERPOINTER$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER
_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	shll	$2,%eax
	addl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__MDSLOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$LONGINT$$BOOLEAN
_MEMDS_TMEMDATASET_$__MDSLOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-228(%ebp)
	movl	%esi,-224(%ebp)
	movl	%edi,-220(%ebp)
	call	Lj1605
Lj1605:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-216(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	$0,-196(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-192(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_INITIALIZE$stub
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1606
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	$6,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__TEMPBUFFER$$PCHAR$stub
	movl	-12(%ebp),%edx
	movl	%eax,384(%edx)
	movl	L_VMT_CLASSES_TLIST$non_lazy_ptr-Lj1605(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	%eax,-24(%ebp)
	leal	-116(%ebp),%ecx
	leal	-140(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-144(%ebp)
	testl	%eax,%eax
	jne	Lj1627
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1637
	jmp	Lj1638
Lj1637:
	movl	-24(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	$1,%eax
	seteb	-25(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	-8(%ebp),%esi
	leal	-176(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-176(%ebp),%eax
	leal	-160(%ebp),%ecx
	movl	$0,%edx
	call	L_VARIANTS_VARARRAYOF$array_of_VARIANT$$VARIANT$stub
	leal	-160(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj1655
Lj1638:
	movl	-8(%ebp),%eax
	call	L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj1656
	jmp	Lj1657
Lj1656:
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	incl	%esi
	movl	-24(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	%eax,%esi
	seteb	-25(%ebp)
	movl	-8(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_variant_copy$stub
	jmp	Lj1672
Lj1657:
	movb	$0,-25(%ebp)
Lj1672:
Lj1655:
	cmpb	$0,-25(%ebp)
	jne	Lj1675
	jmp	Lj1676
Lj1675:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj1680
	.align 2
Lj1679:
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSREADRECORD$PCHAR$LONGINT$stub
	movl	-12(%ebp),%eax
	cmpb	$0,280(%eax)
	jne	Lj1688
	jmp	Lj1689
Lj1688:
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSFILTERRECORD$PCHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj1696
Lj1689:
	movb	$1,-13(%ebp)
Lj1696:
	movl	$0,-52(%ebp)
	jmp	Lj1702
	.align 2
Lj1701:
	movl	-52(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	76(%eax),%eax
	cmpl	$1,%eax
	je	Lj1712
	cmpl	$23,%eax
	je	Lj1712
Lj1712:
	je	Lj1710
	jmp	Lj1711
Lj1710:
	leal	-60(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	-56(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*272(%ecx)
	movl	-52(%ebp),%eax
	movl	%eax,-164(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-192(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	$1,(%esp)
	leal	-164(%ebp),%ecx
	leal	-48(%ebp),%edx
	leal	-192(%ebp),%eax
	call	Lfpc_vararray_get$stub
	leal	-192(%ebp),%eax
	leal	-64(%ebp),%edx
	call	L_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING$stub
	testl	$2,12(%ebp)
	jne	Lj1731
	jmp	Lj1732
Lj1731:
	leal	-196(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-196(%ebp)
	leal	-196(%ebp),%eax
	movl	%eax,(%esp)
	movl	-64(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj1739
	movl	-4(%ecx),%ecx
Lj1739:
	movl	-60(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-196(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-196(%ebp),%eax
	movl	%eax,-60(%ebp)
Lj1732:
	testl	$1,12(%ebp)
	jne	Lj1744
	jmp	Lj1745
Lj1744:
	movl	-64(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1605(%ebx),%ecx
	movl	44(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-13(%ebp)
	jmp	Lj1754
Lj1745:
	movl	-64(%ebp),%edx
	movl	-60(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj1754:
	jmp	Lj1761
Lj1711:
	movl	-52(%ebp),%eax
	movl	%eax,-164(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-192(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	$1,(%esp)
	leal	-164(%ebp),%ecx
	leal	-48(%ebp),%edx
	leal	-192(%ebp),%eax
	call	Lfpc_vararray_get$stub
	leal	-192(%ebp),%esi
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-216(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-216(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	-56(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*264(%ecx)
	leal	-216(%ebp),%eax
	movl	%esi,%edx
	call	L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj1761:
	incl	-52(%ebp)
Lj1702:
	cmpb	$0,-13(%ebp)
	jne	Lj1782
	jmp	Lj1703
Lj1782:
	movl	-24(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-52(%ebp),%eax
	jg	Lj1701
	jmp	Lj1703
Lj1703:
	cmpb	$0,-13(%ebp)
	jne	Lj1785
	jmp	Lj1786
Lj1785:
	jmp	Lj1681
Lj1786:
	movl	8(%ebp),%eax
	incl	(%eax)
Lj1680:
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	368(%eax),%eax
	cmpl	(%edx),%eax
	jg	Lj1679
	jmp	Lj1681
Lj1681:
Lj1676:
Lj1627:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-144(%ebp),%eax
	testl	%eax,%eax
	je	Lj1628
	decl	%eax
	testl	%eax,%eax
	je	Lj1629
Lj1629:
	call	LFPC_RERAISE$stub
Lj1628:
Lj1606:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-216(%ebp),%eax
	call	LFPC_FINALIZE$stub
	leal	-196(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-196(%ebp)
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-192(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%eax
	movl	%eax,%edx
	leal	-160(%ebp),%eax
	call	LFPC_FINALIZE$stub
	movl	L_INIT_SYSTEM_VARIANT$non_lazy_ptr-Lj1605(%ebx),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_finalize$stub
	leal	-60(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-64(%ebp)
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1607
	call	LFPC_RERAISE$stub
Lj1607:
	movb	-13(%ebp),%al
	movl	-228(%ebp),%ebx
	movl	-224(%ebp),%esi
	movl	-220(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
_MEMDS_TMEMDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*232(%edx)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSLOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$LONGINT$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1839
	jmp	Lj1840
Lj1839:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,376(%edx)
	movl	$0,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*740(%ecx)
Lj1840:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MEMDS_TMEMDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
_MEMDS_TMEMDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_MEMDS_TMEMDATASET_$__MDSLOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1849
	jmp	Lj1850
Lj1849:
	movl	-12(%ebp),%eax
	movl	$5,%edx
	call	L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub
	movl	%eax,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1867
	movl	-12(%ebp),%eax
	movl	384(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*372(%ebx)
Lj1867:
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1868
	decl	%eax
	testl	%eax,%eax
	je	Lj1869
Lj1869:
	call	LFPC_RERAISE$stub
Lj1868:
	jmp	Lj1885
Lj1850:
	movl	8(%ebp),%eax
	call	L_VARIANTS_NULL$$VARIANT$stub
Lj1885:
	movl	-64(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$MEMDS$_Ld1
_$MEMDS$_Ld1:
	.byte	8
	.ascii	"MDSError"

.const_data
	.align 2
.globl	_VMT_MEMDS_MDSERROR
_VMT_MEMDS_MDSERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$MEMDS$_Ld1
	.long	0,0
	.long	_$MEMDS$_Ld2
	.long	_RTTI_MEMDS_MDSERROR
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
.globl	_$MEMDS$_Ld4
_$MEMDS$_Ld4:
	.byte	11
	.ascii	"TMemDataset"

.const_data
	.align 2
.globl	_VMT_MEMDS_TMEMDATASET
_VMT_MEMDS_TMEMDATASET:
	.long	396,-396
	.long	_VMT_DB_TDATASET
	.long	_$MEMDS$_Ld4
	.long	0,0
	.long	_$MEMDS$_Ld5
	.long	_RTTI_MEMDS_TMEMDATASET
	.long	_INIT_MEMDS_TMEMDATASET
	.long	0,0,0
	.long	_MEMDS_TMEMDATASET_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_CLASSES_TCOMPONENT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_CLASSES_TCOMPONENT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOMPONENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__GETNAMEPATH$$ANSISTRING
	.long	_DB_TDATASET_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_DB_TDATASET_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_DB_TDATASET_$__SETNAME$ANSISTRING
	.long	_DB_TDATASET_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_MEMDS_TMEMDATASET_$__CREATE$TCOMPONENT$$TMEMDATASET
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_DB_TDATASET_$__SETBLOCKREADSIZE$LONGINT
	.long	_DB_TDATASET_$__ACTIVATEBUFFERS
	.long	_DB_TDATASET_$__BLOCKREADNEXT
	.long	_DB_TDATASET_$__CALCULATEFIELDS$PCHAR
	.long	_DB_TDATASET_$__CHECKACTIVE
	.long	_DB_TDATASET_$__CHECKINACTIVE
	.long	_DB_TDATASET_$__CLEARBUFFERS
	.long	_MEMDS_TMEMDATASET_$__CLEARCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__CLOSEBLOB$TFIELD
	.long	_DB_TDATASET_$__CLOSECURSOR
	.long	_DB_TDATASET_$__CREATEFIELDS
	.long	_DB_TDATASET_$__DATAEVENT$TDATAEVENT$LONGINT
	.long	_DB_TDATASET_$__DESTROYFIELDS
	.long	_DB_TDATASET_$__DOAFTERCANCEL
	.long	_DB_TDATASET_$__DOAFTERCLOSE
	.long	_DB_TDATASET_$__DOAFTERDELETE
	.long	_DB_TDATASET_$__DOAFTEREDIT
	.long	_DB_TDATASET_$__DOAFTERINSERT
	.long	_DB_TDATASET_$__DOAFTEROPEN
	.long	_DB_TDATASET_$__DOAFTERPOST
	.long	_DB_TDATASET_$__DOAFTERSCROLL
	.long	_DB_TDATASET_$__DOAFTERREFRESH
	.long	_DB_TDATASET_$__DOBEFORECANCEL
	.long	_DB_TDATASET_$__DOBEFORECLOSE
	.long	_DB_TDATASET_$__DOBEFOREDELETE
	.long	_DB_TDATASET_$__DOBEFOREEDIT
	.long	_DB_TDATASET_$__DOBEFOREINSERT
	.long	_DB_TDATASET_$__DOBEFOREOPEN
	.long	_DB_TDATASET_$__DOBEFOREPOST
	.long	_DB_TDATASET_$__DOBEFORESCROLL
	.long	_DB_TDATASET_$__DOBEFOREREFRESH
	.long	_DB_TDATASET_$__DOONCALCFIELDS
	.long	_DB_TDATASET_$__DOONNEWRECORD
	.long	_DB_TDATASET_$__FINDRECORD$BOOLEAN$BOOLEAN$$BOOLEAN
	.long	_DB_TDATASET_$__FREEFIELDBUFFERS
	.long	_DB_TDATASET_$__GETBOOKMARKSTR$$ANSISTRING
	.long	_DB_TDATASET_$__GETCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__GETCANMODIFY$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDCLASS$TFIELDTYPE$$TFIELDCLASS
	.long	_DB_TDATASET_$__GETFIELDVALUES$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__GETISINDEXFIELD$TFIELD$$BOOLEAN
	.long	_DB_TDATASET_$__GETNEXTRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETNEXTRECORD$$BOOLEAN
	.long	_DB_TDATASET_$__GETPRIORRECORDS$$LONGINT
	.long	_DB_TDATASET_$__GETPRIORRECORD$$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__GETRECORDCOUNT$$LONGINT
	.long	_MEMDS_TMEMDATASET_$__GETRECNO$$LONGINT
	.long	_DB_TDATASET_$__INITFIELDDEFS
	.long	_DB_TDATASET_$__INITRECORD$PCHAR
	.long	_DB_TDATASET_$__INTERNALCANCEL
	.long	_DB_TDATASET_$__INTERNALEDIT
	.long	_DB_TDATASET_$__INTERNALINSERT
	.long	_DB_TDATASET_$__INTERNALREFRESH
	.long	_DB_TDATASET_$__OPENCURSOR$BOOLEAN
	.long	_DB_TDATASET_$__OPENCURSORCOMPLETE
	.long	_DB_TDATASET_$__REFRESHINTERNALCALCFIELDS$PCHAR
	.long	_DB_TDATASET_$__SETACTIVE$BOOLEAN
	.long	_DB_TDATASET_$__SETBOOKMARKSTR$ANSISTRING
	.long	_DB_TDATASET_$__SETBUFLISTSIZE$LONGINT
	.long	_DB_TDATASET_$__SETCURRENTRECORD$LONGINT
	.long	_DB_TDATASET_$__SETFILTERED$BOOLEAN
	.long	_DB_TDATASET_$__SETFILTEROPTIONS$TFILTEROPTIONS
	.long	_DB_TDATASET_$__SETFILTERTEXT$ANSISTRING
	.long	_DB_TDATASET_$__SETFIELDVALUES$ANSISTRING$VARIANT
	.long	_DB_TDATASET_$__SETFOUND$BOOLEAN
	.long	_DB_TDATASET_$__SETONFILTERRECORD$TFILTERRECORDEVENT
	.long	_MEMDS_TMEMDATASET_$__SETRECNO$LONGINT
	.long	_DB_TDATASET_$__UPDATEINDEXDEFS
	.long	_MEMDS_TMEMDATASET_$__ALLOCRECORDBUFFER$$PCHAR
	.long	_MEMDS_TMEMDATASET_$__FREERECORDBUFFER$PCHAR
	.long	_MEMDS_TMEMDATASET_$__GETBOOKMARKDATA$PCHAR$POINTER
	.long	_MEMDS_TMEMDATASET_$__GETBOOKMARKFLAG$PCHAR$$TBOOKMARKFLAG
	.long	_DB_TDATASET_$__GETDATASOURCE$$TDATASOURCE
	.long	_MEMDS_TMEMDATASET_$__GETRECORDSIZE$$WORD
	.long	_MEMDS_TMEMDATASET_$__INTERNALADDRECORD$POINTER$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__INTERNALDELETE
	.long	_MEMDS_TMEMDATASET_$__INTERNALFIRST
	.long	_MEMDS_TMEMDATASET_$__INTERNALGOTOBOOKMARK$POINTER
	.long	_DB_TDATASET_$__INTERNALHANDLEEXCEPTION
	.long	_MEMDS_TMEMDATASET_$__INTERNALINITRECORD$PCHAR
	.long	_MEMDS_TMEMDATASET_$__INTERNALLAST
	.long	_MEMDS_TMEMDATASET_$__INTERNALPOST
	.long	_MEMDS_TMEMDATASET_$__INTERNALSETTORECORD$PCHAR
	.long	_MEMDS_TMEMDATASET_$__SETBOOKMARKFLAG$PCHAR$TBOOKMARKFLAG
	.long	_MEMDS_TMEMDATASET_$__SETBOOKMARKDATA$PCHAR$POINTER
	.long	_MEMDS_TMEMDATASET_$__GETRECORD$PCHAR$TGETMODE$BOOLEAN$$TGETRESULT
	.long	_MEMDS_TMEMDATASET_$__INTERNALCLOSE
	.long	_MEMDS_TMEMDATASET_$__INTERNALOPEN
	.long	_MEMDS_TMEMDATASET_$__INTERNALINITFIELDDEFS
	.long	_MEMDS_TMEMDATASET_$__ISCURSOROPEN$$BOOLEAN
	.long	_DB_TDATASET_$__PSENDTRANSACTION$BOOLEAN
	.long	_DB_TDATASET_$__PSEXECUTE
	.long	_DB_TDATASET_$__PSEXECUTESTATEMENT$ANSISTRING$TPARAMS$POINTER$$LONGINT
	.long	_DB_TDATASET_$__PSGETATTRIBUTES$TLIST
	.long	_DB_TDATASET_$__PSGETCOMMANDTEXT$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETCOMMANDTYPE$$TPSCOMMANDTYPE
	.long	_DB_TDATASET_$__PSGETDEFAULTORDER$$TINDEXDEF
	.long	_DB_TDATASET_$__PSGETINDEXDEFS$TINDEXOPTIONS$$TINDEXDEFS
	.long	_DB_TDATASET_$__PSGETKEYFIELDS$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETPARAMS$$TPARAMS
	.long	_DB_TDATASET_$__PSGETQUOTECHAR$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETTABLENAME$$ANSISTRING
	.long	_DB_TDATASET_$__PSGETUPDATEEXCEPTION$EXCEPTION$EUPDATEERROR$$EUPDATEERROR
	.long	_DB_TDATASET_$__PSINTRANSACTION$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLBASED$$BOOLEAN
	.long	_DB_TDATASET_$__PSISSQLSUPPORTED$$BOOLEAN
	.long	_DB_TDATASET_$__PSRESET
	.long	_DB_TDATASET_$__PSSETCOMMANDTEXT$ANSISTRING
	.long	_DB_TDATASET_$__PSSETPARAMS$TPARAMS
	.long	_DB_TDATASET_$__PSSTARTTRANSACTION
	.long	_DB_TDATASET_$__PSUPDATERECORD$TUPDATEKIND$TDATASET$$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__GETFIELDDATA$TFIELD$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__GETFIELDDATA$TFIELD$POINTER$BOOLEAN$$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__SETFIELDDATA$TFIELD$POINTER
	.long	_DB_TDATASET_$__SETFIELDDATA$TFIELD$POINTER$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__BOOKMARKVALID$POINTER$$BOOLEAN
	.long	_DB_TDATASET_$__CANCEL
	.long	_DB_TDATASET_$__COMPAREBOOKMARKS$POINTER$POINTER$$LONGINT
	.long	_DB_TDATASET_$__CREATEBLOBSTREAM$TFIELD$TBLOBSTREAMMODE$$TSTREAM
	.long	_DB_TDATASET_$__DATACONVERT$TFIELD$POINTER$POINTER$BOOLEAN
	.long	_DB_TDATASET_$__FINDFIRST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDLAST$$BOOLEAN
	.long	_DB_TDATASET_$__FINDNEXT$$BOOLEAN
	.long	_DB_TDATASET_$__FINDPRIOR$$BOOLEAN
	.long	_DB_TDATASET_$__FREEBOOKMARK$POINTER
	.long	_DB_TDATASET_$__GETBOOKMARK$$POINTER
	.long	_DB_TDATASET_$__GETCURRENTRECORD$PCHAR$$BOOLEAN
	.long	_DB_TDATASET_$__ISSEQUENCED$$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	.long	_MEMDS_TMEMDATASET_$__LOOKUP$ANSISTRING$VARIANT$ANSISTRING$$VARIANT
	.long	_DB_TDATASET_$__POST
	.long	_DB_TDATASET_$__RESYNC$TRESYNCMODE
	.long	_DB_TDATASET_$__TRANSLATE$PCHAR$PCHAR$BOOLEAN$$LONGINT
	.long	_DB_TDATASET_$__UPDATESTATUS$$TUPDATESTATUS
	.long	_MEMDS_TMEMDATASET_$__LOADDATAFROMSTREAM$TSTREAM
	.long	_MEMDS_TMEMDATASET_$__SAVEDATATOSTREAM$TSTREAM$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_MEMDS
_THREADVARLIST_MEMDS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$MEMDS$_Ld8
_$MEMDS$_Ld8:
	.short	0,1
	.long	0,-1,5
.reference _$MEMDS$_Ld7
.globl	_$MEMDS$_Ld7
_$MEMDS$_Ld7:
.reference _$MEMDS$_Ld8
	.ascii	"MEMDS\000"

.const_data
	.align 2
.globl	_$MEMDS$_Ld10
_$MEMDS$_Ld10:
	.short	0,1
	.long	0,-1,38
.reference _$MEMDS$_Ld9
.globl	_$MEMDS$_Ld9
_$MEMDS$_Ld9:
.reference _$MEMDS$_Ld10
	.ascii	"Fieldtype of Field \"%s\" not supported.\000"
	.align 2
.globl	_$MEMDS$_Ld12
_$MEMDS$_Ld12:
	.short	0,1
	.long	0,-1,31
.reference _$MEMDS$_Ld11
.globl	_$MEMDS$_Ld11
_$MEMDS$_Ld11:
.reference _$MEMDS$_Ld12
	.ascii	"memds.serrfieldtypenotsupported\000"

.const_data
	.align 2
.globl	_$MEMDS$_Ld14
_$MEMDS$_Ld14:
	.short	0,1
	.long	0,-1,22
.reference _$MEMDS$_Ld13
.globl	_$MEMDS$_Ld13
_$MEMDS$_Ld13:
.reference _$MEMDS$_Ld14
	.ascii	"Bookmark %d not found.\000"
	.align 2
.globl	_$MEMDS$_Ld16
_$MEMDS$_Ld16:
	.short	0,1
	.long	0,-1,26
.reference _$MEMDS$_Ld15
.globl	_$MEMDS$_Ld15
_$MEMDS$_Ld15:
.reference _$MEMDS$_Ld16
	.ascii	"memds.serrbookmarknotfound\000"

.const_data
	.align 2
.globl	_$MEMDS$_Ld18
_$MEMDS$_Ld18:
	.short	0,1
	.long	0,-1,35
.reference _$MEMDS$_Ld17
.globl	_$MEMDS$_Ld17
_$MEMDS$_Ld17:
.reference _$MEMDS$_Ld18
	.ascii	"Error in data stream at position %d\000"
	.align 2
.globl	_$MEMDS$_Ld20
_$MEMDS$_Ld20:
	.short	0,1
	.long	0,-1,27
.reference _$MEMDS$_Ld19
.globl	_$MEMDS$_Ld19
_$MEMDS$_Ld19:
.reference _$MEMDS$_Ld20
	.ascii	"memds.serrinvaliddatastream\000"

.const_data
	.align 2
.globl	_$MEMDS$_Ld22
_$MEMDS$_Ld22:
	.short	0,1
	.long	0,-1,60
.reference _$MEMDS$_Ld21
.globl	_$MEMDS$_Ld21
_$MEMDS$_Ld21:
.reference _$MEMDS$_Ld22
	.ascii	"Wrong data stream marker at position %d. Got %d, ex"
	.ascii	"pected %d\000"
	.align 2
.globl	_$MEMDS$_Ld24
_$MEMDS$_Ld24:
	.short	0,1
	.long	0,-1,28
.reference _$MEMDS$_Ld23
.globl	_$MEMDS$_Ld23
_$MEMDS$_Ld23:
.reference _$MEMDS$_Ld24
	.ascii	"memds.serrinvalidmarkeratpos\000"

.const_data
	.align 2
.globl	_$MEMDS$_Ld26
_$MEMDS$_Ld26:
	.short	0,1
	.long	0,-1,27
.reference _$MEMDS$_Ld25
.globl	_$MEMDS$_Ld25
_$MEMDS$_Ld25:
.reference _$MEMDS$_Ld26
	.ascii	"Filename must not be empty.\000"
	.align 2
.globl	_$MEMDS$_Ld28
_$MEMDS$_Ld28:
	.short	0,1
	.long	0,-1,20
.reference _$MEMDS$_Ld27
.globl	_$MEMDS$_Ld27
_$MEMDS$_Ld27:
.reference _$MEMDS$_Ld28
	.ascii	"memds.serrnofilename\000"
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_READINTEGER$TSTREAM$$LONGINT$stub:
.indirect_symbol _MEMDS_READINTEGER$TSTREAM$$LONGINT
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

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
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

L_MEMDS_WRITEINTEGER$TSTREAM$LONGINT$stub:
.indirect_symbol _MEMDS_WRITEINTEGER$TSTREAM$LONGINT
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET$stub:
.indirect_symbol _DB_TDATASET_$__CREATE$TCOMPONENT$$TDATASET
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__DESTROY$stub:
.indirect_symbol _DB_TDATASET_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__GETINTEGERPOINTER$PINTEGER$LONGINT$$PINTEGER
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

L_DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF$stub:
.indirect_symbol _DB_TFIELDDEFS_$__GETITEM$LONGINT$$TFIELDDEF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__RAISEERROR$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ISEMPTY$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__ISEMPTY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ACTIVEBUFFER$$PCHAR$stub:
.indirect_symbol _DB_TDATASET_$__ACTIVEBUFFER$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSGETRECORDOFFSET$LONGINT$$LONGINT
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

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TMEMORYSTREAM_$__LOADFROMSTREAM$TSTREAM$stub:
.indirect_symbol _CLASSES_TMEMORYSTREAM_$__LOADFROMSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__READFIELDDEFSFROMSTREAM$TSTREAM$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__READFIELDDEFSFROMSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__CHECKMARKER$TSTREAM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CLEAR$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_READSTRING$TSTREAM$$ANSISTRING$stub:
.indirect_symbol _MEMDS_READSTRING$TSTREAM$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDDEF_$__CREATE$crc2A105691$stub:
.indirect_symbol _DB_TFIELDDEF_$__CREATE$crc2A105691
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

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__BINDFIELDS$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__BINDFIELDS$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__CREATETABLE$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__CREATETABLE
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

L_CLASSES_TMEMORYSTREAM_$__CLEAR$stub:
.indirect_symbol _CLASSES_TMEMORYSTREAM_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CLOSE$stub:
.indirect_symbol _DB_TDATASET_$__CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__LOADFROMSTREAM$TSTREAM$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__LOADFROMSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__SAVETOFILE$ANSISTRING$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__SAVETOSTREAM$TSTREAM$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__SAVEFIELDDEFSTOSTREAM$TSTREAM$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__SAVEFIELDDEFSTOSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__WRITEMARKER$TSTREAM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_WRITESTRING$TSTREAM$ANSISTRING$stub:
.indirect_symbol _MEMDS_WRITESTRING$TSTREAM$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__INTERNALPOST$stub:
.indirect_symbol _DB_TDATASET_$__INTERNALPOST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSWRITERECORD$PCHAR$LONGINT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSWRITERECORD$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSREADRECORD$PCHAR$LONGINT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSREADRECORD$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSFILTERRECORD$PCHAR$$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSFILTERRECORD$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSGETACTIVEBUFFER$PCHAR$$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSGETACTIVEBUFFER$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN$stub:
.indirect_symbol _MEMDS_GETFIELDISNULL$PBYTE$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__GETRECORDBUFFERPOINTER$PCHAR$LONGINT$$PCHAR$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__GETRECORDBUFFERPOINTER$PCHAR$LONGINT$$PCHAR
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

L_DB_TFIELD_$__VALIDATE$POINTER$stub:
.indirect_symbol _DB_TFIELD_$__VALIDATE$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_SETFIELDISNULL$PBYTE$LONGINT$stub:
.indirect_symbol _MEMDS_SETFIELDISNULL$PBYTE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_UNSETFIELDISNULL$PBYTE$LONGINT$stub:
.indirect_symbol _MEMDS_UNSETFIELDISNULL$PBYTE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__SETTEMPSTATE$TDATASETSTATE$$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__RESTORESTATE$TDATASETSTATE$stub:
.indirect_symbol _DB_TDATASET_$__RESTORESTATE$TDATASETSTATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__CLEAR$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__CLEAR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__GETACTIVE$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__GETACTIVE$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_GETMEM$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSGETBUFFERSIZE$LONGINT$$LONGINT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSGETBUFFERSIZE$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__CALCRECORDLAYOUT$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__CALCRECORDLAYOUT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSAPPENDRECORD$PCHAR$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSAPPENDRECORD$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__CHECKBROWSEMODE$stub:
.indirect_symbol _DB_TDATASET_$__CHECKBROWSEMODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__UPDATECURSORPOS$stub:
.indirect_symbol _DB_TDATASET_$__UPDATECURSORPOS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__COPYFROMDATASET$TDATASET$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__GETFIELDCOUNT$$LONGINT$stub:
.indirect_symbol _DB_TDATASET_$__GETFIELDCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD$stub:
.indirect_symbol _DB_TFIELDS_$__GETFIELD$LONGINT$$TFIELD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__OPEN$stub:
.indirect_symbol _DB_TDATASET_$__OPEN
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

L_DB_TDATASET_$__FIELDBYNAME$ANSISTRING$$TFIELD$stub:
.indirect_symbol _DB_TDATASET_$__FIELDBYNAME$ANSISTRING$$TFIELD
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

L_DB_TDATASET_$__DISABLECONTROLS$stub:
.indirect_symbol _DB_TDATASET_$__DISABLECONTROLS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__APPEND$stub:
.indirect_symbol _DB_TDATASET_$__APPEND
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

L_DB_TDATASET_$__NEXT$stub:
.indirect_symbol _DB_TDATASET_$__NEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__ENABLECONTROLS$stub:
.indirect_symbol _DB_TDATASET_$__ENABLECONTROLS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__TEMPBUFFER$$PCHAR$stub:
.indirect_symbol _DB_TDATASET_$__TEMPBUFFER$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING$stub:
.indirect_symbol _DB_TDATASET_$__GETFIELDLIST$TLIST$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYDIMCOUNT$VARIANT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FINALIZE$stub:
.indirect_symbol FPC_FINALIZE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYOF$array_of_VARIANT$$VARIANT$stub:
.indirect_symbol _VARIANTS_VARARRAYOF$array_of_VARIANT$$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_variant_copy$stub:
.indirect_symbol fpc_variant_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT$stub:
.indirect_symbol _VARIANTS_VARARRAYHIGHBOUND$VARIANT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_vararray_get$stub:
.indirect_symbol fpc_vararray_get
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARTOSTR$VARIANT$$ANSISTRING$stub:
.indirect_symbol _VARIANTS_VARTOSTR$VARIANT$$ANSISTRING
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

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN
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

LFPC_INITIALIZE$stub:
.indirect_symbol FPC_INITIALIZE
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

L_DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN$stub:
.indirect_symbol _DB_TDATASET_$__LOCATE$ANSISTRING$VARIANT$TLOCATEOPTIONS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MEMDS_TMEMDATASET_$__MDSLOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$LONGINT$$BOOLEAN$stub:
.indirect_symbol _MEMDS_TMEMDATASET_$__MDSLOCATERECORD$ANSISTRING$VARIANT$TLOCATEOPTIONS$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_NULL$$VARIANT$stub:
.indirect_symbol _VARIANTS_NULL$$VARIANT
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
.globl	_$MEMDS$_Ld2
_$MEMDS$_Ld2:
	.short	0
	.long	_$MEMDS$_Ld3
	.align 2
.globl	_$MEMDS$_Ld3
_$MEMDS$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_MEMDS_MDSERROR
_INIT_MEMDS_MDSERROR:
	.byte	15,8
	.ascii	"MDSError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_MEMDS_MDSERROR
_RTTI_MEMDS_MDSERROR:
	.byte	15,8
	.ascii	"MDSError"
	.long	_VMT_MEMDS_MDSERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	5
	.ascii	"memds"
	.short	0

.const_data
	.align 2
.globl	_INIT_MEMDS_PRECINFO
_INIT_MEMDS_PRECINFO:
	.byte	0
	.ascii	"\010PRecInfo"

.const_data
	.align 2
.globl	_RTTI_MEMDS_PRECINFO
_RTTI_MEMDS_PRECINFO:
	.byte	0
	.ascii	"\010PRecInfo"

.const_data
	.align 2
.globl	_INIT_MEMDS_TMTRECINFO
_INIT_MEMDS_TMTRECINFO:
	.byte	13,10
	.ascii	"TMTRecInfo"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_MEMDS_TMTRECINFO
_RTTI_MEMDS_TMTRECINFO:
	.byte	13,10
	.ascii	"TMTRecInfo"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_DB_TBOOKMARKFLAG
	.long	4

.const_data
	.align 2
.globl	_INIT_MEMDS_DEF148
_INIT_MEMDS_DEF148:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_MEMDS_DEF232
_INIT_MEMDS_DEF232:
	.byte	12
	.ascii	"\000"
	.long	16,1
	.long	_INIT_SYSTEM_VARIANT
	.long	12

.const_data
	.align 2
.globl	_$MEMDS$_Ld5
_$MEMDS$_Ld5:
	.short	0
	.long	_$MEMDS$_Ld6
	.align 2
.globl	_$MEMDS$_Ld6
_$MEMDS$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_MEMDS_TMEMDATASET
_INIT_MEMDS_TMEMDATASET:
	.byte	15,11
	.ascii	"TMemDataset"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	352

.const_data
	.align 2
.globl	_RTTI_MEMDS_TMEMDATASET
_RTTI_MEMDS_TMEMDATASET:
	.byte	15,11
	.ascii	"TMemDataset"
	.long	_VMT_MEMDS_TMEMDATASET
	.long	_RTTI_DB_TDATASET
	.short	27
	.byte	5
	.ascii	"memds"
	.short	25
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	352,352,1,0,-2147483648
	.short	2
	.byte	48,8
	.ascii	"FileName"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	280,456,1,0,0
	.short	3
	.byte	56,8
	.ascii	"Filtered"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_DB_TDATASET_$__GETACTIVE$$BOOLEAN
	.long	440,1,0,0
	.short	4
	.byte	57,6
	.ascii	"Active"
	.long	_RTTI_DB_TFIELDDEFS
	.long	268
	.long	_DB_TDATASET_$__SETFIELDDEFS$TFIELDDEFS
	.long	1,0,-2147483648
	.short	5
	.byte	52,9
	.ascii	"FieldDefs"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	176,176,1,0,-2147483648
	.short	6
	.byte	48,10
	.ascii	"BeforeOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	100,100,1,0,-2147483648
	.short	7
	.byte	48,9
	.ascii	"AfterOpen"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	144,144,1,0,-2147483648
	.short	8
	.byte	48,11
	.ascii	"BeforeClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	68,68,1,0,-2147483648
	.short	9
	.byte	48,10
	.ascii	"AfterClose"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	168,168,1,0,-2147483648
	.short	10
	.byte	48,12
	.ascii	"BeforeInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	92,92,1,0,-2147483648
	.short	11
	.byte	48,11
	.ascii	"AfterInsert"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	160,160,1,0,-2147483648
	.short	12
	.byte	48,10
	.ascii	"BeforeEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	84,84,1,0,-2147483648
	.short	13
	.byte	48,9
	.ascii	"AfterEdit"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	184,184,1,0,-2147483648
	.short	14
	.byte	48,10
	.ascii	"BeforePost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	108,108,1,0,-2147483648
	.short	15
	.byte	48,9
	.ascii	"AfterPost"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	136,136,1,0,-2147483648
	.short	16
	.byte	48,12
	.ascii	"BeforeCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	60,60,1,0,-2147483648
	.short	17
	.byte	48,11
	.ascii	"AfterCancel"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	152,152,1,0,-2147483648
	.short	18
	.byte	48,12
	.ascii	"BeforeDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	76,76,1,0,-2147483648
	.short	19
	.byte	48,11
	.ascii	"AfterDelete"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	200,200,1,0,-2147483648
	.short	20
	.byte	48,12
	.ascii	"BeforeScroll"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	124,124,1,0,-2147483648
	.short	21
	.byte	48,11
	.ascii	"AfterScroll"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	292,292,1,0,-2147483648
	.short	22
	.byte	48,13
	.ascii	"OnDeleteError"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	300,300,1,0,-2147483648
	.short	23
	.byte	48,11
	.ascii	"OnEditError"
	.long	_RTTI_DB_TDATASETNOTIFYEVENT
	.long	316,316,1,0,-2147483648
	.short	24
	.byte	48,11
	.ascii	"OnNewRecord"
	.long	_RTTI_DB_TDATASETERROREVENT
	.long	324,324,1,0,-2147483648
	.short	25
	.byte	48,11
	.ascii	"OnPostError"
	.long	_RTTI_DB_TFILTERRECORDEVENT
	.long	308,476,1,0,-2147483648
	.short	26
	.byte	56,14
	.ascii	"OnFilterRecord"
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
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_MEMDS_MDSERROR$non_lazy_ptr:
.indirect_symbol _VMT_MEMDS_MDSERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MEMDS_SERRFIELDTYPENOTSUPPORTED$non_lazy_ptr:
.indirect_symbol _RESSTR_MEMDS_SERRFIELDTYPENOTSUPPORTED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MEMDS_SERRINVALIDDATASTREAM$non_lazy_ptr:
.indirect_symbol _RESSTR_MEMDS_SERRINVALIDDATASTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MEMDS_SERRINVALIDMARKERATPOS$non_lazy_ptr:
.indirect_symbol _RESSTR_MEMDS_SERRINVALIDMARKERATPOS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_DB_TFIELDDEF$non_lazy_ptr:
.indirect_symbol _VMT_DB_TFIELDDEF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MEMDS_SERRNOFILENAME$non_lazy_ptr:
.indirect_symbol _RESSTR_MEMDS_SERRNOFILENAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_MEMDS_SERRBOOKMARKNOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_MEMDS_SERRBOOKMARKNOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_VARIANT$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_VARIANT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_MEMDS_START
_RESSTR_MEMDS_START:
	.long	_$MEMDS$_Ld7
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_MEMDS_SERRFIELDTYPENOTSUPPORTED
_RESSTR_MEMDS_SERRFIELDTYPENOTSUPPORTED:
	.long	_$MEMDS$_Ld11
	.long	_$MEMDS$_Ld9
	.long	_$MEMDS$_Ld9
	.long	42270446

.data
	.align 2
.globl	_RESSTR_MEMDS_SERRBOOKMARKNOTFOUND
_RESSTR_MEMDS_SERRBOOKMARKNOTFOUND:
	.long	_$MEMDS$_Ld15
	.long	_$MEMDS$_Ld13
	.long	_$MEMDS$_Ld13
	.long	263055694

.data
	.align 2
.globl	_RESSTR_MEMDS_SERRINVALIDDATASTREAM
_RESSTR_MEMDS_SERRINVALIDDATASTREAM:
	.long	_$MEMDS$_Ld19
	.long	_$MEMDS$_Ld17
	.long	_$MEMDS$_Ld17
	.long	147028292

.data
	.align 2
.globl	_RESSTR_MEMDS_SERRINVALIDMARKERATPOS
_RESSTR_MEMDS_SERRINVALIDMARKERATPOS:
	.long	_$MEMDS$_Ld23
	.long	_$MEMDS$_Ld21
	.long	_$MEMDS$_Ld21
	.long	79693252

.data
	.align 2
.globl	_RESSTR_MEMDS_SERRNOFILENAME
_RESSTR_MEMDS_SERRNOFILENAME:
	.long	_$MEMDS$_Ld27
	.long	_$MEMDS$_Ld25
	.long	_$MEMDS$_Ld25
	.long	74120174

.data
	.align 2
.globl	_RESSTR_MEMDS_END
_RESSTR_MEMDS_END:
	.long	_RESSTR_MEMDS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

