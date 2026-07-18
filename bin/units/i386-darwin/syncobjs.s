# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_SYNCOBJS_TSYNCHROOBJECT_$__ACQUIRE
_SYNCOBJS_TSYNCHROOBJECT_$__ACQUIRE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TSYNCHROOBJECT_$__RELEASE
_SYNCOBJS_TSYNCHROOBJECT_$__RELEASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__ENTER
_SYNCOBJS_TCRITICALSECTION_$__ENTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__LEAVE
_SYNCOBJS_TCRITICALSECTION_$__LEAVE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__TRYENTER$$BOOLEAN
_SYNCOBJS_TCRITICALSECTION_$__TRYENTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT$stub
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__ACQUIRE
_SYNCOBJS_TCRITICALSECTION_$__ACQUIRE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__RELEASE
_SYNCOBJS_TCRITICALSECTION_$__RELEASE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__CREATE$$TCRITICALSECTION
_SYNCOBJS_TCRITICALSECTION_$__CREATE$$TCRITICALSECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj31
	jmp	Lj32
Lj31:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj32:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	jmp	Lj38
Lj37:
	jmp	Lj29
Lj38:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj41
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj45
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION$stub
Lj45:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj46
	call	LFPC_RERAISE$stub
Lj46:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj56
	jmp	Lj55
Lj56:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj54
	jmp	Lj55
Lj54:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj55:
Lj41:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj43
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj60
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj62:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj60:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj59:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj43
Lj43:
Lj29:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TCRITICALSECTION_$__DESTROY
_SYNCOBJS_TCRITICALSECTION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj69
	jmp	Lj70
Lj69:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj70:
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj77
	jmp	Lj76
Lj77:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj76:
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_THANDLEOBJECT_$__DESTROY
_SYNCOBJS_THANDLEOBJECT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj82
	jmp	Lj83
Lj82:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj83:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj88
	jmp	Lj87
Lj88:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj87:
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TEVENTOBJECT_$__CREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$TEVENTOBJECT
_SYNCOBJS_TEVENTOBJECT_$__CREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$TEVENTOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj93
	jmp	Lj94
Lj93:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj94:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj99
	jmp	Lj100
Lj99:
	jmp	Lj91
