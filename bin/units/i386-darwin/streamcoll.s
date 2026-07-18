# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT
_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT:
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
.globl	_STREAMCOLL_COLWRITEBOOLEAN$TSTREAM$BOOLEAN
_STREAMCOLL_COLWRITEBOOLEAN$TSTREAM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLWRITESTRING$TSTREAM$ANSISTRING
_STREAMCOLL_COLWRITESTRING$TSTREAM$ANSISTRING:
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
	jne	Lj21
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj26
	movl	-4(%eax),%eax
Lj26:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj31
	jmp	Lj32
Lj31:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj32:
Lj21:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj22
	call	LFPC_RERAISE$stub
Lj22:
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLWRITECURRENCY$TSTREAM$CURRENCY
_STREAMCOLL_COLWRITECURRENCY$TSTREAM$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLWRITEDATETIME$TSTREAM$TDATETIME
_STREAMCOLL_COLWRITEDATETIME$TSTREAM$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLWRITEFLOAT$TSTREAM$DOUBLE
_STREAMCOLL_COLWRITEFLOAT$TSTREAM$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT
_STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT:
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
.globl	_STREAMCOLL_COLREADBOOLEAN$TSTREAM$$BOOLEAN
_STREAMCOLL_COLREADBOOLEAN$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLREADSTRING$TSTREAM$$ANSISTRING
_STREAMCOLL_COLREADSTRING$TSTREAM$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj91
	jmp	Lj92
Lj91:
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
Lj92:
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLREADCURRENCY$TSTREAM$$CURRENCY
_STREAMCOLL_COLREADCURRENCY$TSTREAM$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	fildq	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLREADDATETIME$TSTREAM$$TDATETIME
_STREAMCOLL_COLREADDATETIME$TSTREAM$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_COLREADFLOAT$TSTREAM$$DOUBLE
_STREAMCOLL_COLREADFLOAT$TSTREAM$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READBOOLEAN$TSTREAM$$BOOLEAN
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READBOOLEAN$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADBOOLEAN$TSTREAM$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READCURRENCY$TSTREAM$$CURRENCY
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READCURRENCY$TSTREAM$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADCURRENCY$TSTREAM$$CURRENCY$stub
	fistpq	-16(%ebp)
	fildq	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READDATETIME$TSTREAM$$TDATETIME
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READDATETIME$TSTREAM$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADDATETIME$TSTREAM$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READFLOAT$TSTREAM$$DOUBLE
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READFLOAT$TSTREAM$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADFLOAT$TSTREAM$$DOUBLE$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READINTEGER$TSTREAM$$LONGINT
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READINTEGER$TSTREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READSTRING$TSTREAM$$ANSISTRING
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__READSTRING$TSTREAM$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADSTRING$TSTREAM$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEBOOLEAN$TSTREAM$BOOLEAN
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEBOOLEAN$TSTREAM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEBOOLEAN$TSTREAM$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITECURRENCY$TSTREAM$CURRENCY
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITECURRENCY$TSTREAM$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITECURRENCY$TSTREAM$CURRENCY$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEDATETIME$TSTREAM$TDATETIME
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEDATETIME$TSTREAM$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEDATETIME$TSTREAM$TDATETIME$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEFLOAT$TSTREAM$DOUBLE
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEFLOAT$TSTREAM$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEFLOAT$TSTREAM$DOUBLE$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEINTEGER$TSTREAM$LONGINT
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITEINTEGER$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITESTRING$TSTREAM$ANSISTRING
_STREAMCOLL_TSTREAMCOLLECTIONITEM_$__WRITESTRING$TSTREAM$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj193
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITESTRING$TSTREAM$ANSISTRING$stub
Lj193:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj194
	call	LFPC_RERAISE$stub
Lj194:
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__CURRENTSTREAMVERSION$$LONGINT
_STREAMCOLL_TSTREAMCOLLECTION_$__CURRENTSTREAMVERSION$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__DOLOADFROMSTREAM$TSTREAM$LONGINT
_STREAMCOLL_TSTREAMCOLLECTION_$__DOLOADFROMSTREAM$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj205
Lj205:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*160(%edx)
	cmpl	-8(%ebp),%eax
	jl	Lj206
	jmp	Lj207
