# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JERROR_ERROR_EXIT$J_COMMON_PTR
_JERROR_ERROR_EXIT$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR$stub
	movl	$1,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JERROR_ERREXIT3$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT
_JERROR_ERREXIT3$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JERROR_ERREXIT4$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT$LONGINT
_JERROR_ERREXIT4$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	16(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,36(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JERROR_ERREXITS$J_COMMON_PTR$J_MESSAGE_CODE$ANSISTRING
_JERROR_ERREXITS$J_COMMON_PTR$J_MESSAGE_CODE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj63
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	24(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	$80,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
Lj63:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj64
	call	LFPC_RERAISE$stub
Lj64:
	leave
	ret

.text
	.align 4
.globl	_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE
_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_WARNMS1$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT
_JERROR_WARNMS1$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-8(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE
_JERROR_TRACEMS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS1$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$LONGINT
_JERROR_TRACEMS1$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movzbl	-12(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS2$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$LONGINT$LONGINT
_JERROR_TRACEMS2$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS3$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT
_JERROR_TRACEMS3$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	24(%eax),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS4$crcC48A4244
_JERROR_TRACEMS4$crcC48A4244:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	24(%eax),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS5$crc8CD39420
_JERROR_TRACEMS5$crc8CD39420:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	24(%ebp),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%edx
	movl	20(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-16(%ebp),%eax
	movl	16(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-16(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMS8$crc6B2AA5F9
_JERROR_TRACEMS8$crc6B2AA5F9:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	36(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	32(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	28(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	24(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	24(%eax),%edi
	leal	-44(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JERROR_TRACEMSS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$ANSISTRING
_JERROR_TRACEMSS$J_COMMON_PTR$LONGINT$J_MESSAGE_CODE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj218
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movzbl	-12(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	24(%eax),%eax
	movl	8(%ebp),%ecx
	movl	$80,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	4(%ecx),%ecx
	call	*%ecx
Lj218:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj219
	call	LFPC_RERAISE$stub
Lj219:
	leave
	ret

.text
	.align 4
.globl	_JERROR_OUTPUT_MESSAGE$J_COMMON_PTR
_JERROR_OUTPUT_MESSAGE$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj234
Lj234:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj235
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	12(%ecx),%ecx
	call	*%ecx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj234(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj244
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj234(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj245
Lj244:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj234(%ebx),%eax
	leal	4(%eax),%edx
Lj245:
	movl	-8(%ebp),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj234(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj252
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj234(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj253
Lj252:
	movl	L_U_SYSTEM_OUTPUT$non_lazy_ptr-Lj234(%ebx),%edx
	leal	4(%edx),%eax
Lj253:
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj235:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	call	LFPC_RERAISE$stub
Lj236:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JERROR_EMIT_MESSAGE$J_COMMON_PTR$LONGINT
_JERROR_EMIT_MESSAGE$J_COMMON_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj264
	jmp	Lj265
Lj264:
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	testl	%eax,%eax
	je	Lj266
	jmp	Lj268
Lj268:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	$3,%eax
	jge	Lj266
	jmp	Lj267
Lj266:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	call	*%edx
Lj267:
	movl	-12(%ebp),%eax
	incl	112(%eax)
	jmp	Lj271
Lj265:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj272
	jmp	Lj273
Lj272:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	call	*%edx
Lj273:
Lj271:
	leave
	ret

.text
	.align 4
.globl	_JERROR_FORMAT_MESSAGE$J_COMMON_PTR$ANSISTRING
_JERROR_FORMAT_MESSAGE$J_COMMON_PTR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	call	Lj277
Lj277:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj278
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	20(%eax),%al
	movb	%al,-13(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movb	-13(%ebp),%al
	cmpb	$0,%al
	ja	Lj289
	jmp	Lj288
Lj289:
	movl	-12(%ebp),%eax
	movb	120(%eax),%al
	cmpb	-13(%ebp),%al
	jae	Lj287
	jmp	Lj288
Lj287:
	movl	-12(%ebp),%eax
	movl	116(%eax),%edx
	movzbl	-13(%ebp),%eax
	imull	$81,%eax
	leal	(%edx,%eax),%eax
	leal	-20(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	jmp	Lj294
Lj288:
	movl	-12(%ebp),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	jne	Lj298
	jmp	Lj296
Lj298:
	movl	-12(%ebp),%eax
	movb	128(%eax),%al
	cmpb	-13(%ebp),%al
	jbe	Lj297
	jmp	Lj296
Lj297:
	movl	-12(%ebp),%eax
	movb	129(%eax),%al
	cmpb	-13(%ebp),%al
	jae	Lj295
	jmp	Lj296
Lj295:
	movl	-12(%ebp),%eax
	movl	124(%eax),%ecx
	movl	-12(%ebp),%eax
	movzbl	128(%eax),%edx
	movzbl	-13(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movzbl	%dl,%edx
	imull	$81,%edx
	leal	(%ecx,%edx),%eax
	leal	-20(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
Lj296:
Lj294:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj303
	jmp	Lj304
Lj303:
	movl	-12(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-12(%ebp),%eax
	movl	116(%eax),%eax
	leal	-20(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
Lj304:
	movl	-20(%ebp),%edx
	movl	L_$JERROR$_Ld1$non_lazy_ptr-Lj277(%ebx),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	setgb	-21(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj317
	jmp	Lj318
Lj317:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-12(%ebp),%eax
	leal	24(%eax),%eax
	leal	-68(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-68(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj329
Lj318:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-128(%ebp)
	movl	$0,-132(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-120(%ebp)
	movl	$0,-124(%ebp)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-112(%ebp)
	movl	$0,-116(%ebp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,-104(%ebp)
	movl	$0,-108(%ebp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	$0,-100(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$0,-84(%ebp)
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	$0,-76(%ebp)
	leal	-132(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	$7,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,(%esi)
Lj329:
Lj278:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj279
	call	LFPC_RERAISE$stub
Lj279:
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JERROR_RESET_ERROR_MGR$J_COMMON_PTR
_JERROR_RESET_ERROR_MGR$J_COMMON_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,112(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_JERROR_JPEG_STD_ERROR$JPEG_ERROR_MGR$$JPEG_ERROR_MGR_PTR
_JERROR_JPEG_STD_ERROR$JPEG_ERROR_MGR$$JPEG_ERROR_MGR_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj353
Lj353:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	L_JERROR_ERROR_EXIT$J_COMMON_PTR$non_lazy_ptr-Lj353(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	L_JERROR_EMIT_MESSAGE$J_COMMON_PTR$LONGINT$non_lazy_ptr-Lj353(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,4(%ecx)
	movl	L_JERROR_OUTPUT_MESSAGE$J_COMMON_PTR$non_lazy_ptr-Lj353(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	L_JERROR_FORMAT_MESSAGE$J_COMMON_PTR$ANSISTRING$non_lazy_ptr-Lj353(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,12(%ecx)
	movl	L_JERROR_RESET_ERROR_MGR$J_COMMON_PTR$non_lazy_ptr-Lj353(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,16(%ecx)
	movl	-4(%ebp),%eax
	movl	$0,108(%eax)
	movl	-4(%ebp),%eax
	movl	$0,112(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	L_TC_JDEFERR_JPEG_STD_MESSAGE_TABLE$non_lazy_ptr-Lj353(%edx),%eax
	movl	-4(%ebp),%ecx
	movl	%eax,116(%ecx)
	movl	L_TC_JDEFERR_JMSG_LASTMSGCODE$non_lazy_ptr-Lj353(%edx),%eax
	movb	(%eax),%cl
	decb	%cl
	movl	-4(%ebp),%eax
	movb	%cl,120(%eax)
	movl	-4(%ebp),%eax
	movl	$0,124(%eax)
	movl	-4(%ebp),%eax
	movb	$0,128(%eax)
	movl	-4(%ebp),%eax
	movb	$0,129(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JERROR
_THREADVARLIST_JERROR:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$JERROR$_Ld2
_$JERROR$_Ld2:
	.short	0,1
	.long	0,-1,2
.reference _$JERROR$_Ld1
.globl	_$JERROR$_Ld1
_$JERROR$_Ld1:
.reference _$JERROR$_Ld2
	.ascii	"%s\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_DESTROY$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_HALT$LONGINT$stub:
.indirect_symbol _SYSTEM_HALT$LONGINT
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

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
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

Lfpc_write_text_ansistr$stub:
.indirect_symbol fpc_write_text_ansistr
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

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
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

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_OUTPUT$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_OUTPUT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JERROR$_Ld1$non_lazy_ptr:
.indirect_symbol _$JERROR$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JERROR_ERROR_EXIT$J_COMMON_PTR$non_lazy_ptr:
.indirect_symbol _JERROR_ERROR_EXIT$J_COMMON_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JERROR_EMIT_MESSAGE$J_COMMON_PTR$LONGINT$non_lazy_ptr:
.indirect_symbol _JERROR_EMIT_MESSAGE$J_COMMON_PTR$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JERROR_OUTPUT_MESSAGE$J_COMMON_PTR$non_lazy_ptr:
.indirect_symbol _JERROR_OUTPUT_MESSAGE$J_COMMON_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JERROR_FORMAT_MESSAGE$J_COMMON_PTR$ANSISTRING$non_lazy_ptr:
.indirect_symbol _JERROR_FORMAT_MESSAGE$J_COMMON_PTR$ANSISTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JERROR_RESET_ERROR_MGR$J_COMMON_PTR$non_lazy_ptr:
.indirect_symbol _JERROR_RESET_ERROR_MGR$J_COMMON_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDEFERR_JPEG_STD_MESSAGE_TABLE$non_lazy_ptr:
.indirect_symbol _TC_JDEFERR_JPEG_STD_MESSAGE_TABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDEFERR_JMSG_LASTMSGCODE$non_lazy_ptr:
.indirect_symbol _TC_JDEFERR_JMSG_LASTMSGCODE
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

