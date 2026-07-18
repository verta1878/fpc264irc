# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PIPES_CREATEPIPEHANDLES$LONGINT$LONGINT$LONGWORD$$BOOLEAN
_PIPES_CREATEPIPEHANDLES$LONGINT$LONGINT$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT$stub
	cmpl	$-1,%eax
	setneb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PIPES_TINPUTPIPESTREAM_$__GETNUMBYTESAVAILABLE$$LONGWORD
_PIPES_TINPUTPIPESTREAM_$__GETNUMBYTESAVAILABLE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	$1074030207,%edx
	call	LFPC_SYSC_IOCTL$stub
	cmpl	$0,%eax
	jl	Lj13
	jmp	Lj14
Lj13:
	movl	$0,-8(%ebp)
Lj14:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIPES_TINPUTPIPESTREAM_$__GETPOSITION$$INT64
_PIPES_TINPUTPIPESTREAM_$__GETPOSITION$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	12(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIPES_TINPUTPIPESTREAM_$__INVALIDSEEK
_PIPES_TINPUTPIPESTREAM_$__INVALIDSEEK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj28
Lj28:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_PIPES_EPIPESEEK$non_lazy_ptr-Lj28(%ebx),%edx
	movl	L_$PIPES$_Ld1$non_lazy_ptr-Lj28(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj28(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIPES_PIPECLOSE$LONGINT
_PIPES_PIPECLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_PIPES_CREATEPIPESTREAMS$TINPUTPIPESTREAM$TOUTPUTPIPESTREAM
_PIPES_CREATEPIPESTREAMS$TINPUTPIPESTREAM$TOUTPUTPIPESTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj40
Lj40:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	$1024,%ecx
	call	L_PIPES_CREATEPIPEHANDLES$LONGINT$LONGINT$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj41
	jmp	Lj42
Lj41:
	movl	-12(%ebp),%ecx
	movl	L_VMT_PIPES_TINPUTPIPESTREAM$non_lazy_ptr-Lj40(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-16(%ebp),%ecx
	movl	L_VMT_PIPES_TOUTPUTPIPESTREAM$non_lazy_ptr-Lj40(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj65
Lj42:
	movl	L_VMT_PIPES_EPIPECREATION$non_lazy_ptr-Lj40(%ebx),%edx
	movl	L_$PIPES$_Ld3$non_lazy_ptr-Lj40(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj40(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj65:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PIPES_TINPUTPIPESTREAM_$__DESTROY
_PIPES_TINPUTPIPESTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj74
	jmp	Lj75
Lj74:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj75:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
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
.globl	_PIPES_TINPUTPIPESTREAM_$__WRITE$formal$LONGINT$$LONGINT
_PIPES_TINPUTPIPESTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__WRITENOTIMPLEMENTED$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIPES_TINPUTPIPESTREAM_$__READ$formal$LONGINT$$LONGINT
_PIPES_TINPUTPIPESTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_THANDLESTREAM_$__READ$formal$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-12(%ebp),%ecx
	movl	8(%ecx),%esi
	movl	12(%ecx),%ebx
	addl	%edx,%esi
	adcl	%eax,%ebx
	movl	%esi,8(%ecx)
	movl	%ebx,12(%ecx)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PIPES_TINPUTPIPESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
_PIPES_TINPUTPIPESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64$stub
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIPES_TOUTPUTPIPESTREAM_$__DESTROY
_PIPES_TOUTPUTPIPESTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj121
	jmp	Lj122
Lj121:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj122:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_FILECLOSE$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj135
	jmp	Lj134
Lj135:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj133
	jmp	Lj134
Lj133:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj134:
	leave
	ret

.text
	.align 4
.globl	_PIPES_TOUTPUTPIPESTREAM_$__READ$formal$LONGINT$$LONGINT
_PIPES_TOUTPUTPIPESTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READNOTIMPLEMENTED$stub
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_PIPES_TOUTPUTPIPESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
_PIPES_TOUTPUTPIPESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*100(%edx)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$PIPES$_Ld5
_$PIPES$_Ld5:
	.byte	10
	.ascii	"EPipeError"

.const_data
	.align 2
.globl	_VMT_PIPES_EPIPEERROR
_VMT_PIPES_EPIPEERROR:
	.long	12,-12
	.long	_VMT_CLASSES_ESTREAMERROR
	.long	_$PIPES$_Ld5
	.long	0,0
	.long	_$PIPES$_Ld6
	.long	_RTTI_PIPES_EPIPEERROR
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
.globl	_$PIPES$_Ld8
_$PIPES$_Ld8:
	.byte	9
	.ascii	"EPipeSeek"

.const_data
	.align 2
.globl	_VMT_PIPES_EPIPESEEK
_VMT_PIPES_EPIPESEEK:
	.long	12,-12
	.long	_VMT_PIPES_EPIPEERROR
	.long	_$PIPES$_Ld8
	.long	0,0
	.long	_$PIPES$_Ld9
	.long	_RTTI_PIPES_EPIPESEEK
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
.globl	_$PIPES$_Ld11
_$PIPES$_Ld11:
	.byte	13
	.ascii	"EPipeCreation"

.const_data
	.align 2
.globl	_VMT_PIPES_EPIPECREATION
_VMT_PIPES_EPIPECREATION:
	.long	12,-12
	.long	_VMT_PIPES_EPIPEERROR
	.long	_$PIPES$_Ld11
	.long	0,0
	.long	_$PIPES$_Ld12
	.long	_RTTI_PIPES_EPIPECREATION
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
.globl	_$PIPES$_Ld14
_$PIPES$_Ld14:
	.byte	16
	.ascii	"TInputPipeStream"

.const_data
	.align 2
.globl	_VMT_PIPES_TINPUTPIPESTREAM
_VMT_PIPES_TINPUTPIPESTREAM:
	.long	16,-16
	.long	_VMT_CLASSES_THANDLESTREAM
	.long	_$PIPES$_Ld14
	.long	0,0
	.long	_$PIPES$_Ld15
	.long	_RTTI_PIPES_TINPUTPIPESTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_PIPES_TINPUTPIPESTREAM_$__DESTROY
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
	.long	_PIPES_TINPUTPIPESTREAM_$__INVALIDSEEK
	.long	_PIPES_TINPUTPIPESTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_THANDLESTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_THANDLESTREAM_$__SETSIZE$INT64
	.long	_PIPES_TINPUTPIPESTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_PIPES_TINPUTPIPESTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_PIPES_TINPUTPIPESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$PIPES$_Ld17
_$PIPES$_Ld17:
	.byte	17
	.ascii	"TOutputPipeStream"

.const_data
	.align 2
.globl	_VMT_PIPES_TOUTPUTPIPESTREAM
_VMT_PIPES_TOUTPUTPIPESTREAM:
	.long	8,-8
	.long	_VMT_CLASSES_THANDLESTREAM
	.long	_$PIPES$_Ld17
	.long	0,0
	.long	_$PIPES$_Ld18
	.long	_RTTI_PIPES_TOUTPUTPIPESTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_PIPES_TOUTPUTPIPESTREAM_$__DESTROY
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_THANDLESTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_THANDLESTREAM_$__SETSIZE$INT64
	.long	_PIPES_TOUTPUTPIPESTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_THANDLESTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_PIPES_TOUTPUTPIPESTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_PIPES
_THREADVARLIST_PIPES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$PIPES$_Ld2
_$PIPES$_Ld2:
	.short	0,1
	.long	0,-1,20
.reference _$PIPES$_Ld1
.globl	_$PIPES$_Ld1
_$PIPES$_Ld1:
.reference _$PIPES$_Ld2
	.ascii	"Cannot seek on pipes\000"

.const_data
	.align 2
.globl	_$PIPES$_Ld4
_$PIPES$_Ld4:
	.short	0,1
	.long	0,-1,22
.reference _$PIPES$_Ld3
.globl	_$PIPES$_Ld3
_$PIPES$_Ld3:
.reference _$PIPES$_Ld4
	.ascii	"Failed to create pipe.\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_ASSIGNPIPE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_IOCTL$stub:
.indirect_symbol FPC_SYSC_IOCTL
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

L_CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM$stub:
.indirect_symbol _CLASSES_THANDLESTREAM_$__CREATE$LONGINT$$THANDLESTREAM
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

L_CLASSES_TSTREAM_$__WRITENOTIMPLEMENTED$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITENOTIMPLEMENTED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_THANDLESTREAM_$__READ$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _CLASSES_THANDLESTREAM_$__READ$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__FAKESEEKFORWARD$INT64$TSEEKORIGIN$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READNOTIMPLEMENTED$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READNOTIMPLEMENTED
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
.globl	_$PIPES$_Ld6
_$PIPES$_Ld6:
	.short	0
	.long	_$PIPES$_Ld7
	.align 2
.globl	_$PIPES$_Ld7
_$PIPES$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_PIPES_EPIPEERROR
_INIT_PIPES_EPIPEERROR:
	.byte	15,10
	.ascii	"EPipeError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PIPES_EPIPEERROR
_RTTI_PIPES_EPIPEERROR:
	.byte	15,10
	.ascii	"EPipeError"
	.long	_VMT_PIPES_EPIPEERROR
	.long	_RTTI_CLASSES_ESTREAMERROR
	.short	0
	.byte	5
	.ascii	"Pipes"
	.short	0

.const_data
	.align 2
.globl	_$PIPES$_Ld9
_$PIPES$_Ld9:
	.short	0
	.long	_$PIPES$_Ld10
	.align 2
.globl	_$PIPES$_Ld10
_$PIPES$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_PIPES_EPIPESEEK
_INIT_PIPES_EPIPESEEK:
	.byte	15,9
	.ascii	"EPipeSeek"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PIPES_EPIPESEEK
_RTTI_PIPES_EPIPESEEK:
	.byte	15,9
	.ascii	"EPipeSeek"
	.long	_VMT_PIPES_EPIPESEEK
	.long	_RTTI_PIPES_EPIPEERROR
	.short	0
	.byte	5
	.ascii	"Pipes"
	.short	0

.const_data
	.align 2
.globl	_$PIPES$_Ld12
_$PIPES$_Ld12:
	.short	0
	.long	_$PIPES$_Ld13
	.align 2
.globl	_$PIPES$_Ld13
_$PIPES$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_PIPES_EPIPECREATION
_INIT_PIPES_EPIPECREATION:
	.byte	15,13
	.ascii	"EPipeCreation"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PIPES_EPIPECREATION
_RTTI_PIPES_EPIPECREATION:
	.byte	15,13
	.ascii	"EPipeCreation"
	.long	_VMT_PIPES_EPIPECREATION
	.long	_RTTI_PIPES_EPIPEERROR
	.short	0
	.byte	5
	.ascii	"Pipes"
	.short	0

.const_data
	.align 2
.globl	_$PIPES$_Ld15
_$PIPES$_Ld15:
	.short	0
	.long	_$PIPES$_Ld16
	.align 2
.globl	_$PIPES$_Ld16
_$PIPES$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_PIPES_TINPUTPIPESTREAM
_INIT_PIPES_TINPUTPIPESTREAM:
	.byte	15,16
	.ascii	"TInputPipeStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PIPES_TINPUTPIPESTREAM
_RTTI_PIPES_TINPUTPIPESTREAM:
	.byte	15,16
	.ascii	"TInputPipeStream"
	.long	_VMT_PIPES_TINPUTPIPESTREAM
	.long	_RTTI_CLASSES_THANDLESTREAM
	.short	0
	.byte	5
	.ascii	"Pipes"
	.short	0

.const_data
	.align 2
.globl	_$PIPES$_Ld18
_$PIPES$_Ld18:
	.short	0
	.long	_$PIPES$_Ld19
	.align 2
.globl	_$PIPES$_Ld19
_$PIPES$_Ld19:
	.short	0

.const_data
	.align 2
.globl	_INIT_PIPES_TOUTPUTPIPESTREAM
_INIT_PIPES_TOUTPUTPIPESTREAM:
	.byte	15,17
	.ascii	"TOutputPipeStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_PIPES_TOUTPUTPIPESTREAM
_RTTI_PIPES_TOUTPUTPIPESTREAM:
	.byte	15,17
	.ascii	"TOutputPipeStream"
	.long	_VMT_PIPES_TOUTPUTPIPESTREAM
	.long	_RTTI_CLASSES_THANDLESTREAM
	.short	0
	.byte	5
	.ascii	"Pipes"
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
L_VMT_PIPES_EPIPESEEK$non_lazy_ptr:
.indirect_symbol _VMT_PIPES_EPIPESEEK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PIPES$_Ld1$non_lazy_ptr:
.indirect_symbol _$PIPES$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PIPES_TINPUTPIPESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_PIPES_TINPUTPIPESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PIPES_TOUTPUTPIPESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_PIPES_TOUTPUTPIPESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PIPES_EPIPECREATION$non_lazy_ptr:
.indirect_symbol _VMT_PIPES_EPIPECREATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PIPES$_Ld3$non_lazy_ptr:
.indirect_symbol _$PIPES$_Ld3
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

