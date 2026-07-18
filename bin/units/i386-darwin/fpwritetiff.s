# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITETIFF_COMPARETIFFWRITEENTRIES$POINTER$POINTER$$LONGINT
_FPWRITETIFF_COMPARETIFFWRITEENTRIES$POINTER$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	4(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_COMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN
_FPWRITETIFF_COMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-328(%ebp)
	movl	%esi,-324(%ebp)
	movl	%edi,-320(%ebp)
	call	Lj8
Lj8:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj13
	jmp	Lj14
Lj13:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj7
Lj14:
	leal	-312(%ebp),%eax
	movl	$-1,%edx
	call	L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj27
	jmp	Lj28
Lj27:
	movl	L_$FPWRITETIFF$_Ld1$non_lazy_ptr-Lj8(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj28:
	jmp	Lj7
Lj26:
	movl	-8(%ebp),%eax
	movl	%eax,-308(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-312(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj35
	jmp	Lj36
Lj35:
	movl	12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj36:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-296(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-300(%ebp)
	leal	-312(%ebp),%eax
	movl	$0,%edx
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj53
	jmp	Lj54
Lj53:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	L_$FPWRITETIFF$_Ld3$non_lazy_ptr-Lj8(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj56:
	jmp	Lj7
Lj54:
	jmp	Lj60
	.align 2
Lj59:
	movl	-296(%ebp),%eax
	testl	%eax,%eax
	je	Lj62
	jmp	Lj63
Lj62:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$128,%eax
	jb	Lj64
	jmp	Lj65
Lj64:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	addl	$128,%edx
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj68
Lj65:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1025,%eax
	ja	Lj69
	jmp	Lj70
Lj69:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj71
	jmp	Lj72
Lj71:
	movl	L_$FPWRITETIFF$_Ld5$non_lazy_ptr-Lj8(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj72:
	jmp	Lj7
	jmp	Lj75
Lj70:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	addl	$1024,%eax
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
Lj75:
Lj68:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-292(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-300(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-292(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-296(%ebp)
Lj63:
	leal	-312(%ebp),%eax
	movl	$4,%edx
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	cmpl	$1,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	jmp	Lj61
Lj93:
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj94
	jmp	Lj95
Lj94:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj96
	jmp	Lj97
Lj96:
	movl	L_$FPWRITETIFF$_Ld7$non_lazy_ptr-Lj8(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj97:
	jmp	Lj7
Lj95:
Lj60:
	jmp	Lj59
Lj61:
	movl	12(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leal	-312(%ebp),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj110
	jmp	Lj111
Lj110:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj112
	jmp	Lj113
Lj112:
	movl	L_$FPWRITETIFF$_Ld9$non_lazy_ptr-Lj8(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj113:
	jmp	Lj7
Lj111:
	movb	$1,-13(%ebp)
Lj7:
	movb	-13(%ebp),%al
	movl	-328(%ebp),%ebx
	movl	-324(%ebp),%esi
	movl	-320(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj120
	jmp	Lj121
Lj120:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movw	-4(%ebp),%dx
	call	L_CLASSES_TSTREAM_$__WRITEWORD$WORD$stub
Lj121:
	movl	-8(%ebp),%eax
	addl	$2,40(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj128
	jmp	Lj129
Lj128:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__WRITEDWORD$LONGWORD$stub
Lj129:
	movl	-8(%ebp),%eax
	addl	$4,40(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__CLEARENTRIES
_FPWRITETIFF_TFPWRITERTIFF_$__CLEARENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj137
	incl	-8(%ebp)
	.align 2
Lj138:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj146
	incl	-16(%ebp)
	.align 2
Lj147:
	decl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-16(%ebp)
	jg	Lj147
Lj146:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-8(%ebp)
	jg	Lj138
Lj137:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_CLASSES_TFPLIST_$__CLEAR$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITETIFF
_FPWRITETIFF_TFPWRITERTIFF_$__WRITETIFF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,40(%eax)
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEHEADER$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEIFDS$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEHEADER
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj171
Lj171:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj172
	movl	L_$FPWRITETIFF$_Ld11$non_lazy_ptr-Lj171(%esi),%ebx
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,-8(%ebp)
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD$stub
	movl	-4(%ebp),%eax
	movw	$42,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD$stub
	movl	-4(%ebp),%eax
	movl	$8,%edx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD$stub
Lj172:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj173
	call	LFPC_RERAISE$stub
Lj173:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEIFDS
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEIFDS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj202
	decl	-8(%ebp)
	.align 2
Lj203:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movw	8(%eax),%dx
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj215
	decl	-16(%ebp)
	.align 2
Lj216:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRY$TTIFFWRITERENTRY$stub
	cmpl	-16(%ebp),%esi
	jg	Lj216
Lj215:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	cmpl	-8(%ebp),%eax
	jg	Lj227
	jmp	Lj228
Lj227:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	addl	$4,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj231
Lj228:
	movl	$0,-24(%ebp)
Lj231:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj203
Lj202:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRY$TTIFFWRITERENTRY
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRY$TTIFFWRITERENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD$stub
	movl	-4(%ebp),%eax
	movw	6(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$4,%eax
	jbe	Lj252
	jmp	Lj253
Lj252:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$0,%eax
	ja	Lj254
	jmp	Lj255
Lj254:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD$stub
Lj255:
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	$4,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD$stub
	jmp	Lj270
Lj253:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD$stub
Lj270:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDATA
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj276
Lj276:
	popl	-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj278
	decl	-8(%ebp)
	.align 2
Lj279:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%esi
	decl	%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj287
	decl	-16(%ebp)
	.align 2
Lj288:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRYDATA$TTIFFWRITERENTRY$stub
	cmpl	-16(%ebp),%esi
	jg	Lj288
Lj287:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj300
	decl	-16(%ebp)
	.align 2
Lj301:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	L_VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS$non_lazy_ptr-Lj276(%eax),%ecx
	movl	%ecx,%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj308
	jmp	Lj309
Lj308:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%edi
	jl	Lj317
	decl	-28(%ebp)
	.align 2
Lj318:
	incl	-28(%ebp)
	movl	-24(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,(%ecx,%edx,4)
	movl	-24(%ebp),%eax
	movl	24(%eax),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	movl	28(%eax),%eax
	movl	12(%eax),%eax
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj325
	jmp	Lj326
Lj325:
	movl	-24(%ebp),%eax
	movl	24(%eax),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,8),%edx
	movl	-32(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD$stub
Lj326:
	cmpl	-28(%ebp),%edi
	jg	Lj318
Lj317:
Lj309:
	cmpl	-16(%ebp),%esi
	jg	Lj301
Lj300:
	cmpl	-8(%ebp),%ebx
	jg	Lj279
Lj278:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRYDATA$TTIFFWRITERENTRY
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRYDATA$TTIFFWRITERENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$4,%eax
	ja	Lj335
	jmp	Lj336
Lj335:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD$stub
Lj336:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD
_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj347
	jmp	Lj348
Lj347:
	jmp	Lj345
Lj348:
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj349
	jmp	Lj350
Lj349:
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	36(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj350:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,40(%eax)
Lj345:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDIMAGE$TFPCUSTOMIMAGE
_FPWRITETIFF_TFPWRITERTIFF_$__ADDIMAGE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-304(%ebp)
	movl	%esi,-300(%ebp)
	movl	%edi,-296(%ebp)
	call	Lj358
Lj358:
	popl	-292(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-280(%ebp)
	movl	$0,-264(%ebp)
	leal	-192(%ebp),%ecx
	leal	-216(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-220(%ebp)
	testl	%eax,%eax
	jne	Lj359
	movl	$0,-80(%ebp)
	movl	$0,-92(%ebp)
	movl	-292(%ebp),%eax
	movl	L_VMT_FPTIFFCMN_TTIFFIFD$non_lazy_ptr-Lj358(%eax),%edx
	movl	$0,%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD$stub
	movl	%eax,-12(%ebp)
	leal	-232(%ebp),%ecx
	leal	-256(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-260(%ebp)
	testl	%eax,%eax
	jne	Lj372
	movl	-292(%ebp),%eax
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj358(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-136(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-136(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__READFPIMGEXTRAS$TFPCUSTOMIMAGE$stub
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj392
	jmp	Lj391
Lj392:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$5,%eax
	je	Lj390
	jmp	Lj391
Lj390:
	movl	-12(%ebp),%eax
	movl	$2,104(%eax)
Lj391:
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	cmpl	$3,%eax
	jb	Lj397
Lj397:
	jnc	Lj395
	jmp	Lj396
Lj395:
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld13$non_lazy_ptr-Lj358(%edx),%eax
	movl	%eax,-276(%ebp)
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-280(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld15$non_lazy_ptr-Lj358(%edx),%ebx
	movl	%ebx,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	%eax,-272(%ebp)
	movl	-292(%ebp),%eax
	movl	L_$FPWRITETIFF$_Ld17$non_lazy_ptr-Lj358(%eax),%edx
	movl	%edx,-268(%ebp)
	leal	-276(%ebp),%edx
	leal	-264(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj396:
	movw	$0,-14(%ebp)
	movw	$0,-16(%ebp)
	movw	$0,-18(%ebp)
	movw	$0,-20(%ebp)
	movw	$0,-22(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	subl	$1,%eax
	jbe	Lj426
	decl	%eax
	je	Lj427
	jmp	Lj425
Lj426:
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-280(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld19$non_lazy_ptr-Lj358(%edx),%ebx
	movl	%ebx,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	$8,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	movw	%ax,-42(%ebp)
	movl	$1,-48(%ebp)
	jmp	Lj424
Lj427:
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-280(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld21$non_lazy_ptr-Lj358(%edx),%ebx
	movl	%ebx,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	$8,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movw	%ax,-16(%ebp)
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-280(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld23$non_lazy_ptr-Lj358(%edx),%ebx
	movl	%ebx,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	$8,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movw	%ax,-18(%ebp)
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-280(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld25$non_lazy_ptr-Lj358(%edx),%ebx
	movl	%ebx,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	$8,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movw	%ax,-20(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-42(%ebp)
	movw	-18(%ebp),%ax
	movw	%ax,-40(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-38(%ebp)
	movl	$3,-48(%ebp)
	jmp	Lj424
Lj425:
Lj424:
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-280(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	L_$FPWRITETIFF$_Ld27$non_lazy_ptr-Lj358(%edx),%ebx
	movl	%ebx,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	$8,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movw	%ax,-22(%ebp)
	movzwl	-22(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj500
	jmp	Lj501
Lj500:
	movl	-48(%ebp),%eax
	movw	-22(%ebp),%dx
	movw	%dx,-42(%ebp,%eax,2)
	incl	-48(%ebp)
Lj501:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movw	36(%eax),%ax
	movw	%ax,-34(%ebp)
	movw	-34(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj511
	decw	%ax
	je	Lj512
	subw	$32945,%ax
	je	Lj512
	jmp	Lj511
Lj512:
	jmp	Lj510
Lj511:
	movw	$32946,-34(%ebp)
Lj510:
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	decl	%eax
	cmpl	$4,%eax
	jb	Lj517
Lj517:
	jc	Lj515
	jmp	Lj516
Lj515:
	movl	-28(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-64(%ebp)
	jmp	Lj522
Lj516:
	movl	-32(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj522:
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	$256,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD$stub
	movl	-32(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	$257,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD$stub
	movw	-34(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$259,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
	movl	-12(%ebp),%eax
	movw	104(%eax),%cx
	movl	-8(%ebp),%eax
	movw	$262,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
	movl	-12(%ebp),%eax
	movw	92(%eax),%cx
	movl	-8(%ebp),%eax
	movw	$274,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
	movl	-12(%ebp),%eax
	movw	112(%eax),%cx
	movl	-8(%ebp),%eax
	movw	$296,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
	movl	-12(%ebp),%eax
	leal	156(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$282,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYRATIONAL$WORD$TTIFFRATIONAL$stub
	movl	-12(%ebp),%eax
	leal	164(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$283,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYRATIONAL$WORD$TTIFFRATIONAL$stub
	movzwl	-22(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj575
	jmp	Lj576
Lj575:
	movl	-8(%ebp),%eax
	movw	$2,%cx
	movw	$338,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
Lj576:
	movb	$1,(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-48(%ebp),%eax
	shll	$1,%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movw	$3,%cx
	movw	$258,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
	movw	-48(%ebp),%cx
	movl	-8(%ebp),%eax
	movw	$277,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	decl	%eax
	movl	$0,-56(%ebp)
	cmpl	-56(%ebp),%eax
	jl	Lj606
	decl	-56(%ebp)
	.align 2
Lj607:
	incl	-56(%ebp)
	movl	-56(%ebp),%edx
	movzwl	-42(%ebp,%edx,2),%edx
	addl	%edx,-52(%ebp)
	cmpl	-56(%ebp),%eax
	jg	Lj607
Lj606:
	movl	-60(%ebp),%eax
	mull	-52(%ebp)
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-68(%ebp)
	movl	$0,-148(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,78(%eax)
	jne	Lj612
	jmp	Lj613
Lj612:
	incl	-148(%ebp)
Lj613:
	movl	-12(%ebp),%eax
	cmpb	$0,77(%eax)
	jne	Lj614
	jmp	Lj615
Lj614:
	addl	$2,-148(%ebp)
Lj615:
	movl	-12(%ebp),%eax
	cmpb	$0,76(%eax)
	jne	Lj616
	jmp	Lj617
Lj616:
	addl	$4,-148(%ebp)
Lj617:
	movl	-148(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj618
	jmp	Lj619
Lj618:
	movl	-148(%ebp),%ecx
	movl	-8(%ebp),%eax
	movw	$254,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYLONG$WORD$LONGWORD$stub
Lj619:
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	jne	Lj626
	jmp	Lj627
Lj626:
	movl	-12(%ebp),%eax
	movl	52(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$269,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj627:
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	jne	Lj634
	jmp	Lj635
Lj634:
	movl	-12(%ebp),%eax
	movl	68(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$270,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj635:
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	jne	Lj642
	jmp	Lj643
Lj642:
	movl	-12(%ebp),%eax
	movl	84(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$271,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj643:
	movl	-12(%ebp),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	jne	Lj650
	jmp	Lj651
Lj650:
	movl	-12(%ebp),%eax
	movl	88(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$272,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj651:
	movl	-12(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	jne	Lj658
	jmp	Lj659
Lj658:
	movl	-12(%ebp),%eax
	movl	124(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$305,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj659:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj666
	jmp	Lj667
Lj666:
	movl	-12(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$306,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj667:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj674
	jmp	Lj675
Lj674:
	movl	-12(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$315,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj675:
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	jne	Lj682
	jmp	Lj683
Lj682:
	movl	-12(%ebp),%eax
	movl	64(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$316,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj683:
	movl	-12(%ebp),%eax
	movzwl	98(%eax),%eax
	cmpl	$0,%eax
	jg	Lj690
	jmp	Lj691
Lj690:
	movl	-12(%ebp),%eax
	movw	96(%eax),%ax
	movw	%ax,-144(%ebp)
	movl	-12(%ebp),%eax
	movw	98(%eax),%ax
	movw	%ax,-142(%ebp)
	movb	$1,(%esp)
	movl	$4,4(%esp)
	movl	$2,12(%esp)
	leal	-144(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movw	$3,%cx
	movw	$297,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
Lj691:
	movl	-12(%ebp),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj710
	jmp	Lj711
Lj710:
	movl	-12(%ebp),%eax
	movl	100(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$285,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj711:
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj718
	jmp	Lj719
Lj718:
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$33432,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub
Lj719:
	movl	$0,-72(%ebp)
	movl	-12(%ebp),%eax
	movl	136(%eax),%eax
	cmpl	$0,%eax
	ja	Lj728
	jmp	Lj729
Lj728:
	movl	-12(%ebp),%eax
	movl	136(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$322,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	140(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$323,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD$stub
	movl	$1,-72(%ebp)
	jmp	Lj744
Lj729:
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj745
	jmp	Lj746
Lj745:
	movl	-12(%ebp),%eax
	movl	$8,116(%eax)
	jmp	Lj749
Lj746:
	movl	$8192,%eax
	xorl	%edx,%edx
	divl	-68(%ebp)
	movl	-12(%ebp),%edx
	movl	%eax,116(%edx)
Lj749:
	movl	-12(%ebp),%eax
	movl	116(%eax),%eax
	cmpl	$1,%eax
	jb	Lj752
	jmp	Lj753
Lj752:
	movl	-12(%ebp),%eax
	movl	$1,116(%eax)
Lj753:
	movl	-12(%ebp),%eax
	movl	116(%eax),%ecx
	movl	-8(%ebp),%eax
	movw	$278,%dx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD$stub
Lj744:
	movl	-72(%ebp),%ecx
	movl	-292(%ebp),%eax
	movl	L_VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS$non_lazy_ptr-Lj358(%eax),%edx
	movl	$0,%eax
	call	L_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__CREATE$TTIFFCHUNKTYPE$$TTIFFWRITERCHUNKOFFSETS$stub
	movl	%eax,-80(%ebp)
	movl	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY$stub
	movl	-80(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY$stub
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj780
	jmp	Lj779
Lj780:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj778
	jmp	Lj779
Lj778:
	movl	-72(%ebp),%eax
	cmpl	$1,%eax
	je	Lj781
	jmp	Lj782
Lj781:
	movl	-12(%ebp),%eax
	movl	136(%eax),%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-12(%ebp),%ecx
	xorl	%edx,%edx
	divl	136(%ecx)
	movl	%eax,-112(%ebp)
	movl	-12(%ebp),%eax
	movl	140(%eax),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-12(%ebp),%ecx
	xorl	%edx,%edx
	divl	140(%ecx)
	movl	%eax,-116(%ebp)
	movl	-116(%ebp),%eax
	mull	-112(%ebp)
	movl	%eax,-76(%ebp)
	jmp	Lj789
Lj782:
	movl	-12(%ebp),%eax
	movl	116(%eax),%eax
	movl	-64(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-12(%ebp),%ecx
	xorl	%edx,%edx
	divl	116(%ecx)
	movl	%eax,-76(%ebp)
Lj789:
	movl	-76(%ebp),%edx
	movl	-80(%ebp),%eax
	call	L_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__SETCOUNT$LONGWORD$stub
	movl	-76(%ebp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-84(%ebp)
	cmpl	-84(%ebp),%edi
	jb	Lj797
	decl	-84(%ebp)
	.align 2
Lj798:
	incl	-84(%ebp)
	movl	-72(%ebp),%eax
	cmpl	$1,%eax
	je	Lj799
	jmp	Lj800
Lj799:
	movl	-84(%ebp),%eax
	xorl	%edx,%edx
	divl	-112(%ebp)
	movl	-12(%ebp),%eax
	movl	136(%eax),%eax
	mull	%edx
	movl	%eax,-96(%ebp)
	movl	-84(%ebp),%eax
	xorl	%edx,%edx
	divl	-112(%ebp)
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	140(%eax),%eax
	mull	%edx
	movl	%eax,-100(%ebp)
	movl	-60(%ebp),%ecx
	movl	$0,%ebx
	movl	-96(%ebp),%edx
	movl	$0,%eax
	subl	%edx,%ecx
	sbbl	%eax,%ebx
	movl	%ecx,-272(%ebp)
	movl	%ebx,-268(%ebp)
	movl	-12(%ebp),%eax
	movl	136(%eax),%eax
	movl	$0,%edx
	movl	%eax,-288(%ebp)
	movl	%edx,-284(%ebp)
	movl	-288(%ebp),%eax
	movl	-284(%ebp),%edx
	cmpl	-268(%ebp),%edx
	jl	Lj811
	jg	Lj812
	cmpl	-272(%ebp),%eax
	jb	Lj811
	jmp	Lj812
	jmp	Lj812
Lj811:
	movl	-288(%ebp),%edx
	movl	-284(%ebp),%eax
	jmp	Lj815
Lj812:
	movl	-272(%ebp),%edx
	movl	-268(%ebp),%eax
Lj815:
	movl	%edx,-104(%ebp)
	movl	-64(%ebp),%ecx
	movl	$0,%eax
	movl	-100(%ebp),%ebx
	movl	$0,%edx
	subl	%ebx,%ecx
	sbbl	%edx,%eax
	movl	%ecx,-288(%ebp)
	movl	%eax,-284(%ebp)
	movl	-12(%ebp),%eax
	movl	140(%eax),%edx
	movl	$0,%eax
	movl	%edx,-272(%ebp)
	movl	%eax,-268(%ebp)
	movl	-272(%ebp),%eax
	movl	-268(%ebp),%edx
	cmpl	-284(%ebp),%edx
	jl	Lj824
	jg	Lj825
	cmpl	-288(%ebp),%eax
	jb	Lj824
	jmp	Lj825
	jmp	Lj825
Lj824:
	movl	-272(%ebp),%edx
	movl	-268(%ebp),%eax
	jmp	Lj828
Lj825:
	movl	-288(%ebp),%edx
	movl	-284(%ebp),%eax
Lj828:
	movl	%edx,-108(%ebp)
	movl	-12(%ebp),%edx
	movl	-52(%ebp),%eax
	mull	136(%edx)
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-180(%ebp)
	movl	-12(%ebp),%edx
	movl	-180(%ebp),%eax
	mull	140(%edx)
	movl	%eax,-88(%ebp)
	jmp	Lj835
Lj800:
	movl	$0,-96(%ebp)
	movl	-12(%ebp),%edx
	movl	-84(%ebp),%eax
	mull	116(%edx)
	movl	%eax,-100(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	-64(%ebp),%ecx
	movl	$0,%ebx
	movl	-100(%ebp),%edx
	movl	$0,%eax
	subl	%edx,%ecx
	sbbl	%eax,%ebx
	movl	%ecx,-288(%ebp)
	movl	%ebx,-284(%ebp)
	movl	-12(%ebp),%eax
	movl	116(%eax),%eax
	movl	$0,%edx
	movl	%eax,-272(%ebp)
	movl	%edx,-268(%ebp)
	movl	-272(%ebp),%eax
	movl	-268(%ebp),%edx
	cmpl	-284(%ebp),%edx
	jl	Lj848
	jg	Lj849
	cmpl	-288(%ebp),%eax
	jb	Lj848
	jmp	Lj849
	jmp	Lj849
Lj848:
	movl	-272(%ebp),%edx
	movl	-268(%ebp),%eax
	jmp	Lj852
Lj849:
	movl	-288(%ebp),%edx
	movl	-284(%ebp),%eax
Lj852:
	movl	%edx,-108(%ebp)
	movl	-68(%ebp),%eax
	movl	%eax,-180(%ebp)
	movl	-108(%ebp),%eax
	mull	-180(%ebp)
	movl	%eax,-88(%ebp)
Lj835:
	movl	-88(%ebp),%edx
	leal	-92(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-92(%ebp),%eax
	movl	-88(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	decl	%eax
	cmpl	$4,%eax
	jb	Lj871
Lj871:
	jc	Lj869
	jmp	Lj870
Lj869:
	movl	-96(%ebp),%eax
	movl	%eax,-160(%ebp)
	movl	-100(%ebp),%eax
	movl	%eax,-164(%ebp)
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	$1,%eax
	jb	Lj877
	decl	%eax
	je	Lj878
	decl	%eax
	je	Lj879
	decl	%eax
	je	Lj880
	decl	%eax
	je	Lj881
	jmp	Lj877
Lj878:
	movl	$1,-172(%ebp)
	movl	$1,-176(%ebp)
	jmp	Lj876
Lj879:
	movl	-60(%ebp),%edx
	movl	-160(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-160(%ebp)
	movl	$-1,-172(%ebp)
	movl	$1,-176(%ebp)
	jmp	Lj876
Lj880:
	movl	-60(%ebp),%edx
	movl	-160(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-160(%ebp)
	movl	$-1,-172(%ebp)
	movl	-64(%ebp),%edx
	movl	-164(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-164(%ebp)
	movl	$-1,-176(%ebp)
	jmp	Lj876
Lj881:
	movl	$1,-172(%ebp)
	movl	-64(%ebp),%edx
	movl	-164(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-164(%ebp)
	movl	$-1,-176(%ebp)
	jmp	Lj876
Lj877:
Lj876:
	jmp	Lj906
Lj870:
	movl	-100(%ebp),%eax
	movl	%eax,-160(%ebp)
	movl	-96(%ebp),%eax
	movl	%eax,-164(%ebp)
	movl	-12(%ebp),%eax
	movl	92(%eax),%eax
	cmpl	$5,%eax
	jb	Lj912
	subl	$5,%eax
	je	Lj913
	decl	%eax
	je	Lj914
	decl	%eax
	je	Lj915
	decl	%eax
	je	Lj916
	jmp	Lj912
Lj913:
	movl	$1,-172(%ebp)
	movl	$1,-176(%ebp)
	jmp	Lj911
Lj914:
	movl	$1,-172(%ebp)
	movl	-60(%ebp),%edx
	movl	-164(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-164(%ebp)
	movl	$-1,-176(%ebp)
	jmp	Lj911
Lj915:
	movl	-64(%ebp),%edx
	movl	-160(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-160(%ebp)
	movl	$-1,-172(%ebp)
	movl	-60(%ebp),%eax
	movl	-164(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-164(%ebp)
	movl	$-1,-176(%ebp)
	jmp	Lj911
Lj916:
	movl	-64(%ebp),%edx
	movl	-160(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-160(%ebp)
	movl	$-1,-172(%ebp)
	movl	$1,-176(%ebp)
	jmp	Lj911
Lj912:
Lj911:
Lj906:
	movl	-160(%ebp),%eax
	movl	%eax,-168(%ebp)
	movl	-108(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-156(%ebp)
	cmpl	-156(%ebp),%ebx
	jb	Lj944
	decl	-156(%ebp)
	.align 2
Lj945:
	incl	-156(%ebp)
	movl	-168(%ebp),%eax
	movl	%eax,-160(%ebp)
	movl	-180(%ebp),%eax
	mull	-156(%ebp)
	movl	-92(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-120(%ebp)
	movl	-104(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-152(%ebp)
	cmpl	-152(%ebp),%esi
	jb	Lj951
	decl	-152(%ebp)
	.align 2
Lj952:
	incl	-152(%ebp)
	movl	-164(%ebp),%ecx
	movl	-160(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-288(%ebp)
	movl	%edx,-284(%ebp)
	movl	-288(%ebp),%eax
	movl	%eax,-128(%ebp)
	movl	-284(%ebp),%eax
	movl	%eax,-124(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	subl	$1,%eax
	jbe	Lj963
	decl	%eax
	je	Lj964
	jmp	Lj962
Lj963:
	movzwl	-128(%ebp),%edx
	movzwl	-126(%ebp),%eax
	addl	%eax,%edx
	movzwl	-124(%ebp),%eax
	addl	%eax,%edx
	movl	$-1431655765,%eax
	mull	%edx
	shrl	$1,%edx
	movl	%edx,-132(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	testl	%eax,%eax
	je	Lj967
	jmp	Lj968
Lj967:
	movl	-132(%ebp),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-132(%ebp)
Lj968:
	movzwl	-14(%ebp),%eax
	cmpl	$8,%eax
	je	Lj971
	jmp	Lj972
Lj971:
	movl	-132(%ebp),%eax
	shrl	$8,%eax
	movl	-120(%ebp),%edx
	movb	%al,(%edx)
	incl	-120(%ebp)
	jmp	Lj975
Lj972:
	movzwl	-14(%ebp),%eax
	cmpl	$16,%eax
	je	Lj976
	jmp	Lj977
Lj976:
	movl	-120(%ebp),%eax
	movw	-132(%ebp),%dx
	movw	%dx,(%eax)
	addl	$2,-120(%ebp)
Lj977:
Lj975:
	movzwl	-22(%ebp),%eax
	cmpl	$8,%eax
	je	Lj980
	jmp	Lj981
Lj980:
	movzwl	-122(%ebp),%eax
	shrl	$8,%eax
	movl	-120(%ebp),%edx
	movb	%al,(%edx)
	incl	-120(%ebp)
	jmp	Lj984
Lj981:
	movzwl	-22(%ebp),%eax
	cmpl	$16,%eax
	je	Lj985
	jmp	Lj986
Lj985:
	movl	-120(%ebp),%eax
	movw	-122(%ebp),%dx
	movw	%dx,(%eax)
	addl	$2,-120(%ebp)
Lj986:
Lj984:
	jmp	Lj961
Lj964:
	movzwl	-16(%ebp),%eax
	cmpl	$8,%eax
	je	Lj989
	jmp	Lj990
Lj989:
	movzwl	-128(%ebp),%eax
	shrl	$8,%eax
	movl	-120(%ebp),%edx
	movb	%al,(%edx)
	incl	-120(%ebp)
	jmp	Lj993
Lj990:
	movzwl	-16(%ebp),%eax
	cmpl	$16,%eax
	je	Lj994
	jmp	Lj995
Lj994:
	movl	-120(%ebp),%eax
	movw	-128(%ebp),%dx
	movw	%dx,(%eax)
	addl	$2,-120(%ebp)
Lj995:
Lj993:
	movzwl	-18(%ebp),%eax
	cmpl	$8,%eax
	je	Lj998
	jmp	Lj999
Lj998:
	movzwl	-126(%ebp),%eax
	shrl	$8,%eax
	movl	-120(%ebp),%edx
	movb	%al,(%edx)
	incl	-120(%ebp)
	jmp	Lj1002
Lj999:
	movzwl	-18(%ebp),%eax
	cmpl	$16,%eax
	je	Lj1003
	jmp	Lj1004
Lj1003:
	movl	-120(%ebp),%edx
	movw	-126(%ebp),%ax
	movw	%ax,(%edx)
	addl	$2,-120(%ebp)
Lj1004:
Lj1002:
	movzwl	-20(%ebp),%eax
	cmpl	$8,%eax
	je	Lj1007
	jmp	Lj1008
Lj1007:
	movzwl	-124(%ebp),%eax
	shrl	$8,%eax
	movl	-120(%ebp),%edx
	movb	%al,(%edx)
	incl	-120(%ebp)
	jmp	Lj1011
Lj1008:
	movzwl	-20(%ebp),%eax
	cmpl	$16,%eax
	je	Lj1012
	jmp	Lj1013
Lj1012:
	movl	-120(%ebp),%eax
	movw	-124(%ebp),%dx
	movw	%dx,(%eax)
	addl	$2,-120(%ebp)
Lj1013:
Lj1011:
	movzwl	-22(%ebp),%eax
	cmpl	$8,%eax
	je	Lj1016
	jmp	Lj1017
Lj1016:
	movzwl	-122(%ebp),%eax
	shrl	$8,%eax
	movl	-120(%ebp),%edx
	movb	%al,(%edx)
	incl	-120(%ebp)
	jmp	Lj1020
Lj1017:
	movzwl	-22(%ebp),%eax
	cmpl	$16,%eax
	je	Lj1021
	jmp	Lj1022
Lj1021:
	movl	-120(%ebp),%eax
	movw	-122(%ebp),%dx
	movw	%dx,(%eax)
	addl	$2,-120(%ebp)
Lj1022:
Lj1020:
	jmp	Lj961
Lj962:
Lj961:
	movl	-172(%ebp),%eax
	addl	%eax,-160(%ebp)
	cmpl	-152(%ebp),%esi
	ja	Lj952
Lj951:
	movl	-176(%ebp),%eax
	addl	%eax,-164(%ebp)
	cmpl	-156(%ebp),%ebx
	ja	Lj945
Lj944:
	movw	-34(%ebp),%ax
	cmpw	$32946,%ax
	jb	Lj1026
	subw	$32946,%ax
	je	Lj1027
	jmp	Lj1026
Lj1027:
	leal	-88(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ENCODEDEFLATE$POINTER$LONGWORD$stub
	jmp	Lj1025
Lj1026:
Lj1025:
	movl	-80(%ebp),%eax
	movl	24(%eax),%eax
	movl	-84(%ebp),%edx
	movl	-92(%ebp),%ecx
	movl	%ecx,(%eax,%edx,8)
	movl	-80(%ebp),%eax
	movl	24(%eax),%edx
	movl	-84(%ebp),%eax
	movl	-88(%ebp),%ecx
	movl	%ecx,4(%edx,%eax,8)
	cmpl	-84(%ebp),%edi
	ja	Lj798
Lj797:
Lj779:
	movl	-292(%ebp),%eax
	movl	L_FPWRITETIFF_COMPARETIFFWRITEENTRIES$POINTER$POINTER$$LONGINT$non_lazy_ptr-Lj358(%eax),%edx
	movl	-136(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub
Lj372:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-260(%ebp),%eax
	testl	%eax,%eax
	je	Lj373
	decl	%eax
	testl	%eax,%eax
	je	Lj374
Lj374:
	call	LFPC_RERAISE$stub
Lj373:
Lj359:
	call	LFPC_POPADDRSTACK$stub
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	movl	-220(%ebp),%eax
	testl	%eax,%eax
	je	Lj360
	call	LFPC_RERAISE$stub
Lj360:
	movl	-304(%ebp),%ebx
	movl	-300(%ebp),%esi
	movl	-296(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__SAVETOSTREAM$TSTREAM
_FPWRITETIFF_TFPWRITERTIFF_$__SAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%ecx
	movl	%eax,24(%ecx)
	movl	%edx,28(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,36(%eax)
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITETIFF$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__WRITETIFF$stub
	movl	-8(%ebp),%eax
	movl	$0,36(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITETIFF_TFPWRITERTIFF_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDIMAGE$TFPCUSTOMIMAGE$stub
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__SAVETOSTREAM$TSTREAM$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1072
	jmp	Lj1073
Lj1072:
	movb	$1,(%esp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1078
	movl	-4(%eax),%eax
Lj1078:
	incl	%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1081
	movl	-4(%eax),%eax
Lj1081:
	incl	%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	movw	$2,%cx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
	jmp	Lj1090
Lj1073:
	movb	$1,(%esp)
	movl	$0,4(%esp)
	movl	$0,8(%esp)
	movl	$0,12(%esp)
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	movw	$2,%cx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
Lj1090:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movb	$1,(%esp)
	movl	$2,4(%esp)
	movl	$1,12(%esp)
	leal	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	movw	$3,%cx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYLONG$WORD$LONGWORD
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYLONG$WORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	$4,4(%esp)
	movl	$1,12(%esp)
	leal	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	movw	$4,%cx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$65535,%eax
	jbe	Lj1139
	jmp	Lj1140
Lj1139:
	movw	-8(%ebp),%cx
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub
	jmp	Lj1147
Lj1140:
	movl	-8(%ebp),%ecx
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYLONG$WORD$LONGWORD$stub
Lj1147:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYRATIONAL$WORD$TTIFFRATIONAL
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYRATIONAL$WORD$TTIFFRATIONAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$1,(%esp)
	movl	$8,4(%esp)
	movl	$1,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movw	-4(%ebp),%dx
	movl	-12(%ebp),%eax
	movw	$5,%cx
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1171
Lj1171:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	L_VMT_FPWRITETIFF_TTIFFWRITERENTRY$non_lazy_ptr-Lj1171(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movw	-4(%ebp),%dx
	movw	%dx,4(%eax)
	movl	-16(%ebp),%eax
	movw	-8(%ebp),%dx
	movw	%dx,6(%eax)
	movl	-16(%ebp),%eax
	movl	20(%ebp),%edx
	movl	%edx,8(%eax)
	cmpb	$0,8(%ebp)
	jne	Lj1184
	jmp	Lj1185
Lj1184:
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj1186
	jmp	Lj1187
Lj1186:
	movl	-16(%ebp),%eax
	leal	12(%eax),%eax
	movl	12(%ebp),%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-16(%ebp),%eax
	movl	12(%eax),%edx
	movl	16(%ebp),%eax
	movl	12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj1198
Lj1187:
	movl	-16(%ebp),%eax
	movl	$0,12(%eax)
Lj1198:
	jmp	Lj1201
Lj1185:
	movl	-16(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,12(%eax)
Lj1201:
	movl	-16(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY$stub
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY
_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	8(%eax),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__TIFFERROR$ANSISTRING
_FPWRITETIFF_TFPWRITERTIFF_$__TIFFERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1223
Lj1223:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1224
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%ecx
	leal	-52(%ebp),%eax
	movl	L_$FPWRITETIFF$_Ld29$non_lazy_ptr-Lj1223(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-52(%ebp),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj1223(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1223(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1224:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1225
	call	LFPC_RERAISE$stub
Lj1225:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__ENCODEDEFLATE$POINTER$LONGWORD
_FPWRITETIFF_TFPWRITERTIFF_$__ENCODEDEFLATE$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
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
	jne	Lj1241
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	movl	$0,-16(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1248
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPWRITETIFF_COMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1254
	jmp	Lj1255
Lj1254:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1255:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	movl	$0,-16(%ebp)
Lj1248:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1249
	decl	%eax
	testl	%eax,%eax
	je	Lj1250
Lj1250:
	call	LFPC_RERAISE$stub
Lj1249:
Lj1241:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1242
	call	LFPC_RERAISE$stub
Lj1242:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__CREATE$$TFPWRITERTIFF
_FPWRITETIFF_TFPWRITERTIFF_$__CREATE$$TFPWRITERTIFF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1289
Lj1289:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1290
	jmp	Lj1291
Lj1290:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1291:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1296
	jmp	Lj1297
Lj1296:
	jmp	Lj1288
Lj1297:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1300
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1304
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1289(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movb	$1,20(%eax)
Lj1304:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1305
	call	LFPC_RERAISE$stub
Lj1305:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1321
	jmp	Lj1320
Lj1321:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1319
	jmp	Lj1320
Lj1319:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1320:
Lj1300:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1302
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1325
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1326
	jmp	Lj1327
Lj1326:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1327:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1325:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1324
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1324:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1302
Lj1302:
Lj1288:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__DESTROY
_FPWRITETIFF_TFPWRITERTIFF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1334
	jmp	Lj1335
Lj1334:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1335:
	movl	-8(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__CLEAR$stub
	movl	-8(%ebp),%eax
	leal	32(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1348
	jmp	Lj1347
Lj1348:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1346
	jmp	Lj1347
Lj1346:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1347:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TFPWRITERTIFF_$__CLEAR
_FPWRITETIFF_TFPWRITERTIFF_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPWRITETIFF_TFPWRITERTIFF_$__CLEARENTRIES$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TTIFFWRITERENTRY_$__DESTROY
_FPWRITETIFF_TTIFFWRITERENTRY_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1357
	jmp	Lj1358
Lj1357:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1358:
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1371
	jmp	Lj1370
Lj1371:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1369
	jmp	Lj1370
Lj1369:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1370:
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__CREATE$TTIFFCHUNKTYPE$$TTIFFWRITERCHUNKOFFSETS
_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__CREATE$TTIFFCHUNKTYPE$$TTIFFWRITERCHUNKOFFSETS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1375
Lj1375:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1376
	jmp	Lj1377
Lj1376:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1377:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1382
	jmp	Lj1383
Lj1382:
	jmp	Lj1374
Lj1383:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1386
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1390
	movl	-12(%ebp),%eax
	movw	$4,6(%eax)
	movl	L_VMT_FPWRITETIFF_TTIFFWRITERENTRY$non_lazy_ptr-Lj1375(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movw	$4,6(%eax)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	je	Lj1403
	jmp	Lj1404
Lj1403:
	movl	-12(%ebp),%eax
	movw	$324,4(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movw	$325,4(%eax)
	jmp	Lj1409
Lj1404:
	movl	-12(%ebp),%eax
	movw	$273,4(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movw	$279,4(%eax)
Lj1409:
Lj1390:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1391
	call	LFPC_RERAISE$stub
Lj1391:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1416
	jmp	Lj1415
Lj1416:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1414
	jmp	Lj1415
Lj1414:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1415:
Lj1386:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1388
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1420
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1421
	jmp	Lj1422
Lj1421:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1422:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1420:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1419
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1419:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1388
Lj1388:
Lj1374:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__DESTROY
_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1429
	jmp	Lj1430
Lj1429:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1430:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	jne	Lj1433
	jmp	Lj1434
Lj1433:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1436
	decl	-12(%ebp)
	.align 2
Lj1437:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,8),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1437
Lj1436:
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj1434:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPWRITETIFF_TTIFFWRITERENTRY_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1452
	jmp	Lj1451
Lj1452:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1450
	jmp	Lj1451
Lj1450:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1451:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__SETCOUNT$LONGWORD
_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__SETCOUNT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	shll	$3,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj1465
	jmp	Lj1466
Lj1465:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
Lj1466:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	shll	$2,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj1479
	jmp	Lj1480
Lj1479:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
Lj1480:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	leal	12(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj1493
	jmp	Lj1494
Lj1493:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	12(%eax),%eax
	movl	-12(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub
Lj1494:
	movl	-8(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITETIFF
_INIT$_FPWRITETIFF:
.reference __FPWRITETIFF_init
.globl	__FPWRITETIFF_init
__FPWRITETIFF_init:
.reference _INIT$_FPWRITETIFF
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	call	Lj2
Lj2:
	popl	%esi
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%esi),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITETIFF$_Ld31$non_lazy_ptr-Lj2(%esi),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETWRITER$ANSISTRING$$TFPCUSTOMIMAGEWRITERCLASS$stub
	testl	%eax,%eax
	je	Lj1505
	jmp	Lj1506
Lj1505:
	movl	L_VMT_FPWRITETIFF_TFPWRITERTIFF$non_lazy_ptr-Lj2(%esi),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%esi),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITETIFF$_Ld33$non_lazy_ptr-Lj2(%esi),%edx
	movl	L_$FPWRITETIFF$_Ld31$non_lazy_ptr-Lj2(%esi),%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
Lj1506:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld35
_$FPWRITETIFF$_Ld35:
	.byte	16
	.ascii	"TTiffWriterEntry"

.const_data
	.align 2
.globl	_VMT_FPWRITETIFF_TTIFFWRITERENTRY
_VMT_FPWRITETIFF_TTIFFWRITERENTRY:
	.long	24,-24
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPWRITETIFF$_Ld35
	.long	0,0
	.long	_$FPWRITETIFF$_Ld36
	.long	_RTTI_FPWRITETIFF_TTIFFWRITERENTRY
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPWRITETIFF_TTIFFWRITERENTRY_$__DESTROY
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
.globl	_$FPWRITETIFF$_Ld38
_$FPWRITETIFF$_Ld38:
	.byte	23
	.ascii	"TTiffWriterChunkOffsets"

.const_data
	.align 2
.globl	_VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS
_VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS:
	.long	32,-32
	.long	_VMT_FPWRITETIFF_TTIFFWRITERENTRY
	.long	_$FPWRITETIFF$_Ld38
	.long	0,0
	.long	_$FPWRITETIFF$_Ld39
	.long	_RTTI_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__DESTROY
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
.globl	_$FPWRITETIFF$_Ld41
_$FPWRITETIFF$_Ld41:
	.byte	13
	.ascii	"TFPWriterTiff"

.const_data
	.align 2
.globl	_VMT_FPWRITETIFF_TFPWRITERTIFF
_VMT_FPWRITETIFF_TFPWRITERTIFF:
	.long	44,-44
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITETIFF$_Ld41
	.long	0,0
	.long	_$FPWRITETIFF$_Ld42
	.long	_RTTI_FPWRITETIFF_TFPWRITERTIFF
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPWRITETIFF_TFPWRITERTIFF_$__DESTROY
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPWRITETIFF_TFPWRITERTIFF_$__CREATE$$TFPWRITERTIFF
	.long	_FPWRITETIFF_TFPWRITERTIFF_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITETIFF
_THREADVARLIST_FPWRITETIFF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld2
_$FPWRITETIFF$_Ld2:
	.short	0,1
	.long	0,-1,18
.reference _$FPWRITETIFF$_Ld1
.globl	_$FPWRITETIFF$_Ld1
_$FPWRITETIFF$_Ld1:
.reference _$FPWRITETIFF$_Ld2
	.ascii	"deflateInit failed\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld4
_$FPWRITETIFF$_Ld4:
	.short	0,1
	.long	0,-1,14
.reference _$FPWRITETIFF$_Ld3
.globl	_$FPWRITETIFF$_Ld3
_$FPWRITETIFF$_Ld3:
.reference _$FPWRITETIFF$_Ld4
	.ascii	"deflate failed\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld6
_$FPWRITETIFF$_Ld6:
	.short	0,1
	.long	0,-1,52
.reference _$FPWRITETIFF$_Ld5
.globl	_$FPWRITETIFF$_Ld5
_$FPWRITETIFF$_Ld5:
.reference _$FPWRITETIFF$_Ld6
	.ascii	"deflate compression failed, because not enough spac"
	.ascii	"e\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld8
_$FPWRITETIFF$_Ld8:
	.short	0,1
	.long	0,-1,21
.reference _$FPWRITETIFF$_Ld7
.globl	_$FPWRITETIFF$_Ld7
_$FPWRITETIFF$_Ld7:
.reference _$FPWRITETIFF$_Ld8
	.ascii	"deflate finish failed\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld10
_$FPWRITETIFF$_Ld10:
	.short	0,1
	.long	0,-1,17
.reference _$FPWRITETIFF$_Ld9
.globl	_$FPWRITETIFF$_Ld9
_$FPWRITETIFF$_Ld9:
.reference _$FPWRITETIFF$_Ld10
	.ascii	"deflateEnd failed\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld12
_$FPWRITETIFF$_Ld12:
	.short	0,1
	.long	0,-1,2
.reference _$FPWRITETIFF$_Ld11
.globl	_$FPWRITETIFF$_Ld11
_$FPWRITETIFF$_Ld11:
.reference _$FPWRITETIFF$_Ld12
	.ascii	"II\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld14
_$FPWRITETIFF$_Ld14:
	.short	0,1
	.long	0,-1,27
.reference _$FPWRITETIFF$_Ld13
.globl	_$FPWRITETIFF$_Ld13
_$FPWRITETIFF$_Ld13:
.reference _$FPWRITETIFF$_Ld14
	.ascii	"PhotoMetricInterpretation=\"\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld16
_$FPWRITETIFF$_Ld16:
	.short	0,1
	.long	0,-1,29
.reference _$FPWRITETIFF$_Ld15
.globl	_$FPWRITETIFF$_Ld15
_$FPWRITETIFF$_Ld15:
.reference _$FPWRITETIFF$_Ld16
	.ascii	"TiffPhotoMetricInterpretation\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld18
_$FPWRITETIFF$_Ld18:
	.short	0,1
	.long	0,-1,15
.reference _$FPWRITETIFF$_Ld17
.globl	_$FPWRITETIFF$_Ld17
_$FPWRITETIFF$_Ld17:
.reference _$FPWRITETIFF$_Ld18
	.ascii	"\" not supported\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld20
_$FPWRITETIFF$_Ld20:
	.short	0,1
	.long	0,-1,12
.reference _$FPWRITETIFF$_Ld19
.globl	_$FPWRITETIFF$_Ld19
_$FPWRITETIFF$_Ld19:
.reference _$FPWRITETIFF$_Ld20
	.ascii	"TiffGrayBits\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld22
_$FPWRITETIFF$_Ld22:
	.short	0,1
	.long	0,-1,11
.reference _$FPWRITETIFF$_Ld21
.globl	_$FPWRITETIFF$_Ld21
_$FPWRITETIFF$_Ld21:
.reference _$FPWRITETIFF$_Ld22
	.ascii	"TiffRedBits\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld24
_$FPWRITETIFF$_Ld24:
	.short	0,1
	.long	0,-1,13
.reference _$FPWRITETIFF$_Ld23
.globl	_$FPWRITETIFF$_Ld23
_$FPWRITETIFF$_Ld23:
.reference _$FPWRITETIFF$_Ld24
	.ascii	"TiffGreenBits\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld26
_$FPWRITETIFF$_Ld26:
	.short	0,1
	.long	0,-1,12
.reference _$FPWRITETIFF$_Ld25
.globl	_$FPWRITETIFF$_Ld25
_$FPWRITETIFF$_Ld25:
.reference _$FPWRITETIFF$_Ld26
	.ascii	"TiffBlueBits\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld28
_$FPWRITETIFF$_Ld28:
	.short	0,1
	.long	0,-1,13
.reference _$FPWRITETIFF$_Ld27
.globl	_$FPWRITETIFF$_Ld27
_$FPWRITETIFF$_Ld27:
.reference _$FPWRITETIFF$_Ld28
	.ascii	"TiffAlphaBits\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld30
_$FPWRITETIFF$_Ld30:
	.short	0,1
	.long	0,-1,25
.reference _$FPWRITETIFF$_Ld29
.globl	_$FPWRITETIFF$_Ld29
_$FPWRITETIFF$_Ld29:
.reference _$FPWRITETIFF$_Ld30
	.ascii	"TFPWriterTiff.TiffError: \000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld32
_$FPWRITETIFF$_Ld32:
	.short	0,1
	.long	0,-1,24
.reference _$FPWRITETIFF$_Ld31
.globl	_$FPWRITETIFF$_Ld31
_$FPWRITETIFF$_Ld31:
.reference _$FPWRITETIFF$_Ld32
	.ascii	"Tagged Image File Format\000"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld34
_$FPWRITETIFF$_Ld34:
	.short	0,1
	.long	0,-1,8
.reference _$FPWRITETIFF$_Ld33
.globl	_$FPWRITETIFF$_Ld33
_$FPWRITETIFF$_Ld33:
.reference _$FPWRITETIFF$_Ld34
	.ascii	"tif;tiff\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEWORD$WORD$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEWORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEDWORD$LONGWORD$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEDWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
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

L_CLASSES_TFPLIST_$__CLEAR$stub:
.indirect_symbol _CLASSES_TFPLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEHEADER$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEHEADER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEIFDS$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEIFDS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDATA$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEDATA
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEBUF$formal$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEWORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEDWORD$LONGWORD
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

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRY$TTIFFWRITERENTRY$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRY$TTIFFWRITERENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRYDATA$TTIFFWRITERENTRY$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITEENTRYDATA$TTIFFWRITERENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD$stub:
.indirect_symbol _FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD
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

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_TTIFFIFD_$__READFPIMGEXTRAS$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPTIFFCMN_TTIFFIFD_$__READFPIMGEXTRAS$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING
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

L_FPWRITETIFF_TFPWRITERTIFF_$__TIFFERROR$ANSISTRING$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__TIFFERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORTORLONG$WORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSHORT$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYRATIONAL$WORD$TTIFFRATIONAL$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYRATIONAL$WORD$TTIFFRATIONAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$WORD$WORD$LONGWORD$POINTER$LONGWORD$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYLONG$WORD$LONGWORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYLONG$WORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRYSTRING$WORD$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__CREATE$TTIFFCHUNKTYPE$$TTIFFWRITERCHUNKOFFSETS$stub:
.indirect_symbol _FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__CREATE$TTIFFCHUNKTYPE$$TTIFFWRITERCHUNKOFFSETS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDENTRY$TTIFFWRITERENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__SETCOUNT$LONGWORD$stub:
.indirect_symbol _FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS_$__SETCOUNT$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLBYTE$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLBYTE$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ENCODEDEFLATE$POINTER$LONGWORD$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ENCODEDEFLATE$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE$stub:
.indirect_symbol _CLASSES_TFPLIST_$__SORT$TLISTSORTCOMPARE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__WRITETIFF$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__WRITETIFF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__ADDIMAGE$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__ADDIMAGE$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__SAVETOSTREAM$TSTREAM$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__SAVETOSTREAM$TSTREAM
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_FPWRITETIFF_COMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN$stub:
.indirect_symbol _FPWRITETIFF_COMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN
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

L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
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

L_FPWRITETIFF_TFPWRITERTIFF_$__CLEAR$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__CLEAR
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TFPWRITERTIFF_$__CLEARENTRIES$stub:
.indirect_symbol _FPWRITETIFF_TFPWRITERTIFF_$__CLEARENTRIES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITETIFF_TTIFFWRITERENTRY_$__DESTROY$stub:
.indirect_symbol _FPWRITETIFF_TTIFFWRITERENTRY_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETWRITER$ANSISTRING$$TFPCUSTOMIMAGEWRITERCLASS$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETWRITER$ANSISTRING$$TFPCUSTOMIMAGEWRITERCLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90
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
.globl	_$FPWRITETIFF$_Ld36
_$FPWRITETIFF$_Ld36:
	.short	0
	.long	_$FPWRITETIFF$_Ld37
	.align 2
.globl	_$FPWRITETIFF$_Ld37
_$FPWRITETIFF$_Ld37:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITETIFF_TTIFFWRITERENTRY
_INIT_FPWRITETIFF_TTIFFWRITERENTRY:
	.byte	15,16
	.ascii	"TTiffWriterEntry"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITETIFF_TTIFFWRITERENTRY
_RTTI_FPWRITETIFF_TTIFFWRITERENTRY:
	.byte	15,16
	.ascii	"TTiffWriterEntry"
	.long	_VMT_FPWRITETIFF_TTIFFWRITERENTRY
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	11
	.ascii	"FPWriteTiff"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITETIFF_TTIFFWRITERCHUNK
_INIT_FPWRITETIFF_TTIFFWRITERCHUNK:
	.byte	13,16
	.ascii	"TTiffWriterChunk"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FPWRITETIFF_TTIFFWRITERCHUNK
_RTTI_FPWRITETIFF_TTIFFWRITERCHUNK:
	.byte	13,16
	.ascii	"TTiffWriterChunk"
	.long	8,2
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_FPWRITETIFF_PTIFFWRITERCHUNK
_INIT_FPWRITETIFF_PTIFFWRITERCHUNK:
	.byte	0
	.ascii	"\020PTiffWriterChunk"

.const_data
	.align 2
.globl	_RTTI_FPWRITETIFF_PTIFFWRITERCHUNK
_RTTI_FPWRITETIFF_PTIFFWRITERCHUNK:
	.byte	0
	.ascii	"\020PTiffWriterChunk"

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld39
_$FPWRITETIFF$_Ld39:
	.short	0
	.long	_$FPWRITETIFF$_Ld40
	.align 2
.globl	_$FPWRITETIFF$_Ld40
_$FPWRITETIFF$_Ld40:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS
_INIT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS:
	.byte	15,23
	.ascii	"TTiffWriterChunkOffsets"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS
_RTTI_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS:
	.byte	15,23
	.ascii	"TTiffWriterChunkOffsets"
	.long	_VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS
	.long	_RTTI_FPWRITETIFF_TTIFFWRITERENTRY
	.short	0
	.byte	11
	.ascii	"FPWriteTiff"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITETIFF_DEF102
_INIT_FPWRITETIFF_DEF102:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPWRITETIFF$_Ld42
_$FPWRITETIFF$_Ld42:
	.short	0
	.long	_$FPWRITETIFF$_Ld43
	.align 2
.globl	_$FPWRITETIFF$_Ld43
_$FPWRITETIFF$_Ld43:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITETIFF_TFPWRITERTIFF
_INIT_FPWRITETIFF_TFPWRITERTIFF:
	.byte	15,13
	.ascii	"TFPWriterTiff"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITETIFF_TFPWRITERTIFF
_RTTI_FPWRITETIFF_TFPWRITERTIFF:
	.byte	15,13
	.ascii	"TFPWriterTiff"
	.long	_VMT_FPWRITETIFF_TFPWRITERTIFF
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	11
	.ascii	"FPWriteTiff"
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
L_$FPWRITETIFF$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITETIFF_TTIFFWRITERCHUNKOFFSETS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPTIFFCMN_TTIFFIFD$non_lazy_ptr:
.indirect_symbol _VMT_FPTIFFCMN_TTIFFIFD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld27$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITETIFF_COMPARETIFFWRITEENTRIES$POINTER$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _FPWRITETIFF_COMPARETIFFWRITEENTRIES$POINTER$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITETIFF_TTIFFWRITERENTRY$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITETIFF_TTIFFWRITERENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld29$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld31$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITETIFF_TFPWRITERTIFF$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITETIFF_TFPWRITERTIFF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITETIFF$_Ld33$non_lazy_ptr:
.indirect_symbol _$FPWRITETIFF$_Ld33
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

