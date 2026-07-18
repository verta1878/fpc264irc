# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$__CREATE$$TFPWRITERXPM
_FPWRITEXPM_TFPWRITERXPM_$__CREATE$$TFPWRITERXPM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj6:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub
	movl	L_$FPWRITEXPM$_Ld1$non_lazy_ptr-Lj4(%ebx),%esi
	movl	-8(%ebp),%edi
	leal	20(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,20(%edi)
	movl	-8(%ebp),%eax
	movb	$4,30(%eax)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj31
Lj32:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj30
	jmp	Lj31
Lj30:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj31:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj36
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj38:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj36:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj35
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj35:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$__SETCOLORSIZE$BYTE
_FPWRITEXPM_TFPWRITERXPM_$__SETCOLORSIZE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movzbl	-4(%ebp),%eax
	cmpl	$3,%eax
	jg	Lj45
	jmp	Lj46
Lj45:
	movl	-8(%ebp),%eax
	movb	$4,30(%eax)
	jmp	Lj49
Lj46:
	movzbl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj50
	jmp	Lj51
Lj50:
	movl	-8(%ebp),%eax
	movb	$1,30(%eax)
	jmp	Lj54
Lj51:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,30(%eax)
Lj54:
Lj49:
	leave
	ret

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$__COLORTOHEX$TFPCOLOR$$ANSISTRING
_FPWRITEXPM_TFPWRITERXPM_$__COLORTOHEX$TFPCOLOR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-26(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-22(%ebp)
	movzwl	-26(%ebp),%eax
	movl	-8(%ebp),%edx
	movzwl	28(%edx),%ecx
	shrl	%cl,%eax
	movw	%ax,-14(%ebp)
	movzwl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	movzwl	28(%edx),%ecx
	shrl	%cl,%eax
	movw	%ax,-16(%ebp)
	movzwl	-22(%ebp),%eax
	movl	-8(%ebp),%edx
	movzwl	28(%edx),%ecx
	shrl	%cl,%eax
	movw	%ax,-18(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movzwl	-14(%ebp),%eax
	movl	%eax,-46(%ebp)
	movl	$0,-50(%ebp)
	movzwl	-16(%ebp),%eax
	movl	%eax,-38(%ebp)
	movl	$0,-42(%ebp)
	movzwl	-18(%ebp),%eax
	movl	%eax,-30(%ebp)
	movl	$0,-34(%ebp)
	leal	-50(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	$2,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITEXPM_TFPWRITERXPM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-188(%ebp)
	movl	%esi,-184(%ebp)
	movl	%edi,-180(%ebp)
	call	Lj74
Lj74:
	popl	-176(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-172(%ebp)
	movl	$0,-168(%ebp)
	movl	$0,-132(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj81
	movl	-176(%ebp),%eax
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj74(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-20(%ebp)
	movl	-176(%ebp),%eax
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj74(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	movl	$0,-40(%ebp)
	leal	-100(%ebp),%ecx
	leal	-124(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-128(%ebp)
	testl	%eax,%eax
	jne	Lj98
	movl	-20(%ebp),%eax
	movl	-176(%ebp),%ecx
	movl	L_$FPWRITEXPM$_Ld3$non_lazy_ptr-Lj74(%ecx),%edx
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-20(%ebp),%eax
	movl	-176(%ebp),%ecx
	movl	L_$FPWRITEXPM$_Ld5$non_lazy_ptr-Lj74(%ecx),%edx
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-44(%ebp)
	cmpl	$0,-44(%ebp)
	jne	Lj113
	jmp	Lj112
Lj112:
	movl	-176(%ebp),%eax
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj74(%eax),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	-40(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	-40(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj113:
	movl	-44(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	%ebp,%eax
	call	L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS$stub
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-160(%ebp)
	movl	$0,-164(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-152(%ebp)
	movl	$0,-156(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-144(%ebp)
	movl	$0,-148(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-136(%ebp)
	movl	$0,-140(%ebp)
	leal	-164(%ebp),%edx
	movl	$3,%ecx
	movl	-176(%ebp),%eax
	movl	L_$FPWRITEXPM$_Ld7$non_lazy_ptr-Lj74(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-132(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	%ebp,%eax
	call	L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_INITCONSTS$stub
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%esi
	jl	Lj149
	decl	-32(%ebp)
	.align 2
Lj150:
	incl	-32(%ebp)
	movl	-32(%ebp),%edx
	movl	-44(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-140(%ebp)
	movl	%edx,-136(%ebp)
	leal	-140(%ebp),%eax
	movl	-176(%ebp),%ecx
	movl	L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr-Lj74(%ecx),%edx
	call	L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj151
	jmp	Lj152
Lj151:
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%eax
	movl	%eax,(%esp)
	leal	-168(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-168(%ebp)
	leal	-168(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-168(%ebp),%eax
	movl	%eax,-144(%ebp)
	movl	$11,-148(%ebp)
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	movl	-32(%ebp),%edx
	movl	-44(%ebp),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-156(%ebp)
	movl	%edx,-152(%ebp)
	leal	-156(%ebp),%edx
	leal	-172(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPWRITEXPM_TFPWRITERXPM_$__COLORTOHEX$TFPCOLOR$$ANSISTRING$stub
	movl	-172(%ebp),%eax
	movl	%eax,-136(%ebp)
	movl	$11,-140(%ebp)
	leal	-148(%ebp),%edx
	movl	$1,%ecx
	movl	-176(%ebp),%eax
	movl	L_$FPWRITEXPM$_Ld9$non_lazy_ptr-Lj74(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-132(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj189
Lj152:
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	leal	-172(%ebp),%eax
	movl	%eax,(%esp)
	leal	-168(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-168(%ebp)
	leal	-168(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-168(%ebp),%eax
	movl	%eax,-136(%ebp)
	movl	$11,-140(%ebp)
	leal	-140(%ebp),%edx
	movl	$0,%ecx
	movl	-176(%ebp),%eax
	movl	L_$FPWRITEXPM$_Ld11$non_lazy_ptr-Lj74(%eax),%ebx
	movl	%ebx,%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-172(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj189:
	cmpl	-32(%ebp),%esi
	jg	Lj150
Lj149:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%edi
	jl	Lj209
	decl	-32(%ebp)
	.align 2
Lj210:
	incl	-32(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj214
	decl	-36(%ebp)
	.align 2
Lj215:
	incl	-36(%ebp)
	cmpl	$0,-40(%ebp)
	jne	Lj216
	jmp	Lj217
Lj216:
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-140(%ebp)
	movl	%edx,-136(%ebp)
	leal	-140(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	-40(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	%eax,%edx
	leal	-172(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-172(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj240
Lj217:
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	leal	-172(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-172(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj240:
	cmpl	-36(%ebp),%esi
	jg	Lj215
Lj214:
	movl	-176(%ebp),%edx
	movl	L_$FPWRITEXPM$_Ld13$non_lazy_ptr-Lj74(%edx),%eax
	movl	%eax,-144(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	-176(%ebp),%eax
	movl	L_$FPWRITEXPM$_Ld13$non_lazy_ptr-Lj74(%eax),%edx
	movl	%edx,-136(%ebp)
	leal	-144(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	cmpl	-32(%ebp),%eax
	jg	Lj265
	jmp	Lj266
Lj265:
	movl	-48(%ebp),%edx
	leal	-48(%ebp),%ecx
	movl	-176(%ebp),%eax
	movl	L_$FPWRITEXPM$_Ld15$non_lazy_ptr-Lj74(%eax),%ebx
	movl	%ecx,%eax
	movl	%ebx,%ecx
	call	Lfpc_ansistr_concat$stub
Lj266:
	movl	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-32(%ebp),%edi
	jg	Lj210
Lj209:
	movl	-20(%ebp),%eax
	movl	-176(%ebp),%ecx
	movl	L_$FPWRITEXPM$_Ld17$non_lazy_ptr-Lj74(%ecx),%edx
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj98:
	call	LFPC_POPADDRSTACK$stub
	movl	-40(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*232(%ecx)
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-128(%ebp),%eax
	testl	%eax,%eax
	je	Lj99
	decl	%eax
	testl	%eax,%eax
	je	Lj100
Lj100:
	call	LFPC_RERAISE$stub
Lj99:
Lj81:
	call	LFPC_POPADDRSTACK$stub
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	leal	-168(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-168(%ebp)
	leal	-132(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-132(%ebp)
	leal	-48(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-48(%ebp)
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj82
	call	LFPC_RERAISE$stub
Lj82:
	movl	-188(%ebp),%ebx
	movl	-184(%ebp),%esi
	movl	-180(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_INITCONSTS
_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_INITCONSTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj80
Lj80:
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
	jne	Lj297
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movzbl	30(%eax),%eax
	leal	-8(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	L_$FPWRITEXPM$_Ld19$non_lazy_ptr-Lj80(%ebx),%eax
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	L_$FPWRITEXPM$_Ld21$non_lazy_ptr-Lj80(%ebx),%eax
	movl	%eax,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPWRITEXPM$_Ld23$non_lazy_ptr-Lj80(%ebx),%eax
	movl	%eax,-52(%ebp)
	leal	-68(%ebp),%edx
	leal	-8(%ebp),%eax
	movl	$4,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	leal	24(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movb	30(%eax),%al
	cmpb	$1,%al
	jb	Lj317
	decb	%al
	je	Lj318
	decb	%al
	je	Lj319
	decb	%al
	je	Lj320
	jmp	Lj317
Lj318:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movw	$12,28(%eax)
	jmp	Lj316
Lj319:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movw	$8,28(%eax)
	jmp	Lj316
Lj320:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movw	$4,28(%eax)
	jmp	Lj316
Lj317:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movw	$0,28(%eax)
Lj316:
Lj297:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj298
	call	LFPC_RERAISE$stub
Lj298:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS
_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,-28(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj339
	movl	-4(%eax),%eax
Lj339:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-44(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj347
	.align 2
Lj346:
	movl	-4(%ebp),%eax
	incl	-28(%eax)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-8(%ebp)
Lj347:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj346
	jmp	Lj348
Lj348:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%ecx
	movl	%ebp,%eax
	movl	$0,%edx
	call	L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS_MAKECODES$crc542113EE$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS_MAKECODES$crc542113EE
_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS_MAKECODES$crc542113EE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj357
	movl	$1,-16(%ebp)
	decl	-8(%ebp)
	jmp	Lj363
	.align 2
Lj362:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj365
	jmp	Lj366
Lj365:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-64(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-60(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS_MAKECODES$crc542113EE$stub
	jmp	Lj383
Lj366:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	leal	-60(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-64(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	-16(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-12(%ebp),%eax
	decl	-12(%eax)
Lj383:
	incl	-16(%ebp)
Lj363:
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-16(%ebp),%eax
	jge	Lj398
	jmp	Lj364
Lj398:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$0,%eax
	jge	Lj362
	jmp	Lj364
Lj364:
Lj357:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj358
	call	LFPC_RERAISE$stub
Lj358:
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITEXPM
_INIT$_FPWRITEXPM:
.reference __FPWRITEXPM_init
.globl	__FPWRITEXPM_init
__FPWRITEXPM_init:
.reference _INIT$_FPWRITEXPM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPWRITEXPM_TFPWRITERXPM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEXPM$_Ld25$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPWRITEXPM$_Ld27$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld29
_$FPWRITEXPM$_Ld29:
	.byte	12
	.ascii	"TFPWriterXPM"

.const_data
	.align 2
.globl	_VMT_FPWRITEXPM_TFPWRITERXPM
_VMT_FPWRITEXPM_TFPWRITERXPM:
	.long	32,-32
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITEXPM$_Ld29
	.long	0,0
	.long	_$FPWRITEXPM$_Ld30
	.long	_RTTI_FPWRITEXPM_TFPWRITERXPM
	.long	_INIT_FPWRITEXPM_TFPWRITERXPM
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPWRITEXPM_TFPWRITERXPM_$__CREATE$$TFPWRITERXPM
	.long	_FPWRITEXPM_TFPWRITERXPM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITEXPM
_THREADVARLIST_FPWRITEXPM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld2
_$FPWRITEXPM$_Ld2:
	.short	0,1
	.long	0,-1,78
.reference _$FPWRITEXPM$_Ld1
.globl	_$FPWRITEXPM$_Ld1
_$FPWRITEXPM$_Ld1:
.reference _$FPWRITEXPM$_Ld2
	.ascii	".,-*abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTU"
	.ascii	"VWXYZ0123456789@#;:=+%$()[]\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld4
_$FPWRITEXPM$_Ld4:
	.short	0,1
	.long	0,-1,9
.reference _$FPWRITEXPM$_Ld3
.globl	_$FPWRITEXPM$_Ld3
_$FPWRITEXPM$_Ld3:
.reference _$FPWRITEXPM$_Ld4
	.ascii	"/* XPM */\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld6
_$FPWRITEXPM$_Ld6:
	.short	0,1
	.long	0,-1,26
.reference _$FPWRITEXPM$_Ld5
.globl	_$FPWRITEXPM$_Ld5
_$FPWRITEXPM$_Ld5:
.reference _$FPWRITEXPM$_Ld6
	.ascii	"static char *graphic[] = {\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld8
_$FPWRITEXPM$_Ld8:
	.short	0,1
	.long	0,-1,14
.reference _$FPWRITEXPM$_Ld7
.globl	_$FPWRITEXPM$_Ld7
_$FPWRITEXPM$_Ld7:
.reference _$FPWRITEXPM$_Ld8
	.ascii	"\"%d %d %d %d\",\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld10
_$FPWRITEXPM$_Ld10:
	.short	0,1
	.long	0,-1,11
.reference _$FPWRITEXPM$_Ld9
.globl	_$FPWRITEXPM$_Ld9
_$FPWRITEXPM$_Ld9:
.reference _$FPWRITEXPM$_Ld10
	.ascii	"\"%s c #%s\",\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld12
_$FPWRITEXPM$_Ld12:
	.short	0,1
	.long	0,-1,12
.reference _$FPWRITEXPM$_Ld11
.globl	_$FPWRITEXPM$_Ld11
_$FPWRITEXPM$_Ld11:
.reference _$FPWRITEXPM$_Ld12
	.ascii	"\"%s c None\",\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld14
_$FPWRITEXPM$_Ld14:
	.short	0,1
	.long	0,-1,1
.reference _$FPWRITEXPM$_Ld13
.globl	_$FPWRITEXPM$_Ld13
_$FPWRITEXPM$_Ld13:
.reference _$FPWRITEXPM$_Ld14
	.ascii	"\"\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld16
_$FPWRITEXPM$_Ld16:
	.short	0,1
	.long	0,-1,1
.reference _$FPWRITEXPM$_Ld15
.globl	_$FPWRITEXPM$_Ld15
_$FPWRITEXPM$_Ld15:
.reference _$FPWRITEXPM$_Ld16
	.ascii	",\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld18
_$FPWRITEXPM$_Ld18:
	.short	0,1
	.long	0,-1,2
.reference _$FPWRITEXPM$_Ld17
.globl	_$FPWRITEXPM$_Ld17
_$FPWRITEXPM$_Ld17:
.reference _$FPWRITEXPM$_Ld18
	.ascii	"};\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld20
_$FPWRITEXPM$_Ld20:
	.short	0,1
	.long	0,-1,1
.reference _$FPWRITEXPM$_Ld19
.globl	_$FPWRITEXPM$_Ld19
_$FPWRITEXPM$_Ld19:
.reference _$FPWRITEXPM$_Ld20
	.ascii	"%\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld22
_$FPWRITEXPM$_Ld22:
	.short	0,1
	.long	0,-1,1
.reference _$FPWRITEXPM$_Ld21
.globl	_$FPWRITEXPM$_Ld21
_$FPWRITEXPM$_Ld21:
.reference _$FPWRITEXPM$_Ld22
	.ascii	".\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld24
_$FPWRITEXPM$_Ld24:
	.short	0,1
	.long	0,-1,1
.reference _$FPWRITEXPM$_Ld23
.globl	_$FPWRITEXPM$_Ld23
_$FPWRITEXPM$_Ld23:
.reference _$FPWRITEXPM$_Ld24
	.ascii	"x\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld26
_$FPWRITEXPM$_Ld26:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEXPM$_Ld25
.globl	_$FPWRITEXPM$_Ld25
_$FPWRITEXPM$_Ld25:
.reference _$FPWRITEXPM$_Ld26
	.ascii	"xpm\000"

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld28
_$FPWRITEXPM$_Ld28:
	.short	0,1
	.long	0,-1,10
.reference _$FPWRITEXPM$_Ld27
.globl	_$FPWRITEXPM$_Ld27
_$FPWRITEXPM$_Ld27:
.reference _$FPWRITEXPM$_Ld28
	.ascii	"XPM Format\000"
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

L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
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

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
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

L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS$stub:
.indirect_symbol _FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_INITCONSTS$stub:
.indirect_symbol _FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_INITCONSTS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_equal$TFPCOLOR$TFPCOLOR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEXPM_TFPWRITERXPM_$__COLORTOHEX$TFPCOLOR$$ANSISTRING$stub:
.indirect_symbol _FPWRITEXPM_TFPWRITERXPM_$__COLORTOHEX$TFPCOLOR$$ANSISTRING
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT
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

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS_MAKECODES$crc542113EE$stub:
.indirect_symbol _FPWRITEXPM_TFPWRITERXPM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_BUILDPALETTESTRINGS_MAKECODES$crc542113EE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
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
.globl	_INIT_FPWRITEXPM_DEF39
_INIT_FPWRITEXPM_DEF39:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPWRITEXPM_DEF40
_INIT_FPWRITEXPM_DEF40:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPWRITEXPM_DEF33
_INIT_FPWRITEXPM_DEF33:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPWRITEXPM_DEF35
_INIT_FPWRITEXPM_DEF35:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPWRITEXPM_DEF38
_INIT_FPWRITEXPM_DEF38:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPWRITEXPM$_Ld30
_$FPWRITEXPM$_Ld30:
	.short	0
	.long	_$FPWRITEXPM$_Ld31
	.align 2
.globl	_$FPWRITEXPM$_Ld31
_$FPWRITEXPM$_Ld31:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEXPM_TFPWRITERXPM
_INIT_FPWRITEXPM_TFPWRITERXPM:
	.byte	15,12
	.ascii	"TFPWriterXPM"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24

.const_data
	.align 2
.globl	_RTTI_FPWRITEXPM_TFPWRITERXPM
_RTTI_FPWRITEXPM_TFPWRITERXPM:
	.byte	15,12
	.ascii	"TFPWriterXPM"
	.long	_VMT_FPWRITEXPM_TFPWRITERXPM
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	10
	.ascii	"FPWriteXPM"
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
L_$FPWRITEXPM$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLTRANSPARENT$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLTRANSPARENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEXPM_TFPWRITERXPM$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEXPM_TFPWRITERXPM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEXPM$_Ld27$non_lazy_ptr:
.indirect_symbol _$FPWRITEXPM$_Ld27
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

