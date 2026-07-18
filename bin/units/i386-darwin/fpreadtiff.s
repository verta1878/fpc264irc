# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADTIFF_CMYKTOFPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR
_FPREADTIFF_CMYKTOFPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-44(%ebp)
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movzwl	8(%ebp),%eax
	movl	$0,%ecx
	movl	$65535,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	$0,%edx
	sbbl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	$65535,%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	$0,%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	movzwl	8(%ebp),%ecx
	movl	$0,%ebx
	subl	%ecx,%eax
	sbbl	%ebx,%edx
	movl	%eax,-24(%ebp)
	movzwl	-8(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movzwl	8(%ebp),%eax
	movl	$0,%ecx
	movl	$65535,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	$0,%edx
	sbbl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	$65535,%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	$0,%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	movzwl	8(%ebp),%ecx
	movl	$0,%ebx
	subl	%ecx,%eax
	sbbl	%ebx,%edx
	movl	%eax,-28(%ebp)
	movzwl	-12(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movzwl	8(%ebp),%eax
	movl	$0,%ecx
	movl	$65535,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	$0,%edx
	sbbl	%ecx,%edx
	movl	%edx,%ecx
	movl	%ecx,4(%esp)
	movl	%eax,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	shrdl	$16,%edx,%eax
	shrl	$16,%edx
	movl	$65535,%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	$0,%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	movzwl	8(%ebp),%ecx
	movl	$0,%ebx
	subl	%ecx,%eax
	sbbl	%ebx,%edx
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%ecx
	andl	$65535,%ecx
	movl	-28(%ebp),%eax
	andl	$65535,%eax
	movl	-24(%ebp),%ebx
	andl	$65535,%ebx
	movw	%ax,%dx
	movw	%bx,%ax
	call	L_FPIMAGE_FPCOLOR$WORD$WORD$WORD$$TFPCOLOR$stub
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-44(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING
_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	call	Lj38
Lj38:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj39
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPREADTIFF$_Ld1$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	leal	-4(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-8(%ebp),%eax
	movl	56(%eax),%edx
	movl	60(%eax),%eax
	cmpl	$0,%eax
	jg	Lj54
	jl	Lj55
	cmpl	$0,%edx
	ja	Lj54
	jmp	Lj55
Lj54:
	movl	-4(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$FPREADTIFF$_Ld3$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%edx
	movl	%edx,4(%esp)
	movl	56(%eax),%eax
	movl	%eax,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	L_$FPREADTIFF$_Ld5$non_lazy_ptr-Lj38(%ebx),%eax
	movl	%eax,-68(%ebp)
	leal	-80(%ebp),%edx
	leal	-4(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj55:
	movl	-4(%ebp),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj38(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj38(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj39:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	call	LFPC_RERAISE$stub
Lj40:
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD
_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READIMAGEPROPERTIES$crcEBB37E25
_FPREADTIFF_TFPREADERTIFF_$__READIMAGEPROPERTIES$crcEBB37E25:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj81
Lj81:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj82
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	16(%eax),%edx
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	120(%eax),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj93
	jmp	Lj94
Lj93:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	L_$FPREADTIFF$_Ld7$non_lazy_ptr-Lj81(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$FPREADTIFF$_Ld9$non_lazy_ptr-Lj81(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	120(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-92(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-68(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj94:
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	56(%eax),%eax
	cmpl	$0,%eax
	ja	Lj113
	jmp	Lj114
Lj113:
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	56(%eax),%edx
	movl	20(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD$stub
Lj114:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jae	Lj123
	jmp	Lj124
Lj123:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	L_$FPREADTIFF$_Ld7$non_lazy_ptr-Lj81(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$FPREADTIFF$_Ld11$non_lazy_ptr-Lj81(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-68(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-84(%ebp),%edx
	leal	-92(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj124:
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%eax
	subl	$1,%eax
	jbe	Lj145
	decl	%eax
	je	Lj146
	decl	%eax
	je	Lj147
	decl	%eax
	je	Lj148
	decl	%eax
	je	Lj149
	jmp	Lj144
Lj145:
	movl	-20(%ebp),%ecx
	movl	$0,%esi
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	subl	%eax,%ecx
	sbbl	%edx,%esi
	cmpl	$0,%esi
	jne	Lj150
	cmpl	$1,%ecx
	jne	Lj150
	jmp	Lj151
Lj150:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%ecx
	leal	-92(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld13$non_lazy_ptr-Lj81(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj151:
	jmp	Lj143
Lj146:
	movl	-20(%ebp),%ecx
	movl	$0,%esi
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	subl	%eax,%ecx
	sbbl	%edx,%esi
	cmpl	$0,%esi
	jne	Lj166
	cmpl	$3,%ecx
	jne	Lj166
	jmp	Lj167
Lj166:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%ecx
	leal	-92(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld15$non_lazy_ptr-Lj81(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj167:
	jmp	Lj143
Lj147:
	movl	-20(%ebp),%esi
	movl	$0,%ecx
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	subl	%eax,%esi
	sbbl	%edx,%ecx
	cmpl	$0,%ecx
	jne	Lj182
	cmpl	$1,%esi
	jne	Lj182
	jmp	Lj183
Lj182:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%ecx
	leal	-92(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld17$non_lazy_ptr-Lj81(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj183:
	jmp	Lj143
Lj148:
	movl	-20(%ebp),%ecx
	movl	$0,%esi
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,%edx
	subl	%eax,%ecx
	sbbl	%edx,%esi
	cmpl	$0,%esi
	jne	Lj198
	cmpl	$1,%ecx
	jne	Lj198
	jmp	Lj199
Lj198:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%ecx
	leal	-92(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld19$non_lazy_ptr-Lj81(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj199:
	jmp	Lj143
Lj149:
	movl	-20(%ebp),%esi
	movl	$0,%ecx
	movl	16(%ebp),%eax
	movl	(%eax),%edx
	movl	$0,%eax
	subl	%edx,%esi
	sbbl	%eax,%ecx
	cmpl	$0,%ecx
	jne	Lj214
	cmpl	$4,%esi
	jne	Lj214
	jmp	Lj215
Lj214:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%ecx
	leal	-92(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld21$non_lazy_ptr-Lj81(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj215:
	jmp	Lj143
Lj144:
Lj143:
	movl	28(%ebp),%eax
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movl	32(%ebp),%eax
	movw	$0,(%eax)
	movl	24(%ebp),%eax
	movw	$0,(%eax)
	movw	$0,-14(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	-20(%ebp),%esi
	decl	%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj245
	decl	-24(%ebp)
	.align 2
Lj246:
	incl	-24(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%edx
	movzwl	(%eax,%edx,2),%eax
	cmpl	$64,%eax
	jg	Lj247
	jmp	Lj248
Lj247:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld23$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj248:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	cmpl	$1,%eax
	je	Lj255
	cmpl	$8,%eax
	je	Lj255
	cmpl	$16,%eax
	je	Lj255
Lj255:
	jne	Lj253
	jmp	Lj254
Lj253:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld25$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj254:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	8(%ebp),%edx
	addl	%eax,(%edx)
	cmpl	-24(%ebp),%esi
	jg	Lj246
Lj245:
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%eax
	subl	$1,%eax
	jbe	Lj262
	decl	%eax
	je	Lj263
	subl	$3,%eax
	je	Lj264
	jmp	Lj261
Lj262:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	28(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	28(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,184(%edx)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj270
	decl	-24(%ebp)
	.align 2
Lj271:
	incl	-24(%ebp)
	movl	20(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	movzwl	(%ecx,%edx,2),%edx
	decl	%edx
	cmpl	$2,%edx
	jb	Lj274
Lj274:
	jc	Lj272
	jmp	Lj273
Lj272:
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	incl	%edx
	movl	24(%ebp),%esi
	movw	(%ecx,%edx,2),%dx
	movw	%dx,(%esi)
	movl	-12(%ebp),%edx
	movl	44(%edx),%ecx
	movl	24(%ebp),%edx
	movw	(%edx),%dx
	movw	%dx,186(%ecx)
Lj273:
	cmpl	-24(%ebp),%eax
	jg	Lj271
Lj270:
	movl	28(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj281
	cmpl	$8,%eax
	je	Lj281
	cmpl	$16,%eax
	je	Lj281
Lj281:
	jne	Lj279
	jmp	Lj280
Lj279:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld27$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj280:
	movl	24(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj288
	cmpl	$8,%eax
	je	Lj288
	cmpl	$16,%eax
	je	Lj288
Lj288:
	jne	Lj286
	jmp	Lj287
Lj286:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld29$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj287:
	jmp	Lj260
Lj263:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movw	2(%eax),%ax
	movw	%ax,(%edx)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	32(%ebp),%edx
	movw	4(%eax),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,178(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,180(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	32(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,182(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movw	$0,186(%eax)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj308
	decl	-24(%ebp)
	.align 2
Lj309:
	incl	-24(%ebp)
	movl	20(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	movzwl	(%ecx,%edx,2),%edx
	decl	%edx
	cmpl	$2,%edx
	jb	Lj312
Lj312:
	jc	Lj310
	jmp	Lj311
Lj310:
	movl	12(%ebp),%edx
	movl	(%edx),%esi
	movl	-24(%ebp),%edx
	addl	$3,%edx
	movl	24(%ebp),%ecx
	movw	(%esi,%edx,2),%dx
	movw	%dx,(%ecx)
	movl	-12(%ebp),%edx
	movl	44(%edx),%ecx
	movl	24(%ebp),%edx
	movw	(%edx),%dx
	movw	%dx,186(%ecx)
Lj311:
	cmpl	-24(%ebp),%eax
	jg	Lj309
Lj308:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj319
	cmpl	$16,%eax
	je	Lj319
Lj319:
	jne	Lj317
	jmp	Lj318
Lj317:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld31$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj318:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj326
	cmpl	$16,%eax
	je	Lj326
Lj326:
	jne	Lj324
	jmp	Lj325
Lj324:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld33$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj325:
	movl	32(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj333
	cmpl	$16,%eax
	je	Lj333
Lj333:
	jne	Lj331
	jmp	Lj332
Lj331:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld35$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj332:
	movl	24(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj340
	cmpl	$8,%eax
	je	Lj340
	cmpl	$16,%eax
	je	Lj340
Lj340:
	jne	Lj338
	jmp	Lj339
Lj338:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld37$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj339:
	jmp	Lj260
Lj264:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movw	2(%eax),%ax
	movw	%ax,(%edx)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	32(%ebp),%edx
	movw	4(%eax),%ax
	movw	%ax,(%edx)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	28(%ebp),%edx
	movw	6(%eax),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,178(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,180(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	32(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,182(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	28(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,184(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movw	$0,186(%eax)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%eax
	jl	Lj364
	decl	-24(%ebp)
	.align 2
Lj365:
	incl	-24(%ebp)
	movl	20(%ebp),%edx
	movl	(%edx),%edx
	movl	-24(%ebp),%ecx
	movzwl	(%edx,%ecx,2),%edx
	decl	%edx
	cmpl	$2,%edx
	jb	Lj368
Lj368:
	jc	Lj366
	jmp	Lj367
Lj366:
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	addl	$4,%edx
	movl	24(%ebp),%esi
	movw	(%ecx,%edx,2),%dx
	movw	%dx,(%esi)
	movl	-12(%ebp),%edx
	movl	44(%edx),%ecx
	movl	24(%ebp),%edx
	movw	(%edx),%dx
	movw	%dx,186(%ecx)
Lj367:
	cmpl	-24(%ebp),%eax
	jg	Lj365
Lj364:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj375
	cmpl	$16,%eax
	je	Lj375
Lj375:
	jne	Lj373
	jmp	Lj374
Lj373:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld39$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj374:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj382
	cmpl	$16,%eax
	je	Lj382
Lj382:
	jne	Lj380
	jmp	Lj381
Lj380:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld41$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj381:
	movl	32(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj389
	cmpl	$16,%eax
	je	Lj389
Lj389:
	jne	Lj387
	jmp	Lj388
Lj387:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld43$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj388:
	movl	28(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$8,%eax
	je	Lj396
	cmpl	$16,%eax
	je	Lj396
Lj396:
	jne	Lj394
	jmp	Lj395
Lj394:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld45$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj395:
	movl	24(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj403
	cmpl	$8,%eax
	je	Lj403
	cmpl	$16,%eax
	je	Lj403
Lj403:
	jne	Lj401
	jmp	Lj402
Lj401:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld47$non_lazy_ptr-Lj81(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj402:
	jmp	Lj260
Lj261:
Lj260:
	movl	28(%ebp),%eax
	movzwl	(%eax),%eax
	movl	-4(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	movl	32(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	movl	24(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	shrl	$3,%eax
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movw	-14(%ebp),%dx
	movw	%dx,188(%eax)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	60(%eax),%eax
	cmpl	$2,%eax
	jb	Lj414
Lj414:
	jnc	Lj412
	jmp	Lj413
Lj412:
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%eax
	movl	60(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-88(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-88(%ebp),%ecx
	leal	-92(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld49$non_lazy_ptr-Lj81(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-92(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj413:
Lj82:
	call	LFPC_POPADDRSTACK$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj83
	call	LFPC_RERAISE$stub
Lj83:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__SETFPIMGEXTRAS$TFPCUSTOMIMAGE
_FPREADTIFF_TFPREADERTIFF_$__SETFPIMGEXTRAS$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj430
Lj430:
	popl	%ebx
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
	jne	Lj431
	movl	-4(%ebp),%eax
	call	L_FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld51$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj446
	jmp	Lj447
Lj446:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	12(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld53$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj447:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	jne	Lj454
	jmp	Lj455
Lj454:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	44(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld55$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj455:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	jne	Lj462
	jmp	Lj463
Lj462:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	52(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld57$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj463:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj470
	jmp	Lj471
Lj470:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld59$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj471:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	jne	Lj478
	jmp	Lj479
Lj478:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	64(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld61$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj479:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	jne	Lj486
	jmp	Lj487
Lj486:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	68(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld63$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj487:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	84(%eax),%eax
	testl	%eax,%eax
	jne	Lj494
	jmp	Lj495
Lj494:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	84(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld65$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj495:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	88(%eax),%eax
	testl	%eax,%eax
	jne	Lj502
	jmp	Lj503
Lj502:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	88(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld67$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj503:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	124(%eax),%eax
	testl	%eax,%eax
	jne	Lj510
	jmp	Lj511
Lj510:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	124(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld69$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj511:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	92(%eax),%eax
	decl	%eax
	cmpl	$8,%eax
	jb	Lj520
Lj520:
	jnc	Lj518
	jmp	Lj519
Lj518:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$1,92(%eax)
Lj519:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	92(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld71$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	112(%eax),%eax
	testl	%eax,%eax
	jne	Lj533
	jmp	Lj534
Lj533:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	112(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld73$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj534:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	156(%eax),%eax
	testl	%eax,%eax
	jne	Lj545
	jmp	Lj547
Lj547:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	jne	Lj545
	jmp	Lj546
Lj545:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	leal	156(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_FPTIFFCMN_TIFFRATIONALTOSTR$TTIFFRATIONAL$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld75$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj546:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	164(%eax),%eax
	testl	%eax,%eax
	jne	Lj558
	jmp	Lj560
Lj560:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj558
	jmp	Lj559
Lj558:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	leal	164(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_FPTIFFCMN_TIFFRATIONALTOSTR$TTIFFRATIONAL$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld77$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj559:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	178(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld79$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	180(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld81$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	182(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld83$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	184(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld85$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	186(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld87$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	98(%eax),%eax
	cmpl	$0,%eax
	jg	Lj621
	jmp	Lj622
Lj621:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	96(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld89$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	98(%eax),%eax
	leal	-52(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld91$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj622:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	100(%eax),%eax
	testl	%eax,%eax
	jne	Lj643
	jmp	Lj644
Lj643:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	100(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld93$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj644:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	cmpb	$0,78(%eax)
	jne	Lj651
	jmp	Lj652
Lj651:
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld95$non_lazy_ptr-Lj430(%ebx),%ecx
	movl	L_$FPREADTIFF$_Ld97$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj652:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	cmpb	$0,76(%eax)
	jne	Lj659
	jmp	Lj660
Lj659:
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld95$non_lazy_ptr-Lj430(%ebx),%edx
	movl	L_$FPREADTIFF$_Ld99$non_lazy_ptr-Lj430(%ebx),%esi
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj660:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jne	Lj667
	jmp	Lj668
Lj667:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	36(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-52(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld101$non_lazy_ptr-Lj430(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj668:
Lj431:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj432
	call	LFPC_RERAISE$stub
Lj432:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READIMGVALUE$WORD$POINTER$LONGWORD$WORD$WORD$WORD
_FPREADTIFF_TFPREADERTIFF_$__READIMGVALUE$WORD$POINTER$LONGWORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj680
Lj680:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	-4(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj682
	decw	%ax
	je	Lj683
	subw	$7,%ax
	je	Lj684
	subw	$8,%ax
	je	Lj685
	jmp	Lj682
Lj683:
	movl	20(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-13(%ebp)
	movzbl	-13(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movzbl	(%edx),%edx
	andl	%edx,%eax
	movzbl	-13(%ebp),%ecx
	shrl	%cl,%eax
	imull	$65535,%eax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movzwl	16(%ebp),%eax
	cmpl	$2,%eax
	je	Lj690
	jmp	Lj691
Lj690:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj680(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj691:
	movl	20(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj696
	jmp	Lj697
Lj696:
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj697:
	jmp	Lj681
Lj684:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movzbw	(%eax),%ax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movzwl	16(%ebp),%eax
	cmpl	$2,%eax
	je	Lj700
	jmp	Lj701
Lj700:
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj702
	jmp	Lj703
Lj702:
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	12(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
Lj703:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
Lj701:
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	shll	$8,%eax
	movl	8(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj681
Lj685:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movw	(%eax),%dx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movzwl	16(%ebp),%eax
	cmpl	$2,%eax
	je	Lj716
	jmp	Lj717
Lj716:
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj718
	jmp	Lj719
Lj718:
	movl	8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	12(%ebp),%edx
	movzwl	(%edx),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
Lj719:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
Lj717:
	movl	-8(%ebp),%eax
	addl	$2,(%eax)
	jmp	Lj681
Lj682:
Lj681:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj725
Lj725:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	addl	56(%eax),%ecx
	adcl	60(%eax),%edx
	movl	%ecx,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	cmpl	-12(%ebp),%edx
	jl	Lj728
	jg	Lj729
	cmpl	-16(%ebp),%eax
	jb	Lj728
	jmp	Lj729
	jmp	Lj729
Lj728:
	movl	-8(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld105$non_lazy_ptr-Lj725(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj729:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__LOADFROMSTREAM$TSTREAM$BOOLEAN
_FPREADTIFF_TFPREADERTIFF_$__LOADFROMSTREAM$TSTREAM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj741
Lj741:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj742
	jmp	Lj743
Lj742:
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__CLEAR$stub
Lj743:
	movb	$1,-21(%ebp)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj772
	jmp	Lj773
Lj772:
	jmp	Lj740
Lj773:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__LOADHEADERFROMSTREAM$TSTREAM$stub
	leal	-36(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-40(%ebp)
	testl	%eax,%eax
	jne	Lj778
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj787
	.align 2
Lj786:
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub
	cmpl	-20(%ebp),%eax
	je	Lj789
	jmp	Lj790
Lj789:
	movl	L_VMT_FPTIFFCMN_TTIFFIFD$non_lazy_ptr-Lj741(%esi),%edx
	movl	$0,%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj790:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READIFD$LONGWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__LOADIMAGEFROMSTREAM$LONGINT$stub
	incl	-20(%ebp)
Lj787:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj786
	jmp	Lj788
Lj788:
Lj778:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	$0,44(%eax)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj779
	decl	%eax
	testl	%eax,%eax
	je	Lj780
Lj780:
	call	LFPC_RERAISE$stub
Lj779:
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-40(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-21(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%edi
	movl	(%edi),%edi
	movb	%bl,12(%esp)
	call	*100(%edi)
Lj740:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__LOADHEADERFROMSTREAM$TSTREAM
_FPREADTIFF_TFPREADERTIFF_$__LOADHEADERFROMSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%ecx
	movl	%eax,56(%ecx)
	movl	%edx,60(%ecx)
	movl	-8(%ebp),%eax
	leal	28(%eax),%ecx
	movl	-8(%ebp),%eax
	movb	$0,%dl
	call	L_FPREADTIFF_TFPREADERTIFF_$__READTIFFHEADER$BOOLEAN$LONGWORD$$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__LOADIFDSFROMSTREAM
_FPREADTIFF_TFPREADERTIFF_$__LOADIFDSFROMSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj860
Lj860:
	popl	%ebx
	movl	%eax,-4(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj861
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-8(%ebp)
	jmp	Lj870
	.align 2
Lj869:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub
	cmpl	-8(%ebp),%eax
	je	Lj872
	jmp	Lj873
Lj872:
	movl	L_VMT_FPTIFFCMN_TTIFFIFD$non_lazy_ptr-Lj860(%ebx),%edx
	movl	$0,%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj873:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	-4(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READIFD$LONGWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	incl	-8(%ebp)
Lj870:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj869
	jmp	Lj871
Lj871:
Lj861:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	$0,44(%eax)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj862
	decl	%eax
	testl	%eax,%eax
	je	Lj863
Lj863:
	call	LFPC_RERAISE$stub
Lj862:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__FIRSTIMG$$TTIFFIFD
_FPREADTIFF_TFPREADERTIFF_$__FIRSTIMG$$TTIFFIFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj902
	jmp	Lj904
Lj904:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj902
	jmp	Lj903
Lj902:
	jmp	Lj898
Lj903:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	$0,%edx
	call	L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-8(%ebp)
Lj898:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__GETBIGGESTIMAGE$$TTIFFIFD
_FPREADTIFF_TFPREADERTIFF_$__GETBIGGESTIMAGE$$TTIFFIFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj918
	decl	-32(%ebp)
	.align 2
Lj919:
	incl	-32(%ebp)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	72(%eax),%eax
	mull	80(%edx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj930
	jg	Lj931
	cmpl	-16(%ebp),%edx
	jb	Lj930
	jmp	Lj931
	jmp	Lj931
Lj930:
	jmp	Lj917
Lj931:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj917:
	cmpl	-32(%ebp),%ebx
	jg	Lj919
Lj918:
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT
_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READTIFFHEADER$BOOLEAN$LONGWORD$$BOOLEAN
_FPREADTIFF_TFPREADERTIFF_$__READTIFFHEADER$BOOLEAN$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj941
Lj941:
	popl	%esi
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj942
	movb	$0,-13(%ebp)
	movl	L_$FPREADTIFF$_Ld107$non_lazy_ptr-Lj941(%esi),%ebx
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,-20(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	$2,%ecx
	movl	-12(%ebp),%ebx
	movl	64(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-20(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld109$non_lazy_ptr-Lj941(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj957
	jmp	Lj958
Lj957:
	movb	$0,-21(%ebp)
	jmp	Lj965
Lj958:
	movl	-20(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld111$non_lazy_ptr-Lj941(%esi),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj966
	jmp	Lj967
Lj966:
	movb	$1,-21(%ebp)
	jmp	Lj974
Lj967:
	cmpb	$0,-4(%ebp)
	jne	Lj975
	jmp	Lj976
Lj975:
	jmp	Lj942
	jmp	Lj977
Lj976:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld113$non_lazy_ptr-Lj941(%esi),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj977:
Lj974:
Lj965:
	movl	-12(%ebp),%eax
	movb	-21(%ebp),%dl
	movb	%dl,52(%eax)
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-24(%ebp)
	movzwl	-24(%ebp),%eax
	cmpl	$42,%eax
	jne	Lj988
	jmp	Lj989
Lj988:
	cmpb	$0,-4(%ebp)
	jne	Lj990
	jmp	Lj991
Lj990:
	jmp	Lj942
	jmp	Lj992
Lj991:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movzwl	-24(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-72(%ebp),%ecx
	leal	-68(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld115$non_lazy_ptr-Lj941(%esi),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-68(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj992:
Lj989:
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movb	$1,-13(%ebp)
Lj942:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj943
	call	LFPC_RERAISE$stub
Lj943:
	movb	-13(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READIFD$LONGWORD$$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__READIFD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj1020
Lj1020:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-14(%ebp)
	movw	$0,-22(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movzwl	-14(%ebp),%esi
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1040
	decl	-20(%ebp)
	.align 2
Lj1041:
	incl	-20(%ebp)
	leal	-22(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDIRECTORYENTRY$WORD$stub
	addl	$12,-32(%ebp)
	adcl	$0,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	cmpl	-20(%ebp),%esi
	jg	Lj1041
Lj1040:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1058
	jmp	Lj1057
Lj1058:
	movl	-12(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jb	Lj1056
	jmp	Lj1057
Lj1056:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj1059
	jmp	Lj1060
Lj1059:
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj1020(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,48(%edx)
	jmp	Lj1067
Lj1060:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub
	cmpl	$0,%eax
	jg	Lj1068
	jmp	Lj1069
Lj1068:
	movl	-8(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld117$non_lazy_ptr-Lj1020(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1069:
Lj1067:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj1057:
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READDIRECTORYENTRY$WORD
_FPREADTIFF_TFPREADERTIFF_$__READDIRECTORYENTRY$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-184(%ebp)
	movl	%esi,-180(%ebp)
	movl	%edi,-176(%ebp)
	call	Lj1083
Lj1083:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-172(%ebp)
	movl	$0,-144(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-88(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-84(%ebp)
	testl	%eax,%eax
	jne	Lj1086
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-22(%ebp)
	movl	-4(%ebp),%eax
	movw	-22(%ebp),%dx
	cmpw	(%eax),%dx
	jb	Lj1093
	jmp	Lj1094
Lj1093:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj1098
	decl	%eax
	je	Lj1097
	jmp	Lj1096
Lj1097:
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	L_$FPREADTIFF$_Ld119$non_lazy_ptr-Lj1083(%ebx),%eax
	movl	%eax,-104(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	L_$FPREADTIFF$_Ld121$non_lazy_ptr-Lj1083(%ebx),%eax
	movl	%eax,-96(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movzwl	-22(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-112(%ebp),%eax
	movl	%eax,-92(%ebp)
	leal	-104(%ebp),%edx
	leal	-88(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-88(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
	jmp	Lj1095
Lj1098:
	movzwl	-22(%ebp),%eax
	cmpl	$30000,%eax
	jl	Lj1117
	jmp	Lj1118
Lj1117:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	L_$FPREADTIFF$_Ld119$non_lazy_ptr-Lj1083(%ebx),%eax
	movl	%eax,-104(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-108(%ebp),%eax
	movl	%eax,-100(%ebp)
	movl	L_$FPREADTIFF$_Ld121$non_lazy_ptr-Lj1083(%ebx),%eax
	movl	%eax,-96(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	leal	-88(%ebp),%edx
	movzwl	-22(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-88(%ebp),%eax
	movl	%eax,-92(%ebp)
	leal	-104(%ebp),%edx
	leal	-112(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-112(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1118:
	jmp	Lj1095
Lj1096:
Lj1095:
Lj1094:
	movl	-4(%ebp),%edx
	movw	-22(%ebp),%ax
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$254,%ax
	jb	Lj1140
	subw	$254,%ax
	je	Lj1141
	decw	%ax
	je	Lj1142
	decw	%ax
	je	Lj1143
	decw	%ax
	je	Lj1144
	decw	%ax
	je	Lj1145
	decw	%ax
	je	Lj1146
	subw	$3,%ax
	je	Lj1147
	decw	%ax
	je	Lj1148
	decw	%ax
	je	Lj1149
	decw	%ax
	je	Lj1150
	decw	%ax
	je	Lj1151
	subw	$3,%ax
	je	Lj1152
	decw	%ax
	je	Lj1153
	decw	%ax
	je	Lj1154
	decw	%ax
	je	Lj1155
	decw	%ax
	je	Lj1156
	decw	%ax
	je	Lj1157
	subw	$3,%ax
	je	Lj1158
	decw	%ax
	je	Lj1159
	decw	%ax
	je	Lj1160
	decw	%ax
	je	Lj1161
	decw	%ax
	je	Lj1162
	decw	%ax
	je	Lj1163
	decw	%ax
	je	Lj1164
	decw	%ax
	je	Lj1165
	decw	%ax
	je	Lj1166
	subw	$3,%ax
	je	Lj1167
	decw	%ax
	je	Lj1168
	decw	%ax
	je	Lj1169
	decw	%ax
	je	Lj1170
	subw	$5,%ax
	je	Lj1171
	decw	%ax
	je	Lj1172
	subw	$8,%ax
	je	Lj1173
	decw	%ax
	je	Lj1174
	subw	$9,%ax
	je	Lj1175
	decw	%ax
	je	Lj1176
	decw	%ax
	je	Lj1177
	subw	$3,%ax
	je	Lj1178
	subw	$2,%ax
	je	Lj1179
	decw	%ax
	je	Lj1180
	decw	%ax
	je	Lj1181
	decw	%ax
	je	Lj1182
	subw	$13,%ax
	je	Lj1183
	subw	$9,%ax
	je	Lj1184
	subw	$165,%ax
	je	Lj1185
	decw	%ax
	je	Lj1186
	decw	%ax
	je	Lj1187
	decw	%ax
	je	Lj1188
	subw	$2,%ax
	je	Lj1189
	decw	%ax
	je	Lj1190
	decw	%ax
	je	Lj1191
	decw	%ax
	je	Lj1192
	decw	%ax
	je	Lj1193
	subw	$9,%ax
	je	Lj1194
	subw	$170,%ax
	je	Lj1195
	subw	$32732,%ax
	je	Lj1196
	subw	$1243,%ax
	je	Lj1197
	jmp	Lj1140
Lj1141:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-28(%ebp),%edx
	andl	$1,%edx
	testl	%edx,%edx
	setneb	78(%eax)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	andl	$2,%eax
	testl	%eax,%eax
	setneb	77(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-28(%ebp),%edx
	andl	$4,%edx
	testl	%edx,%edx
	setneb	76(%eax)
	jmp	Lj1139
Lj1142:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movb	$0,78(%eax)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movb	$0,77(%eax)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movb	$0,76(%eax)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1219
	decl	%eax
	je	Lj1220
	decl	%eax
	je	Lj1221
	decl	%eax
	je	Lj1222
	jmp	Lj1219
Lj1220:
	jmp	Lj1218
Lj1221:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movb	$1,78(%eax)
	jmp	Lj1218
Lj1222:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movb	$1,77(%eax)
	jmp	Lj1218
Lj1219:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-108(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-108(%ebp),%ecx
	leal	-112(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld123$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-112(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1218:
	jmp	Lj1139
Lj1143:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,80(%edx)
	jmp	Lj1139
Lj1144:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,72(%edx)
	jmp	Lj1139
Lj1145:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,16(%edx)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	16(%eax),%edx
	leal	-36(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD$stub
	leal	-100(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1261
	movl	-40(%ebp),%eax
	movl	%eax,-140(%ebp)
	leal	-140(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPTIFFCMN_DEF86$non_lazy_ptr-Lj1083(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-40(%ebp),%eax
	decl	%eax
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jl	Lj1276
	decl	-44(%ebp)
	.align 2
Lj1277:
	incl	-44(%ebp)
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	20(%edx),%ecx
	movl	-44(%ebp),%esi
	movl	-36(%ebp),%edx
	movl	-44(%ebp),%edi
	movw	(%edx,%edi,2),%dx
	movw	%dx,(%ecx,%esi,2)
	cmpl	-44(%ebp),%eax
	jg	Lj1277
Lj1276:
Lj1261:
	call	LFPC_POPADDRSTACK$stub
	leal	-36(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1262
	decl	%eax
	testl	%eax,%eax
	je	Lj1263
Lj1263:
	call	LFPC_RERAISE$stub
Lj1262:
	jmp	Lj1139
Lj1146:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1289
	decl	%eax
	subl	$9,%eax
	jbe	Lj1290
	subl	$32756,%eax
	je	Lj1290
	subl	$5,%eax
	je	Lj1290
	subl	$2,%eax
	je	Lj1290
	subl	$36,%eax
	je	Lj1290
	subl	$86,%eax
	jb	Lj1289
	subl	$3,%eax
	jbe	Lj1290
	subl	$10,%eax
	jb	Lj1289
	subl	$1,%eax
	jbe	Lj1290
	subl	$37,%eax
	jb	Lj1289
	subl	$1,%eax
	jbe	Lj1290
	subl	$1714,%eax
	je	Lj1290
	subl	$15,%eax
	jb	Lj1289
	subl	$1,%eax
	jbe	Lj1290
	subl	$35,%eax
	je	Lj1290
	jmp	Lj1289
Lj1290:
	jmp	Lj1288
Lj1289:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-108(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-108(%ebp),%ecx
	leal	-112(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld125$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-112(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1288:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,36(%edx)
	jmp	Lj1139
Lj1147:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj1313
	decl	%eax
	je	Lj1314
	decl	%eax
	je	Lj1315
	decl	%eax
	je	Lj1316
	decl	%eax
	je	Lj1317
	decl	%eax
	je	Lj1318
	jmp	Lj1312
Lj1313:
	jmp	Lj1311
Lj1314:
	jmp	Lj1311
Lj1315:
	jmp	Lj1311
Lj1316:
	jmp	Lj1311
Lj1317:
	jmp	Lj1311
Lj1318:
	jmp	Lj1311
Lj1312:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-144(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-144(%ebp),%ecx
	leal	-112(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld127$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-112(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1311:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,104(%edx)
	jmp	Lj1139
Lj1148:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1340
	decl	%eax
	je	Lj1341
	decl	%eax
	je	Lj1342
	decl	%eax
	je	Lj1343
	jmp	Lj1340
Lj1341:
	jmp	Lj1339
Lj1342:
	jmp	Lj1339
Lj1343:
	jmp	Lj1339
Lj1340:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-112(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld129$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1339:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	-28(%ebp),%edx
	movl	%edx,152(%eax)
	jmp	Lj1139
Lj1149:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,28(%edx)
	jmp	Lj1139
Lj1150:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,24(%edx)
	jmp	Lj1139
Lj1151:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1373
	decl	%eax
	je	Lj1374
	decl	%eax
	je	Lj1375
	jmp	Lj1373
Lj1374:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$1,60(%eax)
	jmp	Lj1372
Lj1375:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$2,60(%eax)
	jmp	Lj1372
Lj1373:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-112(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld131$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1372:
	jmp	Lj1139
Lj1152:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,52(%esi)
	jmp	Lj1139
Lj1153:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	68(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,68(%esi)
	jmp	Lj1139
Lj1154:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	84(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,84(%esi)
	jmp	Lj1139
Lj1155:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	88(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,88(%esi)
	jmp	Lj1139
Lj1156:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,132(%edx)
	jmp	Lj1139
Lj1157:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1427
	decl	%eax
	je	Lj1428
	decl	%eax
	je	Lj1429
	decl	%eax
	je	Lj1430
	decl	%eax
	je	Lj1431
	decl	%eax
	je	Lj1432
	decl	%eax
	je	Lj1433
	decl	%eax
	je	Lj1434
	decl	%eax
	je	Lj1435
	jmp	Lj1427
Lj1428:
	jmp	Lj1426
Lj1429:
	jmp	Lj1426
Lj1430:
	jmp	Lj1426
Lj1431:
	jmp	Lj1426
Lj1432:
	jmp	Lj1426
Lj1433:
	jmp	Lj1426
Lj1434:
	jmp	Lj1426
Lj1435:
	jmp	Lj1426
Lj1427:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-112(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld133$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1426:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,92(%edx)
	jmp	Lj1139
Lj1158:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,120(%edx)
	jmp	Lj1139
Lj1159:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj1460
	jmp	Lj1461
Lj1460:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-112(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld135$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1461:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,116(%edx)
	jmp	Lj1139
Lj1160:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,128(%edx)
	jmp	Lj1139
Lj1161:
	jmp	Lj1139
Lj1162:
	jmp	Lj1139
Lj1163:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYRATIONAL$$TTIFFRATIONAL$stub
	movl	%eax,-120(%ebp)
	movl	%edx,-116(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-120(%ebp),%eax
	movl	%eax,156(%edx)
	movl	-116(%ebp),%eax
	movl	%eax,160(%edx)
	jmp	Lj1139
Lj1164:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYRATIONAL$$TTIFFRATIONAL$stub
	movl	%eax,-120(%ebp)
	movl	%edx,-116(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-120(%ebp),%eax
	movl	%eax,164(%edx)
	movl	-116(%ebp),%eax
	movl	%eax,168(%edx)
	jmp	Lj1139
Lj1165:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSIGNED$$LONGINT$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj1495
	decl	%eax
	je	Lj1496
	decl	%eax
	je	Lj1497
	jmp	Lj1495
Lj1496:
	jmp	Lj1494
Lj1497:
	jmp	Lj1494
Lj1495:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-32(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld137$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1494:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-32(%ebp),%eax
	movl	%eax,108(%edx)
	jmp	Lj1139
Lj1166:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	100(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,100(%esi)
	jmp	Lj1139
Lj1167:
	jmp	Lj1139
Lj1168:
	jmp	Lj1139
Lj1169:
	jmp	Lj1139
Lj1170:
	jmp	Lj1139
Lj1171:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1525
	decl	%eax
	je	Lj1526
	decl	%eax
	je	Lj1527
	decl	%eax
	je	Lj1528
	jmp	Lj1525
Lj1526:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$1,112(%eax)
	jmp	Lj1524
Lj1527:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$2,112(%eax)
	jmp	Lj1524
Lj1528:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	$3,112(%eax)
	jmp	Lj1524
Lj1525:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-28(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-112(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld139$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1524:
	jmp	Lj1139
Lj1172:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	%eax,-28(%ebp)
	leal	-40(%ebp),%eax
	movl	%eax,(%esp)
	leal	-36(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD$stub
	leal	-140(%ebp),%ecx
	leal	-168(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj1561
	movl	-40(%ebp),%eax
	cmpl	$2,%eax
	jne	Lj1565
	jmp	Lj1566
Lj1565:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-112(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-112(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld141$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1566:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-36(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,96(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-36(%ebp),%eax
	movw	2(%eax),%ax
	movw	%ax,98(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%ecx
	movw	96(%edx),%ax
	cmpw	98(%ecx),%ax
	jae	Lj1585
	jmp	Lj1586
Lj1585:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movzwl	96(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	98(%eax),%ax
	movw	%ax,96(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	-28(%ebp),%dx
	movw	%dx,98(%eax)
Lj1586:
Lj1561:
	call	LFPC_POPADDRSTACK$stub
	leal	-36(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj1562
	decl	%eax
	testl	%eax,%eax
	je	Lj1563
Lj1563:
	call	LFPC_RERAISE$stub
Lj1562:
	jmp	Lj1139
Lj1173:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	124(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,124(%esi)
	jmp	Lj1139
Lj1174:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	48(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,48(%esi)
	jmp	Lj1139
Lj1175:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,12(%esi)
	jmp	Lj1139
Lj1176:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	64(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-144(%ebp),%eax
	movl	%eax,64(%esi)
	jmp	Lj1139
Lj1177:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movzwl	%ax,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1626
	decl	%eax
	je	Lj1627
	decl	%eax
	je	Lj1628
	jmp	Lj1626
Lj1627:
	jmp	Lj1625
Lj1628:
	jmp	Lj1625
Lj1626:
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-172(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-172(%ebp),%ecx
	leal	-144(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld143$non_lazy_ptr-Lj1083(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-144(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1625:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movw	-28(%ebp),%ax
	movw	%ax,40(%edx)
	jmp	Lj1139
Lj1178:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,32(%edx)
	jmp	Lj1139
Lj1179:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,136(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	136(%eax),%eax
	testl	%eax,%eax
	je	Lj1653
	jmp	Lj1654
Lj1653:
	movl	-8(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld145$non_lazy_ptr-Lj1083(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1654:
	jmp	Lj1139
Lj1180:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,140(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	140(%eax),%eax
	testl	%eax,%eax
	je	Lj1663
	jmp	Lj1664
Lj1663:
	movl	-8(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld147$non_lazy_ptr-Lj1083(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1664:
	jmp	Lj1139
Lj1181:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,144(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	144(%eax),%eax
	testl	%eax,%eax
	je	Lj1673
	jmp	Lj1674
Lj1673:
	movl	-8(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld149$non_lazy_ptr-Lj1083(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1674:
	jmp	Lj1139
Lj1182:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,148(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	148(%eax),%eax
	testl	%eax,%eax
	je	Lj1683
	jmp	Lj1684
Lj1683:
	movl	-8(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld151$non_lazy_ptr-Lj1083(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1684:
	jmp	Lj1139
Lj1183:
	movl	%ebp,%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	44(%edx),%edx
	movl	%eax,56(%edx)
	jmp	Lj1139
Lj1184:
	jmp	Lj1139
Lj1185:
	jmp	Lj1139
Lj1186:
	jmp	Lj1139
Lj1187:
	jmp	Lj1139
Lj1188:
	jmp	Lj1139
Lj1189:
	jmp	Lj1139
Lj1190:
	jmp	Lj1139
Lj1191:
	jmp	Lj1139
Lj1192:
	jmp	Lj1139
Lj1193:
	jmp	Lj1139
Lj1194:
	jmp	Lj1139
Lj1195:
	jmp	Lj1139
Lj1196:
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	leal	-172(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub
	movl	-172(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%esi
	leal	44(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-172(%ebp),%eax
	movl	%eax,44(%esi)
	jmp	Lj1139
Lj1197:
	jmp	Lj1139
Lj1140:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-10(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	je	Lj1714
	jmp	Lj1712
Lj1714:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1713
	jmp	Lj1712
Lj1713:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1711
	jmp	Lj1712
Lj1711:
Lj1712:
Lj1139:
Lj1086:
	call	LFPC_POPADDRSTACK$stub
	leal	-172(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-172(%ebp)
	leal	-144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-144(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-88(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-88(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj1087
	call	LFPC_RERAISE$stub
Lj1087:
	movl	-184(%ebp),%ebx
	movl	-180(%ebp),%esi
	movl	-176(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-4(%ebp),%ecx
	movl	-8(%ecx),%ecx
	subl	56(%ecx),%eax
	sbbl	60(%ecx),%edx
	subl	$2,%eax
	sbbl	$0,%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj1720
Lj1720:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1721
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj1734
	jmp	Lj1735
Lj1734:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	leal	-60(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld153$non_lazy_ptr-Lj1720(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1735:
	movw	-14(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj1751
	decw	%ax
	je	Lj1752
	subw	$2,%ax
	je	Lj1753
	decw	%ax
	je	Lj1754
	jmp	Lj1751
Lj1752:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE$stub
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1750
Lj1753:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1750
Lj1754:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1750
Lj1751:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movzwl	-14(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	leal	-64(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld155$non_lazy_ptr-Lj1720(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1750:
Lj1721:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1722
	call	LFPC_RERAISE$stub
Lj1722:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READENTRYSIGNED$$LONGINT
_FPREADTIFF_TFPREADERTIFF_$__READENTRYSIGNED$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	call	Lj1782
Lj1782:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1783
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj1796
	jmp	Lj1797
Lj1796:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-12(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	leal	-60(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld157$non_lazy_ptr-Lj1782(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1797:
	movw	-14(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj1813
	decw	%ax
	je	Lj1814
	subw	$2,%ax
	je	Lj1815
	decw	%ax
	je	Lj1816
	subw	$2,%ax
	je	Lj1817
	subw	$2,%ax
	je	Lj1818
	decw	%ax
	je	Lj1819
	jmp	Lj1813
Lj1814:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE$stub
	movsbl	%al,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1812
Lj1815:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movswl	%ax,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1812
Lj1816:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1812
Lj1817:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE$stub
	movsbl	%al,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1812
Lj1818:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movswl	%ax,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj1812
Lj1819:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1812
Lj1813:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movzwl	-14(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	leal	-64(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld159$non_lazy_ptr-Lj1782(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1812:
Lj1783:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1784
	call	LFPC_RERAISE$stub
Lj1784:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READENTRYRATIONAL$$TTIFFRATIONAL
_FPREADTIFF_TFPREADERTIFF_$__READENTRYRATIONAL$$TTIFFRATIONAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj1859
Lj1859:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1860
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj1859(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj1859(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-22(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj1873
	jmp	Lj1874
Lj1873:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-16(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-72(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-72(%ebp),%ecx
	leal	-68(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld157$non_lazy_ptr-Lj1859(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1874:
	movw	-22(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj1890
	decw	%ax
	je	Lj1891
	subw	$2,%ax
	je	Lj1892
	decw	%ax
	je	Lj1893
	decw	%ax
	je	Lj1894
	jmp	Lj1890
Lj1891:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE$stub
	movzbl	%al,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1889
Lj1892:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1889
Lj1893:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	jmp	Lj1889
Lj1894:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	jmp	Lj1889
Lj1890:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movzwl	-22(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%ecx
	leal	-72(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld161$non_lazy_ptr-Lj1859(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1889:
Lj1860:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1861
	call	LFPC_RERAISE$stub
Lj1861:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING
_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1938
Lj1938:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1939
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	cmpl	$2,%eax
	jne	Lj1948
	jmp	Lj1949
Lj1948:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movzwl	-10(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%ecx
	leal	-64(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld163$non_lazy_ptr-Lj1938(%esi),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj1949:
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub
	movl	-16(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1980
	jmp	Lj1981
Lj1980:
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	64(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
Lj1981:
Lj1939:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1940
	call	LFPC_RERAISE$stub
Lj1940:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE
_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READBYTE$$BYTE$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD
_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READWORD$$WORD$stub
	movw	%ax,%dx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	call	L_CLASSES_TSTREAM_$__READDWORD$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$LONGWORD$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READVALUES$LONGWORD$WORD$LONGWORD$POINTER$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__READVALUES$LONGWORD$WORD$LONGWORD$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj2017
Lj2017:
	popl	%ebx
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
	jne	Lj2018
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movl	16(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	16(%ebp),%edx
	movl	%eax,(%edx)
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2043
	jmp	Lj2044
Lj2043:
	jmp	Lj2018
Lj2044:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$1,%ax
	jb	Lj2046
	decw	%ax
	je	Lj2047
	decw	%ax
	je	Lj2048
	decw	%ax
	je	Lj2049
	decw	%ax
	je	Lj2050
	decw	%ax
	je	Lj2051
	decw	%ax
	jb	Lj2046
	subw	$1,%ax
	jbe	Lj2047
	decw	%ax
	je	Lj2049
	decw	%ax
	je	Lj2050
	decw	%ax
	je	Lj2051
	decw	%ax
	je	Lj2052
	decw	%ax
	je	Lj2053
	jmp	Lj2046
Lj2047:
	movl	8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2048:
	movl	8(%ebp),%edx
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2049:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shll	$1,%eax
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2050:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shll	$2,%eax
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2051:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shll	$3,%eax
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2052:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shll	$2,%eax
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2053:
	movl	16(%ebp),%eax
	movl	(%eax),%eax
	shll	$3,%eax
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj2045
Lj2046:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%ecx
	leal	-60(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld165$non_lazy_ptr-Lj2017(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2045:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$4,%eax
	ja	Lj2082
	jmp	Lj2083
Lj2082:
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub
Lj2083:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	12(%ebp),%edx
	movl	(%edx),%edx
	movl	8(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	-12(%ebp),%esi
	movl	64(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
Lj2018:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2019
	call	LFPC_RERAISE$stub
Lj2019:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj2103
Lj2103:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-16(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj2110
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-22(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READVALUES$LONGWORD$WORD$LONGWORD$POINTER$LONGWORD$stub
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2126
	jmp	Lj2127
Lj2126:
	jmp	Lj2113
Lj2127:
	movzwl	-22(%ebp),%eax
	cmpl	$3,%eax
	je	Lj2128
	jmp	Lj2129
Lj2128:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	shll	$2,%edx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	8(%ebp),%eax
	movl	(%eax),%esi
	decl	%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jb	Lj2135
	decl	-28(%ebp)
	.align 2
Lj2136:
	incl	-28(%ebp)
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	(%eax,%edx,2),%dx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	-28(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-28(%ebp),%esi
	ja	Lj2136
Lj2135:
	jmp	Lj2143
Lj2129:
	movzwl	-22(%ebp),%eax
	cmpl	$4,%eax
	je	Lj2144
	jmp	Lj2145
Lj2144:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj2150
	jmp	Lj2151
Lj2150:
	movl	8(%ebp),%eax
	movl	(%eax),%esi
	decl	%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jb	Lj2153
	decl	-28(%ebp)
	.align 2
Lj2154:
	incl	-28(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$LONGWORD$$LONGWORD$stub
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	-28(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	cmpl	-28(%ebp),%esi
	ja	Lj2154
Lj2153:
Lj2151:
	jmp	Lj2161
Lj2145:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld167$non_lazy_ptr-Lj2103(%ebx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2161:
Lj2143:
Lj2110:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2166
	jmp	Lj2167
Lj2166:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj2167:
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj2111
	decl	%eax
	testl	%eax,%eax
	je	Lj2112
	decl	%eax
	testl	%eax,%eax
	je	Lj2102
Lj2112:
	call	LFPC_RERAISE$stub
Lj2113:
	movl	-68(%ebp),%eax
	movl	$2,-68(%ebp)
	jmp	Lj2110
Lj2111:
Lj2102:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	call	Lj2171
Lj2171:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-112(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj2172
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-16(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj2181
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-22(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READVALUES$LONGWORD$WORD$LONGWORD$POINTER$LONGWORD$stub
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2197
	jmp	Lj2198
Lj2197:
	jmp	Lj2184
Lj2198:
	movzwl	-22(%ebp),%eax
	cmpl	$3,%eax
	je	Lj2199
	jmp	Lj2200
Lj2199:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj2205
	jmp	Lj2206
Lj2205:
	movl	8(%ebp),%eax
	movl	(%eax),%esi
	decl	%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jb	Lj2208
	decl	-28(%ebp)
	.align 2
Lj2209:
	incl	-28(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%edx
	movw	(%eax,%edx,2),%dx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	-28(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-28(%ebp),%esi
	ja	Lj2209
Lj2208:
Lj2206:
	jmp	Lj2216
Lj2200:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%edx
	movzwl	-22(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-116(%ebp),%ecx
	leal	-112(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld169$non_lazy_ptr-Lj2171(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-112(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2216:
Lj2181:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2231
	jmp	Lj2232
Lj2231:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj2232:
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj2182
	decl	%eax
	testl	%eax,%eax
	je	Lj2183
	decl	%eax
	testl	%eax,%eax
	je	Lj2172
Lj2183:
	call	LFPC_RERAISE$stub
Lj2184:
	movl	-108(%ebp),%eax
	movl	$2,-108(%ebp)
	jmp	Lj2181
Lj2182:
Lj2172:
	call	LFPC_POPADDRSTACK$stub
	leal	-116(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj2173
	call	LFPC_RERAISE$stub
Lj2173:
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__LOADIMAGEFROMSTREAM$LONGINT
_FPREADTIFF_TFPREADERTIFF_$__LOADIMAGEFROMSTREAM$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$408,%esp
	movl	%ebx,-376(%ebp)
	movl	%esi,-372(%ebp)
	movl	%edi,-368(%ebp)
	call	Lj2236
Lj2236:
	popl	-364(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-340(%ebp)
	movl	$0,-336(%ebp)
	movl	$0,-332(%ebp)
	movl	$0,-328(%ebp)
	movl	$0,-324(%ebp)
	movl	$0,-280(%ebp)
	movl	$0,-264(%ebp)
	leal	-192(%ebp),%ecx
	leal	-216(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-220(%ebp)
	testl	%eax,%eax
	jne	Lj2237
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	-8(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%eax
	cmpl	$-1,%eax
	je	Lj2246
	jmp	Lj2247
Lj2246:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld171$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2247:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj2252
	jmp	Lj2253
Lj2252:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld173$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2253:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	136(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2258
	jmp	Lj2259
Lj2258:
	movl	$1,-148(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	140(%eax),%eax
	testl	%eax,%eax
	je	Lj2262
	jmp	Lj2263
Lj2262:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld175$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2263:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	144(%eax),%eax
	testl	%eax,%eax
	je	Lj2268
	jmp	Lj2269
Lj2268:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld177$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2269:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	148(%eax),%eax
	testl	%eax,%eax
	je	Lj2274
	jmp	Lj2275
Lj2274:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld179$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2275:
	jmp	Lj2280
Lj2259:
	movl	$0,-148(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	116(%eax),%eax
	testl	%eax,%eax
	je	Lj2283
	jmp	Lj2284
Lj2283:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld181$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2284:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	132(%eax),%eax
	testl	%eax,%eax
	je	Lj2289
	jmp	Lj2290
Lj2289:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld183$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2290:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	128(%eax),%eax
	testl	%eax,%eax
	je	Lj2295
	jmp	Lj2296
Lj2295:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld185$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2296:
Lj2280:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj2301
	jmp	Lj2303
Lj2303:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%eax
	testl	%eax,%eax
	je	Lj2301
	jmp	Lj2302
Lj2301:
	jmp	Lj2237
Lj2302:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	je	Lj2304
	jmp	Lj2305
Lj2304:
	movl	-364(%ebp),%eax
	movl	L_VMT_FPTIFFCMN_TTIFFIFD$non_lazy_ptr-Lj2236(%eax),%edx
	movl	$0,%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub
Lj2305:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	%eax,-176(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-88(%ebp)
	leal	-232(%ebp),%ecx
	leal	-256(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-260(%ebp)
	testl	%eax,%eax
	jne	Lj2334
	movl	-148(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2338
	jmp	Lj2339
Lj2338:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%ecx
	movl	80(%edx),%eax
	movl	136(%ecx),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	44(%edx),%ecx
	xorl	%edx,%edx
	divl	136(%ecx)
	movl	%eax,-152(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%ecx
	movl	72(%edx),%eax
	movl	140(%ecx),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	44(%edx),%ecx
	xorl	%edx,%edx
	divl	140(%ecx)
	movl	%eax,-156(%ebp)
	movl	-156(%ebp),%eax
	mull	-152(%ebp)
	movl	%eax,-24(%ebp)
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	144(%eax),%edx
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD$stub
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj2354
	jmp	Lj2355
Lj2354:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld187$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2355:
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	148(%eax),%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD$stub
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj2368
	jmp	Lj2369
Lj2368:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld189$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2369:
	jmp	Lj2374
Lj2339:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	44(%edx),%ecx
	xorl	%edx,%edx
	divl	116(%ecx)
	incl	%eax
	movl	%eax,-24(%ebp)
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	132(%eax),%edx
	leal	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD$stub
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj2385
	jmp	Lj2386
Lj2385:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld191$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2386:
	leal	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	128(%eax),%edx
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD$stub
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jne	Lj2399
	jmp	Lj2400
Lj2399:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld193$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2400:
Lj2374:
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	leal	-76(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-88(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-84(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-114(%ebp),%eax
	movl	%eax,16(%esp)
	leal	-90(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-108(%ebp),%eax
	movl	%eax,24(%esp)
	leal	-102(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__READIMAGEPROPERTIES$crcEBB37E25$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-176(%ebp),%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__ASSIGN$TTIFFIFD$stub
	movl	-176(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	movl	-176(%ebp),%eax
	movl	172(%eax),%eax
	movl	%eax,-136(%ebp)
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj2435
	jmp	Lj2436
Lj2435:
	jmp	Lj2337
Lj2436:
	movl	-136(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETFPIMGEXTRAS$TFPCUSTOMIMAGE$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	92(%eax),%eax
	subl	$4,%eax
	jbe	Lj2443
	decl	%eax
	subl	$3,%eax
	jbe	Lj2444
	jmp	Lj2442
Lj2443:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%edx
	movl	-136(%ebp),%eax
	movl	-136(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	jmp	Lj2441
Lj2444:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%edx
	movl	-136(%ebp),%eax
	movl	-136(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	jmp	Lj2441
Lj2442:
Lj2441:
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,-360(%ebp)
	movl	$0,-28(%ebp)
	movl	-360(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj2458
	decl	-28(%ebp)
	.align 2
Lj2459:
	incl	-28(%ebp)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj2464
	jmp	Lj2465
Lj2464:
	jmp	Lj2457
Lj2465:
	movl	-40(%ebp),%edx
	leal	-20(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-36(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,%esi
	movl	-40(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%ebx
	movl	%esi,%edx
	call	*128(%ebx)
	movl	-148(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2480
	jmp	Lj2481
Lj2480:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-80(%ebp),%eax
	mull	136(%edx)
	movl	%eax,%edx
	addl	$7,%edx
	shrl	$3,%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	140(%eax),%eax
	mull	%edx
	movl	%eax,-144(%ebp)
	jmp	Lj2484
Lj2481:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-80(%ebp),%eax
	mull	80(%edx)
	movl	%eax,%edx
	addl	$7,%edx
	shrl	$3,%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	116(%eax),%eax
	mull	%edx
	movl	%eax,-144(%ebp)
Lj2484:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jb	Lj2488
	decl	%eax
	je	Lj2489
	subl	$4,%eax
	je	Lj2491
	subl	$3,%eax
	je	Lj2492
	subl	$32765,%eax
	je	Lj2490
	subl	$173,%eax
	je	Lj2492
	jmp	Lj2488
Lj2489:
	jmp	Lj2487
Lj2490:
	leal	-40(%ebp),%ecx
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__DECODEPACKBITS$POINTER$LONGINT$stub
	jmp	Lj2487
Lj2491:
	leal	-40(%ebp),%ecx
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__DECODELZW$POINTER$LONGINT$stub
	jmp	Lj2487
Lj2492:
	movl	-144(%ebp),%eax
	movl	%eax,(%esp)
	leal	-40(%ebp),%ecx
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__DECODEDEFLATE$POINTER$LONGINT$LONGINT$stub
	jmp	Lj2487
Lj2488:
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	movl	-364(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld195$non_lazy_ptr-Lj2236(%eax),%edx
	movl	%edx,-276(%ebp)
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	36(%eax),%ax
	leal	-280(%ebp),%edx
	call	L_FPTIFFCMN_TIFFCOMPRESSIONNAME$WORD$$ANSISTRING$stub
	movl	-280(%ebp),%eax
	movl	%eax,-272(%ebp)
	movl	-364(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld197$non_lazy_ptr-Lj2236(%eax),%edx
	movl	%edx,-268(%ebp)
	leal	-276(%ebp),%edx
	leal	-264(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2487:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj2527
	jmp	Lj2528
Lj2527:
	jmp	Lj2457
Lj2528:
	movl	-148(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2529
	jmp	Lj2530
Lj2529:
	movl	-28(%ebp),%eax
	xorl	%edx,%edx
	divl	-152(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	136(%eax),%eax
	mull	%edx
	movl	%eax,-160(%ebp)
	movl	-28(%ebp),%eax
	xorl	%edx,%edx
	divl	-152(%ebp)
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	140(%eax),%eax
	mull	%edx
	movl	%eax,-164(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%edx
	movl	$0,%eax
	movl	-160(%ebp),%ecx
	movl	$0,%ebx
	subl	%ecx,%edx
	sbbl	%ebx,%eax
	movl	%edx,-272(%ebp)
	movl	%eax,-268(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	136(%eax),%eax
	movl	$0,%edx
	movl	%eax,-288(%ebp)
	movl	%edx,-284(%ebp)
	movl	-288(%ebp),%eax
	movl	-284(%ebp),%edx
	cmpl	-268(%ebp),%edx
	jl	Lj2541
	jg	Lj2542
	cmpl	-272(%ebp),%eax
	jb	Lj2541
	jmp	Lj2542
	jmp	Lj2542
Lj2541:
	movl	-288(%ebp),%edx
	movl	-284(%ebp),%eax
	jmp	Lj2545
Lj2542:
	movl	-272(%ebp),%edx
	movl	-268(%ebp),%eax
Lj2545:
	movl	%edx,-168(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%eax
	movl	$0,%edx
	movl	-164(%ebp),%ecx
	movl	$0,%ebx
	subl	%ecx,%eax
	sbbl	%ebx,%edx
	movl	%eax,-288(%ebp)
	movl	%edx,-284(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	140(%eax),%edx
	movl	$0,%eax
	movl	%edx,-272(%ebp)
	movl	%eax,-268(%ebp)
	movl	-272(%ebp),%eax
	movl	-268(%ebp),%edx
	cmpl	-284(%ebp),%edx
	jl	Lj2554
	jg	Lj2555
	cmpl	-288(%ebp),%eax
	jb	Lj2554
	jmp	Lj2555
	jmp	Lj2555
Lj2554:
	movl	-272(%ebp),%edx
	movl	-268(%ebp),%eax
	jmp	Lj2558
Lj2555:
	movl	-288(%ebp),%edx
	movl	-284(%ebp),%eax
Lj2558:
	movl	%edx,-172(%ebp)
	movl	-168(%ebp),%eax
	mull	-80(%ebp)
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-180(%ebp)
	movl	-172(%ebp),%eax
	mull	-180(%ebp)
	movl	%eax,-144(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-144(%ebp),%eax
	jl	Lj2565
	jmp	Lj2566
Lj2565:
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	movl	-364(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld199$non_lazy_ptr-Lj2236(%eax),%edx
	movl	%edx,-320(%ebp)
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-40(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-264(%ebp),%eax
	movl	%eax,-316(%ebp)
	movl	-364(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld201$non_lazy_ptr-Lj2236(%eax),%edx
	movl	%edx,-312(%ebp)
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	movl	-168(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-324(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-324(%ebp),%eax
	movl	%eax,-308(%ebp)
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld203$non_lazy_ptr-Lj2236(%edx),%eax
	movl	%eax,-304(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	movl	-172(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-328(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-328(%ebp),%eax
	movl	%eax,-300(%ebp)
	movl	-364(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld205$non_lazy_ptr-Lj2236(%eax),%edx
	movl	%edx,-296(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%edx
	movl	-144(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-332(%ebp),%eax
	movl	%eax,-292(%ebp)
	leal	-320(%ebp),%edx
	leal	-280(%ebp),%eax
	movl	$7,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-280(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
	jmp	Lj2593
Lj2566:
	movl	-40(%ebp),%eax
	cmpl	-144(%ebp),%eax
	jg	Lj2594
	jmp	Lj2595
Lj2594:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-80(%ebp),%eax
	mull	136(%edx)
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-180(%ebp)
Lj2595:
Lj2593:
	jmp	Lj2598
Lj2530:
	movl	$0,-160(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movl	-28(%ebp),%eax
	mull	116(%edx)
	movl	%eax,-164(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%eax
	movl	%eax,-168(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%edx
	movl	$0,%ebx
	movl	-164(%ebp),%eax
	movl	$0,%ecx
	subl	%eax,%edx
	sbbl	%ecx,%ebx
	movl	%edx,-288(%ebp)
	movl	%ebx,-284(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	116(%eax),%eax
	movl	$0,%edx
	movl	%eax,-296(%ebp)
	movl	%edx,-292(%ebp)
	movl	-296(%ebp),%edx
	movl	-292(%ebp),%eax
	cmpl	-284(%ebp),%eax
	jl	Lj2611
	jg	Lj2612
	cmpl	-288(%ebp),%edx
	jb	Lj2611
	jmp	Lj2612
	jmp	Lj2612
Lj2611:
	movl	-296(%ebp),%eax
	movl	-292(%ebp),%edx
	jmp	Lj2615
Lj2612:
	movl	-288(%ebp),%eax
	movl	-284(%ebp),%edx
Lj2615:
	movl	%eax,-172(%ebp)
	movl	-168(%ebp),%eax
	mull	-80(%ebp)
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-180(%ebp)
	movl	-172(%ebp),%eax
	mull	-180(%ebp)
	movl	%eax,-144(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-144(%ebp),%eax
	jl	Lj2622
	jmp	Lj2623
Lj2622:
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld207$non_lazy_ptr-Lj2236(%edx),%eax
	movl	%eax,-312(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-328(%ebp),%edx
	movl	-40(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-328(%ebp),%eax
	movl	%eax,-308(%ebp)
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld201$non_lazy_ptr-Lj2236(%edx),%eax
	movl	%eax,-304(%ebp)
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	movl	-168(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-324(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-324(%ebp),%eax
	movl	%eax,-300(%ebp)
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld203$non_lazy_ptr-Lj2236(%edx),%eax
	movl	%eax,-296(%ebp)
	leal	-336(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-336(%ebp)
	movl	-172(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-336(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-336(%ebp),%eax
	movl	%eax,-292(%ebp)
	movl	-364(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld205$non_lazy_ptr-Lj2236(%eax),%edx
	movl	%edx,-288(%ebp)
	leal	-340(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	movl	-144(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-340(%ebp),%eax
	movl	%eax,-284(%ebp)
	leal	-312(%ebp),%edx
	leal	-332(%ebp),%eax
	movl	$7,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-332(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2623:
Lj2598:
	movb	$1,-137(%ebp)
	movb	$0,%bl
	leal	-356(%ebp),%eax
	movl	%eax,(%esp)
	movl	-164(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-356(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-137(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$1,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	movb	%bl,12(%esp)
	call	*100(%esi)
	movb	-137(%ebp),%al
	testb	%al,%al
	je	Lj2676
	jmp	Lj2677
Lj2676:
	jmp	Lj2458
Lj2677:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	92(%eax),%eax
	decl	%eax
	cmpl	$4,%eax
	jb	Lj2680
Lj2680:
	jc	Lj2678
	jmp	Lj2679
Lj2678:
	movl	-160(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-164(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	92(%eax),%eax
	cmpl	$1,%eax
	jb	Lj2686
	decl	%eax
	je	Lj2687
	decl	%eax
	je	Lj2688
	decl	%eax
	je	Lj2689
	decl	%eax
	je	Lj2690
	jmp	Lj2686
Lj2687:
	movl	$1,-64(%ebp)
	movl	$1,-68(%ebp)
	jmp	Lj2685
Lj2688:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-48(%ebp)
	movl	$-1,-64(%ebp)
	movl	$1,-68(%ebp)
	jmp	Lj2685
Lj2689:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-48(%ebp)
	movl	$-1,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%edx
	movl	-52(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	movl	$-1,-68(%ebp)
	jmp	Lj2685
Lj2690:
	movl	$1,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%edx
	movl	-52(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-52(%ebp)
	movl	$-1,-68(%ebp)
	jmp	Lj2685
Lj2686:
Lj2685:
	jmp	Lj2715
Lj2679:
	movl	-164(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-160(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	92(%eax),%eax
	cmpl	$5,%eax
	jb	Lj2721
	subl	$5,%eax
	je	Lj2722
	decl	%eax
	je	Lj2723
	decl	%eax
	je	Lj2724
	decl	%eax
	je	Lj2725
	jmp	Lj2721
Lj2722:
	movl	$1,-64(%ebp)
	movl	$1,-68(%ebp)
	jmp	Lj2720
Lj2723:
	movl	$1,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%eax
	movl	-52(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	movl	$-1,-68(%ebp)
	jmp	Lj2720
Lj2724:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-48(%ebp)
	movl	$-1,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	80(%eax),%eax
	movl	-52(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	movl	$-1,-68(%ebp)
	jmp	Lj2720
Lj2725:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	72(%eax),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-48(%ebp)
	movl	$-1,-64(%ebp)
	movl	$1,-68(%ebp)
	jmp	Lj2720
Lj2721:
Lj2720:
Lj2715:
	movl	-48(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-172(%ebp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%edi
	jl	Lj2753
	decl	-60(%ebp)
	.align 2
Lj2754:
	incl	-60(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-180(%ebp),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	-20(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-44(%ebp)
	movw	$0,-100(%ebp)
	movw	$0,-106(%ebp)
	movw	$0,-112(%ebp)
	movw	$0,-94(%ebp)
	movw	$0,-118(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-168(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-56(%ebp)
	cmpl	-56(%ebp),%esi
	jl	Lj2776
	decl	-56(%ebp)
	.align 2
Lj2777:
	incl	-56(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%eax
	subl	$1,%eax
	jbe	Lj2780
	decl	%eax
	je	Lj2781
	subl	$3,%eax
	je	Lj2782
	jmp	Lj2779
Lj2780:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-90(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj2786
	decw	%ax
	je	Lj2787
	subw	$7,%ax
	je	Lj2788
	subw	$8,%ax
	je	Lj2789
	jmp	Lj2786
Lj2787:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	-354(%ebp),%ecx
	movl	$1,%edx
	shll	%cl,%edx
	andl	%edx,%eax
	movzbl	-354(%ebp),%ecx
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-92(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2794
	jmp	Lj2795
Lj2794:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2795:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj2800
	jmp	Lj2801
Lj2800:
	incl	-44(%ebp)
Lj2801:
	jmp	Lj2785
Lj2788:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-92(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2804
	jmp	Lj2805
Lj2804:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2806
	jmp	Lj2807
Lj2806:
	movzwl	-92(%ebp),%edx
	movzwl	-94(%ebp),%eax
	addl	%eax,%edx
	andl	$255,%edx
	movw	%dx,-92(%ebp)
Lj2807:
	movw	-92(%ebp),%ax
	movw	%ax,-94(%ebp)
Lj2805:
	movzwl	-92(%ebp),%eax
	shll	$8,%eax
	movzwl	-92(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-92(%ebp)
	incl	-44(%ebp)
	jmp	Lj2785
Lj2789:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-92(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2820
	jmp	Lj2821
Lj2820:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2822
	jmp	Lj2823
Lj2822:
	movzwl	-92(%ebp),%edx
	movzwl	-94(%ebp),%eax
	addl	%eax,%edx
	andl	$65535,%edx
	movw	%dx,-92(%ebp)
Lj2823:
	movw	-92(%ebp),%ax
	movw	%ax,-94(%ebp)
Lj2821:
	addl	$2,-44(%ebp)
	jmp	Lj2785
Lj2786:
Lj2785:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%eax
	testl	%eax,%eax
	je	Lj2828
	jmp	Lj2829
Lj2828:
	movzwl	-92(%ebp),%edx
	movl	$65535,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-92(%ebp)
Lj2829:
	movw	$65535,-116(%ebp)
	movl	-88(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-132(%ebp)
	cmpl	-132(%ebp),%ebx
	jl	Lj2835
	decl	-132(%ebp)
	.align 2
Lj2836:
	incl	-132(%ebp)
	movl	-84(%ebp),%edx
	movl	-132(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj2839
Lj2839:
	jc	Lj2837
	jmp	Lj2838
Lj2837:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-114(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj2843
	decw	%ax
	je	Lj2844
	subw	$7,%ax
	je	Lj2845
	subw	$8,%ax
	je	Lj2846
	jmp	Lj2843
Lj2844:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	-354(%ebp),%ecx
	movl	$1,%edx
	shll	%cl,%edx
	andl	%edx,%eax
	movzbl	-354(%ebp),%ecx
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2851
	jmp	Lj2852
Lj2851:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2852:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj2857
	jmp	Lj2858
Lj2857:
	incl	-44(%ebp)
Lj2858:
	jmp	Lj2842
Lj2845:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2861
	jmp	Lj2862
Lj2861:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2863
	jmp	Lj2864
Lj2863:
	movzwl	-116(%ebp),%edx
	movzwl	-118(%ebp),%eax
	addl	%eax,%edx
	andl	$255,%edx
	movw	%dx,%ax
	movw	%ax,-116(%ebp)
Lj2864:
	movw	-116(%ebp),%ax
	movw	%ax,-118(%ebp)
Lj2862:
	movzwl	-116(%ebp),%eax
	shll	$8,%eax
	movzwl	-116(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-116(%ebp)
	incl	-44(%ebp)
	jmp	Lj2842
Lj2846:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2877
	jmp	Lj2878
Lj2877:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2879
	jmp	Lj2880
Lj2879:
	movzwl	-116(%ebp),%eax
	movzwl	-118(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-116(%ebp)
Lj2880:
	movw	-116(%ebp),%ax
	movw	%ax,-118(%ebp)
Lj2878:
	addl	$2,-44(%ebp)
	jmp	Lj2842
Lj2843:
Lj2842:
	jmp	Lj2885
Lj2838:
	movl	-84(%ebp),%edx
	movl	-132(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	addl	%eax,-44(%ebp)
Lj2885:
	cmpl	-132(%ebp),%ebx
	jg	Lj2836
Lj2835:
	movw	-116(%ebp),%ax
	movw	%ax,(%esp)
	movw	-92(%ebp),%cx
	movw	-92(%ebp),%dx
	movw	-92(%ebp),%ax
	call	L_FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR$stub
	movl	%eax,-348(%ebp)
	movl	%edx,-344(%ebp)
	movl	-348(%ebp),%eax
	movl	%eax,-126(%ebp)
	movl	-344(%ebp),%eax
	movl	%eax,-122(%ebp)
	jmp	Lj2778
Lj2781:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-96(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj2899
	decw	%ax
	je	Lj2900
	subw	$7,%ax
	je	Lj2901
	subw	$8,%ax
	je	Lj2902
	jmp	Lj2899
Lj2900:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%edx
	movzbl	-354(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%edx
	movzbl	-354(%ebp),%ecx
	movl	%edx,%eax
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-98(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2907
	jmp	Lj2908
Lj2907:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2908:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj2913
	jmp	Lj2914
Lj2913:
	incl	-44(%ebp)
Lj2914:
	jmp	Lj2898
Lj2901:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-98(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2917
	jmp	Lj2918
Lj2917:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2919
	jmp	Lj2920
Lj2919:
	movzwl	-98(%ebp),%edx
	movzwl	-100(%ebp),%eax
	addl	%eax,%edx
	andl	$255,%edx
	movw	%dx,-98(%ebp)
Lj2920:
	movw	-98(%ebp),%ax
	movw	%ax,-100(%ebp)
Lj2918:
	movzwl	-98(%ebp),%eax
	shll	$8,%eax
	movzwl	-98(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-98(%ebp)
	incl	-44(%ebp)
	jmp	Lj2898
Lj2902:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-98(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2933
	jmp	Lj2934
Lj2933:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2935
	jmp	Lj2936
Lj2935:
	movzwl	-98(%ebp),%eax
	movzwl	-100(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-98(%ebp)
Lj2936:
	movw	-98(%ebp),%ax
	movw	%ax,-100(%ebp)
Lj2934:
	addl	$2,-44(%ebp)
	jmp	Lj2898
Lj2899:
Lj2898:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-102(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj2944
	decw	%ax
	je	Lj2945
	subw	$7,%ax
	je	Lj2946
	subw	$8,%ax
	je	Lj2947
	jmp	Lj2944
Lj2945:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%edx
	movzbl	-354(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%edx
	movzbl	-354(%ebp),%ecx
	movl	%edx,%eax
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-104(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2952
	jmp	Lj2953
Lj2952:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2953:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj2958
	jmp	Lj2959
Lj2958:
	incl	-44(%ebp)
Lj2959:
	jmp	Lj2943
Lj2946:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-104(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2962
	jmp	Lj2963
Lj2962:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2964
	jmp	Lj2965
Lj2964:
	movzwl	-104(%ebp),%eax
	movzwl	-106(%ebp),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movw	%ax,-104(%ebp)
Lj2965:
	movw	-104(%ebp),%ax
	movw	%ax,-106(%ebp)
Lj2963:
	movzwl	-104(%ebp),%eax
	shll	$8,%eax
	movzwl	-104(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-104(%ebp)
	incl	-44(%ebp)
	jmp	Lj2943
Lj2947:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-104(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2978
	jmp	Lj2979
Lj2978:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2980
	jmp	Lj2981
Lj2980:
	movzwl	-104(%ebp),%edx
	movzwl	-106(%ebp),%eax
	addl	%eax,%edx
	andl	$65535,%edx
	movw	%dx,-104(%ebp)
Lj2981:
	movw	-104(%ebp),%ax
	movw	%ax,-106(%ebp)
Lj2979:
	addl	$2,-44(%ebp)
	jmp	Lj2943
Lj2944:
Lj2943:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-108(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj2989
	decw	%ax
	je	Lj2990
	subw	$7,%ax
	je	Lj2991
	subw	$8,%ax
	je	Lj2992
	jmp	Lj2989
Lj2990:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%edx
	movzbl	-354(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%edx
	movzbl	-354(%ebp),%ecx
	movl	%edx,%eax
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-110(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2997
	jmp	Lj2998
Lj2997:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2998:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3003
	jmp	Lj3004
Lj3003:
	incl	-44(%ebp)
Lj3004:
	jmp	Lj2988
Lj2991:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-110(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3007
	jmp	Lj3008
Lj3007:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3009
	jmp	Lj3010
Lj3009:
	movzwl	-110(%ebp),%eax
	movzwl	-112(%ebp),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movw	%ax,-110(%ebp)
Lj3010:
	movw	-110(%ebp),%ax
	movw	%ax,-112(%ebp)
Lj3008:
	movzwl	-110(%ebp),%eax
	shll	$8,%eax
	movzwl	-110(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-110(%ebp)
	incl	-44(%ebp)
	jmp	Lj2988
Lj2992:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-110(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3023
	jmp	Lj3024
Lj3023:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3025
	jmp	Lj3026
Lj3025:
	movzwl	-110(%ebp),%edx
	movzwl	-112(%ebp),%eax
	addl	%eax,%edx
	andl	$65535,%edx
	movw	%dx,-110(%ebp)
Lj3026:
	movw	-110(%ebp),%ax
	movw	%ax,-112(%ebp)
Lj3024:
	addl	$2,-44(%ebp)
	jmp	Lj2988
Lj2989:
Lj2988:
	movw	$65535,-116(%ebp)
	movl	-88(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-132(%ebp)
	cmpl	-132(%ebp),%ebx
	jl	Lj3034
	decl	-132(%ebp)
	.align 2
Lj3035:
	incl	-132(%ebp)
	movl	-84(%ebp),%eax
	movl	-132(%ebp),%edx
	movzwl	(%eax,%edx,2),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj3038
Lj3038:
	jc	Lj3036
	jmp	Lj3037
Lj3036:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-114(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj3042
	decw	%ax
	je	Lj3043
	subw	$7,%ax
	je	Lj3044
	subw	$8,%ax
	je	Lj3045
	jmp	Lj3042
Lj3043:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	-354(%ebp),%ecx
	movl	$1,%edx
	shll	%cl,%edx
	andl	%edx,%eax
	movzbl	-354(%ebp),%ecx
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3050
	jmp	Lj3051
Lj3050:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3051:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3056
	jmp	Lj3057
Lj3056:
	incl	-44(%ebp)
Lj3057:
	jmp	Lj3041
Lj3044:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3060
	jmp	Lj3061
Lj3060:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3062
	jmp	Lj3063
Lj3062:
	movzwl	-116(%ebp),%edx
	movzwl	-118(%ebp),%eax
	addl	%eax,%edx
	andl	$255,%edx
	movw	%dx,%ax
	movw	%ax,-116(%ebp)
Lj3063:
	movw	-116(%ebp),%ax
	movw	%ax,-118(%ebp)
Lj3061:
	movzwl	-116(%ebp),%eax
	movl	%eax,%edx
	shll	$8,%edx
	movzwl	-116(%ebp),%eax
	addl	%eax,%edx
	movw	%dx,%ax
	movw	%ax,-116(%ebp)
	incl	-44(%ebp)
	jmp	Lj3041
Lj3045:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3076
	jmp	Lj3077
Lj3076:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3078
	jmp	Lj3079
Lj3078:
	movzwl	-116(%ebp),%edx
	movzwl	-118(%ebp),%eax
	addl	%eax,%edx
	andl	$65535,%edx
	movw	%dx,%ax
	movw	%ax,-116(%ebp)
Lj3079:
	movw	-116(%ebp),%ax
	movw	%ax,-118(%ebp)
Lj3077:
	addl	$2,-44(%ebp)
	jmp	Lj3041
Lj3042:
Lj3041:
	jmp	Lj3084
Lj3037:
	movl	-84(%ebp),%edx
	movl	-132(%ebp),%eax
	movzwl	(%edx,%eax,2),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	addl	%eax,-44(%ebp)
Lj3084:
	cmpl	-132(%ebp),%ebx
	jg	Lj3035
Lj3034:
	movw	-116(%ebp),%ax
	movw	%ax,(%esp)
	movw	-110(%ebp),%cx
	movw	-104(%ebp),%dx
	movw	-98(%ebp),%ax
	call	L_FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR$stub
	movl	%eax,-348(%ebp)
	movl	%edx,-344(%ebp)
	movl	-348(%ebp),%eax
	movl	%eax,-126(%ebp)
	movl	-344(%ebp),%eax
	movl	%eax,-122(%ebp)
	jmp	Lj2778
Lj2782:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-96(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj3098
	decw	%ax
	je	Lj3099
	subw	$7,%ax
	je	Lj3100
	subw	$8,%ax
	je	Lj3101
	jmp	Lj3098
Lj3099:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%edx
	movzbl	-354(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%edx
	movzbl	-354(%ebp),%ecx
	movl	%edx,%eax
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-98(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3106
	jmp	Lj3107
Lj3106:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3107:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3112
	jmp	Lj3113
Lj3112:
	incl	-44(%ebp)
Lj3113:
	jmp	Lj3097
Lj3100:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-98(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3116
	jmp	Lj3117
Lj3116:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3118
	jmp	Lj3119
Lj3118:
	movzwl	-98(%ebp),%eax
	movzwl	-100(%ebp),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movw	%ax,-98(%ebp)
Lj3119:
	movw	-98(%ebp),%ax
	movw	%ax,-100(%ebp)
Lj3117:
	movzwl	-98(%ebp),%eax
	shll	$8,%eax
	movzwl	-98(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-98(%ebp)
	incl	-44(%ebp)
	jmp	Lj3097
Lj3101:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-98(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3132
	jmp	Lj3133
Lj3132:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3134
	jmp	Lj3135
Lj3134:
	movzwl	-98(%ebp),%eax
	movzwl	-100(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-98(%ebp)
Lj3135:
	movw	-98(%ebp),%ax
	movw	%ax,-100(%ebp)
Lj3133:
	addl	$2,-44(%ebp)
	jmp	Lj3097
Lj3098:
Lj3097:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-102(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj3143
	decw	%ax
	je	Lj3144
	subw	$7,%ax
	je	Lj3145
	subw	$8,%ax
	je	Lj3146
	jmp	Lj3143
Lj3144:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%edx
	movzbl	-354(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%edx
	movzbl	-354(%ebp),%ecx
	movl	%edx,%eax
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-104(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3151
	jmp	Lj3152
Lj3151:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3152:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3157
	jmp	Lj3158
Lj3157:
	incl	-44(%ebp)
Lj3158:
	jmp	Lj3142
Lj3145:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-104(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3161
	jmp	Lj3162
Lj3161:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3163
	jmp	Lj3164
Lj3163:
	movzwl	-104(%ebp),%eax
	movzwl	-106(%ebp),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movw	%ax,-104(%ebp)
Lj3164:
	movw	-104(%ebp),%ax
	movw	%ax,-106(%ebp)
Lj3162:
	movzwl	-104(%ebp),%eax
	shll	$8,%eax
	movzwl	-104(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-104(%ebp)
	incl	-44(%ebp)
	jmp	Lj3142
Lj3146:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-104(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3177
	jmp	Lj3178
Lj3177:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3179
	jmp	Lj3180
Lj3179:
	movzwl	-104(%ebp),%eax
	movzwl	-106(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-104(%ebp)
Lj3180:
	movw	-104(%ebp),%ax
	movw	%ax,-106(%ebp)
Lj3178:
	addl	$2,-44(%ebp)
	jmp	Lj3142
Lj3143:
Lj3142:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-108(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj3188
	decw	%ax
	je	Lj3189
	subw	$7,%ax
	je	Lj3190
	subw	$8,%ax
	je	Lj3191
	jmp	Lj3188
Lj3189:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%edx
	movzbl	-354(%ebp),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%edx
	movzbl	-354(%ebp),%ecx
	movl	%edx,%eax
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-110(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3196
	jmp	Lj3197
Lj3196:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3197:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3202
	jmp	Lj3203
Lj3202:
	incl	-44(%ebp)
Lj3203:
	jmp	Lj3187
Lj3190:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-110(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3206
	jmp	Lj3207
Lj3206:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3208
	jmp	Lj3209
Lj3208:
	movzwl	-110(%ebp),%edx
	movzwl	-112(%ebp),%eax
	addl	%eax,%edx
	andl	$255,%edx
	movw	%dx,-110(%ebp)
Lj3209:
	movw	-110(%ebp),%ax
	movw	%ax,-112(%ebp)
Lj3207:
	movzwl	-110(%ebp),%eax
	shll	$8,%eax
	movzwl	-110(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-110(%ebp)
	incl	-44(%ebp)
	jmp	Lj3187
Lj3191:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-110(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3222
	jmp	Lj3223
Lj3222:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3224
	jmp	Lj3225
Lj3224:
	movzwl	-110(%ebp),%eax
	movzwl	-112(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-110(%ebp)
Lj3225:
	movw	-110(%ebp),%ax
	movw	%ax,-112(%ebp)
Lj3223:
	addl	$2,-44(%ebp)
	jmp	Lj3187
Lj3188:
Lj3187:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-90(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj3233
	decw	%ax
	je	Lj3234
	subw	$7,%ax
	je	Lj3235
	subw	$8,%ax
	je	Lj3236
	jmp	Lj3233
Lj3234:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	-354(%ebp),%ecx
	movl	$1,%edx
	shll	%cl,%edx
	andl	%edx,%eax
	movzbl	-354(%ebp),%ecx
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-92(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3241
	jmp	Lj3242
Lj3241:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%edx),%ecx
	movl	%ecx,%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3242:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3247
	jmp	Lj3248
Lj3247:
	incl	-44(%ebp)
Lj3248:
	jmp	Lj3232
Lj3235:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-92(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3251
	jmp	Lj3252
Lj3251:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3253
	jmp	Lj3254
Lj3253:
	movzwl	-92(%ebp),%eax
	movzwl	-94(%ebp),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movw	%ax,-92(%ebp)
Lj3254:
	movw	-92(%ebp),%ax
	movw	%ax,-94(%ebp)
Lj3252:
	movzwl	-92(%ebp),%eax
	shll	$8,%eax
	movzwl	-92(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-92(%ebp)
	incl	-44(%ebp)
	jmp	Lj3232
Lj3236:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-92(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3267
	jmp	Lj3268
Lj3267:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3269
	jmp	Lj3270
Lj3269:
	movzwl	-92(%ebp),%eax
	movzwl	-94(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-92(%ebp)
Lj3270:
	movw	-92(%ebp),%ax
	movw	%ax,-94(%ebp)
Lj3268:
	addl	$2,-44(%ebp)
	jmp	Lj3232
Lj3233:
Lj3232:
	movw	$65535,-116(%ebp)
	movl	-88(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-132(%ebp)
	cmpl	-132(%ebp),%ebx
	jl	Lj3278
	decl	-132(%ebp)
	.align 2
Lj3279:
	incl	-132(%ebp)
	movl	-84(%ebp),%eax
	movl	-132(%ebp),%edx
	movzwl	(%eax,%edx,2),%eax
	decl	%eax
	cmpl	$2,%eax
	jb	Lj3282
Lj3282:
	jc	Lj3280
	jmp	Lj3281
Lj3280:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movw	40(%eax),%ax
	movw	%ax,-356(%ebp)
	movw	-114(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj3286
	decw	%ax
	je	Lj3287
	subw	$7,%ax
	je	Lj3288
	subw	$8,%ax
	je	Lj3289
	jmp	Lj3286
Lj3287:
	movl	-56(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	movl	$7,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	%dl,-354(%ebp)
	movl	-44(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	-354(%ebp),%ecx
	movl	$1,%edx
	shll	%cl,%edx
	andl	%edx,%eax
	movzbl	-354(%ebp),%ecx
	shrl	%cl,%eax
	imull	$65535,%eax
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3294
	jmp	Lj3295
Lj3294:
	movl	-8(%ebp),%eax
	movl	-364(%ebp),%ecx
	movl	L_$FPREADTIFF$_Ld103$non_lazy_ptr-Lj2236(%ecx),%edx
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3295:
	movl	-56(%ebp),%eax
	incl	%eax
	xorl	%edx,%edx
	movl	$8,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj3300
	jmp	Lj3301
Lj3300:
	incl	-44(%ebp)
Lj3301:
	jmp	Lj3285
Lj3288:
	movl	-44(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3304
	jmp	Lj3305
Lj3304:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3306
	jmp	Lj3307
Lj3306:
	movzwl	-116(%ebp),%eax
	movzwl	-118(%ebp),%edx
	addl	%edx,%eax
	andl	$255,%eax
	movw	%ax,-116(%ebp)
Lj3307:
	movw	-116(%ebp),%ax
	movw	%ax,-118(%ebp)
Lj3305:
	movzwl	-116(%ebp),%eax
	shll	$8,%eax
	movzwl	-116(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-116(%ebp)
	incl	-44(%ebp)
	jmp	Lj3285
Lj3289:
	movl	-44(%ebp),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub
	movw	%ax,-116(%ebp)
	movzwl	-356(%ebp),%eax
	cmpl	$2,%eax
	je	Lj3320
	jmp	Lj3321
Lj3320:
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3322
	jmp	Lj3323
Lj3322:
	movzwl	-116(%ebp),%eax
	movzwl	-118(%ebp),%edx
	addl	%edx,%eax
	andl	$65535,%eax
	movw	%ax,-116(%ebp)
Lj3323:
	movw	-116(%ebp),%ax
	movw	%ax,-118(%ebp)
Lj3321:
	addl	$2,-44(%ebp)
	jmp	Lj3285
Lj3286:
Lj3285:
	jmp	Lj3328
Lj3281:
	movl	-84(%ebp),%eax
	movl	-132(%ebp),%edx
	movzwl	(%eax,%edx,2),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	addl	%eax,-44(%ebp)
Lj3328:
	cmpl	-132(%ebp),%ebx
	jg	Lj3279
Lj3278:
	movw	-92(%ebp),%ax
	movw	%ax,(%esp)
	movw	-110(%ebp),%cx
	movw	-104(%ebp),%dx
	movw	-98(%ebp),%ax
	call	L_FPREADTIFF_CMYKTOFPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR$stub
	movl	%eax,-348(%ebp)
	movl	%edx,-344(%ebp)
	movl	-348(%ebp),%eax
	movl	%eax,-126(%ebp)
	movl	-344(%ebp),%eax
	movl	%eax,-122(%ebp)
	jmp	Lj2778
Lj2779:
	leal	-340(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-340(%ebp)
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld209$non_lazy_ptr-Lj2236(%edx),%eax
	movl	%eax,-352(%ebp)
	leal	-336(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-336(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	movl	104(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-336(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-336(%ebp),%eax
	movl	%eax,-348(%ebp)
	movl	-364(%ebp),%edx
	movl	L_$FPREADTIFF$_Ld211$non_lazy_ptr-Lj2236(%edx),%eax
	movl	%eax,-344(%ebp)
	leal	-352(%ebp),%edx
	leal	-340(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-340(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj2778:
	leal	-126(%ebp),%eax
	movl	%eax,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	movl	-136(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-64(%ebp),%eax
	addl	%eax,-48(%ebp)
	cmpl	-56(%ebp),%esi
	jg	Lj2777
Lj2776:
	movl	-68(%ebp),%eax
	addl	%eax,-52(%ebp)
	cmpl	-60(%ebp),%edi
	jg	Lj2754
Lj2753:
Lj2457:
	movl	-360(%ebp),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj2459
Lj2458:
Lj2334:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leal	-76(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leal	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leal	-16(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leal	-20(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-260(%ebp),%eax
	testl	%eax,%eax
	je	Lj2335
	decl	%eax
	testl	%eax,%eax
	je	Lj2336
	decl	%eax
	testl	%eax,%eax
	je	Lj2237
Lj2336:
	call	LFPC_RERAISE$stub
Lj2337:
	movl	-260(%ebp),%eax
	movl	$2,-260(%ebp)
	jmp	Lj2334
Lj2335:
Lj2237:
	call	LFPC_POPADDRSTACK$stub
	leal	-340(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-340(%ebp)
	leal	-336(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-336(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	leal	-280(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-280(%ebp)
	leal	-264(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-264(%ebp)
	movl	-220(%ebp),%eax
	testl	%eax,%eax
	je	Lj2238
	call	LFPC_RERAISE$stub
Lj2238:
	movl	-376(%ebp),%ebx
	movl	-372(%ebp),%esi
	movl	-368(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD
_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-10(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3385
	jmp	Lj3386
Lj3385:
	movw	-10(%ebp),%ax
	andw	$255,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movzwl	-10(%ebp),%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
Lj3386:
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$LONGWORD$$LONGWORD
_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,52(%eax)
	jne	Lj3393
	jmp	Lj3394
Lj3393:
	movl	-12(%ebp),%eax
	andl	$255,%eax
	shll	$24,%eax
	movl	-12(%ebp),%edx
	andl	$65280,%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	andl	$16711680,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	-12(%ebp),%edx
	shrl	$24,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj3394:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__DECODEPACKBITS$POINTER$LONGINT
_FPREADTIFF_TFPREADERTIFF_$__DECODEPACKBITS$POINTER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPREADTIFF_DECOMPRESSPACKBITS$POINTER$LONGINT$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__DECODELZW$POINTER$LONGINT
_FPREADTIFF_TFPREADERTIFF_$__DECODELZW$POINTER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__DECODEDEFLATE$POINTER$LONGINT$LONGINT
_FPREADTIFF_TFPREADERTIFF_$__DECODEDEFLATE$POINTER$LONGINT$LONGINT:
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
	jne	Lj3431
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
	jne	Lj3438
	movl	8(%ebp),%eax
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
	call	L_FPREADTIFF_DECOMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3444
	jmp	Lj3445
Lj3444:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub
Lj3445:
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
Lj3438:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj3439
	decl	%eax
	testl	%eax,%eax
	je	Lj3440
Lj3440:
	call	LFPC_RERAISE$stub
Lj3439:
Lj3431:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3432
	call	LFPC_RERAISE$stub
Lj3432:
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADTIFF_TFPREADERTIFF_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__CLEAR$stub
	movb	$1,-17(%ebp)
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-17(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	movb	%bl,12(%esp)
	call	*100(%esi)
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj3508
	jmp	Lj3509
Lj3508:
	jmp	Lj3478
Lj3509:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__LOADHEADERFROMSTREAM$TSTREAM$stub
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__LOADIFDSFROMSTREAM$stub
	movl	$-1,-24(%ebp)
	movl	$-1,-32(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%ebx
	jl	Lj3521
	decl	-40(%ebp)
	.align 2
Lj3522:
	incl	-40(%ebp)
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	72(%eax),%eax
	mull	80(%edx)
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj3533
	jmp	Lj3534
Lj3533:
	jmp	Lj3520
Lj3534:
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj3520:
	cmpl	-40(%ebp),%ebx
	jg	Lj3522
Lj3521:
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-17(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$1,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	movb	%bl,12(%esp)
	call	*100(%esi)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3563
	jmp	Lj3564
Lj3563:
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,172(%edx)
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__LOADIMAGEFROMSTREAM$LONGINT$stub
Lj3564:
	movb	$0,%bl
	movl	$0,4(%esp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	$0,%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub
	leal	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	leal	-17(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	movb	%bl,12(%esp)
	call	*100(%esi)
Lj3478:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADTIFF_TFPREADERTIFF_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj3605
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,64(%eax)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%ecx
	movl	%eax,56(%ecx)
	movl	%edx,60(%ecx)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movb	$1,%dl
	call	L_FPREADTIFF_TFPREADERTIFF_$__READTIFFHEADER$BOOLEAN$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj3617
	jmp	Lj3616
Lj3617:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3615
	jmp	Lj3616
Lj3615:
	movb	$1,-9(%ebp)
	jmp	Lj3624
Lj3616:
	movb	$0,-9(%ebp)
Lj3624:
	movl	-8(%ebp),%eax
	movl	60(%eax),%edx
	movl	%edx,4(%esp)
	movl	56(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj3605:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj3607
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj3630
	movb	$0,-9(%ebp)
Lj3630:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj3629
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3629:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3607
Lj3607:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__DOCREATEIMAGE$TTIFFIFD
_FPREADTIFF_TFPREADERTIFF_$__DOCREATEIMAGE$TTIFFIFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,32(%eax)
	jne	Lj3635
	jmp	Lj3636
Lj3635:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	32(%ebx),%ebx
	call	*%ebx
Lj3636:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__CREATE$$TFPREADERTIFF
_FPREADTIFF_TFPREADERTIFF_$__CREATE$$TFPREADERTIFF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj3644
Lj3644:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj3645
	jmp	Lj3646
Lj3645:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj3646:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3651
	jmp	Lj3652
Lj3651:
	jmp	Lj3643
Lj3652:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3655
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3659
	movl	L_VMT_CLASSES_TFPLIST$non_lazy_ptr-Lj3644(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,68(%edx)
Lj3659:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3660
	call	LFPC_RERAISE$stub
Lj3660:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3670
	jmp	Lj3669
Lj3670:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3668
	jmp	Lj3669
Lj3668:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj3669:
Lj3655:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3657
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj3674
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3675
	jmp	Lj3676
Lj3675:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj3676:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj3674:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3673
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj3673:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj3657
Lj3657:
Lj3643:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__DESTROY
_FPREADTIFF_TFPREADERTIFF_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3683
	jmp	Lj3684
Lj3683:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj3684:
	movl	-8(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__CLEAR$stub
	movl	-8(%ebp),%eax
	leal	68(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3697
	jmp	Lj3696
Lj3697:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3695
	jmp	Lj3696
Lj3695:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj3696:
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_TFPREADERTIFF_$__CLEAR
_FPREADTIFF_TFPREADERTIFF_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj3703
	incl	-8(%ebp)
	.align 2
Lj3704:
	decl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj3717
	jmp	Lj3718
Lj3717:
	movl	-4(%ebp),%eax
	movl	$0,44(%eax)
Lj3718:
	movl	-12(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-8(%ebp)
	jg	Lj3704
Lj3703:
	movl	-4(%ebp),%eax
	movb	$0,52(%eax)
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSPACKBITS$POINTER$LONGINT$POINTER$LONGINT
_FPREADTIFF_DECOMPRESSPACKBITS$POINTER$LONGINT$POINTER$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3733
	jmp	Lj3734
Lj3733:
	jmp	Lj3727
Lj3734:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-36(%ebp)
	jmp	Lj3740
	.align 2
Lj3739:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-17(%ebp)
	movb	-17(%ebp),%al
	cmpb	$-127,%al
	jl	Lj3745
	cmpb	$-1,%al
	jle	Lj3747
	cmpb	$127,%al
	jle	Lj3746
	jmp	Lj3745
Lj3746:
	movsbl	-17(%ebp),%eax
	incl	%eax
	movl	8(%ebp),%edx
	addl	%eax,(%edx)
	movsbl	-17(%ebp),%eax
	addl	$2,%eax
	addl	%eax,-16(%ebp)
	jmp	Lj3744
Lj3747:
	movsbl	-17(%ebp),%edx
	movl	$1,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	8(%ebp),%eax
	addl	%edx,(%eax)
	addl	$2,-16(%ebp)
	jmp	Lj3744
Lj3745:
	incl	-16(%ebp)
Lj3744:
Lj3740:
	movl	-16(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj3739
	jmp	Lj3741
Lj3741:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj3748
	jmp	Lj3749
Lj3748:
	jmp	Lj3727
Lj3749:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj3759
	.align 2
Lj3758:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-17(%ebp)
	movb	-17(%ebp),%al
	cmpb	$-127,%al
	jl	Lj3764
	cmpb	$-1,%al
	jle	Lj3766
	cmpb	$127,%al
	jle	Lj3765
	jmp	Lj3764
Lj3765:
	movsbl	-17(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,(%edx)
	incl	-16(%ebp)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-28(%ebp),%eax
	addl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	addl	%eax,-24(%ebp)
	jmp	Lj3763
Lj3766:
	movsbl	-17(%ebp),%edx
	movl	$1,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	8(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,(%eax)
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-17(%ebp)
	movl	-28(%ebp),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj3780
	decl	-32(%ebp)
	.align 2
Lj3781:
	incl	-32(%ebp)
	movl	-24(%ebp),%ecx
	movl	-32(%ebp),%ebx
	movb	-17(%ebp),%dl
	movb	%dl,(%ecx,%ebx,1)
	cmpl	-32(%ebp),%eax
	jg	Lj3781
Lj3780:
	movl	-28(%ebp),%eax
	addl	%eax,-24(%ebp)
	incl	-16(%ebp)
	jmp	Lj3763
Lj3764:
	incl	-16(%ebp)
Lj3763:
Lj3759:
	movl	-16(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj3758
	jmp	Lj3760
Lj3760:
Lj3727:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj3785
Lj3785:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj3804
	jmp	Lj3805
Lj3804:
	jmp	Lj3784
Lj3805:
	movl	-8(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$9,-28(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-40(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj3824
	.align 2
Lj3828:
	movl	%ebp,%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_GETNEXTCODE$$WORD$stub
	movw	%ax,-30(%ebp)
	movzwl	-30(%ebp),%eax
	cmpl	$257,%eax
	je	Lj3835
	jmp	Lj3836
Lj3835:
	jmp	Lj3830
Lj3836:
	movzwl	-30(%ebp),%eax
	cmpl	$256,%eax
	je	Lj3837
	jmp	Lj3838
Lj3837:
	movl	%ebp,%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_INITIALIZETABLE$stub
	movl	%ebp,%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_GETNEXTCODE$$WORD$stub
	movw	%ax,-30(%ebp)
	movzwl	-30(%ebp),%eax
	cmpl	$257,%eax
	je	Lj3845
	jmp	Lj3846
Lj3845:
	jmp	Lj3830
Lj3846:
	movzwl	-30(%ebp),%eax
	cmpl	$256,%eax
	je	Lj3847
	jmp	Lj3848
Lj3847:
	movl	%ebp,%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3785(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3848:
	movzwl	-30(%ebp),%edx
	movl	%ebp,%eax
	movb	$0,%cl
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN$stub
	movw	-30(%ebp),%ax
	movw	%ax,-46(%ebp)
	jmp	Lj3861
Lj3838:
	movl	-44(%ebp),%edx
	addl	$258,%edx
	movzwl	-30(%ebp),%eax
	cmpl	%eax,%edx
	jg	Lj3862
	jmp	Lj3863
Lj3862:
	movzwl	-30(%ebp),%edx
	movl	%ebp,%eax
	movb	$0,%cl
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN$stub
	movzwl	-30(%ebp),%ecx
	movzwl	-46(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ADDSTRINGTOTABLE$LONGINT$LONGINT$stub
	movw	-30(%ebp),%ax
	movw	%ax,-46(%ebp)
	jmp	Lj3878
Lj3863:
	movl	-44(%ebp),%edx
	addl	$258,%edx
	movzwl	-30(%ebp),%eax
	cmpl	%eax,%edx
	je	Lj3879
	jmp	Lj3880
Lj3879:
	movzwl	-46(%ebp),%edx
	movl	%ebp,%eax
	movb	$1,%cl
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN$stub
	movzwl	-46(%ebp),%ecx
	movzwl	-46(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ADDSTRINGTOTABLE$LONGINT$LONGINT$stub
	movw	-30(%ebp),%ax
	movw	%ax,-46(%ebp)
	jmp	Lj3895
Lj3880:
	movl	%ebp,%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3785(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3895:
Lj3878:
Lj3861:
	jmp	Lj3828
Lj3830:
Lj3824:
	call	LFPC_POPADDRSTACK$stub
	movl	%ebp,%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_CLEARTABLE$stub
	leal	-36(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj3825
	decl	%eax
	testl	%eax,%eax
	je	Lj3826
Lj3826:
	call	LFPC_RERAISE$stub
Lj3825:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj3784:
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ADDSTRINGTOTABLE$LONGINT$LONGINT
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ADDSTRINGTOTABLE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	call	Lj3799
Lj3799:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	cmpl	$3837,%eax
	je	Lj3910
	jmp	Lj3911
Lj3910:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld215$non_lazy_ptr-Lj3799(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3911:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-44(%eax),%eax
	cmpl	-40(%edx),%eax
	jge	Lj3916
	jmp	Lj3917
Lj3916:
	movl	-12(%ebp),%eax
	movl	-40(%eax),%eax
	shll	$1,%eax
	addl	$128,%eax
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	movl	-12(%ebp),%eax
	movl	-40(%eax),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	-36(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj3917:
	movl	-4(%ebp),%eax
	cmpl	$256,%eax
	jl	Lj3924
	jmp	Lj3925
Lj3924:
	movb	-4(%ebp),%al
	movb	%al,-13(%ebp)
	leal	-13(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$1,-24(%ebp)
	jmp	Lj3932
Lj3925:
	movl	-4(%ebp),%eax
	cmpl	$258,%eax
	jge	Lj3933
	jmp	Lj3934
Lj3933:
	movl	-4(%ebp),%edx
	subl	$258,%edx
	movl	-12(%ebp),%eax
	cmpl	-44(%eax),%edx
	jge	Lj3935
	jmp	Lj3936
Lj3935:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3799(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3936:
	movl	-12(%ebp),%eax
	movl	-36(%eax),%ecx
	movl	-4(%ebp),%eax
	subl	$258,%eax
	movl	(%ecx,%eax,8),%edx
	movl	%edx,-24(%ebp)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj3943
Lj3934:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3799(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3943:
Lj3932:
	movl	-8(%ebp),%eax
	cmpl	$256,%eax
	jl	Lj3948
	jmp	Lj3949
Lj3948:
	movb	-8(%ebp),%al
	movb	%al,-14(%ebp)
	leal	-14(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	$1,-32(%ebp)
	jmp	Lj3956
Lj3949:
	movl	-8(%ebp),%eax
	subl	$258,%eax
	movl	-12(%ebp),%edx
	cmpl	-44(%edx),%eax
	jge	Lj3957
	jmp	Lj3958
Lj3957:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3799(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3958:
	movl	-12(%ebp),%eax
	movl	-36(%eax),%ecx
	movl	-8(%ebp),%eax
	subl	$258,%eax
	movl	(%ecx,%eax,8),%edx
	movl	%edx,-32(%ebp)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,-28(%ebp)
Lj3956:
	movl	-12(%ebp),%eax
	movl	-36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-44(%eax),%edx
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,(%ecx,%edx,8)
	movl	$0,-36(%ebp)
	movl	-24(%ebp),%edx
	incl	%edx
	leal	-36(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	-36(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	movl	-36(%ebp),%edx
	movl	%edx,4(%ecx,%eax,8)
	movl	-36(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-36(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx,%ecx,1)
	movl	-12(%ebp),%eax
	incl	-44(%eax)
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	addl	$259,%eax
	cmpl	$512,%eax
	jl	Lj3984
	subl	$512,%eax
	je	Lj3985
	subl	$512,%eax
	je	Lj3985
	subl	$1024,%eax
	je	Lj3985
	jmp	Lj3984
Lj3985:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj3983
Lj3984:
Lj3983:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj3797
Lj3797:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$256,%eax
	jl	Lj3986
	jmp	Lj3987
Lj3986:
	movb	-4(%ebp),%al
	movb	%al,-21(%ebp)
	leal	-21(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj3994
Lj3987:
	movl	-4(%ebp),%eax
	cmpl	$258,%eax
	jge	Lj3995
	jmp	Lj3996
Lj3995:
	movl	-4(%ebp),%edx
	subl	$258,%edx
	movl	-12(%ebp),%eax
	cmpl	-44(%eax),%edx
	jge	Lj3997
	jmp	Lj3998
Lj3997:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3797(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj3998:
	movl	-12(%ebp),%eax
	movl	-36(%eax),%ecx
	movl	-4(%ebp),%eax
	subl	$258,%eax
	movl	(%ecx,%eax,8),%edx
	movl	%edx,-20(%ebp)
	movl	4(%ecx,%eax,8),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4005
Lj3996:
	movl	-12(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld213$non_lazy_ptr-Lj3797(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj4005:
Lj3994:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	incl	%edx
	movl	-12(%ebp),%eax
	cmpl	-16(%eax),%edx
	jg	Lj4010
	jmp	Lj4011
Lj4010:
	movl	-12(%ebp),%eax
	movl	-16(%eax),%eax
	shll	$1,%eax
	addl	$8,%eax
	movl	-12(%ebp),%edx
	movl	%eax,-16(%edx)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
Lj4011:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	8(%eax),%edx
	movl	-20(%ebp),%eax
	addl	%eax,(%edx)
	cmpb	$0,-8(%ebp)
	jne	Lj4024
	jmp	Lj4025
Lj4024:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%ecx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx,%ecx,1)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	incl	(%eax)
Lj4025:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ISINTABLE$WORD$$BOOLEAN
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ISINTABLE$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-44(%eax),%eax
	addl	$258,%eax
	movzwl	-4(%ebp),%edx
	cmpl	%edx,%eax
	setgb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_INITIALIZETABLE
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_INITIALIZETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$9,-28(%eax)
	movl	-4(%ebp),%eax
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_CLEARTABLE$stub
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_CLEARTABLE
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_CLEARTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-44(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj4035
	decl	-8(%ebp)
	.align 2
Lj4036:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-36(%eax),%eax
	movl	-8(%ebp),%edx
	leal	4(%eax,%edx,8),%eax
	movl	$0,%edx
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj4036
Lj4035:
	movl	-4(%ebp),%eax
	movl	$0,-44(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_GETNEXTCODE$$WORD
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_GETNEXTCODE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj3789
Lj3789:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-28(%eax),%ecx
	movl	-24(%edx),%eax
	addl	%eax,%ecx
	cmpl	$16,%ecx
	jg	Lj4045
	jmp	Lj4046
Lj4045:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	addl	$3,%eax
	movl	-4(%ebp),%edx
	cmpl	-8(%edx),%eax
	jg	Lj4047
	jmp	Lj4048
Lj4047:
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld217$non_lazy_ptr-Lj3789(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj4048:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	incl	-20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-12(%ebp),%eax
	shll	$8,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	incl	-20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-12(%ebp),%eax
	shll	$8,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%eax),%ecx
	movl	$24,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj4061
Lj4046:
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	addl	$2,%eax
	movl	-4(%ebp),%edx
	cmpl	-8(%edx),%eax
	jg	Lj4062
	jmp	Lj4063
Lj4062:
	movl	-4(%ebp),%eax
	movl	L_$FPREADTIFF$_Ld217$non_lazy_ptr-Lj3789(%ebx),%edx
	call	L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub
Lj4063:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	incl	-20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-12(%ebp),%eax
	shll	$8,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-28(%eax),%ecx
	movl	-24(%edx),%eax
	addl	%eax,%ecx
	cmpl	$16,%ecx
	je	Lj4072
	jmp	Lj4073
Lj4072:
	movl	-4(%ebp),%eax
	incl	-20(%eax)
Lj4073:
	movl	-4(%ebp),%eax
	movl	-28(%eax),%ecx
	movl	$16,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
Lj4061:
	movl	-4(%ebp),%edx
	movl	$1,%eax
	movl	-28(%edx),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	-12(%ebp),%edx
	andl	%edx,%eax
	movw	%ax,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-24(%eax),%ecx
	movl	-28(%edx),%eax
	addl	%eax,%ecx
	andl	$7,%ecx
	movl	-4(%ebp),%eax
	movl	%ecx,-24(%eax)
	movw	-6(%ebp),%ax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING
_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj3787
Lj3787:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj3787(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj3787(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADTIFF_DECOMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN
_FPREADTIFF_DECOMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-328(%ebp)
	movl	%esi,-324(%ebp)
	movl	%edi,-320(%ebp)
	call	Lj4087
Lj4087:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4092
	jmp	Lj4093
Lj4092:
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj4086
Lj4093:
	leal	-312(%ebp),%eax
	call	L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4100
	jmp	Lj4101
Lj4100:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4102
	jmp	Lj4103
Lj4102:
	movl	L_$FPREADTIFF$_Ld219$non_lazy_ptr-Lj4087(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj4103:
	jmp	Lj4086
Lj4101:
	movl	-8(%ebp),%eax
	movl	%eax,-308(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-312(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4110
	jmp	Lj4111
Lj4110:
	movl	12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj4111:
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
	jmp	Lj4123
	.align 2
Lj4122:
	movl	-296(%ebp),%eax
	testl	%eax,%eax
	je	Lj4125
	jmp	Lj4126
Lj4125:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$128,%eax
	jb	Lj4127
	jmp	Lj4128
Lj4127:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	addl	$128,%edx
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj4131
Lj4128:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1025,%eax
	ja	Lj4132
	jmp	Lj4133
Lj4132:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4134
	jmp	Lj4135
Lj4134:
	movl	L_$FPREADTIFF$_Ld221$non_lazy_ptr-Lj4087(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj4135:
	jmp	Lj4086
	jmp	Lj4138
Lj4133:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	shll	$1,%eax
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
Lj4138:
Lj4131:
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
	movl	(%eax),%eax
	movl	-292(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-296(%ebp)
Lj4126:
	leal	-312(%ebp),%eax
	movl	$0,%edx
	call	L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	cmpl	$1,%eax
	je	Lj4155
	jmp	Lj4156
Lj4155:
	jmp	Lj4124
Lj4156:
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4157
	jmp	Lj4158
Lj4157:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4159
	jmp	Lj4160
Lj4159:
	movl	L_$FPREADTIFF$_Ld223$non_lazy_ptr-Lj4087(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj4160:
	jmp	Lj4086
Lj4158:
Lj4123:
	jmp	Lj4122
Lj4124:
	movl	12(%ebp),%eax
	movl	-292(%ebp),%edx
	movl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER$stub
	leal	-312(%ebp),%eax
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	%eax,-316(%ebp)
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4173
	jmp	Lj4174
Lj4173:
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4175
	jmp	Lj4176
Lj4175:
	movl	L_$FPREADTIFF$_Ld225$non_lazy_ptr-Lj4087(%ebx),%esi
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%esi,(%edi)
Lj4176:
	jmp	Lj4086
Lj4174:
	movb	$1,-13(%ebp)
Lj4086:
	movb	-13(%ebp),%al
	movl	-328(%ebp),%ebx
	movl	-324(%ebp),%esi
	movl	-320(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADTIFF
_INIT$_FPREADTIFF:
.reference __FPREADTIFF_init
.globl	__FPREADTIFF_init
__FPREADTIFF_init:
.reference _INIT$_FPREADTIFF
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
	movl	L_$FPREADTIFF$_Ld227$non_lazy_ptr-Lj2(%esi),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETREADER$ANSISTRING$$TFPCUSTOMIMAGEREADERCLASS$stub
	testl	%eax,%eax
	je	Lj4181
	jmp	Lj4182
Lj4181:
	movl	L_VMT_FPREADTIFF_TFPREADERTIFF$non_lazy_ptr-Lj2(%esi),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%esi),%eax
	movl	(%eax),%eax
	movl	L_$FPREADTIFF$_Ld229$non_lazy_ptr-Lj2(%esi),%edx
	movl	L_$FPREADTIFF$_Ld227$non_lazy_ptr-Lj2(%esi),%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
Lj4182:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld231
_$FPREADTIFF$_Ld231:
	.byte	13
	.ascii	"TFPReaderTiff"

.const_data
	.align 2
.globl	_VMT_FPREADTIFF_TFPREADERTIFF
_VMT_FPREADTIFF_TFPREADERTIFF:
	.long	72,-72
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADTIFF$_Ld231
	.long	0,0
	.long	_$FPREADTIFF$_Ld232
	.long	_RTTI_FPREADTIFF_TFPREADERTIFF
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADTIFF_TFPREADERTIFF_$__DESTROY
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
	.long	_FPREADTIFF_TFPREADERTIFF_$__CREATE$$TFPREADERTIFF
	.long	_FPREADTIFF_TFPREADERTIFF_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADTIFF_TFPREADERTIFF_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADTIFF_TFPREADERTIFF_$__DOCREATEIMAGE$TTIFFIFD
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADTIFF
_THREADVARLIST_FPREADTIFF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld2
_$FPREADTIFF$_Ld2:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld1
.globl	_$FPREADTIFF$_Ld1
_$FPREADTIFF$_Ld1:
.reference _$FPREADTIFF$_Ld2
	.ascii	" at position \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld4
_$FPREADTIFF$_Ld4:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADTIFF$_Ld3
.globl	_$FPREADTIFF$_Ld3
_$FPREADTIFF$_Ld3:
.reference _$FPREADTIFF$_Ld4
	.ascii	" (TiffPosition=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld6
_$FPREADTIFF$_Ld6:
	.short	0,1
	.long	0,-1,1
.reference _$FPREADTIFF$_Ld5
.globl	_$FPREADTIFF$_Ld5
_$FPREADTIFF$_Ld5:
.reference _$FPREADTIFF$_Ld6
	.ascii	")\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld8
_$FPREADTIFF$_Ld8:
	.short	0,1
	.long	0,-1,8
.reference _$FPREADTIFF$_Ld7
.globl	_$FPREADTIFF$_Ld7
_$FPREADTIFF$_Ld7:
.reference _$FPREADTIFF$_Ld8
	.ascii	"Samples=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld10
_$FPREADTIFF$_Ld10:
	.short	0,1
	.long	0,-1,20
.reference _$FPREADTIFF$_Ld9
.globl	_$FPREADTIFF$_Ld9
_$FPREADTIFF$_Ld9:
.reference _$FPREADTIFF$_Ld10
	.ascii	" <> SamplesPerPixel=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld12
_$FPREADTIFF$_Ld12:
	.short	0,1
	.long	0,-1,16
.reference _$FPREADTIFF$_Ld11
.globl	_$FPREADTIFF$_Ld11
_$FPREADTIFF$_Ld11:
.reference _$FPREADTIFF$_Ld12
	.ascii	" ExtraSampleCnt=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld14
_$FPREADTIFF$_Ld14:
	.short	0,1
	.long	0,-1,51
.reference _$FPREADTIFF$_Ld13
.globl	_$FPREADTIFF$_Ld13
_$FPREADTIFF$_Ld13:
.reference _$FPREADTIFF$_Ld14
	.ascii	"gray images expect one sample per pixel, but found "
	.ascii	"\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld16
_$FPREADTIFF$_Ld16:
	.short	0,1
	.long	0,-1,53
.reference _$FPREADTIFF$_Ld15
.globl	_$FPREADTIFF$_Ld15
_$FPREADTIFF$_Ld15:
.reference _$FPREADTIFF$_Ld16
	.ascii	"rgb images expect three samples per pixel, but foun"
	.ascii	"d \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld18
_$FPREADTIFF$_Ld18:
	.short	0,1
	.long	0,-1,54
.reference _$FPREADTIFF$_Ld17
.globl	_$FPREADTIFF$_Ld17
_$FPREADTIFF$_Ld17:
.reference _$FPREADTIFF$_Ld18
	.ascii	"palette images expect one sample per pixel, but fou"
	.ascii	"nd \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld20
_$FPREADTIFF$_Ld20:
	.short	0,1
	.long	0,-1,51
.reference _$FPREADTIFF$_Ld19
.globl	_$FPREADTIFF$_Ld19
_$FPREADTIFF$_Ld19:
.reference _$FPREADTIFF$_Ld20
	.ascii	"mask images expect one sample per pixel, but found "
	.ascii	"\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld22
_$FPREADTIFF$_Ld22:
	.short	0,1
	.long	0,-1,53
.reference _$FPREADTIFF$_Ld21
.globl	_$FPREADTIFF$_Ld21
_$FPREADTIFF$_Ld21:
.reference _$FPREADTIFF$_Ld22
	.ascii	"cmyk images expect four samples per pixel, but foun"
	.ascii	"d \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld24
_$FPREADTIFF$_Ld24:
	.short	0,1
	.long	0,-1,40
.reference _$FPREADTIFF$_Ld23
.globl	_$FPREADTIFF$_Ld23
_$FPREADTIFF$_Ld23:
.reference _$FPREADTIFF$_Ld24
	.ascii	"Samples bigger than 64 bit not supported\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld26
_$FPREADTIFF$_Ld26:
	.short	0,1
	.long	0,-1,45
.reference _$FPREADTIFF$_Ld25
.globl	_$FPREADTIFF$_Ld25
_$FPREADTIFF$_Ld25:
.reference _$FPREADTIFF$_Ld26
	.ascii	"Only samples of 1, 8 and 16 bit are supported\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld28
_$FPREADTIFF$_Ld28:
	.short	0,1
	.long	0,-1,60
.reference _$FPREADTIFF$_Ld27
.globl	_$FPREADTIFF$_Ld27
_$FPREADTIFF$_Ld27:
.reference _$FPREADTIFF$_Ld28
	.ascii	"gray image only supported with gray BitsPerSample 1"
	.ascii	", 8 or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld30
_$FPREADTIFF$_Ld30:
	.short	0,1
	.long	0,-1,58
.reference _$FPREADTIFF$_Ld29
.globl	_$FPREADTIFF$_Ld29
_$FPREADTIFF$_Ld29:
.reference _$FPREADTIFF$_Ld30
	.ascii	"gray image only supported with alpha BitsPerSample "
	.ascii	"8 or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld32
_$FPREADTIFF$_Ld32:
	.short	0,1
	.long	0,-1,55
.reference _$FPREADTIFF$_Ld31
.globl	_$FPREADTIFF$_Ld31
_$FPREADTIFF$_Ld31:
.reference _$FPREADTIFF$_Ld32
	.ascii	"RGB image only supported with red BitsPerSample 8 o"
	.ascii	"r 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld34
_$FPREADTIFF$_Ld34:
	.short	0,1
	.long	0,-1,57
.reference _$FPREADTIFF$_Ld33
.globl	_$FPREADTIFF$_Ld33
_$FPREADTIFF$_Ld33:
.reference _$FPREADTIFF$_Ld34
	.ascii	"RGB image only supported with green BitsPerSample 8"
	.ascii	" or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld36
_$FPREADTIFF$_Ld36:
	.short	0,1
	.long	0,-1,56
.reference _$FPREADTIFF$_Ld35
.globl	_$FPREADTIFF$_Ld35
_$FPREADTIFF$_Ld35:
.reference _$FPREADTIFF$_Ld36
	.ascii	"RGB image only supported with blue BitsPerSample 8 "
	.ascii	"or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld38
_$FPREADTIFF$_Ld38:
	.short	0,1
	.long	0,-1,57
.reference _$FPREADTIFF$_Ld37
.globl	_$FPREADTIFF$_Ld37
_$FPREADTIFF$_Ld37:
.reference _$FPREADTIFF$_Ld38
	.ascii	"RGB image only supported with alpha BitsPerSample 8"
	.ascii	" or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld40
_$FPREADTIFF$_Ld40:
	.short	0,1
	.long	0,-1,57
.reference _$FPREADTIFF$_Ld39
.globl	_$FPREADTIFF$_Ld39
_$FPREADTIFF$_Ld39:
.reference _$FPREADTIFF$_Ld40
	.ascii	"CMYK image only supported with cyan BitsPerSample 8"
	.ascii	" or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld42
_$FPREADTIFF$_Ld42:
	.short	0,1
	.long	0,-1,60
.reference _$FPREADTIFF$_Ld41
.globl	_$FPREADTIFF$_Ld41
_$FPREADTIFF$_Ld41:
.reference _$FPREADTIFF$_Ld42
	.ascii	"CMYK image only supported with magenta BitsPerSampl"
	.ascii	"e 8 or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld44
_$FPREADTIFF$_Ld44:
	.short	0,1
	.long	0,-1,59
.reference _$FPREADTIFF$_Ld43
.globl	_$FPREADTIFF$_Ld43
_$FPREADTIFF$_Ld43:
.reference _$FPREADTIFF$_Ld44
	.ascii	"CMYK image only supported with yellow BitsPerSample"
	.ascii	" 8 or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld46
_$FPREADTIFF$_Ld46:
	.short	0,1
	.long	0,-1,58
.reference _$FPREADTIFF$_Ld45
.globl	_$FPREADTIFF$_Ld45
_$FPREADTIFF$_Ld45:
.reference _$FPREADTIFF$_Ld46
	.ascii	"CMYK image only supported with black BitsPerSample "
	.ascii	"8 or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld48
_$FPREADTIFF$_Ld48:
	.short	0,1
	.long	0,-1,58
.reference _$FPREADTIFF$_Ld47
.globl	_$FPREADTIFF$_Ld47
_$FPREADTIFF$_Ld47:
.reference _$FPREADTIFF$_Ld48
	.ascii	"CMYK image only supported with alpha BitsPerSample "
	.ascii	"8 or 16\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld50
_$FPREADTIFF$_Ld50:
	.short	0,1
	.long	0,-1,23
.reference _$FPREADTIFF$_Ld49
.globl	_$FPREADTIFF$_Ld49
_$FPREADTIFF$_Ld49:
.reference _$FPREADTIFF$_Ld50
	.ascii	"FillOrder unsupported: \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld52
_$FPREADTIFF$_Ld52:
	.short	0,1
	.long	0,-1,29
.reference _$FPREADTIFF$_Ld51
.globl	_$FPREADTIFF$_Ld51
_$FPREADTIFF$_Ld51:
.reference _$FPREADTIFF$_Ld52
	.ascii	"TiffPhotoMetricInterpretation\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld54
_$FPREADTIFF$_Ld54:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADTIFF$_Ld53
.globl	_$FPREADTIFF$_Ld53
_$FPREADTIFF$_Ld53:
.reference _$FPREADTIFF$_Ld54
	.ascii	"TiffArtist\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld56
_$FPREADTIFF$_Ld56:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld55
.globl	_$FPREADTIFF$_Ld55
_$FPREADTIFF$_Ld55:
.reference _$FPREADTIFF$_Ld56
	.ascii	"TiffCopyright\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld58
_$FPREADTIFF$_Ld58:
	.short	0,1
	.long	0,-1,16
.reference _$FPREADTIFF$_Ld57
.globl	_$FPREADTIFF$_Ld57
_$FPREADTIFF$_Ld57:
.reference _$FPREADTIFF$_Ld58
	.ascii	"TiffDocumentName\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld60
_$FPREADTIFF$_Ld60:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld59
.globl	_$FPREADTIFF$_Ld59
_$FPREADTIFF$_Ld59:
.reference _$FPREADTIFF$_Ld60
	.ascii	"TiffDateTime\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld62
_$FPREADTIFF$_Ld62:
	.short	0,1
	.long	0,-1,16
.reference _$FPREADTIFF$_Ld61
.globl	_$FPREADTIFF$_Ld61
_$FPREADTIFF$_Ld61:
.reference _$FPREADTIFF$_Ld62
	.ascii	"TiffHostComputer\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld64
_$FPREADTIFF$_Ld64:
	.short	0,1
	.long	0,-1,20
.reference _$FPREADTIFF$_Ld63
.globl	_$FPREADTIFF$_Ld63
_$FPREADTIFF$_Ld63:
.reference _$FPREADTIFF$_Ld64
	.ascii	"TiffImageDescription\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld66
_$FPREADTIFF$_Ld66:
	.short	0,1
	.long	0,-1,28
.reference _$FPREADTIFF$_Ld65
.globl	_$FPREADTIFF$_Ld65
_$FPREADTIFF$_Ld65:
.reference _$FPREADTIFF$_Ld66
	.ascii	"TiffMake_ScannerManufacturer\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld68
_$FPREADTIFF$_Ld68:
	.short	0,1
	.long	0,-1,17
.reference _$FPREADTIFF$_Ld67
.globl	_$FPREADTIFF$_Ld67
_$FPREADTIFF$_Ld67:
.reference _$FPREADTIFF$_Ld68
	.ascii	"TiffModel_Scanner\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld70
_$FPREADTIFF$_Ld70:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld69
.globl	_$FPREADTIFF$_Ld69
_$FPREADTIFF$_Ld69:
.reference _$FPREADTIFF$_Ld70
	.ascii	"TiffSoftware\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld72
_$FPREADTIFF$_Ld72:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADTIFF$_Ld71
.globl	_$FPREADTIFF$_Ld71
_$FPREADTIFF$_Ld71:
.reference _$FPREADTIFF$_Ld72
	.ascii	"TiffOrientation\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld74
_$FPREADTIFF$_Ld74:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld73
.globl	_$FPREADTIFF$_Ld73
_$FPREADTIFF$_Ld73:
.reference _$FPREADTIFF$_Ld74
	.ascii	"TiffResolutionUnit\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld76
_$FPREADTIFF$_Ld76:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADTIFF$_Ld75
.globl	_$FPREADTIFF$_Ld75
_$FPREADTIFF$_Ld75:
.reference _$FPREADTIFF$_Ld76
	.ascii	"TiffXResolution\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld78
_$FPREADTIFF$_Ld78:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADTIFF$_Ld77
.globl	_$FPREADTIFF$_Ld77
_$FPREADTIFF$_Ld77:
.reference _$FPREADTIFF$_Ld78
	.ascii	"TiffYResolution\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld80
_$FPREADTIFF$_Ld80:
	.short	0,1
	.long	0,-1,11
.reference _$FPREADTIFF$_Ld79
.globl	_$FPREADTIFF$_Ld79
_$FPREADTIFF$_Ld79:
.reference _$FPREADTIFF$_Ld80
	.ascii	"TiffRedBits\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld82
_$FPREADTIFF$_Ld82:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld81
.globl	_$FPREADTIFF$_Ld81
_$FPREADTIFF$_Ld81:
.reference _$FPREADTIFF$_Ld82
	.ascii	"TiffGreenBits\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld84
_$FPREADTIFF$_Ld84:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld83
.globl	_$FPREADTIFF$_Ld83
_$FPREADTIFF$_Ld83:
.reference _$FPREADTIFF$_Ld84
	.ascii	"TiffBlueBits\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld86
_$FPREADTIFF$_Ld86:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld85
.globl	_$FPREADTIFF$_Ld85
_$FPREADTIFF$_Ld85:
.reference _$FPREADTIFF$_Ld86
	.ascii	"TiffGrayBits\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld88
_$FPREADTIFF$_Ld88:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld87
.globl	_$FPREADTIFF$_Ld87
_$FPREADTIFF$_Ld87:
.reference _$FPREADTIFF$_Ld88
	.ascii	"TiffAlphaBits\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld90
_$FPREADTIFF$_Ld90:
	.short	0,1
	.long	0,-1,14
.reference _$FPREADTIFF$_Ld89
.globl	_$FPREADTIFF$_Ld89
_$FPREADTIFF$_Ld89:
.reference _$FPREADTIFF$_Ld90
	.ascii	"TiffPageNumber\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld92
_$FPREADTIFF$_Ld92:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld91
.globl	_$FPREADTIFF$_Ld91
_$FPREADTIFF$_Ld91:
.reference _$FPREADTIFF$_Ld92
	.ascii	"TiffPageCount\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld94
_$FPREADTIFF$_Ld94:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld93
.globl	_$FPREADTIFF$_Ld93
_$FPREADTIFF$_Ld93:
.reference _$FPREADTIFF$_Ld94
	.ascii	"TiffPageName\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld96
_$FPREADTIFF$_Ld96:
	.short	0,1
	.long	0,-1,1
.reference _$FPREADTIFF$_Ld95
.globl	_$FPREADTIFF$_Ld95
_$FPREADTIFF$_Ld95:
.reference _$FPREADTIFF$_Ld96
	.ascii	"1\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld98
_$FPREADTIFF$_Ld98:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADTIFF$_Ld97
.globl	_$FPREADTIFF$_Ld97
_$FPREADTIFF$_Ld97:
.reference _$FPREADTIFF$_Ld98
	.ascii	"TiffIsThumbnail\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld100
_$FPREADTIFF$_Ld100:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADTIFF$_Ld99
.globl	_$FPREADTIFF$_Ld99
_$FPREADTIFF$_Ld99:
.reference _$FPREADTIFF$_Ld100
	.ascii	"TiffIsMask\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld102
_$FPREADTIFF$_Ld102:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADTIFF$_Ld101
.globl	_$FPREADTIFF$_Ld101
_$FPREADTIFF$_Ld101:
.reference _$FPREADTIFF$_Ld102
	.ascii	"TiffCompression\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld104
_$FPREADTIFF$_Ld104:
	.short	0,1
	.long	0,-1,44
.reference _$FPREADTIFF$_Ld103
.globl	_$FPREADTIFF$_Ld103
_$FPREADTIFF$_Ld103:
.reference _$FPREADTIFF$_Ld104
	.ascii	"predictor 2 not supported for bilevel images\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld106
_$FPREADTIFF$_Ld106:
	.short	0,1
	.long	0,-1,24
.reference _$FPREADTIFF$_Ld105
.globl	_$FPREADTIFF$_Ld105
_$FPREADTIFF$_Ld105:
.reference _$FPREADTIFF$_Ld106
	.ascii	"Offset outside of stream\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld108
_$FPREADTIFF$_Ld108:
	.short	0,1
	.long	0,-1,2
.reference _$FPREADTIFF$_Ld107
.globl	_$FPREADTIFF$_Ld107
_$FPREADTIFF$_Ld107:
.reference _$FPREADTIFF$_Ld108
	.ascii	"  \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld110
_$FPREADTIFF$_Ld110:
	.short	0,1
	.long	0,-1,2
.reference _$FPREADTIFF$_Ld109
.globl	_$FPREADTIFF$_Ld109
_$FPREADTIFF$_Ld109:
.reference _$FPREADTIFF$_Ld110
	.ascii	"II\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld112
_$FPREADTIFF$_Ld112:
	.short	0,1
	.long	0,-1,2
.reference _$FPREADTIFF$_Ld111
.globl	_$FPREADTIFF$_Ld111
_$FPREADTIFF$_Ld111:
.reference _$FPREADTIFF$_Ld112
	.ascii	"MM\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld114
_$FPREADTIFF$_Ld114:
	.short	0,1
	.long	0,-1,17
.reference _$FPREADTIFF$_Ld113
.globl	_$FPREADTIFF$_Ld113
_$FPREADTIFF$_Ld113:
.reference _$FPREADTIFF$_Ld114
	.ascii	"expected II or MM\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld116
_$FPREADTIFF$_Ld116:
	.short	0,1
	.long	0,-1,65
.reference _$FPREADTIFF$_Ld115
.globl	_$FPREADTIFF$_Ld115
_$FPREADTIFF$_Ld115:
.reference _$FPREADTIFF$_Ld116
	.ascii	"expected 42, because of its deep philosophical impa"
	.ascii	"ct, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld118
_$FPREADTIFF$_Ld118:
	.short	0,1
	.long	0,-1,38
.reference _$FPREADTIFF$_Ld117
.globl	_$FPREADTIFF$_Ld117
_$FPREADTIFF$_Ld117:
.reference _$FPREADTIFF$_Ld118
	.ascii	"endless loop in Image File Descriptors\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld120
_$FPREADTIFF$_Ld120:
	.short	0,1
	.long	0,-1,38
.reference _$FPREADTIFF$_Ld119
.globl	_$FPREADTIFF$_Ld119
_$FPREADTIFF$_Ld119:
.reference _$FPREADTIFF$_Ld120
	.ascii	"Tags must be in ascending order: Last=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld122
_$FPREADTIFF$_Ld122:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADTIFF$_Ld121
.globl	_$FPREADTIFF$_Ld121
_$FPREADTIFF$_Ld121:
.reference _$FPREADTIFF$_Ld122
	.ascii	" Next=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld124
_$FPREADTIFF$_Ld124:
	.short	0,1
	.long	0,-1,32
.reference _$FPREADTIFF$_Ld123
.globl	_$FPREADTIFF$_Ld123
_$FPREADTIFF$_Ld123:
.reference _$FPREADTIFF$_Ld124
	.ascii	"SubFileType expected, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld126
_$FPREADTIFF$_Ld126:
	.short	0,1
	.long	0,-1,32
.reference _$FPREADTIFF$_Ld125
.globl	_$FPREADTIFF$_Ld125
_$FPREADTIFF$_Ld125:
.reference _$FPREADTIFF$_Ld126
	.ascii	"expected Compression, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld128
_$FPREADTIFF$_Ld128:
	.short	0,1
	.long	0,-1,46
.reference _$FPREADTIFF$_Ld127
.globl	_$FPREADTIFF$_Ld127
_$FPREADTIFF$_Ld127:
.reference _$FPREADTIFF$_Ld128
	.ascii	"expected PhotometricInterpretation, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld130
_$FPREADTIFF$_Ld130:
	.short	0,1
	.long	0,-1,32
.reference _$FPREADTIFF$_Ld129
.globl	_$FPREADTIFF$_Ld129
_$FPREADTIFF$_Ld129:
.reference _$FPREADTIFF$_Ld130
	.ascii	"expected Tresholding, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld132
_$FPREADTIFF$_Ld132:
	.short	0,1
	.long	0,-1,30
.reference _$FPREADTIFF$_Ld131
.globl	_$FPREADTIFF$_Ld131
_$FPREADTIFF$_Ld131:
.reference _$FPREADTIFF$_Ld132
	.ascii	"expected FillOrder, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld134
_$FPREADTIFF$_Ld134:
	.short	0,1
	.long	0,-1,32
.reference _$FPREADTIFF$_Ld133
.globl	_$FPREADTIFF$_Ld133
_$FPREADTIFF$_Ld133:
.reference _$FPREADTIFF$_Ld134
	.ascii	"expected Orientation, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld136
_$FPREADTIFF$_Ld136:
	.short	0,1
	.long	0,-1,33
.reference _$FPREADTIFF$_Ld135
.globl	_$FPREADTIFF$_Ld135
_$FPREADTIFF$_Ld135:
.reference _$FPREADTIFF$_Ld136
	.ascii	"expected RowsPerStrip, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld138
_$FPREADTIFF$_Ld138:
	.short	0,1
	.long	0,-1,40
.reference _$FPREADTIFF$_Ld137
.globl	_$FPREADTIFF$_Ld137
_$FPREADTIFF$_Ld137:
.reference _$FPREADTIFF$_Ld138
	.ascii	"expected PlanarConfiguration, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld140
_$FPREADTIFF$_Ld140:
	.short	0,1
	.long	0,-1,35
.reference _$FPREADTIFF$_Ld139
.globl	_$FPREADTIFF$_Ld139
_$FPREADTIFF$_Ld139:
.reference _$FPREADTIFF$_Ld140
	.ascii	"expected ResolutionUnit, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld142
_$FPREADTIFF$_Ld142:
	.short	0,1
	.long	0,-1,39
.reference _$FPREADTIFF$_Ld141
.globl	_$FPREADTIFF$_Ld141
_$FPREADTIFF$_Ld141:
.reference _$FPREADTIFF$_Ld142
	.ascii	"PageNumber Count=2 expected, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld144
_$FPREADTIFF$_Ld144:
	.short	0,1
	.long	0,-1,30
.reference _$FPREADTIFF$_Ld143
.globl	_$FPREADTIFF$_Ld143
_$FPREADTIFF$_Ld143:
.reference _$FPREADTIFF$_Ld144
	.ascii	"expected Predictor, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld146
_$FPREADTIFF$_Ld146:
	.short	0,1
	.long	0,-1,11
.reference _$FPREADTIFF$_Ld145
.globl	_$FPREADTIFF$_Ld145
_$FPREADTIFF$_Ld145:
.reference _$FPREADTIFF$_Ld146
	.ascii	"TileWidth=0\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld148
_$FPREADTIFF$_Ld148:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld147
.globl	_$FPREADTIFF$_Ld147
_$FPREADTIFF$_Ld147:
.reference _$FPREADTIFF$_Ld148
	.ascii	"TileLength=0\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld150
_$FPREADTIFF$_Ld150:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld149
.globl	_$FPREADTIFF$_Ld149
_$FPREADTIFF$_Ld149:
.reference _$FPREADTIFF$_Ld150
	.ascii	"TileOffsets=0\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld152
_$FPREADTIFF$_Ld152:
	.short	0,1
	.long	0,-1,16
.reference _$FPREADTIFF$_Ld151
.globl	_$FPREADTIFF$_Ld151
_$FPREADTIFF$_Ld151:
.reference _$FPREADTIFF$_Ld152
	.ascii	"TileByteCounts=0\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld154
_$FPREADTIFF$_Ld154:
	.short	0,1
	.long	0,-1,33
.reference _$FPREADTIFF$_Ld153
.globl	_$FPREADTIFF$_Ld153
_$FPREADTIFF$_Ld153:
.reference _$FPREADTIFF$_Ld154
	.ascii	"EntryCount=1 expected, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld156
_$FPREADTIFF$_Ld156:
	.short	0,1
	.long	0,-1,47
.reference _$FPREADTIFF$_Ld155
.globl	_$FPREADTIFF$_Ld155
_$FPREADTIFF$_Ld155:
.reference _$FPREADTIFF$_Ld156
	.ascii	"expected single unsigned value, but found type=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld158
_$FPREADTIFF$_Ld158:
	.short	0,1
	.long	0,-1,33
.reference _$FPREADTIFF$_Ld157
.globl	_$FPREADTIFF$_Ld157
_$FPREADTIFF$_Ld157:
.reference _$FPREADTIFF$_Ld158
	.ascii	"EntryCount+1 expected, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld160
_$FPREADTIFF$_Ld160:
	.short	0,1
	.long	0,-1,45
.reference _$FPREADTIFF$_Ld159
.globl	_$FPREADTIFF$_Ld159
_$FPREADTIFF$_Ld159:
.reference _$FPREADTIFF$_Ld160
	.ascii	"expected single signed value, but found type=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld162
_$FPREADTIFF$_Ld162:
	.short	0,1
	.long	0,-1,49
.reference _$FPREADTIFF$_Ld161
.globl	_$FPREADTIFF$_Ld161
_$FPREADTIFF$_Ld161:
.reference _$FPREADTIFF$_Ld162
	.ascii	"expected rational unsigned value, but found type=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld164
_$FPREADTIFF$_Ld164:
	.short	0,1
	.long	0,-1,27
.reference _$FPREADTIFF$_Ld163
.globl	_$FPREADTIFF$_Ld163
_$FPREADTIFF$_Ld163:
.reference _$FPREADTIFF$_Ld164
	.ascii	"asciiz expected, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld166
_$FPREADTIFF$_Ld166:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld165
.globl	_$FPREADTIFF$_Ld165
_$FPREADTIFF$_Ld165:
.reference _$FPREADTIFF$_Ld166
	.ascii	"invalid EntryType \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld168
_$FPREADTIFF$_Ld168:
	.short	0,1
	.long	0,-1,26
.reference _$FPREADTIFF$_Ld167
.globl	_$FPREADTIFF$_Ld167
_$FPREADTIFF$_Ld167:
.reference _$FPREADTIFF$_Ld168
	.ascii	"only short or long allowed\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld170
_$FPREADTIFF$_Ld170:
	.short	0,1
	.long	0,-1,30
.reference _$FPREADTIFF$_Ld169
.globl	_$FPREADTIFF$_Ld169
_$FPREADTIFF$_Ld169:
.reference _$FPREADTIFF$_Ld170
	.ascii	"only short allowed, but found \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld172
_$FPREADTIFF$_Ld172:
	.short	0,1
	.long	0,-1,33
.reference _$FPREADTIFF$_Ld171
.globl	_$FPREADTIFF$_Ld171
_$FPREADTIFF$_Ld171:
.reference _$FPREADTIFF$_Ld172
	.ascii	"missing PhotometricInterpretation\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld174
_$FPREADTIFF$_Ld174:
	.short	0,1
	.long	0,-1,21
.reference _$FPREADTIFF$_Ld173
.globl	_$FPREADTIFF$_Ld173
_$FPREADTIFF$_Ld173:
.reference _$FPREADTIFF$_Ld174
	.ascii	"missing BitsPerSample\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld176
_$FPREADTIFF$_Ld176:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld175
.globl	_$FPREADTIFF$_Ld175
_$FPREADTIFF$_Ld175:
.reference _$FPREADTIFF$_Ld176
	.ascii	"missing TileLength\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld178
_$FPREADTIFF$_Ld178:
	.short	0,1
	.long	0,-1,19
.reference _$FPREADTIFF$_Ld177
.globl	_$FPREADTIFF$_Ld177
_$FPREADTIFF$_Ld177:
.reference _$FPREADTIFF$_Ld178
	.ascii	"missing TileOffsets\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld180
_$FPREADTIFF$_Ld180:
	.short	0,1
	.long	0,-1,22
.reference _$FPREADTIFF$_Ld179
.globl	_$FPREADTIFF$_Ld179
_$FPREADTIFF$_Ld179:
.reference _$FPREADTIFF$_Ld180
	.ascii	"missing TileByteCounts\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld182
_$FPREADTIFF$_Ld182:
	.short	0,1
	.long	0,-1,20
.reference _$FPREADTIFF$_Ld181
.globl	_$FPREADTIFF$_Ld181
_$FPREADTIFF$_Ld181:
.reference _$FPREADTIFF$_Ld182
	.ascii	"missing RowsPerStrip\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld184
_$FPREADTIFF$_Ld184:
	.short	0,1
	.long	0,-1,20
.reference _$FPREADTIFF$_Ld183
.globl	_$FPREADTIFF$_Ld183
_$FPREADTIFF$_Ld183:
.reference _$FPREADTIFF$_Ld184
	.ascii	"missing StripOffsets\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld186
_$FPREADTIFF$_Ld186:
	.short	0,1
	.long	0,-1,23
.reference _$FPREADTIFF$_Ld185
.globl	_$FPREADTIFF$_Ld185
_$FPREADTIFF$_Ld185:
.reference _$FPREADTIFF$_Ld186
	.ascii	"missing StripByteCounts\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld188
_$FPREADTIFF$_Ld188:
	.short	0,1
	.long	0,-1,29
.reference _$FPREADTIFF$_Ld187
.globl	_$FPREADTIFF$_Ld187
_$FPREADTIFF$_Ld187:
.reference _$FPREADTIFF$_Ld188
	.ascii	"number of TileCounts is wrong\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld190
_$FPREADTIFF$_Ld190:
	.short	0,1
	.long	0,-1,33
.reference _$FPREADTIFF$_Ld189
.globl	_$FPREADTIFF$_Ld189
_$FPREADTIFF$_Ld189:
.reference _$FPREADTIFF$_Ld190
	.ascii	"number of TileByteCounts is wrong\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld192
_$FPREADTIFF$_Ld192:
	.short	0,1
	.long	0,-1,30
.reference _$FPREADTIFF$_Ld191
.globl	_$FPREADTIFF$_Ld191
_$FPREADTIFF$_Ld191:
.reference _$FPREADTIFF$_Ld192
	.ascii	"number of StripCounts is wrong\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld194
_$FPREADTIFF$_Ld194:
	.short	0,1
	.long	0,-1,34
.reference _$FPREADTIFF$_Ld193
.globl	_$FPREADTIFF$_Ld193
_$FPREADTIFF$_Ld193:
.reference _$FPREADTIFF$_Ld194
	.ascii	"number of StripByteCounts is wrong\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld196
_$FPREADTIFF$_Ld196:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld195
.globl	_$FPREADTIFF$_Ld195
_$FPREADTIFF$_Ld195:
.reference _$FPREADTIFF$_Ld196
	.ascii	"compression \000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld198
_$FPREADTIFF$_Ld198:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld197
.globl	_$FPREADTIFF$_Ld197
_$FPREADTIFF$_Ld197:
.reference _$FPREADTIFF$_Ld198
	.ascii	" not supported yet\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld200
_$FPREADTIFF$_Ld200:
	.short	0,1
	.long	0,-1,57
.reference _$FPREADTIFF$_Ld199
.globl	_$FPREADTIFF$_Ld199
_$FPREADTIFF$_Ld199:
.reference _$FPREADTIFF$_Ld200
	.ascii	"TFPReaderTiff.LoadImageFromStream Tile too short By"
	.ascii	"teCnt=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld202
_$FPREADTIFF$_Ld202:
	.short	0,1
	.long	0,-1,12
.reference _$FPREADTIFF$_Ld201
.globl	_$FPREADTIFF$_Ld201
_$FPREADTIFF$_Ld201:
.reference _$FPREADTIFF$_Ld202
	.ascii	" ChunkWidth=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld204
_$FPREADTIFF$_Ld204:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADTIFF$_Ld203
.globl	_$FPREADTIFF$_Ld203
_$FPREADTIFF$_Ld203:
.reference _$FPREADTIFF$_Ld204
	.ascii	" ChunkHeight=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld206
_$FPREADTIFF$_Ld206:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADTIFF$_Ld205
.globl	_$FPREADTIFF$_Ld205
_$FPREADTIFF$_Ld205:
.reference _$FPREADTIFF$_Ld206
	.ascii	" expected=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld208
_$FPREADTIFF$_Ld208:
	.short	0,1
	.long	0,-1,58
.reference _$FPREADTIFF$_Ld207
.globl	_$FPREADTIFF$_Ld207
_$FPREADTIFF$_Ld207:
.reference _$FPREADTIFF$_Ld208
	.ascii	"TFPReaderTiff.LoadImageFromStream Strip too short B"
	.ascii	"yteCnt=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld210
_$FPREADTIFF$_Ld210:
	.short	0,1
	.long	0,-1,26
.reference _$FPREADTIFF$_Ld209
.globl	_$FPREADTIFF$_Ld209
_$FPREADTIFF$_Ld209:
.reference _$FPREADTIFF$_Ld210
	.ascii	"PhotometricInterpretation=\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld212
_$FPREADTIFF$_Ld212:
	.short	0,1
	.long	0,-1,14
.reference _$FPREADTIFF$_Ld211
.globl	_$FPREADTIFF$_Ld211
_$FPREADTIFF$_Ld211:
.reference _$FPREADTIFF$_Ld212
	.ascii	" not supported\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld214
_$FPREADTIFF$_Ld214:
	.short	0,1
	.long	0,-1,22
.reference _$FPREADTIFF$_Ld213
.globl	_$FPREADTIFF$_Ld213
_$FPREADTIFF$_Ld213:
.reference _$FPREADTIFF$_Ld214
	.ascii	"LZW code out of bounds\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld216
_$FPREADTIFF$_Ld216:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld215
.globl	_$FPREADTIFF$_Ld215
_$FPREADTIFF$_Ld215:
.reference _$FPREADTIFF$_Ld216
	.ascii	"LZW too many codes\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld218
_$FPREADTIFF$_Ld218:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld217
.globl	_$FPREADTIFF$_Ld217
_$FPREADTIFF$_Ld217:
.reference _$FPREADTIFF$_Ld218
	.ascii	"LZW stream overrun\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld220
_$FPREADTIFF$_Ld220:
	.short	0,1
	.long	0,-1,18
.reference _$FPREADTIFF$_Ld219
.globl	_$FPREADTIFF$_Ld219
_$FPREADTIFF$_Ld219:
.reference _$FPREADTIFF$_Ld220
	.ascii	"inflateInit failed\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld222
_$FPREADTIFF$_Ld222:
	.short	0,1
	.long	0,-1,54
.reference _$FPREADTIFF$_Ld221
.globl	_$FPREADTIFF$_Ld221
_$FPREADTIFF$_Ld221:
.reference _$FPREADTIFF$_Ld222
	.ascii	"inflate decompression failed, because not enough sp"
	.ascii	"ace\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld224
_$FPREADTIFF$_Ld224:
	.short	0,1
	.long	0,-1,21
.reference _$FPREADTIFF$_Ld223
.globl	_$FPREADTIFF$_Ld223
_$FPREADTIFF$_Ld223:
.reference _$FPREADTIFF$_Ld224
	.ascii	"inflate finish failed\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld226
_$FPREADTIFF$_Ld226:
	.short	0,1
	.long	0,-1,17
.reference _$FPREADTIFF$_Ld225
.globl	_$FPREADTIFF$_Ld225
_$FPREADTIFF$_Ld225:
.reference _$FPREADTIFF$_Ld226
	.ascii	"inflateEnd failed\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld228
_$FPREADTIFF$_Ld228:
	.short	0,1
	.long	0,-1,24
.reference _$FPREADTIFF$_Ld227
.globl	_$FPREADTIFF$_Ld227
_$FPREADTIFF$_Ld227:
.reference _$FPREADTIFF$_Ld228
	.ascii	"Tagged Image File Format\000"

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld230
_$FPREADTIFF$_Ld230:
	.short	0,1
	.long	0,-1,8
.reference _$FPREADTIFF$_Ld229
.globl	_$FPREADTIFF$_Ld229
_$FPREADTIFF$_Ld229:
.reference _$FPREADTIFF$_Ld230
	.ascii	"tif;tiff\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_FPCOLOR$WORD$WORD$WORD$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_FPCOLOR$WORD$WORD$WORD$$TFPCOLOR
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$INT64$$ANSISTRING
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

L_CLASSES_TFPLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TFPLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READSHORTVALUES$LONGWORD$PWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__TIFFERROR$ANSISTRING
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

L_FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_TIFFRATIONALTOSTR$TTIFFRATIONAL$$ANSISTRING$stub:
.indirect_symbol _FPTIFFCMN_TIFFRATIONALTOSTR$TTIFFRATIONAL$$ANSISTRING
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

L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__CLEAR$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT$stub:
.indirect_symbol _CLASSES_RECT$LONGINT$LONGINT$LONGINT$LONGINT$$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__LOADHEADERFROMSTREAM$TSTREAM$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__LOADHEADERFROMSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__IMAGECOUNT$$LONGINT
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

L_CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__ADD$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__GETIMAGES$LONGINT$$TTIFFIFD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READIFD$LONGWORD$$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READIFD$LONGWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__LOADIMAGEFROMSTREAM$LONGINT$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__LOADIMAGEFROMSTREAM$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READTIFFHEADER$BOOLEAN$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READTIFFHEADER$BOOLEAN$LONGWORD$$BOOLEAN
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

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READWORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READDWORD$$LONGWORD
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

L_FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__SETSTREAMPOS$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READDIRECTORYENTRY$WORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READDIRECTORYENTRY$WORD
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

L_CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READENTRYUNSIGNED$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$_READDIRECTORYENTRY$WORD_GETPOS$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
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

L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READENTRYSTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READENTRYRATIONAL$$TTIFFRATIONAL$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READENTRYRATIONAL$$TTIFFRATIONAL
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READENTRYSIGNED$$LONGINT$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READENTRYSIGNED$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READBYTE$$BYTE
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

L_CLASSES_TSTREAM_$__READBYTE$$BYTE$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBYTE$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READWORD$$WORD$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READWORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READDWORD$$LONGWORD$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READDWORD$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$LONGWORD$$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__FIXENDIAN$LONGWORD$$LONGWORD
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

L_FPREADTIFF_TFPREADERTIFF_$__READVALUES$LONGWORD$WORD$LONGWORD$POINTER$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READVALUES$LONGWORD$WORD$LONGWORD$POINTER$LONGWORD
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

L_FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READSHORTORLONGVALUES$LONGWORD$PDWORD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__READIMAGEPROPERTIES$crcEBB37E25$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__READIMAGEPROPERTIES$crcEBB37E25
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_TTIFFIFD_$__ASSIGN$TTIFFIFD$stub:
.indirect_symbol _FPTIFFCMN_TTIFFIFD_$__ASSIGN$TTIFFIFD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__SETFPIMGEXTRAS$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__SETFPIMGEXTRAS$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__DECODEPACKBITS$POINTER$LONGINT$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__DECODEPACKBITS$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__DECODELZW$POINTER$LONGINT$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__DECODELZW$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__DECODEDEFLATE$POINTER$LONGINT$LONGINT$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__DECODEDEFLATE$POINTER$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_TIFFCOMPRESSIONNAME$WORD$$ANSISTRING$stub:
.indirect_symbol _FPTIFFCMN_TIFFCOMPRESSIONNAME$WORD$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_CMYKTOFPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR$stub:
.indirect_symbol _FPREADTIFF_CMYKTOFPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSPACKBITS$POINTER$LONGINT$POINTER$LONGINT$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSPACKBITS$POINTER$LONGINT$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSDEFLATE$PBYTE$LONGWORD$PBYTE$LONGWORD$PANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_TFPREADERTIFF_$__LOADIFDSFROMSTREAM$stub:
.indirect_symbol _FPREADTIFF_TFPREADERTIFF_$__LOADIFDSFROMSTREAM
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

L_CLASSES_TFPLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TFPLIST_$__DELETE$LONGINT
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_GETNEXTCODE$$WORD$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_GETNEXTCODE$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_INITIALIZETABLE$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_INITIALIZETABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ERROR$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_WRITESTRINGFROMCODE$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ADDSTRINGTOTABLE$LONGINT$LONGINT$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_ADDSTRINGTOTABLE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_CLEARTABLE$stub:
.indirect_symbol _FPREADTIFF_DECOMPRESSLZW$POINTER$LONGINT$PBYTE$LONGINT_CLEARTABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETREADER$ANSISTRING$$TFPCUSTOMIMAGEREADERCLASS$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__GETREADER$ANSISTRING$$TFPCUSTOMIMAGEREADERCLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1
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
.globl	_INIT_FPREADTIFF_DEF63
_INIT_FPREADTIFF_DEF63:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF64
_INIT_FPREADTIFF_DEF64:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF209
_INIT_FPREADTIFF_DEF209:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF210
_INIT_FPREADTIFF_DEF210:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF123
_INIT_FPREADTIFF_DEF123:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF124
_INIT_FPREADTIFF_DEF124:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF277
_INIT_FPREADTIFF_DEF277:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF278
_INIT_FPREADTIFF_DEF278:
	.byte	12
	.ascii	"\000"
	.long	4,8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF279
_INIT_FPREADTIFF_DEF279:
	.byte	12
	.ascii	"\000"
	.long	4,8
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_DEF280
_INIT_FPREADTIFF_DEF280:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPREADTIFF$_Ld232
_$FPREADTIFF$_Ld232:
	.short	0
	.long	_$FPREADTIFF$_Ld233
	.align 2
.globl	_$FPREADTIFF$_Ld233
_$FPREADTIFF$_Ld233:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_TFPREADERTIFF
_INIT_FPREADTIFF_TFPREADERTIFF:
	.byte	15,13
	.ascii	"TFPReaderTiff"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADTIFF_TFPREADERTIFF
_RTTI_FPREADTIFF_TFPREADERTIFF:
	.byte	15,13
	.ascii	"TFPReaderTiff"
	.long	_VMT_FPREADTIFF_TFPREADERTIFF
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	10
	.ascii	"FPReadTiff"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_TTIFFCREATECOMPATIBLEIMGEVENT
_INIT_FPREADTIFF_TTIFFCREATECOMPATIBLEIMGEVENT:
	.byte	6,29
	.ascii	"TTiffCreateCompatibleImgEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\015TFPReaderTiff"
	.byte	8,10
	.ascii	"ImgFileDir"
	.ascii	"\010TTiffIFD"
	.byte	0
	.long	_RTTI_FPREADTIFF_TFPREADERTIFF
	.long	_RTTI_FPTIFFCMN_TTIFFIFD

.const_data
	.align 2
.globl	_RTTI_FPREADTIFF_TTIFFCREATECOMPATIBLEIMGEVENT
_RTTI_FPREADTIFF_TTIFFCREATECOMPATIBLEIMGEVENT:
	.byte	6,29
	.ascii	"TTiffCreateCompatibleImgEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\015TFPReaderTiff"
	.byte	8,10
	.ascii	"ImgFileDir"
	.ascii	"\010TTiffIFD"
	.byte	0
	.long	_RTTI_FPREADTIFF_TFPREADERTIFF
	.long	_RTTI_FPTIFFCMN_TTIFFIFD

.const_data
	.align 2
.globl	_INIT_FPREADTIFF_TTIFFCHECKIFDORDER
_INIT_FPREADTIFF_TTIFFCHECKIFDORDER:
	.byte	3,18
	.ascii	"TTiffCheckIFDOrder"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"tcioSmart"
	.byte	10
	.ascii	"tcioAlways"
	.byte	9
	.ascii	"tcioNever"
	.byte	10
	.ascii	"FPReadTiff"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER
_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER:
	.byte	3,18
	.ascii	"TTiffCheckIFDOrder"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"tcioSmart"
	.byte	10
	.ascii	"tcioAlways"
	.byte	9
	.ascii	"tcioNever"
	.byte	10
	.ascii	"FPReadTiff"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER_s2o
_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER_s2o:
	.long	3,1
	.long	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER+43
	.long	2
	.long	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER+54
	.long	0
	.long	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER+33

.const_data
	.align 2
.globl	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER_o2s
_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER_o2s:
	.long	0
	.long	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER+33
	.long	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER+43
	.long	_RTTI_FPREADTIFF_TTIFFCHECKIFDORDER+54
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
L_$FPREADTIFF$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld27$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld29$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld31$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld33$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld35$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld37$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld39$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld41$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld43$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld45$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld47$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld49$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld51$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld53$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld55$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld57$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld59$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld61$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld63$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld65$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld67$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld69$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld71$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld73$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld75$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld77$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld79$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld81$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld83$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld85$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld87$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld89$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld89
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld91$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld91
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld93$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld93
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld95$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld97$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld99$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld101$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld103$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld105$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld105
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPTIFFCMN_TTIFFIFD$non_lazy_ptr:
.indirect_symbol _VMT_FPTIFFCMN_TTIFFIFD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld107$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld107
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld109$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld109
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld111$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld111
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld113$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld113
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld115$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld115
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFPLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFPLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld117$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld117
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld119$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld119
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld121$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld121
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld123$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld123
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPTIFFCMN_DEF86$non_lazy_ptr:
.indirect_symbol _INIT_FPTIFFCMN_DEF86
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld125$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld125
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld127$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld127
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld129$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld129
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld131$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld131
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld133$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld133
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld135$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld135
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld137$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld137
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld139$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld139
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld141$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld141
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld143$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld143
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld145$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld145
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld147$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld147
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld149$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld149
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld151$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld151
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld153$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld153
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld155$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld155
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld157$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld157
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld159$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld159
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr:
.indirect_symbol _TC_FPTIFFCMN_TIFFRATIONAL0
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld161$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld161
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld163$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld163
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld165$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld165
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld167$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld167
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld169$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld169
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld171$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld171
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld173$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld173
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld175$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld175
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld177$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld177
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld179$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld179
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld181$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld181
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld183$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld183
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld185$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld185
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld187$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld187
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld189$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld189
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld191$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld191
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld193$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld193
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld195$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld195
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld197$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld197
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld199$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld199
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld201$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld201
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld203$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld203
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld205$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld205
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld207$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld207
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld209$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld209
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld211$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld211
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld213$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld213
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld215$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld215
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld217$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld217
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld219$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld219
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld221$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld221
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld223$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld223
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld225$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld225
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld227$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld227
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADTIFF_TFPREADERTIFF$non_lazy_ptr:
.indirect_symbol _VMT_FPREADTIFF_TFPREADERTIFF
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADTIFF$_Ld229$non_lazy_ptr:
.indirect_symbol _$FPREADTIFF$_Ld229
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

