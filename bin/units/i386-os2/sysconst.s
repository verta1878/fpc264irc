	.file "sysconst.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	SYSCONST_GETRUNERROR$WORD$$ANSISTRING
SYSCONST_GETRUNERROR$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-312(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
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
	movl	RESSTR_SYSCONST_SNOERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SNOERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj11:
	movl	RESSTR_SYSCONST_SOUTOFMEMORY+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SOUTOFMEMORY+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj12:
	movl	RESSTR_SYSCONST_SFILENOTFOUND+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SFILENOTFOUND+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj13:
	movl	RESSTR_SYSCONST_SINVALIDFILENAME+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDFILENAME+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj14:
	movl	RESSTR_SYSCONST_STOOMANYOPENFILES+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_STOOMANYOPENFILES+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj15:
	movl	RESSTR_SYSCONST_SACCESSDENIED+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SACCESSDENIED+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj16:
	movl	RESSTR_SYSCONST_SINVALIDFILEHANDLE+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDFILEHANDLE+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj17:
	movl	RESSTR_SYSCONST_SINVALIDDRIVE+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDDRIVE+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj18:
	movl	RESSTR_SYSCONST_SENDOFFILE+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SENDOFFILE+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj19:
	movl	RESSTR_SYSCONST_SDISKFULL+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SDISKFULL+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj20:
	movl	RESSTR_SYSCONST_SFILENOTASSIGNED+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SFILENOTASSIGNED+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj21:
	movl	RESSTR_SYSCONST_SFILENOTOPEN+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SFILENOTOPEN+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj22:
	movl	RESSTR_SYSCONST_SFILENOTOPENFORINPUT+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SFILENOTOPENFORINPUT+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj23:
	movl	RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj24:
	movl	RESSTR_SYSCONST_SINVALIDINPUT+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDINPUT+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj25:
	movl	RESSTR_SYSCONST_SDIVBYZERO+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SDIVBYZERO+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj26:
	movl	RESSTR_SYSCONST_SRANGEERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SRANGEERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj27:
	movl	RESSTR_SYSCONST_SOUTOFMEMORY+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SOUTOFMEMORY+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj28:
	movl	RESSTR_SYSCONST_SINVALIDPOINTER+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDPOINTER+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj29:
	movl	RESSTR_SYSCONST_SOVERFLOW+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SOVERFLOW+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj30:
	movl	RESSTR_SYSCONST_SUNDERFLOW+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SUNDERFLOW+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj31:
	movl	RESSTR_SYSCONST_SINVALIDOP+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDOP+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj32:
	movl	RESSTR_SYSCONST_SABSTRACTERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SABSTRACTERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj33:
	movl	RESSTR_SYSCONST_SBUSERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SBUSERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj34:
	movl	RESSTR_SYSCONST_SINTOVERFLOW+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINTOVERFLOW+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj35:
	movl	RESSTR_SYSCONST_SACCESSVIOLATION+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SACCESSVIOLATION+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj36:
	movl	RESSTR_SYSCONST_SPRIVILEGE+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SPRIVILEGE+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj37:
	movl	RESSTR_SYSCONST_SCONTROLC+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SCONTROLC+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj38:
	movl	RESSTR_SYSCONST_SINVALIDCAST+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDCAST+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj39:
	movl	RESSTR_SYSCONST_SINVALIDVARCAST+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDVARCAST+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj40:
	movl	RESSTR_SYSCONST_SINVALIDVAROP+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINVALIDVAROP+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj41:
	movl	RESSTR_SYSCONST_SDISPATCHERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SDISPATCHERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj42:
	movl	RESSTR_SYSCONST_SVARARRAYCREATE+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SVARARRAYCREATE+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj43:
	movl	RESSTR_SYSCONST_SVARNOTARRAY+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SVARNOTARRAY+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj44:
	movl	RESSTR_SYSCONST_SVARARRAYBOUNDS+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SVARARRAYBOUNDS+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj45:
	movl	RESSTR_SYSCONST_SASSERTIONFAILED+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SASSERTIONFAILED+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj46:
	movl	RESSTR_SYSCONST_SEXTERNALEXCEPTION+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SEXTERNALEXCEPTION+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj47:
	movl	RESSTR_SYSCONST_SINTFCASTERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SINTFCASTERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj48:
	movl	RESSTR_SYSCONST_SSAFECALLEXCEPTION+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SSAFECALLEXCEPTION+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj49:
	movl	RESSTR_SYSCONST_SEXCEPTIONSTACK+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SEXCEPTIONSTACK+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj50:
	movl	RESSTR_SYSCONST_SNOTHREADSUPPORT+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SNOTHREADSUPPORT+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj51:
	movl	RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj52:
	movl	RESSTR_SYSCONST_SFALLBACKERROR+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SFALLBACKERROR+4,%eax
	movl	%eax,(%ebx)
	jmp	Lj8
Lj53:
	movl	RESSTR_SYSCONST_SNOTOOLSERVER+4,%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SNOTOOLSERVER+4,%eax
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
	pushl	$255
	leal	-308(%ebp),%ecx
	movl	-52(%ebp),%eax
	movl	$3,%edx
	call	fpc_shortstr_sint
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-308(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	RESSTR_SYSCONST_SUNKNOWN+4,%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
Lj143:
Lj5:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6
	call	FPC_RERAISE
Lj6:
	movl	-316(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_SYSCONST
THREADVARLIST_SYSCONST:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSCONST$_Ld1
_$SYSCONST$_Ld1:
	.ascii	"SYSCONST\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld2
_$SYSCONST$_Ld2:
	.ascii	"Operation aborted\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld3
_$SYSCONST$_Ld3:
	.ascii	"sysconst.saborterror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld4
_$SYSCONST$_Ld4:
	.ascii	"Abstract method called\000"
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld5
_$SYSCONST$_Ld5:
	.ascii	"sysconst.sabstracterror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$SYSCONST$_Ld6
_$SYSCONST$_Ld6:
	.ascii	"Access denied\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld7
_$SYSCONST$_Ld7:
	.ascii	"sysconst.saccessdenied\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld8
_$SYSCONST$_Ld8:
	.ascii	"Access violation\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld9
_$SYSCONST$_Ld9:
	.ascii	"sysconst.saccessviolation\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld10
_$SYSCONST$_Ld10:
	.ascii	"Missing argument in format \"%s\"\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld11
_$SYSCONST$_Ld11:
	.ascii	"sysconst.sargumentmissing\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld12
_$SYSCONST$_Ld12:
	.ascii	"%s (%s, line %d)\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld13
_$SYSCONST$_Ld13:
	.ascii	"sysconst.sasserterror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld14
_$SYSCONST$_Ld14:
	.ascii	"Assertion failed\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld15
_$SYSCONST$_Ld15:
	.ascii	"sysconst.sassertionfailed\000"

.data
	.balign 4
	.short	0,1
	.long	-1,35
.globl	_$SYSCONST$_Ld16
_$SYSCONST$_Ld16:
	.ascii	"Bus error or misaligned data access\000"
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$SYSCONST$_Ld17
_$SYSCONST$_Ld17:
	.ascii	"sysconst.sbuserror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld18
_$SYSCONST$_Ld18:
	.ascii	"Cannot create empty directory\000"
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld19
_$SYSCONST$_Ld19:
	.ascii	"sysconst.scannotcreateemptydir\000"

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$SYSCONST$_Ld20
_$SYSCONST$_Ld20:
	.ascii	"Control-C hit\000"
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$SYSCONST$_Ld21
_$SYSCONST$_Ld21:
	.ascii	"sysconst.scontrolc\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$SYSCONST$_Ld22
_$SYSCONST$_Ld22:
	.ascii	"Disk Full\000"
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$SYSCONST$_Ld23
_$SYSCONST$_Ld23:
	.ascii	"sysconst.sdiskfull\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld24
_$SYSCONST$_Ld24:
	.ascii	"No variant method call dispatch\000"
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld25
_$SYSCONST$_Ld25:
	.ascii	"sysconst.sdispatcherror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld26
_$SYSCONST$_Ld26:
	.ascii	"Division by zero\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld27
_$SYSCONST$_Ld27:
	.ascii	"sysconst.sdivbyzero\000"

.data
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld28
_$SYSCONST$_Ld28:
	.ascii	"Read past end of file\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld29
_$SYSCONST$_Ld29:
	.ascii	"sysconst.sendoffile\000"

.data
	.balign 4
	.short	0,1
	.long	-1,58
.globl	_$SYSCONST$_Ld30
_$SYSCONST$_Ld30:
	.ascii	"Year %d, month %d, Week %d and day %d is not a vali"
	.ascii	"d date.\000"
	.balign 4
	.short	0,1
	.long	-1,33
.globl	_$SYSCONST$_Ld31
_$SYSCONST$_Ld31:
	.ascii	"sysconst.serrinvaliddatemonthweek\000"

.data
	.balign 4
	.short	0,1
	.long	-1,45
.globl	_$SYSCONST$_Ld32
_$SYSCONST$_Ld32:
	.ascii	"%d:%d:%d.%d is not a valid time specification\000"
	.balign 4
	.short	0,1
	.long	-1,37
.globl	_$SYSCONST$_Ld33
_$SYSCONST$_Ld33:
	.ascii	"sysconst.serrinvalidhourminutesecmsec\000"

.data
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld34
_$SYSCONST$_Ld34:
	.ascii	"%d %d %d is not a valid dateweek\000"
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSCONST$_Ld35
_$SYSCONST$_Ld35:
	.ascii	"sysconst.serrinvaliddateweek\000"

.data
	.balign 4
	.short	0,1
	.long	-1,33
.globl	_$SYSCONST$_Ld36
_$SYSCONST$_Ld36:
	.ascii	"%d is not a valid day of the week\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld37
_$SYSCONST$_Ld37:
	.ascii	"sysconst.serrinvaliddayofweek\000"

.data
	.balign 4
	.short	0,1
	.long	-1,51
.globl	_$SYSCONST$_Ld38
_$SYSCONST$_Ld38:
	.ascii	"Year %d Month %d NDow %d DOW %d is not a valid date"
	.ascii	"\000"
	.balign 4
	.short	0,1
	.long	-1,36
.globl	_$SYSCONST$_Ld39
_$SYSCONST$_Ld39:
	.ascii	"sysconst.serrinvaliddayofweekinmonth\000"

.data
	.balign 4
	.short	0,1
	.long	-1,37
.globl	_$SYSCONST$_Ld40
_$SYSCONST$_Ld40:
	.ascii	"Year %d does not have a day number %d\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld41
_$SYSCONST$_Ld41:
	.ascii	"sysconst.serrinvaliddayofyear\000"

.data
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld42
_$SYSCONST$_Ld42:
	.ascii	"Invalid date/timestamp : \"%s\"\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld43
_$SYSCONST$_Ld43:
	.ascii	"sysconst.serrinvalidtimestamp\000"

.data
	.balign 4
	.short	0,1
	.long	-1,45
.globl	_$SYSCONST$_Ld44
_$SYSCONST$_Ld44:
	.ascii	"%f Julian cannot be represented as a DateTime\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld45
_$SYSCONST$_Ld45:
	.ascii	"sysconst.sinvalidjuliandate\000"

.data
	.balign 4
	.short	0,1
	.long	-1,38
.globl	_$SYSCONST$_Ld46
_$SYSCONST$_Ld46:
	.ascii	"\"%s\" is not a valid date format string\000"
	.balign 4
	.short	0,1
	.long	-1,36
.globl	_$SYSCONST$_Ld47
_$SYSCONST$_Ld47:
	.ascii	"sysconst.serrillegaldateformatstring\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld48
_$SYSCONST$_Ld48:
	.ascii	"\"%s\" is not a valid time\000"
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld49
_$SYSCONST$_Ld49:
	.ascii	"sysconst.serrinvalidtimeformat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,15
.globl	_$SYSCONST$_Ld50
_$SYSCONST$_Ld50:
	.ascii	"exception at %p\000"
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld51
_$SYSCONST$_Ld51:
	.ascii	"sysconst.sexceptionerrormessage\000"

.data
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld52
_$SYSCONST$_Ld52:
	.ascii	"Exception stack error\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld53
_$SYSCONST$_Ld53:
	.ascii	"sysconst.sexceptionstack\000"

.data
	.balign 4
	.short	0,1
	.long	-1,38
.globl	_$SYSCONST$_Ld54
_$SYSCONST$_Ld54:
	.ascii	"Failed to execute \"%s\", error code: %d\000"
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld55
_$SYSCONST$_Ld55:
	.ascii	"sysconst.sexecuteprocessfailed\000"

.data
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld56
_$SYSCONST$_Ld56:
	.ascii	"External exception %x\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld57
_$SYSCONST$_Ld57:
	.ascii	"sysconst.sexternalexception\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld58
_$SYSCONST$_Ld58:
	.ascii	"File not assigned\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld59
_$SYSCONST$_Ld59:
	.ascii	"sysconst.sfilenotassigned\000"

.data
	.balign 4
	.short	0,1
	.long	-1,14
.globl	_$SYSCONST$_Ld60
_$SYSCONST$_Ld60:
	.ascii	"File not found\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld61
_$SYSCONST$_Ld61:
	.ascii	"sysconst.sfilenotfound\000"

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$SYSCONST$_Ld62
_$SYSCONST$_Ld62:
	.ascii	"File not open\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld63
_$SYSCONST$_Ld63:
	.ascii	"sysconst.sfilenotopen\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld64
_$SYSCONST$_Ld64:
	.ascii	"File not open for input\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld65
_$SYSCONST$_Ld65:
	.ascii	"sysconst.sfilenotopenforinput\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld66
_$SYSCONST$_Ld66:
	.ascii	"File not open for output\000"
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld67
_$SYSCONST$_Ld67:
	.ascii	"sysconst.sfilenotopenforoutput\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld68
_$SYSCONST$_Ld68:
	.ascii	"Invalid filename\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld69
_$SYSCONST$_Ld69:
	.ascii	"sysconst.sinvalidfilename\000"

.data
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld70
_$SYSCONST$_Ld70:
	.ascii	"Arithmetic overflow\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld71
_$SYSCONST$_Ld71:
	.ascii	"sysconst.sintoverflow\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld72
_$SYSCONST$_Ld72:
	.ascii	"Interface not supported\000"
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld73
_$SYSCONST$_Ld73:
	.ascii	"sysconst.sintfcasterror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,37
.globl	_$SYSCONST$_Ld74
_$SYSCONST$_Ld74:
	.ascii	"Invalid argument index in format \"%s\"\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld75
_$SYSCONST$_Ld75:
	.ascii	"sysconst.sinvalidargindex\000"

.data
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld76
_$SYSCONST$_Ld76:
	.ascii	"%x is an invalid BCD value\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld77
_$SYSCONST$_Ld77:
	.ascii	"sysconst.sinvalidbcd\000"

.data
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSCONST$_Ld78
_$SYSCONST$_Ld78:
	.ascii	"\"%s\" is not a valid boolean.\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld79
_$SYSCONST$_Ld79:
	.ascii	"sysconst.sinvalidboolean\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld80
_$SYSCONST$_Ld80:
	.ascii	"Invalid type cast\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld81
_$SYSCONST$_Ld81:
	.ascii	"sysconst.sinvalidcast\000"

.data
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld82
_$SYSCONST$_Ld82:
	.ascii	"Invalid currency: \"%s\"\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld83
_$SYSCONST$_Ld83:
	.ascii	"sysconst.sinvalidcurrency\000"

.data
	.balign 4
	.short	0,1
	.long	-1,34
.globl	_$SYSCONST$_Ld84
_$SYSCONST$_Ld84:
	.ascii	"%f is not a valid date/time value.\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld85
_$SYSCONST$_Ld85:
	.ascii	"sysconst.sinvaliddatetime\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld86
_$SYSCONST$_Ld86:
	.ascii	"Invalid drive specified\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld87
_$SYSCONST$_Ld87:
	.ascii	"sysconst.sinvaliddrive\000"

.data
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld88
_$SYSCONST$_Ld88:
	.ascii	"Invalid file handle\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld89
_$SYSCONST$_Ld89:
	.ascii	"sysconst.sinvalidfilehandle\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld90
_$SYSCONST$_Ld90:
	.ascii	"\"%s\" is an invalid float\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld91
_$SYSCONST$_Ld91:
	.ascii	"sysconst.sinvalidfloat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld92
_$SYSCONST$_Ld92:
	.ascii	"Invalid format specifier : \"%s\"\000"
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld93
_$SYSCONST$_Ld93:
	.ascii	"sysconst.sinvalidformat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld94
_$SYSCONST$_Ld94:
	.ascii	"\"%s\" is not a valid GUID value\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld95
_$SYSCONST$_Ld95:
	.ascii	"sysconst.sinvalidguid\000"

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$SYSCONST$_Ld96
_$SYSCONST$_Ld96:
	.ascii	"Invalid input\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld97
_$SYSCONST$_Ld97:
	.ascii	"sysconst.sinvalidinput\000"

.data
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld98
_$SYSCONST$_Ld98:
	.ascii	"\"%s\" is an invalid integer\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld99
_$SYSCONST$_Ld99:
	.ascii	"sysconst.sinvalidinteger\000"

.data
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld100
_$SYSCONST$_Ld100:
	.ascii	"Invalid floating point operation\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld101
_$SYSCONST$_Ld101:
	.ascii	"sysconst.sinvalidop\000"

.data
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld102
_$SYSCONST$_Ld102:
	.ascii	"Invalid pointer operation\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld103
_$SYSCONST$_Ld103:
	.ascii	"sysconst.sinvalidpointer\000"

.data
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld104
_$SYSCONST$_Ld104:
	.ascii	"Invalid variant type cast\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld105
_$SYSCONST$_Ld105:
	.ascii	"sysconst.sinvalidvarcast\000"

.data
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld106
_$SYSCONST$_Ld106:
	.ascii	"Invalid NULL variant operation\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld107
_$SYSCONST$_Ld107:
	.ascii	"sysconst.sinvalidvarnullop\000"

.data
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld108
_$SYSCONST$_Ld108:
	.ascii	"Invalid variant operation\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld109
_$SYSCONST$_Ld109:
	.ascii	"sysconst.sinvalidvarop\000"

.data
	.balign 4
	.short	0,1
	.long	-1,34
.globl	_$SYSCONST$_Ld110
_$SYSCONST$_Ld110:
	.ascii	"Invalid variant operation %s %s %s\000"
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSCONST$_Ld111
_$SYSCONST$_Ld111:
	.ascii	"sysconst.sinvalidbinaryvarop\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld112
_$SYSCONST$_Ld112:
	.ascii	"Invalid variant operation %s %s\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld113
_$SYSCONST$_Ld113:
	.ascii	"sysconst.sinvalidunaryvarop\000"

.data
	.balign 4
	.short	0,1
	.long	-1,38
.globl	_$SYSCONST$_Ld114
_$SYSCONST$_Ld114:
	.ascii	"Invalid variant operation (%s%.8x)\015\012%s\000"
	.balign 4
	.short	0,1
	.long	-1,43
.globl	_$SYSCONST$_Ld115
_$SYSCONST$_Ld115:
	.ascii	"sysconst.sinvalidvaropwithhresultwithprefix\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$SYSCONST$_Ld116
_$SYSCONST$_Ld116:
	.ascii	"No error.\000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld117
_$SYSCONST$_Ld117:
	.ascii	"sysconst.snoerror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,60
.globl	_$SYSCONST$_Ld118
_$SYSCONST$_Ld118:
	.ascii	"Threads not supported. Recompile program with threa"
	.ascii	"d driver.\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld119
_$SYSCONST$_Ld119:
	.ascii	"sysconst.snothreadsupport\000"

.data
	.balign 4
	.short	0,1
	.long	-1,77
.globl	_$SYSCONST$_Ld120
_$SYSCONST$_Ld120:
	.ascii	"Widestring manager not available. Recompile program"
	.ascii	" with appropriate manager.\000"
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld121
_$SYSCONST$_Ld121:
	.ascii	"sysconst.smissingwstringmanager\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld122
_$SYSCONST$_Ld122:
	.ascii	"SIGQUIT signal received.\000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld123
_$SYSCONST$_Ld123:
	.ascii	"sysconst.ssigquit\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld124
_$SYSCONST$_Ld124:
	.ascii	"System error, (OS Code %d):\015\012%s\000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld125
_$SYSCONST$_Ld125:
	.ascii	"sysconst.soserror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,13
.globl	_$SYSCONST$_Ld126
_$SYSCONST$_Ld126:
	.ascii	"Out of memory\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld127
_$SYSCONST$_Ld127:
	.ascii	"sysconst.soutofmemory\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld128
_$SYSCONST$_Ld128:
	.ascii	"Floating point overflow\000"
	.balign 4
	.short	0,1
	.long	-1,18
.globl	_$SYSCONST$_Ld129
_$SYSCONST$_Ld129:
	.ascii	"sysconst.soverflow\000"

.data
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld130
_$SYSCONST$_Ld130:
	.ascii	"Privileged instruction\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld131
_$SYSCONST$_Ld131:
	.ascii	"sysconst.sprivilege\000"

.data
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld132
_$SYSCONST$_Ld132:
	.ascii	"Range check error\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld133
_$SYSCONST$_Ld133:
	.ascii	"sysconst.srangeerror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSCONST$_Ld134
_$SYSCONST$_Ld134:
	.ascii	"Exception in safecall method\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld135
_$SYSCONST$_Ld135:
	.ascii	"sysconst.ssafecallexception\000"

.data
	.balign 4
	.short	0,1
	.long	-1,11
.globl	_$SYSCONST$_Ld136
_$SYSCONST$_Ld136:
	.ascii	"iconv error\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld137
_$SYSCONST$_Ld137:
	.ascii	"sysconst.siconverror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld138
_$SYSCONST$_Ld138:
	.ascii	"Too many open files\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld139
_$SYSCONST$_Ld139:
	.ascii	"sysconst.stoomanyopenfiles\000"

.data
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld140
_$SYSCONST$_Ld140:
	.ascii	"Unknown Run-Time error : %3.3d\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld141
_$SYSCONST$_Ld141:
	.ascii	"sysconst.sunknownruntimeerror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld142
_$SYSCONST$_Ld142:
	.ascii	"Floating point underflow\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld143
_$SYSCONST$_Ld143:
	.ascii	"sysconst.sunderflow\000"

.data
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld144
_$SYSCONST$_Ld144:
	.ascii	"An operating system call failed.\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld145
_$SYSCONST$_Ld145:
	.ascii	"sysconst.sunkoserror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld146
_$SYSCONST$_Ld146:
	.ascii	"Unknown run-time error code: \000"
	.balign 4
	.short	0,1
	.long	-1,17
.globl	_$SYSCONST$_Ld147
_$SYSCONST$_Ld147:
	.ascii	"sysconst.sunknown\000"

.data
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld148
_$SYSCONST$_Ld148:
	.ascii	"Unknown error code: %d\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld149
_$SYSCONST$_Ld149:
	.ascii	"sysconst.sunknownerrorcode\000"

.data
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld150
_$SYSCONST$_Ld150:
	.ascii	"Variant array bounds error\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld151
_$SYSCONST$_Ld151:
	.ascii	"sysconst.svararraybounds\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSCONST$_Ld152
_$SYSCONST$_Ld152:
	.ascii	"Variant array cannot be created\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld153
_$SYSCONST$_Ld153:
	.ascii	"sysconst.svararraycreate\000"

.data
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld154
_$SYSCONST$_Ld154:
	.ascii	"Variant array locked\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld155
_$SYSCONST$_Ld155:
	.ascii	"sysconst.svararraylocked\000"

.data
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld156
_$SYSCONST$_Ld156:
	.ascii	"Invalid variant type\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld157
_$SYSCONST$_Ld157:
	.ascii	"sysconst.svarbadtype\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld158
_$SYSCONST$_Ld158:
	.ascii	"Invalid argument\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld159
_$SYSCONST$_Ld159:
	.ascii	"sysconst.svarinvalid\000"

.data
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$SYSCONST$_Ld160
_$SYSCONST$_Ld160:
	.ascii	"Invalid argument: %s\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld161
_$SYSCONST$_Ld161:
	.ascii	"sysconst.svarinvalid1\000"

.data
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld162
_$SYSCONST$_Ld162:
	.ascii	"Variant doesn't contain an array\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld163
_$SYSCONST$_Ld163:
	.ascii	"sysconst.svarnotarray\000"

.data
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld164
_$SYSCONST$_Ld164:
	.ascii	"Operation not supported\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld165
_$SYSCONST$_Ld165:
	.ascii	"sysconst.svarnotimplemented\000"

.data
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld166
_$SYSCONST$_Ld166:
	.ascii	"Variant operation ran out memory\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld167
_$SYSCONST$_Ld167:
	.ascii	"sysconst.svaroutofmemory\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSCONST$_Ld168
_$SYSCONST$_Ld168:
	.ascii	"Variant overflow\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld169
_$SYSCONST$_Ld169:
	.ascii	"sysconst.svaroverflow\000"

.data
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld170
_$SYSCONST$_Ld170:
	.ascii	"Variant Parameter not found\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld171
_$SYSCONST$_Ld171:
	.ascii	"sysconst.svarparamnotfound\000"

.data
	.balign 4
	.short	0,1
	.long	-1,47
.globl	_$SYSCONST$_Ld172
_$SYSCONST$_Ld172:
	.ascii	"Custom variant type (%s%.4x) already used by %s\000"
	.balign 4
	.short	0,1
	.long	-1,38
.globl	_$SYSCONST$_Ld173
_$SYSCONST$_Ld173:
	.ascii	"sysconst.svartypealreadyusedwithprefix\000"

.data
	.balign 4
	.short	0,1
	.long	-1,61
.globl	_$SYSCONST$_Ld174
_$SYSCONST$_Ld174:
	.ascii	"Overflow while converting variant of type (%s) into"
	.ascii	" type (%s)\000"
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld175
_$SYSCONST$_Ld175:
	.ascii	"sysconst.svartypeconvertoverflow\000"

.data
	.balign 4
	.short	0,1
	.long	-1,53
.globl	_$SYSCONST$_Ld176
_$SYSCONST$_Ld176:
	.ascii	"Could not convert variant of type (%s) into type (%"
	.ascii	"s)\000"
	.balign 4
	.short	0,1
	.long	-1,32
.globl	_$SYSCONST$_Ld177
_$SYSCONST$_Ld177:
	.ascii	"sysconst.svartypecouldnotconvert\000"

.data
	.balign 4
	.short	0,1
	.long	-1,42
.globl	_$SYSCONST$_Ld178
_$SYSCONST$_Ld178:
	.ascii	"Custom variant type (%s%.4x) is not usable\000"
	.balign 4
	.short	0,1
	.long	-1,36
.globl	_$SYSCONST$_Ld179
_$SYSCONST$_Ld179:
	.ascii	"sysconst.svartypenotusablewithprefix\000"

.data
	.balign 4
	.short	0,1
	.long	-1,44
.globl	_$SYSCONST$_Ld180
_$SYSCONST$_Ld180:
	.ascii	"Custom variant type (%s%.4x) is out of range\000"
	.balign 4
	.short	0,1
	.long	-1,37
.globl	_$SYSCONST$_Ld181
_$SYSCONST$_Ld181:
	.ascii	"sysconst.svartypeoutofrangewithprefix\000"

.data
	.balign 4
	.short	0,1
	.long	-1,42
.globl	_$SYSCONST$_Ld182
_$SYSCONST$_Ld182:
	.ascii	"Range check error for variant of type (%s)\000"
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSCONST$_Ld183
_$SYSCONST$_Ld183:
	.ascii	"sysconst.svartyperangecheck1\000"

.data
	.balign 4
	.short	0,1
	.long	-1,70
.globl	_$SYSCONST$_Ld184
_$SYSCONST$_Ld184:
	.ascii	"Range check error while converting variant of type "
	.ascii	"(%s) into type (%s)\000"
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSCONST$_Ld185
_$SYSCONST$_Ld185:
	.ascii	"sysconst.svartyperangecheck2\000"

.data
	.balign 4
	.short	0,1
	.long	-1,50
.globl	_$SYSCONST$_Ld186
_$SYSCONST$_Ld186:
	.ascii	"Too many custom variant types have been registered\000"
	.balign 4
	.short	0,1
	.long	-1,30
.globl	_$SYSCONST$_Ld187
_$SYSCONST$_Ld187:
	.ascii	"sysconst.svartypetoomanycustom\000"

.data
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld188
_$SYSCONST$_Ld188:
	.ascii	"Unexpected variant error\000"
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld189
_$SYSCONST$_Ld189:
	.ascii	"sysconst.svarunexpected\000"

.data
	.balign 4
	.short	0,1
	.long	-1,80
.globl	_$SYSCONST$_Ld190
_$SYSCONST$_Ld190:
	.ascii	"An error, whose error code is larger than can be re"
	.ascii	"turned to the OS, has occured\000"
	.balign 4
	.short	0,1
	.long	-1,23
.globl	_$SYSCONST$_Ld191
_$SYSCONST$_Ld191:
	.ascii	"sysconst.sfallbackerror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,48
.globl	_$SYSCONST$_Ld192
_$SYSCONST$_Ld192:
	.ascii	"Toolserver is not installed, cannot execute Tool\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld193
_$SYSCONST$_Ld193:
	.ascii	"sysconst.snotoolserver\000"

.data
	.balign 4
	.short	0,1
	.long	-1,73
.globl	_$SYSCONST$_Ld194
_$SYSCONST$_Ld194:
	.ascii	"Can't match any allowed value at pattern position %"
	.ascii	"d, string position %d.\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$SYSCONST$_Ld195
_$SYSCONST$_Ld195:
	.ascii	"sysconst.snoarraymatch\000"

.data
	.balign 4
	.short	0,1
	.long	-1,70
.globl	_$SYSCONST$_Ld196
_$SYSCONST$_Ld196:
	.ascii	"Mismatch char \"%s\" <> \"%s\" at pattern position "
	.ascii	"%d, string position %d.\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld197
_$SYSCONST$_Ld197:
	.ascii	"sysconst.snocharmatch\000"

.data
	.balign 4
	.short	0,1
	.long	-1,94
.globl	_$SYSCONST$_Ld198
_$SYSCONST$_Ld198:
	.ascii	"mm in a sequence hh:mm is interpreted as minutes. N"
	.ascii	"o longer versions allowed! (Position : %d).\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$SYSCONST$_Ld199
_$SYSCONST$_Ld199:
	.ascii	"sysconst.shhmmerror\000"

.data
	.balign 4
	.short	0,1
	.long	-1,77
.globl	_$SYSCONST$_Ld200
_$SYSCONST$_Ld200:
	.ascii	"Couldn't match entire pattern string. Input too sho"
	.ascii	"rt at pattern position %d.\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$SYSCONST$_Ld201
_$SYSCONST$_Ld201:
	.ascii	"sysconst.sfullpattern\000"

.data
	.balign 4
	.short	0,1
	.long	-1,42
.globl	_$SYSCONST$_Ld202
_$SYSCONST$_Ld202:
	.ascii	"Pattern mismatch char \"%s\" at position %d.\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$SYSCONST$_Ld203
_$SYSCONST$_Ld203:
	.ascii	"sysconst.spatterncharmismatch\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld204
_$SYSCONST$_Ld204:
	.ascii	"Jan\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld205
_$SYSCONST$_Ld205:
	.ascii	"sysconst.sshortmonthnamejan\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld206
_$SYSCONST$_Ld206:
	.ascii	"Feb\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld207
_$SYSCONST$_Ld207:
	.ascii	"sysconst.sshortmonthnamefeb\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld208
_$SYSCONST$_Ld208:
	.ascii	"Mar\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld209
_$SYSCONST$_Ld209:
	.ascii	"sysconst.sshortmonthnamemar\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld210
_$SYSCONST$_Ld210:
	.ascii	"Apr\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld211
_$SYSCONST$_Ld211:
	.ascii	"sysconst.sshortmonthnameapr\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld212
_$SYSCONST$_Ld212:
	.ascii	"May\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld213
_$SYSCONST$_Ld213:
	.ascii	"sysconst.sshortmonthnamemay\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld214
_$SYSCONST$_Ld214:
	.ascii	"Jun\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld215
_$SYSCONST$_Ld215:
	.ascii	"sysconst.sshortmonthnamejun\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld216
_$SYSCONST$_Ld216:
	.ascii	"Jul\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld217
_$SYSCONST$_Ld217:
	.ascii	"sysconst.sshortmonthnamejul\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld218
_$SYSCONST$_Ld218:
	.ascii	"Aug\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld219
_$SYSCONST$_Ld219:
	.ascii	"sysconst.sshortmonthnameaug\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld220
_$SYSCONST$_Ld220:
	.ascii	"Sep\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld221
_$SYSCONST$_Ld221:
	.ascii	"sysconst.sshortmonthnamesep\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld222
_$SYSCONST$_Ld222:
	.ascii	"Oct\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld223
_$SYSCONST$_Ld223:
	.ascii	"sysconst.sshortmonthnameoct\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld224
_$SYSCONST$_Ld224:
	.ascii	"Nov\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld225
_$SYSCONST$_Ld225:
	.ascii	"sysconst.sshortmonthnamenov\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld226
_$SYSCONST$_Ld226:
	.ascii	"Dec\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$SYSCONST$_Ld227
_$SYSCONST$_Ld227:
	.ascii	"sysconst.sshortmonthnamedec\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSCONST$_Ld228
_$SYSCONST$_Ld228:
	.ascii	"January\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld229
_$SYSCONST$_Ld229:
	.ascii	"sysconst.slongmonthnamejan\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSCONST$_Ld230
_$SYSCONST$_Ld230:
	.ascii	"February\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld231
_$SYSCONST$_Ld231:
	.ascii	"sysconst.slongmonthnamefeb\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSCONST$_Ld232
_$SYSCONST$_Ld232:
	.ascii	"March\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld233
_$SYSCONST$_Ld233:
	.ascii	"sysconst.slongmonthnamemar\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSCONST$_Ld234
_$SYSCONST$_Ld234:
	.ascii	"April\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld235
_$SYSCONST$_Ld235:
	.ascii	"sysconst.slongmonthnameapr\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld236
_$SYSCONST$_Ld236:
	.ascii	"May\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld237
_$SYSCONST$_Ld237:
	.ascii	"sysconst.slongmonthnamemay\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSCONST$_Ld238
_$SYSCONST$_Ld238:
	.ascii	"June\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld239
_$SYSCONST$_Ld239:
	.ascii	"sysconst.slongmonthnamejun\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSCONST$_Ld240
_$SYSCONST$_Ld240:
	.ascii	"July\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld241
_$SYSCONST$_Ld241:
	.ascii	"sysconst.slongmonthnamejul\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSCONST$_Ld242
_$SYSCONST$_Ld242:
	.ascii	"August\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld243
_$SYSCONST$_Ld243:
	.ascii	"sysconst.slongmonthnameaug\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$SYSCONST$_Ld244
_$SYSCONST$_Ld244:
	.ascii	"September\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld245
_$SYSCONST$_Ld245:
	.ascii	"sysconst.slongmonthnamesep\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSCONST$_Ld246
_$SYSCONST$_Ld246:
	.ascii	"October\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld247
_$SYSCONST$_Ld247:
	.ascii	"sysconst.slongmonthnameoct\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSCONST$_Ld248
_$SYSCONST$_Ld248:
	.ascii	"November\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld249
_$SYSCONST$_Ld249:
	.ascii	"sysconst.slongmonthnamenov\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSCONST$_Ld250
_$SYSCONST$_Ld250:
	.ascii	"December\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$SYSCONST$_Ld251
_$SYSCONST$_Ld251:
	.ascii	"sysconst.slongmonthnamedec\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld252
_$SYSCONST$_Ld252:
	.ascii	"Mon\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld253
_$SYSCONST$_Ld253:
	.ascii	"sysconst.sshortdaynamemon\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld254
_$SYSCONST$_Ld254:
	.ascii	"Tue\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld255
_$SYSCONST$_Ld255:
	.ascii	"sysconst.sshortdaynametue\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld256
_$SYSCONST$_Ld256:
	.ascii	"Wed\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld257
_$SYSCONST$_Ld257:
	.ascii	"sysconst.sshortdaynamewed\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld258
_$SYSCONST$_Ld258:
	.ascii	"Thu\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld259
_$SYSCONST$_Ld259:
	.ascii	"sysconst.sshortdaynamethu\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld260
_$SYSCONST$_Ld260:
	.ascii	"Fri\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld261
_$SYSCONST$_Ld261:
	.ascii	"sysconst.sshortdaynamefri\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld262
_$SYSCONST$_Ld262:
	.ascii	"Sat\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld263
_$SYSCONST$_Ld263:
	.ascii	"sysconst.sshortdaynamesat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSCONST$_Ld264
_$SYSCONST$_Ld264:
	.ascii	"Sun\000"
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$SYSCONST$_Ld265
_$SYSCONST$_Ld265:
	.ascii	"sysconst.sshortdaynamesun\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSCONST$_Ld266
_$SYSCONST$_Ld266:
	.ascii	"Monday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld267
_$SYSCONST$_Ld267:
	.ascii	"sysconst.slongdaynamemon\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSCONST$_Ld268
_$SYSCONST$_Ld268:
	.ascii	"Tuesday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld269
_$SYSCONST$_Ld269:
	.ascii	"sysconst.slongdaynametue\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$SYSCONST$_Ld270
_$SYSCONST$_Ld270:
	.ascii	"Wednesday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld271
_$SYSCONST$_Ld271:
	.ascii	"sysconst.slongdaynamewed\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSCONST$_Ld272
_$SYSCONST$_Ld272:
	.ascii	"Thursday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld273
_$SYSCONST$_Ld273:
	.ascii	"sysconst.slongdaynamethu\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSCONST$_Ld274
_$SYSCONST$_Ld274:
	.ascii	"Friday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld275
_$SYSCONST$_Ld275:
	.ascii	"sysconst.slongdaynamefri\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSCONST$_Ld276
_$SYSCONST$_Ld276:
	.ascii	"Saturday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld277
_$SYSCONST$_Ld277:
	.ascii	"sysconst.slongdaynamesat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSCONST$_Ld278
_$SYSCONST$_Ld278:
	.ascii	"Sunday\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$SYSCONST$_Ld279
_$SYSCONST$_Ld279:
	.ascii	"sysconst.slongdaynamesun\000"
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.balign 4
.globl	RESSTR_SYSCONST_START
RESSTR_SYSCONST_START:
	.long	_$SYSCONST$_Ld1
	.long	0,0,0

.data
	.balign 4
.globl	RESSTR_SYSCONST_SABORTERROR
RESSTR_SYSCONST_SABORTERROR:
	.long	_$SYSCONST$_Ld3
	.long	_$SYSCONST$_Ld2
	.long	_$SYSCONST$_Ld2
	.long	260888148

.data
	.balign 4
.globl	RESSTR_SYSCONST_SABSTRACTERROR
RESSTR_SYSCONST_SABSTRACTERROR:
	.long	_$SYSCONST$_Ld5
	.long	_$SYSCONST$_Ld4
	.long	_$SYSCONST$_Ld4
	.long	249526276

.data
	.balign 4
.globl	RESSTR_SYSCONST_SACCESSDENIED
RESSTR_SYSCONST_SACCESSDENIED:
	.long	_$SYSCONST$_Ld7
	.long	_$SYSCONST$_Ld6
	.long	_$SYSCONST$_Ld6
	.long	20153764

.data
	.balign 4
.globl	RESSTR_SYSCONST_SACCESSVIOLATION
RESSTR_SYSCONST_SACCESSVIOLATION:
	.long	_$SYSCONST$_Ld9
	.long	_$SYSCONST$_Ld8
	.long	_$SYSCONST$_Ld8
	.long	176794414

.data
	.balign 4
.globl	RESSTR_SYSCONST_SARGUMENTMISSING
RESSTR_SYSCONST_SARGUMENTMISSING:
	.long	_$SYSCONST$_Ld11
	.long	_$SYSCONST$_Ld10
	.long	_$SYSCONST$_Ld10
	.long	116288818

.data
	.balign 4
.globl	RESSTR_SYSCONST_SASSERTERROR
RESSTR_SYSCONST_SASSERTERROR:
	.long	_$SYSCONST$_Ld13
	.long	_$SYSCONST$_Ld12
	.long	_$SYSCONST$_Ld12
	.long	109055849

.data
	.balign 4
.globl	RESSTR_SYSCONST_SASSERTIONFAILED
RESSTR_SYSCONST_SASSERTIONFAILED:
	.long	_$SYSCONST$_Ld15
	.long	_$SYSCONST$_Ld14
	.long	_$SYSCONST$_Ld14
	.long	173634084

.data
	.balign 4
.globl	RESSTR_SYSCONST_SBUSERROR
RESSTR_SYSCONST_SBUSERROR:
	.long	_$SYSCONST$_Ld17
	.long	_$SYSCONST$_Ld16
	.long	_$SYSCONST$_Ld16
	.long	245994403

.data
	.balign 4
.globl	RESSTR_SYSCONST_SCANNOTCREATEEMPTYDIR
RESSTR_SYSCONST_SCANNOTCREATEEMPTYDIR:
	.long	_$SYSCONST$_Ld19
	.long	_$SYSCONST$_Ld18
	.long	_$SYSCONST$_Ld18
	.long	25794617

.data
	.balign 4
.globl	RESSTR_SYSCONST_SCONTROLC
RESSTR_SYSCONST_SCONTROLC:
	.long	_$SYSCONST$_Ld21
	.long	_$SYSCONST$_Ld20
	.long	_$SYSCONST$_Ld20
	.long	91281428

.data
	.balign 4
.globl	RESSTR_SYSCONST_SDISKFULL
RESSTR_SYSCONST_SDISKFULL:
	.long	_$SYSCONST$_Ld23
	.long	_$SYSCONST$_Ld22
	.long	_$SYSCONST$_Ld22
	.long	164925740

.data
	.balign 4
.globl	RESSTR_SYSCONST_SDISPATCHERROR
RESSTR_SYSCONST_SDISPATCHERROR:
	.long	_$SYSCONST$_Ld25
	.long	_$SYSCONST$_Ld24
	.long	_$SYSCONST$_Ld24
	.long	253334952

.data
	.balign 4
.globl	RESSTR_SYSCONST_SDIVBYZERO
RESSTR_SYSCONST_SDIVBYZERO:
	.long	_$SYSCONST$_Ld27
	.long	_$SYSCONST$_Ld26
	.long	_$SYSCONST$_Ld26
	.long	153943103

.data
	.balign 4
.globl	RESSTR_SYSCONST_SENDOFFILE
RESSTR_SYSCONST_SENDOFFILE:
	.long	_$SYSCONST$_Ld29
	.long	_$SYSCONST$_Ld28
	.long	_$SYSCONST$_Ld28
	.long	76266149

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK
RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK:
	.long	_$SYSCONST$_Ld31
	.long	_$SYSCONST$_Ld30
	.long	_$SYSCONST$_Ld30
	.long	190404478

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC
RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC:
	.long	_$SYSCONST$_Ld33
	.long	_$SYSCONST$_Ld32
	.long	_$SYSCONST$_Ld32
	.long	248307662

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDDATEWEEK
RESSTR_SYSCONST_SERRINVALIDDATEWEEK:
	.long	_$SYSCONST$_Ld35
	.long	_$SYSCONST$_Ld34
	.long	_$SYSCONST$_Ld34
	.long	180272523

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK
RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK:
	.long	_$SYSCONST$_Ld37
	.long	_$SYSCONST$_Ld36
	.long	_$SYSCONST$_Ld36
	.long	124922395

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH
RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH:
	.long	_$SYSCONST$_Ld39
	.long	_$SYSCONST$_Ld38
	.long	_$SYSCONST$_Ld38
	.long	66871589

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR
RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR:
	.long	_$SYSCONST$_Ld41
	.long	_$SYSCONST$_Ld40
	.long	_$SYSCONST$_Ld40
	.long	23449012

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDTIMESTAMP
RESSTR_SYSCONST_SERRINVALIDTIMESTAMP:
	.long	_$SYSCONST$_Ld43
	.long	_$SYSCONST$_Ld42
	.long	_$SYSCONST$_Ld42
	.long	126399042

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDJULIANDATE
RESSTR_SYSCONST_SINVALIDJULIANDATE:
	.long	_$SYSCONST$_Ld45
	.long	_$SYSCONST$_Ld44
	.long	_$SYSCONST$_Ld44
	.long	24290629

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRILLEGALDATEFORMATSTRING
RESSTR_SYSCONST_SERRILLEGALDATEFORMATSTRING:
	.long	_$SYSCONST$_Ld47
	.long	_$SYSCONST$_Ld46
	.long	_$SYSCONST$_Ld46
	.long	9186311

.data
	.balign 4
.globl	RESSTR_SYSCONST_SERRINVALIDTIMEFORMAT
RESSTR_SYSCONST_SERRINVALIDTIMEFORMAT:
	.long	_$SYSCONST$_Ld49
	.long	_$SYSCONST$_Ld48
	.long	_$SYSCONST$_Ld48
	.long	189483525

.data
	.balign 4
.globl	RESSTR_SYSCONST_SEXCEPTIONERRORMESSAGE
RESSTR_SYSCONST_SEXCEPTIONERRORMESSAGE:
	.long	_$SYSCONST$_Ld51
	.long	_$SYSCONST$_Ld50
	.long	_$SYSCONST$_Ld50
	.long	162506240

.data
	.balign 4
.globl	RESSTR_SYSCONST_SEXCEPTIONSTACK
RESSTR_SYSCONST_SEXCEPTIONSTACK:
	.long	_$SYSCONST$_Ld53
	.long	_$SYSCONST$_Ld52
	.long	_$SYSCONST$_Ld52
	.long	80862258

.data
	.balign 4
.globl	RESSTR_SYSCONST_SEXECUTEPROCESSFAILED
RESSTR_SYSCONST_SEXECUTEPROCESSFAILED:
	.long	_$SYSCONST$_Ld55
	.long	_$SYSCONST$_Ld54
	.long	_$SYSCONST$_Ld54
	.long	162819220

.data
	.balign 4
.globl	RESSTR_SYSCONST_SEXTERNALEXCEPTION
RESSTR_SYSCONST_SEXTERNALEXCEPTION:
	.long	_$SYSCONST$_Ld57
	.long	_$SYSCONST$_Ld56
	.long	_$SYSCONST$_Ld56
	.long	117675432

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFILENOTASSIGNED
RESSTR_SYSCONST_SFILENOTASSIGNED:
	.long	_$SYSCONST$_Ld59
	.long	_$SYSCONST$_Ld58
	.long	_$SYSCONST$_Ld58
	.long	226803780

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFILENOTFOUND
RESSTR_SYSCONST_SFILENOTFOUND:
	.long	_$SYSCONST$_Ld61
	.long	_$SYSCONST$_Ld60
	.long	_$SYSCONST$_Ld60
	.long	105651188

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFILENOTOPEN
RESSTR_SYSCONST_SFILENOTOPEN:
	.long	_$SYSCONST$_Ld63
	.long	_$SYSCONST$_Ld62
	.long	_$SYSCONST$_Ld62
	.long	191173038

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFILENOTOPENFORINPUT
RESSTR_SYSCONST_SFILENOTOPENFORINPUT:
	.long	_$SYSCONST$_Ld65
	.long	_$SYSCONST$_Ld64
	.long	_$SYSCONST$_Ld64
	.long	97869236

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT
RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT:
	.long	_$SYSCONST$_Ld67
	.long	_$SYSCONST$_Ld66
	.long	_$SYSCONST$_Ld66
	.long	249303188

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDFILENAME
RESSTR_SYSCONST_SINVALIDFILENAME:
	.long	_$SYSCONST$_Ld69
	.long	_$SYSCONST$_Ld68
	.long	_$SYSCONST$_Ld68
	.long	134358325

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINTOVERFLOW
RESSTR_SYSCONST_SINTOVERFLOW:
	.long	_$SYSCONST$_Ld71
	.long	_$SYSCONST$_Ld70
	.long	_$SYSCONST$_Ld70
	.long	150423927

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINTFCASTERROR
RESSTR_SYSCONST_SINTFCASTERROR:
	.long	_$SYSCONST$_Ld73
	.long	_$SYSCONST$_Ld72
	.long	_$SYSCONST$_Ld72
	.long	178728388

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDARGINDEX
RESSTR_SYSCONST_SINVALIDARGINDEX:
	.long	_$SYSCONST$_Ld75
	.long	_$SYSCONST$_Ld74
	.long	_$SYSCONST$_Ld74
	.long	154200386

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDBCD
RESSTR_SYSCONST_SINVALIDBCD:
	.long	_$SYSCONST$_Ld77
	.long	_$SYSCONST$_Ld76
	.long	_$SYSCONST$_Ld76
	.long	246041861

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDBOOLEAN
RESSTR_SYSCONST_SINVALIDBOOLEAN:
	.long	_$SYSCONST$_Ld79
	.long	_$SYSCONST$_Ld78
	.long	_$SYSCONST$_Ld78
	.long	75103870

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDCAST
RESSTR_SYSCONST_SINVALIDCAST:
	.long	_$SYSCONST$_Ld81
	.long	_$SYSCONST$_Ld80
	.long	_$SYSCONST$_Ld80
	.long	80785444

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDCURRENCY
RESSTR_SYSCONST_SINVALIDCURRENCY:
	.long	_$SYSCONST$_Ld83
	.long	_$SYSCONST$_Ld82
	.long	_$SYSCONST$_Ld82
	.long	141601682

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDDATETIME
RESSTR_SYSCONST_SINVALIDDATETIME:
	.long	_$SYSCONST$_Ld85
	.long	_$SYSCONST$_Ld84
	.long	_$SYSCONST$_Ld84
	.long	145463966

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDDRIVE
RESSTR_SYSCONST_SINVALIDDRIVE:
	.long	_$SYSCONST$_Ld87
	.long	_$SYSCONST$_Ld86
	.long	_$SYSCONST$_Ld86
	.long	167674564

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDFILEHANDLE
RESSTR_SYSCONST_SINVALIDFILEHANDLE:
	.long	_$SYSCONST$_Ld89
	.long	_$SYSCONST$_Ld88
	.long	_$SYSCONST$_Ld88
	.long	14207989

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDFLOAT
RESSTR_SYSCONST_SINVALIDFLOAT:
	.long	_$SYSCONST$_Ld91
	.long	_$SYSCONST$_Ld90
	.long	_$SYSCONST$_Ld90
	.long	137069412

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDFORMAT
RESSTR_SYSCONST_SINVALIDFORMAT:
	.long	_$SYSCONST$_Ld93
	.long	_$SYSCONST$_Ld92
	.long	_$SYSCONST$_Ld92
	.long	73989426

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDGUID
RESSTR_SYSCONST_SINVALIDGUID:
	.long	_$SYSCONST$_Ld95
	.long	_$SYSCONST$_Ld94
	.long	_$SYSCONST$_Ld94
	.long	221539413

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDINPUT
RESSTR_SYSCONST_SINVALIDINPUT:
	.long	_$SYSCONST$_Ld97
	.long	_$SYSCONST$_Ld96
	.long	_$SYSCONST$_Ld96
	.long	104125796

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDINTEGER
RESSTR_SYSCONST_SINVALIDINTEGER:
	.long	_$SYSCONST$_Ld99
	.long	_$SYSCONST$_Ld98
	.long	_$SYSCONST$_Ld98
	.long	168580578

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDOP
RESSTR_SYSCONST_SINVALIDOP:
	.long	_$SYSCONST$_Ld101
	.long	_$SYSCONST$_Ld100
	.long	_$SYSCONST$_Ld100
	.long	260890030

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDPOINTER
RESSTR_SYSCONST_SINVALIDPOINTER:
	.long	_$SYSCONST$_Ld103
	.long	_$SYSCONST$_Ld102
	.long	_$SYSCONST$_Ld102
	.long	6777038

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDVARCAST
RESSTR_SYSCONST_SINVALIDVARCAST:
	.long	_$SYSCONST$_Ld105
	.long	_$SYSCONST$_Ld104
	.long	_$SYSCONST$_Ld104
	.long	67169012

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDVARNULLOP
RESSTR_SYSCONST_SINVALIDVARNULLOP:
	.long	_$SYSCONST$_Ld107
	.long	_$SYSCONST$_Ld106
	.long	_$SYSCONST$_Ld106
	.long	146834670

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDVAROP
RESSTR_SYSCONST_SINVALIDVAROP:
	.long	_$SYSCONST$_Ld109
	.long	_$SYSCONST$_Ld108
	.long	_$SYSCONST$_Ld108
	.long	251581550

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDBINARYVAROP
RESSTR_SYSCONST_SINVALIDBINARYVAROP:
	.long	_$SYSCONST$_Ld111
	.long	_$SYSCONST$_Ld110
	.long	_$SYSCONST$_Ld110
	.long	141279203

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDUNARYVAROP
RESSTR_SYSCONST_SINVALIDUNARYVAROP:
	.long	_$SYSCONST$_Ld113
	.long	_$SYSCONST$_Ld112
	.long	_$SYSCONST$_Ld112
	.long	248678067

.data
	.balign 4
.globl	RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX
RESSTR_SYSCONST_SINVALIDVAROPWITHHRESULTWITHPREFIX:
	.long	_$SYSCONST$_Ld115
	.long	_$SYSCONST$_Ld114
	.long	_$SYSCONST$_Ld114
	.long	48811315

.data
	.balign 4
.globl	RESSTR_SYSCONST_SNOERROR
RESSTR_SYSCONST_SNOERROR:
	.long	_$SYSCONST$_Ld117
	.long	_$SYSCONST$_Ld116
	.long	_$SYSCONST$_Ld116
	.long	113894238

.data
	.balign 4
.globl	RESSTR_SYSCONST_SNOTHREADSUPPORT
RESSTR_SYSCONST_SNOTHREADSUPPORT:
	.long	_$SYSCONST$_Ld119
	.long	_$SYSCONST$_Ld118
	.long	_$SYSCONST$_Ld118
	.long	94080302

.data
	.balign 4
.globl	RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER
RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER:
	.long	_$SYSCONST$_Ld121
	.long	_$SYSCONST$_Ld120
	.long	_$SYSCONST$_Ld120
	.long	259856270

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSIGQUIT
RESSTR_SYSCONST_SSIGQUIT:
	.long	_$SYSCONST$_Ld123
	.long	_$SYSCONST$_Ld122
	.long	_$SYSCONST$_Ld122
	.long	115665550

.data
	.balign 4
.globl	RESSTR_SYSCONST_SOSERROR
RESSTR_SYSCONST_SOSERROR:
	.long	_$SYSCONST$_Ld125
	.long	_$SYSCONST$_Ld124
	.long	_$SYSCONST$_Ld124
	.long	224450259

.data
	.balign 4
.globl	RESSTR_SYSCONST_SOUTOFMEMORY
RESSTR_SYSCONST_SOUTOFMEMORY:
	.long	_$SYSCONST$_Ld127
	.long	_$SYSCONST$_Ld126
	.long	_$SYSCONST$_Ld126
	.long	33444681

.data
	.balign 4
.globl	RESSTR_SYSCONST_SOVERFLOW
RESSTR_SYSCONST_SOVERFLOW:
	.long	_$SYSCONST$_Ld129
	.long	_$SYSCONST$_Ld128
	.long	_$SYSCONST$_Ld128
	.long	58988791

.data
	.balign 4
.globl	RESSTR_SYSCONST_SPRIVILEGE
RESSTR_SYSCONST_SPRIVILEGE:
	.long	_$SYSCONST$_Ld131
	.long	_$SYSCONST$_Ld130
	.long	_$SYSCONST$_Ld130
	.long	47395422

.data
	.balign 4
.globl	RESSTR_SYSCONST_SRANGEERROR
RESSTR_SYSCONST_SRANGEERROR:
	.long	_$SYSCONST$_Ld133
	.long	_$SYSCONST$_Ld132
	.long	_$SYSCONST$_Ld132
	.long	173930530

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSAFECALLEXCEPTION
RESSTR_SYSCONST_SSAFECALLEXCEPTION:
	.long	_$SYSCONST$_Ld135
	.long	_$SYSCONST$_Ld134
	.long	_$SYSCONST$_Ld134
	.long	18610772

.data
	.balign 4
.globl	RESSTR_SYSCONST_SICONVERROR
RESSTR_SYSCONST_SICONVERROR:
	.long	_$SYSCONST$_Ld137
	.long	_$SYSCONST$_Ld136
	.long	_$SYSCONST$_Ld136
	.long	134430514

.data
	.balign 4
.globl	RESSTR_SYSCONST_STOOMANYOPENFILES
RESSTR_SYSCONST_STOOMANYOPENFILES:
	.long	_$SYSCONST$_Ld139
	.long	_$SYSCONST$_Ld138
	.long	_$SYSCONST$_Ld138
	.long	246740819

.data
	.balign 4
.globl	RESSTR_SYSCONST_SUNKNOWNRUNTIMEERROR
RESSTR_SYSCONST_SUNKNOWNRUNTIMEERROR:
	.long	_$SYSCONST$_Ld141
	.long	_$SYSCONST$_Ld140
	.long	_$SYSCONST$_Ld140
	.long	197250484

.data
	.balign 4
.globl	RESSTR_SYSCONST_SUNDERFLOW
RESSTR_SYSCONST_SUNDERFLOW:
	.long	_$SYSCONST$_Ld143
	.long	_$SYSCONST$_Ld142
	.long	_$SYSCONST$_Ld142
	.long	235186391

.data
	.balign 4
.globl	RESSTR_SYSCONST_SUNKOSERROR
RESSTR_SYSCONST_SUNKOSERROR:
	.long	_$SYSCONST$_Ld145
	.long	_$SYSCONST$_Ld144
	.long	_$SYSCONST$_Ld144
	.long	154701710

.data
	.balign 4
.globl	RESSTR_SYSCONST_SUNKNOWN
RESSTR_SYSCONST_SUNKNOWN:
	.long	_$SYSCONST$_Ld147
	.long	_$SYSCONST$_Ld146
	.long	_$SYSCONST$_Ld146
	.long	127587840

.data
	.balign 4
.globl	RESSTR_SYSCONST_SUNKNOWNERRORCODE
RESSTR_SYSCONST_SUNKNOWNERRORCODE:
	.long	_$SYSCONST$_Ld149
	.long	_$SYSCONST$_Ld148
	.long	_$SYSCONST$_Ld148
	.long	156714804

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARARRAYBOUNDS
RESSTR_SYSCONST_SVARARRAYBOUNDS:
	.long	_$SYSCONST$_Ld151
	.long	_$SYSCONST$_Ld150
	.long	_$SYSCONST$_Ld150
	.long	234640834

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARARRAYCREATE
RESSTR_SYSCONST_SVARARRAYCREATE:
	.long	_$SYSCONST$_Ld153
	.long	_$SYSCONST$_Ld152
	.long	_$SYSCONST$_Ld152
	.long	224667652

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARARRAYLOCKED
RESSTR_SYSCONST_SVARARRAYLOCKED:
	.long	_$SYSCONST$_Ld155
	.long	_$SYSCONST$_Ld154
	.long	_$SYSCONST$_Ld154
	.long	154380708

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARBADTYPE
RESSTR_SYSCONST_SVARBADTYPE:
	.long	_$SYSCONST$_Ld157
	.long	_$SYSCONST$_Ld156
	.long	_$SYSCONST$_Ld156
	.long	124200261

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARINVALID
RESSTR_SYSCONST_SVARINVALID:
	.long	_$SYSCONST$_Ld159
	.long	_$SYSCONST$_Ld158
	.long	_$SYSCONST$_Ld158
	.long	12736788

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARINVALID1
RESSTR_SYSCONST_SVARINVALID1:
	.long	_$SYSCONST$_Ld161
	.long	_$SYSCONST$_Ld160
	.long	_$SYSCONST$_Ld160
	.long	152502419

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARNOTARRAY
RESSTR_SYSCONST_SVARNOTARRAY:
	.long	_$SYSCONST$_Ld163
	.long	_$SYSCONST$_Ld162
	.long	_$SYSCONST$_Ld162
	.long	172781081

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARNOTIMPLEMENTED
RESSTR_SYSCONST_SVARNOTIMPLEMENTED:
	.long	_$SYSCONST$_Ld165
	.long	_$SYSCONST$_Ld164
	.long	_$SYSCONST$_Ld164
	.long	185248900

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVAROUTOFMEMORY
RESSTR_SYSCONST_SVAROUTOFMEMORY:
	.long	_$SYSCONST$_Ld167
	.long	_$SYSCONST$_Ld166
	.long	_$SYSCONST$_Ld166
	.long	102245721

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVAROVERFLOW
RESSTR_SYSCONST_SVAROVERFLOW:
	.long	_$SYSCONST$_Ld169
	.long	_$SYSCONST$_Ld168
	.long	_$SYSCONST$_Ld168
	.long	55082631

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARPARAMNOTFOUND
RESSTR_SYSCONST_SVARPARAMNOTFOUND:
	.long	_$SYSCONST$_Ld171
	.long	_$SYSCONST$_Ld170
	.long	_$SYSCONST$_Ld170
	.long	47814196

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX
RESSTR_SYSCONST_SVARTYPEALREADYUSEDWITHPREFIX:
	.long	_$SYSCONST$_Ld173
	.long	_$SYSCONST$_Ld172
	.long	_$SYSCONST$_Ld172
	.long	73598435

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW
RESSTR_SYSCONST_SVARTYPECONVERTOVERFLOW:
	.long	_$SYSCONST$_Ld175
	.long	_$SYSCONST$_Ld174
	.long	_$SYSCONST$_Ld174
	.long	260612889

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT
RESSTR_SYSCONST_SVARTYPECOULDNOTCONVERT:
	.long	_$SYSCONST$_Ld177
	.long	_$SYSCONST$_Ld176
	.long	_$SYSCONST$_Ld176
	.long	215367209

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX
RESSTR_SYSCONST_SVARTYPENOTUSABLEWITHPREFIX:
	.long	_$SYSCONST$_Ld179
	.long	_$SYSCONST$_Ld178
	.long	_$SYSCONST$_Ld178
	.long	175329765

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX
RESSTR_SYSCONST_SVARTYPEOUTOFRANGEWITHPREFIX:
	.long	_$SYSCONST$_Ld181
	.long	_$SYSCONST$_Ld180
	.long	_$SYSCONST$_Ld180
	.long	38455349

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPERANGECHECK1
RESSTR_SYSCONST_SVARTYPERANGECHECK1:
	.long	_$SYSCONST$_Ld183
	.long	_$SYSCONST$_Ld182
	.long	_$SYSCONST$_Ld182
	.long	143396889

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPERANGECHECK2
RESSTR_SYSCONST_SVARTYPERANGECHECK2:
	.long	_$SYSCONST$_Ld185
	.long	_$SYSCONST$_Ld184
	.long	_$SYSCONST$_Ld184
	.long	229765401

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM
RESSTR_SYSCONST_SVARTYPETOOMANYCUSTOM:
	.long	_$SYSCONST$_Ld187
	.long	_$SYSCONST$_Ld186
	.long	_$SYSCONST$_Ld186
	.long	201927860

.data
	.balign 4
.globl	RESSTR_SYSCONST_SVARUNEXPECTED
RESSTR_SYSCONST_SVARUNEXPECTED:
	.long	_$SYSCONST$_Ld189
	.long	_$SYSCONST$_Ld188
	.long	_$SYSCONST$_Ld188
	.long	76159010

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFALLBACKERROR
RESSTR_SYSCONST_SFALLBACKERROR:
	.long	_$SYSCONST$_Ld191
	.long	_$SYSCONST$_Ld190
	.long	_$SYSCONST$_Ld190
	.long	138116004

.data
	.balign 4
.globl	RESSTR_SYSCONST_SNOTOOLSERVER
RESSTR_SYSCONST_SNOTOOLSERVER:
	.long	_$SYSCONST$_Ld193
	.long	_$SYSCONST$_Ld192
	.long	_$SYSCONST$_Ld192
	.long	191079612

.data
	.balign 4
.globl	RESSTR_SYSCONST_SNOARRAYMATCH
RESSTR_SYSCONST_SNOARRAYMATCH:
	.long	_$SYSCONST$_Ld195
	.long	_$SYSCONST$_Ld194
	.long	_$SYSCONST$_Ld194
	.long	148176702

.data
	.balign 4
.globl	RESSTR_SYSCONST_SNOCHARMATCH
RESSTR_SYSCONST_SNOCHARMATCH:
	.long	_$SYSCONST$_Ld197
	.long	_$SYSCONST$_Ld196
	.long	_$SYSCONST$_Ld196
	.long	66329614

.data
	.balign 4
.globl	RESSTR_SYSCONST_SHHMMERROR
RESSTR_SYSCONST_SHHMMERROR:
	.long	_$SYSCONST$_Ld199
	.long	_$SYSCONST$_Ld198
	.long	_$SYSCONST$_Ld198
	.long	212965662

.data
	.balign 4
.globl	RESSTR_SYSCONST_SFULLPATTERN
RESSTR_SYSCONST_SFULLPATTERN:
	.long	_$SYSCONST$_Ld201
	.long	_$SYSCONST$_Ld200
	.long	_$SYSCONST$_Ld200
	.long	85457662

.data
	.balign 4
.globl	RESSTR_SYSCONST_SPATTERNCHARMISMATCH
RESSTR_SYSCONST_SPATTERNCHARMISMATCH:
	.long	_$SYSCONST$_Ld203
	.long	_$SYSCONST$_Ld202
	.long	_$SYSCONST$_Ld202
	.long	19915246

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEJAN
RESSTR_SYSCONST_SSHORTMONTHNAMEJAN:
	.long	_$SYSCONST$_Ld205
	.long	_$SYSCONST$_Ld204
	.long	_$SYSCONST$_Ld204
	.long	20606

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEFEB
RESSTR_SYSCONST_SSHORTMONTHNAMEFEB:
	.long	_$SYSCONST$_Ld207
	.long	_$SYSCONST$_Ld206
	.long	_$SYSCONST$_Ld206
	.long	19634

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEMAR
RESSTR_SYSCONST_SSHORTMONTHNAMEMAR:
	.long	_$SYSCONST$_Ld209
	.long	_$SYSCONST$_Ld208
	.long	_$SYSCONST$_Ld208
	.long	21378

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEAPR
RESSTR_SYSCONST_SSHORTMONTHNAMEAPR:
	.long	_$SYSCONST$_Ld211
	.long	_$SYSCONST$_Ld210
	.long	_$SYSCONST$_Ld210
	.long	18546

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEMAY
RESSTR_SYSCONST_SSHORTMONTHNAMEMAY:
	.long	_$SYSCONST$_Ld213
	.long	_$SYSCONST$_Ld212
	.long	_$SYSCONST$_Ld212
	.long	21385

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEJUN
RESSTR_SYSCONST_SSHORTMONTHNAMEJUN:
	.long	_$SYSCONST$_Ld215
	.long	_$SYSCONST$_Ld214
	.long	_$SYSCONST$_Ld214
	.long	20926

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEJUL
RESSTR_SYSCONST_SSHORTMONTHNAMEJUL:
	.long	_$SYSCONST$_Ld217
	.long	_$SYSCONST$_Ld216
	.long	_$SYSCONST$_Ld216
	.long	20924

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEAUG
RESSTR_SYSCONST_SSHORTMONTHNAMEAUG:
	.long	_$SYSCONST$_Ld219
	.long	_$SYSCONST$_Ld218
	.long	_$SYSCONST$_Ld218
	.long	18615

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMESEP
RESSTR_SYSCONST_SSHORTMONTHNAMESEP:
	.long	_$SYSCONST$_Ld221
	.long	_$SYSCONST$_Ld220
	.long	_$SYSCONST$_Ld220
	.long	22976

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEOCT
RESSTR_SYSCONST_SSHORTMONTHNAMEOCT:
	.long	_$SYSCONST$_Ld223
	.long	_$SYSCONST$_Ld222
	.long	_$SYSCONST$_Ld222
	.long	21924

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMENOV
RESSTR_SYSCONST_SSHORTMONTHNAMENOV:
	.long	_$SYSCONST$_Ld225
	.long	_$SYSCONST$_Ld224
	.long	_$SYSCONST$_Ld224
	.long	21862

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTMONTHNAMEDEC
RESSTR_SYSCONST_SSHORTMONTHNAMEDEC:
	.long	_$SYSCONST$_Ld227
	.long	_$SYSCONST$_Ld226
	.long	_$SYSCONST$_Ld226
	.long	19123

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEJAN
RESSTR_SYSCONST_SLONGMONTHNAMEJAN:
	.long	_$SYSCONST$_Ld229
	.long	_$SYSCONST$_Ld228
	.long	_$SYSCONST$_Ld228
	.long	8763593

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEFEB
RESSTR_SYSCONST_SLONGMONTHNAMEFEB:
	.long	_$SYSCONST$_Ld231
	.long	_$SYSCONST$_Ld230
	.long	_$SYSCONST$_Ld230
	.long	194624601

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEMAR
RESSTR_SYSCONST_SLONGMONTHNAMEMAR:
	.long	_$SYSCONST$_Ld233
	.long	_$SYSCONST$_Ld232
	.long	_$SYSCONST$_Ld232
	.long	5474456

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEAPR
RESSTR_SYSCONST_SLONGMONTHNAMEAPR:
	.long	_$SYSCONST$_Ld235
	.long	_$SYSCONST$_Ld234
	.long	_$SYSCONST$_Ld234
	.long	4749564

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEMAY
RESSTR_SYSCONST_SLONGMONTHNAMEMAY:
	.long	_$SYSCONST$_Ld237
	.long	_$SYSCONST$_Ld236
	.long	_$SYSCONST$_Ld236
	.long	21385

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEJUN
RESSTR_SYSCONST_SLONGMONTHNAMEJUN:
	.long	_$SYSCONST$_Ld239
	.long	_$SYSCONST$_Ld238
	.long	_$SYSCONST$_Ld238
	.long	334917

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEJUL
RESSTR_SYSCONST_SLONGMONTHNAMEJUL:
	.long	_$SYSCONST$_Ld241
	.long	_$SYSCONST$_Ld240
	.long	_$SYSCONST$_Ld240
	.long	334905

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEAUG
RESSTR_SYSCONST_SLONGMONTHNAMEAUG:
	.long	_$SYSCONST$_Ld243
	.long	_$SYSCONST$_Ld242
	.long	_$SYSCONST$_Ld242
	.long	76278948

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMESEP
RESSTR_SYSCONST_SLONGMONTHNAMESEP:
	.long	_$SYSCONST$_Ld245
	.long	_$SYSCONST$_Ld244
	.long	_$SYSCONST$_Ld244
	.long	128737538

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEOCT
RESSTR_SYSCONST_SLONGMONTHNAMEOCT:
	.long	_$SYSCONST$_Ld247
	.long	_$SYSCONST$_Ld246
	.long	_$SYSCONST$_Ld246
	.long	95115410

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMENOV
RESSTR_SYSCONST_SLONGMONTHNAMENOV:
	.long	_$SYSCONST$_Ld249
	.long	_$SYSCONST$_Ld248
	.long	_$SYSCONST$_Ld248
	.long	114048402

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGMONTHNAMEDEC
RESSTR_SYSCONST_SLONGMONTHNAMEDEC:
	.long	_$SYSCONST$_Ld251
	.long	_$SYSCONST$_Ld250
	.long	_$SYSCONST$_Ld250
	.long	194788450

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMEMON
RESSTR_SYSCONST_SSHORTDAYNAMEMON:
	.long	_$SYSCONST$_Ld253
	.long	_$SYSCONST$_Ld252
	.long	_$SYSCONST$_Ld252
	.long	21598

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMETUE
RESSTR_SYSCONST_SSHORTDAYNAMETUE:
	.long	_$SYSCONST$_Ld255
	.long	_$SYSCONST$_Ld254
	.long	_$SYSCONST$_Ld254
	.long	23477

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMEWED
RESSTR_SYSCONST_SSHORTDAYNAMEWED:
	.long	_$SYSCONST$_Ld257
	.long	_$SYSCONST$_Ld256
	.long	_$SYSCONST$_Ld256
	.long	23988

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMETHU
RESSTR_SYSCONST_SSHORTDAYNAMETHU:
	.long	_$SYSCONST$_Ld259
	.long	_$SYSCONST$_Ld258
	.long	_$SYSCONST$_Ld258
	.long	23285

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMEFRI
RESSTR_SYSCONST_SSHORTDAYNAMEFRI:
	.long	_$SYSCONST$_Ld261
	.long	_$SYSCONST$_Ld260
	.long	_$SYSCONST$_Ld260
	.long	19849

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMESAT
RESSTR_SYSCONST_SSHORTDAYNAMESAT:
	.long	_$SYSCONST$_Ld263
	.long	_$SYSCONST$_Ld262
	.long	_$SYSCONST$_Ld262
	.long	22916

.data
	.balign 4
.globl	RESSTR_SYSCONST_SSHORTDAYNAMESUN
RESSTR_SYSCONST_SSHORTDAYNAMESUN:
	.long	_$SYSCONST$_Ld265
	.long	_$SYSCONST$_Ld264
	.long	_$SYSCONST$_Ld264
	.long	23230

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMEMON
RESSTR_SYSCONST_SLONGDAYNAMEMON:
	.long	_$SYSCONST$_Ld267
	.long	_$SYSCONST$_Ld266
	.long	_$SYSCONST$_Ld266
	.long	88492681

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMETUE
RESSTR_SYSCONST_SLONGDAYNAMETUE:
	.long	_$SYSCONST$_Ld269
	.long	_$SYSCONST$_Ld268
	.long	_$SYSCONST$_Ld268
	.long	196909785

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMEWED
RESSTR_SYSCONST_SLONGDAYNAMEWED:
	.long	_$SYSCONST$_Ld271
	.long	_$SYSCONST$_Ld270
	.long	_$SYSCONST$_Ld270
	.long	189581113

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMETHU
RESSTR_SYSCONST_SLONGDAYNAMETHU:
	.long	_$SYSCONST$_Ld273
	.long	_$SYSCONST$_Ld272
	.long	_$SYSCONST$_Ld272
	.long	264871721

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMEFRI
RESSTR_SYSCONST_SLONGDAYNAMEFRI:
	.long	_$SYSCONST$_Ld275
	.long	_$SYSCONST$_Ld274
	.long	_$SYSCONST$_Ld274
	.long	81328777

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMESAT
RESSTR_SYSCONST_SLONGDAYNAMESAT:
	.long	_$SYSCONST$_Ld277
	.long	_$SYSCONST$_Ld276
	.long	_$SYSCONST$_Ld276
	.long	146575129

.data
	.balign 4
.globl	RESSTR_SYSCONST_SLONGDAYNAMESUN
RESSTR_SYSCONST_SLONGDAYNAMESUN:
	.long	_$SYSCONST$_Ld279
	.long	_$SYSCONST$_Ld278
	.long	_$SYSCONST$_Ld278
	.long	95177353

.data
	.balign 4
.globl	RESSTR_SYSCONST_END
RESSTR_SYSCONST_END:
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

