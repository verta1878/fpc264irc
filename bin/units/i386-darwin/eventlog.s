# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DEFAULTFILENAME$$ANSISTRING
_EVENTLOG_TEVENTLOG_$__DEFAULTFILENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	$0,%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	leal	-56(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	leal	-52(%ebp),%ecx
	movl	L_$EVENTLOG$_Ld1$non_lazy_ptr-Lj4(%ebx),%edx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$EVENTLOG$_Ld3$non_lazy_ptr-Lj4(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__ACTIVATESYSTEMLOG
_EVENTLOG_TEVENTLOG_$__ACTIVATESYSTEMLOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj29
Lj29:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__CHECKIDENTIFICATION$stub
	movl	$8,8(%esp)
	movl	$16,4(%esp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	testl	%eax,%eax
	jne	Lj38
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj29(%ebx),%edx
	movl	%edx,%eax
Lj38:
	movl	%eax,(%esp)
	call	L_openlog$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DEACTIVATESYSTEMLOG
_EVENTLOG_TEVENTLOG_$__DEACTIVATESYSTEMLOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_closelog$stub
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__WRITESYSTEMLOG$TEVENTTYPE$ANSISTRING
_EVENTLOG_TEVENTLOG_$__WRITESYSTEMLOG$TEVENTTYPE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj42
Lj42:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj43
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj48
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj42(%ebx),%edx
	movl	%edx,%eax
Lj48:
	movl	%eax,-16(%ebp)
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__EVENTTYPETOSTRING$TEVENTTYPE$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj57
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj42(%ebx),%edx
	movl	%edx,%eax
Lj57:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	L_$EVENTLOG$_Ld5$non_lazy_ptr-Lj42(%ebx),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_syslog$stub
Lj43:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj44
	call	LFPC_RERAISE$stub
Lj44:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__REGISTERMESSAGEFILE$ANSISTRING$$BOOLEAN
_EVENTLOG_TEVENTLOG_$__REGISTERMESSAGEFILE$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj78
	movb	$1,-9(%ebp)
Lj78:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj79
	call	LFPC_RERAISE$stub
Lj79:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__UNREGISTERMESSAGEFILE$$BOOLEAN
_EVENTLOG_TEVENTLOG_$__UNREGISTERMESSAGEFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__MAPTYPETOCATEGORY$TEVENTTYPE$$WORD
_EVENTLOG_TEVENTLOG_$__MAPTYPETOCATEGORY$TEVENTTYPE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movw	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj91
	jmp	Lj92
Lj91:
	leal	-10(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTCATEGORY$WORD$stub
Lj92:
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENTID$TEVENTTYPE$$LONGWORD
_EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENTID$TEVENTTYPE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj101
	jmp	Lj102
Lj101:
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTID$LONGWORD$stub
Lj102:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD
_EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj108
Lj108:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj109
	jmp	Lj110
Lj109:
	movl	-8(%ebp),%eax
	movzwl	92(%eax),%eax
	testl	%eax,%eax
	je	Lj111
	jmp	Lj112
Lj111:
	movl	-8(%ebp),%eax
	movw	$5,92(%eax)
Lj112:
	movl	-8(%ebp),%eax
	movzwl	92(%eax),%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENT$LONGWORD$stub
	jmp	Lj121
Lj110:
	movl	-4(%ebp),%eax
	movl	L_TC_EVENTLOG_TEVENTLOG_$_MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD_WINET$non_lazy_ptr-Lj108(%ebx),%edx
	movzwl	(%edx,%eax,2),%eax
	movl	%eax,-12(%ebp)
Lj121:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__CHECKINACTIVE
_EVENTLOG_TEVENTLOG_$__CHECKINACTIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj125
Lj125:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,68(%eax)
	jne	Lj126
	jmp	Lj127
Lj126:
	movl	L_RESSTR_EVENTLOG_SERROPERATIONNOTALLOWED$non_lazy_ptr-Lj125(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_EVENTLOG_ELOGERROR$non_lazy_ptr-Lj125(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj125(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj127:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING$array_of_const
_EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj136
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING$stub
Lj136:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj137
	call	LFPC_RERAISE$stub
Lj137:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING
_EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__ENSUREACTIVE
_EVENTLOG_TEVENTLOG_$__ENSUREACTIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	68(%eax),%al
	testb	%al,%al
	je	Lj161
	jmp	Lj162
Lj161:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN$stub
Lj162:
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__PAUSE
_EVENTLOG_TEVENTLOG_$__PAUSE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$1,120(%eax)
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__RESUME
_EVENTLOG_TEVENTLOG_$__RESUME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,120(%eax)
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING$array_of_const
_EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj177
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING$stub
Lj177:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
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
.globl	_EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING
_EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$3,%edx
	call	L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING$array_of_const
_EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj202
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING$stub
Lj202:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj203
	call	LFPC_RERAISE$stub
Lj203:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING
_EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING
_EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$array_of_const
_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj235
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub
Lj235:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	12(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	call	LFPC_RERAISE$stub
Lj236:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING
_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,120(%eax)
	jne	Lj254
	jmp	Lj255
Lj254:
	jmp	Lj252
Lj255:
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__ENSUREACTIVE$stub
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj261
	decl	%eax
	je	Lj260
	jmp	Lj259
Lj260:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__WRITEFILELOG$TEVENTTYPE$ANSISTRING$stub
	jmp	Lj258
Lj261:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__WRITESYSTEMLOG$TEVENTTYPE$ANSISTRING$stub
	jmp	Lj258
Lj259:
Lj258:
Lj252:
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__WRITEFILELOG$TEVENTTYPE$ANSISTRING
_EVENTLOG_TEVENTLOG_$__WRITEFILELOG$TEVENTTYPE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-160(%ebp)
	movl	%esi,-156(%ebp)
	movl	%edi,-152(%ebp)
	call	Lj275
Lj275:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj276
	movl	-12(%ebp),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	je	Lj279
	jmp	Lj280
Lj279:
	movl	L_$EVENTLOG$_Ld6$non_lazy_ptr-Lj275(%esi),%ebx
	movl	-12(%ebp),%edi
	leal	88(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,88(%edi)
Lj280:
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	(%esp)
	movl	-12(%ebp),%eax
	movl	88(%eax),%eax
	leal	-20(%ebp),%edx
	call	L_SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING$stub
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__EVENTTYPETOSTRING$TEVENTTYPE$$ANSISTRING$stub
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,-100(%ebp)
	movl	$11,-104(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	$10,-68(%ebp)
	movl	$2,-72(%ebp)
	leal	-104(%ebp),%edx
	movl	$4,%ecx
	movl	L_$EVENTLOG$_Ld8$non_lazy_ptr-Lj275(%esi),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	leal	-76(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj305
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj313
	movl	-4(%ecx),%ecx
Lj313:
	movl	-16(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
Lj305:
	call	LFPC_POPADDRSTACK$stub
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj307
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj275(%esi),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj318
	movl	%eax,-108(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj319
	movl	-108(%ebp),%ebx
	movl	4(%ebx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%ebx),%eax
	movl	%eax,-16(%ebp)
Lj319:
	call	LFPC_POPADDRSTACK$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj323
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj323:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj307
Lj318:
	call	LFPC_RERAISE$stub
Lj307:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj326
	jmp	Lj325
Lj326:
	movl	-12(%ebp),%eax
	cmpb	$0,69(%eax)
	jne	Lj324
	jmp	Lj325
Lj324:
	movl	$0,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_EVENTLOG_SERRLOGFAILEDMSG$non_lazy_ptr-Lj275(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_EVENTLOG_ELOGERROR$non_lazy_ptr-Lj275(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj275(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj325:
Lj276:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj277
	call	LFPC_RERAISE$stub
Lj277:
	movl	-160(%ebp),%ebx
	movl	-156(%ebp),%esi
	movl	-152(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING$array_of_const
_EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj357
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING$stub
Lj357:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj358
	call	LFPC_RERAISE$stub
Lj358:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN
_EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	68(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj374
	jmp	Lj375
Lj374:
	cmpb	$0,-4(%ebp)
	jne	Lj376
	jmp	Lj377
Lj376:
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__ACTIVATELOG$stub
	jmp	Lj380
Lj377:
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DEACTIVATELOG$stub
Lj380:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,68(%eax)
Lj375:
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__ACTIVATELOG
_EVENTLOG_TEVENTLOG_$__ACTIVATELOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj390
	decl	%eax
	je	Lj389
	jmp	Lj388
Lj389:
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__ACTIVATEFILELOG$stub
	jmp	Lj387
Lj390:
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__ACTIVATESYSTEMLOG$stub
	jmp	Lj387
Lj388:
Lj387:
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DEACTIVATELOG
_EVENTLOG_TEVENTLOG_$__DEACTIVATELOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj400
	decl	%eax
	je	Lj399
	jmp	Lj398
Lj399:
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DEACTIVATEFILELOG$stub
	jmp	Lj397
Lj400:
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DEACTIVATESYSTEMLOG$stub
	jmp	Lj397
Lj398:
Lj397:
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__ACTIVATEFILELOG
_EVENTLOG_TEVENTLOG_$__ACTIVATEFILELOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj406
Lj406:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj407
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	je	Lj410
	jmp	Lj411
Lj410:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__DEFAULTFILENAME$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	84(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,84(%esi)
Lj411:
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj420
	jmp	Lj419
Lj420:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj418
	jmp	Lj419
Lj418:
	movw	$1,-6(%ebp)
	jmp	Lj425
Lj419:
	movw	$65280,-6(%ebp)
Lj425:
	movzwl	-6(%ebp),%eax
	orl	$32,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj406(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj440
	jmp	Lj441
Lj440:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movw	$2,%cx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	64(%esi),%esi
	movl	(%esi),%esi
	call	*136(%esi)
Lj441:
Lj407:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj408
	call	LFPC_RERAISE$stub
Lj408:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DEACTIVATEFILELOG
_EVENTLOG_TEVENTLOG_$__DEACTIVATEFILELOG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	$0,64(%eax)
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__SETIDENTIFICATION$ANSISTRING
_EVENTLOG_TEVENTLOG_$__SETIDENTIFICATION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	72(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,72(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__SETLOGTYPE$TLOGTYPE
_EVENTLOG_TEVENTLOG_$__SETLOGTYPE$TLOGTYPE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__CHECKINACTIVE$stub
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,80(%eax)
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING$array_of_const
_EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%esi
	movl	8(%ebp),%ebx
	incl	%ebx
	shll	$3,%ebx
	movl	%ebx,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%ebx,%ecx
	movl	%edi,%edx
	movl	%esi,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj466
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING$stub
Lj466:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj467
	call	LFPC_RERAISE$stub
Lj467:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING
_EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$2,%edx
	call	L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__SETFILENAME$ANSISTRING
_EVENTLOG_TEVENTLOG_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__CHECKINACTIVE$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	84(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,84(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__CHECKIDENTIFICATION
_EVENTLOG_TEVENTLOG_$__CHECKIDENTIFICATION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj497
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	testl	%eax,%eax
	je	Lj500
	jmp	Lj501
Lj500:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	$0,%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	leal	-48(%ebp),%ecx
	movl	$0,%edx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_EVENTLOG_TEVENTLOG_$__SETIDENTIFICATION$ANSISTRING$stub
Lj501:
Lj497:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj498
	call	LFPC_RERAISE$stub
Lj498:
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__EVENTTYPETOSTRING$TEVENTTYPE$$ANSISTRING
_EVENTLOG_TEVENTLOG_$__EVENTTYPETOSTRING$TEVENTTYPE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj521
Lj521:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj528
	decl	%eax
	je	Lj524
	decl	%eax
	je	Lj525
	decl	%eax
	je	Lj526
	decl	%eax
	je	Lj527
	jmp	Lj523
Lj524:
	movl	L_RESSTR_EVENTLOG_SLOGINFO$non_lazy_ptr-Lj521(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_EVENTLOG_SLOGINFO$non_lazy_ptr-Lj521(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj522
Lj525:
	movl	L_RESSTR_EVENTLOG_SLOGWARNING$non_lazy_ptr-Lj521(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_EVENTLOG_SLOGWARNING$non_lazy_ptr-Lj521(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj522
Lj526:
	movl	L_RESSTR_EVENTLOG_SLOGERROR$non_lazy_ptr-Lj521(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_EVENTLOG_SLOGERROR$non_lazy_ptr-Lj521(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj522
Lj527:
	movl	L_RESSTR_EVENTLOG_SLOGDEBUG$non_lazy_ptr-Lj521(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_EVENTLOG_SLOGDEBUG$non_lazy_ptr-Lj521(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj522
Lj528:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	92(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	L_RESSTR_EVENTLOG_SLOGCUSTOM$non_lazy_ptr-Lj521(%esi),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj522
Lj523:
Lj522:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTID$LONGWORD
_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTID$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,104(%eax)
	jne	Lj547
	jmp	Lj548
Lj547:
	movl	-8(%ebp),%eax
	movl	108(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	104(%ebx),%ebx
	call	*%ebx
Lj548:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTCATEGORY$WORD
_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTCATEGORY$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,96(%eax)
	jne	Lj557
	jmp	Lj558
Lj557:
	movl	-8(%ebp),%eax
	movl	100(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	96(%ebx),%ebx
	call	*%ebx
Lj558:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENT$LONGWORD
_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,112(%eax)
	jne	Lj567
	jmp	Lj568
Lj567:
	movl	-8(%ebp),%eax
	movl	116(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	112(%ebx),%ebx
	call	*%ebx
Lj568:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_EVENTLOG_TEVENTLOG_$__DESTROY
_EVENTLOG_TEVENTLOG_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj577
	jmp	Lj578
Lj577:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj578:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj591
	jmp	Lj590
Lj591:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj589
	jmp	Lj590
Lj589:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj590:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld10
_$EVENTLOG$_Ld10:
	.byte	9
	.ascii	"TEventLog"

.const_data
	.align 2
.globl	_VMT_EVENTLOG_TEVENTLOG
_VMT_EVENTLOG_TEVENTLOG:
	.long	124,-124
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$EVENTLOG$_Ld10
	.long	0,0
	.long	_$EVENTLOG$_Ld11
	.long	_RTTI_EVENTLOG_TEVENTLOG
	.long	_INIT_EVENTLOG_TEVENTLOG
	.long	0,0,0
	.long	_EVENTLOG_TEVENTLOG_$__DESTROY
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
	.long	_CLASSES_TCOMPONENT_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_CLASSES_TCOMPONENT_$__SETNAME$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_EVENTLOG_TEVENTLOG_$__REGISTERMESSAGEFILE$ANSISTRING$$BOOLEAN
	.long	_EVENTLOG_TEVENTLOG_$__UNREGISTERMESSAGEFILE$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld13
_$EVENTLOG$_Ld13:
	.byte	9
	.ascii	"ELogError"

.const_data
	.align 2
.globl	_VMT_EVENTLOG_ELOGERROR
_VMT_EVENTLOG_ELOGERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$EVENTLOG$_Ld13
	.long	0,0
	.long	_$EVENTLOG$_Ld14
	.long	_RTTI_EVENTLOG_ELOGERROR
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
.globl	_THREADVARLIST_EVENTLOG
_THREADVARLIST_EVENTLOG:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$EVENTLOG$_Ld17
_$EVENTLOG$_Ld17:
	.short	0,1
	.long	0,-1,8
.reference _$EVENTLOG$_Ld16
.globl	_$EVENTLOG$_Ld16
_$EVENTLOG$_Ld16:
.reference _$EVENTLOG$_Ld17
	.ascii	"EVENTLOG\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld19
_$EVENTLOG$_Ld19:
	.short	0,1
	.long	0,-1,4
.reference _$EVENTLOG$_Ld18
.globl	_$EVENTLOG$_Ld18
_$EVENTLOG$_Ld18:
.reference _$EVENTLOG$_Ld19
	.ascii	"Info\000"
	.align 2
.globl	_$EVENTLOG$_Ld21
_$EVENTLOG$_Ld21:
	.short	0,1
	.long	0,-1,17
.reference _$EVENTLOG$_Ld20
.globl	_$EVENTLOG$_Ld20
_$EVENTLOG$_Ld20:
.reference _$EVENTLOG$_Ld21
	.ascii	"eventlog.sloginfo\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld23
_$EVENTLOG$_Ld23:
	.short	0,1
	.long	0,-1,7
.reference _$EVENTLOG$_Ld22
.globl	_$EVENTLOG$_Ld22
_$EVENTLOG$_Ld22:
.reference _$EVENTLOG$_Ld23
	.ascii	"Warning\000"
	.align 2
.globl	_$EVENTLOG$_Ld25
_$EVENTLOG$_Ld25:
	.short	0,1
	.long	0,-1,20
.reference _$EVENTLOG$_Ld24
.globl	_$EVENTLOG$_Ld24
_$EVENTLOG$_Ld24:
.reference _$EVENTLOG$_Ld25
	.ascii	"eventlog.slogwarning\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld27
_$EVENTLOG$_Ld27:
	.short	0,1
	.long	0,-1,5
.reference _$EVENTLOG$_Ld26
.globl	_$EVENTLOG$_Ld26
_$EVENTLOG$_Ld26:
.reference _$EVENTLOG$_Ld27
	.ascii	"Error\000"
	.align 2
.globl	_$EVENTLOG$_Ld29
_$EVENTLOG$_Ld29:
	.short	0,1
	.long	0,-1,18
.reference _$EVENTLOG$_Ld28
.globl	_$EVENTLOG$_Ld28
_$EVENTLOG$_Ld28:
.reference _$EVENTLOG$_Ld29
	.ascii	"eventlog.slogerror\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld31
_$EVENTLOG$_Ld31:
	.short	0,1
	.long	0,-1,5
.reference _$EVENTLOG$_Ld30
.globl	_$EVENTLOG$_Ld30
_$EVENTLOG$_Ld30:
.reference _$EVENTLOG$_Ld31
	.ascii	"Debug\000"
	.align 2
.globl	_$EVENTLOG$_Ld33
_$EVENTLOG$_Ld33:
	.short	0,1
	.long	0,-1,18
.reference _$EVENTLOG$_Ld32
.globl	_$EVENTLOG$_Ld32
_$EVENTLOG$_Ld32:
.reference _$EVENTLOG$_Ld33
	.ascii	"eventlog.slogdebug\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld35
_$EVENTLOG$_Ld35:
	.short	0,1
	.long	0,-1,11
.reference _$EVENTLOG$_Ld34
.globl	_$EVENTLOG$_Ld34
_$EVENTLOG$_Ld34:
.reference _$EVENTLOG$_Ld35
	.ascii	"Custom (%d)\000"
	.align 2
.globl	_$EVENTLOG$_Ld37
_$EVENTLOG$_Ld37:
	.short	0,1
	.long	0,-1,19
.reference _$EVENTLOG$_Ld36
.globl	_$EVENTLOG$_Ld36
_$EVENTLOG$_Ld36:
.reference _$EVENTLOG$_Ld37
	.ascii	"eventlog.slogcustom\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld39
_$EVENTLOG$_Ld39:
	.short	0,1
	.long	0,-1,31
.reference _$EVENTLOG$_Ld38
.globl	_$EVENTLOG$_Ld38
_$EVENTLOG$_Ld38:
.reference _$EVENTLOG$_Ld39
	.ascii	"Failed to log entry (Error: %s)\000"
	.align 2
.globl	_$EVENTLOG$_Ld41
_$EVENTLOG$_Ld41:
	.short	0,1
	.long	0,-1,25
.reference _$EVENTLOG$_Ld40
.globl	_$EVENTLOG$_Ld40
_$EVENTLOG$_Ld40:
.reference _$EVENTLOG$_Ld41
	.ascii	"eventlog.serrlogfailedmsg\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld43
_$EVENTLOG$_Ld43:
	.short	0,1
	.long	0,-1,36
.reference _$EVENTLOG$_Ld42
.globl	_$EVENTLOG$_Ld42
_$EVENTLOG$_Ld42:
.reference _$EVENTLOG$_Ld43
	.ascii	"Could not open system log (error %d)\000"
	.align 2
.globl	_$EVENTLOG$_Ld45
_$EVENTLOG$_Ld45:
	.short	0,1
	.long	0,-1,21
.reference _$EVENTLOG$_Ld44
.globl	_$EVENTLOG$_Ld44
_$EVENTLOG$_Ld44:
.reference _$EVENTLOG$_Ld45
	.ascii	"eventlog.serrnosyslog\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld47
_$EVENTLOG$_Ld47:
	.short	0,1
	.long	0,-1,30
.reference _$EVENTLOG$_Ld46
.globl	_$EVENTLOG$_Ld46
_$EVENTLOG$_Ld46:
.reference _$EVENTLOG$_Ld47
	.ascii	"Failed to log entry (error %d)\000"
	.align 2
.globl	_$EVENTLOG$_Ld49
_$EVENTLOG$_Ld49:
	.short	0,1
	.long	0,-1,22
.reference _$EVENTLOG$_Ld48
.globl	_$EVENTLOG$_Ld48
_$EVENTLOG$_Ld48:
.reference _$EVENTLOG$_Ld49
	.ascii	"eventlog.serrlogfailed\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld51
_$EVENTLOG$_Ld51:
	.short	0,1
	.long	0,-1,46
.reference _$EVENTLOG$_Ld50
.globl	_$EVENTLOG$_Ld50
_$EVENTLOG$_Ld50:
.reference _$EVENTLOG$_Ld51
	.ascii	"Operation not allowed when eventlog is active.\000"
	.align 2
.globl	_$EVENTLOG$_Ld53
_$EVENTLOG$_Ld53:
	.short	0,1
	.long	0,-1,32
.reference _$EVENTLOG$_Ld52
.globl	_$EVENTLOG$_Ld52
_$EVENTLOG$_Ld52:
.reference _$EVENTLOG$_Ld53
	.ascii	"eventlog.serroperationnotallowed\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld2
_$EVENTLOG$_Ld2:
	.short	0,1
	.long	0,-1,4
.reference _$EVENTLOG$_Ld1
.globl	_$EVENTLOG$_Ld1
_$EVENTLOG$_Ld1:
.reference _$EVENTLOG$_Ld2
	.ascii	".log\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld4
_$EVENTLOG$_Ld4:
	.short	0,1
	.long	0,-1,5
.reference _$EVENTLOG$_Ld3
.globl	_$EVENTLOG$_Ld3
_$EVENTLOG$_Ld3:
.reference _$EVENTLOG$_Ld4
	.ascii	"/tmp/\000"

.const
	.align 2
.globl	_$EVENTLOG$_Ld5
_$EVENTLOG$_Ld5:
	.ascii	"[%s] %s\000"

.data
	.align 1
.globl	_TC_EVENTLOG_TEVENTLOG_$_MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD_WINET
_TC_EVENTLOG_TEVENTLOG_$_MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD_WINET:
	.short	5,6,4,3,7

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld7
_$EVENTLOG$_Ld7:
	.short	0,1
	.long	0,-1,23
.reference _$EVENTLOG$_Ld6
.globl	_$EVENTLOG$_Ld6
_$EVENTLOG$_Ld6:
.reference _$EVENTLOG$_Ld7
	.ascii	"yyyy-mm-dd hh:nn:ss.zzz\000"

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld9
_$EVENTLOG$_Ld9:
	.short	0,1
	.long	0,-1,15
.reference _$EVENTLOG$_Ld8
.globl	_$EVENTLOG$_Ld8
_$EVENTLOG$_Ld8:
.reference _$EVENTLOG$_Ld9
	.ascii	"%s [%s %s] %s%s\000"
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
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

L_EVENTLOG_TEVENTLOG_$__CHECKIDENTIFICATION$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__CHECKIDENTIFICATION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_openlog$stub:
.indirect_symbol _openlog
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_closelog$stub:
.indirect_symbol _closelog
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__EVENTTYPETOSTRING$TEVENTTYPE$$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__EVENTTYPETOSTRING$TEVENTTYPE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_syslog$stub:
.indirect_symbol _syslog
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTCATEGORY$WORD$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTCATEGORY$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTID$LONGWORD$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENTID$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENT$LONGWORD$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DOGETCUSTOMEVENT$LONGWORD
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

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DEBUG$ANSISTRING
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

L_EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__LOG$TEVENTTYPE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__ERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__INFO$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__ENSUREACTIVE$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__ENSUREACTIVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__WRITEFILELOG$TEVENTTYPE$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__WRITEFILELOG$TEVENTTYPE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__WRITESYSTEMLOG$TEVENTTYPE$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__WRITESYSTEMLOG$TEVENTTYPE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_NOW$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_NOW$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING
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

LFPC_CATCHES$stub:
.indirect_symbol FPC_CATCHES
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

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__LOG$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__ACTIVATELOG$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__ACTIVATELOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DEACTIVATELOG$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DEACTIVATELOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__ACTIVATEFILELOG$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__ACTIVATEFILELOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__ACTIVATESYSTEMLOG$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__ACTIVATESYSTEMLOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DEACTIVATEFILELOG$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DEACTIVATEFILELOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DEACTIVATESYSTEMLOG$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DEACTIVATESYSTEMLOG
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__DEFAULTFILENAME$$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__DEFAULTFILENAME$$ANSISTRING
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__CHECKINACTIVE$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__CHECKINACTIVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__WARNING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_EVENTLOG_TEVENTLOG_$__SETIDENTIFICATION$ANSISTRING$stub:
.indirect_symbol _EVENTLOG_TEVENTLOG_$__SETIDENTIFICATION$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__DESTROY
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
.globl	_INIT_EVENTLOG_DEF130
_INIT_EVENTLOG_DEF130:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_EVENTLOG_DEF134
_INIT_EVENTLOG_DEF134:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld11
_$EVENTLOG$_Ld11:
	.short	0
	.long	_$EVENTLOG$_Ld12
	.align 2
.globl	_$EVENTLOG$_Ld12
_$EVENTLOG$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_EVENTLOG_TEVENTLOG
_INIT_EVENTLOG_TEVENTLOG:
	.byte	15,9
	.ascii	"TEventLog"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	72
	.long	_INIT_SYSTEM_ANSISTRING
	.long	84
	.long	_INIT_SYSTEM_ANSISTRING
	.long	88

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_TLOGTYPE
_RTTI_EVENTLOG_TLOGTYPE:
	.byte	3,8
	.ascii	"TLogType"
	.byte	5
	.long	0,1,0
	.byte	8
	.ascii	"ltSystem"
	.byte	6
	.ascii	"ltFile"
	.byte	8
	.ascii	"eventlog"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_TLOGTYPE_s2o
_RTTI_EVENTLOG_TLOGTYPE_s2o:
	.long	2,1
	.long	_RTTI_EVENTLOG_TLOGTYPE+32
	.long	0
	.long	_RTTI_EVENTLOG_TLOGTYPE+23

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_TLOGTYPE_o2s
_RTTI_EVENTLOG_TLOGTYPE_o2s:
	.long	0
	.long	_RTTI_EVENTLOG_TLOGTYPE+23
	.long	_RTTI_EVENTLOG_TLOGTYPE+32

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_TLOGCATEGORYEVENT
_RTTI_EVENTLOG_TLOGCATEGORYEVENT:
	.byte	6,17
	.ascii	"TLogCategoryEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	1,4
	.ascii	"Code"
	.ascii	"\004Word"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WORD

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_TLOGCODEEVENT
_RTTI_EVENTLOG_TLOGCODEEVENT:
	.byte	6,13
	.ascii	"TLogCodeEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	1,4
	.ascii	"Code"
	.ascii	"\010LongWord"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_LONGWORD

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_TEVENTLOG
_RTTI_EVENTLOG_TEVENTLOG:
	.byte	15,9
	.ascii	"TEventLog"
	.long	_VMT_EVENTLOG_TEVENTLOG
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	16
	.byte	8
	.ascii	"eventlog"
	.short	14
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	52,52,1,0,-2147483648
	.short	2
	.byte	48,13
	.ascii	"AppendContent"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	72
	.long	_EVENTLOG_TEVENTLOG_$__SETIDENTIFICATION$ANSISTRING
	.long	1,0,-2147483648
	.short	3
	.byte	52,14
	.ascii	"Identification"
	.long	_RTTI_EVENTLOG_TLOGTYPE
	.long	80
	.long	_EVENTLOG_TEVENTLOG_$__SETLOGTYPE$TLOGTYPE
	.long	1,0,-2147483648
	.short	4
	.byte	52,7
	.ascii	"LogType"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	68
	.long	_EVENTLOG_TEVENTLOG_$__SETACTIVE$BOOLEAN
	.long	1,0,-2147483648
	.short	5
	.byte	52,6
	.ascii	"Active"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	69,69,1,0,-2147483648
	.short	6
	.byte	48,21
	.ascii	"RaiseExceptionOnError"
	.long	_RTTI_SYSUTILS_TEVENTTYPE
	.long	76,76,1,0,-2147483648
	.short	7
	.byte	48,16
	.ascii	"DefaultEventType"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	84
	.long	_EVENTLOG_TEVENTLOG_$__SETFILENAME$ANSISTRING
	.long	1,0,-2147483648
	.short	8
	.byte	52,8
	.ascii	"FileName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	88,88,1,0,-2147483648
	.short	9
	.byte	48,15
	.ascii	"TimeStampFormat"
	.long	_RTTI_SYSTEM_WORD
	.long	92,92,1,0,-2147483648
	.short	10
	.byte	48,13
	.ascii	"CustomLogType"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	56,56,1,0,-2147483648
	.short	11
	.byte	48,13
	.ascii	"EventIDOffset"
	.long	_RTTI_EVENTLOG_TLOGCATEGORYEVENT
	.long	96,96,1,0,-2147483648
	.short	12
	.byte	48,19
	.ascii	"OnGetCustomCategory"
	.long	_RTTI_EVENTLOG_TLOGCODEEVENT
	.long	104,104,1,0,-2147483648
	.short	13
	.byte	48,18
	.ascii	"OnGetCustomEventID"
	.long	_RTTI_EVENTLOG_TLOGCODEEVENT
	.long	112,112,1,0,-2147483648
	.short	14
	.byte	48,16
	.ascii	"OnGetCustomEvent"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	120,120,1,0,-2147483648
	.short	15
	.byte	48,6
	.ascii	"Paused"

.const_data
	.align 2
.globl	_INIT_EVENTLOG_TLOGTYPE
_INIT_EVENTLOG_TLOGTYPE:
	.byte	3,8
	.ascii	"TLogType"
	.byte	5
	.long	0,1,0
	.byte	8
	.ascii	"ltSystem"
	.byte	6
	.ascii	"ltFile"
	.byte	8
	.ascii	"eventlog"
	.byte	0

.const_data
	.align 2
.globl	_INIT_EVENTLOG_TLOGCODEEVENT
_INIT_EVENTLOG_TLOGCODEEVENT:
	.byte	6,13
	.ascii	"TLogCodeEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	1,4
	.ascii	"Code"
	.ascii	"\010LongWord"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_LONGWORD

.const_data
	.align 2
.globl	_INIT_EVENTLOG_TLOGCATEGORYEVENT
_INIT_EVENTLOG_TLOGCATEGORYEVENT:
	.byte	6,17
	.ascii	"TLogCategoryEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	1,4
	.ascii	"Code"
	.ascii	"\004Word"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_WORD

.const_data
	.align 2
.globl	_$EVENTLOG$_Ld14
_$EVENTLOG$_Ld14:
	.short	0
	.long	_$EVENTLOG$_Ld15
	.align 2
.globl	_$EVENTLOG$_Ld15
_$EVENTLOG$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_EVENTLOG_ELOGERROR
_INIT_EVENTLOG_ELOGERROR:
	.byte	15,9
	.ascii	"ELogError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_EVENTLOG_ELOGERROR
_RTTI_EVENTLOG_ELOGERROR:
	.byte	15,9
	.ascii	"ELogError"
	.long	_VMT_EVENTLOG_ELOGERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"eventlog"
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
L_$EVENTLOG$_Ld1$non_lazy_ptr:
.indirect_symbol _$EVENTLOG$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EVENTLOG$_Ld3$non_lazy_ptr:
.indirect_symbol _$EVENTLOG$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EVENTLOG$_Ld5$non_lazy_ptr:
.indirect_symbol _$EVENTLOG$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_EVENTLOG_TEVENTLOG_$_MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD_WINET$non_lazy_ptr:
.indirect_symbol _TC_EVENTLOG_TEVENTLOG_$_MAPTYPETOEVENT$TEVENTTYPE$$LONGWORD_WINET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SERROPERATIONNOTALLOWED$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SERROPERATIONNOTALLOWED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_EVENTLOG_ELOGERROR$non_lazy_ptr:
.indirect_symbol _VMT_EVENTLOG_ELOGERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EVENTLOG$_Ld6$non_lazy_ptr:
.indirect_symbol _$EVENTLOG$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$EVENTLOG$_Ld8$non_lazy_ptr:
.indirect_symbol _$EVENTLOG$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SERRLOGFAILEDMSG$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SERRLOGFAILEDMSG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SLOGINFO$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SLOGINFO
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SLOGWARNING$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SLOGWARNING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SLOGERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SLOGERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SLOGDEBUG$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SLOGDEBUG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_EVENTLOG_SLOGCUSTOM$non_lazy_ptr:
.indirect_symbol _RESSTR_EVENTLOG_SLOGCUSTOM
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_EVENTLOG_START
_RESSTR_EVENTLOG_START:
	.long	_$EVENTLOG$_Ld16
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SLOGINFO
_RESSTR_EVENTLOG_SLOGINFO:
	.long	_$EVENTLOG$_Ld20
	.long	_$EVENTLOG$_Ld18
	.long	_$EVENTLOG$_Ld18
	.long	328911

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SLOGWARNING
_RESSTR_EVENTLOG_SLOGWARNING:
	.long	_$EVENTLOG$_Ld24
	.long	_$EVENTLOG$_Ld22
	.long	_$EVENTLOG$_Ld22
	.long	227102743

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SLOGERROR
_RESSTR_EVENTLOG_SLOGERROR:
	.long	_$EVENTLOG$_Ld28
	.long	_$EVENTLOG$_Ld26
	.long	_$EVENTLOG$_Ld26
	.long	5020002

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SLOGDEBUG
_RESSTR_EVENTLOG_SLOGDEBUG:
	.long	_$EVENTLOG$_Ld32
	.long	_$EVENTLOG$_Ld30
	.long	_$EVENTLOG$_Ld30
	.long	4897207

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SLOGCUSTOM
_RESSTR_EVENTLOG_SLOGCUSTOM:
	.long	_$EVENTLOG$_Ld36
	.long	_$EVENTLOG$_Ld34
	.long	_$EVENTLOG$_Ld34
	.long	95969753

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SERRLOGFAILEDMSG
_RESSTR_EVENTLOG_SERRLOGFAILEDMSG:
	.long	_$EVENTLOG$_Ld40
	.long	_$EVENTLOG$_Ld38
	.long	_$EVENTLOG$_Ld38
	.long	254534697

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SERRNOSYSLOG
_RESSTR_EVENTLOG_SERRNOSYSLOG:
	.long	_$EVENTLOG$_Ld44
	.long	_$EVENTLOG$_Ld42
	.long	_$EVENTLOG$_Ld42
	.long	51237065

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SERRLOGFAILED
_RESSTR_EVENTLOG_SERRLOGFAILED:
	.long	_$EVENTLOG$_Ld48
	.long	_$EVENTLOG$_Ld46
	.long	_$EVENTLOG$_Ld46
	.long	133396457

.data
	.align 2
.globl	_RESSTR_EVENTLOG_SERROPERATIONNOTALLOWED
_RESSTR_EVENTLOG_SERROPERATIONNOTALLOWED:
	.long	_$EVENTLOG$_Ld52
	.long	_$EVENTLOG$_Ld50
	.long	_$EVENTLOG$_Ld50
	.long	103149038

.data
	.align 2
.globl	_RESSTR_EVENTLOG_END
_RESSTR_EVENTLOG_END:
	.long	_RESSTR_EVENTLOG_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