Lj206:
	movl	$1,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*160(%edx)
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STREAMCOLL_SERRILLEGALSTREAMVERSION$non_lazy_ptr-Lj205(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_STREAMCOLL_ESTREAMCOLL$non_lazy_ptr-Lj205(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj205(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj207:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__DOSAVETOSTREAM$TSTREAM
_STREAMCOLL_TSTREAMCOLLECTION_$__DOSAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__LOADFROMSTREAM$TSTREAM
_STREAMCOLL_TSTREAMCOLLECTION_$__LOADFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj225
Lj225:
	popl	-68(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,32(%eax)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj228
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STREAMCOLL_TSTREAMCOLLECTION_$__READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*164(%ebx)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STREAMCOLL_TSTREAMCOLLECTION_$__READINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$1,-12(%ebp)
	movl	-64(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj253
	decl	-12(%ebp)
	.align 2
Lj254:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	-68(%ebp),%ecx
	movl	L_VMT_STREAMCOLL_TSTREAMCOLLECTIONITEM$non_lazy_ptr-Lj225(%ecx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,%edi
	movl	%edi,%esi
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
	movl	-64(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj254
Lj253:
Lj228:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movb	$0,32(%eax)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj229
	decl	%eax
	testl	%eax,%eax
	je	Lj230
Lj230:
	call	LFPC_RERAISE$stub
Lj229:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__READBOOLEAN$TSTREAM$$BOOLEAN
_STREAMCOLL_TSTREAMCOLLECTION_$__READBOOLEAN$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADBOOLEAN$TSTREAM$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__READCURRENCY$TSTREAM$$CURRENCY
_STREAMCOLL_TSTREAMCOLLECTION_$__READCURRENCY$TSTREAM$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADCURRENCY$TSTREAM$$CURRENCY$stub
	fistpq	-16(%ebp)
	fildq	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__READDATETIME$TSTREAM$$TDATETIME
_STREAMCOLL_TSTREAMCOLLECTION_$__READDATETIME$TSTREAM$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADDATETIME$TSTREAM$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__READFLOAT$TSTREAM$$DOUBLE
_STREAMCOLL_TSTREAMCOLLECTION_$__READFLOAT$TSTREAM$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADFLOAT$TSTREAM$$DOUBLE$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__READINTEGER$TSTREAM$$LONGINT
_STREAMCOLL_TSTREAMCOLLECTION_$__READINTEGER$TSTREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__READSTRING$TSTREAM$$ANSISTRING
_STREAMCOLL_TSTREAMCOLLECTION_$__READSTRING$TSTREAM$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLREADSTRING$TSTREAM$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__SAVETOSTREAM$TSTREAM
_STREAMCOLL_TSTREAMCOLLECTION_$__SAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	$1,32(%eax)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj313
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*160(%edx)
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*156(%ecx)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEINTEGER$TSTREAM$LONGINT$stub
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%edi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%edi
	jl	Lj338
	decl	-12(%ebp)
	.align 2
Lj339:
	incl	-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	cmpl	-12(%ebp),%edi
	jg	Lj339
Lj338:
Lj313:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	movb	$0,32(%eax)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj314
	decl	%eax
	testl	%eax,%eax
	je	Lj315
Lj315:
	call	LFPC_RERAISE$stub
Lj314:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEBOOLEAN$TSTREAM$BOOLEAN
_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEBOOLEAN$TSTREAM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEBOOLEAN$TSTREAM$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__WRITECURRENCY$TSTREAM$CURRENCY
_STREAMCOLL_TSTREAMCOLLECTION_$__WRITECURRENCY$TSTREAM$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITECURRENCY$TSTREAM$CURRENCY$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEDATETIME$TSTREAM$TDATETIME
_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEDATETIME$TSTREAM$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEDATETIME$TSTREAM$TDATETIME$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEFLOAT$TSTREAM$DOUBLE
_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEFLOAT$TSTREAM$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEFLOAT$TSTREAM$DOUBLE$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEINTEGER$TSTREAM$LONGINT
_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEINTEGER$TSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_STREAMCOLL_TSTREAMCOLLECTION_$__WRITESTRING$TSTREAM$ANSISTRING
_STREAMCOLL_TSTREAMCOLLECTION_$__WRITESTRING$TSTREAM$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj388
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STREAMCOLL_COLWRITESTRING$TSTREAM$ANSISTRING$stub
Lj388:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj389
	call	LFPC_RERAISE$stub
Lj389:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$STREAMCOLL$_Ld1
_$STREAMCOLL$_Ld1:
	.byte	21
	.ascii	"TStreamCollectionItem"

.const_data
	.align 2
.globl	_VMT_STREAMCOLL_TSTREAMCOLLECTIONITEM
_VMT_STREAMCOLL_TSTREAMCOLLECTIONITEM:
	.long	24,-24
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$STREAMCOLL$_Ld1
	.long	0,0
	.long	_$STREAMCOLL$_Ld2
	.long	_RTTI_STREAMCOLL_TSTREAMCOLLECTIONITEM
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$STREAMCOLL$_Ld4
_$STREAMCOLL$_Ld4:
	.byte	17
	.ascii	"TStreamCollection"

.const_data
	.align 2
.globl	_VMT_STREAMCOLL_TSTREAMCOLLECTION
_VMT_STREAMCOLL_TSTREAMCOLLECTION:
	.long	36,-36
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$STREAMCOLL$_Ld4
	.long	0,0
	.long	_$STREAMCOLL$_Ld5
	.long	_RTTI_STREAMCOLL_TSTREAMCOLLECTION
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	_CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	_CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	_CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	_CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	_STREAMCOLL_TSTREAMCOLLECTION_$__DOSAVETOSTREAM$TSTREAM
	.long	_STREAMCOLL_TSTREAMCOLLECTION_$__CURRENTSTREAMVERSION$$LONGINT
	.long	_STREAMCOLL_TSTREAMCOLLECTION_$__DOLOADFROMSTREAM$TSTREAM$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$STREAMCOLL$_Ld7
_$STREAMCOLL$_Ld7:
	.byte	11
	.ascii	"EStreamColl"

.const_data
	.align 2
.globl	_VMT_STREAMCOLL_ESTREAMCOLL
_VMT_STREAMCOLL_ESTREAMCOLL:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$STREAMCOLL$_Ld7
	.long	0,0
	.long	_$STREAMCOLL$_Ld8
	.long	_RTTI_STREAMCOLL_ESTREAMCOLL
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
.globl	_THREADVARLIST_STREAMCOLL
_THREADVARLIST_STREAMCOLL:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$STREAMCOLL$_Ld11
_$STREAMCOLL$_Ld11:
	.short	0,1
	.long	0,-1,10
.reference _$STREAMCOLL$_Ld10
.globl	_$STREAMCOLL$_Ld10
_$STREAMCOLL$_Ld10:
.reference _$STREAMCOLL$_Ld11
	.ascii	"STREAMCOLL\000"

.const_data
	.align 2
.globl	_$STREAMCOLL$_Ld13
_$STREAMCOLL$_Ld13:
	.short	0,1
	.long	0,-1,32
.reference _$STREAMCOLL$_Ld12
.globl	_$STREAMCOLL$_Ld12
_$STREAMCOLL$_Ld12:
.reference _$STREAMCOLL$_Ld13
	.ascii	"Illegal stream version: %d > %d.\000"
	.align 2
.globl	_$STREAMCOLL$_Ld15
_$STREAMCOLL$_Ld15:
	.short	0,1
	.long	0,-1,35
.reference _$STREAMCOLL$_Ld14
.globl	_$STREAMCOLL$_Ld14
_$STREAMCOLL$_Ld14:
.reference _$STREAMCOLL$_Ld15
	.ascii	"streamcoll.serrillegalstreamversion\000"
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT$stub:
.indirect_symbol _STREAMCOLL_COLWRITEINTEGER$TSTREAM$LONGINT
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

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT$stub:
.indirect_symbol _STREAMCOLL_COLREADINTEGER$TSTREAM$$LONGINT
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

L_STREAMCOLL_COLREADBOOLEAN$TSTREAM$$BOOLEAN$stub:
.indirect_symbol _STREAMCOLL_COLREADBOOLEAN$TSTREAM$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLREADCURRENCY$TSTREAM$$CURRENCY$stub:
.indirect_symbol _STREAMCOLL_COLREADCURRENCY$TSTREAM$$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLREADDATETIME$TSTREAM$$TDATETIME$stub:
.indirect_symbol _STREAMCOLL_COLREADDATETIME$TSTREAM$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLREADFLOAT$TSTREAM$$DOUBLE$stub:
.indirect_symbol _STREAMCOLL_COLREADFLOAT$TSTREAM$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLREADSTRING$TSTREAM$$ANSISTRING$stub:
.indirect_symbol _STREAMCOLL_COLREADSTRING$TSTREAM$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLWRITEBOOLEAN$TSTREAM$BOOLEAN$stub:
.indirect_symbol _STREAMCOLL_COLWRITEBOOLEAN$TSTREAM$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLWRITECURRENCY$TSTREAM$CURRENCY$stub:
.indirect_symbol _STREAMCOLL_COLWRITECURRENCY$TSTREAM$CURRENCY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLWRITEDATETIME$TSTREAM$TDATETIME$stub:
.indirect_symbol _STREAMCOLL_COLWRITEDATETIME$TSTREAM$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLWRITEFLOAT$TSTREAM$DOUBLE$stub:
.indirect_symbol _STREAMCOLL_COLWRITEFLOAT$TSTREAM$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_COLWRITESTRING$TSTREAM$ANSISTRING$stub:
.indirect_symbol _STREAMCOLL_COLWRITESTRING$TSTREAM$ANSISTRING
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

L_STREAMCOLL_TSTREAMCOLLECTION_$__READINTEGER$TSTREAM$$LONGINT$stub:
.indirect_symbol _STREAMCOLL_TSTREAMCOLLECTION_$__READINTEGER$TSTREAM$$LONGINT
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

L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STREAMCOLL_TSTREAMCOLLECTION_$__WRITEINTEGER$TSTREAM$LONGINT$stub:
.indirect_symbol _STREAMCOLL_TSTREAMCOLLECTION_$__WRITEINTEGER$TSTREAM$LONGINT
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

L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
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
.globl	_$STREAMCOLL$_Ld2
_$STREAMCOLL$_Ld2:
	.short	0
	.long	_$STREAMCOLL$_Ld3
	.align 2
.globl	_$STREAMCOLL$_Ld3
_$STREAMCOLL$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_STREAMCOLL_TSTREAMCOLLECTIONITEM
_INIT_STREAMCOLL_TSTREAMCOLLECTIONITEM:
	.byte	15,21
	.ascii	"TStreamCollectionItem"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STREAMCOLL_TSTREAMCOLLECTIONITEM
_RTTI_STREAMCOLL_TSTREAMCOLLECTIONITEM:
	.byte	15,21
	.ascii	"TStreamCollectionItem"
	.long	_VMT_STREAMCOLL_TSTREAMCOLLECTIONITEM
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	0
	.byte	10
	.ascii	"streamcoll"
	.short	0

.const_data
	.align 2
.globl	_$STREAMCOLL$_Ld5
_$STREAMCOLL$_Ld5:
	.short	0
	.long	_$STREAMCOLL$_Ld6
	.align 2
.globl	_$STREAMCOLL$_Ld6
_$STREAMCOLL$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_STREAMCOLL_TSTREAMCOLLECTION
_INIT_STREAMCOLL_TSTREAMCOLLECTION:
	.byte	15,17
	.ascii	"TStreamCollection"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STREAMCOLL_TSTREAMCOLLECTION
_RTTI_STREAMCOLL_TSTREAMCOLLECTION:
	.byte	15,17
	.ascii	"TStreamCollection"
	.long	_VMT_STREAMCOLL_TSTREAMCOLLECTION
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	10
	.ascii	"streamcoll"
	.short	0

.const_data
	.align 2
.globl	_$STREAMCOLL$_Ld8
_$STREAMCOLL$_Ld8:
	.short	0
	.long	_$STREAMCOLL$_Ld9
	.align 2
.globl	_$STREAMCOLL$_Ld9
_$STREAMCOLL$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_STREAMCOLL_ESTREAMCOLL
_INIT_STREAMCOLL_ESTREAMCOLL:
	.byte	15,11
	.ascii	"EStreamColl"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_STREAMCOLL_ESTREAMCOLL
_RTTI_STREAMCOLL_ESTREAMCOLL:
	.byte	15,11
	.ascii	"EStreamColl"
	.long	_VMT_STREAMCOLL_ESTREAMCOLL
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	10
	.ascii	"streamcoll"
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
L_RESSTR_STREAMCOLL_SERRILLEGALSTREAMVERSION$non_lazy_ptr:
.indirect_symbol _RESSTR_STREAMCOLL_SERRILLEGALSTREAMVERSION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_STREAMCOLL_ESTREAMCOLL$non_lazy_ptr:
.indirect_symbol _VMT_STREAMCOLL_ESTREAMCOLL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_STREAMCOLL_TSTREAMCOLLECTIONITEM$non_lazy_ptr:
.indirect_symbol _VMT_STREAMCOLL_TSTREAMCOLLECTIONITEM
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_STREAMCOLL_START
_RESSTR_STREAMCOLL_START:
	.long	_$STREAMCOLL$_Ld10
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_STREAMCOLL_SERRILLEGALSTREAMVERSION
_RESSTR_STREAMCOLL_SERRILLEGALSTREAMVERSION:
	.long	_$STREAMCOLL$_Ld14
	.long	_$STREAMCOLL$_Ld12
	.long	_$STREAMCOLL$_Ld12
	.long	60651998

.data
	.align 2
.globl	_RESSTR_STREAMCOLL_END
_RESSTR_STREAMCOLL_END:
	.long	_RESSTR_STREAMCOLL_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

