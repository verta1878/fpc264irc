# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CLOSEPROCESSHANDLES
_PROCESS_TPROCESS_$__CLOSEPROCESSHANDLES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__PEEKEXITSTATUS$$BOOLEAN
_PROCESS_TPROCESS_$__PEEKEXITSTATUS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj7:
	movl	-4(%ebp),%eax
	leal	168(%eax),%edx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	$1,%ecx
	call	LFPC_SYSC_WAITPID$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj9
	jmp	Lj18
Lj18:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj9
	jmp	Lj7
Lj9:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	cmpl	-12(%ebp),%eax
	seteb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj21
	jmp	Lj22
Lj21:
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	call	L_BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj23
	jmp	Lj24
Lj23:
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	call	L_BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,168(%edx)
Lj24:
	jmp	Lj31
Lj22:
	movl	-4(%ebp),%eax
	movl	$-1,168(%eax)
Lj31:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PROCESS_STRINGSTOPCHARLIST$TSTRINGS$$PPCHAR
_PROCESS_STRINGSTOPCHARLIST$TSTRINGS$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj35
Lj35:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj36
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	shll	$2,%edx
	leal	-8(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	$0,(%ebx,%eax,4)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj52
	decl	-12(%ebp)
	.align 2
Lj53:
	incl	-12(%ebp)
	leal	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj66
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj35(%edi),%edx
	movl	%edx,%eax
Lj66:
	call	L_SYSUTILS_STRNEW$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
	cmpl	-12(%ebp),%ebx
	jg	Lj53
Lj52:
Lj36:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_RERAISE$stub
Lj37:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_FREEPCHARLIST$PPCHAR
_PROCESS_FREEPCHARLIST$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	jmp	Lj78
	.align 2
Lj77:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	L_SYSUTILS_STRDISPOSE$PCHAR$stub
	incl	-8(%ebp)
Lj78:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj77
	jmp	Lj79
Lj79:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_PROCESS_DETECTXTERM$$ANSISTRING
_PROCESS_DETECTXTERM$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj85
Lj85:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj90
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj93
	jmp	Lj94
Lj93:
	movl	L_U_PROCESS_TRYTERMINALS$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_length$stub
	cmpl	$0,%eax
	jg	Lj95
	jmp	Lj96
Lj95:
	movl	L_U_PROCESS_TRYTERMINALS$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%ecx
	movl	L_U_PROCESS_TRYTERMINALS$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%edx
	movl	%ebp,%eax
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINALS$array_of_ANSISTRING$$BOOLEAN$stub
Lj96:
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj107
	jmp	Lj108
Lj107:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	L_$PROCESS$_Ld15$non_lazy_ptr-Lj85(%ebx),%eax
	call	L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	leal	-8(%ebp),%edx
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%edx
	movl	L_$PROCESS$_Ld17$non_lazy_ptr-Lj85(%ebx),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj117
	jmp	Lj118
Lj117:
	movl	%ebp,%eax
	movl	L_$PROCESS$_Ld19$non_lazy_ptr-Lj85(%ebx),%edx
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN$stub
	jmp	Lj127
Lj118:
	movl	-8(%ebp),%eax
	movl	L_$PROCESS$_Ld21$non_lazy_ptr-Lj85(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj128
	jmp	Lj129
Lj128:
	movl	%ebp,%eax
	movl	L_$PROCESS$_Ld23$non_lazy_ptr-Lj85(%ebx),%edx
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN$stub
	jmp	Lj138
Lj129:
	movl	-8(%ebp),%eax
	movl	L_$PROCESS$_Ld25$non_lazy_ptr-Lj85(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj139
	jmp	Lj140
Lj139:
	movl	%ebp,%eax
	movl	L_$PROCESS$_Ld27$non_lazy_ptr-Lj85(%ebx),%edx
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj145
	jmp	Lj146
Lj145:
	movl	%ebp,%eax
	movl	L_$PROCESS$_Ld29$non_lazy_ptr-Lj85(%ebx),%edx
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN$stub
Lj146:
Lj140:
Lj138:
Lj127:
Lj108:
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj155
	jmp	Lj156
Lj155:
	movl	L_TC_PROCESS_DETECTXTERM$$ANSISTRING_DEFAULTTERMINALS$non_lazy_ptr-Lj85(%ebx),%edx
	movl	%ebp,%eax
	movl	$4,%ecx
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINALS$array_of_ANSISTRING$$BOOLEAN$stub
Lj156:
Lj94:
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj85(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj85(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esi)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj165
	jmp	Lj166
Lj165:
	movl	L_RESSTR_PROCESS_SERRNOTERMINALPROGRAM$non_lazy_ptr-Lj85(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_PROCESS_EPROCESS$non_lazy_ptr-Lj85(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj85(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj166:
Lj90:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj91
	call	LFPC_RERAISE$stub
Lj91:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINALS$array_of_ANSISTRING$$BOOLEAN
_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINALS$array_of_ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj89
Lj89:
	popl	-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$2,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-64(%ebp),%ebx
	movl	L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr-Lj89(%ebx),%esi
	movl	%esi,%edx
	call	LFPC_ADDREF_ARRAY$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj179
	movl	$0,-20(%ebp)
	movb	$0,-13(%ebp)
	jmp	Lj187
	.align 2
Lj186:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	call	L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	incl	-20(%ebp)
Lj187:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj195
	jmp	Lj188
Lj195:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj186
	jmp	Lj188
Lj188:
Lj179:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-64(%ebp),%ebx
	movl	L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr-Lj89(%ebx),%esi
	movl	%esi,%edx
	call	LFPC_DECREF_ARRAY$stub
	movl	-4(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj180
	call	LFPC_RERAISE$stub
Lj180:
	movb	-13(%ebp),%al
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN
_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj87
Lj87:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj196
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	L_$PROCESS$_Ld31$non_lazy_ptr-Lj87(%ebx),%eax
	call	L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj213
	jmp	Lj214
Lj213:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj87(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj87(%ebx),%edx
	movl	%eax,(%edx)
Lj214:
Lj196:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj197
	call	LFPC_RERAISE$stub
Lj197:
	movb	-9(%ebp),%al
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_MAKECOMMAND$TPROCESS$$PPCHAR
_PROCESS_MAKECOMMAND$TPROCESS$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-128(%ebp)
	movl	%esi,-124(%ebp)
	call	Lj218
Lj218:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-120(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj219
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	je	Lj225
	jmp	Lj223
Lj225:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	je	Lj224
	jmp	Lj223
Lj224:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	je	Lj222
	jmp	Lj223
Lj222:
	movl	L_RESSTR_PROCESS_SNOCOMMANDLINE$non_lazy_ptr-Lj218(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_PROCESS_EPROCESS$non_lazy_ptr-Lj218(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj218(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj223:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj218(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj238
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	je	Lj244
	jmp	Lj243
Lj244:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	je	Lj242
	jmp	Lj243
Lj242:
	movl	-4(%ebp),%eax
	movl	112(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-4(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-16(%ebp),%eax
	movl	$0,%edx
	movl	-16(%ebp),%esi
	movl	(%esi),%esi
	call	*212(%esi)
	jmp	Lj255
Lj243:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	je	Lj256
	jmp	Lj257
Lj256:
	movl	-4(%ebp),%esi
	movl	84(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	84(%esi),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj260
Lj257:
	movl	-4(%ebp),%esi
	movl	92(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	92(%esi),%eax
	movl	%eax,-12(%ebp)
Lj260:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS$stub
Lj255:
	movl	-4(%ebp),%eax
	testl	$32,52(%eax)
	jne	Lj267
	jmp	Lj268
Lj267:
	movl	-16(%ebp),%eax
	movl	L_$PROCESS$_Ld33$non_lazy_ptr-Lj218(%ebx),%ecx
	movl	$0,%edx
	movl	-16(%ebp),%esi
	movl	(%esi),%esi
	call	*212(%esi)
Lj268:
	movl	-4(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	jne	Lj275
	jmp	Lj276
Lj275:
	movl	L_TC_PROCESS_TITLEOPTION$non_lazy_ptr-Lj218(%ebx),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-4(%ebp),%eax
	movl	84(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj276:
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	$2,56(%eax)
	jne	Lj287
	jmp	Lj288
Lj287:
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	136(%eax),%eax
	movl	%eax,-112(%ebp)
	movl	$0,-116(%ebp)
	movl	-4(%ebp),%eax
	movl	140(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-108(%ebp)
	leal	-116(%ebp),%edx
	movl	$1,%ecx
	movl	L_$PROCESS$_Ld35$non_lazy_ptr-Lj218(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj288:
	movl	-4(%ebp),%eax
	testl	$4,56(%eax)
	jne	Lj297
	jmp	Lj298
Lj297:
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,-112(%ebp)
	movl	$0,-116(%ebp)
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-108(%ebp)
	leal	-116(%ebp),%edx
	movl	$1,%ecx
	movl	L_$PROCESS$_Ld37$non_lazy_ptr-Lj218(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-120(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj298:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj313
	jmp	Lj314
Lj313:
	movl	L_TC_PROCESS_GEOMETRYOPTION$non_lazy_ptr-Lj218(%ebx),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj314:
	movl	-16(%ebp),%eax
	call	L_PROCESS_STRINGSTOPCHARLIST$TSTRINGS$$PPCHAR$stub
	movl	%eax,-8(%ebp)
Lj238:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj239
	decl	%eax
	testl	%eax,%eax
	je	Lj240
Lj240:
	call	LFPC_RERAISE$stub
Lj239:
Lj219:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj220
	call	LFPC_RERAISE$stub
Lj220:
	movl	-8(%ebp),%eax
	movl	-128(%ebp),%ebx
	movl	-124(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_GETLASTERROR$$LONGINT
_PROCESS_GETLASTERROR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$-1,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PROCESS_CREATEPIPES$TPIPEPAIR$TPIPEPAIR$TPIPEPAIR$BOOLEAN
_PROCESS_CREATEPIPES$TPIPEPAIR$TPIPEPAIR$TPIPEPAIR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	$-1,(%eax)
	movl	-8(%ebp),%eax
	movl	$-1,4(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,4(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,4(%eax)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj365
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR$stub
	movl	-4(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR$stub
	cmpb	$0,8(%ebp)
	jne	Lj377
	jmp	Lj378
Lj377:
	movl	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR$stub
Lj378:
Lj365:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj367
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj384
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR$stub
	movl	-4(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR$stub
	cmpb	$0,8(%ebp)
	jne	Lj393
	jmp	Lj394
Lj393:
	movl	-12(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR$stub
Lj394:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj384:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj383
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj383:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj367
Lj367:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR
_PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj399
	jmp	Lj400
Lj399:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
Lj400:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj403
	jmp	Lj404
Lj403:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
Lj404:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR
_PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj348
Lj348:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$1024,%ecx
	call	L_PIPES_CREATEPIPEHANDLES$LONGINT$LONGINT$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj407
	jmp	Lj408
Lj407:
	movl	L_RESSTR_PROCESS_SERRCANNOTCREATEPIPES$non_lazy_ptr-Lj348(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_PROCESS_EPROCESS$non_lazy_ptr-Lj348(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj348(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj408:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT
_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	.align 2
Lj423:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	LFPC_SYSC_DUP2$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj425
	jmp	Lj432
Lj432:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj425
	jmp	Lj423
Lj425:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__EXECUTE
_PROCESS_TPROCESS_$__EXECUTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%ebx,-236(%ebp)
	movl	%esi,-232(%ebp)
	call	Lj434
Lj434:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-220(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj435
	movl	-4(%ebp),%eax
	testl	$4,52(%eax)
	jne	Lj438
	jmp	Lj439
Lj438:
	movl	-4(%ebp),%eax
	testl	$8,52(%eax)
	seteb	%al
	movb	%al,(%esp)
	leal	-28(%ebp),%ecx
	leal	-20(%ebp),%edx
	leal	-12(%ebp),%eax
	call	L_PROCESS_CREATEPIPES$TPIPEPAIR$TPIPEPAIR$TPIPEPAIR$BOOLEAN$stub
Lj439:
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj448
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%edx
	movl	104(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	jne	Lj452
	jmp	Lj453
Lj452:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_PROCESS_STRINGSTOPCHARLIST$TSTRINGS$$PPCHAR$stub
	movl	%eax,-36(%ebp)
	jmp	Lj460
Lj453:
	movl	$0,-36(%ebp)
Lj460:
	leal	-148(%ebp),%ecx
	leal	-172(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-176(%ebp)
	testl	%eax,%eax
	jne	Lj463
	movl	-4(%ebp),%eax
	call	L_PROCESS_MAKECOMMAND$TPROCESS$$PPCHAR$stub
	movl	%eax,-40(%ebp)
	leal	-188(%ebp),%ecx
	leal	-212(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-216(%ebp)
	testl	%eax,%eax
	jne	Lj471
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj477
	jmp	Lj476
Lj477:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj475
	jmp	Lj476
Lj475:
	movl	-40(%ebp),%eax
	movl	(%eax),%eax
	leal	-56(%ebp),%edx
	call	L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub
	jmp	Lj482
Lj476:
	movl	-4(%ebp),%esi
	movl	84(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	84(%esi),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj485
	jmp	Lj486
Lj485:
	movl	-4(%ebp),%esi
	movl	92(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	92(%esi),%eax
	movl	%eax,-56(%ebp)
Lj486:
Lj482:
	movl	-56(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj489
	jmp	Lj490
Lj489:
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	movl	L_$PROCESS$_Ld39$non_lazy_ptr-Lj434(%ebx),%eax
	call	L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub
	leal	-220(%ebp),%edx
	call	Lfpc_pchar_to_ansistr$stub
	movl	-220(%ebp),%edx
	leal	-52(%ebp),%ecx
	movl	-56(%ebp),%eax
	call	L_SYSUTILS_EXESEARCH$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj505
	jmp	Lj506
Lj505:
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	jmp	Lj509
Lj506:
	movl	$0,(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,-224(%ebp)
	movl	$11,-228(%ebp)
	leal	-228(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_PROCESS_SERRNOSUCHPROGRAM$non_lazy_ptr-Lj434(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_PROCESS_EPROCESS$non_lazy_ptr-Lj434(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj434(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj509:
Lj490:
	movl	-4(%ebp),%eax
	testl	$1,52(%eax)
	je	Lj520
	jmp	Lj521
Lj520:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-32(%ebp)
	jmp	Lj524
Lj521:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-32(%ebp)
Lj524:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj527
	jmp	Lj528
Lj527:
	movl	L_RESSTR_PROCESS_SERRCANNOTFORK$non_lazy_ptr-Lj434(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_PROCESS_EPROCESS$non_lazy_ptr-Lj434(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj434(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj528:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj535
	jmp	Lj536
Lj535:
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,72(%eax)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,76(%eax)
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,60(%eax)
	jmp	Lj543
Lj536:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	testl	%eax,%eax
	jne	Lj544
	jmp	Lj545
Lj544:
	movl	-4(%ebp),%eax
	movl	96(%eax),%eax
	call	L_OBJPAS_CHDIR$ANSISTRING$stub
	call	LFPC_IOCHECK$stub
Lj545:
	movl	-4(%ebp),%eax
	testl	$4,52(%eax)
	jne	Lj548
	jmp	Lj549
Lj548:
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%eax
	testl	$8,52(%eax)
	jne	Lj562
	jmp	Lj563
Lj562:
	movl	-16(%ebp),%eax
	movl	$2,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
	jmp	Lj568
Lj563:
	movl	-28(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	$2,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
Lj568:
	jmp	Lj575
Lj549:
	movl	-4(%ebp),%eax
	testl	$16,52(%eax)
	jne	Lj576
	jmp	Lj577
Lj576:
	movl	$66,%edx
	movl	L_$PROCESS$_Ld40$non_lazy_ptr-Lj434(%ebx),%eax
	call	L_SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	movl	$0,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
	movl	-44(%ebp),%eax
	movl	$1,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
	movl	-44(%ebp),%eax
	movl	$2,%edx
	call	L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub
Lj577:
Lj575:
	movl	-4(%ebp),%eax
	cmpl	$0,124(%eax)
	jne	Lj596
	jmp	Lj597
Lj596:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	call	*%eax
Lj597:
	movl	-4(%ebp),%eax
	testl	$1,52(%eax)
	jne	Lj598
	jmp	Lj599
Lj598:
	movw	$17,%ax
	call	L_UNIX_SIGRAISE$SMALLINT$stub
Lj599:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj602
	jmp	Lj603
Lj602:
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj608
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj434(%ebx),%edx
	movl	%edx,%eax
Lj608:
	movl	-36(%ebp),%ecx
	movl	-40(%ebp),%edx
	call	L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub
	jmp	Lj613
Lj603:
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj618
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj434(%ebx),%edx
	movl	%edx,%eax
Lj618:
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj434(%ebx),%edx
	movl	(%edx),%ecx
	movl	-40(%ebp),%edx
	call	L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub
Lj613:
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
Lj543:
Lj471:
	call	LFPC_POPADDRSTACK$stub
	movl	-40(%ebp),%eax
	call	L_PROCESS_FREEPCHARLIST$PPCHAR$stub
	movl	-216(%ebp),%eax
	testl	%eax,%eax
	je	Lj472
	decl	%eax
	testl	%eax,%eax
	je	Lj473
Lj473:
	call	LFPC_RERAISE$stub
Lj472:
Lj463:
	call	LFPC_POPADDRSTACK$stub
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj627
	jmp	Lj628
Lj627:
	movl	-36(%ebp),%eax
	call	L_PROCESS_FREEPCHARLIST$PPCHAR$stub
Lj628:
	movl	-176(%ebp),%eax
	testl	%eax,%eax
	je	Lj464
	decl	%eax
	testl	%eax,%eax
	je	Lj465
Lj465:
	call	LFPC_RERAISE$stub
Lj464:
Lj448:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	testl	$4,52(%eax)
	jne	Lj631
	jmp	Lj632
Lj631:
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-4(%ebp),%eax
	testl	$8,52(%eax)
	je	Lj637
	jmp	Lj638
Lj637:
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
Lj638:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*220(%esi)
Lj632:
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj449
	decl	%eax
	testl	%eax,%eax
	je	Lj450
Lj450:
	call	LFPC_RERAISE$stub
Lj449:
	movl	-4(%ebp),%eax
	movb	$1,164(%eax)
	movl	-4(%ebp),%eax
	testl	$16,40(%eax)
	je	Lj654
	jmp	Lj652
Lj654:
	movl	-4(%ebp),%eax
	testl	$2,52(%eax)
	jne	Lj653
	jmp	Lj652
Lj653:
	movl	-4(%ebp),%eax
	testl	$1,52(%eax)
	je	Lj651
	jmp	Lj652
Lj651:
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__WAITONEXIT$$BOOLEAN$stub
Lj652:
Lj435:
	call	LFPC_POPADDRSTACK$stub
	leal	-220(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-220(%ebp)
	leal	-52(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-56(%ebp)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj436
	call	LFPC_RERAISE$stub
Lj436:
	movl	-236(%ebp),%ebx
	movl	-232(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__WAITONEXIT$$BOOLEAN
_PROCESS_TPROCESS_$__WAITONEXIT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj671
	jmp	Lj672
Lj671:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	call	L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,168(%edx)
Lj672:
	movb	$1,-5(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,164(%eax)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SUSPEND$$LONGINT
_PROCESS_TPROCESS_$__SUSPEND$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	$17,%edx
	call	L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj683
	jmp	Lj684
Lj683:
	movl	$-1,-8(%ebp)
	jmp	Lj691
Lj684:
	movl	$1,-8(%ebp)
Lj691:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__RESUME$$LONGINT
_PROCESS_TPROCESS_$__RESUME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	$19,%edx
	call	L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj696
	jmp	Lj697
Lj696:
	movl	$-1,-8(%ebp)
	jmp	Lj704
Lj697:
	movl	$0,-8(%ebp)
Lj704:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__TERMINATE$LONGINT$$BOOLEAN
_PROCESS_TPROCESS_$__TERMINATE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	$15,%edx
	call	L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj717
	jmp	Lj718
Lj717:
	movl	-8(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj719
	jmp	Lj720
Lj719:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	$9,%edx
	call	L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
Lj720:
Lj718:
	cmpb	$0,-9(%ebp)
	jne	Lj729
	jmp	Lj730
Lj729:
	movl	-8(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__WAITONEXIT$$BOOLEAN$stub
Lj730:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETSHOWWINDOW$TSHOWWINDOWOPTIONS
_PROCESS_TPROCESS_$__SETSHOWWINDOW$TSHOWWINDOWOPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,116(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS
_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj741
	jmp	Lj745
	.align 2
Lj744:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	%ebp,%eax
	call	L_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS_GETNEXTWORD$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj753
	jmp	Lj754
Lj753:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj754:
Lj745:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj759
	movl	-4(%eax),%eax
Lj759:
	cmpl	$0,%eax
	jg	Lj744
	jmp	Lj746
Lj746:
Lj741:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj742
	call	LFPC_RERAISE$stub
Lj742:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS_GETNEXTWORD$$ANSISTRING
_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS_GETNEXTWORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj766
	movl	$1,-12(%ebp)
	jmp	Lj772
	.align 2
Lj771:
	incl	-12(%ebp)
Lj772:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	testl	%eax,%eax
	je	Lj775
	movl	-4(%eax),%eax
Lj775:
	cmpl	-12(%ebp),%eax
	jge	Lj774
	jmp	Lj773
Lj774:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj776
	cmpl	$4,%eax
	stc
	je	Lj776
	cmpl	$23,%eax
	stc
	je	Lj776
	clc
Lj776:
	jc	Lj771
	jmp	Lj773
Lj773:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	$0,-17(%ebp)
	movb	$0,-18(%ebp)
	jmp	Lj784
	.align 2
Lj783:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$34,%eax
	je	Lj788
	cmpl	$39,%eax
	je	Lj788
Lj788:
	je	Lj786
	jmp	Lj787
Lj786:
	cmpb	$0,-17(%ebp)
	jne	Lj789
	jmp	Lj790
Lj789:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-18(%ebp),%al
	setneb	-17(%ebp)
	jmp	Lj793
Lj790:
	movb	$1,-17(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movb	%al,-18(%ebp)
Lj793:
Lj787:
	incl	-16(%ebp)
Lj784:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	testl	%eax,%eax
	je	Lj799
	movl	-4(%eax),%eax
Lj799:
	cmpl	-16(%ebp),%eax
	jge	Lj798
	jmp	Lj785
Lj798:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj801
	cmpl	$4,%eax
	stc
	je	Lj801
	cmpl	$23,%eax
	stc
	je	Lj801
	clc
Lj801:
	jnc	Lj783
	jmp	Lj800
Lj800:
	cmpb	$0,-17(%ebp)
	jne	Lj783
	jmp	Lj785
Lj785:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%ebp),%edx
	call	Lfpc_ansistr_copy$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj814
	movl	-4(%eax),%eax
Lj814:
	cmpl	$0,%eax
	jg	Lj813
	jmp	Lj811
Lj813:
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj815
	movl	-4(%eax),%eax
Lj815:
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movb	-1(%ecx,%eax,1),%al
	cmpb	(%edx),%al
	je	Lj812
	jmp	Lj811
Lj812:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$34,%eax
	je	Lj816
	cmpl	$39,%eax
	je	Lj816
Lj816:
	je	Lj810
	jmp	Lj811
Lj810:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj823
	movl	-4(%ecx),%ecx
Lj823:
	subl	$2,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,(%ebx)
Lj811:
	jmp	Lj829
	.align 2
Lj828:
	incl	-16(%ebp)
Lj829:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	testl	%eax,%eax
	je	Lj832
	movl	-4(%eax),%eax
Lj832:
	cmpl	-16(%ebp),%eax
	jge	Lj831
	jmp	Lj830
Lj831:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj833
	cmpl	$4,%eax
	stc
	je	Lj833
	cmpl	$23,%eax
	stc
	je	Lj833
	clc
Lj833:
	jc	Lj828
	jmp	Lj830
Lj830:
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	leal	-4(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj766:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj767
	call	LFPC_RERAISE$stub
Lj767:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CREATE$TCOMPONENT$$TPROCESS
_PROCESS_TPROCESS_$__CREATE$TCOMPONENT$$TPROCESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj841
Lj841:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj842
	jmp	Lj843
Lj842:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj843:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj848
	jmp	Lj849
Lj848:
	jmp	Lj840
Lj849:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj852
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj856
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	-12(%ebp),%eax
	movl	$2,128(%eax)
	movl	-12(%ebp),%eax
	movl	$0,116(%eax)
	movl	-12(%ebp),%eax
	movb	$1,120(%eax)
	movl	-12(%ebp),%eax
	movl	$0,124(%eax)
	movl	-12(%ebp),%eax
	movl	$1024,160(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj841(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,104(%edx)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj841(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,112(%edx)
Lj856:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj857
	call	LFPC_RERAISE$stub
Lj857:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj889
	jmp	Lj888
Lj889:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj887
	jmp	Lj888
Lj887:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj888:
Lj852:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj854
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj893
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj894
	jmp	Lj895
Lj894:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj895:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj893:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj892
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj892:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj854
Lj854:
Lj840:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__DESTROY
_PROCESS_TPROCESS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj902
	jmp	Lj903
Lj902:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj903:
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAMS$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*216(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj920
	jmp	Lj919
Lj920:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj918
	jmp	Lj919
Lj918:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj919:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__FREESTREAMS
_PROCESS_TPROCESS_$__FREESTREAMS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	180(%eax),%eax
	cmpl	176(%edx),%eax
	jne	Lj925
	jmp	Lj926
Lj925:
	movl	-4(%ebp),%eax
	leal	180(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub
Lj926:
	movl	-4(%ebp),%eax
	leal	176(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub
	movl	-4(%ebp),%eax
	leal	172(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__GETEXITSTATUS$$LONGINT
_PROCESS_TPROCESS_$__GETEXITSTATUS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN$stub
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN
_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,164(%eax)
	jne	Lj947
	jmp	Lj948
Lj947:
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__PEEKEXITSTATUS$$BOOLEAN$stub
	testb	%al,%al
	seteb	164(%ebx)
Lj948:
	movl	-4(%ebp),%eax
	movb	164(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CREATESTREAMS$LONGINT$LONGINT$LONGINT
_PROCESS_TPROCESS_$__CREATESTREAMS$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj956
Lj956:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAMS$stub
	movl	-4(%ebp),%ecx
	movl	L_VMT_PIPES_TOUTPUTPIPESTREAM$non_lazy_ptr-Lj956(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,172(%edx)
	movl	-8(%ebp),%ecx
	movl	L_VMT_PIPES_TINPUTPIPESTREAM$non_lazy_ptr-Lj956(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,176(%edx)
	movl	-12(%ebp),%eax
	testl	$8,52(%eax)
	je	Lj975
	jmp	Lj976
Lj975:
	movl	8(%ebp),%ecx
	movl	L_VMT_PIPES_TINPUTPIPESTREAM$non_lazy_ptr-Lj956(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,180(%edx)
Lj976:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM
_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj987
	jmp	Lj988
Lj987:
	jmp	Lj985
Lj988:
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj985:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__LOADED
_PROCESS_TPROCESS_$__LOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__LOADED$stub
	movl	-4(%ebp),%eax
	testl	$16,40(%eax)
	jne	Lj997
	jmp	Lj996
Lj997:
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	jne	Lj995
	jmp	Lj996
Lj995:
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__CONVERTCOMMANDLINE$stub
Lj996:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CLOSEINPUT
_PROCESS_TPROCESS_$__CLOSEINPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	172(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CLOSEOUTPUT
_PROCESS_TPROCESS_$__CLOSEOUTPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	176(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CLOSESTDERR
_PROCESS_TPROCESS_$__CLOSESTDERR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	180(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWCOLUMNS$LONGWORD
_PROCESS_TPROCESS_$__SETWINDOWCOLUMNS$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1020
	jmp	Lj1021
Lj1020:
	movl	-8(%ebp),%eax
	orl	$8,56(%eax)
Lj1021:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,132(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWHEIGHT$LONGWORD
_PROCESS_TPROCESS_$__SETWINDOWHEIGHT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1026
	jmp	Lj1027
Lj1026:
	movl	-8(%ebp),%eax
	orl	$4,56(%eax)
Lj1027:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,140(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWLEFT$LONGWORD
_PROCESS_TPROCESS_$__SETWINDOWLEFT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1032
	jmp	Lj1033
Lj1032:
	movl	-8(%ebp),%eax
	orl	$2,56(%eax)
Lj1033:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,144(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWTOP$LONGWORD
_PROCESS_TPROCESS_$__SETWINDOWTOP$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1038
	jmp	Lj1039
Lj1038:
	movl	-8(%ebp),%eax
	orl	$4,56(%eax)
Lj1039:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,152(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWWIDTH$LONGWORD
_PROCESS_TPROCESS_$__SETWINDOWWIDTH$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1044
	jmp	Lj1045
Lj1044:
	movl	-8(%ebp),%eax
	orl	$2,56(%eax)
Lj1045:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,136(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__GETWINDOWRECT$$TRECT
_PROCESS_TPROCESS_$__GETWINDOWRECT$$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	144(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	144(%eax),%ecx
	movl	136(%edx),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	152(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	152(%eax),%ecx
	movl	140(%edx),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING
_PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1060
	jmp	Lj1061
Lj1060:
	jmp	Lj1058
Lj1061:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	92(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,92(%ebx)
	movl	-8(%ebp),%eax
	testl	$1,40(%eax)
	je	Lj1068
	jmp	Lj1069
Lj1068:
	movl	-8(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__CONVERTCOMMANDLINE$stub
Lj1069:
Lj1058:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETPARAMETERS$TSTRINGS
_PROCESS_TPROCESS_$__SETPARAMETERS$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	112(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWRECT$TRECT
_PROCESS_TPROCESS_$__SETWINDOWRECT$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	orl	$2,56(%eax)
	movl	-8(%ebp),%eax
	orl	$4,56(%eax)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,144(%eax)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,136(%eax)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,152(%edx)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,140(%eax)
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETWINDOWROWS$LONGWORD
_PROCESS_TPROCESS_$__SETWINDOWROWS$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1090
	jmp	Lj1091
Lj1090:
	movl	-8(%ebp),%eax
	orl	$8,56(%eax)
Lj1091:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,148(%eax)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETAPPLICATIONNAME$ANSISTRING
_PROCESS_TPROCESS_$__SETAPPLICATIONNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	84(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,84(%ebx)
	movl	-8(%ebp),%eax
	testl	$16,40(%eax)
	jne	Lj1100
	jmp	Lj1099
Lj1100:
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	testl	%eax,%eax
	je	Lj1098
	jmp	Lj1099
Lj1098:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	92(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,92(%ebx)
Lj1099:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETPROCESSOPTIONS$TPROCESSOPTIONS
_PROCESS_TPROCESS_$__SETPROCESSOPTIONS$TPROCESSOPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,52(%eax)
	movl	-8(%ebp),%eax
	testl	$32,52(%eax)
	jne	Lj1107
	jmp	Lj1108
Lj1107:
	movl	-8(%ebp),%eax
	andl	$-17,52(%eax)
Lj1108:
	movl	-8(%ebp),%eax
	testl	$1,52(%eax)
	jne	Lj1109
	jmp	Lj1110
Lj1109:
	movl	-8(%ebp),%eax
	andl	$-3,52(%eax)
Lj1110:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETACTIVE$BOOLEAN
_PROCESS_TPROCESS_$__SETACTIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN$stub
	cmpb	-4(%ebp),%al
	jne	Lj1113
	jmp	Lj1114
Lj1113:
	cmpb	$0,-4(%ebp)
	jne	Lj1117
	jmp	Lj1118
Lj1117:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	jmp	Lj1121
Lj1118:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*248(%ecx)
Lj1121:
Lj1114:
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__SETENVIRONMENT$TSTRINGS
_PROCESS_TPROCESS_$__SETENVIRONMENT$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	104(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	104(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	leave
	ret

.text
	.align 4
.globl	_PROCESS_TPROCESS_$__CONVERTCOMMANDLINE
_PROCESS_TPROCESS_$__CONVERTCOMMANDLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj1134
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%edx
	movl	112(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movl	112(%eax),%edx
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	call	L_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS$stub
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%edx
	movl	112(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	cmpl	$0,%eax
	jg	Lj1143
	jmp	Lj1144
Lj1143:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	leal	-48(%ebp),%ecx
	movl	$0,%edx
	movl	-4(%ebp),%ebx
	movl	112(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	108(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,108(%ebx)
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	112(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj1144:
Lj1134:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj1135
	call	LFPC_RERAISE$stub
Lj1135:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT
_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%esi,-152(%ebp)
	call	Lj1160
Lj1160:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1163
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1169
	movl	$4,%edx
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__SETPROCESSOPTIONS$TPROCESSOPTIONS$stub
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	jmp	Lj1182
	.align 2
Lj1181:
	movl	-24(%ebp),%edx
	addl	$65536,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-24(%ebp),%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$65536,%ecx
	movl	-4(%ebp),%esi
	movl	176(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1198
	jmp	Lj1199
Lj1198:
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
	jmp	Lj1200
Lj1199:
	movl	$100,%eax
	call	L_SYSUTILS_SLEEP$LONGWORD$stub
Lj1200:
Lj1182:
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1181
	jmp	Lj1183
Lj1183:
	.align 2
Lj1205:
	movl	-24(%ebp),%edx
	addl	$65536,%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-24(%ebp),%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-4(%ebp),%eax
	movl	176(%eax),%eax
	movl	$65536,%ecx
	movl	-4(%ebp),%esi
	movl	176(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1222
	jmp	Lj1223
Lj1222:
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj1223:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1207
	jmp	Lj1205
Lj1207:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-4(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__GETEXITSTATUS$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	$0,-16(%ebp)
Lj1169:
	call	LFPC_POPADDRSTACK$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1171
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj1160(%ebx),%edx
	movl	%edx,%eax
	call	LFPC_CATCHES$stub
	testl	%eax,%eax
	je	Lj1234
	movl	%eax,-108(%ebp)
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj1235
	movl	$1,-16(%ebp)
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj1235:
	call	LFPC_POPADDRSTACK$stub
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj1243
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1243:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1171
Lj1234:
	call	LFPC_RERAISE$stub
Lj1171:
Lj1163:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1164
	decl	%eax
	testl	%eax,%eax
	je	Lj1165
Lj1165:
	call	LFPC_RERAISE$stub
Lj1164:
	movl	-16(%ebp),%eax
	movl	-156(%ebp),%ebx
	movl	-152(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_RUNCOMMANDINDIR$crc702157DB
_PROCESS_RUNCOMMANDINDIR$crc702157DB:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj1247
Lj1247:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1247(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1247(%esi),%ebx
	call	*196(%ebx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	108(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,108(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1258
	jmp	Lj1259
Lj1258:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	96(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,96(%ebx)
Lj1259:
	movl	16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1262
	jmp	Lj1263
Lj1262:
	movl	16(%ebp),%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1265
	decl	-24(%ebp)
	.align 2
Lj1266:
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	112(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	(%ecx,%edx,4),%edx
	movl	-20(%ebp),%ecx
	movl	112(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%ebx
	jg	Lj1266
Lj1265:
Lj1263:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_RUNCOMMANDINDIR$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN
_PROCESS_RUNCOMMANDINDIR$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj1280
Lj1280:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1280(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1280(%esi),%ebx
	call	*196(%ebx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1293
	jmp	Lj1294
Lj1293:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	96(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,96(%ebx)
Lj1294:
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1305
	jmp	Lj1306
Lj1305:
	movb	$0,-13(%ebp)
Lj1306:
	movb	-13(%ebp),%al
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_RUNCOMMANDINDIR$ANSISTRING$ANSISTRING$array_of_ANSISTRING$ANSISTRING$$BOOLEAN
_PROCESS_RUNCOMMANDINDIR$ANSISTRING$ANSISTRING$array_of_ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj1310
Lj1310:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1310(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1310(%esi),%ebx
	call	*196(%ebx)
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	108(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,108(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1321
	jmp	Lj1322
Lj1321:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	96(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,96(%ebx)
Lj1322:
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1325
	jmp	Lj1326
Lj1325:
	movl	12(%ebp),%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1328
	decl	-24(%ebp)
	.align 2
Lj1329:
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	112(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	-20(%ebp),%ecx
	movl	112(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%ebx
	jg	Lj1329
Lj1328:
Lj1326:
	leal	-28(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1342
	jmp	Lj1343
Lj1342:
	movb	$0,-13(%ebp)
Lj1343:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_RUNCOMMAND$ANSISTRING$ANSISTRING$$BOOLEAN
_PROCESS_RUNCOMMAND$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj1347
Lj1347:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1347(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1347(%esi),%ebx
	call	*196(%ebx)
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING$stub
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1368
	jmp	Lj1369
Lj1368:
	movb	$0,-9(%ebp)
Lj1369:
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PROCESS_RUNCOMMAND$ANSISTRING$array_of_ANSISTRING$ANSISTRING$$BOOLEAN
_PROCESS_RUNCOMMAND$ANSISTRING$array_of_ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj1373
Lj1373:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1373(%esi),%edx
	movl	$0,%ecx
	movl	$0,%eax
	movl	L_VMT_PROCESS_TPROCESS$non_lazy_ptr-Lj1373(%esi),%ebx
	call	*196(%ebx)
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%ebx
	leal	108(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,108(%ebx)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1384
	jmp	Lj1385
Lj1384:
	movl	-12(%ebp),%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1387
	decl	-24(%ebp)
	.align 2
Lj1388:
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	112(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	-20(%ebp),%ecx
	movl	112(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%ebx
	jg	Lj1388
Lj1387:
Lj1385:
	leal	-28(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1401
	jmp	Lj1402
Lj1401:
	movb	$0,-13(%ebp)
Lj1402:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIT$_PROCESS
_INIT$_PROCESS:
.reference __PROCESS_init_implicit
.globl	__PROCESS_init_implicit
__PROCESS_init_implicit:
.reference _INIT$_PROCESS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_PROCESS
_FINALIZE$_PROCESS:
.reference __PROCESS_finalize_implicit
.globl	__PROCESS_finalize_implicit
__PROCESS_finalize_implicit:
.reference _FINALIZE$_PROCESS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1408
Lj1408:
	popl	%ebx
	movl	L_INIT_PROCESS_DEF114$non_lazy_ptr-Lj1408(%ebx),%edx
	movl	L_U_PROCESS_TRYTERMINALS$non_lazy_ptr-Lj1408(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj1408(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr-Lj1408(%ebx),%eax
	movl	$0,(%eax)
	movl	L_INIT_PROCESS_DEF151$non_lazy_ptr-Lj1408(%ebx),%edx
	movl	L_TC_PROCESS_DETECTXTERM$$ANSISTRING_DEFAULTTERMINALS$non_lazy_ptr-Lj1408(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_TC_PROCESS_GEOMETRYOPTION$non_lazy_ptr-Lj1408(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_PROCESS_GEOMETRYOPTION$non_lazy_ptr-Lj1408(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_PROCESS_TITLEOPTION$non_lazy_ptr-Lj1408(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_PROCESS_TITLEOPTION$non_lazy_ptr-Lj1408(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_PROCESS_TRYTERMINALS
.data
.zerofill __DATA, __common, _U_PROCESS_TRYTERMINALS, 4,2




	.align 2
.globl _U_PROCESS_XTERMPROGRAM
.data
.zerofill __DATA, __common, _U_PROCESS_XTERMPROGRAM, 4,2



.const_data
	.align 2
.globl	_$PROCESS$_Ld42
_$PROCESS$_Ld42:
	.byte	8
	.ascii	"TProcess"

.const_data
	.align 2
.globl	_VMT_PROCESS_TPROCESS
_VMT_PROCESS_TPROCESS:
	.long	184,-184
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$PROCESS$_Ld42
	.long	0,0
	.long	_$PROCESS$_Ld43
	.long	_RTTI_PROCESS_TPROCESS
	.long	_INIT_PROCESS_TPROCESS
	.long	0,0,0
	.long	_PROCESS_TPROCESS_$__DESTROY
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
	.long	_PROCESS_TPROCESS_$__LOADED
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
	.long	_PROCESS_TPROCESS_$__CREATE$TCOMPONENT$$TPROCESS
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_PROCESS_TPROCESS_$__CLOSEPROCESSHANDLES
	.long	_PROCESS_TPROCESS_$__CREATESTREAMS$LONGINT$LONGINT$LONGINT
	.long	_PROCESS_TPROCESS_$__EXECUTE
	.long	_PROCESS_TPROCESS_$__CLOSEINPUT
	.long	_PROCESS_TPROCESS_$__CLOSEOUTPUT
	.long	_PROCESS_TPROCESS_$__CLOSESTDERR
	.long	_PROCESS_TPROCESS_$__RESUME$$LONGINT
	.long	_PROCESS_TPROCESS_$__SUSPEND$$LONGINT
	.long	_PROCESS_TPROCESS_$__TERMINATE$LONGINT$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$PROCESS$_Ld45
_$PROCESS$_Ld45:
	.byte	8
	.ascii	"EProcess"

.const_data
	.align 2
.globl	_VMT_PROCESS_EPROCESS
_VMT_PROCESS_EPROCESS:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$PROCESS$_Ld45
	.long	0,0
	.long	_$PROCESS$_Ld46
	.long	_RTTI_PROCESS_EPROCESS
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
.globl	_THREADVARLIST_PROCESS
_THREADVARLIST_PROCESS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$PROCESS$_Ld2
_$PROCESS$_Ld2:
	.short	0,1
	.long	0,-1,9
.reference _$PROCESS$_Ld1
.globl	_$PROCESS$_Ld1
_$PROCESS$_Ld1:
.reference _$PROCESS$_Ld2
	.ascii	"-geometry\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld4
_$PROCESS$_Ld4:
	.short	0,1
	.long	0,-1,6
.reference _$PROCESS$_Ld3
.globl	_$PROCESS$_Ld3
_$PROCESS$_Ld3:
.reference _$PROCESS$_Ld4
	.ascii	"-title\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld6
_$PROCESS$_Ld6:
	.short	0,1
	.long	0,-1,19
.reference _$PROCESS$_Ld5
.globl	_$PROCESS$_Ld5
_$PROCESS$_Ld5:
.reference _$PROCESS$_Ld6
	.ascii	"x-terminal-emulator\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld8
_$PROCESS$_Ld8:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld7
.globl	_$PROCESS$_Ld7
_$PROCESS$_Ld7:
.reference _$PROCESS$_Ld8
	.ascii	"xterm\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld10
_$PROCESS$_Ld10:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld9
.globl	_$PROCESS$_Ld9
_$PROCESS$_Ld9:
.reference _$PROCESS$_Ld10
	.ascii	"aterm\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld12
_$PROCESS$_Ld12:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld11
.globl	_$PROCESS$_Ld11
_$PROCESS$_Ld11:
.reference _$PROCESS$_Ld12
	.ascii	"wterm\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld14
_$PROCESS$_Ld14:
	.short	0,1
	.long	0,-1,4
.reference _$PROCESS$_Ld13
.globl	_$PROCESS$_Ld13
_$PROCESS$_Ld13:
.reference _$PROCESS$_Ld14
	.ascii	"rxvt\000"

.data
	.align 2
.globl	_$PROCESS$_Ld49
_$PROCESS$_Ld49:
	.short	0,1
	.long	0,-1,7
.reference _$PROCESS$_Ld48
.globl	_$PROCESS$_Ld48
_$PROCESS$_Ld48:
.reference _$PROCESS$_Ld49
	.ascii	"PROCESS\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld51
_$PROCESS$_Ld51:
	.short	0,1
	.long	0,-1,33
.reference _$PROCESS$_Ld50
.globl	_$PROCESS$_Ld50
_$PROCESS$_Ld50:
.reference _$PROCESS$_Ld51
	.ascii	"Cannot execute empty command-line\000"
	.align 2
.globl	_$PROCESS$_Ld53
_$PROCESS$_Ld53:
	.short	0,1
	.long	0,-1,22
.reference _$PROCESS$_Ld52
.globl	_$PROCESS$_Ld52
_$PROCESS$_Ld52:
.reference _$PROCESS$_Ld53
	.ascii	"process.snocommandline\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld55
_$PROCESS$_Ld55:
	.short	0,1
	.long	0,-1,26
.reference _$PROCESS$_Ld54
.globl	_$PROCESS$_Ld54
_$PROCESS$_Ld54:
.reference _$PROCESS$_Ld55
	.ascii	"Executable not found: \"%s\"\000"
	.align 2
.globl	_$PROCESS$_Ld57
_$PROCESS$_Ld57:
	.short	0,1
	.long	0,-1,25
.reference _$PROCESS$_Ld56
.globl	_$PROCESS$_Ld56
_$PROCESS$_Ld56:
.reference _$PROCESS$_Ld57
	.ascii	"process.serrnosuchprogram\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld59
_$PROCESS$_Ld59:
	.short	0,1
	.long	0,-1,35
.reference _$PROCESS$_Ld58
.globl	_$PROCESS$_Ld58
_$PROCESS$_Ld58:
.reference _$PROCESS$_Ld59
	.ascii	"Could not detect X-Terminal program\000"
	.align 2
.globl	_$PROCESS$_Ld61
_$PROCESS$_Ld61:
	.short	0,1
	.long	0,-1,29
.reference _$PROCESS$_Ld60
.globl	_$PROCESS$_Ld60
_$PROCESS$_Ld60:
.reference _$PROCESS$_Ld61
	.ascii	"process.serrnoterminalprogram\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld63
_$PROCESS$_Ld63:
	.short	0,1
	.long	0,-1,22
.reference _$PROCESS$_Ld62
.globl	_$PROCESS$_Ld62
_$PROCESS$_Ld62:
.reference _$PROCESS$_Ld63
	.ascii	"Failed to Fork process\000"
	.align 2
.globl	_$PROCESS$_Ld65
_$PROCESS$_Ld65:
	.short	0,1
	.long	0,-1,22
.reference _$PROCESS$_Ld64
.globl	_$PROCESS$_Ld64
_$PROCESS$_Ld64:
.reference _$PROCESS$_Ld65
	.ascii	"process.serrcannotfork\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld67
_$PROCESS$_Ld67:
	.short	0,1
	.long	0,-1,22
.reference _$PROCESS$_Ld66
.globl	_$PROCESS$_Ld66
_$PROCESS$_Ld66:
.reference _$PROCESS$_Ld67
	.ascii	"Failed to create pipes\000"
	.align 2
.globl	_$PROCESS$_Ld69
_$PROCESS$_Ld69:
	.short	0,1
	.long	0,-1,29
.reference _$PROCESS$_Ld68
.globl	_$PROCESS$_Ld68
_$PROCESS$_Ld68:
.reference _$PROCESS$_Ld69
	.ascii	"process.serrcannotcreatepipes\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_PROCESS_PRIORITYCONSTANTS
_TC_PROCESS_PRIORITYCONSTANTS:
	.long	20,20,0,-20

.data
	.align 2
.globl	_TC_PROCESS_GEOMETRYOPTION
_TC_PROCESS_GEOMETRYOPTION:
	.long	_$PROCESS$_Ld1

.data
	.align 2
.globl	_TC_PROCESS_TITLEOPTION
_TC_PROCESS_TITLEOPTION:
	.long	_$PROCESS$_Ld3

.data
	.align 2
.globl	_TC_PROCESS_DETECTXTERM$$ANSISTRING_DEFAULTTERMINALS
_TC_PROCESS_DETECTXTERM$$ANSISTRING_DEFAULTTERMINALS:
	.long	_$PROCESS$_Ld5
	.long	_$PROCESS$_Ld7
	.long	_$PROCESS$_Ld9
	.long	_$PROCESS$_Ld11
	.long	_$PROCESS$_Ld13

.const_data
	.align 2
.globl	_$PROCESS$_Ld16
_$PROCESS$_Ld16:
	.short	0,1
	.long	0,-1,15
.reference _$PROCESS$_Ld15
.globl	_$PROCESS$_Ld15
_$PROCESS$_Ld15:
.reference _$PROCESS$_Ld16
	.ascii	"DESKTOP_SESSION\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld18
_$PROCESS$_Ld18:
	.short	0,1
	.long	0,-1,3
.reference _$PROCESS$_Ld17
.globl	_$PROCESS$_Ld17
_$PROCESS$_Ld17:
.reference _$PROCESS$_Ld18
	.ascii	"kde\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld20
_$PROCESS$_Ld20:
	.short	0,1
	.long	0,-1,7
.reference _$PROCESS$_Ld19
.globl	_$PROCESS$_Ld19
_$PROCESS$_Ld19:
.reference _$PROCESS$_Ld20
	.ascii	"konsole\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld22
_$PROCESS$_Ld22:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld21
.globl	_$PROCESS$_Ld21
_$PROCESS$_Ld21:
.reference _$PROCESS$_Ld22
	.ascii	"gnome\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld24
_$PROCESS$_Ld24:
	.short	0,1
	.long	0,-1,14
.reference _$PROCESS$_Ld23
.globl	_$PROCESS$_Ld23
_$PROCESS$_Ld23:
.reference _$PROCESS$_Ld24
	.ascii	"gnome-terminal\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld26
_$PROCESS$_Ld26:
	.short	0,1
	.long	0,-1,11
.reference _$PROCESS$_Ld25
.globl	_$PROCESS$_Ld25
_$PROCESS$_Ld25:
.reference _$PROCESS$_Ld26
	.ascii	"windowmaker\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld28
_$PROCESS$_Ld28:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld27
.globl	_$PROCESS$_Ld27
_$PROCESS$_Ld27:
.reference _$PROCESS$_Ld28
	.ascii	"aterm\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld30
_$PROCESS$_Ld30:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld29
.globl	_$PROCESS$_Ld29
_$PROCESS$_Ld29:
.reference _$PROCESS$_Ld30
	.ascii	"wterm\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld32
_$PROCESS$_Ld32:
	.short	0,1
	.long	0,-1,4
.reference _$PROCESS$_Ld31
.globl	_$PROCESS$_Ld31
_$PROCESS$_Ld31:
.reference _$PROCESS$_Ld32
	.ascii	"PATH\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld34
_$PROCESS$_Ld34:
	.short	0,1
	.long	0,-1,4
.reference _$PROCESS$_Ld33
.globl	_$PROCESS$_Ld33
_$PROCESS$_Ld33:
.reference _$PROCESS$_Ld34
	.ascii	"open\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld36
_$PROCESS$_Ld36:
	.short	0,1
	.long	0,-1,5
.reference _$PROCESS$_Ld35
.globl	_$PROCESS$_Ld35
_$PROCESS$_Ld35:
.reference _$PROCESS$_Ld36
	.ascii	"%dx%d\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld38
_$PROCESS$_Ld38:
	.short	0,1
	.long	0,-1,6
.reference _$PROCESS$_Ld37
.globl	_$PROCESS$_Ld37
_$PROCESS$_Ld37:
.reference _$PROCESS$_Ld38
	.ascii	"+%d+%d\000"

.const
	.align 2
.globl	_$PROCESS$_Ld39
_$PROCESS$_Ld39:
	.ascii	"\004PATH\000"

.const_data
	.align 2
.globl	_$PROCESS$_Ld41
_$PROCESS$_Ld41:
	.short	0,1
	.long	0,-1,9
.reference _$PROCESS$_Ld40
.globl	_$PROCESS$_Ld40
_$PROCESS$_Ld40:
.reference _$PROCESS$_Ld41
	.ascii	"/dev/null\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_WAITPID$stub:
.indirect_symbol FPC_SYSC_WAITPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_GETERRNO$stub:
.indirect_symbol FPC_SYS_GETERRNO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN$stub:
.indirect_symbol _BASEUNIX_WIFEXITED$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_WEXITSTATUS$LONGINT$$LONGINT
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRNEW$PCHAR$$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRNEW$PCHAR$$PCHAR
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRDISPOSE$PCHAR$stub:
.indirect_symbol _SYSUTILS_STRDISPOSE$PCHAR
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

Lfpc_dynarray_length$stub:
.indirect_symbol fpc_dynarray_length
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINALS$array_of_ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINALS$array_of_ANSISTRING$$BOOLEAN
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

L_SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
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

L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _PROCESS_DETECTXTERM$$ANSISTRING_TESTTERMINAL$ANSISTRING$$BOOLEAN
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

LFPC_ADDREF_ARRAY$stub:
.indirect_symbol FPC_ADDREF_ARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DECREF_ARRAY$stub:
.indirect_symbol FPC_DECREF_ARRAY
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

L_SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
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

L_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS$stub:
.indirect_symbol _PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_STRINGSTOPCHARLIST$TSTRINGS$$PPCHAR$stub:
.indirect_symbol _PROCESS_STRINGSTOPCHARLIST$TSTRINGS$$PPCHAR
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

L_PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR$stub:
.indirect_symbol _PROCESS_CREATEPIPES$crcFE34B186_CREATEPAIR$TPIPEPAIR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR$stub:
.indirect_symbol _PROCESS_CREATEPIPES$crcFE34B186_CLOSEPAIR$TPIPEPAIR
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

L_SYSUTILS_FILECLOSE$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILECLOSE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIPES_CREATEPIPEHANDLES$LONGINT$LONGINT$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _PIPES_CREATEPIPEHANDLES$LONGINT$LONGINT$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_DUP2$stub:
.indirect_symbol FPC_SYSC_DUP2
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_CREATEPIPES$TPIPEPAIR$TPIPEPAIR$TPIPEPAIR$BOOLEAN$stub:
.indirect_symbol _PROCESS_CREATEPIPES$TPIPEPAIR$TPIPEPAIR$TPIPEPAIR$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_MAKECOMMAND$TPROCESS$$PPCHAR$stub:
.indirect_symbol _PROCESS_MAKECOMMAND$TPROCESS$$PPCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRPAS$PCHAR$$ANSISTRING
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

L_BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR$stub:
.indirect_symbol _BASEUNIX_FPGETENV$SHORTSTRING$$PCHAR
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

L_SYSUTILS_EXESEARCH$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXESEARCH$ANSISTRING$ANSISTRING$$ANSISTRING
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

LFPC_SYSC_FORK$stub:
.indirect_symbol FPC_SYSC_FORK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_CHDIR$ANSISTRING$stub:
.indirect_symbol _OBJPAS_CHDIR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _PROCESS_SAFEFPDUP2$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_SIGRAISE$SMALLINT$stub:
.indirect_symbol _UNIX_SIGRAISE$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_EXIT$stub:
.indirect_symbol FPC_SYSC_EXIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_FREEPCHARLIST$PPCHAR$stub:
.indirect_symbol _PROCESS_FREEPCHARLIST$PPCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__WAITONEXIT$$BOOLEAN$stub:
.indirect_symbol _PROCESS_TPROCESS_$__WAITONEXIT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_WAITPROCESS$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPKILL$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN$stub:
.indirect_symbol _PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS_GETNEXTWORD$$ANSISTRING$stub:
.indirect_symbol _PROCESS_COMMANDTOLIST$ANSISTRING$TSTRINGS_GETNEXTWORD$$ANSISTRING
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

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__FREESTREAMS$stub:
.indirect_symbol _PROCESS_TPROCESS_$__FREESTREAMS
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM$stub:
.indirect_symbol _PROCESS_TPROCESS_$__FREESTREAM$THANDLESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__PEEKEXITSTATUS$$BOOLEAN$stub:
.indirect_symbol _PROCESS_TPROCESS_$__PEEKEXITSTATUS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub:
.indirect_symbol _CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM
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

L_CLASSES_TCOMPONENT_$__LOADED$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__LOADED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__CONVERTCOMMANDLINE$stub:
.indirect_symbol _PROCESS_TPROCESS_$__CONVERTCOMMANDLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__SETPROCESSOPTIONS$TPROCESSOPTIONS$stub:
.indirect_symbol _PROCESS_TPROCESS_$__SETPROCESSOPTIONS$TPROCESSOPTIONS
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

L_SYSUTILS_SLEEP$LONGWORD$stub:
.indirect_symbol _SYSUTILS_SLEEP$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__GETEXITSTATUS$$LONGINT$stub:
.indirect_symbol _PROCESS_TPROCESS_$__GETEXITSTATUS$$LONGINT
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

L_PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _PROCESS_INTERNALRUNCOMMAND$TPROCESS$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING$stub:
.indirect_symbol _PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING
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
.globl	_INIT_PROCESS_TPROCESSOPTION
_INIT_PROCESS_TPROCESSOPTION:
	.byte	3,14
	.ascii	"TProcessOption"
	.byte	5
	.long	0,9,0
	.byte	14
	.ascii	"poRunSuspended"
	.byte	12
	.ascii	"poWaitOnExit"
	.byte	10
	.ascii	"poUsePipes"
	.byte	16
	.ascii	"poStderrToOutPut"
	.byte	11
	.ascii	"poNoConsole"
	.byte	12
	.ascii	"poNewConsole"
	.byte	18
	.ascii	"poDefaultErrorMode"
	.byte	17
	.ascii	"poNewProcessGroup"
	.byte	14
	.ascii	"poDebugProcess"
	.byte	22
	.ascii	"poDebugOnlyThisProcess"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSOPTION
_RTTI_PROCESS_TPROCESSOPTION:
	.byte	3,14
	.ascii	"TProcessOption"
	.byte	5
	.long	0,9,0
	.byte	14
	.ascii	"poRunSuspended"
	.byte	12
	.ascii	"poWaitOnExit"
	.byte	10
	.ascii	"poUsePipes"
	.byte	16
	.ascii	"poStderrToOutPut"
	.byte	11
	.ascii	"poNoConsole"
	.byte	12
	.ascii	"poNewConsole"
	.byte	18
	.ascii	"poDefaultErrorMode"
	.byte	17
	.ascii	"poNewProcessGroup"
	.byte	14
	.ascii	"poDebugProcess"
	.byte	22
	.ascii	"poDebugOnlyThisProcess"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSOPTION_s2o
_RTTI_PROCESS_TPROCESSOPTION_s2o:
	.long	10,9
	.long	_RTTI_PROCESS_TPROCESSOPTION+162
	.long	8
	.long	_RTTI_PROCESS_TPROCESSOPTION+147
	.long	6
	.long	_RTTI_PROCESS_TPROCESSOPTION+110
	.long	5
	.long	_RTTI_PROCESS_TPROCESSOPTION+97
	.long	7
	.long	_RTTI_PROCESS_TPROCESSOPTION+129
	.long	4
	.long	_RTTI_PROCESS_TPROCESSOPTION+85
	.long	0
	.long	_RTTI_PROCESS_TPROCESSOPTION+29
	.long	3
	.long	_RTTI_PROCESS_TPROCESSOPTION+68
	.long	2
	.long	_RTTI_PROCESS_TPROCESSOPTION+57
	.long	1
	.long	_RTTI_PROCESS_TPROCESSOPTION+44

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSOPTION_o2s
_RTTI_PROCESS_TPROCESSOPTION_o2s:
	.long	0
	.long	_RTTI_PROCESS_TPROCESSOPTION+29
	.long	_RTTI_PROCESS_TPROCESSOPTION+44
	.long	_RTTI_PROCESS_TPROCESSOPTION+57
	.long	_RTTI_PROCESS_TPROCESSOPTION+68
	.long	_RTTI_PROCESS_TPROCESSOPTION+85
	.long	_RTTI_PROCESS_TPROCESSOPTION+97
	.long	_RTTI_PROCESS_TPROCESSOPTION+110
	.long	_RTTI_PROCESS_TPROCESSOPTION+129
	.long	_RTTI_PROCESS_TPROCESSOPTION+147
	.long	_RTTI_PROCESS_TPROCESSOPTION+162

.const_data
	.align 2
.globl	_INIT_PROCESS_TSHOWWINDOWOPTIONS
_INIT_PROCESS_TSHOWWINDOWOPTIONS:
	.byte	3,18
	.ascii	"TShowWindowOptions"
	.byte	5
	.long	0,12,0
	.byte	7
	.ascii	"swoNone"
	.byte	7
	.ascii	"swoHIDE"
	.byte	11
	.ascii	"swoMaximize"
	.byte	11
	.ascii	"swoMinimize"
	.byte	10
	.ascii	"swoRestore"
	.byte	7
	.ascii	"swoShow"
	.byte	14
	.ascii	"swoShowDefault"
	.byte	16
	.ascii	"swoShowMaximized"
	.byte	16
	.ascii	"swoShowMinimized"
	.byte	18
	.ascii	"swoshowMinNOActive"
	.byte	9
	.ascii	"swoShowNA"
	.byte	17
	.ascii	"swoShowNoActivate"
	.byte	13
	.ascii	"swoShowNormal"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSHOWWINDOWOPTIONS
_RTTI_PROCESS_TSHOWWINDOWOPTIONS:
	.byte	3,18
	.ascii	"TShowWindowOptions"
	.byte	5
	.long	0,12,0
	.byte	7
	.ascii	"swoNone"
	.byte	7
	.ascii	"swoHIDE"
	.byte	11
	.ascii	"swoMaximize"
	.byte	11
	.ascii	"swoMinimize"
	.byte	10
	.ascii	"swoRestore"
	.byte	7
	.ascii	"swoShow"
	.byte	14
	.ascii	"swoShowDefault"
	.byte	16
	.ascii	"swoShowMaximized"
	.byte	16
	.ascii	"swoShowMinimized"
	.byte	18
	.ascii	"swoshowMinNOActive"
	.byte	9
	.ascii	"swoShowNA"
	.byte	17
	.ascii	"swoShowNoActivate"
	.byte	13
	.ascii	"swoShowNormal"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSHOWWINDOWOPTIONS_s2o
_RTTI_PROCESS_TSHOWWINDOWOPTIONS_s2o:
	.long	13,1
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+41
	.long	2
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+49
	.long	3
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+61
	.long	0
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+33
	.long	4
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+73
	.long	5
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+84
	.long	6
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+92
	.long	7
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+107
	.long	8
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+124
	.long	9
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+141
	.long	10
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+160
	.long	11
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+170
	.long	12
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+188

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSHOWWINDOWOPTIONS_o2s
_RTTI_PROCESS_TSHOWWINDOWOPTIONS_o2s:
	.long	0
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+33
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+41
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+49
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+61
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+73
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+84
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+92
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+107
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+124
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+141
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+160
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+170
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS+188

.const_data
	.align 2
.globl	_INIT_PROCESS_TSTARTUPOPTION
_INIT_PROCESS_TSTARTUPOPTION:
	.byte	3,14
	.ascii	"TStartupOption"
	.byte	5
	.long	0,4,0
	.byte	16
	.ascii	"suoUseShowWindow"
	.byte	10
	.ascii	"suoUseSize"
	.byte	14
	.ascii	"suoUsePosition"
	.byte	16
	.ascii	"suoUseCountChars"
	.byte	19
	.ascii	"suoUseFillAttribute"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSTARTUPOPTION
_RTTI_PROCESS_TSTARTUPOPTION:
	.byte	3,14
	.ascii	"TStartupOption"
	.byte	5
	.long	0,4,0
	.byte	16
	.ascii	"suoUseShowWindow"
	.byte	10
	.ascii	"suoUseSize"
	.byte	14
	.ascii	"suoUsePosition"
	.byte	16
	.ascii	"suoUseCountChars"
	.byte	19
	.ascii	"suoUseFillAttribute"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSTARTUPOPTION_s2o
_RTTI_PROCESS_TSTARTUPOPTION_s2o:
	.long	5,3
	.long	_RTTI_PROCESS_TSTARTUPOPTION+72
	.long	4
	.long	_RTTI_PROCESS_TSTARTUPOPTION+89
	.long	2
	.long	_RTTI_PROCESS_TSTARTUPOPTION+57
	.long	0
	.long	_RTTI_PROCESS_TSTARTUPOPTION+29
	.long	1
	.long	_RTTI_PROCESS_TSTARTUPOPTION+46

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSTARTUPOPTION_o2s
_RTTI_PROCESS_TSTARTUPOPTION_o2s:
	.long	0
	.long	_RTTI_PROCESS_TSTARTUPOPTION+29
	.long	_RTTI_PROCESS_TSTARTUPOPTION+46
	.long	_RTTI_PROCESS_TSTARTUPOPTION+57
	.long	_RTTI_PROCESS_TSTARTUPOPTION+72
	.long	_RTTI_PROCESS_TSTARTUPOPTION+89

.const_data
	.align 2
.globl	_INIT_PROCESS_TPROCESSPRIORITY
_INIT_PROCESS_TPROCESSPRIORITY:
	.byte	3,16
	.ascii	"TProcessPriority"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"ppHigh"
	.byte	6
	.ascii	"ppIdle"
	.byte	8
	.ascii	"ppNormal"
	.byte	10
	.ascii	"ppRealTime"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSPRIORITY
_RTTI_PROCESS_TPROCESSPRIORITY:
	.byte	3,16
	.ascii	"TProcessPriority"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"ppHigh"
	.byte	6
	.ascii	"ppIdle"
	.byte	8
	.ascii	"ppNormal"
	.byte	10
	.ascii	"ppRealTime"
	.byte	7
	.ascii	"process"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSPRIORITY_s2o
_RTTI_PROCESS_TPROCESSPRIORITY_s2o:
	.long	4,0
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+31
	.long	1
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+38
	.long	2
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+45
	.long	3
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+54

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSPRIORITY_o2s
_RTTI_PROCESS_TPROCESSPRIORITY_o2s:
	.long	0
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+31
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+38
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+45
	.long	_RTTI_PROCESS_TPROCESSPRIORITY+54

.const_data
	.align 2
.globl	_INIT_PROCESS_TPROCESSOPTIONS
_INIT_PROCESS_TPROCESSOPTIONS:
	.byte	5,15
	.ascii	"TProcessOptions"
	.byte	5
	.long	_INIT_PROCESS_TPROCESSOPTION

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSOPTIONS
_RTTI_PROCESS_TPROCESSOPTIONS:
	.byte	5,15
	.ascii	"TProcessOptions"
	.byte	5
	.long	_RTTI_PROCESS_TPROCESSOPTION

.const_data
	.align 2
.globl	_INIT_PROCESS_TSTARTUPOPTIONS
_INIT_PROCESS_TSTARTUPOPTIONS:
	.byte	5,15
	.ascii	"TStartupOptions"
	.byte	5
	.long	_INIT_PROCESS_TSTARTUPOPTION

.const_data
	.align 2
.globl	_RTTI_PROCESS_TSTARTUPOPTIONS
_RTTI_PROCESS_TSTARTUPOPTIONS:
	.byte	5,15
	.ascii	"TStartupOptions"
	.byte	5
	.long	_RTTI_PROCESS_TSTARTUPOPTION

.const_data
	.align 2
.globl	_INIT_PROCESS_TPROCESSFORKEVENT
_INIT_PROCESS_TPROCESSFORKEVENT:
	.byte	23,17
	.ascii	"TProcessForkEvent"

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESSFORKEVENT
_RTTI_PROCESS_TPROCESSFORKEVENT:
	.byte	23,17
	.ascii	"TProcessForkEvent"

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF203
_INIT_PROCESS_DEF203:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$PROCESS$_Ld43
_$PROCESS$_Ld43:
	.short	0
	.long	_$PROCESS$_Ld44
	.align 2
.globl	_$PROCESS$_Ld44
_$PROCESS$_Ld44:
	.short	0

.const_data
	.align 2
.globl	_INIT_PROCESS_TPROCESS
_INIT_PROCESS_TPROCESS:
	.byte	15,8
	.ascii	"TProcess"
	.long	4,8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	64
	.long	_INIT_SYSTEM_ANSISTRING
	.long	84
	.long	_INIT_SYSTEM_ANSISTRING
	.long	88
	.long	_INIT_SYSTEM_ANSISTRING
	.long	92
	.long	_INIT_SYSTEM_ANSISTRING
	.long	96
	.long	_INIT_SYSTEM_ANSISTRING
	.long	100
	.long	_INIT_SYSTEM_ANSISTRING
	.long	108
	.long	_INIT_SYSTEM_ANSISTRING
	.long	156

.const_data
	.align 2
.globl	_RTTI_PROCESS_TPROCESS
_RTTI_PROCESS_TPROCESS:
	.byte	15,8
	.ascii	"TProcess"
	.long	_VMT_PROCESS_TPROCESS
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	25
	.byte	7
	.ascii	"process"
	.short	23
	.long	_RTTI_SYSTEM_LONGWORD
	.long	160,160,1,0,1024
	.short	2
	.byte	48,14
	.ascii	"PipeBufferSize"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN
	.long	_PROCESS_TPROCESS_$__SETACTIVE$BOOLEAN
	.long	1,0,-2147483648
	.short	3
	.byte	53,6
	.ascii	"Active"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	84
	.long	_PROCESS_TPROCESS_$__SETAPPLICATIONNAME$ANSISTRING
	.long	1,0,-2147483648
	.short	4
	.byte	52,15
	.ascii	"ApplicationName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	92
	.long	_PROCESS_TPROCESS_$__SETCOMMANDLINE$ANSISTRING
	.long	1,0,-2147483648
	.short	5
	.byte	52,11
	.ascii	"CommandLine"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	108,108,1,0,-2147483648
	.short	6
	.byte	48,10
	.ascii	"Executable"
	.long	_RTTI_CLASSES_TSTRINGS
	.long	112
	.long	_PROCESS_TPROCESS_$__SETPARAMETERS$TSTRINGS
	.long	1,0,-2147483648
	.short	7
	.byte	52,10
	.ascii	"Parameters"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	88,88,1,0,-2147483648
	.short	8
	.byte	48,12
	.ascii	"ConsoleTitle"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	96,96,1,0,-2147483648
	.short	9
	.byte	48,16
	.ascii	"CurrentDirectory"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	100,100,1,0,-2147483648
	.short	10
	.byte	48,7
	.ascii	"Desktop"
	.long	_RTTI_CLASSES_TSTRINGS
	.long	104
	.long	_PROCESS_TPROCESS_$__SETENVIRONMENT$TSTRINGS
	.long	1,0,-2147483648
	.short	11
	.byte	52,11
	.ascii	"Environment"
	.long	_RTTI_PROCESS_TPROCESSOPTIONS
	.long	52
	.long	_PROCESS_TPROCESS_$__SETPROCESSOPTIONS$TPROCESSOPTIONS
	.long	1,0,-2147483648
	.short	12
	.byte	52,7
	.ascii	"Options"
	.long	_RTTI_PROCESS_TPROCESSPRIORITY
	.long	128,128,1,0,-2147483648
	.short	13
	.byte	48,8
	.ascii	"Priority"
	.long	_RTTI_PROCESS_TSTARTUPOPTIONS
	.long	56,56,1,0,-2147483648
	.short	14
	.byte	48,14
	.ascii	"StartupOptions"
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	_PROCESS_TPROCESS_$__GETRUNNING$$BOOLEAN
	.long	0,1,0,-2147483648
	.short	15
	.byte	61,7
	.ascii	"Running"
	.long	_RTTI_PROCESS_TSHOWWINDOWOPTIONS
	.long	116
	.long	_PROCESS_TPROCESS_$__SETSHOWWINDOW$TSHOWWINDOWOPTIONS
	.long	1,0,-2147483648
	.short	16
	.byte	52,10
	.ascii	"ShowWindow"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	132
	.long	_PROCESS_TPROCESS_$__SETWINDOWCOLUMNS$LONGWORD
	.long	1,0,-2147483648
	.short	17
	.byte	52,13
	.ascii	"WindowColumns"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	140
	.long	_PROCESS_TPROCESS_$__SETWINDOWHEIGHT$LONGWORD
	.long	1,0,-2147483648
	.short	18
	.byte	52,12
	.ascii	"WindowHeight"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	144
	.long	_PROCESS_TPROCESS_$__SETWINDOWLEFT$LONGWORD
	.long	1,0,-2147483648
	.short	19
	.byte	52,10
	.ascii	"WindowLeft"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	148
	.long	_PROCESS_TPROCESS_$__SETWINDOWROWS$LONGWORD
	.long	1,0,-2147483648
	.short	20
	.byte	52,10
	.ascii	"WindowRows"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	152
	.long	_PROCESS_TPROCESS_$__SETWINDOWTOP$LONGWORD
	.long	1,0,-2147483648
	.short	21
	.byte	52,9
	.ascii	"WindowTop"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	136
	.long	_PROCESS_TPROCESS_$__SETWINDOWWIDTH$LONGWORD
	.long	1,0,-2147483648
	.short	22
	.byte	52,11
	.ascii	"WindowWidth"
	.long	_RTTI_SYSTEM_LONGWORD
	.long	80,80,1,0,-2147483648
	.short	23
	.byte	48,13
	.ascii	"FillAttribute"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	156,156,1,0,-2147483648
	.short	24
	.byte	48,12
	.ascii	"XTermProgram"

.const_data
	.align 2
.globl	_$PROCESS$_Ld46
_$PROCESS$_Ld46:
	.short	0
	.long	_$PROCESS$_Ld47
	.align 2
.globl	_$PROCESS$_Ld47
_$PROCESS$_Ld47:
	.short	0

.const_data
	.align 2
.globl	_INIT_PROCESS_EPROCESS
_INIT_PROCESS_EPROCESS:
	.byte	15,8
	.ascii	"EProcess"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PROCESS_EPROCESS
_RTTI_PROCESS_EPROCESS:
	.byte	15,8
	.ascii	"EProcess"
	.long	_VMT_PROCESS_EPROCESS
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	7
	.ascii	"process"
	.short	0

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF114
_INIT_PROCESS_DEF114:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256
	.long	_INIT_SYSTEM_ANSISTRING
	.byte	7
	.ascii	"process"

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF148
_INIT_PROCESS_DEF148:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF151
_INIT_PROCESS_DEF151:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF117
_INIT_PROCESS_DEF117:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF119
_INIT_PROCESS_DEF119:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_PROCESS_DEF122
_INIT_PROCESS_DEF122:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
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
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_PROCESS_XTERMPROGRAM$non_lazy_ptr:
.indirect_symbol _U_PROCESS_XTERMPROGRAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_PROCESS_TRYTERMINALS$non_lazy_ptr:
.indirect_symbol _U_PROCESS_TRYTERMINALS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld15$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld17$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld19$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld21$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld23$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld25$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld27$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld29$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PROCESS_DETECTXTERM$$ANSISTRING_DEFAULTTERMINALS$non_lazy_ptr:
.indirect_symbol _TC_PROCESS_DETECTXTERM$$ANSISTRING_DEFAULTTERMINALS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PROCESS_SERRNOTERMINALPROGRAM$non_lazy_ptr:
.indirect_symbol _RESSTR_PROCESS_SERRNOTERMINALPROGRAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PROCESS_EPROCESS$non_lazy_ptr:
.indirect_symbol _VMT_PROCESS_EPROCESS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_ANSISTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld31$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PROCESS_SNOCOMMANDLINE$non_lazy_ptr:
.indirect_symbol _RESSTR_PROCESS_SNOCOMMANDLINE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld33$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PROCESS_TITLEOPTION$non_lazy_ptr:
.indirect_symbol _TC_PROCESS_TITLEOPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld35$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld37$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PROCESS_GEOMETRYOPTION$non_lazy_ptr:
.indirect_symbol _TC_PROCESS_GEOMETRYOPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PROCESS_SERRCANNOTCREATEPIPES$non_lazy_ptr:
.indirect_symbol _RESSTR_PROCESS_SERRCANNOTCREATEPIPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld39$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PROCESS_SERRNOSUCHPROGRAM$non_lazy_ptr:
.indirect_symbol _RESSTR_PROCESS_SERRNOSUCHPROGRAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_PROCESS_SERRCANNOTFORK$non_lazy_ptr:
.indirect_symbol _RESSTR_PROCESS_SERRCANNOTFORK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PROCESS$_Ld40$non_lazy_ptr:
.indirect_symbol _$PROCESS$_Ld40
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ENVP$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ENVP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PIPES_TOUTPUTPIPESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_PIPES_TOUTPUTPIPESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PIPES_TINPUTPIPESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_PIPES_TINPUTPIPESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PROCESS_TPROCESS$non_lazy_ptr:
.indirect_symbol _VMT_PROCESS_TPROCESS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_PROCESS_DEF114$non_lazy_ptr:
.indirect_symbol _INIT_PROCESS_DEF114
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_PROCESS_DEF151$non_lazy_ptr:
.indirect_symbol _INIT_PROCESS_DEF151
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_PROCESS_START
_RESSTR_PROCESS_START:
	.long	_$PROCESS$_Ld48
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_PROCESS_SNOCOMMANDLINE
_RESSTR_PROCESS_SNOCOMMANDLINE:
	.long	_$PROCESS$_Ld52
	.long	_$PROCESS$_Ld50
	.long	_$PROCESS$_Ld50
	.long	142512709

.data
	.align 2
.globl	_RESSTR_PROCESS_SERRNOSUCHPROGRAM
_RESSTR_PROCESS_SERRNOSUCHPROGRAM:
	.long	_$PROCESS$_Ld56
	.long	_$PROCESS$_Ld54
	.long	_$PROCESS$_Ld54
	.long	103849410

.data
	.align 2
.globl	_RESSTR_PROCESS_SERRNOTERMINALPROGRAM
_RESSTR_PROCESS_SERRNOTERMINALPROGRAM:
	.long	_$PROCESS$_Ld60
	.long	_$PROCESS$_Ld58
	.long	_$PROCESS$_Ld58
	.long	221678269

.data
	.align 2
.globl	_RESSTR_PROCESS_SERRCANNOTFORK
_RESSTR_PROCESS_SERRCANNOTFORK:
	.long	_$PROCESS$_Ld64
	.long	_$PROCESS$_Ld62
	.long	_$PROCESS$_Ld62
	.long	17932995

.data
	.align 2
.globl	_RESSTR_PROCESS_SERRCANNOTCREATEPIPES
_RESSTR_PROCESS_SERRCANNOTCREATEPIPES:
	.long	_$PROCESS$_Ld68
	.long	_$PROCESS$_Ld66
	.long	_$PROCESS$_Ld66
	.long	57478515

.data
	.align 2
.globl	_RESSTR_PROCESS_END
_RESSTR_PROCESS_END:
	.long	_RESSTR_PROCESS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

