# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__WRITEHEADER
_TESTREPORT_TXMLRESULTSWRITER_$__WRITEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj4
Lj4:
	popl	%esi
	movl	%eax,-4(%ebp)
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld1$non_lazy_ptr-Lj4(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld2$non_lazy_ptr-Lj4(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__WRITERESULT$TTESTRESULT
_TESTREPORT_TXMLRESULTSWRITER_$__WRITERESULT$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj26
Lj26:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj27
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld3$non_lazy_ptr-Lj26(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TESTREPORT_TESTRESULTASXML$TTESTRESULT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld4$non_lazy_ptr-Lj26(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj27:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj28
	call	LFPC_RERAISE$stub
Lj28:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
_TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj65
Lj65:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj66
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld5$non_lazy_ptr-Lj65(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld6$non_lazy_ptr-Lj65(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld7$non_lazy_ptr-Lj65(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld8$non_lazy_ptr-Lj65(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld9$non_lazy_ptr-Lj65(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj66:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj67
	call	LFPC_RERAISE$stub
Lj67:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
_TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj132
Lj132:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj133
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld10$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld6$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld7$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld8$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld11$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld12$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld13$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld14$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld15$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld16$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld17$non_lazy_ptr-Lj132(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj133:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj134
	call	LFPC_RERAISE$stub
Lj134:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST
_TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj265
Lj265:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj266
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld18$non_lazy_ptr-Lj265(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$TESTREPORT$_Ld19$non_lazy_ptr-Lj265(%esi),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	leal	-52(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-52(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld6$non_lazy_ptr-Lj265(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj266:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj267
	call	LFPC_RERAISE$stub
Lj267:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST
_TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj306
Lj306:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld21$non_lazy_ptr-Lj306(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
_TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
_TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__WRITEHEADER
_TESTREPORT_TPLAINRESULTSWRITER_$__WRITEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__WRITERESULT$TTESTRESULT
_TESTREPORT_TPLAINRESULTSWRITER_$__WRITERESULT$TTESTRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj324
Lj324:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj325
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld22$non_lazy_ptr-Lj324(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TESTREPORT_TESTRESULTASPLAIN$TTESTRESULT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj325:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj326
	call	LFPC_RERAISE$stub
Lj326:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
_TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj349
Lj349:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj350
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld22$non_lazy_ptr-Lj349(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj350:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj351
	call	LFPC_RERAISE$stub
Lj351:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
_TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj374
Lj374:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj375
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld23$non_lazy_ptr-Lj374(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld24$non_lazy_ptr-Lj374(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld25$non_lazy_ptr-Lj374(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld26$non_lazy_ptr-Lj374(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld27$non_lazy_ptr-Lj374(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	movl	12(%eax),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj375:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj376
	call	LFPC_RERAISE$stub
Lj376:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST
_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj467
Lj467:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj468
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$TESTREPORT$_Ld28$non_lazy_ptr-Lj467(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$TESTREPORT$_Ld19$non_lazy_ptr-Lj467(%esi),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-72(%ebp),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%edx
	leal	-52(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-52(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
Lj468:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj469
	call	LFPC_RERAISE$stub
Lj469:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST
_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TESTSUITEASXML$TTESTSUITE$$ANSISTRING
_TESTREPORT_TESTSUITEASXML$TTESTSUITE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_TESTREPORT_TESTSUITEASXML$TTESTSUITE$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TESTSUITEASXML$TTESTSUITE$LONGINT$$ANSISTRING
_TESTREPORT_TESTSUITEASXML$TTESTSUITE$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj520
Lj520:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj521
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	$32,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-80(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	L_$TESTREPORT$_Ld29$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-84(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$TESTREPORT$_Ld31$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-64(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-60(%ebp)
	leal	-76(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	addl	$2,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj541
	decl	-16(%ebp)
	.align 2
Lj542:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj520(%edi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj543
	jmp	Lj544
Lj543:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	leal	-84(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_TESTREPORT_TESTSUITEASXML$TTESTSUITE$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj569
Lj544:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	L_VMT_FPCUNIT_TTESTCASE$non_lazy_ptr-Lj520(%edi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj570
	jmp	Lj571
Lj570:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-108(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	$32,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-104(%ebp)
	movl	L_$TESTREPORT$_Ld35$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-100(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%esi
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	%esi,%eax
	movl	%esi,%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-80(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld37$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-92(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-88(%ebp)
	leal	-108(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj571:
Lj569:
	cmpl	-16(%ebp),%ebx
	jg	Lj542
Lj541:
	subl	$2,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-100(%ebp)
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	$32,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-84(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld39$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-92(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj520(%edi),%eax
	movl	%eax,-88(%ebp)
	leal	-100(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj521:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj522
	call	LFPC_RERAISE$stub
Lj522:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TESTSUITEASLATEX$TTESTSUITE$$ANSISTRING
_TESTREPORT_TESTSUITEASLATEX$TTESTSUITE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	call	Lj615
Lj615:
	popl	-96(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-76(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj616
	movl	-96(%ebp),%eax
	movl	L_$TESTREPORT$_Ld41$non_lazy_ptr-Lj615(%eax),%ebx
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%esi)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%edi
	jl	Lj622
	decl	-12(%ebp)
	.align 2
Lj623:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*104(%ecx)
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-96(%ebp),%edx
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj615(%edx),%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-96(%ebp),%edx
	movl	L_$TESTREPORT$_Ld43$non_lazy_ptr-Lj615(%edx),%eax
	movl	%eax,-68(%ebp)
	movl	-96(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj615(%eax),%edx
	movl	%edx,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj647
	decl	-16(%ebp)
	.align 2
Lj648:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	-96(%ebp),%eax
	movl	L_VMT_FPCUNIT_TTESTCASE$non_lazy_ptr-Lj615(%eax),%ecx
	movl	%ecx,%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj649
	jmp	Lj650
Lj649:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	-96(%ebp),%edx
	movl	L_$TESTREPORT$_Ld45$non_lazy_ptr-Lj615(%edx),%eax
	movl	%eax,-88(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%ebx
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	%ebx,%eax
	movl	%ebx,%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-76(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	-96(%ebp),%edx
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj615(%edx),%eax
	movl	%eax,-80(%ebp)
	leal	-92(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj650:
	cmpl	-16(%ebp),%esi
	jg	Lj648
Lj647:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	-96(%ebp),%edx
	movl	L_$TESTREPORT$_Ld47$non_lazy_ptr-Lj615(%edx),%eax
	movl	%eax,-84(%ebp)
	movl	-96(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj615(%eax),%edx
	movl	%edx,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%edi
	jg	Lj623
Lj622:
Lj616:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj617
	call	LFPC_RERAISE$stub
Lj617:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TESTSUITEASPLAIN$TTESTSUITE$$ANSISTRING
_TESTREPORT_TESTSUITEASPLAIN$TTESTSUITE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj682
Lj682:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj683
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj687
	decl	-12(%ebp)
	.align 2
Lj688:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr-Lj682(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj689
	jmp	Lj690
Lj689:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	leal	-64(%ebp),%edx
	call	L_TESTREPORT_TESTSUITEASPLAIN$TTESTSUITE$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj713
Lj690:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edx
	movl	L_VMT_FPCUNIT_TTESTCASE$non_lazy_ptr-Lj682(%esi),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj714
	jmp	Lj715
Lj714:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld49$non_lazy_ptr-Lj682(%esi),%eax
	movl	%eax,-84(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-64(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld19$non_lazy_ptr-Lj682(%esi),%eax
	movl	%eax,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,%edi
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	%edi,%eax
	movl	%edi,%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-92(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj682(%esi),%eax
	movl	%eax,-68(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj715:
Lj713:
	cmpl	-12(%ebp),%ebx
	jg	Lj688
Lj687:
Lj683:
	call	LFPC_POPADDRSTACK$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj684
	call	LFPC_RERAISE$stub
Lj684:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_GETSUITEASXML$TTESTSUITE$$ANSISTRING
_TESTREPORT_GETSUITEASXML$TTESTSUITE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj745
Lj745:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj746
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj749
	jmp	Lj750
Lj749:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj751
	jmp	Lj752
Lj751:
	movl	-4(%ebp),%eax
	movl	L_$TESTREPORT$_Ld51$non_lazy_ptr-Lj745(%ebx),%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj752:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TESTREPORT_TESTSUITEASXML$TTESTSUITE$$ANSISTRING$stub
	jmp	Lj765
Lj750:
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
Lj765:
Lj746:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj747
	call	LFPC_RERAISE$stub
Lj747:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_GETSUITEASLATEX$TTESTSUITE$$ANSISTRING
_TESTREPORT_GETSUITEASLATEX$TTESTSUITE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj769
Lj769:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-80(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj770
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj773
	jmp	Lj774
Lj773:
	movl	L_$TESTREPORT$_Ld53$non_lazy_ptr-Lj769(%ebx),%esi
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	L_$TESTREPORT$_Ld55$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-56(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	L_$TESTREPORT$_Ld57$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-72(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-68(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-64(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	L_$TESTREPORT$_Ld59$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-56(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj769(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj795
	jmp	Lj796
Lj795:
	movl	-4(%ebp),%eax
	movl	L_$TESTREPORT$_Ld51$non_lazy_ptr-Lj769(%ebx),%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
Lj796:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TESTREPORT_TESTSUITEASLATEX$TTESTSUITE$$ANSISTRING$stub
	movl	-80(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld61$non_lazy_ptr-Lj769(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj821
Lj774:
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
Lj821:
Lj770:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj771
	call	LFPC_RERAISE$stub
Lj771:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_GETSUITEASPLAIN$TTESTSUITE$$ANSISTRING
_TESTREPORT_GETSUITEASPLAIN$TTESTSUITE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj825
Lj825:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj826
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj831
	jmp	Lj832
Lj831:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_TESTREPORT_TESTSUITEASPLAIN$TTESTSUITE$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld63$non_lazy_ptr-Lj825(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
Lj832:
Lj826:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj827
	call	LFPC_RERAISE$stub
Lj827:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TESTRESULTASXML$TTESTRESULT$$ANSISTRING
_TESTREPORT_TESTRESULTASXML$TTESTRESULT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	call	Lj844
Lj844:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-76(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj845
	movl	L_$TESTREPORT$_Ld65$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-72(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-76(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	L_$TESTREPORT$_Ld67$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-64(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-72(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld69$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT$stub
	leal	-76(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld71$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld73$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT$stub
	leal	-76(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld75$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj882
	jmp	Lj883
Lj882:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld77$non_lazy_ptr-Lj844(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj899
	decl	-12(%ebp)
	.align 2
Lj900:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld79$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld81$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld83$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld85$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld87$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld89$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld91$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld93$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld95$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld97$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	leal	-76(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld99$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld101$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld103$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld105$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%esi
	jg	Lj900
Lj899:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld107$non_lazy_ptr-Lj844(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj883:
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj983
	jmp	Lj984
Lj983:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld109$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj1000
	decl	-12(%ebp)
	.align 2
Lj1001:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld111$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld81$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld83$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld85$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld87$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-96(%ebp)
	movl	L_$TESTREPORT$_Ld89$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld91$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld113$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj844(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%esi
	jg	Lj1001
Lj1000:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld115$non_lazy_ptr-Lj844(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj984:
Lj845:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj846
	call	LFPC_RERAISE$stub
Lj846:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_TESTREPORT_TESTRESULTASPLAIN$TTESTRESULT$$ANSISTRING
_TESTREPORT_TESTRESULTASPLAIN$TTESTRESULT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj1057
Lj1057:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1058
	movl	L_$TESTREPORT$_Ld117$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-72(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld119$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT$stub
	leal	-72(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld121$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-80(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT$stub
	leal	-72(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj1095
	jmp	Lj1096
Lj1095:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld123$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj1118
	decl	-12(%ebp)
	.align 2
Lj1119:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld125$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld127$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld129$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld131$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld133$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld135$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	leal	-72(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld137$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%esi
	jg	Lj1119
Lj1118:
Lj1096:
	movl	-4(%ebp),%eax
	call	L_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj1190
	jmp	Lj1191
Lj1190:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld139$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	8(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj1213
	decl	-12(%ebp)
	.align 2
Lj1214:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	L_$TESTREPORT$_Ld141$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld127$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld129$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	L_$TESTREPORT$_Ld131$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	cmpl	-12(%ebp),%esi
	jg	Lj1214
Lj1213:
Lj1191:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	L_$TESTREPORT$_Ld33$non_lazy_ptr-Lj1057(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1058:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1059
	call	LFPC_RERAISE$stub
Lj1059:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	subl	$8,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT:
	subl	$8,4(%esp)
	jmp	L_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT:
	subl	$8,4(%esp)
	jmp	L_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_3_$__TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_3_$__TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_4_$__TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_4_$__TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_5_$__TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_5_$__TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST:
	subl	$8,%eax
	jmp	L_TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_6_$__TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_6_$__TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST:
	subl	$8,%eax
	jmp	L_TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_7_$__TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_7_$__TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE$stub

.text
.globl	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_8_$__TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_8_$__TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT:
	subl	$8,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT:
	subl	$8,4(%esp)
	jmp	L_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT:
	subl	$8,4(%esp)
	jmp	L_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_3_$__TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_3_$__TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_4_$__TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_4_$__TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_5_$__TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_5_$__TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST:
	subl	$8,%eax
	jmp	L_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_6_$__TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_6_$__TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST:
	subl	$8,%eax
	jmp	L_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_7_$__TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_7_$__TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE$stub

.text
.globl	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_8_$__TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_8_$__TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE:
	subl	$8,%eax
	jmp	L_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE$stub
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
	.align 2
.globl	_$TESTREPORT$_Ld144
_$TESTREPORT$_Ld144:
	.long	1
	.long	_$TESTREPORT$_Ld145
	.long	_VTBL_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER
	.long	8
	.long	_$TESTREPORT$_Ld146
	.long	0

.data
	.align 2
.globl	_VTBL_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER
_VTBL_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER:
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_3_$__TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_4_$__TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_5_$__TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_6_$__TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_7_$__TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
	.long	_WRPR_TESTREPORT_TXMLRESULTSWRITER_$_ITESTLISTENER_$_8_$__TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
	.align 2
.globl	_$TESTREPORT$_Ld145
_$TESTREPORT$_Ld145:
	.long	216650670
	.short	34858,55313
	.byte	148,1,173,235,94,76,127,193
	.align 2
.globl	_$TESTREPORT$_Ld146
_$TESTREPORT$_Ld146:
	.byte	38
	.ascii	"{0CE9D3AE-882A-D811-9401-ADEB5E4C7FC1}"
.globl	_$TESTREPORT$_Ld143
_$TESTREPORT$_Ld143:
	.byte	17
	.ascii	"TXMLResultsWriter"

.const_data
	.align 2
.globl	_VMT_TESTREPORT_TXMLRESULTSWRITER
_VMT_TESTREPORT_TXMLRESULTSWRITER:
	.long	12,-12
	.long	_VMT_TESTUTILS_TNOREFCOUNTOBJECT
	.long	_$TESTREPORT$_Ld143
	.long	0,0
	.long	_$TESTREPORT$_Ld147
	.long	_RTTI_TESTREPORT_TXMLRESULTSWRITER
	.long	0,0
	.long	_$TESTREPORT$_Ld144
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
	.long	_TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	0

.const_data
	.align 2
	.align 2
.globl	_$TESTREPORT$_Ld150
_$TESTREPORT$_Ld150:
	.long	1
	.long	_$TESTREPORT$_Ld151
	.long	_VTBL_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER
	.long	8
	.long	_$TESTREPORT$_Ld152
	.long	0

.data
	.align 2
.globl	_VTBL_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER
_VTBL_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER:
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_0_$__TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_1_$__TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_2_$__TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_3_$__TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_4_$__TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_5_$__TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_6_$__TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_7_$__TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
	.long	_WRPR_TESTREPORT_TPLAINRESULTSWRITER_$_ITESTLISTENER_$_8_$__TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
	.align 2
.globl	_$TESTREPORT$_Ld151
_$TESTREPORT$_Ld151:
	.long	216650670
	.short	34858,55313
	.byte	148,1,173,235,94,76,127,193
	.align 2
.globl	_$TESTREPORT$_Ld152
_$TESTREPORT$_Ld152:
	.byte	38
	.ascii	"{0CE9D3AE-882A-D811-9401-ADEB5E4C7FC1}"
.globl	_$TESTREPORT$_Ld149
_$TESTREPORT$_Ld149:
	.byte	19
	.ascii	"TPlainResultsWriter"

.const_data
	.align 2
.globl	_VMT_TESTREPORT_TPLAINRESULTSWRITER
_VMT_TESTREPORT_TPLAINRESULTSWRITER:
	.long	12,-12
	.long	_VMT_TESTUTILS_TNOREFCOUNTOBJECT
	.long	_$TESTREPORT$_Ld149
	.long	0,0
	.long	_$TESTREPORT$_Ld153
	.long	_RTTI_TESTREPORT_TPLAINRESULTSWRITER
	.long	0,0
	.long	_$TESTREPORT$_Ld150
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
	.long	_TESTUTILS_TNOREFCOUNTOBJECT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_TESTREPORT
_THREADVARLIST_TESTREPORT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$TESTREPORT$_Ld1
_$TESTREPORT$_Ld1:
	.ascii	"\015<testresults>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld2
_$TESTREPORT$_Ld2:
	.ascii	"\015<testlisting>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld3
_$TESTREPORT$_Ld3:
	.ascii	"\016</testlisting>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld4
_$TESTREPORT$_Ld4:
	.ascii	"\016</testresults>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld5
_$TESTREPORT$_Ld5:
	.ascii	"\035<failure ExceptionClassName=\"\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld6
_$TESTREPORT$_Ld6:
	.ascii	"\002\">\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld7
_$TESTREPORT$_Ld7:
	.ascii	"\011<message>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld8
_$TESTREPORT$_Ld8:
	.ascii	"\012</message>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld9
_$TESTREPORT$_Ld9:
	.ascii	"\012</failure>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld10
_$TESTREPORT$_Ld10:
	.ascii	"\033<error ExceptionClassName=\"\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld11
_$TESTREPORT$_Ld11:
	.ascii	"\014<sourceunit>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld12
_$TESTREPORT$_Ld12:
	.ascii	"\015</sourceunit>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld13
_$TESTREPORT$_Ld13:
	.ascii	"\014<methodname>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld14
_$TESTREPORT$_Ld14:
	.ascii	"\015</methodname>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld15
_$TESTREPORT$_Ld15:
	.ascii	"\014<linenumber>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld16
_$TESTREPORT$_Ld16:
	.ascii	"\015</linenumber>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld17
_$TESTREPORT$_Ld17:
	.ascii	"\010</error>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld18
_$TESTREPORT$_Ld18:
	.ascii	"\014<test name=\"\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld20
_$TESTREPORT$_Ld20:
	.short	0,1
	.long	0,-1,1
.reference _$TESTREPORT$_Ld19
.globl	_$TESTREPORT$_Ld19
_$TESTREPORT$_Ld19:
.reference _$TESTREPORT$_Ld20
	.ascii	".\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld21
_$TESTREPORT$_Ld21:
	.ascii	"\007</test>\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld22
_$TESTREPORT$_Ld22:
	.ascii	"\000\000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld23
_$TESTREPORT$_Ld23:
	.ascii	"\011  Error: \000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld24
_$TESTREPORT$_Ld24:
	.ascii	"\021    Exception:   \000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld25
_$TESTREPORT$_Ld25:
	.ascii	"\021    Source unit: \000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld26
_$TESTREPORT$_Ld26:
	.ascii	"\021    Method name: \000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld27
_$TESTREPORT$_Ld27:
	.ascii	"\021    Line number: \000"

.const
	.align 2
.globl	_$TESTREPORT$_Ld28
_$TESTREPORT$_Ld28:
	.ascii	"\006Test: \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld30
_$TESTREPORT$_Ld30:
	.short	0,1
	.long	0,-1,17
.reference _$TESTREPORT$_Ld29
.globl	_$TESTREPORT$_Ld29
_$TESTREPORT$_Ld29:
.reference _$TESTREPORT$_Ld30
	.ascii	"<TestSuite name=\"\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld32
_$TESTREPORT$_Ld32:
	.short	0,1
	.long	0,-1,2
.reference _$TESTREPORT$_Ld31
.globl	_$TESTREPORT$_Ld31
_$TESTREPORT$_Ld31:
.reference _$TESTREPORT$_Ld32
	.ascii	"\">\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld34
_$TESTREPORT$_Ld34:
	.short	0,1
	.long	0,-1,1
.reference _$TESTREPORT$_Ld33
.globl	_$TESTREPORT$_Ld33
_$TESTREPORT$_Ld33:
.reference _$TESTREPORT$_Ld34
	.ascii	"\012\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld36
_$TESTREPORT$_Ld36:
	.short	0,1
	.long	0,-1,6
.reference _$TESTREPORT$_Ld35
.globl	_$TESTREPORT$_Ld35
_$TESTREPORT$_Ld35:
.reference _$TESTREPORT$_Ld36
	.ascii	"<test>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld38
_$TESTREPORT$_Ld38:
	.short	0,1
	.long	0,-1,7
.reference _$TESTREPORT$_Ld37
.globl	_$TESTREPORT$_Ld37
_$TESTREPORT$_Ld37:
.reference _$TESTREPORT$_Ld38
	.ascii	"</test>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld40
_$TESTREPORT$_Ld40:
	.short	0,1
	.long	0,-1,12
.reference _$TESTREPORT$_Ld39
.globl	_$TESTREPORT$_Ld39
_$TESTREPORT$_Ld39:
.reference _$TESTREPORT$_Ld40
	.ascii	"</TestSuite>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld42
_$TESTREPORT$_Ld42:
	.short	0,1
	.long	0,-1,11
.reference _$TESTREPORT$_Ld41
.globl	_$TESTREPORT$_Ld41
_$TESTREPORT$_Ld41:
.reference _$TESTREPORT$_Ld42
	.ascii	"\\flushleft\012\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld44
_$TESTREPORT$_Ld44:
	.short	0,1
	.long	0,-1,15
.reference _$TESTREPORT$_Ld43
.globl	_$TESTREPORT$_Ld43
_$TESTREPORT$_Ld43:
.reference _$TESTREPORT$_Ld44
	.ascii	"\\begin{itemize}\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld46
_$TESTREPORT$_Ld46:
	.short	0,1
	.long	0,-1,9
.reference _$TESTREPORT$_Ld45
.globl	_$TESTREPORT$_Ld45
_$TESTREPORT$_Ld45:
.reference _$TESTREPORT$_Ld46
	.ascii	"\\item[-] \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld48
_$TESTREPORT$_Ld48:
	.short	0,1
	.long	0,-1,13
.reference _$TESTREPORT$_Ld47
.globl	_$TESTREPORT$_Ld47
_$TESTREPORT$_Ld47:
.reference _$TESTREPORT$_Ld48
	.ascii	"\\end{itemize}\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld50
_$TESTREPORT$_Ld50:
	.short	0,1
	.long	0,-1,2
.reference _$TESTREPORT$_Ld49
.globl	_$TESTREPORT$_Ld49
_$TESTREPORT$_Ld49:
.reference _$TESTREPORT$_Ld50
	.ascii	"  \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld52
_$TESTREPORT$_Ld52:
	.short	0,1
	.long	0,-1,10
.reference _$TESTREPORT$_Ld51
.globl	_$TESTREPORT$_Ld51
_$TESTREPORT$_Ld51:
.reference _$TESTREPORT$_Ld52
	.ascii	"Test Suite\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld54
_$TESTREPORT$_Ld54:
	.short	0,1
	.long	0,-1,38
.reference _$TESTREPORT$_Ld53
.globl	_$TESTREPORT$_Ld53
_$TESTREPORT$_Ld53:
.reference _$TESTREPORT$_Ld54
	.ascii	"\\documentclass[a4paper,12pt]{article}\012\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld56
_$TESTREPORT$_Ld56:
	.short	0,1
	.long	0,-1,18
.reference _$TESTREPORT$_Ld55
.globl	_$TESTREPORT$_Ld55
_$TESTREPORT$_Ld55:
.reference _$TESTREPORT$_Ld56
	.ascii	"\\usepackage{array}\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld58
_$TESTREPORT$_Ld58:
	.short	0,1
	.long	0,-1,20
.reference _$TESTREPORT$_Ld57
.globl	_$TESTREPORT$_Ld57
_$TESTREPORT$_Ld57:
.reference _$TESTREPORT$_Ld58
	.ascii	"\\usepackage{mdwlist}\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld60
_$TESTREPORT$_Ld60:
	.short	0,1
	.long	0,-1,16
.reference _$TESTREPORT$_Ld59
.globl	_$TESTREPORT$_Ld59
_$TESTREPORT$_Ld59:
.reference _$TESTREPORT$_Ld60
	.ascii	"\\begin{document}\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld62
_$TESTREPORT$_Ld62:
	.short	0,1
	.long	0,-1,14
.reference _$TESTREPORT$_Ld61
.globl	_$TESTREPORT$_Ld61
_$TESTREPORT$_Ld61:
.reference _$TESTREPORT$_Ld62
	.ascii	"\\end{document}\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld64
_$TESTREPORT$_Ld64:
	.short	0,1
	.long	0,-1,13
.reference _$TESTREPORT$_Ld63
.globl	_$TESTREPORT$_Ld63
_$TESTREPORT$_Ld63:
.reference _$TESTREPORT$_Ld64
	.ascii	"TestSuites: \012\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld66
_$TESTREPORT$_Ld66:
	.short	0,1
	.long	0,-1,21
.reference _$TESTREPORT$_Ld65
.globl	_$TESTREPORT$_Ld65
_$TESTREPORT$_Ld65:
.reference _$TESTREPORT$_Ld66
	.ascii	"<NumberOfRunnedTests>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld68
_$TESTREPORT$_Ld68:
	.short	0,1
	.long	0,-1,22
.reference _$TESTREPORT$_Ld67
.globl	_$TESTREPORT$_Ld67
_$TESTREPORT$_Ld67:
.reference _$TESTREPORT$_Ld68
	.ascii	"</NumberOfRunnedTests>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld70
_$TESTREPORT$_Ld70:
	.short	0,1
	.long	0,-1,16
.reference _$TESTREPORT$_Ld69
.globl	_$TESTREPORT$_Ld69
_$TESTREPORT$_Ld69:
.reference _$TESTREPORT$_Ld70
	.ascii	"<NumberOfErrors>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld72
_$TESTREPORT$_Ld72:
	.short	0,1
	.long	0,-1,17
.reference _$TESTREPORT$_Ld71
.globl	_$TESTREPORT$_Ld71
_$TESTREPORT$_Ld71:
.reference _$TESTREPORT$_Ld72
	.ascii	"</NumberOfErrors>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld74
_$TESTREPORT$_Ld74:
	.short	0,1
	.long	0,-1,18
.reference _$TESTREPORT$_Ld73
.globl	_$TESTREPORT$_Ld73
_$TESTREPORT$_Ld73:
.reference _$TESTREPORT$_Ld74
	.ascii	"<NumberOfFailures>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld76
_$TESTREPORT$_Ld76:
	.short	0,1
	.long	0,-1,19
.reference _$TESTREPORT$_Ld75
.globl	_$TESTREPORT$_Ld75
_$TESTREPORT$_Ld75:
.reference _$TESTREPORT$_Ld76
	.ascii	"</NumberOfFailures>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld78
_$TESTREPORT$_Ld78:
	.short	0,1
	.long	0,-1,14
.reference _$TESTREPORT$_Ld77
.globl	_$TESTREPORT$_Ld77
_$TESTREPORT$_Ld77:
.reference _$TESTREPORT$_Ld78
	.ascii	"<ListOfErrors>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld80
_$TESTREPORT$_Ld80:
	.short	0,1
	.long	0,-1,7
.reference _$TESTREPORT$_Ld79
.globl	_$TESTREPORT$_Ld79
_$TESTREPORT$_Ld79:
.reference _$TESTREPORT$_Ld80
	.ascii	"<Error>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld82
_$TESTREPORT$_Ld82:
	.short	0,1
	.long	0,-1,11
.reference _$TESTREPORT$_Ld81
.globl	_$TESTREPORT$_Ld81
_$TESTREPORT$_Ld81:
.reference _$TESTREPORT$_Ld82
	.ascii	"  <Message>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld84
_$TESTREPORT$_Ld84:
	.short	0,1
	.long	0,-1,10
.reference _$TESTREPORT$_Ld83
.globl	_$TESTREPORT$_Ld83
_$TESTREPORT$_Ld83:
.reference _$TESTREPORT$_Ld84
	.ascii	"</Message>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld86
_$TESTREPORT$_Ld86:
	.short	0,1
	.long	0,-1,18
.reference _$TESTREPORT$_Ld85
.globl	_$TESTREPORT$_Ld85
_$TESTREPORT$_Ld85:
.reference _$TESTREPORT$_Ld86
	.ascii	"  <ExceptionClass>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld88
_$TESTREPORT$_Ld88:
	.short	0,1
	.long	0,-1,17
.reference _$TESTREPORT$_Ld87
.globl	_$TESTREPORT$_Ld87
_$TESTREPORT$_Ld87:
.reference _$TESTREPORT$_Ld88
	.ascii	"</ExceptionClass>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld90
_$TESTREPORT$_Ld90:
	.short	0,1
	.long	0,-1,20
.reference _$TESTREPORT$_Ld89
.globl	_$TESTREPORT$_Ld89
_$TESTREPORT$_Ld89:
.reference _$TESTREPORT$_Ld90
	.ascii	"  <ExceptionMessage>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld92
_$TESTREPORT$_Ld92:
	.short	0,1
	.long	0,-1,19
.reference _$TESTREPORT$_Ld91
.globl	_$TESTREPORT$_Ld91
_$TESTREPORT$_Ld91:
.reference _$TESTREPORT$_Ld92
	.ascii	"</ExceptionMessage>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld94
_$TESTREPORT$_Ld94:
	.short	0,1
	.long	0,-1,18
.reference _$TESTREPORT$_Ld93
.globl	_$TESTREPORT$_Ld93
_$TESTREPORT$_Ld93:
.reference _$TESTREPORT$_Ld94
	.ascii	"  <SourceUnitName>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld96
_$TESTREPORT$_Ld96:
	.short	0,1
	.long	0,-1,17
.reference _$TESTREPORT$_Ld95
.globl	_$TESTREPORT$_Ld95
_$TESTREPORT$_Ld95:
.reference _$TESTREPORT$_Ld96
	.ascii	"</SourceUnitName>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld98
_$TESTREPORT$_Ld98:
	.short	0,1
	.long	0,-1,14
.reference _$TESTREPORT$_Ld97
.globl	_$TESTREPORT$_Ld97
_$TESTREPORT$_Ld97:
.reference _$TESTREPORT$_Ld98
	.ascii	"  <LineNumber>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld100
_$TESTREPORT$_Ld100:
	.short	0,1
	.long	0,-1,13
.reference _$TESTREPORT$_Ld99
.globl	_$TESTREPORT$_Ld99
_$TESTREPORT$_Ld99:
.reference _$TESTREPORT$_Ld100
	.ascii	"</LineNumber>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld102
_$TESTREPORT$_Ld102:
	.short	0,1
	.long	0,-1,20
.reference _$TESTREPORT$_Ld101
.globl	_$TESTREPORT$_Ld101
_$TESTREPORT$_Ld101:
.reference _$TESTREPORT$_Ld102
	.ascii	"  <FailedMethodName>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld104
_$TESTREPORT$_Ld104:
	.short	0,1
	.long	0,-1,19
.reference _$TESTREPORT$_Ld103
.globl	_$TESTREPORT$_Ld103
_$TESTREPORT$_Ld103:
.reference _$TESTREPORT$_Ld104
	.ascii	"</FailedMethodName>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld106
_$TESTREPORT$_Ld106:
	.short	0,1
	.long	0,-1,8
.reference _$TESTREPORT$_Ld105
.globl	_$TESTREPORT$_Ld105
_$TESTREPORT$_Ld105:
.reference _$TESTREPORT$_Ld106
	.ascii	"</Error>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld108
_$TESTREPORT$_Ld108:
	.short	0,1
	.long	0,-1,15
.reference _$TESTREPORT$_Ld107
.globl	_$TESTREPORT$_Ld107
_$TESTREPORT$_Ld107:
.reference _$TESTREPORT$_Ld108
	.ascii	"</ListOfErrors>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld110
_$TESTREPORT$_Ld110:
	.short	0,1
	.long	0,-1,16
.reference _$TESTREPORT$_Ld109
.globl	_$TESTREPORT$_Ld109
_$TESTREPORT$_Ld109:
.reference _$TESTREPORT$_Ld110
	.ascii	"<ListOfFailures>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld112
_$TESTREPORT$_Ld112:
	.short	0,1
	.long	0,-1,9
.reference _$TESTREPORT$_Ld111
.globl	_$TESTREPORT$_Ld111
_$TESTREPORT$_Ld111:
.reference _$TESTREPORT$_Ld112
	.ascii	"<Failure>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld114
_$TESTREPORT$_Ld114:
	.short	0,1
	.long	0,-1,10
.reference _$TESTREPORT$_Ld113
.globl	_$TESTREPORT$_Ld113
_$TESTREPORT$_Ld113:
.reference _$TESTREPORT$_Ld114
	.ascii	"</Failure>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld116
_$TESTREPORT$_Ld116:
	.short	0,1
	.long	0,-1,17
.reference _$TESTREPORT$_Ld115
.globl	_$TESTREPORT$_Ld115
_$TESTREPORT$_Ld115:
.reference _$TESTREPORT$_Ld116
	.ascii	"</ListOfFailures>\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld118
_$TESTREPORT$_Ld118:
	.short	0,1
	.long	0,-1,21
.reference _$TESTREPORT$_Ld117
.globl	_$TESTREPORT$_Ld117
_$TESTREPORT$_Ld117:
.reference _$TESTREPORT$_Ld118
	.ascii	"Number of run tests: \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld120
_$TESTREPORT$_Ld120:
	.short	0,1
	.long	0,-1,21
.reference _$TESTREPORT$_Ld119
.globl	_$TESTREPORT$_Ld119
_$TESTREPORT$_Ld119:
.reference _$TESTREPORT$_Ld120
	.ascii	"Number of errors:    \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld122
_$TESTREPORT$_Ld122:
	.short	0,1
	.long	0,-1,21
.reference _$TESTREPORT$_Ld121
.globl	_$TESTREPORT$_Ld121
_$TESTREPORT$_Ld121:
.reference _$TESTREPORT$_Ld122
	.ascii	"Number of failures:  \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld124
_$TESTREPORT$_Ld124:
	.short	0,1
	.long	0,-1,15
.reference _$TESTREPORT$_Ld123
.globl	_$TESTREPORT$_Ld123
_$TESTREPORT$_Ld123:
.reference _$TESTREPORT$_Ld124
	.ascii	"List of errors:\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld126
_$TESTREPORT$_Ld126:
	.short	0,1
	.long	0,-1,9
.reference _$TESTREPORT$_Ld125
.globl	_$TESTREPORT$_Ld125
_$TESTREPORT$_Ld125:
.reference _$TESTREPORT$_Ld126
	.ascii	"  Error: \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld128
_$TESTREPORT$_Ld128:
	.short	0,1
	.long	0,-1,23
.reference _$TESTREPORT$_Ld127
.globl	_$TESTREPORT$_Ld127
_$TESTREPORT$_Ld127:
.reference _$TESTREPORT$_Ld128
	.ascii	"    Message:           \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld130
_$TESTREPORT$_Ld130:
	.short	0,1
	.long	0,-1,23
.reference _$TESTREPORT$_Ld129
.globl	_$TESTREPORT$_Ld129
_$TESTREPORT$_Ld129:
.reference _$TESTREPORT$_Ld130
	.ascii	"    Exception class:   \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld132
_$TESTREPORT$_Ld132:
	.short	0,1
	.long	0,-1,23
.reference _$TESTREPORT$_Ld131
.globl	_$TESTREPORT$_Ld131
_$TESTREPORT$_Ld131:
.reference _$TESTREPORT$_Ld132
	.ascii	"    Exception message: \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld134
_$TESTREPORT$_Ld134:
	.short	0,1
	.long	0,-1,23
.reference _$TESTREPORT$_Ld133
.globl	_$TESTREPORT$_Ld133
_$TESTREPORT$_Ld133:
.reference _$TESTREPORT$_Ld134
	.ascii	"    Source unitname:   \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld136
_$TESTREPORT$_Ld136:
	.short	0,1
	.long	0,-1,23
.reference _$TESTREPORT$_Ld135
.globl	_$TESTREPORT$_Ld135
_$TESTREPORT$_Ld135:
.reference _$TESTREPORT$_Ld136
	.ascii	"    Line number:       \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld138
_$TESTREPORT$_Ld138:
	.short	0,1
	.long	0,-1,23
.reference _$TESTREPORT$_Ld137
.globl	_$TESTREPORT$_Ld137
_$TESTREPORT$_Ld137:
.reference _$TESTREPORT$_Ld138
	.ascii	"    Failed methodname: \000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld140
_$TESTREPORT$_Ld140:
	.short	0,1
	.long	0,-1,17
.reference _$TESTREPORT$_Ld139
.globl	_$TESTREPORT$_Ld139
_$TESTREPORT$_Ld139:
.reference _$TESTREPORT$_Ld140
	.ascii	"List of failures:\000"

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld142
_$TESTREPORT$_Ld142:
	.short	0,1
	.long	0,-1,11
.reference _$TESTREPORT$_Ld141
.globl	_$TESTREPORT$_Ld141
_$TESTREPORT$_Ld141:
.reference _$TESTREPORT$_Ld142
	.ascii	"  Failure: \000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
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

L_TESTREPORT_TESTRESULTASXML$TTESTRESULT$$ANSISTRING$stub:
.indirect_symbol _TESTREPORT_TESTRESULTASXML$TTESTRESULT$$ANSISTRING
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

L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONCLASSNAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TTESTFAILURE_$__GETEXCEPTIONMESSAGE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_sint$stub:
.indirect_symbol fpc_write_text_sint
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

L_TESTREPORT_TESTRESULTASPLAIN$TTESTRESULT$$ANSISTRING$stub:
.indirect_symbol _TESTREPORT_TESTRESULTASPLAIN$TTESTRESULT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_end$stub:
.indirect_symbol fpc_write_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TESTSUITEASXML$TTESTSUITE$LONGINT$$ANSISTRING$stub:
.indirect_symbol _TESTREPORT_TESTSUITEASXML$TTESTSUITE$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
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

L_TESTREPORT_TESTSUITEASPLAIN$TTESTSUITE$$ANSISTRING$stub:
.indirect_symbol _TESTREPORT_TESTSUITEASPLAIN$TTESTSUITE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TESTSUITEASXML$TTESTSUITE$$ANSISTRING$stub:
.indirect_symbol _TESTREPORT_TESTSUITEASXML$TTESTSUITE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TESTSUITEASLATEX$TTESTSUITE$$ANSISTRING$stub:
.indirect_symbol _TESTREPORT_TESTSUITEASLATEX$TTESTSUITE$$ANSISTRING
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

L_FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__GETNUMERRORS$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT$stub:
.indirect_symbol _FPCUNIT_TTESTRESULT_$__GETNUMFAILURES$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING$stub:
.indirect_symbol _FPCUNIT_TTESTFAILURE_$__GETASSTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT$stub:
.indirect_symbol _TESTUTILS_TNOREFCOUNTOBJECT_$___ADDREF$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT$stub:
.indirect_symbol _TESTUTILS_TNOREFCOUNTOBJECT_$___RELEASE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE$stub:
.indirect_symbol _TESTREPORT_TXMLRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE$stub:
.indirect_symbol _TESTREPORT_TXMLRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST$stub:
.indirect_symbol _TESTREPORT_TXMLRESULTSWRITER_$__STARTTEST$TTEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST$stub:
.indirect_symbol _TESTREPORT_TXMLRESULTSWRITER_$__ENDTEST$TTEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE$stub:
.indirect_symbol _TESTREPORT_TXMLRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE$stub:
.indirect_symbol _TESTREPORT_TXMLRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE$stub:
.indirect_symbol _TESTREPORT_TPLAINRESULTSWRITER_$__ADDFAILURE$TTEST$TTESTFAILURE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE$stub:
.indirect_symbol _TESTREPORT_TPLAINRESULTSWRITER_$__ADDERROR$TTEST$TTESTFAILURE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST$stub:
.indirect_symbol _TESTREPORT_TPLAINRESULTSWRITER_$__STARTTEST$TTEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST$stub:
.indirect_symbol _TESTREPORT_TPLAINRESULTSWRITER_$__ENDTEST$TTEST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE$stub:
.indirect_symbol _TESTREPORT_TPLAINRESULTSWRITER_$__STARTTESTSUITE$TTESTSUITE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE$stub:
.indirect_symbol _TESTREPORT_TPLAINRESULTSWRITER_$__ENDTESTSUITE$TTESTSUITE
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
.globl	_INIT_TESTREPORT_DEF55
_INIT_TESTREPORT_DEF55:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld147
_$TESTREPORT$_Ld147:
	.short	0
	.long	_$TESTREPORT$_Ld148
	.align 2
.globl	_$TESTREPORT$_Ld148
_$TESTREPORT$_Ld148:
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTREPORT_TXMLRESULTSWRITER
_INIT_TESTREPORT_TXMLRESULTSWRITER:
	.byte	15,17
	.ascii	"TXMLResultsWriter"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TESTREPORT_TXMLRESULTSWRITER
_RTTI_TESTREPORT_TXMLRESULTSWRITER:
	.byte	15,17
	.ascii	"TXMLResultsWriter"
	.long	_VMT_TESTREPORT_TXMLRESULTSWRITER
	.long	_RTTI_TESTUTILS_TNOREFCOUNTOBJECT
	.short	0
	.byte	10
	.ascii	"testreport"
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF73
_INIT_TESTREPORT_DEF73:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$TESTREPORT$_Ld153
_$TESTREPORT$_Ld153:
	.short	0
	.long	_$TESTREPORT$_Ld154
	.align 2
.globl	_$TESTREPORT$_Ld154
_$TESTREPORT$_Ld154:
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTREPORT_TPLAINRESULTSWRITER
_INIT_TESTREPORT_TPLAINRESULTSWRITER:
	.byte	15,19
	.ascii	"TPlainResultsWriter"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_TESTREPORT_TPLAINRESULTSWRITER
_RTTI_TESTREPORT_TPLAINRESULTSWRITER:
	.byte	15,19
	.ascii	"TPlainResultsWriter"
	.long	_VMT_TESTREPORT_TPLAINRESULTSWRITER
	.long	_RTTI_TESTUTILS_TNOREFCOUNTOBJECT
	.short	0
	.byte	10
	.ascii	"testreport"
	.short	0

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF86
_INIT_TESTREPORT_DEF86:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF87
_INIT_TESTREPORT_DEF87:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF88
_INIT_TESTREPORT_DEF88:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF96
_INIT_TESTREPORT_DEF96:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF97
_INIT_TESTREPORT_DEF97:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF98
_INIT_TESTREPORT_DEF98:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF99
_INIT_TESTREPORT_DEF99:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF104
_INIT_TESTREPORT_DEF104:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF119
_INIT_TESTREPORT_DEF119:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF120
_INIT_TESTREPORT_DEF120:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF121
_INIT_TESTREPORT_DEF121:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF159
_INIT_TESTREPORT_DEF159:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF160
_INIT_TESTREPORT_DEF160:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF161
_INIT_TESTREPORT_DEF161:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF162
_INIT_TESTREPORT_DEF162:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF163
_INIT_TESTREPORT_DEF163:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF164
_INIT_TESTREPORT_DEF164:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF165
_INIT_TESTREPORT_DEF165:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF166
_INIT_TESTREPORT_DEF166:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF167
_INIT_TESTREPORT_DEF167:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF168
_INIT_TESTREPORT_DEF168:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF169
_INIT_TESTREPORT_DEF169:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF170
_INIT_TESTREPORT_DEF170:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF171
_INIT_TESTREPORT_DEF171:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF172
_INIT_TESTREPORT_DEF172:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF173
_INIT_TESTREPORT_DEF173:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF174
_INIT_TESTREPORT_DEF174:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF175
_INIT_TESTREPORT_DEF175:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF193
_INIT_TESTREPORT_DEF193:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF194
_INIT_TESTREPORT_DEF194:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF195
_INIT_TESTREPORT_DEF195:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF196
_INIT_TESTREPORT_DEF196:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF197
_INIT_TESTREPORT_DEF197:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF198
_INIT_TESTREPORT_DEF198:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF199
_INIT_TESTREPORT_DEF199:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF200
_INIT_TESTREPORT_DEF200:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF201
_INIT_TESTREPORT_DEF201:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF202
_INIT_TESTREPORT_DEF202:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF203
_INIT_TESTREPORT_DEF203:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF204
_INIT_TESTREPORT_DEF204:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF205
_INIT_TESTREPORT_DEF205:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF206
_INIT_TESTREPORT_DEF206:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_TESTREPORT_DEF207
_INIT_TESTREPORT_DEF207:
	.byte	12
	.ascii	"\000"
	.long	4,4
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
L_$TESTREPORT$_Ld1$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld2$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld3$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld4$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld5$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld6$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld7$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld8$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld9$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld10$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld11$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld12$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld13$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld14$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld15$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld16$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld17$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld18$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld19$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld21$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld22$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld23$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld24$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld25$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld26$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld27$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld28$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld29$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld31$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld33$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTSUITE$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTSUITE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCUNIT_TTESTCASE$non_lazy_ptr:
.indirect_symbol _VMT_FPCUNIT_TTESTCASE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld35$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld37$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld39$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld41$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld43$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld45$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld47$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld49$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld51$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld53$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld55$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld57$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld59$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld61$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld63$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld65$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld67$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld69$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld71$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld73$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld75$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld77$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld79$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld81$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld83$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld85$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld87$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld89$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld89
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld91$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld91
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld93$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld93
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld95$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld97$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld99$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld101$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld103$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld105$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld105
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld107$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld107
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld109$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld109
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld111$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld111
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld113$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld113
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld115$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld115
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld117$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld117
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld119$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld119
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld121$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld121
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld123$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld123
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld125$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld125
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld127$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld127
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld129$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld129
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld131$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld131
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld133$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld133
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld135$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld135
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld137$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld137
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld139$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld139
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$TESTREPORT$_Ld141$non_lazy_ptr:
.indirect_symbol _$TESTREPORT$_Ld141
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