Lj100:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj103
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj107
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	12(%ebp),%cl
	movb	16(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movb	16(%ebp),%dl
	movb	%dl,12(%eax)
Lj107:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	call	LFPC_RERAISE$stub
Lj108:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj124
	jmp	Lj123
Lj124:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj122
	jmp	Lj123
Lj122:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj123:
Lj103:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj105
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj128
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj129
	jmp	Lj130
Lj129:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj130:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj128:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj127
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj127:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj105
Lj105:
Lj91:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TEVENTOBJECT_$__DESTROY
_SYNCOBJS_TEVENTOBJECT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj137
	jmp	Lj138
Lj137:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj138:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_BASICEVENTDESTROY$POINTER$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj145
	jmp	Lj144
Lj145:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj143
	jmp	Lj144
Lj143:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj144:
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TEVENTOBJECT_$__RESETEVENT
_SYNCOBJS_TEVENTOBJECT_$__RESETEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_BASICEVENTRESETEVENT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TEVENTOBJECT_$__SETEVENT
_SYNCOBJS_TEVENTOBJECT_$__SETEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSTEM_BASICEVENTSETEVENT$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TEVENTOBJECT_$__WAITFOR$LONGWORD$$TWAITRESULT
_SYNCOBJS_TEVENTOBJECT_$__WAITFOR$LONGWORD$$TWAITRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$3,%eax
	je	Lj164
	jmp	Lj165
Lj164:
	call	L_SYSUTILS_GETLASTOSERROR$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
Lj165:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_SYNCOBJS_TSIMPLEEVENT_$__CREATE$$TSIMPLEEVENT
_SYNCOBJS_TSIMPLEEVENT_$__CREATE$$TSIMPLEEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj170
	jmp	Lj171
Lj170:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj171:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj176
	jmp	Lj177
Lj176:
	jmp	Lj168
Lj177:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj180
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj184
	movl	$0,(%esp)
	movb	$0,4(%esp)
	movb	$1,8(%esp)
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_SYNCOBJS_TEVENTOBJECT_$__CREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$TEVENTOBJECT$stub
Lj184:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj185
	call	LFPC_RERAISE$stub
Lj185:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj201
	jmp	Lj200
Lj201:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj199
	jmp	Lj200
Lj199:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj200:
Lj180:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj182
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj205
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj206
	jmp	Lj207
Lj206:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj207:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj205:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj204
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj204:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj182
Lj182:
Lj168:
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld1
_$SYNCOBJS$_Ld1:
	.byte	14
	.ascii	"TSynchroObject"

.const_data
	.align 2
.globl	_VMT_SYNCOBJS_TSYNCHROOBJECT
_VMT_SYNCOBJS_TSYNCHROOBJECT:
	.long	4,-4
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$SYNCOBJS$_Ld1
	.long	0,0
	.long	_$SYNCOBJS$_Ld2
	.long	_RTTI_SYNCOBJS_TSYNCHROOBJECT
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
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__ACQUIRE
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__RELEASE
	.long	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld4
_$SYNCOBJS$_Ld4:
	.byte	16
	.ascii	"TCriticalSection"

.const_data
	.align 2
.globl	_VMT_SYNCOBJS_TCRITICALSECTION
_VMT_SYNCOBJS_TCRITICALSECTION:
	.long	48,-48
	.long	_VMT_SYNCOBJS_TSYNCHROOBJECT
	.long	_$SYNCOBJS$_Ld4
	.long	0,0
	.long	_$SYNCOBJS$_Ld5
	.long	_RTTI_SYNCOBJS_TCRITICALSECTION
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYNCOBJS_TCRITICALSECTION_$__DESTROY
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
	.long	_SYNCOBJS_TCRITICALSECTION_$__ACQUIRE
	.long	_SYNCOBJS_TCRITICALSECTION_$__RELEASE
	.long	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld7
_$SYNCOBJS$_Ld7:
	.byte	13
	.ascii	"THandleObject"

.const_data
	.align 2
.globl	_VMT_SYNCOBJS_THANDLEOBJECT
_VMT_SYNCOBJS_THANDLEOBJECT:
	.long	12,-12
	.long	_VMT_SYNCOBJS_TSYNCHROOBJECT
	.long	_$SYNCOBJS$_Ld7
	.long	0,0
	.long	_$SYNCOBJS$_Ld8
	.long	_RTTI_SYNCOBJS_THANDLEOBJECT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYNCOBJS_THANDLEOBJECT_$__DESTROY
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
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__ACQUIRE
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__RELEASE
	.long	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld10
_$SYNCOBJS$_Ld10:
	.byte	12
	.ascii	"TEventObject"

.const_data
	.align 2
.globl	_VMT_SYNCOBJS_TEVENTOBJECT
_VMT_SYNCOBJS_TEVENTOBJECT:
	.long	16,-16
	.long	_VMT_SYNCOBJS_THANDLEOBJECT
	.long	_$SYNCOBJS$_Ld10
	.long	0,0
	.long	_$SYNCOBJS$_Ld11
	.long	_RTTI_SYNCOBJS_TEVENTOBJECT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYNCOBJS_TEVENTOBJECT_$__DESTROY
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
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__ACQUIRE
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__RELEASE
	.long	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld13
_$SYNCOBJS$_Ld13:
	.byte	12
	.ascii	"TSimpleEvent"

.const_data
	.align 2
.globl	_VMT_SYNCOBJS_TSIMPLEEVENT
_VMT_SYNCOBJS_TSIMPLEEVENT:
	.long	16,-16
	.long	_VMT_SYNCOBJS_TEVENTOBJECT
	.long	_$SYNCOBJS$_Ld13
	.long	0,0
	.long	_$SYNCOBJS$_Ld14
	.long	_RTTI_SYNCOBJS_TSIMPLEEVENT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYNCOBJS_TEVENTOBJECT_$__DESTROY
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
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__ACQUIRE
	.long	_SYNCOBJS_TSYNCHROOBJECT_$__RELEASE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_SYNCOBJS
_THREADVARLIST_SYNCOBJS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT$stub:
.indirect_symbol _SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
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

L_SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
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

L_SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION$stub:
.indirect_symbol _SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER$stub:
.indirect_symbol _SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BASICEVENTDESTROY$POINTER$stub:
.indirect_symbol _SYSTEM_BASICEVENTDESTROY$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BASICEVENTRESETEVENT$POINTER$stub:
.indirect_symbol _SYSTEM_BASICEVENTRESETEVENT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BASICEVENTSETEVENT$POINTER$stub:
.indirect_symbol _SYSTEM_BASICEVENTSETEVENT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT$stub:
.indirect_symbol _SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_GETLASTOSERROR$$LONGINT$stub:
.indirect_symbol _SYSUTILS_GETLASTOSERROR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYNCOBJS_TEVENTOBJECT_$__CREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$TEVENTOBJECT$stub:
.indirect_symbol _SYNCOBJS_TEVENTOBJECT_$__CREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$TEVENTOBJECT
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
.globl	_INIT_SYNCOBJS_TWAITRESULT
_INIT_SYNCOBJS_TWAITRESULT:
	.byte	3,11
	.ascii	"TWaitResult"
	.byte	5
	.long	0,3,0
	.byte	10
	.ascii	"wrSignaled"
	.byte	9
	.ascii	"wrTimeout"
	.byte	11
	.ascii	"wrAbandoned"
	.byte	7
	.ascii	"wrError"
	.byte	8
	.ascii	"syncobjs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TWAITRESULT
_RTTI_SYNCOBJS_TWAITRESULT:
	.byte	3,11
	.ascii	"TWaitResult"
	.byte	5
	.long	0,3,0
	.byte	10
	.ascii	"wrSignaled"
	.byte	9
	.ascii	"wrTimeout"
	.byte	11
	.ascii	"wrAbandoned"
	.byte	7
	.ascii	"wrError"
	.byte	8
	.ascii	"syncobjs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TWAITRESULT_s2o
_RTTI_SYNCOBJS_TWAITRESULT_s2o:
	.long	4,2
	.long	_RTTI_SYNCOBJS_TWAITRESULT+47
	.long	3
	.long	_RTTI_SYNCOBJS_TWAITRESULT+59
	.long	0
	.long	_RTTI_SYNCOBJS_TWAITRESULT+26
	.long	1
	.long	_RTTI_SYNCOBJS_TWAITRESULT+37

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TWAITRESULT_o2s
_RTTI_SYNCOBJS_TWAITRESULT_o2s:
	.long	0
	.long	_RTTI_SYNCOBJS_TWAITRESULT+26
	.long	_RTTI_SYNCOBJS_TWAITRESULT+37
	.long	_RTTI_SYNCOBJS_TWAITRESULT+47
	.long	_RTTI_SYNCOBJS_TWAITRESULT+59

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld2
_$SYNCOBJS$_Ld2:
	.short	0
	.long	_$SYNCOBJS$_Ld3
	.align 2
.globl	_$SYNCOBJS$_Ld3
_$SYNCOBJS$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_SYNCOBJS_TSYNCHROOBJECT
_INIT_SYNCOBJS_TSYNCHROOBJECT:
	.byte	15,14
	.ascii	"TSynchroObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TSYNCHROOBJECT
_RTTI_SYNCOBJS_TSYNCHROOBJECT:
	.byte	15,14
	.ascii	"TSynchroObject"
	.long	_VMT_SYNCOBJS_TSYNCHROOBJECT
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"syncobjs"
	.short	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld5
_$SYNCOBJS$_Ld5:
	.short	0
	.long	_$SYNCOBJS$_Ld6
	.align 2
.globl	_$SYNCOBJS$_Ld6
_$SYNCOBJS$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_SYNCOBJS_TCRITICALSECTION
_INIT_SYNCOBJS_TCRITICALSECTION:
	.byte	15,16
	.ascii	"TCriticalSection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TCRITICALSECTION
_RTTI_SYNCOBJS_TCRITICALSECTION:
	.byte	15,16
	.ascii	"TCriticalSection"
	.long	_VMT_SYNCOBJS_TCRITICALSECTION
	.long	_RTTI_SYNCOBJS_TSYNCHROOBJECT
	.short	0
	.byte	8
	.ascii	"syncobjs"
	.short	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld8
_$SYNCOBJS$_Ld8:
	.short	0
	.long	_$SYNCOBJS$_Ld9
	.align 2
.globl	_$SYNCOBJS$_Ld9
_$SYNCOBJS$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_SYNCOBJS_THANDLEOBJECT
_INIT_SYNCOBJS_THANDLEOBJECT:
	.byte	15,13
	.ascii	"THandleObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_THANDLEOBJECT
_RTTI_SYNCOBJS_THANDLEOBJECT:
	.byte	15,13
	.ascii	"THandleObject"
	.long	_VMT_SYNCOBJS_THANDLEOBJECT
	.long	_RTTI_SYNCOBJS_TSYNCHROOBJECT
	.short	0
	.byte	8
	.ascii	"syncobjs"
	.short	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld11
_$SYNCOBJS$_Ld11:
	.short	0
	.long	_$SYNCOBJS$_Ld12
	.align 2
.globl	_$SYNCOBJS$_Ld12
_$SYNCOBJS$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_SYNCOBJS_TEVENTOBJECT
_INIT_SYNCOBJS_TEVENTOBJECT:
	.byte	15,12
	.ascii	"TEventObject"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TEVENTOBJECT
_RTTI_SYNCOBJS_TEVENTOBJECT:
	.byte	15,12
	.ascii	"TEventObject"
	.long	_VMT_SYNCOBJS_TEVENTOBJECT
	.long	_RTTI_SYNCOBJS_THANDLEOBJECT
	.short	0
	.byte	8
	.ascii	"syncobjs"
	.short	0

.const_data
	.align 2
.globl	_$SYNCOBJS$_Ld14
_$SYNCOBJS$_Ld14:
	.short	0
	.long	_$SYNCOBJS$_Ld15
	.align 2
.globl	_$SYNCOBJS$_Ld15
_$SYNCOBJS$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_SYNCOBJS_TSIMPLEEVENT
_INIT_SYNCOBJS_TSIMPLEEVENT:
	.byte	15,12
	.ascii	"TSimpleEvent"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_SYNCOBJS_TSIMPLEEVENT
_RTTI_SYNCOBJS_TSIMPLEEVENT:
	.byte	15,12
	.ascii	"TSimpleEvent"
	.long	_VMT_SYNCOBJS_TSIMPLEEVENT
	.long	_RTTI_SYNCOBJS_TEVENTOBJECT
	.short	0
	.byte	8
	.ascii	"syncobjs"
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

