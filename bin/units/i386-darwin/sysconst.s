# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SYSCONST_GETRUNERROR$WORD$$ANSISTRING
_SYSCONST_GETRUNERROR$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-312(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movw	-4(%ebp),%ax
	testw	%ax,%ax
	je	Lj10
	decw	%ax
	je	Lj11
	decw	%ax
	je	Lj12
	decw	%ax
	je	Lj13
	decw	%ax
	je	Lj14
	decw	%ax
	je	Lj15
	decw	%ax
	je	Lj16
	subw	$9,%ax
	je	Lj17
	subw	$85,%ax
	je	Lj18
	decw	%ax
	je	Lj19
	decw	%ax
	je	Lj20
	decw	%ax
	je	Lj21
	decw	%ax
	je	Lj22
	decw	%ax
	je	Lj23
	decw	%ax
	je	Lj24
	subw	$94,%ax
	je	Lj25
	decw	%ax
	je	Lj26
	subw	$2,%ax
	je	Lj27
	decw	%ax
	je	Lj28
	decw	%ax
	je	Lj29
	decw	%ax
	je	Lj30
	decw	%ax
	je	Lj31
	subw	$4,%ax
	je	Lj32
	subw	$3,%ax
	je	Lj33
	decw	%ax
	je	Lj34
	decw	%ax
	je	Lj35
	decw	%ax
	je	Lj36
	decw	%ax
	je	Lj37
	decw	%ax
	je	Lj38
	decw	%ax
	je	Lj39
	decw	%ax
	je	Lj40
	decw	%ax
	je	Lj41
	decw	%ax
	je	Lj42
	decw	%ax
	je	Lj43
	decw	%ax
	je	Lj44
	subw	$2,%ax
	je	Lj45
	decw	%ax
	je	Lj46
	decw	%ax
	je	Lj47
	decw	%ax
	je	Lj48
	decw	%ax
	je	Lj49
	decw	%ax
	je	Lj50
	decw	%ax
	je	Lj51
	subw	$22,%ax
	je	Lj52
	subw	$645,%ax
	je	Lj53
	jmp	Lj9
Lj10:
	movl	L_RESSTR_SYSCONST_SNOERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SNOERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj11:
	movl	L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj12:
	movl	L_RESSTR_SYSCONST_SFILENOTFOUND$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SFILENOTFOUND$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj13:
	movl	L_RESSTR_SYSCONST_SINVALIDFILENAME$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDFILENAME$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj14:
	movl	L_RESSTR_SYSCONST_STOOMANYOPENFILES$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_STOOMANYOPENFILES$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj15:
	movl	L_RESSTR_SYSCONST_SACCESSDENIED$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SACCESSDENIED$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj16:
	movl	L_RESSTR_SYSCONST_SINVALIDFILEHANDLE$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDFILEHANDLE$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj17:
	movl	L_RESSTR_SYSCONST_SINVALIDDRIVE$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDDRIVE$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj18:
	movl	L_RESSTR_SYSCONST_SENDOFFILE$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SENDOFFILE$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj19:
	movl	L_RESSTR_SYSCONST_SDISKFULL$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SDISKFULL$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj20:
	movl	L_RESSTR_SYSCONST_SFILENOTASSIGNED$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SFILENOTASSIGNED$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj21:
	movl	L_RESSTR_SYSCONST_SFILENOTOPEN$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SFILENOTOPEN$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj22:
	movl	L_RESSTR_SYSCONST_SFILENOTOPENFORINPUT$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SFILENOTOPENFORINPUT$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj23:
	movl	L_RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj24:
	movl	L_RESSTR_SYSCONST_SINVALIDINPUT$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDINPUT$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj25:
	movl	L_RESSTR_SYSCONST_SDIVBYZERO$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SDIVBYZERO$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj26:
	movl	L_RESSTR_SYSCONST_SRANGEERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SRANGEERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj27:
	movl	L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj28:
	movl	L_RESSTR_SYSCONST_SINVALIDPOINTER$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDPOINTER$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj29:
	movl	L_RESSTR_SYSCONST_SOVERFLOW$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SOVERFLOW$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj30:
	movl	L_RESSTR_SYSCONST_SUNDERFLOW$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SUNDERFLOW$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj31:
	movl	L_RESSTR_SYSCONST_SINVALIDOP$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDOP$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj32:
	movl	L_RESSTR_SYSCONST_SABSTRACTERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SABSTRACTERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj33:
	movl	L_RESSTR_SYSCONST_SBUSERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SBUSERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj34:
	movl	L_RESSTR_SYSCONST_SINTOVERFLOW$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINTOVERFLOW$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj35:
	movl	L_RESSTR_SYSCONST_SACCESSVIOLATION$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SACCESSVIOLATION$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj36:
	movl	L_RESSTR_SYSCONST_SPRIVILEGE$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SPRIVILEGE$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj37:
	movl	L_RESSTR_SYSCONST_SCONTROLC$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SCONTROLC$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj38:
	movl	L_RESSTR_SYSCONST_SINVALIDCAST$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDCAST$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj39:
	movl	L_RESSTR_SYSCONST_SINVALIDVARCAST$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDVARCAST$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj40:
	movl	L_RESSTR_SYSCONST_SINVALIDVAROP$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINVALIDVAROP$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj41:
	movl	L_RESSTR_SYSCONST_SDISPATCHERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SDISPATCHERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj42:
	movl	L_RESSTR_SYSCONST_SVARARRAYCREATE$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SVARARRAYCREATE$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj43:
	movl	L_RESSTR_SYSCONST_SVARNOTARRAY$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SVARNOTARRAY$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj44:
	movl	L_RESSTR_SYSCONST_SVARARRAYBOUNDS$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SVARARRAYBOUNDS$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj45:
	movl	L_RESSTR_SYSCONST_SASSERTIONFAILED$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SASSERTIONFAILED$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj46:
	movl	L_RESSTR_SYSCONST_SEXTERNALEXCEPTION$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SEXTERNALEXCEPTION$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj47:
	movl	L_RESSTR_SYSCONST_SINTFCASTERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SINTFCASTERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj48:
	movl	L_RESSTR_SYSCONST_SSAFECALLEXCEPTION$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SSAFECALLEXCEPTION$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj49:
	movl	L_RESSTR_SYSCONST_SEXCEPTIONSTACK$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SEXCEPTIONSTACK$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj50:
	movl	L_RESSTR_SYSCONST_SNOTHREADSUPPORT$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SNOTHREADSUPPORT$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj51:
	movl	L_RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj52:
	movl	L_RESSTR_SYSCONST_SFALLBACKERROR$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SFALLBACKERROR$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj53:
	movl	L_RESSTR_SYSCONST_SNOTOOLSERVER$non_lazy_ptr-Lj4(%esi),%edx
	movl	4(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_RESSTR_SYSCONST_SNOTOOLSERVER$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj9:
Lj8:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj144
	movl	-4(%eax),%eax
Lj144:
	testl	%eax,%eax
	je	Lj142
	jmp	Lj143
Lj142:
	movzwl	-4(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$255,(%esp)
	leal	-308(%ebp),%ecx
	movl	-52(%ebp),%eax
	movl	$3,%edx
	call	Lfpc_shortstr_sint$stub
	leal	-312(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-308(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-312(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	L_RESSTR_SYSCONST_SUNKNOWN$non_lazy_ptr-Lj4(%esi),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj143:
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-312(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-312(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_SYSCONST
_THREADVARLIST_SYSCONST:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$SYSCONST$_Ld2
_$SYSCONST$_Ld2:
	.short	0,1
	.long	0,-1,8
.reference _$SYSCONST$_Ld1
.globl	_$SYSCONST$_Ld1
_$SYSCONST$_Ld1:
.reference _$SYSCONST$_Ld2
	.ascii	"SYSCONST\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld4
_$SYSCONST$_Ld4:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld3
.globl	_$SYSCONST$_Ld3
_$SYSCONST$_Ld3:
.reference _$SYSCONST$_Ld4
	.ascii	"Operation aborted\000"
	.align 2
.globl	_$SYSCONST$_Ld6
_$SYSCONST$_Ld6:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld5
.globl	_$SYSCONST$_Ld5
_$SYSCONST$_Ld5:
.reference _$SYSCONST$_Ld6
	.ascii	"sysconst.saborterror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld8
_$SYSCONST$_Ld8:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld7
.globl	_$SYSCONST$_Ld7
_$SYSCONST$_Ld7:
.reference _$SYSCONST$_Ld8
	.ascii	"Abstract method called\000"
	.align 2
.globl	_$SYSCONST$_Ld10
_$SYSCONST$_Ld10:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld9
.globl	_$SYSCONST$_Ld9
_$SYSCONST$_Ld9:
.reference _$SYSCONST$_Ld10
	.ascii	"sysconst.sabstracterror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld12
_$SYSCONST$_Ld12:
	.short	0,1
	.long	0,-1,13
.reference _$SYSCONST$_Ld11
.globl	_$SYSCONST$_Ld11
_$SYSCONST$_Ld11:
.reference _$SYSCONST$_Ld12
	.ascii	"Access denied\000"
	.align 2
.globl	_$SYSCONST$_Ld14
_$SYSCONST$_Ld14:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld13
.globl	_$SYSCONST$_Ld13
_$SYSCONST$_Ld13:
.reference _$SYSCONST$_Ld14
	.ascii	"sysconst.saccessdenied\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld16
_$SYSCONST$_Ld16:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld15
.globl	_$SYSCONST$_Ld15
_$SYSCONST$_Ld15:
.reference _$SYSCONST$_Ld16
	.ascii	"Access violation\000"
	.align 2
.globl	_$SYSCONST$_Ld18
_$SYSCONST$_Ld18:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld17
.globl	_$SYSCONST$_Ld17
_$SYSCONST$_Ld17:
.reference _$SYSCONST$_Ld18
	.ascii	"sysconst.saccessviolation\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld20
_$SYSCONST$_Ld20:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld19
.globl	_$SYSCONST$_Ld19
_$SYSCONST$_Ld19:
.reference _$SYSCONST$_Ld20
	.ascii	"Missing argument in format \"%s\"\000"
	.align 2
.globl	_$SYSCONST$_Ld22
_$SYSCONST$_Ld22:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld21
.globl	_$SYSCONST$_Ld21
_$SYSCONST$_Ld21:
.reference _$SYSCONST$_Ld22
	.ascii	"sysconst.sargumentmissing\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld24
_$SYSCONST$_Ld24:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld23
.globl	_$SYSCONST$_Ld23
_$SYSCONST$_Ld23:
.reference _$SYSCONST$_Ld24
	.ascii	"%s (%s, line %d)\000"
	.align 2
.globl	_$SYSCONST$_Ld26
_$SYSCONST$_Ld26:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld25
.globl	_$SYSCONST$_Ld25
_$SYSCONST$_Ld25:
.reference _$SYSCONST$_Ld26
	.ascii	"sysconst.sasserterror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld28
_$SYSCONST$_Ld28:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld27
.globl	_$SYSCONST$_Ld27
_$SYSCONST$_Ld27:
.reference _$SYSCONST$_Ld28
	.ascii	"Assertion failed\000"
	.align 2
.globl	_$SYSCONST$_Ld30
_$SYSCONST$_Ld30:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld29
.globl	_$SYSCONST$_Ld29
_$SYSCONST$_Ld29:
.reference _$SYSCONST$_Ld30
	.ascii	"sysconst.sassertionfailed\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld32
_$SYSCONST$_Ld32:
	.short	0,1
	.long	0,-1,35
.reference _$SYSCONST$_Ld31
.globl	_$SYSCONST$_Ld31
_$SYSCONST$_Ld31:
.reference _$SYSCONST$_Ld32
	.ascii	"Bus error or misaligned data access\000"
	.align 2
.globl	_$SYSCONST$_Ld34
_$SYSCONST$_Ld34:
	.short	0,1
	.long	0,-1,18
.reference _$SYSCONST$_Ld33
.globl	_$SYSCONST$_Ld33
_$SYSCONST$_Ld33:
.reference _$SYSCONST$_Ld34
	.ascii	"sysconst.sbuserror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld36
_$SYSCONST$_Ld36:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld35
.globl	_$SYSCONST$_Ld35
_$SYSCONST$_Ld35:
.reference _$SYSCONST$_Ld36
	.ascii	"Cannot create empty directory\000"
	.align 2
.globl	_$SYSCONST$_Ld38
_$SYSCONST$_Ld38:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld37
.globl	_$SYSCONST$_Ld37
_$SYSCONST$_Ld37:
.reference _$SYSCONST$_Ld38
	.ascii	"sysconst.scannotcreateemptydir\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld40
_$SYSCONST$_Ld40:
	.short	0,1
	.long	0,-1,13
.reference _$SYSCONST$_Ld39
.globl	_$SYSCONST$_Ld39
_$SYSCONST$_Ld39:
.reference _$SYSCONST$_Ld40
	.ascii	"Control-C hit\000"
	.align 2
.globl	_$SYSCONST$_Ld42
_$SYSCONST$_Ld42:
	.short	0,1
	.long	0,-1,18
.reference _$SYSCONST$_Ld41
.globl	_$SYSCONST$_Ld41
_$SYSCONST$_Ld41:
.reference _$SYSCONST$_Ld42
	.ascii	"sysconst.scontrolc\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld44
_$SYSCONST$_Ld44:
	.short	0,1
	.long	0,-1,9
.reference _$SYSCONST$_Ld43
.globl	_$SYSCONST$_Ld43
_$SYSCONST$_Ld43:
.reference _$SYSCONST$_Ld44
	.ascii	"Disk Full\000"
	.align 2
.globl	_$SYSCONST$_Ld46
_$SYSCONST$_Ld46:
	.short	0,1
	.long	0,-1,18
.reference _$SYSCONST$_Ld45
.globl	_$SYSCONST$_Ld45
_$SYSCONST$_Ld45:
.reference _$SYSCONST$_Ld46
	.ascii	"sysconst.sdiskfull\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld48
_$SYSCONST$_Ld48:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld47
.globl	_$SYSCONST$_Ld47
_$SYSCONST$_Ld47:
.reference _$SYSCONST$_Ld48
	.ascii	"No variant method call dispatch\000"
	.align 2
.globl	_$SYSCONST$_Ld50
_$SYSCONST$_Ld50:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld49
.globl	_$SYSCONST$_Ld49
_$SYSCONST$_Ld49:
.reference _$SYSCONST$_Ld50
	.ascii	"sysconst.sdispatcherror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld52
_$SYSCONST$_Ld52:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld51
.globl	_$SYSCONST$_Ld51
_$SYSCONST$_Ld51:
.reference _$SYSCONST$_Ld52
	.ascii	"Division by zero\000"
	.align 2
.globl	_$SYSCONST$_Ld54
_$SYSCONST$_Ld54:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld53
.globl	_$SYSCONST$_Ld53
_$SYSCONST$_Ld53:
.reference _$SYSCONST$_Ld54
	.ascii	"sysconst.sdivbyzero\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld56
_$SYSCONST$_Ld56:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld55
.globl	_$SYSCONST$_Ld55
_$SYSCONST$_Ld55:
.reference _$SYSCONST$_Ld56
	.ascii	"Read past end of file\000"
	.align 2
.globl	_$SYSCONST$_Ld58
_$SYSCONST$_Ld58:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld57
.globl	_$SYSCONST$_Ld57
_$SYSCONST$_Ld57:
.reference _$SYSCONST$_Ld58
	.ascii	"sysconst.sendoffile\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld60
_$SYSCONST$_Ld60:
	.short	0,1
	.long	0,-1,58
.reference _$SYSCONST$_Ld59
.globl	_$SYSCONST$_Ld59
_$SYSCONST$_Ld59:
.reference _$SYSCONST$_Ld60
	.ascii	"Year %d, month %d, Week %d and day %d is not a vali"
	.ascii	"d date.\000"
	.align 2
.globl	_$SYSCONST$_Ld62
_$SYSCONST$_Ld62:
	.short	0,1
	.long	0,-1,33
.reference _$SYSCONST$_Ld61
.globl	_$SYSCONST$_Ld61
_$SYSCONST$_Ld61:
.reference _$SYSCONST$_Ld62
	.ascii	"sysconst.serrinvaliddatemonthweek\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld64
_$SYSCONST$_Ld64:
	.short	0,1
	.long	0,-1,45
.reference _$SYSCONST$_Ld63
.globl	_$SYSCONST$_Ld63
_$SYSCONST$_Ld63:
.reference _$SYSCONST$_Ld64
	.ascii	"%d:%d:%d.%d is not a valid time specification\000"
	.align 2
.globl	_$SYSCONST$_Ld66
_$SYSCONST$_Ld66:
	.short	0,1
	.long	0,-1,37
.reference _$SYSCONST$_Ld65
.globl	_$SYSCONST$_Ld65
_$SYSCONST$_Ld65:
.reference _$SYSCONST$_Ld66
	.ascii	"sysconst.serrinvalidhourminutesecmsec\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld68
_$SYSCONST$_Ld68:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld67
.globl	_$SYSCONST$_Ld67
_$SYSCONST$_Ld67:
.reference _$SYSCONST$_Ld68
	.ascii	"%d %d %d is not a valid dateweek\000"
	.align 2
.globl	_$SYSCONST$_Ld70
_$SYSCONST$_Ld70:
	.short	0,1
	.long	0,-1,28
.reference _$SYSCONST$_Ld69
.globl	_$SYSCONST$_Ld69
_$SYSCONST$_Ld69:
.reference _$SYSCONST$_Ld70
	.ascii	"sysconst.serrinvaliddateweek\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld72
_$SYSCONST$_Ld72:
	.short	0,1
	.long	0,-1,33
.reference _$SYSCONST$_Ld71
.globl	_$SYSCONST$_Ld71
_$SYSCONST$_Ld71:
.reference _$SYSCONST$_Ld72
	.ascii	"%d is not a valid day of the week\000"
	.align 2
.globl	_$SYSCONST$_Ld74
_$SYSCONST$_Ld74:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld73
.globl	_$SYSCONST$_Ld73
_$SYSCONST$_Ld73:
.reference _$SYSCONST$_Ld74
	.ascii	"sysconst.serrinvaliddayofweek\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld76
_$SYSCONST$_Ld76:
	.short	0,1
	.long	0,-1,51
.reference _$SYSCONST$_Ld75
.globl	_$SYSCONST$_Ld75
_$SYSCONST$_Ld75:
.reference _$SYSCONST$_Ld76
	.ascii	"Year %d Month %d NDow %d DOW %d is not a valid date"
	.ascii	"\000"
	.align 2
.globl	_$SYSCONST$_Ld78
_$SYSCONST$_Ld78:
	.short	0,1
	.long	0,-1,36
.reference _$SYSCONST$_Ld77
.globl	_$SYSCONST$_Ld77
_$SYSCONST$_Ld77:
.reference _$SYSCONST$_Ld78
	.ascii	"sysconst.serrinvaliddayofweekinmonth\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld80
_$SYSCONST$_Ld80:
	.short	0,1
	.long	0,-1,37
.reference _$SYSCONST$_Ld79
.globl	_$SYSCONST$_Ld79
_$SYSCONST$_Ld79:
.reference _$SYSCONST$_Ld80
	.ascii	"Year %d does not have a day number %d\000"
	.align 2
.globl	_$SYSCONST$_Ld82
_$SYSCONST$_Ld82:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld81
.globl	_$SYSCONST$_Ld81
_$SYSCONST$_Ld81:
.reference _$SYSCONST$_Ld82
	.ascii	"sysconst.serrinvaliddayofyear\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld84
_$SYSCONST$_Ld84:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld83
.globl	_$SYSCONST$_Ld83
_$SYSCONST$_Ld83:
.reference _$SYSCONST$_Ld84
	.ascii	"Invalid date/timestamp : \"%s\"\000"
	.align 2
.globl	_$SYSCONST$_Ld86
_$SYSCONST$_Ld86:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld85
.globl	_$SYSCONST$_Ld85
_$SYSCONST$_Ld85:
.reference _$SYSCONST$_Ld86
	.ascii	"sysconst.serrinvalidtimestamp\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld88
_$SYSCONST$_Ld88:
	.short	0,1
	.long	0,-1,45
.reference _$SYSCONST$_Ld87
.globl	_$SYSCONST$_Ld87
_$SYSCONST$_Ld87:
.reference _$SYSCONST$_Ld88
	.ascii	"%f Julian cannot be represented as a DateTime\000"
	.align 2
.globl	_$SYSCONST$_Ld90
_$SYSCONST$_Ld90:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld89
.globl	_$SYSCONST$_Ld89
_$SYSCONST$_Ld89:
.reference _$SYSCONST$_Ld90
	.ascii	"sysconst.sinvalidjuliandate\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld92
_$SYSCONST$_Ld92:
	.short	0,1
	.long	0,-1,38
.reference _$SYSCONST$_Ld91
.globl	_$SYSCONST$_Ld91
_$SYSCONST$_Ld91:
.reference _$SYSCONST$_Ld92
	.ascii	"\"%s\" is not a valid date format string\000"
	.align 2
.globl	_$SYSCONST$_Ld94
_$SYSCONST$_Ld94:
	.short	0,1
	.long	0,-1,36
.reference _$SYSCONST$_Ld93
.globl	_$SYSCONST$_Ld93
_$SYSCONST$_Ld93:
.reference _$SYSCONST$_Ld94
	.ascii	"sysconst.serrillegaldateformatstring\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld96
_$SYSCONST$_Ld96:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld95
.globl	_$SYSCONST$_Ld95
_$SYSCONST$_Ld95:
.reference _$SYSCONST$_Ld96
	.ascii	"\"%s\" is not a valid time\000"
	.align 2
.globl	_$SYSCONST$_Ld98
_$SYSCONST$_Ld98:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld97
.globl	_$SYSCONST$_Ld97
_$SYSCONST$_Ld97:
.reference _$SYSCONST$_Ld98
	.ascii	"sysconst.serrinvalidtimeformat\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld100
_$SYSCONST$_Ld100:
	.short	0,1
	.long	0,-1,15
.reference _$SYSCONST$_Ld99
.globl	_$SYSCONST$_Ld99
_$SYSCONST$_Ld99:
.reference _$SYSCONST$_Ld100
	.ascii	"exception at %p\000"
	.align 2
.globl	_$SYSCONST$_Ld102
_$SYSCONST$_Ld102:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld101
.globl	_$SYSCONST$_Ld101
_$SYSCONST$_Ld101:
.reference _$SYSCONST$_Ld102
	.ascii	"sysconst.sexceptionerrormessage\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld104
_$SYSCONST$_Ld104:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld103
.globl	_$SYSCONST$_Ld103
_$SYSCONST$_Ld103:
.reference _$SYSCONST$_Ld104
	.ascii	"Exception stack error\000"
	.align 2
.globl	_$SYSCONST$_Ld106
_$SYSCONST$_Ld106:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld105
.globl	_$SYSCONST$_Ld105
_$SYSCONST$_Ld105:
.reference _$SYSCONST$_Ld106
	.ascii	"sysconst.sexceptionstack\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld108
_$SYSCONST$_Ld108:
	.short	0,1
	.long	0,-1,38
.reference _$SYSCONST$_Ld107
.globl	_$SYSCONST$_Ld107
_$SYSCONST$_Ld107:
.reference _$SYSCONST$_Ld108
	.ascii	"Failed to execute \"%s\", error code: %d\000"
	.align 2
.globl	_$SYSCONST$_Ld110
_$SYSCONST$_Ld110:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld109
.globl	_$SYSCONST$_Ld109
_$SYSCONST$_Ld109:
.reference _$SYSCONST$_Ld110
	.ascii	"sysconst.sexecuteprocessfailed\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld112
_$SYSCONST$_Ld112:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld111
.globl	_$SYSCONST$_Ld111
_$SYSCONST$_Ld111:
.reference _$SYSCONST$_Ld112
	.ascii	"External exception %x\000"
	.align 2
.globl	_$SYSCONST$_Ld114
_$SYSCONST$_Ld114:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld113
.globl	_$SYSCONST$_Ld113
_$SYSCONST$_Ld113:
.reference _$SYSCONST$_Ld114
	.ascii	"sysconst.sexternalexception\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld116
_$SYSCONST$_Ld116:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld115
.globl	_$SYSCONST$_Ld115
_$SYSCONST$_Ld115:
.reference _$SYSCONST$_Ld116
	.ascii	"File not assigned\000"
	.align 2
.globl	_$SYSCONST$_Ld118
_$SYSCONST$_Ld118:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld117
.globl	_$SYSCONST$_Ld117
_$SYSCONST$_Ld117:
.reference _$SYSCONST$_Ld118
	.ascii	"sysconst.sfilenotassigned\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld120
_$SYSCONST$_Ld120:
	.short	0,1
	.long	0,-1,14
.reference _$SYSCONST$_Ld119
.globl	_$SYSCONST$_Ld119
_$SYSCONST$_Ld119:
.reference _$SYSCONST$_Ld120
	.ascii	"File not found\000"
	.align 2
.globl	_$SYSCONST$_Ld122
_$SYSCONST$_Ld122:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld121
.globl	_$SYSCONST$_Ld121
_$SYSCONST$_Ld121:
.reference _$SYSCONST$_Ld122
	.ascii	"sysconst.sfilenotfound\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld124
_$SYSCONST$_Ld124:
	.short	0,1
	.long	0,-1,13
.reference _$SYSCONST$_Ld123
.globl	_$SYSCONST$_Ld123
_$SYSCONST$_Ld123:
.reference _$SYSCONST$_Ld124
	.ascii	"File not open\000"
	.align 2
.globl	_$SYSCONST$_Ld126
_$SYSCONST$_Ld126:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld125
.globl	_$SYSCONST$_Ld125
_$SYSCONST$_Ld125:
.reference _$SYSCONST$_Ld126
	.ascii	"sysconst.sfilenotopen\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld128
_$SYSCONST$_Ld128:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld127
.globl	_$SYSCONST$_Ld127
_$SYSCONST$_Ld127:
.reference _$SYSCONST$_Ld128
	.ascii	"File not open for input\000"
	.align 2
.globl	_$SYSCONST$_Ld130
_$SYSCONST$_Ld130:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld129
.globl	_$SYSCONST$_Ld129
_$SYSCONST$_Ld129:
.reference _$SYSCONST$_Ld130
	.ascii	"sysconst.sfilenotopenforinput\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld132
_$SYSCONST$_Ld132:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld131
.globl	_$SYSCONST$_Ld131
_$SYSCONST$_Ld131:
.reference _$SYSCONST$_Ld132
	.ascii	"File not open for output\000"
	.align 2
.globl	_$SYSCONST$_Ld134
_$SYSCONST$_Ld134:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld133
.globl	_$SYSCONST$_Ld133
_$SYSCONST$_Ld133:
.reference _$SYSCONST$_Ld134
	.ascii	"sysconst.sfilenotopenforoutput\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld136
_$SYSCONST$_Ld136:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld135
.globl	_$SYSCONST$_Ld135
_$SYSCONST$_Ld135:
.reference _$SYSCONST$_Ld136
	.ascii	"Invalid filename\000"
	.align 2
.globl	_$SYSCONST$_Ld138
_$SYSCONST$_Ld138:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld137
.globl	_$SYSCONST$_Ld137
_$SYSCONST$_Ld137:
.reference _$SYSCONST$_Ld138
	.ascii	"sysconst.sinvalidfilename\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld140
_$SYSCONST$_Ld140:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld139
.globl	_$SYSCONST$_Ld139
_$SYSCONST$_Ld139:
.reference _$SYSCONST$_Ld140
	.ascii	"Arithmetic overflow\000"
	.align 2
.globl	_$SYSCONST$_Ld142
_$SYSCONST$_Ld142:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld141
.globl	_$SYSCONST$_Ld141
_$SYSCONST$_Ld141:
.reference _$SYSCONST$_Ld142
	.ascii	"sysconst.sintoverflow\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld144
_$SYSCONST$_Ld144:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld143
.globl	_$SYSCONST$_Ld143
_$SYSCONST$_Ld143:
.reference _$SYSCONST$_Ld144
	.ascii	"Interface not supported\000"
	.align 2
.globl	_$SYSCONST$_Ld146
_$SYSCONST$_Ld146:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld145
.globl	_$SYSCONST$_Ld145
_$SYSCONST$_Ld145:
.reference _$SYSCONST$_Ld146
	.ascii	"sysconst.sintfcasterror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld148
_$SYSCONST$_Ld148:
	.short	0,1
	.long	0,-1,37
.reference _$SYSCONST$_Ld147
.globl	_$SYSCONST$_Ld147
_$SYSCONST$_Ld147:
.reference _$SYSCONST$_Ld148
	.ascii	"Invalid argument index in format \"%s\"\000"
	.align 2
.globl	_$SYSCONST$_Ld150
_$SYSCONST$_Ld150:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld149
.globl	_$SYSCONST$_Ld149
_$SYSCONST$_Ld149:
.reference _$SYSCONST$_Ld150
	.ascii	"sysconst.sinvalidargindex\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld152
_$SYSCONST$_Ld152:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld151
.globl	_$SYSCONST$_Ld151
_$SYSCONST$_Ld151:
.reference _$SYSCONST$_Ld152
	.ascii	"%x is an invalid BCD value\000"
	.align 2
.globl	_$SYSCONST$_Ld154
_$SYSCONST$_Ld154:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld153
.globl	_$SYSCONST$_Ld153
_$SYSCONST$_Ld153:
.reference _$SYSCONST$_Ld154
	.ascii	"sysconst.sinvalidbcd\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld156
_$SYSCONST$_Ld156:
	.short	0,1
	.long	0,-1,28
.reference _$SYSCONST$_Ld155
.globl	_$SYSCONST$_Ld155
_$SYSCONST$_Ld155:
.reference _$SYSCONST$_Ld156
	.ascii	"\"%s\" is not a valid boolean.\000"
	.align 2
.globl	_$SYSCONST$_Ld158
_$SYSCONST$_Ld158:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld157
.globl	_$SYSCONST$_Ld157
_$SYSCONST$_Ld157:
.reference _$SYSCONST$_Ld158
	.ascii	"sysconst.sinvalidboolean\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld160
_$SYSCONST$_Ld160:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld159
.globl	_$SYSCONST$_Ld159
_$SYSCONST$_Ld159:
.reference _$SYSCONST$_Ld160
	.ascii	"Invalid type cast\000"
	.align 2
.globl	_$SYSCONST$_Ld162
_$SYSCONST$_Ld162:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld161
.globl	_$SYSCONST$_Ld161
_$SYSCONST$_Ld161:
.reference _$SYSCONST$_Ld162
	.ascii	"sysconst.sinvalidcast\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld164
_$SYSCONST$_Ld164:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld163
.globl	_$SYSCONST$_Ld163
_$SYSCONST$_Ld163:
.reference _$SYSCONST$_Ld164
	.ascii	"Invalid currency: \"%s\"\000"
	.align 2
.globl	_$SYSCONST$_Ld166
_$SYSCONST$_Ld166:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld165
.globl	_$SYSCONST$_Ld165
_$SYSCONST$_Ld165:
.reference _$SYSCONST$_Ld166
	.ascii	"sysconst.sinvalidcurrency\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld168
_$SYSCONST$_Ld168:
	.short	0,1
	.long	0,-1,34
.reference _$SYSCONST$_Ld167
.globl	_$SYSCONST$_Ld167
_$SYSCONST$_Ld167:
.reference _$SYSCONST$_Ld168
	.ascii	"%f is not a valid date/time value.\000"
	.align 2
.globl	_$SYSCONST$_Ld170
_$SYSCONST$_Ld170:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld169
.globl	_$SYSCONST$_Ld169
_$SYSCONST$_Ld169:
.reference _$SYSCONST$_Ld170
	.ascii	"sysconst.sinvaliddatetime\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld172
_$SYSCONST$_Ld172:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld171
.globl	_$SYSCONST$_Ld171
_$SYSCONST$_Ld171:
.reference _$SYSCONST$_Ld172
	.ascii	"Invalid drive specified\000"
	.align 2
.globl	_$SYSCONST$_Ld174
_$SYSCONST$_Ld174:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld173
.globl	_$SYSCONST$_Ld173
_$SYSCONST$_Ld173:
.reference _$SYSCONST$_Ld174
	.ascii	"sysconst.sinvaliddrive\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld176
_$SYSCONST$_Ld176:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld175
.globl	_$SYSCONST$_Ld175
_$SYSCONST$_Ld175:
.reference _$SYSCONST$_Ld176
	.ascii	"Invalid file handle\000"
	.align 2
.globl	_$SYSCONST$_Ld178
_$SYSCONST$_Ld178:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld177
.globl	_$SYSCONST$_Ld177
_$SYSCONST$_Ld177:
.reference _$SYSCONST$_Ld178
	.ascii	"sysconst.sinvalidfilehandle\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld180
_$SYSCONST$_Ld180:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld179
.globl	_$SYSCONST$_Ld179
_$SYSCONST$_Ld179:
.reference _$SYSCONST$_Ld180
	.ascii	"\"%s\" is an invalid float\000"
	.align 2
.globl	_$SYSCONST$_Ld182
_$SYSCONST$_Ld182:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld181
.globl	_$SYSCONST$_Ld181
_$SYSCONST$_Ld181:
.reference _$SYSCONST$_Ld182
	.ascii	"sysconst.sinvalidfloat\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld184
_$SYSCONST$_Ld184:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld183
.globl	_$SYSCONST$_Ld183
_$SYSCONST$_Ld183:
.reference _$SYSCONST$_Ld184
	.ascii	"Invalid format specifier : \"%s\"\000"
	.align 2
.globl	_$SYSCONST$_Ld186
_$SYSCONST$_Ld186:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld185
.globl	_$SYSCONST$_Ld185
_$SYSCONST$_Ld185:
.reference _$SYSCONST$_Ld186
	.ascii	"sysconst.sinvalidformat\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld188
_$SYSCONST$_Ld188:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld187
.globl	_$SYSCONST$_Ld187
_$SYSCONST$_Ld187:
.reference _$SYSCONST$_Ld188
	.ascii	"\"%s\" is not a valid GUID value\000"
	.align 2
.globl	_$SYSCONST$_Ld190
_$SYSCONST$_Ld190:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld189
.globl	_$SYSCONST$_Ld189
_$SYSCONST$_Ld189:
.reference _$SYSCONST$_Ld190
	.ascii	"sysconst.sinvalidguid\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld192
_$SYSCONST$_Ld192:
	.short	0,1
	.long	0,-1,13
.reference _$SYSCONST$_Ld191
.globl	_$SYSCONST$_Ld191
_$SYSCONST$_Ld191:
.reference _$SYSCONST$_Ld192
	.ascii	"Invalid input\000"
	.align 2
.globl	_$SYSCONST$_Ld194
_$SYSCONST$_Ld194:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld193
.globl	_$SYSCONST$_Ld193
_$SYSCONST$_Ld193:
.reference _$SYSCONST$_Ld194
	.ascii	"sysconst.sinvalidinput\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld196
_$SYSCONST$_Ld196:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld195
.globl	_$SYSCONST$_Ld195
_$SYSCONST$_Ld195:
.reference _$SYSCONST$_Ld196
	.ascii	"\"%s\" is an invalid integer\000"
	.align 2
.globl	_$SYSCONST$_Ld198
_$SYSCONST$_Ld198:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld197
.globl	_$SYSCONST$_Ld197
_$SYSCONST$_Ld197:
.reference _$SYSCONST$_Ld198
	.ascii	"sysconst.sinvalidinteger\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld200
_$SYSCONST$_Ld200:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld199
.globl	_$SYSCONST$_Ld199
_$SYSCONST$_Ld199:
.reference _$SYSCONST$_Ld200
	.ascii	"Invalid floating point operation\000"
	.align 2
.globl	_$SYSCONST$_Ld202
_$SYSCONST$_Ld202:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld201
.globl	_$SYSCONST$_Ld201
_$SYSCONST$_Ld201:
.reference _$SYSCONST$_Ld202
	.ascii	"sysconst.sinvalidop\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld204
_$SYSCONST$_Ld204:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld203
.globl	_$SYSCONST$_Ld203
_$SYSCONST$_Ld203:
.reference _$SYSCONST$_Ld204
	.ascii	"Invalid pointer operation\000"
	.align 2
.globl	_$SYSCONST$_Ld206
_$SYSCONST$_Ld206:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld205
.globl	_$SYSCONST$_Ld205
_$SYSCONST$_Ld205:
.reference _$SYSCONST$_Ld206
	.ascii	"sysconst.sinvalidpointer\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld208
_$SYSCONST$_Ld208:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld207
.globl	_$SYSCONST$_Ld207
_$SYSCONST$_Ld207:
.reference _$SYSCONST$_Ld208
	.ascii	"Invalid variant type cast\000"
	.align 2
.globl	_$SYSCONST$_Ld210
_$SYSCONST$_Ld210:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld209
.globl	_$SYSCONST$_Ld209
_$SYSCONST$_Ld209:
.reference _$SYSCONST$_Ld210
	.ascii	"sysconst.sinvalidvarcast\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld212
_$SYSCONST$_Ld212:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld211
.globl	_$SYSCONST$_Ld211
_$SYSCONST$_Ld211:
.reference _$SYSCONST$_Ld212
	.ascii	"Invalid NULL variant operation\000"
	.align 2
.globl	_$SYSCONST$_Ld214
_$SYSCONST$_Ld214:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld213
.globl	_$SYSCONST$_Ld213
_$SYSCONST$_Ld213:
.reference _$SYSCONST$_Ld214
	.ascii	"sysconst.sinvalidvarnullop\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld216
_$SYSCONST$_Ld216:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld215
.globl	_$SYSCONST$_Ld215
_$SYSCONST$_Ld215:
.reference _$SYSCONST$_Ld216
	.ascii	"Invalid variant operation\000"
	.align 2
.globl	_$SYSCONST$_Ld218
_$SYSCONST$_Ld218:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld217
.globl	_$SYSCONST$_Ld217
_$SYSCONST$_Ld217:
.reference _$SYSCONST$_Ld218
	.ascii	"sysconst.sinvalidvarop\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld220
_$SYSCONST$_Ld220:
	.short	0,1
	.long	0,-1,34
.reference _$SYSCONST$_Ld219
.globl	_$SYSCONST$_Ld219
_$SYSCONST$_Ld219:
.reference _$SYSCONST$_Ld220
	.ascii	"Invalid variant operation %s %s %s\000"
	.align 2
.globl	_$SYSCONST$_Ld222
_$SYSCONST$_Ld222:
	.short	0,1
	.long	0,-1,28
.reference _$SYSCONST$_Ld221
.globl	_$SYSCONST$_Ld221
_$SYSCONST$_Ld221:
.reference _$SYSCONST$_Ld222
	.ascii	"sysconst.sinvalidbinaryvarop\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld224
_$SYSCONST$_Ld224:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld223
.globl	_$SYSCONST$_Ld223
_$SYSCONST$_Ld223:
.reference _$SYSCONST$_Ld224
	.ascii	"Invalid variant operation %s %s\000"
	.align 2
.globl	_$SYSCONST$_Ld226
_$SYSCONST$_Ld226:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld225
.globl	_$SYSCONST$_Ld225
_$SYSCONST$_Ld225:
.reference _$SYSCONST$_Ld226
	.ascii	"sysconst.sinvalidunaryvarop\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld228
_$SYSCONST$_Ld228:
	.short	0,1
	.long	0,-1,37
.reference _$SYSCONST$_Ld227
.globl	_$SYSCONST$_Ld227
_$SYSCONST$_Ld227:
.reference _$SYSCONST$_Ld228
	.ascii	"Invalid variant operation (%s%.8x)\012%s\000"
	.align 2
.globl	_$SYSCONST$_Ld230
_$SYSCONST$_Ld230:
	.short	0,1
	.long	0,-1,43
.reference _$SYSCONST$_Ld229
.globl	_$SYSCONST$_Ld229
_$SYSCONST$_Ld229:
.reference _$SYSCONST$_Ld230
	.ascii	"sysconst.sinvalidvaropwithhresultwithprefix\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld232
_$SYSCONST$_Ld232:
	.short	0,1
	.long	0,-1,9
.reference _$SYSCONST$_Ld231
.globl	_$SYSCONST$_Ld231
_$SYSCONST$_Ld231:
.reference _$SYSCONST$_Ld232
	.ascii	"No error.\000"
	.align 2
.globl	_$SYSCONST$_Ld234
_$SYSCONST$_Ld234:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld233
.globl	_$SYSCONST$_Ld233
_$SYSCONST$_Ld233:
.reference _$SYSCONST$_Ld234
	.ascii	"sysconst.snoerror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld236
_$SYSCONST$_Ld236:
	.short	0,1
	.long	0,-1,60
.reference _$SYSCONST$_Ld235
.globl	_$SYSCONST$_Ld235
_$SYSCONST$_Ld235:
.reference _$SYSCONST$_Ld236
	.ascii	"Threads not supported. Recompile program with threa"
	.ascii	"d driver.\000"
	.align 2
.globl	_$SYSCONST$_Ld238
_$SYSCONST$_Ld238:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld237
.globl	_$SYSCONST$_Ld237
_$SYSCONST$_Ld237:
.reference _$SYSCONST$_Ld238
	.ascii	"sysconst.snothreadsupport\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld240
_$SYSCONST$_Ld240:
	.short	0,1
	.long	0,-1,77
.reference _$SYSCONST$_Ld239
.globl	_$SYSCONST$_Ld239
_$SYSCONST$_Ld239:
.reference _$SYSCONST$_Ld240
	.ascii	"Widestring manager not available. Recompile program"
	.ascii	" with appropriate manager.\000"
	.align 2
.globl	_$SYSCONST$_Ld242
_$SYSCONST$_Ld242:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld241
.globl	_$SYSCONST$_Ld241
_$SYSCONST$_Ld241:
.reference _$SYSCONST$_Ld242
	.ascii	"sysconst.smissingwstringmanager\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld244
_$SYSCONST$_Ld244:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld243
.globl	_$SYSCONST$_Ld243
_$SYSCONST$_Ld243:
.reference _$SYSCONST$_Ld244
	.ascii	"SIGQUIT signal received.\000"
	.align 2
.globl	_$SYSCONST$_Ld246
_$SYSCONST$_Ld246:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld245
.globl	_$SYSCONST$_Ld245
_$SYSCONST$_Ld245:
.reference _$SYSCONST$_Ld246
	.ascii	"sysconst.ssigquit\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld248
_$SYSCONST$_Ld248:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld247
.globl	_$SYSCONST$_Ld247
_$SYSCONST$_Ld247:
.reference _$SYSCONST$_Ld248
	.ascii	"System error, (OS Code %d):\012%s\000"
	.align 2
.globl	_$SYSCONST$_Ld250
_$SYSCONST$_Ld250:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld249
.globl	_$SYSCONST$_Ld249
_$SYSCONST$_Ld249:
.reference _$SYSCONST$_Ld250
	.ascii	"sysconst.soserror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld252
_$SYSCONST$_Ld252:
	.short	0,1
	.long	0,-1,13
.reference _$SYSCONST$_Ld251
.globl	_$SYSCONST$_Ld251
_$SYSCONST$_Ld251:
.reference _$SYSCONST$_Ld252
	.ascii	"Out of memory\000"
	.align 2
.globl	_$SYSCONST$_Ld254
_$SYSCONST$_Ld254:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld253
.globl	_$SYSCONST$_Ld253
_$SYSCONST$_Ld253:
.reference _$SYSCONST$_Ld254
	.ascii	"sysconst.soutofmemory\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld256
_$SYSCONST$_Ld256:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld255
.globl	_$SYSCONST$_Ld255
_$SYSCONST$_Ld255:
.reference _$SYSCONST$_Ld256
	.ascii	"Floating point overflow\000"
	.align 2
.globl	_$SYSCONST$_Ld258
_$SYSCONST$_Ld258:
	.short	0,1
	.long	0,-1,18
.reference _$SYSCONST$_Ld257
.globl	_$SYSCONST$_Ld257
_$SYSCONST$_Ld257:
.reference _$SYSCONST$_Ld258
	.ascii	"sysconst.soverflow\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld260
_$SYSCONST$_Ld260:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld259
.globl	_$SYSCONST$_Ld259
_$SYSCONST$_Ld259:
.reference _$SYSCONST$_Ld260
	.ascii	"Privileged instruction\000"
	.align 2
.globl	_$SYSCONST$_Ld262
_$SYSCONST$_Ld262:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld261
.globl	_$SYSCONST$_Ld261
_$SYSCONST$_Ld261:
.reference _$SYSCONST$_Ld262
	.ascii	"sysconst.sprivilege\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld264
_$SYSCONST$_Ld264:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld263
.globl	_$SYSCONST$_Ld263
_$SYSCONST$_Ld263:
.reference _$SYSCONST$_Ld264
	.ascii	"Range check error\000"
	.align 2
.globl	_$SYSCONST$_Ld266
_$SYSCONST$_Ld266:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld265
.globl	_$SYSCONST$_Ld265
_$SYSCONST$_Ld265:
.reference _$SYSCONST$_Ld266
	.ascii	"sysconst.srangeerror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld268
_$SYSCONST$_Ld268:
	.short	0,1
	.long	0,-1,28
.reference _$SYSCONST$_Ld267
.globl	_$SYSCONST$_Ld267
_$SYSCONST$_Ld267:
.reference _$SYSCONST$_Ld268
	.ascii	"Exception in safecall method\000"
	.align 2
.globl	_$SYSCONST$_Ld270
_$SYSCONST$_Ld270:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld269
.globl	_$SYSCONST$_Ld269
_$SYSCONST$_Ld269:
.reference _$SYSCONST$_Ld270
	.ascii	"sysconst.ssafecallexception\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld272
_$SYSCONST$_Ld272:
	.short	0,1
	.long	0,-1,11
.reference _$SYSCONST$_Ld271
.globl	_$SYSCONST$_Ld271
_$SYSCONST$_Ld271:
.reference _$SYSCONST$_Ld272
	.ascii	"iconv error\000"
	.align 2
.globl	_$SYSCONST$_Ld274
_$SYSCONST$_Ld274:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld273
.globl	_$SYSCONST$_Ld273
_$SYSCONST$_Ld273:
.reference _$SYSCONST$_Ld274
	.ascii	"sysconst.siconverror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld276
_$SYSCONST$_Ld276:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld275
.globl	_$SYSCONST$_Ld275
_$SYSCONST$_Ld275:
.reference _$SYSCONST$_Ld276
	.ascii	"Too many open files\000"
	.align 2
.globl	_$SYSCONST$_Ld278
_$SYSCONST$_Ld278:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld277
.globl	_$SYSCONST$_Ld277
_$SYSCONST$_Ld277:
.reference _$SYSCONST$_Ld278
	.ascii	"sysconst.stoomanyopenfiles\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld280
_$SYSCONST$_Ld280:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld279
.globl	_$SYSCONST$_Ld279
_$SYSCONST$_Ld279:
.reference _$SYSCONST$_Ld280
	.ascii	"Unknown Run-Time error : %3.3d\000"
	.align 2
.globl	_$SYSCONST$_Ld282
_$SYSCONST$_Ld282:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld281
.globl	_$SYSCONST$_Ld281
_$SYSCONST$_Ld281:
.reference _$SYSCONST$_Ld282
	.ascii	"sysconst.sunknownruntimeerror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld284
_$SYSCONST$_Ld284:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld283
.globl	_$SYSCONST$_Ld283
_$SYSCONST$_Ld283:
.reference _$SYSCONST$_Ld284
	.ascii	"Floating point underflow\000"
	.align 2
.globl	_$SYSCONST$_Ld286
_$SYSCONST$_Ld286:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld285
.globl	_$SYSCONST$_Ld285
_$SYSCONST$_Ld285:
.reference _$SYSCONST$_Ld286
	.ascii	"sysconst.sunderflow\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld288
_$SYSCONST$_Ld288:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld287
.globl	_$SYSCONST$_Ld287
_$SYSCONST$_Ld287:
.reference _$SYSCONST$_Ld288
	.ascii	"An operating system call failed.\000"
	.align 2
.globl	_$SYSCONST$_Ld290
_$SYSCONST$_Ld290:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld289
.globl	_$SYSCONST$_Ld289
_$SYSCONST$_Ld289:
.reference _$SYSCONST$_Ld290
	.ascii	"sysconst.sunkoserror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld292
_$SYSCONST$_Ld292:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld291
.globl	_$SYSCONST$_Ld291
_$SYSCONST$_Ld291:
.reference _$SYSCONST$_Ld292
	.ascii	"Unknown run-time error code: \000"
	.align 2
.globl	_$SYSCONST$_Ld294
_$SYSCONST$_Ld294:
	.short	0,1
	.long	0,-1,17
.reference _$SYSCONST$_Ld293
.globl	_$SYSCONST$_Ld293
_$SYSCONST$_Ld293:
.reference _$SYSCONST$_Ld294
	.ascii	"sysconst.sunknown\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld296
_$SYSCONST$_Ld296:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld295
.globl	_$SYSCONST$_Ld295
_$SYSCONST$_Ld295:
.reference _$SYSCONST$_Ld296
	.ascii	"Unknown error code: %d\000"
	.align 2
.globl	_$SYSCONST$_Ld298
_$SYSCONST$_Ld298:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld297
.globl	_$SYSCONST$_Ld297
_$SYSCONST$_Ld297:
.reference _$SYSCONST$_Ld298
	.ascii	"sysconst.sunknownerrorcode\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld300
_$SYSCONST$_Ld300:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld299
.globl	_$SYSCONST$_Ld299
_$SYSCONST$_Ld299:
.reference _$SYSCONST$_Ld300
	.ascii	"Variant array bounds error\000"
	.align 2
.globl	_$SYSCONST$_Ld302
_$SYSCONST$_Ld302:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld301
.globl	_$SYSCONST$_Ld301
_$SYSCONST$_Ld301:
.reference _$SYSCONST$_Ld302
	.ascii	"sysconst.svararraybounds\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld304
_$SYSCONST$_Ld304:
	.short	0,1
	.long	0,-1,31
.reference _$SYSCONST$_Ld303
.globl	_$SYSCONST$_Ld303
_$SYSCONST$_Ld303:
.reference _$SYSCONST$_Ld304
	.ascii	"Variant array cannot be created\000"
	.align 2
.globl	_$SYSCONST$_Ld306
_$SYSCONST$_Ld306:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld305
.globl	_$SYSCONST$_Ld305
_$SYSCONST$_Ld305:
.reference _$SYSCONST$_Ld306
	.ascii	"sysconst.svararraycreate\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld308
_$SYSCONST$_Ld308:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld307
.globl	_$SYSCONST$_Ld307
_$SYSCONST$_Ld307:
.reference _$SYSCONST$_Ld308
	.ascii	"Variant array locked\000"
	.align 2
.globl	_$SYSCONST$_Ld310
_$SYSCONST$_Ld310:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld309
.globl	_$SYSCONST$_Ld309
_$SYSCONST$_Ld309:
.reference _$SYSCONST$_Ld310
	.ascii	"sysconst.svararraylocked\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld312
_$SYSCONST$_Ld312:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld311
.globl	_$SYSCONST$_Ld311
_$SYSCONST$_Ld311:
.reference _$SYSCONST$_Ld312
	.ascii	"Invalid variant type\000"
	.align 2
.globl	_$SYSCONST$_Ld314
_$SYSCONST$_Ld314:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld313
.globl	_$SYSCONST$_Ld313
_$SYSCONST$_Ld313:
.reference _$SYSCONST$_Ld314
	.ascii	"sysconst.svarbadtype\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld316
_$SYSCONST$_Ld316:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld315
.globl	_$SYSCONST$_Ld315
_$SYSCONST$_Ld315:
.reference _$SYSCONST$_Ld316
	.ascii	"Invalid argument\000"
	.align 2
.globl	_$SYSCONST$_Ld318
_$SYSCONST$_Ld318:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld317
.globl	_$SYSCONST$_Ld317
_$SYSCONST$_Ld317:
.reference _$SYSCONST$_Ld318
	.ascii	"sysconst.svarinvalid\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld320
_$SYSCONST$_Ld320:
	.short	0,1
	.long	0,-1,20
.reference _$SYSCONST$_Ld319
.globl	_$SYSCONST$_Ld319
_$SYSCONST$_Ld319:
.reference _$SYSCONST$_Ld320
	.ascii	"Invalid argument: %s\000"
	.align 2
.globl	_$SYSCONST$_Ld322
_$SYSCONST$_Ld322:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld321
.globl	_$SYSCONST$_Ld321
_$SYSCONST$_Ld321:
.reference _$SYSCONST$_Ld322
	.ascii	"sysconst.svarinvalid1\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld324
_$SYSCONST$_Ld324:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld323
.globl	_$SYSCONST$_Ld323
_$SYSCONST$_Ld323:
.reference _$SYSCONST$_Ld324
	.ascii	"Variant doesn't contain an array\000"
	.align 2
.globl	_$SYSCONST$_Ld326
_$SYSCONST$_Ld326:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld325
.globl	_$SYSCONST$_Ld325
_$SYSCONST$_Ld325:
.reference _$SYSCONST$_Ld326
	.ascii	"sysconst.svarnotarray\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld328
_$SYSCONST$_Ld328:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld327
.globl	_$SYSCONST$_Ld327
_$SYSCONST$_Ld327:
.reference _$SYSCONST$_Ld328
	.ascii	"Operation not supported\000"
	.align 2
.globl	_$SYSCONST$_Ld330
_$SYSCONST$_Ld330:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld329
.globl	_$SYSCONST$_Ld329
_$SYSCONST$_Ld329:
.reference _$SYSCONST$_Ld330
	.ascii	"sysconst.svarnotimplemented\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld332
_$SYSCONST$_Ld332:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld331
.globl	_$SYSCONST$_Ld331
_$SYSCONST$_Ld331:
.reference _$SYSCONST$_Ld332
	.ascii	"Variant operation ran out memory\000"
	.align 2
.globl	_$SYSCONST$_Ld334
_$SYSCONST$_Ld334:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld333
.globl	_$SYSCONST$_Ld333
_$SYSCONST$_Ld333:
.reference _$SYSCONST$_Ld334
	.ascii	"sysconst.svaroutofmemory\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld336
_$SYSCONST$_Ld336:
	.short	0,1
	.long	0,-1,16
.reference _$SYSCONST$_Ld335
.globl	_$SYSCONST$_Ld335
_$SYSCONST$_Ld335:
.reference _$SYSCONST$_Ld336
	.ascii	"Variant overflow\000"
	.align 2
.globl	_$SYSCONST$_Ld338
_$SYSCONST$_Ld338:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld337
.globl	_$SYSCONST$_Ld337
_$SYSCONST$_Ld337:
.reference _$SYSCONST$_Ld338
	.ascii	"sysconst.svaroverflow\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld340
_$SYSCONST$_Ld340:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld339
.globl	_$SYSCONST$_Ld339
_$SYSCONST$_Ld339:
.reference _$SYSCONST$_Ld340
	.ascii	"Variant Parameter not found\000"
	.align 2
.globl	_$SYSCONST$_Ld342
_$SYSCONST$_Ld342:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld341
.globl	_$SYSCONST$_Ld341
_$SYSCONST$_Ld341:
.reference _$SYSCONST$_Ld342
	.ascii	"sysconst.svarparamnotfound\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld344
_$SYSCONST$_Ld344:
	.short	0,1
	.long	0,-1,47
.reference _$SYSCONST$_Ld343
.globl	_$SYSCONST$_Ld343
_$SYSCONST$_Ld343:
.reference _$SYSCONST$_Ld344
	.ascii	"Custom variant type (%s%.4x) already used by %s\000"
	.align 2
.globl	_$SYSCONST$_Ld346
_$SYSCONST$_Ld346:
	.short	0,1
	.long	0,-1,38
.reference _$SYSCONST$_Ld345
.globl	_$SYSCONST$_Ld345
_$SYSCONST$_Ld345:
.reference _$SYSCONST$_Ld346
	.ascii	"sysconst.svartypealreadyusedwithprefix\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld348
_$SYSCONST$_Ld348:
	.short	0,1
	.long	0,-1,61
.reference _$SYSCONST$_Ld347
.globl	_$SYSCONST$_Ld347
_$SYSCONST$_Ld347:
.reference _$SYSCONST$_Ld348
	.ascii	"Overflow while converting variant of type (%s) into"
	.ascii	" type (%s)\000"
	.align 2
.globl	_$SYSCONST$_Ld350
_$SYSCONST$_Ld350:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld349
.globl	_$SYSCONST$_Ld349
_$SYSCONST$_Ld349:
.reference _$SYSCONST$_Ld350
	.ascii	"sysconst.svartypeconvertoverflow\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld352
_$SYSCONST$_Ld352:
	.short	0,1
	.long	0,-1,53
.reference _$SYSCONST$_Ld351
.globl	_$SYSCONST$_Ld351
_$SYSCONST$_Ld351:
.reference _$SYSCONST$_Ld352
	.ascii	"Could not convert variant of type (%s) into type (%"
	.ascii	"s)\000"
	.align 2
.globl	_$SYSCONST$_Ld354
_$SYSCONST$_Ld354:
	.short	0,1
	.long	0,-1,32
.reference _$SYSCONST$_Ld353
.globl	_$SYSCONST$_Ld353
_$SYSCONST$_Ld353:
.reference _$SYSCONST$_Ld354
	.ascii	"sysconst.svartypecouldnotconvert\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld356
_$SYSCONST$_Ld356:
	.short	0,1
	.long	0,-1,42
.reference _$SYSCONST$_Ld355
.globl	_$SYSCONST$_Ld355
_$SYSCONST$_Ld355:
.reference _$SYSCONST$_Ld356
	.ascii	"Custom variant type (%s%.4x) is not usable\000"
	.align 2
.globl	_$SYSCONST$_Ld358
_$SYSCONST$_Ld358:
	.short	0,1
	.long	0,-1,36
.reference _$SYSCONST$_Ld357
.globl	_$SYSCONST$_Ld357
_$SYSCONST$_Ld357:
.reference _$SYSCONST$_Ld358
	.ascii	"sysconst.svartypenotusablewithprefix\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld360
_$SYSCONST$_Ld360:
	.short	0,1
	.long	0,-1,44
.reference _$SYSCONST$_Ld359
.globl	_$SYSCONST$_Ld359
_$SYSCONST$_Ld359:
.reference _$SYSCONST$_Ld360
	.ascii	"Custom variant type (%s%.4x) is out of range\000"
	.align 2
.globl	_$SYSCONST$_Ld362
_$SYSCONST$_Ld362:
	.short	0,1
	.long	0,-1,37
.reference _$SYSCONST$_Ld361
.globl	_$SYSCONST$_Ld361
_$SYSCONST$_Ld361:
.reference _$SYSCONST$_Ld362
	.ascii	"sysconst.svartypeoutofrangewithprefix\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld364
_$SYSCONST$_Ld364:
	.short	0,1
	.long	0,-1,42
.reference _$SYSCONST$_Ld363
.globl	_$SYSCONST$_Ld363
_$SYSCONST$_Ld363:
.reference _$SYSCONST$_Ld364
	.ascii	"Range check error for variant of type (%s)\000"
	.align 2
.globl	_$SYSCONST$_Ld366
_$SYSCONST$_Ld366:
	.short	0,1
	.long	0,-1,28
.reference _$SYSCONST$_Ld365
.globl	_$SYSCONST$_Ld365
_$SYSCONST$_Ld365:
.reference _$SYSCONST$_Ld366
	.ascii	"sysconst.svartyperangecheck1\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld368
_$SYSCONST$_Ld368:
	.short	0,1
	.long	0,-1,70
.reference _$SYSCONST$_Ld367
.globl	_$SYSCONST$_Ld367
_$SYSCONST$_Ld367:
.reference _$SYSCONST$_Ld368
	.ascii	"Range check error while converting variant of type "
	.ascii	"(%s) into type (%s)\000"
	.align 2
.globl	_$SYSCONST$_Ld370
_$SYSCONST$_Ld370:
	.short	0,1
	.long	0,-1,28
.reference _$SYSCONST$_Ld369
.globl	_$SYSCONST$_Ld369
_$SYSCONST$_Ld369:
.reference _$SYSCONST$_Ld370
	.ascii	"sysconst.svartyperangecheck2\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld372
_$SYSCONST$_Ld372:
	.short	0,1
	.long	0,-1,50
.reference _$SYSCONST$_Ld371
.globl	_$SYSCONST$_Ld371
_$SYSCONST$_Ld371:
.reference _$SYSCONST$_Ld372
	.ascii	"Too many custom variant types have been registered\000"
	.align 2
.globl	_$SYSCONST$_Ld374
_$SYSCONST$_Ld374:
	.short	0,1
	.long	0,-1,30
.reference _$SYSCONST$_Ld373
.globl	_$SYSCONST$_Ld373
_$SYSCONST$_Ld373:
.reference _$SYSCONST$_Ld374
	.ascii	"sysconst.svartypetoomanycustom\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld376
_$SYSCONST$_Ld376:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld375
.globl	_$SYSCONST$_Ld375
_$SYSCONST$_Ld375:
.reference _$SYSCONST$_Ld376
	.ascii	"Unexpected variant error\000"
	.align 2
.globl	_$SYSCONST$_Ld378
_$SYSCONST$_Ld378:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld377
.globl	_$SYSCONST$_Ld377
_$SYSCONST$_Ld377:
.reference _$SYSCONST$_Ld378
	.ascii	"sysconst.svarunexpected\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld380
_$SYSCONST$_Ld380:
	.short	0,1
	.long	0,-1,80
.reference _$SYSCONST$_Ld379
.globl	_$SYSCONST$_Ld379
_$SYSCONST$_Ld379:
.reference _$SYSCONST$_Ld380
	.ascii	"An error, whose error code is larger than can be re"
	.ascii	"turned to the OS, has occured\000"
	.align 2
.globl	_$SYSCONST$_Ld382
_$SYSCONST$_Ld382:
	.short	0,1
	.long	0,-1,23
.reference _$SYSCONST$_Ld381
.globl	_$SYSCONST$_Ld381
_$SYSCONST$_Ld381:
.reference _$SYSCONST$_Ld382
	.ascii	"sysconst.sfallbackerror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld384
_$SYSCONST$_Ld384:
	.short	0,1
	.long	0,-1,48
.reference _$SYSCONST$_Ld383
.globl	_$SYSCONST$_Ld383
_$SYSCONST$_Ld383:
.reference _$SYSCONST$_Ld384
	.ascii	"Toolserver is not installed, cannot execute Tool\000"
	.align 2
.globl	_$SYSCONST$_Ld386
_$SYSCONST$_Ld386:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld385
.globl	_$SYSCONST$_Ld385
_$SYSCONST$_Ld385:
.reference _$SYSCONST$_Ld386
	.ascii	"sysconst.snotoolserver\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld388
_$SYSCONST$_Ld388:
	.short	0,1
	.long	0,-1,73
.reference _$SYSCONST$_Ld387
.globl	_$SYSCONST$_Ld387
_$SYSCONST$_Ld387:
.reference _$SYSCONST$_Ld388
	.ascii	"Can't match any allowed value at pattern position %"
	.ascii	"d, string position %d.\000"
	.align 2
.globl	_$SYSCONST$_Ld390
_$SYSCONST$_Ld390:
	.short	0,1
	.long	0,-1,22
.reference _$SYSCONST$_Ld389
.globl	_$SYSCONST$_Ld389
_$SYSCONST$_Ld389:
.reference _$SYSCONST$_Ld390
	.ascii	"sysconst.snoarraymatch\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld392
_$SYSCONST$_Ld392:
	.short	0,1
	.long	0,-1,70
.reference _$SYSCONST$_Ld391
.globl	_$SYSCONST$_Ld391
_$SYSCONST$_Ld391:
.reference _$SYSCONST$_Ld392
	.ascii	"Mismatch char \"%s\" <> \"%s\" at pattern position "
	.ascii	"%d, string position %d.\000"
	.align 2
.globl	_$SYSCONST$_Ld394
_$SYSCONST$_Ld394:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld393
.globl	_$SYSCONST$_Ld393
_$SYSCONST$_Ld393:
.reference _$SYSCONST$_Ld394
	.ascii	"sysconst.snocharmatch\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld396
_$SYSCONST$_Ld396:
	.short	0,1
	.long	0,-1,94
.reference _$SYSCONST$_Ld395
.globl	_$SYSCONST$_Ld395
_$SYSCONST$_Ld395:
.reference _$SYSCONST$_Ld396
	.ascii	"mm in a sequence hh:mm is interpreted as minutes. N"
	.ascii	"o longer versions allowed! (Position : %d).\000"
	.align 2
.globl	_$SYSCONST$_Ld398
_$SYSCONST$_Ld398:
	.short	0,1
	.long	0,-1,19
.reference _$SYSCONST$_Ld397
.globl	_$SYSCONST$_Ld397
_$SYSCONST$_Ld397:
.reference _$SYSCONST$_Ld398
	.ascii	"sysconst.shhmmerror\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld400
_$SYSCONST$_Ld400:
	.short	0,1
	.long	0,-1,77
.reference _$SYSCONST$_Ld399
.globl	_$SYSCONST$_Ld399
_$SYSCONST$_Ld399:
.reference _$SYSCONST$_Ld400
	.ascii	"Couldn't match entire pattern string. Input too sho"
	.ascii	"rt at pattern position %d.\000"
	.align 2
.globl	_$SYSCONST$_Ld402
_$SYSCONST$_Ld402:
	.short	0,1
	.long	0,-1,21
.reference _$SYSCONST$_Ld401
.globl	_$SYSCONST$_Ld401
_$SYSCONST$_Ld401:
.reference _$SYSCONST$_Ld402
	.ascii	"sysconst.sfullpattern\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld404
_$SYSCONST$_Ld404:
	.short	0,1
	.long	0,-1,42
.reference _$SYSCONST$_Ld403
.globl	_$SYSCONST$_Ld403
_$SYSCONST$_Ld403:
.reference _$SYSCONST$_Ld404
	.ascii	"Pattern mismatch char \"%s\" at position %d.\000"
	.align 2
.globl	_$SYSCONST$_Ld406
_$SYSCONST$_Ld406:
	.short	0,1
	.long	0,-1,29
.reference _$SYSCONST$_Ld405
.globl	_$SYSCONST$_Ld405
_$SYSCONST$_Ld405:
.reference _$SYSCONST$_Ld406
	.ascii	"sysconst.spatterncharmismatch\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld408
_$SYSCONST$_Ld408:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld407
.globl	_$SYSCONST$_Ld407
_$SYSCONST$_Ld407:
.reference _$SYSCONST$_Ld408
	.ascii	"Jan\000"
	.align 2
.globl	_$SYSCONST$_Ld410
_$SYSCONST$_Ld410:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld409
.globl	_$SYSCONST$_Ld409
_$SYSCONST$_Ld409:
.reference _$SYSCONST$_Ld410
	.ascii	"sysconst.sshortmonthnamejan\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld412
_$SYSCONST$_Ld412:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld411
.globl	_$SYSCONST$_Ld411
_$SYSCONST$_Ld411:
.reference _$SYSCONST$_Ld412
	.ascii	"Feb\000"
	.align 2
.globl	_$SYSCONST$_Ld414
_$SYSCONST$_Ld414:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld413
.globl	_$SYSCONST$_Ld413
_$SYSCONST$_Ld413:
.reference _$SYSCONST$_Ld414
	.ascii	"sysconst.sshortmonthnamefeb\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld416
_$SYSCONST$_Ld416:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld415
.globl	_$SYSCONST$_Ld415
_$SYSCONST$_Ld415:
.reference _$SYSCONST$_Ld416
	.ascii	"Mar\000"
	.align 2
.globl	_$SYSCONST$_Ld418
_$SYSCONST$_Ld418:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld417
.globl	_$SYSCONST$_Ld417
_$SYSCONST$_Ld417:
.reference _$SYSCONST$_Ld418
	.ascii	"sysconst.sshortmonthnamemar\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld420
_$SYSCONST$_Ld420:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld419
.globl	_$SYSCONST$_Ld419
_$SYSCONST$_Ld419:
.reference _$SYSCONST$_Ld420
	.ascii	"Apr\000"
	.align 2
.globl	_$SYSCONST$_Ld422
_$SYSCONST$_Ld422:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld421
.globl	_$SYSCONST$_Ld421
_$SYSCONST$_Ld421:
.reference _$SYSCONST$_Ld422
	.ascii	"sysconst.sshortmonthnameapr\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld424
_$SYSCONST$_Ld424:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld423
.globl	_$SYSCONST$_Ld423
_$SYSCONST$_Ld423:
.reference _$SYSCONST$_Ld424
	.ascii	"May\000"
	.align 2
.globl	_$SYSCONST$_Ld426
_$SYSCONST$_Ld426:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld425
.globl	_$SYSCONST$_Ld425
_$SYSCONST$_Ld425:
.reference _$SYSCONST$_Ld426
	.ascii	"sysconst.sshortmonthnamemay\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld428
_$SYSCONST$_Ld428:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld427
.globl	_$SYSCONST$_Ld427
_$SYSCONST$_Ld427:
.reference _$SYSCONST$_Ld428
	.ascii	"Jun\000"
	.align 2
.globl	_$SYSCONST$_Ld430
_$SYSCONST$_Ld430:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld429
.globl	_$SYSCONST$_Ld429
_$SYSCONST$_Ld429:
.reference _$SYSCONST$_Ld430
	.ascii	"sysconst.sshortmonthnamejun\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld432
_$SYSCONST$_Ld432:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld431
.globl	_$SYSCONST$_Ld431
_$SYSCONST$_Ld431:
.reference _$SYSCONST$_Ld432
	.ascii	"Jul\000"
	.align 2
.globl	_$SYSCONST$_Ld434
_$SYSCONST$_Ld434:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld433
.globl	_$SYSCONST$_Ld433
_$SYSCONST$_Ld433:
.reference _$SYSCONST$_Ld434
	.ascii	"sysconst.sshortmonthnamejul\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld436
_$SYSCONST$_Ld436:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld435
.globl	_$SYSCONST$_Ld435
_$SYSCONST$_Ld435:
.reference _$SYSCONST$_Ld436
	.ascii	"Aug\000"
	.align 2
.globl	_$SYSCONST$_Ld438
_$SYSCONST$_Ld438:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld437
.globl	_$SYSCONST$_Ld437
_$SYSCONST$_Ld437:
.reference _$SYSCONST$_Ld438
	.ascii	"sysconst.sshortmonthnameaug\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld440
_$SYSCONST$_Ld440:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld439
.globl	_$SYSCONST$_Ld439
_$SYSCONST$_Ld439:
.reference _$SYSCONST$_Ld440
	.ascii	"Sep\000"
	.align 2
.globl	_$SYSCONST$_Ld442
_$SYSCONST$_Ld442:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld441
.globl	_$SYSCONST$_Ld441
_$SYSCONST$_Ld441:
.reference _$SYSCONST$_Ld442
	.ascii	"sysconst.sshortmonthnamesep\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld444
_$SYSCONST$_Ld444:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld443
.globl	_$SYSCONST$_Ld443
_$SYSCONST$_Ld443:
.reference _$SYSCONST$_Ld444
	.ascii	"Oct\000"
	.align 2
.globl	_$SYSCONST$_Ld446
_$SYSCONST$_Ld446:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld445
.globl	_$SYSCONST$_Ld445
_$SYSCONST$_Ld445:
.reference _$SYSCONST$_Ld446
	.ascii	"sysconst.sshortmonthnameoct\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld448
_$SYSCONST$_Ld448:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld447
.globl	_$SYSCONST$_Ld447
_$SYSCONST$_Ld447:
.reference _$SYSCONST$_Ld448
	.ascii	"Nov\000"
	.align 2
.globl	_$SYSCONST$_Ld450
_$SYSCONST$_Ld450:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld449
.globl	_$SYSCONST$_Ld449
_$SYSCONST$_Ld449:
.reference _$SYSCONST$_Ld450
	.ascii	"sysconst.sshortmonthnamenov\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld452
_$SYSCONST$_Ld452:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld451
.globl	_$SYSCONST$_Ld451
_$SYSCONST$_Ld451:
.reference _$SYSCONST$_Ld452
	.ascii	"Dec\000"
	.align 2
.globl	_$SYSCONST$_Ld454
_$SYSCONST$_Ld454:
	.short	0,1
	.long	0,-1,27
.reference _$SYSCONST$_Ld453
.globl	_$SYSCONST$_Ld453
_$SYSCONST$_Ld453:
.reference _$SYSCONST$_Ld454
	.ascii	"sysconst.sshortmonthnamedec\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld456
_$SYSCONST$_Ld456:
	.short	0,1
	.long	0,-1,7
.reference _$SYSCONST$_Ld455
.globl	_$SYSCONST$_Ld455
_$SYSCONST$_Ld455:
.reference _$SYSCONST$_Ld456
	.ascii	"January\000"
	.align 2
.globl	_$SYSCONST$_Ld458
_$SYSCONST$_Ld458:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld457
.globl	_$SYSCONST$_Ld457
_$SYSCONST$_Ld457:
.reference _$SYSCONST$_Ld458
	.ascii	"sysconst.slongmonthnamejan\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld460
_$SYSCONST$_Ld460:
	.short	0,1
	.long	0,-1,8
.reference _$SYSCONST$_Ld459
.globl	_$SYSCONST$_Ld459
_$SYSCONST$_Ld459:
.reference _$SYSCONST$_Ld460
	.ascii	"February\000"
	.align 2
.globl	_$SYSCONST$_Ld462
_$SYSCONST$_Ld462:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld461
.globl	_$SYSCONST$_Ld461
_$SYSCONST$_Ld461:
.reference _$SYSCONST$_Ld462
	.ascii	"sysconst.slongmonthnamefeb\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld464
_$SYSCONST$_Ld464:
	.short	0,1
	.long	0,-1,5
.reference _$SYSCONST$_Ld463
.globl	_$SYSCONST$_Ld463
_$SYSCONST$_Ld463:
.reference _$SYSCONST$_Ld464
	.ascii	"March\000"
	.align 2
.globl	_$SYSCONST$_Ld466
_$SYSCONST$_Ld466:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld465
.globl	_$SYSCONST$_Ld465
_$SYSCONST$_Ld465:
.reference _$SYSCONST$_Ld466
	.ascii	"sysconst.slongmonthnamemar\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld468
_$SYSCONST$_Ld468:
	.short	0,1
	.long	0,-1,5
.reference _$SYSCONST$_Ld467
.globl	_$SYSCONST$_Ld467
_$SYSCONST$_Ld467:
.reference _$SYSCONST$_Ld468
	.ascii	"April\000"
	.align 2
.globl	_$SYSCONST$_Ld470
_$SYSCONST$_Ld470:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld469
.globl	_$SYSCONST$_Ld469
_$SYSCONST$_Ld469:
.reference _$SYSCONST$_Ld470
	.ascii	"sysconst.slongmonthnameapr\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld472
_$SYSCONST$_Ld472:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld471
.globl	_$SYSCONST$_Ld471
_$SYSCONST$_Ld471:
.reference _$SYSCONST$_Ld472
	.ascii	"May\000"
	.align 2
.globl	_$SYSCONST$_Ld474
_$SYSCONST$_Ld474:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld473
.globl	_$SYSCONST$_Ld473
_$SYSCONST$_Ld473:
.reference _$SYSCONST$_Ld474
	.ascii	"sysconst.slongmonthnamemay\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld476
_$SYSCONST$_Ld476:
	.short	0,1
	.long	0,-1,4
.reference _$SYSCONST$_Ld475
.globl	_$SYSCONST$_Ld475
_$SYSCONST$_Ld475:
.reference _$SYSCONST$_Ld476
	.ascii	"June\000"
	.align 2
.globl	_$SYSCONST$_Ld478
_$SYSCONST$_Ld478:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld477
.globl	_$SYSCONST$_Ld477
_$SYSCONST$_Ld477:
.reference _$SYSCONST$_Ld478
	.ascii	"sysconst.slongmonthnamejun\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld480
_$SYSCONST$_Ld480:
	.short	0,1
	.long	0,-1,4
.reference _$SYSCONST$_Ld479
.globl	_$SYSCONST$_Ld479
_$SYSCONST$_Ld479:
.reference _$SYSCONST$_Ld480
	.ascii	"July\000"
	.align 2
.globl	_$SYSCONST$_Ld482
_$SYSCONST$_Ld482:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld481
.globl	_$SYSCONST$_Ld481
_$SYSCONST$_Ld481:
.reference _$SYSCONST$_Ld482
	.ascii	"sysconst.slongmonthnamejul\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld484
_$SYSCONST$_Ld484:
	.short	0,1
	.long	0,-1,6
.reference _$SYSCONST$_Ld483
.globl	_$SYSCONST$_Ld483
_$SYSCONST$_Ld483:
.reference _$SYSCONST$_Ld484
	.ascii	"August\000"
	.align 2
.globl	_$SYSCONST$_Ld486
_$SYSCONST$_Ld486:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld485
.globl	_$SYSCONST$_Ld485
_$SYSCONST$_Ld485:
.reference _$SYSCONST$_Ld486
	.ascii	"sysconst.slongmonthnameaug\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld488
_$SYSCONST$_Ld488:
	.short	0,1
	.long	0,-1,9
.reference _$SYSCONST$_Ld487
.globl	_$SYSCONST$_Ld487
_$SYSCONST$_Ld487:
.reference _$SYSCONST$_Ld488
	.ascii	"September\000"
	.align 2
.globl	_$SYSCONST$_Ld490
_$SYSCONST$_Ld490:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld489
.globl	_$SYSCONST$_Ld489
_$SYSCONST$_Ld489:
.reference _$SYSCONST$_Ld490
	.ascii	"sysconst.slongmonthnamesep\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld492
_$SYSCONST$_Ld492:
	.short	0,1
	.long	0,-1,7
.reference _$SYSCONST$_Ld491
.globl	_$SYSCONST$_Ld491
_$SYSCONST$_Ld491:
.reference _$SYSCONST$_Ld492
	.ascii	"October\000"
	.align 2
.globl	_$SYSCONST$_Ld494
_$SYSCONST$_Ld494:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld493
.globl	_$SYSCONST$_Ld493
_$SYSCONST$_Ld493:
.reference _$SYSCONST$_Ld494
	.ascii	"sysconst.slongmonthnameoct\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld496
_$SYSCONST$_Ld496:
	.short	0,1
	.long	0,-1,8
.reference _$SYSCONST$_Ld495
.globl	_$SYSCONST$_Ld495
_$SYSCONST$_Ld495:
.reference _$SYSCONST$_Ld496
	.ascii	"November\000"
	.align 2
.globl	_$SYSCONST$_Ld498
_$SYSCONST$_Ld498:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld497
.globl	_$SYSCONST$_Ld497
_$SYSCONST$_Ld497:
.reference _$SYSCONST$_Ld498
	.ascii	"sysconst.slongmonthnamenov\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld500
_$SYSCONST$_Ld500:
	.short	0,1
	.long	0,-1,8
.reference _$SYSCONST$_Ld499
.globl	_$SYSCONST$_Ld499
_$SYSCONST$_Ld499:
.reference _$SYSCONST$_Ld500
	.ascii	"December\000"
	.align 2
.globl	_$SYSCONST$_Ld502
_$SYSCONST$_Ld502:
	.short	0,1
	.long	0,-1,26
.reference _$SYSCONST$_Ld501
.globl	_$SYSCONST$_Ld501
_$SYSCONST$_Ld501:
.reference _$SYSCONST$_Ld502
	.ascii	"sysconst.slongmonthnamedec\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld504
_$SYSCONST$_Ld504:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld503
.globl	_$SYSCONST$_Ld503
_$SYSCONST$_Ld503:
.reference _$SYSCONST$_Ld504
	.ascii	"Mon\000"
	.align 2
.globl	_$SYSCONST$_Ld506
_$SYSCONST$_Ld506:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld505
.globl	_$SYSCONST$_Ld505
_$SYSCONST$_Ld505:
.reference _$SYSCONST$_Ld506
	.ascii	"sysconst.sshortdaynamemon\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld508
_$SYSCONST$_Ld508:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld507
.globl	_$SYSCONST$_Ld507
_$SYSCONST$_Ld507:
.reference _$SYSCONST$_Ld508
	.ascii	"Tue\000"
	.align 2
.globl	_$SYSCONST$_Ld510
_$SYSCONST$_Ld510:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld509
.globl	_$SYSCONST$_Ld509
_$SYSCONST$_Ld509:
.reference _$SYSCONST$_Ld510
	.ascii	"sysconst.sshortdaynametue\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld512
_$SYSCONST$_Ld512:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld511
.globl	_$SYSCONST$_Ld511
_$SYSCONST$_Ld511:
.reference _$SYSCONST$_Ld512
	.ascii	"Wed\000"
	.align 2
.globl	_$SYSCONST$_Ld514
_$SYSCONST$_Ld514:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld513
.globl	_$SYSCONST$_Ld513
_$SYSCONST$_Ld513:
.reference _$SYSCONST$_Ld514
	.ascii	"sysconst.sshortdaynamewed\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld516
_$SYSCONST$_Ld516:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld515
.globl	_$SYSCONST$_Ld515
_$SYSCONST$_Ld515:
.reference _$SYSCONST$_Ld516
	.ascii	"Thu\000"
	.align 2
.globl	_$SYSCONST$_Ld518
_$SYSCONST$_Ld518:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld517
.globl	_$SYSCONST$_Ld517
_$SYSCONST$_Ld517:
.reference _$SYSCONST$_Ld518
	.ascii	"sysconst.sshortdaynamethu\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld520
_$SYSCONST$_Ld520:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld519
.globl	_$SYSCONST$_Ld519
_$SYSCONST$_Ld519:
.reference _$SYSCONST$_Ld520
	.ascii	"Fri\000"
	.align 2
.globl	_$SYSCONST$_Ld522
_$SYSCONST$_Ld522:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld521
.globl	_$SYSCONST$_Ld521
_$SYSCONST$_Ld521:
.reference _$SYSCONST$_Ld522
	.ascii	"sysconst.sshortdaynamefri\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld524
_$SYSCONST$_Ld524:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld523
.globl	_$SYSCONST$_Ld523
_$SYSCONST$_Ld523:
.reference _$SYSCONST$_Ld524
	.ascii	"Sat\000"
	.align 2
.globl	_$SYSCONST$_Ld526
_$SYSCONST$_Ld526:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld525
.globl	_$SYSCONST$_Ld525
_$SYSCONST$_Ld525:
.reference _$SYSCONST$_Ld526
	.ascii	"sysconst.sshortdaynamesat\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld528
_$SYSCONST$_Ld528:
	.short	0,1
	.long	0,-1,3
.reference _$SYSCONST$_Ld527
.globl	_$SYSCONST$_Ld527
_$SYSCONST$_Ld527:
.reference _$SYSCONST$_Ld528
	.ascii	"Sun\000"
	.align 2
.globl	_$SYSCONST$_Ld530
_$SYSCONST$_Ld530:
	.short	0,1
	.long	0,-1,25
.reference _$SYSCONST$_Ld529
.globl	_$SYSCONST$_Ld529
_$SYSCONST$_Ld529:
.reference _$SYSCONST$_Ld530
	.ascii	"sysconst.sshortdaynamesun\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld532
_$SYSCONST$_Ld532:
	.short	0,1
	.long	0,-1,6
.reference _$SYSCONST$_Ld531
.globl	_$SYSCONST$_Ld531
_$SYSCONST$_Ld531:
.reference _$SYSCONST$_Ld532
	.ascii	"Monday\000"
	.align 2
.globl	_$SYSCONST$_Ld534
_$SYSCONST$_Ld534:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld533
.globl	_$SYSCONST$_Ld533
_$SYSCONST$_Ld533:
.reference _$SYSCONST$_Ld534
	.ascii	"sysconst.slongdaynamemon\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld536
_$SYSCONST$_Ld536:
	.short	0,1
	.long	0,-1,7
.reference _$SYSCONST$_Ld535
.globl	_$SYSCONST$_Ld535
_$SYSCONST$_Ld535:
.reference _$SYSCONST$_Ld536
	.ascii	"Tuesday\000"
	.align 2
.globl	_$SYSCONST$_Ld538
_$SYSCONST$_Ld538:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld537
.globl	_$SYSCONST$_Ld537
_$SYSCONST$_Ld537:
.reference _$SYSCONST$_Ld538
	.ascii	"sysconst.slongdaynametue\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld540
_$SYSCONST$_Ld540:
	.short	0,1
	.long	0,-1,9
.reference _$SYSCONST$_Ld539
.globl	_$SYSCONST$_Ld539
_$SYSCONST$_Ld539:
.reference _$SYSCONST$_Ld540
	.ascii	"Wednesday\000"
	.align 2
.globl	_$SYSCONST$_Ld542
_$SYSCONST$_Ld542:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld541
.globl	_$SYSCONST$_Ld541
_$SYSCONST$_Ld541:
.reference _$SYSCONST$_Ld542
	.ascii	"sysconst.slongdaynamewed\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld544
_$SYSCONST$_Ld544:
	.short	0,1
	.long	0,-1,8
.reference _$SYSCONST$_Ld543
.globl	_$SYSCONST$_Ld543
_$SYSCONST$_Ld543:
.reference _$SYSCONST$_Ld544
	.ascii	"Thursday\000"
	.align 2
.globl	_$SYSCONST$_Ld546
_$SYSCONST$_Ld546:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld545
.globl	_$SYSCONST$_Ld545
_$SYSCONST$_Ld545:
.reference _$SYSCONST$_Ld546
	.ascii	"sysconst.slongdaynamethu\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld548
_$SYSCONST$_Ld548:
	.short	0,1
	.long	0,-1,6
.reference _$SYSCONST$_Ld547
.globl	_$SYSCONST$_Ld547
_$SYSCONST$_Ld547:
.reference _$SYSCONST$_Ld548
	.ascii	"Friday\000"
	.align 2
.globl	_$SYSCONST$_Ld550
_$SYSCONST$_Ld550:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld549
.globl	_$SYSCONST$_Ld549
_$SYSCONST$_Ld549:
.reference _$SYSCONST$_Ld550
	.ascii	"sysconst.slongdaynamefri\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld552
_$SYSCONST$_Ld552:
	.short	0,1
	.long	0,-1,8
.reference _$SYSCONST$_Ld551
.globl	_$SYSCONST$_Ld551
_$SYSCONST$_Ld551:
.reference _$SYSCONST$_Ld552
	.ascii	"Saturday\000"
	.align 2
.globl	_$SYSCONST$_Ld554
_$SYSCONST$_Ld554:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld553
.globl	_$SYSCONST$_Ld553
_$SYSCONST$_Ld553:
.reference _$SYSCONST$_Ld554
	.ascii	"sysconst.slongdaynamesat\000"

.const_data
	.align 2
.globl	_$SYSCONST$_Ld556
_$SYSCONST$_Ld556:
	.short	0,1
	.long	0,-1,6
.reference _$SYSCONST$_Ld555
.globl	_$SYSCONST$_Ld555
_$SYSCONST$_Ld555:
.reference _$SYSCONST$_Ld556
	.ascii	"Sunday\000"
	.align 2
.globl	_$SYSCONST$_Ld558
_$SYSCONST$_Ld558:
	.short	0,1
	.long	0,-1,24
.reference _$SYSCONST$_Ld557
.globl	_$SYSCONST$_Ld557
_$SYSCONST$_Ld557:
.reference _$SYSCONST$_Ld558
	.ascii	"sysconst.slongdaynamesun\000"
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

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti
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
L_RESSTR_SYSCONST_SNOERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SNOERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SOUTOFMEMORY$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SOUTOFMEMORY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFILENOTFOUND$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFILENOTFOUND
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDFILENAME$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDFILENAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_STOOMANYOPENFILES$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_STOOMANYOPENFILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SACCESSDENIED$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SACCESSDENIED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDFILEHANDLE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDFILEHANDLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDDRIVE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDDRIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SENDOFFILE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SENDOFFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SDISKFULL$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SDISKFULL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFILENOTASSIGNED$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFILENOTASSIGNED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFILENOTOPEN$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFILENOTOPEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFILENOTOPENFORINPUT$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFILENOTOPENFORINPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDINPUT$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDINPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SDIVBYZERO$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SDIVBYZERO
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SRANGEERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SRANGEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDPOINTER$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDPOINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SOVERFLOW$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SOVERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SUNDERFLOW$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SUNDERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDOP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDOP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SABSTRACTERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SABSTRACTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SBUSERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SBUSERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINTOVERFLOW$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINTOVERFLOW
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SACCESSVIOLATION$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SACCESSVIOLATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SPRIVILEGE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SPRIVILEGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SCONTROLC$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SCONTROLC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDCAST$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDCAST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDVARCAST$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDVARCAST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDVAROP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDVAROP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SDISPATCHERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SDISPATCHERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARARRAYCREATE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARARRAYCREATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARNOTARRAY$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARNOTARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SVARARRAYBOUNDS$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SVARARRAYBOUNDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SASSERTIONFAILED$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SASSERTIONFAILED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SEXTERNALEXCEPTION$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SEXTERNALEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINTFCASTERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINTFCASTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SSAFECALLEXCEPTION$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SSAFECALLEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SEXCEPTIONSTACK$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SEXCEPTIONSTACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SNOTHREADSUPPORT$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SNOTHREADSUPPORT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFALLBACKERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFALLBACKERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SNOTOOLSERVER$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SNOTOOLSERVER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SUNKNOWN$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SUNKNOWN
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_SYSCONST_START
_RESSTR_SYSCONST_START:
	.long	_$SYSCONST$_Ld1
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_SYSCONST_SABORTERROR
_RESSTR_SYSCONST_SABORTERROR:
	.long	_$SYSCONST$_Ld5
	.long	_$SYSCONST$_Ld3
	.long	_$SYSCONST$_Ld3
	.long	260888148

.data
	.align 2
.globl	_RESSTR_SYSCONST_SABSTRACTERROR
_RESSTR_SYSCONST_SABSTRACTERROR:
	.long	_$SYSCONST$_Ld9
	.long	_$SYSCONST$_Ld7
	.long	_$SYSCONST$_Ld7
	.long	249526276

.data
	.align 2
.globl	_RESSTR_SYSCONST_SACCESSDENIED
_RESSTR_SYSCONST_SACCESSDENIED:
	.long	_$SYSCONST$_Ld13
	.long	_$SYSCONST$_Ld11
	.long	_$SYSCONST$_Ld11
	.long	20153764

.data
	.align 2
.globl	_RESSTR_SYSCONST_SACCESSVIOLATION
_RESSTR_SYSCONST_SACCESSVIOLATION:
	.long	_$SYSCONST$_Ld17
	.long	_$SYSCONST$_Ld15
	.long	_$SYSCONST$_Ld15
	.long	176794414

.data
	.align 2
.globl	_RESSTR_SYSCONST_SARGUMENTMISSING
_RESSTR_SYSCONST_SARGUMENTMISSING:
	.long	_$SYSCONST$_Ld21
	.long	_$SYSCONST$_Ld19
	.long	_$SYSCONST$_Ld19
	.long	116288818

.data
	.align 2
.globl	_RESSTR_SYSCONST_SASSERTERROR
_RESSTR_SYSCONST_SASSERTERROR:
	.long	_$SYSCONST$_Ld25
	.long	_$SYSCONST$_Ld23
	.long	_$SYSCONST$_Ld23
	.long	109055849

.data
	.align 2
.globl	_RESSTR_SYSCONST_SASSERTIONFAILED
_RESSTR_SYSCONST_SASSERTIONFAILED:
	.long	_$SYSCONST$_Ld29
	.long	_$SYSCONST$_Ld27
	.long	_$SYSCONST$_Ld27
	.long	173634084

.data
	.align 2
.globl	_RESSTR_SYSCONST_SBUSERROR
_RESSTR_SYSCONST_SBUSERROR:
	.long	_$SYSCONST$_Ld33
	.long	_$SYSCONST$_Ld31
	.long	_$SYSCONST$_Ld31
	.long	245994403

.data
	.align 2
.globl	_RESSTR_SYSCONST_SCANNOTCREATEEMPTYDIR
_RESSTR_SYSCONST_SCANNOTCREATEEMPTYDIR:
	.long	_$SYSCONST$_Ld37
	.long	_$SYSCONST$_Ld35
	.long	_$SYSCONST$_Ld35
	.long	25794617

.data
	.align 2
.globl	_RESSTR_SYSCONST_SCONTROLC
_RESSTR_SYSCONST_SCONTROLC:
	.long	_$SYSCONST$_Ld41
	.long	_$SYSCONST$_Ld39
	.long	_$SYSCONST$_Ld39
	.long	91281428

.data
	.align 2
.globl	_RESSTR_SYSCONST_SDISKFULL
_RESSTR_SYSCONST_SDISKFULL:
	.long	_$SYSCONST$_Ld45
	.long	_$SYSCONST$_Ld43
	.long	_$SYSCONST$_Ld43
	.long	164925740

.data
	.align 2
.globl	_RESSTR_SYSCONST_SDISPATCHERROR
_RESSTR_SYSCONST_SDISPATCHERROR:
	.long	_$SYSCONST$_Ld49
	.long	_$SYSCONST$_Ld47
	.long	_$SYSCONST$_Ld47
	.long	253334952

.data
	.align 2
.globl	_RESSTR_SYSCONST_SDIVBYZERO
_RESSTR_SYSCONST_SDIVBYZERO:
	.long	_$SYSCONST$_Ld53
	.long	_$SYSCONST$_Ld51
	.long	_$SYSCONST$_Ld51
	.long	153943103

.data
	.align 2
.globl	_RESSTR_SYSCONST_SENDOFFILE
_RESSTR_SYSCONST_SENDOFFILE:
	.long	_$SYSCONST$_Ld57
	.long	_$SYSCONST$_Ld55
	.long	_$SYSCONST$_Ld55
	.long	76266149

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK
_RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK:
	.long	_$SYSCONST$_Ld61
	.long	_$SYSCONST$_Ld59
	.long	_$SYSCONST$_Ld59
	.long	190404478

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC
_RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC:
	.long	_$SYSCONST$_Ld65
	.long	_$SYSCONST$_Ld63
	.long	_$SYSCONST$_Ld63
	.long	248307662

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDDATEWEEK
_RESSTR_SYSCONST_SERRINVALIDDATEWEEK:
	.long	_$SYSCONST$_Ld69
	.long	_$SYSCONST$_Ld67
	.long	_$SYSCONST$_Ld67
	.long	180272523

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK
_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK:
	.long	_$SYSCONST$_Ld73
	.long	_$SYSCONST$_Ld71
	.long	_$SYSCONST$_Ld71
	.long	124922395

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH
_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH:
	.long	_$SYSCONST$_Ld77
	.long	_$SYSCONST$_Ld75
	.long	_$SYSCONST$_Ld75
	.long	66871589

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR
_RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR:
	.long	_$SYSCONST$_Ld81
	.long	_$SYSCONST$_Ld79
	.long	_$SYSCONST$_Ld79
	.long	23449012

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDTIMESTAMP
_RESSTR_SYSCONST_SERRINVALIDTIMESTAMP:
	.long	_$SYSCONST$_Ld85
	.long	_$SYSCONST$_Ld83
	.long	_$SYSCONST$_Ld83
	.long	126399042

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDJULIANDATE
_RESSTR_SYSCONST_SINVALIDJULIANDATE:
	.long	_$SYSCONST$_Ld89
	.long	_$SYSCONST$_Ld87
	.long	_$SYSCONST$_Ld87
	.long	24290629

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRILLEGALDATEFORMATSTRING
_RESSTR_SYSCONST_SERRILLEGALDATEFORMATSTRING:
	.long	_$SYSCONST$_Ld93
	.long	_$SYSCONST$_Ld91
	.long	_$SYSCONST$_Ld91
	.long	9186311

.data
	.align 2
.globl	_RESSTR_SYSCONST_SERRINVALIDTIMEFORMAT
_RESSTR_SYSCONST_SERRINVALIDTIMEFORMAT:
	.long	_$SYSCONST$_Ld97
	.long	_$SYSCONST$_Ld95
	.long	_$SYSCONST$_Ld95
	.long	189483525

.data
	.align 2
.globl	_RESSTR_SYSCONST_SEXCEPTIONERRORMESSAGE
_RESSTR_SYSCONST_SEXCEPTIONERRORMESSAGE:
	.long	_$SYSCONST$_Ld101
	.long	_$SYSCONST$_Ld99
	.long	_$SYSCONST$_Ld99
	.long	162506240

.data
	.align 2
.globl	_RESSTR_SYSCONST_SEXCEPTIONSTACK
_RESSTR_SYSCONST_SEXCEPTIONSTACK:
	.long	_$SYSCONST$_Ld105
	.long	_$SYSCONST$_Ld103
	.long	_$SYSCONST$_Ld103
	.long	80862258

.data
	.align 2
.globl	_RESSTR_SYSCONST_SEXECUTEPROCESSFAILED
_RESSTR_SYSCONST_SEXECUTEPROCESSFAILED:
	.long	_$SYSCONST$_Ld109
	.long	_$SYSCONST$_Ld107
	.long	_$SYSCONST$_Ld107
	.long	162819220

.data
	.align 2
.globl	_RESSTR_SYSCONST_SEXTERNALEXCEPTION
_RESSTR_SYSCONST_SEXTERNALEXCEPTION:
	.long	_$SYSCONST$_Ld113
	.long	_$SYSCONST$_Ld111
	.long	_$SYSCONST$_Ld111
	.long	117675432

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFILENOTASSIGNED
_RESSTR_SYSCONST_SFILENOTASSIGNED:
	.long	_$SYSCONST$_Ld117
	.long	_$SYSCONST$_Ld115
	.long	_$SYSCONST$_Ld115
	.long	226803780

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFILENOTFOUND
_RESSTR_SYSCONST_SFILENOTFOUND:
	.long	_$SYSCONST$_Ld121
	.long	_$SYSCONST$_Ld119
	.long	_$SYSCONST$_Ld119
	.long	105651188

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFILENOTOPEN
_RESSTR_SYSCONST_SFILENOTOPEN:
	.long	_$SYSCONST$_Ld125
	.long	_$SYSCONST$_Ld123
	.long	_$SYSCONST$_Ld123
	.long	191173038

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFILENOTOPENFORINPUT
_RESSTR_SYSCONST_SFILENOTOPENFORINPUT:
	.long	_$SYSCONST$_Ld129
	.long	_$SYSCONST$_Ld127
	.long	_$SYSCONST$_Ld127
	.long	97869236

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT
_RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT:
	.long	_$SYSCONST$_Ld133
	.long	_$SYSCONST$_Ld131
	.long	_$SYSCONST$_Ld131
	.long	249303188

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDFILENAME
_RESSTR_SYSCONST_SINVALIDFILENAME:
	.long	_$SYSCONST$_Ld137
	.long	_$SYSCONST$_Ld135
	.long	_$SYSCONST$_Ld135
	.long	134358325

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINTOVERFLOW
_RESSTR_SYSCONST_SINTOVERFLOW:
	.long	_$SYSCONST$_Ld141
	.long	_$SYSCONST$_Ld139
	.long	_$SYSCONST$_Ld139
	.long	150423927

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINTFCASTERROR
_RESSTR_SYSCONST_SINTFCASTERROR:
	.long	_$SYSCONST$_Ld145
	.long	_$SYSCONST$_Ld143
	.long	_$SYSCONST$_Ld143
	.long	178728388

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDARGINDEX
_RESSTR_SYSCONST_SINVALIDARGINDEX:
	.long	_$SYSCONST$_Ld149
	.long	_$SYSCONST$_Ld147
	.long	_$SYSCONST$_Ld147
	.long	154200386

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDBCD
_RESSTR_SYSCONST_SINVALIDBCD:
	.long	_$SYSCONST$_Ld153
	.long	_$SYSCONST$_Ld151
	.long	_$SYSCONST$_Ld151
	.long	246041861

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDBOOLEAN
_RESSTR_SYSCONST_SINVALIDBOOLEAN:
	.long	_$SYSCONST$_Ld157
	.long	_$SYSCONST$_Ld155
	.long	_$SYSCONST$_Ld155
	.long	75103870

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDCAST
_RESSTR_SYSCONST_SINVALIDCAST:
	.long	_$SYSCONST$_Ld161
	.long	_$SYSCONST$_Ld159
	.long	_$SYSCONST$_Ld159
	.long	80785444

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDCURRENCY
_RESSTR_SYSCONST_SINVALIDCURRENCY:
	.long	_$SYSCONST$_Ld165
	.long	_$SYSCONST$_Ld163
	.long	_$SYSCONST$_Ld163
	.long	141601682

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDDATETIME
_RESSTR_SYSCONST_SINVALIDDATETIME:
	.long	_$SYSCONST$_Ld169
	.long	_$SYSCONST$_Ld167
	.long	_$SYSCONST$_Ld167
	.long	145463966

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDDRIVE
_RESSTR_SYSCONST_SINVALIDDRIVE:
	.long	_$SYSCONST$_Ld173
	.long	_$SYSCONST$_Ld171
	.long	_$SYSCONST$_Ld171
	.long	167674564

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDFILEHANDLE
_RESSTR_SYSCONST_SINVALIDFILEHANDLE:
	.long	_$SYSCONST$_Ld177
	.long	_$SYSCONST$_Ld175
	.long	_$SYSCONST$_Ld175
	.long	14207989

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDFLOAT
_RESSTR_SYSCONST_SINVALIDFLOAT:
	.long	_$SYSCONST$_Ld181
	.long	_$SYSCONST$_Ld179
	.long	_$SYSCONST$_Ld179
	.long	137069412

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDFORMAT
_RESSTR_SYSCONST_SINVALIDFORMAT:
	.long	_$SYSCONST$_Ld185
	.long	_$SYSCONST$_Ld183
	.long	_$SYSCONST$_Ld183
	.long	73989426

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDGUID
_RESSTR_SYSCONST_SINVALIDGUID:
	.long	_$SYSCONST$_Ld189
	.long	_$SYSCONST$_Ld187
	.long	_$SYSCONST$_Ld187
	.long	221539413

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDINPUT
_RESSTR_SYSCONST_SINVALIDINPUT:
	.long	_$SYSCONST$_Ld193
	.long	_$SYSCONST$_Ld191
	.long	_$SYSCONST$_Ld191
	.long	104125796

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDINTEGER
_RESSTR_SYSCONST_SINVALIDINTEGER:
	.long	_$SYSCONST$_Ld197
	.long	_$SYSCONST$_Ld195
	.long	_$SYSCONST$_Ld195
	.long	168580578

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDOP
_RESSTR_SYSCONST_SINVALIDOP:
	.long	_$SYSCONST$_Ld201
	.long	_$SYSCONST$_Ld199
	.long	_$SYSCONST$_Ld199
	.long	260890030

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDPOINTER
_RESSTR_SYSCONST_SINVALIDPOINTER:
	.long	_$SYSCONST$_Ld205
	.long	_$SYSCONST$_Ld203
	.long	_$SYSCONST$_Ld203
	.long	6777038

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDVARCAST
_RESSTR_SYSCONST_SINVALIDVARCAST:
	.long	_$SYSCONST$_Ld209
	.long	_$SYSCONST$_Ld207
	.long	_$SYSCONST$_Ld207
	.long	67169012

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDVARNULLOP
_RESSTR_SYSCONST_SINVALIDVARNULLOP:
	.long	_$SYSCONST$_Ld213
	.long	_$SYSCONST$_Ld211
	.long	_$SYSCONST$_Ld211
	.long	146834670

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDVAROP
_RESSTR_SYSCONST_SINVALIDVAROP:
	.long	_$SYSCONST$_Ld217
	.long	_$SYSCONST$_Ld215
	.long	_$SYSCONST$_Ld215
	.long	251581550

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDBINARYVAROP
_RESSTR_SYSCONST_SINVALIDBINARYVAROP:
	.long	_$SYSCONST$_Ld221
	.long	_$SYSCONST$_Ld219
	.long	_$SYSCONST$_Ld219
	.long	141279203

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDUNARYVAROP
_RESSTR_SYSCONST_SINVALIDUNARYVAROP:
	.long	_$SYSCONST$_Ld225
	.long	_$SYSCONST$_Ld223
	.long	_$SYSCONST$_Ld223
	.long	248678067

.data
	.align 2
.globl	_RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX
_RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX:
	.long	_$SYSCONST$_Ld229
	.long	_$SYSCONST$_Ld227
	.long	_$SYSCONST$_Ld227
	.long	254709203

.data
	.align 2
.globl	_RESSTR_SYSCONST_SNOERROR
_RESSTR_SYSCONST_SNOERROR:
	.long	_$SYSCONST$_Ld233
	.long	_$SYSCONST$_Ld231
	.long	_$SYSCONST$_Ld231
	.long	113894238

.data
	.align 2
.globl	_RESSTR_SYSCONST_SNOTHREADSUPPORT
_RESSTR_SYSCONST_SNOTHREADSUPPORT:
	.long	_$SYSCONST$_Ld237
	.long	_$SYSCONST$_Ld235
	.long	_$SYSCONST$_Ld235
	.long	94080302

.data
	.align 2
.globl	_RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER
_RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER:
	.long	_$SYSCONST$_Ld241
	.long	_$SYSCONST$_Ld239
	.long	_$SYSCONST$_Ld239
	.long	259856270

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSIGQUIT
_RESSTR_SYSCONST_SSIGQUIT:
	.long	_$SYSCONST$_Ld245
	.long	_$SYSCONST$_Ld243
	.long	_$SYSCONST$_Ld243
	.long	115665550

.data
	.align 2
.globl	_RESSTR_SYSCONST_SOSERROR
_RESSTR_SYSCONST_SOSERROR:
	.long	_$SYSCONST$_Ld249
	.long	_$SYSCONST$_Ld247
	.long	_$SYSCONST$_Ld247
	.long	30805091

.data
	.align 2
.globl	_RESSTR_SYSCONST_SOUTOFMEMORY
_RESSTR_SYSCONST_SOUTOFMEMORY:
	.long	_$SYSCONST$_Ld253
	.long	_$SYSCONST$_Ld251
	.long	_$SYSCONST$_Ld251
	.long	33444681

.data
	.align 2
.globl	_RESSTR_SYSCONST_SOVERFLOW
_RESSTR_SYSCONST_SOVERFLOW:
	.long	_$SYSCONST$_Ld257
	.long	_$SYSCONST$_Ld255
	.long	_$SYSCONST$_Ld255
	.long	58988791

.data
	.align 2
.globl	_RESSTR_SYSCONST_SPRIVILEGE
_RESSTR_SYSCONST_SPRIVILEGE:
	.long	_$SYSCONST$_Ld261
	.long	_$SYSCONST$_Ld259
	.long	_$SYSCONST$_Ld259
	.long	47395422

.data
	.align 2
.globl	_RESSTR_SYSCONST_SRANGEERROR
_RESSTR_SYSCONST_SRANGEERROR:
	.long	_$SYSCONST$_Ld265
	.long	_$SYSCONST$_Ld263
	.long	_$SYSCONST$_Ld263
	.long	173930530

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSAFECALLEXCEPTION
_RESSTR_SYSCONST_SSAFECALLEXCEPTION:
	.long	_$SYSCONST$_Ld269
	.long	_$SYSCONST$_Ld267
	.long	_$SYSCONST$_Ld267
	.long	18610772

.data
	.align 2
.globl	_RESSTR_SYSCONST_SICONVERROR
_RESSTR_SYSCONST_SICONVERROR:
	.long	_$SYSCONST$_Ld273
	.long	_$SYSCONST$_Ld271
	.long	_$SYSCONST$_Ld271
	.long	134430514

.data
	.align 2
.globl	_RESSTR_SYSCONST_STOOMANYOPENFILES
_RESSTR_SYSCONST_STOOMANYOPENFILES:
	.long	_$SYSCONST$_Ld277
	.long	_$SYSCONST$_Ld275
	.long	_$SYSCONST$_Ld275
	.long	246740819

.data
	.align 2
.globl	_RESSTR_SYSCONST_SUNKNOWNRUNTIMEERROR
_RESSTR_SYSCONST_SUNKNOWNRUNTIMEERROR:
	.long	_$SYSCONST$_Ld281
	.long	_$SYSCONST$_Ld279
	.long	_$SYSCONST$_Ld279
	.long	197250484

.data
	.align 2
.globl	_RESSTR_SYSCONST_SUNDERFLOW
_RESSTR_SYSCONST_SUNDERFLOW:
	.long	_$SYSCONST$_Ld285
	.long	_$SYSCONST$_Ld283
	.long	_$SYSCONST$_Ld283
	.long	235186391

.data
	.align 2
.globl	_RESSTR_SYSCONST_SUNKOSERROR
_RESSTR_SYSCONST_SUNKOSERROR:
	.long	_$SYSCONST$_Ld289
	.long	_$SYSCONST$_Ld287
	.long	_$SYSCONST$_Ld287
	.long	154701710

.data
	.align 2
.globl	_RESSTR_SYSCONST_SUNKNOWN
_RESSTR_SYSCONST_SUNKNOWN:
	.long	_$SYSCONST$_Ld293
	.long	_$SYSCONST$_Ld291
	.long	_$SYSCONST$_Ld291
	.long	127587840

.data
	.align 2
.globl	_RESSTR_SYSCONST_SUNKNOWNERRORCODE
_RESSTR_SYSCONST_SUNKNOWNERRORCODE:
	.long	_$SYSCONST$_Ld297
	.long	_$SYSCONST$_Ld295
	.long	_$SYSCONST$_Ld295
	.long	156714804

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARARRAYBOUNDS
_RESSTR_SYSCONST_SVARARRAYBOUNDS:
	.long	_$SYSCONST$_Ld301
	.long	_$SYSCONST$_Ld299
	.long	_$SYSCONST$_Ld299
	.long	234640834

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARARRAYCREATE
_RESSTR_SYSCONST_SVARARRAYCREATE:
	.long	_$SYSCONST$_Ld305
	.long	_$SYSCONST$_Ld303
	.long	_$SYSCONST$_Ld303
	.long	224667652

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARARRAYLOCKED
_RESSTR_SYSCONST_SVARARRAYLOCKED:
	.long	_$SYSCONST$_Ld309
	.long	_$SYSCONST$_Ld307
	.long	_$SYSCONST$_Ld307
	.long	154380708

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARBADTYPE
_RESSTR_SYSCONST_SVARBADTYPE:
	.long	_$SYSCONST$_Ld313
	.long	_$SYSCONST$_Ld311
	.long	_$SYSCONST$_Ld311
	.long	124200261

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARINVALID
_RESSTR_SYSCONST_SVARINVALID:
	.long	_$SYSCONST$_Ld317
	.long	_$SYSCONST$_Ld315
	.long	_$SYSCONST$_Ld315
	.long	12736788

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARINVALID1
_RESSTR_SYSCONST_SVARINVALID1:
	.long	_$SYSCONST$_Ld321
	.long	_$SYSCONST$_Ld319
	.long	_$SYSCONST$_Ld319
	.long	152502419

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARNOTARRAY
_RESSTR_SYSCONST_SVARNOTARRAY:
	.long	_$SYSCONST$_Ld325
	.long	_$SYSCONST$_Ld323
	.long	_$SYSCONST$_Ld323
	.long	172781081

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARNOTIMPLEMENTED
_RESSTR_SYSCONST_SVARNOTIMPLEMENTED:
	.long	_$SYSCONST$_Ld329
	.long	_$SYSCONST$_Ld327
	.long	_$SYSCONST$_Ld327
	.long	185248900

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVAROUTOFMEMORY
_RESSTR_SYSCONST_SVAROUTOFMEMORY:
	.long	_$SYSCONST$_Ld333
	.long	_$SYSCONST$_Ld331
	.long	_$SYSCONST$_Ld331
	.long	102245721

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVAROVERFLOW
_RESSTR_SYSCONST_SVAROVERFLOW:
	.long	_$SYSCONST$_Ld337
	.long	_$SYSCONST$_Ld335
	.long	_$SYSCONST$_Ld335
	.long	55082631

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARPARAMNOTFOUND
_RESSTR_SYSCONST_SVARPARAMNOTFOUND:
	.long	_$SYSCONST$_Ld341
	.long	_$SYSCONST$_Ld339
	.long	_$SYSCONST$_Ld339
	.long	47814196

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX
_RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX:
	.long	_$SYSCONST$_Ld345
	.long	_$SYSCONST$_Ld343
	.long	_$SYSCONST$_Ld343
	.long	73598435

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW
_RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW:
	.long	_$SYSCONST$_Ld349
	.long	_$SYSCONST$_Ld347
	.long	_$SYSCONST$_Ld347
	.long	260612889

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT
_RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT:
	.long	_$SYSCONST$_Ld353
	.long	_$SYSCONST$_Ld351
	.long	_$SYSCONST$_Ld351
	.long	215367209

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX
_RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX:
	.long	_$SYSCONST$_Ld357
	.long	_$SYSCONST$_Ld355
	.long	_$SYSCONST$_Ld355
	.long	175329765

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX
_RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX:
	.long	_$SYSCONST$_Ld361
	.long	_$SYSCONST$_Ld359
	.long	_$SYSCONST$_Ld359
	.long	38455349

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPERANGECHECK1
_RESSTR_SYSCONST_SVARTYPERANGECHECK1:
	.long	_$SYSCONST$_Ld365
	.long	_$SYSCONST$_Ld363
	.long	_$SYSCONST$_Ld363
	.long	143396889

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPERANGECHECK2
_RESSTR_SYSCONST_SVARTYPERANGECHECK2:
	.long	_$SYSCONST$_Ld369
	.long	_$SYSCONST$_Ld367
	.long	_$SYSCONST$_Ld367
	.long	229765401

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM
_RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM:
	.long	_$SYSCONST$_Ld373
	.long	_$SYSCONST$_Ld371
	.long	_$SYSCONST$_Ld371
	.long	201927860

.data
	.align 2
.globl	_RESSTR_SYSCONST_SVARUNEXPECTED
_RESSTR_SYSCONST_SVARUNEXPECTED:
	.long	_$SYSCONST$_Ld377
	.long	_$SYSCONST$_Ld375
	.long	_$SYSCONST$_Ld375
	.long	76159010

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFALLBACKERROR
_RESSTR_SYSCONST_SFALLBACKERROR:
	.long	_$SYSCONST$_Ld381
	.long	_$SYSCONST$_Ld379
	.long	_$SYSCONST$_Ld379
	.long	138116004

.data
	.align 2
.globl	_RESSTR_SYSCONST_SNOTOOLSERVER
_RESSTR_SYSCONST_SNOTOOLSERVER:
	.long	_$SYSCONST$_Ld385
	.long	_$SYSCONST$_Ld383
	.long	_$SYSCONST$_Ld383
	.long	191079612

.data
	.align 2
.globl	_RESSTR_SYSCONST_SNOARRAYMATCH
_RESSTR_SYSCONST_SNOARRAYMATCH:
	.long	_$SYSCONST$_Ld389
	.long	_$SYSCONST$_Ld387
	.long	_$SYSCONST$_Ld387
	.long	148176702

.data
	.align 2
.globl	_RESSTR_SYSCONST_SNOCHARMATCH
_RESSTR_SYSCONST_SNOCHARMATCH:
	.long	_$SYSCONST$_Ld393
	.long	_$SYSCONST$_Ld391
	.long	_$SYSCONST$_Ld391
	.long	66329614

.data
	.align 2
.globl	_RESSTR_SYSCONST_SHHMMERROR
_RESSTR_SYSCONST_SHHMMERROR:
	.long	_$SYSCONST$_Ld397
	.long	_$SYSCONST$_Ld395
	.long	_$SYSCONST$_Ld395
	.long	212965662

.data
	.align 2
.globl	_RESSTR_SYSCONST_SFULLPATTERN
_RESSTR_SYSCONST_SFULLPATTERN:
	.long	_$SYSCONST$_Ld401
	.long	_$SYSCONST$_Ld399
	.long	_$SYSCONST$_Ld399
	.long	85457662

.data
	.align 2
.globl	_RESSTR_SYSCONST_SPATTERNCHARMISMATCH
_RESSTR_SYSCONST_SPATTERNCHARMISMATCH:
	.long	_$SYSCONST$_Ld405
	.long	_$SYSCONST$_Ld403
	.long	_$SYSCONST$_Ld403
	.long	19915246

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEJAN
_RESSTR_SYSCONST_SSHORTMONTHNAMEJAN:
	.long	_$SYSCONST$_Ld409
	.long	_$SYSCONST$_Ld407
	.long	_$SYSCONST$_Ld407
	.long	20606

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEFEB
_RESSTR_SYSCONST_SSHORTMONTHNAMEFEB:
	.long	_$SYSCONST$_Ld413
	.long	_$SYSCONST$_Ld411
	.long	_$SYSCONST$_Ld411
	.long	19634

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEMAR
_RESSTR_SYSCONST_SSHORTMONTHNAMEMAR:
	.long	_$SYSCONST$_Ld417
	.long	_$SYSCONST$_Ld415
	.long	_$SYSCONST$_Ld415
	.long	21378

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEAPR
_RESSTR_SYSCONST_SSHORTMONTHNAMEAPR:
	.long	_$SYSCONST$_Ld421
	.long	_$SYSCONST$_Ld419
	.long	_$SYSCONST$_Ld419
	.long	18546

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEMAY
_RESSTR_SYSCONST_SSHORTMONTHNAMEMAY:
	.long	_$SYSCONST$_Ld425
	.long	_$SYSCONST$_Ld423
	.long	_$SYSCONST$_Ld423
	.long	21385

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEJUN
_RESSTR_SYSCONST_SSHORTMONTHNAMEJUN:
	.long	_$SYSCONST$_Ld429
	.long	_$SYSCONST$_Ld427
	.long	_$SYSCONST$_Ld427
	.long	20926

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEJUL
_RESSTR_SYSCONST_SSHORTMONTHNAMEJUL:
	.long	_$SYSCONST$_Ld433
	.long	_$SYSCONST$_Ld431
	.long	_$SYSCONST$_Ld431
	.long	20924

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEAUG
_RESSTR_SYSCONST_SSHORTMONTHNAMEAUG:
	.long	_$SYSCONST$_Ld437
	.long	_$SYSCONST$_Ld435
	.long	_$SYSCONST$_Ld435
	.long	18615

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMESEP
_RESSTR_SYSCONST_SSHORTMONTHNAMESEP:
	.long	_$SYSCONST$_Ld441
	.long	_$SYSCONST$_Ld439
	.long	_$SYSCONST$_Ld439
	.long	22976

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEOCT
_RESSTR_SYSCONST_SSHORTMONTHNAMEOCT:
	.long	_$SYSCONST$_Ld445
	.long	_$SYSCONST$_Ld443
	.long	_$SYSCONST$_Ld443
	.long	21924

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMENOV
_RESSTR_SYSCONST_SSHORTMONTHNAMENOV:
	.long	_$SYSCONST$_Ld449
	.long	_$SYSCONST$_Ld447
	.long	_$SYSCONST$_Ld447
	.long	21862

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTMONTHNAMEDEC
_RESSTR_SYSCONST_SSHORTMONTHNAMEDEC:
	.long	_$SYSCONST$_Ld453
	.long	_$SYSCONST$_Ld451
	.long	_$SYSCONST$_Ld451
	.long	19123

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEJAN
_RESSTR_SYSCONST_SLONGMONTHNAMEJAN:
	.long	_$SYSCONST$_Ld457
	.long	_$SYSCONST$_Ld455
	.long	_$SYSCONST$_Ld455
	.long	8763593

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEFEB
_RESSTR_SYSCONST_SLONGMONTHNAMEFEB:
	.long	_$SYSCONST$_Ld461
	.long	_$SYSCONST$_Ld459
	.long	_$SYSCONST$_Ld459
	.long	194624601

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEMAR
_RESSTR_SYSCONST_SLONGMONTHNAMEMAR:
	.long	_$SYSCONST$_Ld465
	.long	_$SYSCONST$_Ld463
	.long	_$SYSCONST$_Ld463
	.long	5474456

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEAPR
_RESSTR_SYSCONST_SLONGMONTHNAMEAPR:
	.long	_$SYSCONST$_Ld469
	.long	_$SYSCONST$_Ld467
	.long	_$SYSCONST$_Ld467
	.long	4749564

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEMAY
_RESSTR_SYSCONST_SLONGMONTHNAMEMAY:
	.long	_$SYSCONST$_Ld473
	.long	_$SYSCONST$_Ld471
	.long	_$SYSCONST$_Ld471
	.long	21385

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEJUN
_RESSTR_SYSCONST_SLONGMONTHNAMEJUN:
	.long	_$SYSCONST$_Ld477
	.long	_$SYSCONST$_Ld475
	.long	_$SYSCONST$_Ld475
	.long	334917

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEJUL
_RESSTR_SYSCONST_SLONGMONTHNAMEJUL:
	.long	_$SYSCONST$_Ld481
	.long	_$SYSCONST$_Ld479
	.long	_$SYSCONST$_Ld479
	.long	334905

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEAUG
_RESSTR_SYSCONST_SLONGMONTHNAMEAUG:
	.long	_$SYSCONST$_Ld485
	.long	_$SYSCONST$_Ld483
	.long	_$SYSCONST$_Ld483
	.long	76278948

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMESEP
_RESSTR_SYSCONST_SLONGMONTHNAMESEP:
	.long	_$SYSCONST$_Ld489
	.long	_$SYSCONST$_Ld487
	.long	_$SYSCONST$_Ld487
	.long	128737538

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEOCT
_RESSTR_SYSCONST_SLONGMONTHNAMEOCT:
	.long	_$SYSCONST$_Ld493
	.long	_$SYSCONST$_Ld491
	.long	_$SYSCONST$_Ld491
	.long	95115410

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMENOV
_RESSTR_SYSCONST_SLONGMONTHNAMENOV:
	.long	_$SYSCONST$_Ld497
	.long	_$SYSCONST$_Ld495
	.long	_$SYSCONST$_Ld495
	.long	114048402

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGMONTHNAMEDEC
_RESSTR_SYSCONST_SLONGMONTHNAMEDEC:
	.long	_$SYSCONST$_Ld501
	.long	_$SYSCONST$_Ld499
	.long	_$SYSCONST$_Ld499
	.long	194788450

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMEMON
_RESSTR_SYSCONST_SSHORTDAYNAMEMON:
	.long	_$SYSCONST$_Ld505
	.long	_$SYSCONST$_Ld503
	.long	_$SYSCONST$_Ld503
	.long	21598

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMETUE
_RESSTR_SYSCONST_SSHORTDAYNAMETUE:
	.long	_$SYSCONST$_Ld509
	.long	_$SYSCONST$_Ld507
	.long	_$SYSCONST$_Ld507
	.long	23477

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMEWED
_RESSTR_SYSCONST_SSHORTDAYNAMEWED:
	.long	_$SYSCONST$_Ld513
	.long	_$SYSCONST$_Ld511
	.long	_$SYSCONST$_Ld511
	.long	23988

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMETHU
_RESSTR_SYSCONST_SSHORTDAYNAMETHU:
	.long	_$SYSCONST$_Ld517
	.long	_$SYSCONST$_Ld515
	.long	_$SYSCONST$_Ld515
	.long	23285

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMEFRI
_RESSTR_SYSCONST_SSHORTDAYNAMEFRI:
	.long	_$SYSCONST$_Ld521
	.long	_$SYSCONST$_Ld519
	.long	_$SYSCONST$_Ld519
	.long	19849

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMESAT
_RESSTR_SYSCONST_SSHORTDAYNAMESAT:
	.long	_$SYSCONST$_Ld525
	.long	_$SYSCONST$_Ld523
	.long	_$SYSCONST$_Ld523
	.long	22916

.data
	.align 2
.globl	_RESSTR_SYSCONST_SSHORTDAYNAMESUN
_RESSTR_SYSCONST_SSHORTDAYNAMESUN:
	.long	_$SYSCONST$_Ld529
	.long	_$SYSCONST$_Ld527
	.long	_$SYSCONST$_Ld527
	.long	23230

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMEMON
_RESSTR_SYSCONST_SLONGDAYNAMEMON:
	.long	_$SYSCONST$_Ld533
	.long	_$SYSCONST$_Ld531
	.long	_$SYSCONST$_Ld531
	.long	88492681

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMETUE
_RESSTR_SYSCONST_SLONGDAYNAMETUE:
	.long	_$SYSCONST$_Ld537
	.long	_$SYSCONST$_Ld535
	.long	_$SYSCONST$_Ld535
	.long	196909785

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMEWED
_RESSTR_SYSCONST_SLONGDAYNAMEWED:
	.long	_$SYSCONST$_Ld541
	.long	_$SYSCONST$_Ld539
	.long	_$SYSCONST$_Ld539
	.long	189581113

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMETHU
_RESSTR_SYSCONST_SLONGDAYNAMETHU:
	.long	_$SYSCONST$_Ld545
	.long	_$SYSCONST$_Ld543
	.long	_$SYSCONST$_Ld543
	.long	264871721

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMEFRI
_RESSTR_SYSCONST_SLONGDAYNAMEFRI:
	.long	_$SYSCONST$_Ld549
	.long	_$SYSCONST$_Ld547
	.long	_$SYSCONST$_Ld547
	.long	81328777

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMESAT
_RESSTR_SYSCONST_SLONGDAYNAMESAT:
	.long	_$SYSCONST$_Ld553
	.long	_$SYSCONST$_Ld551
	.long	_$SYSCONST$_Ld551
	.long	146575129

.data
	.align 2
.globl	_RESSTR_SYSCONST_SLONGDAYNAMESUN
_RESSTR_SYSCONST_SLONGDAYNAMESUN:
	.long	_$SYSCONST$_Ld557
	.long	_$SYSCONST$_Ld555
	.long	_$SYSCONST$_Ld555
	.long	95177353

.data
	.align 2
.globl	_RESSTR_SYSCONST_END
_RESSTR_SYSCONST_END:
	.long	_RESSTR_SYSCONST_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

