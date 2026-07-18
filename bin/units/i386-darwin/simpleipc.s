# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SIMPLEIPC_IPCINIT
_SIMPLEIPC_IPCINIT:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_IPCDONE
_SIMPLEIPC_IPCDONE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj6
Lj6:
	popl	%edi
	movl	$0,-88(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj7
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj6(%edi),%eax
	cmpl	$0,(%eax)
	jne	Lj10
	jmp	Lj11
Lj10:
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj12
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj6(%edi),%eax
	movl	(%eax),%eax
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj6(%edi),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-4(%ebp)
	cmpl	-4(%ebp),%ebx
	jl	Lj17
	decl	-4(%ebp)
	.align 2
Lj18:
	incl	-4(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj6(%edi),%eax
	movl	(%eax),%eax
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj6(%edi),%esi
	movl	(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-88(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	cmpl	-4(%ebp),%ebx
	jg	Lj18
Lj17:
Lj12:
	call	LFPC_POPADDRSTACK$stub
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj6(%edi),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj13
	decl	%eax
	testl	%eax,%eax
	je	Lj14
Lj14:
	call	LFPC_RERAISE$stub
Lj13:
Lj11:
Lj7:
	call	LFPC_POPADDRSTACK$stub
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj8
	call	LFPC_RERAISE$stub
Lj8:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_REGISTERSOCKETFILE$ANSISTRING
_SIMPLEIPC_REGISTERSOCKETFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj32
Lj32:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj32(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj34
	jmp	Lj33
Lj33:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj32(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj32(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj32(%ebx),%eax
	movl	(%eax),%eax
	movb	$1,%dl
	call	L_CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN$stub
Lj34:
	movl	-4(%ebp),%edx
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj32(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj32(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_UNREGISTERSOCKETFILE$ANSISTRING
_SIMPLEIPC_UNREGISTERSOCKETFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj50
Lj50:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj51
	jmp	Lj52
Lj51:
	movl	-4(%ebp),%edx
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj59
	jmp	Lj60
Lj59:
	movl	-8(%ebp),%edx
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
Lj60:
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%eax
	movl	(%eax),%eax
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	je	Lj65
	jmp	Lj66
Lj65:
	movl	L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr-Lj50(%ebx),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj66:
Lj52:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPECLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TPIPECLIENTCOMM
_SIMPLEIPC_TPIPECLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TPIPECLIENTCOMM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj72
Lj72:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj73
	jmp	Lj74
Lj73:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj74:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj79
	jmp	Lj80
Lj79:
	jmp	Lj71
Lj80:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj83
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj87
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SIMPLEIPC_TIPCCLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TIPCCLIENTCOMM$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%edi
	movl	56(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	56(%edi),%eax
	movl	%eax,8(%esi)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj98
	jmp	Lj99
Lj98:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	L_$SIMPLEIPC$_Ld1$non_lazy_ptr-Lj72(%ebx),%eax
	movl	%eax,-104(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	60(%eax),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj99:
	movl	L_$SIMPLEIPC$_Ld3$non_lazy_ptr-Lj72(%ebx),%esi
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	Lfpc_ansistr_concat$stub
Lj87:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj88
	call	LFPC_RERAISE$stub
Lj88:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj116
	jmp	Lj115
Lj116:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj114
	jmp	Lj115
Lj114:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj115:
Lj83:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj85
	leal	-108(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj120
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj121
	jmp	Lj122
Lj121:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj122:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj120:
	call	LFPC_POPADDRSTACK$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj119
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj119:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj85
Lj85:
Lj71:
	movl	-12(%ebp),%eax
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPECLIENTCOMM_$__CONNECT
_SIMPLEIPC_TPIPECLIENTCOMM_$__CONNECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj134
Lj134:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	testb	%al,%al
	je	Lj135
	jmp	Lj136
Lj135:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	56(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$11,-12(%ebp)
	leal	-12(%ebp),%ecx
	movl	L_RESSTR_SIMPLEIPC_SERRSERVERNOTACTIVE$non_lazy_ptr-Lj134(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TIPCCLIENTCOMM_$__DOERROR$ANSISTRING$array_of_const$stub
Lj136:
	movw	$65,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj134(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPECLIENTCOMM_$__DISCONNECT
_SIMPLEIPC_TPIPECLIENTCOMM_$__DISCONNECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPECLIENTCOMM_$__SENDMESSAGE$LONGINT$TSTREAM
_SIMPLEIPC_TPIPECLIENTCOMM_$__SENDMESSAGE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,-21(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	leal	-21(%ebp),%edx
	movl	$9,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPECLIENTCOMM_$__SERVERRUNNING$$BOOLEAN
_SIMPLEIPC_TPIPECLIENTCOMM_$__SERVERRUNNING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj184
Lj184:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj185
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj192
	jmp	Lj193
Lj192:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj202
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj184(%ebx),%edx
	movl	%edx,%eax
Lj202:
	movw	$438,%cx
	movl	$5,%edx
	call	LFPC_SYSC_OPEN$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj207
	jmp	Lj208
Lj207:
	movb	$0,-5(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	jne	Lj217
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj184(%ebx),%edx
	movl	%edx,%eax
Lj217:
	call	LFPC_SYSC_UNLINK$stub
	jmp	Lj218
Lj208:
	movl	-12(%ebp),%eax
	call	LFPC_SYSC_CLOSE$stub
Lj218:
Lj193:
Lj185:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj186
	call	LFPC_RERAISE$stub
Lj186:
	movb	-5(%ebp),%al
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPESERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TPIPESERVERCOMM
_SIMPLEIPC_TPIPESERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TPIPESERVERCOMM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj222
Lj222:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj223
	jmp	Lj224
Lj223:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj224:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj229
	jmp	Lj230
Lj229:
	jmp	Lj221
Lj230:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj233
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj237
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SIMPLEIPC_TIPCSERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TIPCSERVERCOMM$stub
	movl	-12(%ebp),%eax
	movl	4(%eax),%edi
	movl	56(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	56(%edi),%eax
	movl	%eax,8(%esi)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj248
	jmp	Lj249
Lj248:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	L_$SIMPLEIPC$_Ld1$non_lazy_ptr-Lj222(%ebx),%eax
	movl	%eax,-104(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	call	LFPC_SYSC_GETPID$stub
	leal	-112(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-112(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj249:
	movl	L_$SIMPLEIPC$_Ld3$non_lazy_ptr-Lj222(%ebx),%esi
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	Lfpc_ansistr_concat$stub
Lj237:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj238
	call	LFPC_RERAISE$stub
Lj238:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj270
	jmp	Lj269
Lj270:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj268
	jmp	Lj269
Lj268:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj269:
Lj233:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj235
	leal	-108(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj274
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj275
	jmp	Lj276
Lj275:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj276:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj274:
	call	LFPC_POPADDRSTACK$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj273
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj273:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj235
Lj235:
Lj221:
	movl	-12(%ebp),%eax
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPESERVERCOMM_$__STARTSERVER
_SIMPLEIPC_TPIPESERVERCOMM_$__STARTSERVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj288
Lj288:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj289
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj292
	jmp	Lj293
Lj292:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	jne	Lj304
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj288(%ebx),%edx
	movl	%edx,%eax
Lj304:
	movw	$438,%dx
	call	L_BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj296
	jmp	Lj297
Lj296:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	L_RESSTR_SIMPLEIPC_SERRFAILEDTOCREATEPIPE$non_lazy_ptr-Lj288(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TIPCSERVERCOMM_$__DOERROR$ANSISTRING$array_of_const$stub
Lj297:
Lj293:
	movw	$66,4(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	60(%eax),%eax
	movl	L_TC_SIMPLEIPC_TPIPESERVERCOMM_$_STARTSERVER_RIGHTS$non_lazy_ptr-Lj288(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj288(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SIMPLEIPC_REGISTERSOCKETFILE$ANSISTRING$stub
Lj289:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj290
	call	LFPC_RERAISE$stub
Lj290:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPESERVERCOMM_$__STOPSERVER
_SIMPLEIPC_TPIPESERVERCOMM_$__STOPSERVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj330
Lj330:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SIMPLEIPC_UNREGISTERSOCKETFILE$ANSISTRING$stub
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj335
	jmp	Lj336
Lj335:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$11,-12(%ebp)
	leal	-12(%ebp),%ecx
	movl	L_RESSTR_SIMPLEIPC_SERRFAILEDTOREMOVEPIPE$non_lazy_ptr-Lj330(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TIPCSERVERCOMM_$__DOERROR$ANSISTRING$array_of_const$stub
Lj336:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPESERVERCOMM_$__PEEKMESSAGE$LONGINT$$BOOLEAN
_SIMPLEIPC_TPIPESERVERCOMM_$__PEEKMESSAGE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-140(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	leal	-140(%ebp),%edx
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-140(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	$0,%ecx
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub
	cmpl	$0,%eax
	setgb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPESERVERCOMM_$__READMESSAGE
_SIMPLEIPC_TPIPESERVERCOMM_$__READMESSAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	leal	-25(%ebp),%edx
	movl	$9,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TIPCSERVERCOMM_$__SETMSGTYPE$LONGINT$stub
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TIPCSERVERCOMM_$__MSGDATA$$TSTREAM$stub
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj385
	jmp	Lj386
Lj385:
	movl	-32(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-32(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-32(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	jmp	Lj399
Lj386:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-32(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj399:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TPIPESERVERCOMM_$__GETINSTANCEID$$ANSISTRING
_SIMPLEIPC_TPIPESERVERCOMM_$__GETINSTANCEID$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	LFPC_SYSC_GETPID$stub
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__COMMCLASS$$TIPCSERVERCOMMCLASS
_SIMPLEIPC_TSIMPLEIPCSERVER_$__COMMCLASS$$TIPCSERVERCOMMCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj411
Lj411:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_TC_SIMPLEIPC_DEFAULTIPCSERVERCLASS$non_lazy_ptr-Lj411(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj412
	jmp	Lj413
Lj412:
	movl	L_TC_SIMPLEIPC_DEFAULTIPCSERVERCLASS$non_lazy_ptr-Lj411(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj416
Lj413:
	movl	L_VMT_SIMPLEIPC_TPIPESERVERCOMM$non_lazy_ptr-Lj411(%edx),%eax
	movl	%eax,-8(%ebp)
Lj416:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__COMMCLASS$$TIPCCLIENTCOMMCLASS
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__COMMCLASS$$TIPCCLIENTCOMMCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj420
Lj420:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_TC_SIMPLEIPC_DEFAULTIPCCLIENTCLASS$non_lazy_ptr-Lj420(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj421
	jmp	Lj422
Lj421:
	movl	L_TC_SIMPLEIPC_DEFAULTIPCCLIENTCLASS$non_lazy_ptr-Lj420(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj425
Lj422:
	movl	L_VMT_SIMPLEIPC_TPIPECLIENTCOMM$non_lazy_ptr-Lj420(%edx),%eax
	movl	%eax,-8(%ebp)
Lj425:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TIPCSERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TIPCSERVERCOMM
_SIMPLEIPC_TIPCSERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TIPCSERVERCOMM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj430
	jmp	Lj431
Lj430:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj431:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj436
	jmp	Lj437
Lj436:
	jmp	Lj428
Lj437:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj440
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj444
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj444:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj445
	call	LFPC_RERAISE$stub
Lj445:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj451
	jmp	Lj450
Lj451:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj449
	jmp	Lj450
Lj449:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj450:
Lj440:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj442
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj455
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj456
	jmp	Lj457
Lj456:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj457:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj455:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj454
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj454:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj442
Lj442:
Lj428:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TIPCSERVERCOMM_$__DOERROR$ANSISTRING$array_of_const
_SIMPLEIPC_TIPCSERVERCOMM_$__DOERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
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
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj464
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const$stub
Lj464:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj465
	call	LFPC_RERAISE$stub
Lj465:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TIPCSERVERCOMM_$__MSGDATA$$TSTREAM
_SIMPLEIPC_TIPCSERVERCOMM_$__MSGDATA$$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	76(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TIPCSERVERCOMM_$__SETMSGTYPE$LONGINT
_SIMPLEIPC_TIPCSERVERCOMM_$__SETMSGTYPE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,72(%eax)
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TIPCCLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TIPCCLIENTCOMM
_SIMPLEIPC_TIPCCLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TIPCCLIENTCOMM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj485
	jmp	Lj486
Lj485:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj486:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj491
	jmp	Lj492
Lj491:
	jmp	Lj483
Lj492:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj495
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj499
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,4(%eax)
Lj499:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj500
	call	LFPC_RERAISE$stub
Lj500:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj506
	jmp	Lj505
Lj506:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj504
	jmp	Lj505
Lj504:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj505:
Lj495:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj497
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj510
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj511
	jmp	Lj512
Lj511:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj512:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj510:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj509
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj509:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj497
Lj497:
Lj483:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TIPCCLIENTCOMM_$__DOERROR$ANSISTRING$array_of_const
_SIMPLEIPC_TIPCCLIENTCOMM_$__DOERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
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
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj519
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const$stub
Lj519:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj520
	call	LFPC_RERAISE$stub
Lj520:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const
_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	call	Lj531
Lj531:
	popl	-76(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-72(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj532
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-76(%ebp),%edx
	movl	L_$SIMPLEIPC$_Ld5$non_lazy_ptr-Lj531(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-56(%ebp),%ecx
	movl	-76(%ebp),%eax
	movl	L_VMT_SIMPLEIPC_EIPCERROR$non_lazy_ptr-Lj531(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-76(%ebp),%ebx
	leal	La1-Lj531(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj532:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj533
	call	LFPC_RERAISE$stub
Lj533:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE
_SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj556
Lj556:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,53(%eax)
	jne	Lj557
	jmp	Lj558
Lj557:
	movl	$-1,(%esp)
	leal	-12(%ebp),%ecx
	movl	L_RESSTR_SIMPLEIPC_SERRACTIVE$non_lazy_ptr-Lj556(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const$stub
Lj558:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE
_SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj568
Lj568:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	53(%eax),%al
	testb	%al,%al
	je	Lj569
	jmp	Lj570
Lj569:
	movl	$-1,(%esp)
	leal	-12(%ebp),%ecx
	movl	L_RESSTR_SIMPLEIPC_SERRINACTIVE$non_lazy_ptr-Lj568(%ebx),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const$stub
Lj570:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN
_SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	53(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj581
	jmp	Lj582
Lj581:
	cmpb	$0,-4(%ebp)
	jne	Lj583
	jmp	Lj584
Lj583:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*216(%edx)
	jmp	Lj587
Lj584:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*220(%edx)
Lj587:
Lj582:
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPC_$__SETSERVERID$ANSISTRING
_SIMPLEIPC_TSIMPLEIPC_$__SETSERVERID$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj592
	jmp	Lj593
Lj592:
	movl	-8(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	56(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,56(%ebx)
Lj593:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__CREATE$TCOMPONENT$$TSIMPLEIPCSERVER
_SIMPLEIPC_TSIMPLEIPCSERVER_$__CREATE$TCOMPONENT$$TSIMPLEIPCSERVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj603
Lj603:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj604
	jmp	Lj605
Lj604:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj605:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj610
	jmp	Lj611
Lj610:
	jmp	Lj602
Lj611:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj614
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj618
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	-12(%ebp),%eax
	movb	$0,60(%eax)
	movl	-12(%ebp),%eax
	movb	$0,53(%eax)
	movl	-12(%ebp),%eax
	movb	$0,52(%eax)
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj603(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	-12(%ebp),%edx
	movl	%eax,76(%edx)
Lj618:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj619
	call	LFPC_RERAISE$stub
Lj619:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj643
	jmp	Lj642
Lj643:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj641
	jmp	Lj642
Lj641:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj642:
Lj614:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj616
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj647
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj648
	jmp	Lj649
Lj648:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj649:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj647:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj646
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj646:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj616
Lj616:
Lj602:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__DESTROY
_SIMPLEIPC_TSIMPLEIPCSERVER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj656
	jmp	Lj657
Lj656:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj657:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	leal	76(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj672
	jmp	Lj671
Lj672:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj670
	jmp	Lj671
Lj670:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj671:
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__SETGLOBAL$BOOLEAN
_SIMPLEIPC_TSIMPLEIPCSERVER_$__SETGLOBAL$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	60(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj677
	jmp	Lj678
Lj677:
	movl	-8(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE$stub
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,60(%eax)
Lj678:
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__GETINSTANCEID$$ANSISTRING
_SIMPLEIPC_TSIMPLEIPCSERVER_$__GETINSTANCEID$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	80(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__GETSTRINGMESSAGE$$ANSISTRING
_SIMPLEIPC_TSIMPLEIPCSERVER_$__GETSTRINGMESSAGE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%esi
	movl	4(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	4(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__STARTSERVER
_SIMPLEIPC_TSIMPLEIPCSERVER_$__STARTSERVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj695
	movl	-4(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj699
	jmp	Lj698
Lj698:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj700
	jmp	Lj701
Lj700:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%eax
	call	L_SYSUTILS_APPLICATIONNAME$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	leal	56(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,56(%ebx)
Lj701:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	movl	%ebx,%esi
	call	*104(%esi)
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	movl	80(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj699:
	movl	-4(%ebp),%eax
	movb	$1,53(%eax)
Lj695:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj696
	call	LFPC_RERAISE$stub
Lj696:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__STOPSERVER
_SIMPLEIPC_TSIMPLEIPCSERVER_$__STOPSERVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj724
	jmp	Lj725
Lj724:
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	movl	80(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-4(%ebp),%eax
	leal	80(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj725:
	movl	-4(%ebp),%eax
	movb	$0,53(%eax)
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__PEEKMESSAGE$LONGINT$BOOLEAN$$BOOLEAN
_SIMPLEIPC_TSIMPLEIPCSERVER_$__PEEKMESSAGE$LONGINT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE$stub
	movl	-12(%ebp),%eax
	movb	$1,52(%eax)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj738
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	80(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movb	%al,-13(%ebp)
Lj738:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movb	$0,52(%eax)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj739
	decl	%eax
	testl	%eax,%eax
	je	Lj740
Lj740:
	call	LFPC_RERAISE$stub
Lj739:
	cmpb	$0,-13(%ebp)
	jne	Lj750
	jmp	Lj751
Lj750:
	cmpb	$0,-8(%ebp)
	jne	Lj752
	jmp	Lj753
Lj752:
	movl	-12(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPCSERVER_$__READMESSAGE$stub
Lj753:
Lj751:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__READMESSAGE
_SIMPLEIPC_TSIMPLEIPCSERVER_$__READMESSAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE$stub
	movl	-4(%ebp),%eax
	movb	$1,52(%eax)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj762
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	movl	80(%edx),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj768
	jmp	Lj769
Lj768:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	call	*%ecx
Lj769:
Lj762:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$0,52(%eax)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj763
	decl	%eax
	testl	%eax,%eax
	je	Lj764
Lj764:
	call	LFPC_RERAISE$stub
Lj763:
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__GETMESSAGEDATA$TSTREAM
_SIMPLEIPC_TSIMPLEIPCSERVER_$__GETMESSAGEDATA$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__ACTIVATE
_SIMPLEIPC_TSIMPLEIPCSERVER_$__ACTIVATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPCSERVER_$__STARTSERVER$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCSERVER_$__DEACTIVATE
_SIMPLEIPC_TSIMPLEIPCSERVER_$__DEACTIVATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPCSERVER_$__STOPSERVER$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SETSERVERINSTANCE$ANSISTRING
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SETSERVERINSTANCE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE$stub
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	60(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,60(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__ACTIVATE
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__ACTIVATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CONNECT$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DEACTIVATE
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DEACTIVATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DISCONNECT$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CREATE$TCOMPONENT$$TSIMPLEIPCCLIENT
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CREATE$TCOMPONENT$$TSIMPLEIPCCLIENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj808
	jmp	Lj809
Lj808:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj809:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj814
	jmp	Lj815
Lj814:
	jmp	Lj806
Lj815:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj818
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj822
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
Lj822:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj823
	call	LFPC_RERAISE$stub
Lj823:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj833
	jmp	Lj832
Lj833:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj831
	jmp	Lj832
Lj831:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj832:
Lj818:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj820
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj837
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj838
	jmp	Lj839
Lj838:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj839:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj837:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj836
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj836:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj820
Lj820:
Lj806:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DESTROY
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj846
	jmp	Lj847
Lj846:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj847:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj860
	jmp	Lj859
Lj860:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj858
	jmp	Lj859
Lj858:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj859:
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CONNECT
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CONNECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj866
	jmp	Lj865
Lj865:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	movl	%ebx,%esi
	call	*100(%esi)
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj881
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
Lj881:
	call	LFPC_POPADDRSTACK$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj883
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj888
	movl	-4(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj888:
	call	LFPC_POPADDRSTACK$stub
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj887
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj887:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj883
Lj883:
	movl	-4(%ebp),%edx
	movb	$1,53(%edx)
Lj866:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DISCONNECT
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DISCONNECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj895
	jmp	Lj896
Lj895:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj897
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj897:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$0,53(%eax)
	movl	-4(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj898
	decl	%eax
	testl	%eax,%eax
	je	Lj899
Lj899:
	call	LFPC_RERAISE$stub
Lj898:
Lj896:
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SERVERRUNNING$$BOOLEAN
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SERVERRUNNING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,64(%eax)
	jne	Lj909
	jmp	Lj910
Lj909:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movb	%al,-5(%ebp)
	jmp	Lj915
Lj910:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*224(%edx)
	movl	%eax,%ebx
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	movl	%ebx,%esi
	call	*100(%esi)
	movl	%eax,%esi
	movl	%esi,%ebx
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj930
	movl	%ebx,%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movb	%al,-5(%ebp)
Lj930:
	call	LFPC_POPADDRSTACK$stub
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj931
	decl	%eax
	testl	%eax,%eax
	je	Lj932
Lj932:
	call	LFPC_RERAISE$stub
Lj931:
Lj915:
	movb	-5(%ebp),%al
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDMESSAGE$LONGINT$TSTREAM
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDMESSAGE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE$stub
	movl	-12(%ebp),%eax
	movb	$1,52(%eax)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj946
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	64(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*116(%ebx)
Lj946:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movb	$0,52(%eax)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj947
	decl	%eax
	testl	%eax,%eax
	je	Lj948
Lj948:
	call	LFPC_RERAISE$stub
Lj947:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$ANSISTRING
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$LONGINT$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$LONGINT$ANSISTRING
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj967
Lj967:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj967(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj976
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDMESSAGE$LONGINT$TSTREAM$stub
Lj976:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj977
	decl	%eax
	testl	%eax,%eax
	je	Lj978
Lj978:
	call	LFPC_RERAISE$stub
Lj977:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$ANSISTRING$array_of_const
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
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
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$LONGINT$ANSISTRING$array_of_const$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$LONGINT$ANSISTRING$array_of_const
_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$LONGINT$ANSISTRING$array_of_const:
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
	jne	Lj1002
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
	call	L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$LONGINT$ANSISTRING$stub
Lj1002:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	12(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1003
	call	LFPC_RERAISE$stub
Lj1003:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_SIMPLEIPC
_INIT$_SIMPLEIPC:
.reference __SIMPLEIPC_init
.globl	__SIMPLEIPC_init
__SIMPLEIPC_init:
.reference _INIT$_SIMPLEIPC
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SIMPLEIPC_IPCINIT$stub
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_SIMPLEIPC
_FINALIZE$_SIMPLEIPC:
.reference __SIMPLEIPC_finalize
.globl	__SIMPLEIPC_finalize
__SIMPLEIPC_finalize:
.reference _FINALIZE$_SIMPLEIPC
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SIMPLEIPC_IPCDONE$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_SIMPLEIPC_SOCKETFILES
.data
.zerofill __DATA, __common, _U_SIMPLEIPC_SOCKETFILES, 4,2



.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld7
_$SIMPLEIPC$_Ld7:
	.byte	16
	.ascii	"TSimpleIPCServer"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TSIMPLEIPCSERVER
_VMT_SIMPLEIPC_TSIMPLEIPCSERVER:
	.long	84,-84
	.long	_VMT_SIMPLEIPC_TSIMPLEIPC
	.long	_$SIMPLEIPC$_Ld7
	.long	0,0
	.long	_$SIMPLEIPC$_Ld8
	.long	_RTTI_SIMPLEIPC_TSIMPLEIPCSERVER
	.long	0,0,0,0
	.long	_SIMPLEIPC_TSIMPLEIPCSERVER_$__DESTROY
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
	.long	_SIMPLEIPC_TSIMPLEIPCSERVER_$__CREATE$TCOMPONENT$$TSIMPLEIPCSERVER
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_SIMPLEIPC_TSIMPLEIPCSERVER_$__ACTIVATE
	.long	_SIMPLEIPC_TSIMPLEIPCSERVER_$__DEACTIVATE
	.long	_SIMPLEIPC_TSIMPLEIPCSERVER_$__COMMCLASS$$TIPCSERVERCOMMCLASS
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld10
_$SIMPLEIPC$_Ld10:
	.byte	16
	.ascii	"TSimpleIPCClient"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TSIMPLEIPCCLIENT
_VMT_SIMPLEIPC_TSIMPLEIPCCLIENT:
	.long	68,-68
	.long	_VMT_SIMPLEIPC_TSIMPLEIPC
	.long	_$SIMPLEIPC$_Ld10
	.long	0,0
	.long	_$SIMPLEIPC$_Ld11
	.long	_RTTI_SIMPLEIPC_TSIMPLEIPCCLIENT
	.long	_INIT_SIMPLEIPC_TSIMPLEIPCCLIENT
	.long	0,0,0
	.long	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DESTROY
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
	.long	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CREATE$TCOMPONENT$$TSIMPLEIPCCLIENT
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__ACTIVATE
	.long	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DEACTIVATE
	.long	_SIMPLEIPC_TSIMPLEIPCCLIENT_$__COMMCLASS$$TIPCCLIENTCOMMCLASS
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld13
_$SIMPLEIPC$_Ld13:
	.byte	14
	.ascii	"TIPCServerComm"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TIPCSERVERCOMM
_VMT_SIMPLEIPC_TIPCSERVERCOMM:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$SIMPLEIPC$_Ld13
	.long	0,0
	.long	_$SIMPLEIPC$_Ld14
	.long	_RTTI_SIMPLEIPC_TIPCSERVERCOMM
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
	.long	FPC_ABSTRACTERROR
	.long	_SIMPLEIPC_TIPCSERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TIPCSERVERCOMM
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld16
_$SIMPLEIPC$_Ld16:
	.byte	10
	.ascii	"TSimpleIPC"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TSIMPLEIPC
_VMT_SIMPLEIPC_TSIMPLEIPC:
	.long	60,-60
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$SIMPLEIPC$_Ld16
	.long	0,0
	.long	_$SIMPLEIPC$_Ld17
	.long	_RTTI_SIMPLEIPC_TSIMPLEIPC
	.long	_INIT_SIMPLEIPC_TSIMPLEIPC
	.long	0,0,0
	.long	_CLASSES_TCOMPONENT_$__DESTROY
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
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld19
_$SIMPLEIPC$_Ld19:
	.byte	14
	.ascii	"TIPCClientComm"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TIPCCLIENTCOMM
_VMT_SIMPLEIPC_TIPCCLIENTCOMM:
	.long	8,-8
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$SIMPLEIPC$_Ld19
	.long	0,0
	.long	_$SIMPLEIPC$_Ld20
	.long	_RTTI_SIMPLEIPC_TIPCCLIENTCOMM
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
	.long	_SIMPLEIPC_TIPCCLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TIPCCLIENTCOMM
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld22
_$SIMPLEIPC$_Ld22:
	.byte	9
	.ascii	"EIPCError"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_EIPCERROR
_VMT_SIMPLEIPC_EIPCERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$SIMPLEIPC$_Ld22
	.long	0,0
	.long	_$SIMPLEIPC$_Ld23
	.long	_RTTI_SIMPLEIPC_EIPCERROR
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
.globl	_$SIMPLEIPC$_Ld25
_$SIMPLEIPC$_Ld25:
	.byte	15
	.ascii	"TPipeClientComm"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TPIPECLIENTCOMM
_VMT_SIMPLEIPC_TPIPECLIENTCOMM:
	.long	16,-16
	.long	_VMT_SIMPLEIPC_TIPCCLIENTCOMM
	.long	_$SIMPLEIPC$_Ld25
	.long	0,0
	.long	_$SIMPLEIPC$_Ld26
	.long	_RTTI_SIMPLEIPC_TPIPECLIENTCOMM
	.long	_INIT_SIMPLEIPC_TPIPECLIENTCOMM
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
	.long	_SIMPLEIPC_TPIPECLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TPIPECLIENTCOMM
	.long	_SIMPLEIPC_TPIPECLIENTCOMM_$__CONNECT
	.long	_SIMPLEIPC_TPIPECLIENTCOMM_$__DISCONNECT
	.long	_SIMPLEIPC_TPIPECLIENTCOMM_$__SERVERRUNNING$$BOOLEAN
	.long	_SIMPLEIPC_TPIPECLIENTCOMM_$__SENDMESSAGE$LONGINT$TSTREAM
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld28
_$SIMPLEIPC$_Ld28:
	.byte	15
	.ascii	"TPipeServerComm"

.const_data
	.align 2
.globl	_VMT_SIMPLEIPC_TPIPESERVERCOMM
_VMT_SIMPLEIPC_TPIPESERVERCOMM:
	.long	16,-16
	.long	_VMT_SIMPLEIPC_TIPCSERVERCOMM
	.long	_$SIMPLEIPC$_Ld28
	.long	0,0
	.long	_$SIMPLEIPC$_Ld29
	.long	_RTTI_SIMPLEIPC_TPIPESERVERCOMM
	.long	_INIT_SIMPLEIPC_TPIPESERVERCOMM
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
	.long	_SIMPLEIPC_TPIPESERVERCOMM_$__GETINSTANCEID$$ANSISTRING
	.long	_SIMPLEIPC_TPIPESERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TPIPESERVERCOMM
	.long	_SIMPLEIPC_TPIPESERVERCOMM_$__STARTSERVER
	.long	_SIMPLEIPC_TPIPESERVERCOMM_$__STOPSERVER
	.long	_SIMPLEIPC_TPIPESERVERCOMM_$__PEEKMESSAGE$LONGINT$$BOOLEAN
	.long	_SIMPLEIPC_TPIPESERVERCOMM_$__READMESSAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_SIMPLEIPC
_THREADVARLIST_SIMPLEIPC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$SIMPLEIPC$_Ld32
_$SIMPLEIPC$_Ld32:
	.short	0,1
	.long	0,-1,9
.reference _$SIMPLEIPC$_Ld31
.globl	_$SIMPLEIPC$_Ld31
_$SIMPLEIPC$_Ld31:
.reference _$SIMPLEIPC$_Ld32
	.ascii	"SIMPLEIPC\000"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld34
_$SIMPLEIPC$_Ld34:
	.short	0,1
	.long	0,-1,32
.reference _$SIMPLEIPC$_Ld33
.globl	_$SIMPLEIPC$_Ld33
_$SIMPLEIPC$_Ld33:
.reference _$SIMPLEIPC$_Ld34
	.ascii	"Server with ID %s is not active.\000"
	.align 2
.globl	_$SIMPLEIPC$_Ld36
_$SIMPLEIPC$_Ld36:
	.short	0,1
	.long	0,-1,29
.reference _$SIMPLEIPC$_Ld35
.globl	_$SIMPLEIPC$_Ld35
_$SIMPLEIPC$_Ld35:
.reference _$SIMPLEIPC$_Ld36
	.ascii	"simpleipc.serrservernotactive\000"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld38
_$SIMPLEIPC$_Ld38:
	.short	0,1
	.long	0,-1,52
.reference _$SIMPLEIPC$_Ld37
.globl	_$SIMPLEIPC$_Ld37
_$SIMPLEIPC$_Ld37:
.reference _$SIMPLEIPC$_Ld38
	.ascii	"This operation is illegal when the server is active"
	.ascii	".\000"
	.align 2
.globl	_$SIMPLEIPC$_Ld40
_$SIMPLEIPC$_Ld40:
	.short	0,1
	.long	0,-1,20
.reference _$SIMPLEIPC$_Ld39
.globl	_$SIMPLEIPC$_Ld39
_$SIMPLEIPC$_Ld39:
.reference _$SIMPLEIPC$_Ld40
	.ascii	"simpleipc.serractive\000"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld42
_$SIMPLEIPC$_Ld42:
	.short	0,1
	.long	0,-1,54
.reference _$SIMPLEIPC$_Ld41
.globl	_$SIMPLEIPC$_Ld41
_$SIMPLEIPC$_Ld41:
.reference _$SIMPLEIPC$_Ld42
	.ascii	"This operation is illegal when the server is inacti"
	.ascii	"ve.\000"
	.align 2
.globl	_$SIMPLEIPC$_Ld44
_$SIMPLEIPC$_Ld44:
	.short	0,1
	.long	0,-1,22
.reference _$SIMPLEIPC$_Ld43
.globl	_$SIMPLEIPC$_Ld43
_$SIMPLEIPC$_Ld43:
.reference _$SIMPLEIPC$_Ld44
	.ascii	"simpleipc.serrinactive\000"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld46
_$SIMPLEIPC$_Ld46:
	.short	0,1
	.long	0,-1,31
.reference _$SIMPLEIPC$_Ld45
.globl	_$SIMPLEIPC$_Ld45
_$SIMPLEIPC$_Ld45:
.reference _$SIMPLEIPC$_Ld46
	.ascii	"Failed to create named pipe: %s\000"
	.align 2
.globl	_$SIMPLEIPC$_Ld48
_$SIMPLEIPC$_Ld48:
	.short	0,1
	.long	0,-1,32
.reference _$SIMPLEIPC$_Ld47
.globl	_$SIMPLEIPC$_Ld47
_$SIMPLEIPC$_Ld47:
.reference _$SIMPLEIPC$_Ld48
	.ascii	"simpleipc.serrfailedtocreatepipe\000"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld50
_$SIMPLEIPC$_Ld50:
	.short	0,1
	.long	0,-1,31
.reference _$SIMPLEIPC$_Ld49
.globl	_$SIMPLEIPC$_Ld49
_$SIMPLEIPC$_Ld49:
.reference _$SIMPLEIPC$_Ld50
	.ascii	"Failed to remove named pipe: %s\000"
	.align 2
.globl	_$SIMPLEIPC$_Ld52
_$SIMPLEIPC$_Ld52:
	.short	0,1
	.long	0,-1,32
.reference _$SIMPLEIPC$_Ld51
.globl	_$SIMPLEIPC$_Ld51
_$SIMPLEIPC$_Ld51:
.reference _$SIMPLEIPC$_Ld52
	.ascii	"simpleipc.serrfailedtoremovepipe\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_SIMPLEIPC_DEFAULTIPCSERVERCLASS
_TC_SIMPLEIPC_DEFAULTIPCSERVERCLASS:
	.long	0

.data
	.align 2
.globl	_TC_SIMPLEIPC_DEFAULTIPCCLIENTCLASS
_TC_SIMPLEIPC_DEFAULTIPCCLIENTCLASS:
	.long	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld2
_$SIMPLEIPC$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$SIMPLEIPC$_Ld1
.globl	_$SIMPLEIPC$_Ld1
_$SIMPLEIPC$_Ld1:
.reference _$SIMPLEIPC$_Ld2
	.ascii	"-\000"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld4
_$SIMPLEIPC$_Ld4:
	.short	0,1
	.long	0,-1,5
.reference _$SIMPLEIPC$_Ld3
.globl	_$SIMPLEIPC$_Ld3
_$SIMPLEIPC$_Ld3:
.reference _$SIMPLEIPC$_Ld4
	.ascii	"/tmp/\000"

.data
	.align 2
.globl	_TC_SIMPLEIPC_TPIPESERVERCOMM_$_STARTSERVER_RIGHTS
_TC_SIMPLEIPC_TPIPESERVERCOMM_$_STARTSERVER_RIGHTS:
	.long	384,438

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld6
_$SIMPLEIPC$_Ld6:
	.short	0,1
	.long	0,-1,2
.reference _$SIMPLEIPC$_Ld5
.globl	_$SIMPLEIPC$_Ld5
_$SIMPLEIPC$_Ld5:
.reference _$SIMPLEIPC$_Ld6
	.ascii	": \000"
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

L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
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

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN$stub:
.indirect_symbol _CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TIPCCLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TIPCCLIENTCOMM$stub:
.indirect_symbol _SIMPLEIPC_TIPCCLIENTCOMM_$__CREATE$TSIMPLEIPCCLIENT$$TIPCCLIENTCOMM
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
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

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TIPCCLIENTCOMM_$__DOERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _SIMPLEIPC_TIPCCLIENTCOMM_$__DOERROR$ANSISTRING$array_of_const
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

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
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

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_OPEN$stub:
.indirect_symbol FPC_SYSC_OPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_UNLINK$stub:
.indirect_symbol FPC_SYSC_UNLINK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_CLOSE$stub:
.indirect_symbol FPC_SYSC_CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TIPCSERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TIPCSERVERCOMM$stub:
.indirect_symbol _SIMPLEIPC_TIPCSERVERCOMM_$__CREATE$TSIMPLEIPCSERVER$$TIPCSERVERCOMM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETPID$stub:
.indirect_symbol FPC_SYSC_GETPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPMKFIFO$PCHAR$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TIPCSERVERCOMM_$__DOERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _SIMPLEIPC_TIPCSERVERCOMM_$__DOERROR$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$LONGWORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_REGISTERSOCKETFILE$ANSISTRING$stub:
.indirect_symbol _SIMPLEIPC_REGISTERSOCKETFILE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_UNREGISTERSOCKETFILE$ANSISTRING$stub:
.indirect_symbol _SIMPLEIPC_UNREGISTERSOCKETFILE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT
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

L_SIMPLEIPC_TIPCSERVERCOMM_$__SETMSGTYPE$LONGINT$stub:
.indirect_symbol _SIMPLEIPC_TIPCSERVERCOMM_$__SETMSGTYPE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TIPCSERVERCOMM_$__MSGDATA$$TSTREAM$stub:
.indirect_symbol _SIMPLEIPC_TIPCSERVERCOMM_$__MSGDATA$$TSTREAM
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

L_SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPC_$__DOERROR$ANSISTRING$array_of_const
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

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
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

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPC_$__CHECKINACTIVE
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

L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub:
.indirect_symbol _CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN
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

L_SYSUTILS_APPLICATIONNAME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_APPLICATIONNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPC_$__CHECKACTIVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCSERVER_$__READMESSAGE$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCSERVER_$__READMESSAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCSERVER_$__STARTSERVER$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCSERVER_$__STARTSERVER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCSERVER_$__STOPSERVER$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCSERVER_$__STOPSERVER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__CONNECT$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCCLIENT_$__CONNECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__DISCONNECT$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCCLIENT_$__DISCONNECT
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

L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$LONGINT$ANSISTRING$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGE$LONGINT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDMESSAGE$LONGINT$TSTREAM$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDMESSAGE$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$LONGINT$ANSISTRING$array_of_const$stub:
.indirect_symbol _SIMPLEIPC_TSIMPLEIPCCLIENT_$__SENDSTRINGMESSAGEFMT$LONGINT$ANSISTRING$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_IPCINIT$stub:
.indirect_symbol _SIMPLEIPC_IPCINIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SIMPLEIPC_IPCDONE$stub:
.indirect_symbol _SIMPLEIPC_IPCDONE
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
.globl	_INIT_SIMPLEIPC_TMSGHEADER
_INIT_SIMPLEIPC_TMSGHEADER:
	.byte	13,10
	.ascii	"TMsgHeader"
	.long	9,0

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TMSGHEADER
_RTTI_SIMPLEIPC_TMSGHEADER:
	.byte	13,10
	.ascii	"TMsgHeader"
	.long	9,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	1
	.long	_RTTI_SYSTEM_LONGINT
	.long	5

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld8
_$SIMPLEIPC$_Ld8:
	.short	0
	.long	_$SIMPLEIPC$_Ld9
	.align 2
.globl	_$SIMPLEIPC$_Ld9
_$SIMPLEIPC$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TSIMPLEIPC
_INIT_SIMPLEIPC_TSIMPLEIPC:
	.byte	15,10
	.ascii	"TSimpleIPC"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	56

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TSIMPLEIPCSERVER
_INIT_SIMPLEIPC_TSIMPLEIPCSERVER:
	.byte	15,16
	.ascii	"TSimpleIPCServer"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TSIMPLEIPC
_RTTI_SIMPLEIPC_TSIMPLEIPC:
	.byte	15,10
	.ascii	"TSimpleIPC"
	.long	_VMT_SIMPLEIPC_TSIMPLEIPC
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	4
	.byte	9
	.ascii	"simpleipc"
	.short	2
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	53
	.long	_SIMPLEIPC_TSIMPLEIPC_$__SETACTIVE$BOOLEAN
	.long	1,0,-2147483648
	.short	2
	.byte	52,6
	.ascii	"Active"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	56
	.long	_SIMPLEIPC_TSIMPLEIPC_$__SETSERVERID$ANSISTRING
	.long	1,0,-2147483648
	.short	3
	.byte	52,8
	.ascii	"ServerID"

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TSIMPLEIPCSERVER
_RTTI_SIMPLEIPC_TSIMPLEIPCSERVER:
	.byte	15,16
	.ascii	"TSimpleIPCServer"
	.long	_VMT_SIMPLEIPC_TSIMPLEIPCSERVER
	.long	_RTTI_SIMPLEIPC_TSIMPLEIPC
	.short	6
	.byte	9
	.ascii	"simpleipc"
	.short	2
	.long	_RTTI_SYSTEM_BOOLEAN
	.long	60
	.long	_SIMPLEIPC_TSIMPLEIPCSERVER_$__SETGLOBAL$BOOLEAN
	.long	1,0,-2147483648
	.short	4
	.byte	52,6
	.ascii	"Global"
	.long	_RTTI_CLASSES_TNOTIFYEVENT
	.long	64,64,1,0,-2147483648
	.short	5
	.byte	48,9
	.ascii	"OnMessage"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld11
_$SIMPLEIPC$_Ld11:
	.short	0
	.long	_$SIMPLEIPC$_Ld12
	.align 2
.globl	_$SIMPLEIPC$_Ld12
_$SIMPLEIPC$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TSIMPLEIPCCLIENT
_INIT_SIMPLEIPC_TSIMPLEIPCCLIENT:
	.byte	15,16
	.ascii	"TSimpleIPCClient"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	60

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TSIMPLEIPCCLIENT
_RTTI_SIMPLEIPC_TSIMPLEIPCCLIENT:
	.byte	15,16
	.ascii	"TSimpleIPCClient"
	.long	_VMT_SIMPLEIPC_TSIMPLEIPCCLIENT
	.long	_RTTI_SIMPLEIPC_TSIMPLEIPC
	.short	4
	.byte	9
	.ascii	"simpleipc"
	.short	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld14
_$SIMPLEIPC$_Ld14:
	.short	0
	.long	_$SIMPLEIPC$_Ld15
	.align 2
.globl	_$SIMPLEIPC$_Ld15
_$SIMPLEIPC$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TIPCSERVERCOMM
_INIT_SIMPLEIPC_TIPCSERVERCOMM:
	.byte	15,14
	.ascii	"TIPCServerComm"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TIPCSERVERCOMM
_RTTI_SIMPLEIPC_TIPCSERVERCOMM:
	.byte	15,14
	.ascii	"TIPCServerComm"
	.long	_VMT_SIMPLEIPC_TIPCSERVERCOMM
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"simpleipc"
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TIPCSERVERCOMMCLASS
_INIT_SIMPLEIPC_TIPCSERVERCOMMCLASS:
	.byte	0
	.ascii	"\023TIPCServerCommClass"

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TIPCSERVERCOMMCLASS
_RTTI_SIMPLEIPC_TIPCSERVERCOMMCLASS:
	.byte	0
	.ascii	"\023TIPCServerCommClass"

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_DEF175
_INIT_SIMPLEIPC_DEF175:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld17
_$SIMPLEIPC$_Ld17:
	.short	0
	.long	_$SIMPLEIPC$_Ld18
	.align 2
.globl	_$SIMPLEIPC$_Ld18
_$SIMPLEIPC$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld20
_$SIMPLEIPC$_Ld20:
	.short	0
	.long	_$SIMPLEIPC$_Ld21
	.align 2
.globl	_$SIMPLEIPC$_Ld21
_$SIMPLEIPC$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TIPCCLIENTCOMM
_INIT_SIMPLEIPC_TIPCCLIENTCOMM:
	.byte	15,14
	.ascii	"TIPCClientComm"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TIPCCLIENTCOMM
_RTTI_SIMPLEIPC_TIPCCLIENTCOMM:
	.byte	15,14
	.ascii	"TIPCClientComm"
	.long	_VMT_SIMPLEIPC_TIPCCLIENTCOMM
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"simpleipc"
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TIPCCLIENTCOMMCLASS
_INIT_SIMPLEIPC_TIPCCLIENTCOMMCLASS:
	.byte	0
	.ascii	"\023TIPCClientCommClass"

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TIPCCLIENTCOMMCLASS
_RTTI_SIMPLEIPC_TIPCCLIENTCOMMCLASS:
	.byte	0
	.ascii	"\023TIPCClientCommClass"

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld23
_$SIMPLEIPC$_Ld23:
	.short	0
	.long	_$SIMPLEIPC$_Ld24
	.align 2
.globl	_$SIMPLEIPC$_Ld24
_$SIMPLEIPC$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_EIPCERROR
_INIT_SIMPLEIPC_EIPCERROR:
	.byte	15,9
	.ascii	"EIPCError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_EIPCERROR
_RTTI_SIMPLEIPC_EIPCERROR:
	.byte	15,9
	.ascii	"EIPCError"
	.long	_VMT_SIMPLEIPC_EIPCERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	9
	.ascii	"simpleipc"
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_DEF113
_INIT_SIMPLEIPC_DEF113:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_DEF119
_INIT_SIMPLEIPC_DEF119:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld26
_$SIMPLEIPC$_Ld26:
	.short	0
	.long	_$SIMPLEIPC$_Ld27
	.align 2
.globl	_$SIMPLEIPC$_Ld27
_$SIMPLEIPC$_Ld27:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TPIPECLIENTCOMM
_INIT_SIMPLEIPC_TPIPECLIENTCOMM:
	.byte	15,15
	.ascii	"TPipeClientComm"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TPIPECLIENTCOMM
_RTTI_SIMPLEIPC_TPIPECLIENTCOMM:
	.byte	15,15
	.ascii	"TPipeClientComm"
	.long	_VMT_SIMPLEIPC_TPIPECLIENTCOMM
	.long	_RTTI_SIMPLEIPC_TIPCCLIENTCOMM
	.short	0
	.byte	9
	.ascii	"simpleipc"
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_DEF137
_INIT_SIMPLEIPC_DEF137:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_DEF144
_INIT_SIMPLEIPC_DEF144:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_DEF147
_INIT_SIMPLEIPC_DEF147:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$SIMPLEIPC$_Ld29
_$SIMPLEIPC$_Ld29:
	.short	0
	.long	_$SIMPLEIPC$_Ld30
	.align 2
.globl	_$SIMPLEIPC$_Ld30
_$SIMPLEIPC$_Ld30:
	.short	0

.const_data
	.align 2
.globl	_INIT_SIMPLEIPC_TPIPESERVERCOMM
_INIT_SIMPLEIPC_TPIPESERVERCOMM:
	.byte	15,15
	.ascii	"TPipeServerComm"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_SIMPLEIPC_TPIPESERVERCOMM
_RTTI_SIMPLEIPC_TPIPESERVERCOMM:
	.byte	15,15
	.ascii	"TPipeServerComm"
	.long	_VMT_SIMPLEIPC_TPIPESERVERCOMM
	.long	_RTTI_SIMPLEIPC_TIPCSERVERCOMM
	.short	0
	.byte	9
	.ascii	"simpleipc"
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
L_U_SIMPLEIPC_SOCKETFILES$non_lazy_ptr:
.indirect_symbol _U_SIMPLEIPC_SOCKETFILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SIMPLEIPC$_Ld1$non_lazy_ptr:
.indirect_symbol _$SIMPLEIPC$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SIMPLEIPC$_Ld3$non_lazy_ptr:
.indirect_symbol _$SIMPLEIPC$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SIMPLEIPC_SERRSERVERNOTACTIVE$non_lazy_ptr:
.indirect_symbol _RESSTR_SIMPLEIPC_SERRSERVERNOTACTIVE
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
L_RESSTR_SIMPLEIPC_SERRFAILEDTOCREATEPIPE$non_lazy_ptr:
.indirect_symbol _RESSTR_SIMPLEIPC_SERRFAILEDTOCREATEPIPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SIMPLEIPC_TPIPESERVERCOMM_$_STARTSERVER_RIGHTS$non_lazy_ptr:
.indirect_symbol _TC_SIMPLEIPC_TPIPESERVERCOMM_$_STARTSERVER_RIGHTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SIMPLEIPC_SERRFAILEDTOREMOVEPIPE$non_lazy_ptr:
.indirect_symbol _RESSTR_SIMPLEIPC_SERRFAILEDTOREMOVEPIPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SIMPLEIPC_DEFAULTIPCSERVERCLASS$non_lazy_ptr:
.indirect_symbol _TC_SIMPLEIPC_DEFAULTIPCSERVERCLASS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SIMPLEIPC_TPIPESERVERCOMM$non_lazy_ptr:
.indirect_symbol _VMT_SIMPLEIPC_TPIPESERVERCOMM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SIMPLEIPC_DEFAULTIPCCLIENTCLASS$non_lazy_ptr:
.indirect_symbol _TC_SIMPLEIPC_DEFAULTIPCCLIENTCLASS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SIMPLEIPC_TPIPECLIENTCOMM$non_lazy_ptr:
.indirect_symbol _VMT_SIMPLEIPC_TPIPECLIENTCOMM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$SIMPLEIPC$_Ld5$non_lazy_ptr:
.indirect_symbol _$SIMPLEIPC$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SIMPLEIPC_EIPCERROR$non_lazy_ptr:
.indirect_symbol _VMT_SIMPLEIPC_EIPCERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SIMPLEIPC_SERRACTIVE$non_lazy_ptr:
.indirect_symbol _RESSTR_SIMPLEIPC_SERRACTIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SIMPLEIPC_SERRINACTIVE$non_lazy_ptr:
.indirect_symbol _RESSTR_SIMPLEIPC_SERRINACTIVE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGSTREAM
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_START
_RESSTR_SIMPLEIPC_START:
	.long	_$SIMPLEIPC$_Ld31
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_SERRSERVERNOTACTIVE
_RESSTR_SIMPLEIPC_SERRSERVERNOTACTIVE:
	.long	_$SIMPLEIPC$_Ld35
	.long	_$SIMPLEIPC$_Ld33
	.long	_$SIMPLEIPC$_Ld33
	.long	105274926

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_SERRACTIVE
_RESSTR_SIMPLEIPC_SERRACTIVE:
	.long	_$SIMPLEIPC$_Ld39
	.long	_$SIMPLEIPC$_Ld37
	.long	_$SIMPLEIPC$_Ld37
	.long	74399550

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_SERRINACTIVE
_RESSTR_SIMPLEIPC_SERRINACTIVE:
	.long	_$SIMPLEIPC$_Ld43
	.long	_$SIMPLEIPC$_Ld41
	.long	_$SIMPLEIPC$_Ld41
	.long	60441086

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_SERRFAILEDTOCREATEPIPE
_RESSTR_SIMPLEIPC_SERRFAILEDTOCREATEPIPE:
	.long	_$SIMPLEIPC$_Ld47
	.long	_$SIMPLEIPC$_Ld45
	.long	_$SIMPLEIPC$_Ld45
	.long	149462355

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_SERRFAILEDTOREMOVEPIPE
_RESSTR_SIMPLEIPC_SERRFAILEDTOREMOVEPIPE:
	.long	_$SIMPLEIPC$_Ld51
	.long	_$SIMPLEIPC$_Ld49
	.long	_$SIMPLEIPC$_Ld49
	.long	252609363

.data
	.align 2
.globl	_RESSTR_SIMPLEIPC_END
_RESSTR_SIMPLEIPC_END:
	.long	_RESSTR_SIMPLEIPC_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

