# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPPIXLCANV_NOTIMPLEMENTED
_FPPIXLCANV_NOTIMPLEMENTED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	L_TC_FPPIXLCANV_SERRNOTAVAILABLE$non_lazy_ptr-Lj4(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__CREATE$$TFPPIXELCANVAS
_FPPIXLCANV_TFPPIXELCANVAS_$__CREATE$$TFPPIXELCANVAS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj13
	jmp	Lj14
Lj13:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj14:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj19
	jmp	Lj20
Lj19:
	jmp	Lj11
Lj20:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj23
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj27
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS$stub
	movl	-8(%ebp),%eax
	movw	$15,64(%eax)
Lj27:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj28
	call	LFPC_RERAISE$stub
Lj28:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj37
Lj38:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj36
	jmp	Lj37
Lj36:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj37:
Lj23:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj42
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj43
	jmp	Lj44
Lj43:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj44:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj42:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj41
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj41:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj25
Lj25:
Lj11:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj50
Lj50:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_FPCANVAS_TFPEMPTYFONT$non_lazy_ptr-Lj50(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPCANVAS_TFPEMPTYFONT$non_lazy_ptr-Lj50(%ebx),%ecx
	call	*156(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$10,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj50(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN
_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj66
Lj66:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_FPCANVAS_TFPEMPTYPEN$non_lazy_ptr-Lj66(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPCANVAS_TFPEMPTYPEN$non_lazy_ptr-Lj66(%ebx),%ecx
	call	*156(%ecx)
	movl	%eax,-8(%ebp)
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj66(%ebx),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*172(%ecx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*168(%ecx)
	movl	-8(%ebp),%eax
	movl	$4,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj94
Lj94:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_VMT_FPCANVAS_TFPEMPTYBRUSH$non_lazy_ptr-Lj94(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPCANVAS_TFPEMPTYBRUSH$non_lazy_ptr-Lj94(%ebx),%ecx
	call	*156(%ecx)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOTEXTOUT$LONGINT$LONGINT$ANSISTRING
_FPPIXLCANV_TFPPIXELCANVAS_$__DOTEXTOUT$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj107
	call	L_FPPIXLCANV_NOTIMPLEMENTED$stub
Lj107:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	call	LFPC_RERAISE$stub
Lj108:
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj112
	call	L_FPPIXLCANV_NOTIMPLEMENTED$stub
Lj112:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj113
	call	LFPC_RERAISE$stub
Lj113:
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj117
	movl	$-1,-12(%ebp)
	call	L_FPPIXLCANV_NOTIMPLEMENTED$stub
Lj117:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj118
	call	LFPC_RERAISE$stub
Lj118:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj124
	movl	$-1,-12(%ebp)
	call	L_FPPIXLCANV_NOTIMPLEMENTED$stub
Lj124:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj125
	call	LFPC_RERAISE$stub
Lj125:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLE$TRECT
_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj130
Lj130:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-28(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj137
	jmp	Lj138
Lj137:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	52(%eax),%esi
	movl	$1,-32(%ebp)
	cmpl	-32(%ebp),%esi
	jl	Lj142
	decl	-32(%ebp)
	.align 2
Lj143:
	incl	-32(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	leal	-28(%ebp),%eax
	call	L_FPCANVAS_DECRECT$TRECT$stub
	cmpl	-32(%ebp),%esi
	jg	Lj143
Lj142:
	jmp	Lj188
Lj138:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$7,%eax
	jne	Lj189
	jmp	Lj190
Lj189:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	cmpl	$6,%eax
	je	Lj193
	jmp	Lj194
Lj193:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	60(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj201
Lj194:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	movl	L_TC_FPPIXLCANV_PENPATTERNS$non_lazy_ptr-Lj130(%ebx),%edx
	movl	-4(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
Lj201:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj190:
Lj188:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%edx),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	jne	Lj246
	jmp	Lj247
Lj246:
	leal	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-28(%ebp),%eax
	leal	-8(%ebp),%ecx
	leal	-4(%ebp),%edx
	call	L_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj247:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj264
	jmp	Lj265
Lj264:
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8$stub
Lj265:
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-8(%edx),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	jne	Lj282
	jmp	Lj283
Lj282:
	leal	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-28(%ebp),%eax
	leal	-8(%ebp),%ecx
	leal	-4(%ebp),%edx
	call	L_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj283:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj300
	jmp	Lj301
Lj300:
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
Lj301:
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLEFILL$TRECT
_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLEFILL$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	call	Lj317
Lj317:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-24(%ebp),%eax
	call	L_CLIPPING_SORTRECT$TRECT$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	jne	Lj322
	jmp	Lj323
Lj322:
	leal	-40(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-40(%ebp),%eax
	leal	-24(%ebp),%edx
	call	L_CLIPPING_CHECKRECTCLIPPING$TRECT$TRECT$stub
Lj323:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj336
	subl	$2,%eax
	je	Lj343
	decl	%eax
	je	Lj344
	decl	%eax
	je	Lj340
	decl	%eax
	je	Lj339
	decl	%eax
	je	Lj341
	decl	%eax
	je	Lj342
	decl	%eax
	je	Lj338
	decl	%eax
	je	Lj337
	jmp	Lj335
Lj336:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj334
Lj337:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	56(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TBRUSHPATTERN$stub
	jmp	Lj334
Lj338:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	cmpl	$0,52(%eax)
	jne	Lj371
	jmp	Lj372
Lj371:
	movl	-8(%ebp),%eax
	cmpb	$0,66(%eax)
	jne	Lj375
	jmp	Lj376
Lj375:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	52(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub
	jmp	Lj391
Lj376:
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	52(%eax),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub
Lj391:
	jmp	Lj406
Lj372:
	movl	L_TC_FPPIXLCANV_SERRNOIMAGE$non_lazy_ptr-Lj317(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION$non_lazy_ptr-Lj317(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj317(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj406:
	jmp	Lj334
Lj339:
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	jmp	Lj334
Lj340:
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	jmp	Lj334
Lj341:
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	jmp	Lj334
Lj342:
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	jmp	Lj334
Lj343:
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	jmp	Lj334
Lj344:
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub
	jmp	Lj334
Lj335:
Lj334:
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSEFILL$TRECT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSEFILL$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj462
Lj462:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj465
	subl	$2,%eax
	je	Lj472
	decl	%eax
	je	Lj473
	decl	%eax
	je	Lj469
	decl	%eax
	je	Lj468
	decl	%eax
	je	Lj470
	decl	%eax
	je	Lj471
	decl	%eax
	je	Lj467
	decl	%eax
	je	Lj466
	jmp	Lj464
Lj465:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSECOLOR$TFPCUSTOMCANVAS$TRECT$TFPCOLOR$stub
	jmp	Lj463
Lj466:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	56(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEPATTERN$TFPCUSTOMCANVAS$TRECT$TBRUSHPATTERN$TFPCOLOR$stub
	jmp	Lj463
Lj467:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	cmpl	$0,52(%eax)
	jne	Lj496
	jmp	Lj497
Lj496:
	movl	-8(%ebp),%eax
	cmpb	$0,66(%eax)
	jne	Lj500
	jmp	Lj501
Lj500:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	52(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEIMAGEREL$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE$stub
	jmp	Lj510
Lj501:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	52(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEIMAGE$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE$stub
Lj510:
	jmp	Lj519
Lj497:
	movl	L_TC_FPPIXLCANV_SERRNOIMAGE$non_lazy_ptr-Lj462(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION$non_lazy_ptr-Lj462(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj462(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj519:
	jmp	Lj463
Lj468:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj463
Lj469:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj463
Lj470:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEHASHCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj463
Lj471:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEHASHDIAGCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj463
Lj472:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj463
Lj473:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movzwl	64(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_FILLELLIPSEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj463
Lj464:
Lj463:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSE$TRECT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSE$TRECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj587
Lj587:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	%eax,%ebx
	movl	%ebx,%esi
	movl	48(%esi),%eax
	testl	%eax,%eax
	je	Lj596
	decl	%eax
	jb	Lj595
	subl	$3,%eax
	jbe	Lj598
	subl	$2,%eax
	je	Lj597
	jmp	Lj595
Lj596:
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	52(%eax),%eax
	cmpl	$1,%eax
	jg	Lj599
	jmp	Lj600
Lj599:
	leal	14(%esi),%eax
	movl	%eax,(%esp)
	movl	52(%esi),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub
	jmp	Lj611
Lj600:
	leal	14(%esi),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$TFPCOLOR$stub
Lj611:
	jmp	Lj594
Lj597:
	leal	14(%esi),%eax
	movl	%eax,(%esp)
	movl	60(%esi),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_DRAWPATTERNELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGWORD$TFPCOLOR$stub
	jmp	Lj594
Lj598:
	leal	14(%esi),%eax
	movl	%eax,(%esp)
	movl	48(%esi),%eax
	movl	L_TC_FPPIXLCANV_PENPATTERNS$non_lazy_ptr-Lj587(%edi),%edx
	movl	-4(%edx,%eax,4),%ecx
	movl	-4(%ebp),%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	L_ELLIPSES_DRAWPATTERNELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGWORD$TFPCOLOR$stub
	jmp	Lj594
Lj595:
Lj594:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGONFILL$array_of_TPOINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGONFILL$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOFLOODFILL$LONGINT$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOFLOODFILL$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj637
Lj637:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj640
	subl	$2,%eax
	je	Lj647
	decl	%eax
	je	Lj648
	decl	%eax
	je	Lj644
	decl	%eax
	je	Lj643
	decl	%eax
	je	Lj645
	decl	%eax
	je	Lj646
	decl	%eax
	je	Lj642
	decl	%eax
	je	Lj641
	jmp	Lj639
Lj640:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$stub
	jmp	Lj638
Lj641:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	leal	56(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$stub
	jmp	Lj638
Lj642:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	cmpl	$0,52(%eax)
	jne	Lj667
	jmp	Lj668
Lj667:
	movl	-12(%ebp),%eax
	cmpb	$0,66(%eax)
	jne	Lj671
	jmp	Lj672
Lj671:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	52(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub
	jmp	Lj683
Lj672:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub
	movl	52(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub
Lj683:
	jmp	Lj694
Lj668:
	movl	L_TC_FPPIXLCANV_SERRNOIMAGE$non_lazy_ptr-Lj637(%ebx),%eax
	movl	(%eax),%ecx
	movl	L_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION$non_lazy_ptr-Lj637(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj637(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj694:
	jmp	Lj638
Lj643:
	movl	-12(%ebp),%eax
	movzwl	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj638
Lj644:
	movl	-12(%ebp),%eax
	movzwl	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj638
Lj645:
	movl	-12(%ebp),%eax
	movzwl	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj638
Lj646:
	movl	-12(%ebp),%eax
	movzwl	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj638
Lj647:
	movl	-12(%ebp),%eax
	movzwl	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj638
Lj648:
	movl	-12(%ebp),%eax
	movzwl	64(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj638
Lj639:
Lj638:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGON$array_of_TPOINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGON$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	(%edx,%ecx,8),%eax
	movl	%eax,-32(%ebp)
	movl	4(%edx,%ecx,8),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj758
	decl	-24(%ebp)
	.align 2
Lj759:
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*276(%ebx)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	(%ecx,%edx,8),%eax
	movl	%eax,-32(%ebp)
	movl	4(%ecx,%edx,8),%eax
	movl	%eax,-28(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj759
Lj758:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*276(%ebx)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYLINE$array_of_TPOINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYLINE$array_of_TPOINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,8),%ecx
	movl	%ecx,-32(%ebp)
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj791
	decl	-24(%ebp)
	.align 2
Lj792:
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	movl	%eax,4(%esp)
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*276(%ebx)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,8),%ecx
	movl	%ecx,-32(%ebp)
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-28(%ebp)
	cmpl	-24(%ebp),%esi
	jg	Lj792
Lj791:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT
_FPPIXLCANV_TFPPIXELCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	call	Lj806
Lj806:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	jne	Lj811
	jmp	Lj812
Lj811:
	leal	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-28(%ebp),%eax
	leal	-8(%ebp),%ecx
	leal	-4(%ebp),%edx
	call	L_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj812:
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	testl	%eax,%eax
	je	Lj831
	decl	%eax
	jb	Lj830
	subl	$3,%eax
	jbe	Lj833
	subl	$2,%eax
	je	Lj832
	jmp	Lj830
Lj831:
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	52(%eax),%eax
	cmpl	$1,%eax
	jg	Lj850
	jmp	Lj851
Lj850:
	movl	%ebp,%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_SOLIDTHICKLINE$stub
Lj851:
	jmp	Lj829
Lj832:
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	60(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD$stub
	jmp	Lj829
Lj833:
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	48(%eax),%eax
	movl	L_TC_FPPIXLCANV_PENPATTERNS$non_lazy_ptr-Lj806(%ebx),%edx
	movl	-4(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_PIXTOOLS_DRAWPATTERNLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD$stub
	jmp	Lj829
Lj830:
Lj829:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_SOLIDTHICKLINE
_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_SOLIDTHICKLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	movl	52(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%eax
	addl	%eax,%ebx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	cmpl	52(%eax),%ebx
	je	Lj890
	jmp	Lj891
Lj890:
	decl	-8(%ebp)
Lj891:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	-4(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	8(%eax),%eax
	movl	-8(%ecx),%ecx
	subl	%ecx,%eax
	movl	%eax,%ecx
	sarl	$31,%eax
	xorl	%eax,%ecx
	subl	%eax,%ecx
	cmpl	%ecx,%edx
	setlb	-17(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj896
	jmp	Lj897
Lj896:
	movl	-8(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj899
	decl	-16(%ebp)
	.align 2
Lj900:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj900
Lj899:
	movl	-12(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj912
	decl	-16(%ebp)
	.align 2
Lj913:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%ecx
	movl	-4(%ebp),%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj913
Lj912:
	jmp	Lj924
Lj897:
	movl	-8(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj926
	decl	-16(%ebp)
	.align 2
Lj927:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj927
Lj926:
	movl	-12(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj939
	decl	-16(%ebp)
	.align 2
Lj940:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%ecx
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj940
Lj939:
Lj924:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC
_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-12(%edx),%edx
	movl	(%edx),%edx
	call	*188(%edx)
	testb	%al,%al
	jne	Lj951
	jmp	Lj952
Lj951:
	leal	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-12(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*180(%ecx)
	leal	-28(%ebp),%eax
	leal	-8(%ebp),%ecx
	leal	-4(%ebp),%edx
	call	L_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj952:
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPPIXLCANV
_INIT$_FPPIXLCANV:
.reference __FPPIXLCANV_init_implicit
.globl	__FPPIXLCANV_init_implicit
__FPPIXLCANV_init_implicit:
.reference _INIT$_FPPIXLCANV
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FPPIXLCANV
_FINALIZE$_FPPIXLCANV:
.reference __FPPIXLCANV_finalize_implicit
.globl	__FPPIXLCANV_finalize_implicit
__FPPIXLCANV_finalize_implicit:
.reference _FINALIZE$_FPPIXLCANV
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj986
Lj986:
	popl	%ebx
	movl	L_TC_FPPIXLCANV_SERRNOIMAGE$non_lazy_ptr-Lj986(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FPPIXLCANV_SERRNOIMAGE$non_lazy_ptr-Lj986(%ebx),%eax
	movl	$0,(%eax)
	movl	L_TC_FPPIXLCANV_SERRNOTAVAILABLE$non_lazy_ptr-Lj986(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_TC_FPPIXLCANV_SERRNOTAVAILABLE$non_lazy_ptr-Lj986(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPPIXLCANV$_Ld5
_$FPPIXLCANV$_Ld5:
	.byte	20
	.ascii	"PixelCanvasException"

.const_data
	.align 2
.globl	_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION
_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPCANVASEXCEPTION
	.long	_$FPPIXLCANV$_Ld5
	.long	0,0
	.long	_$FPPIXLCANV$_Ld6
	.long	_RTTI_FPPIXLCANV_PIXELCANVASEXCEPTION
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
.globl	_$FPPIXLCANV$_Ld8
_$FPPIXLCANV$_Ld8:
	.byte	14
	.ascii	"TFPPixelCanvas"

.const_data
	.align 2
.globl	_VMT_FPPIXLCANV_TFPPIXELCANVAS
_VMT_FPPIXLCANV_TFPPIXELCANVAS:
	.long	68,-68
	.long	_VMT_FPCANVAS_TFPCUSTOMCANVAS
	.long	_$FPPIXLCANV$_Ld8
	.long	0,0
	.long	_$FPPIXLCANV$_Ld9
	.long	_RTTI_FPPIXLCANV_TFPPIXELCANVAS
	.long	0,0,0,0
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTFONT$$TFPCUSTOMFONT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTPEN$$TFPCUSTOMPEN
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOCREATEDEFAULTBRUSH$$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETFONT$TFPCUSTOMFONT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETBRUSH$TFPCUSTOMBRUSH
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPEN$TFPCUSTOMPEN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWFONT$TFPCUSTOMFONT$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWPEN$TFPCUSTOMPEN$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOALLOWBRUSH$TFPCUSTOMBRUSH$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPRECT$$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__GETCLIPPING$$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETCLIPPING$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__SETPENPOS$TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLOCKCANVAS
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOUNLOCKCANVAS
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOTEXTOUT$LONGINT$LONGINT$ANSISTRING
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLE$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DORECTANGLEFILL$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORECTANGLEANDFILL$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSEFILL$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOELLIPSEANDFILL$TRECT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGONFILL$array_of_TPOINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYGON$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYGONANDFILL$array_of_TPOINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOPOLYLINE$array_of_TPOINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOFLOODFILL$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOMOVETO$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOLINETO$LONGINT$LONGINT
	.long	_FPPIXLCANV_TFPPIXELCANVAS_$__DOLINE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DORADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__DOPOLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__CHECKHELPER$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTOUT$LONGINT$LONGINT$ANSISTRING
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTEXTENT$ANSISTRING$$TSIZE
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__TEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ARC$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ELLIPSE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYGON$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYLINE$array_of_TPOINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RADIALPIE$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$PPOINT$LONGINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__POLYBEZIER$array_of_TPOINT$BOOLEAN$BOOLEAN
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__RECTANGLE$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$TRECT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FILLRECT$LONGINT$LONGINT$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__FLOODFILL$LONGINT$LONGINT
	.long	_FPCANVAS_TFPCUSTOMCANVAS_$__ERASE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPPIXLCANV
_THREADVARLIST_FPPIXLCANV:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$FPPIXLCANV$_Ld2
_$FPPIXLCANV$_Ld2:
	.short	0,1
	.long	0,-1,24
.reference _$FPPIXLCANV$_Ld1
.globl	_$FPPIXLCANV$_Ld1
_$FPPIXLCANV$_Ld1:
.reference _$FPPIXLCANV$_Ld2
	.ascii	"No brush image specified\000"

.const_data
	.align 2
.globl	_$FPPIXLCANV$_Ld4
_$FPPIXLCANV$_Ld4:
	.short	0,1
	.long	0,-1,14
.reference _$FPPIXLCANV$_Ld3
.globl	_$FPPIXLCANV$_Ld3
_$FPPIXLCANV$_Ld3:
.reference _$FPPIXLCANV$_Ld4
	.ascii	"Not availlable\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPPIXLCANV_PENPATTERNS
_TC_FPPIXLCANV_PENPATTERNS:
	.long	-286331154,-1431655766,-454761244,-353703190

.data
	.align 2
.globl	_TC_FPPIXLCANV_SERRNOIMAGE
_TC_FPPIXLCANV_SERRNOIMAGE:
	.long	_$FPPIXLCANV$_Ld1

.data
	.align 2
.globl	_TC_FPPIXLCANV_SERRNOTAVAILABLE
_TC_FPPIXLCANV_SERRNOTAVAILABLE:
	.long	_$FPPIXLCANV$_Ld3
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

L_FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__CREATE$$TFPCUSTOMCANVAS
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPPIXLCANV_NOTIMPLEMENTED$stub:
.indirect_symbol _FPPIXLCANV_NOTIMPLEMENTED
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

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETPEN$$TFPCUSTOMPEN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKLINE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_DECRECT$TRECT$stub:
.indirect_symbol _FPCANVAS_DECRECT$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPPIXLCANV_TFPPIXELCANVAS_$_DORECTANGLE$TRECT_CHECKPLINE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _CLIPPING_CHECKLINECLIPPING$TRECT$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$crc61C45BE8
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _PIXTOOLS_DRAWSOLIDLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_SORTRECT$TRECT$stub:
.indirect_symbol _CLIPPING_SORTRECT$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLIPPING_CHECKRECTCLIPPING$TRECT$TRECT$stub:
.indirect_symbol _CLIPPING_CHECKRECTCLIPPING$TRECT$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMCANVAS_$__GETBRUSH$$TFPCUSTOMBRUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLECOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TBRUSHPATTERN$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TBRUSHPATTERN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLRECTANGLEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSECOLOR$TFPCUSTOMCANVAS$TRECT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSECOLOR$TFPCUSTOMCANVAS$TRECT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEPATTERN$TFPCUSTOMCANVAS$TRECT$TBRUSHPATTERN$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEPATTERN$TFPCUSTOMCANVAS$TRECT$TBRUSHPATTERN$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEIMAGEREL$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEIMAGEREL$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEIMAGE$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEIMAGE$TFPCUSTOMCANVAS$TRECT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEHASHDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEHASHBACKDIAGONAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEHASHCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEHASHCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEHASHDIAGCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEHASHDIAGCROSS$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEHASHHORIZONTAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_FILLELLIPSEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_FILLELLIPSEHASHVERTICAL$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_DRAWSOLIDELLIPSE$TFPCUSTOMCANVAS$TRECT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ELLIPSES_DRAWPATTERNELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGWORD$TFPCOLOR$stub:
.indirect_symbol _ELLIPSES_DRAWPATTERNELLIPSE$TFPCUSTOMCANVAS$TRECT$LONGWORD$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODCOLOR$TFPCUSTOMCANVAS$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODPATTERN$TFPCUSTOMCANVAS$LONGINT$LONGINT$TBRUSHPATTERN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODIMAGEREL$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODIMAGE$TFPCUSTOMCANVAS$LONGINT$LONGINT$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHBACKDIAGONAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHDIAGCROSS$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHHORIZONTAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _PIXTOOLS_FILLFLOODHASHVERTICAL$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_SOLIDTHICKLINE$stub:
.indirect_symbol _FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_SOLIDTHICKLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PIXTOOLS_DRAWPATTERNLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD$stub:
.indirect_symbol _PIXTOOLS_DRAWPATTERNLINE$TFPCUSTOMCANVAS$LONGINT$LONGINT$LONGINT$LONGINT$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC$stub:
.indirect_symbol _FPPIXLCANV_TFPPIXELCANVAS_$_DOLINE$LONGINT$LONGINT$LONGINT$LONGINT_DRAWONELINE$crc8708F3BC
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_$FPPIXLCANV$_Ld6
_$FPPIXLCANV$_Ld6:
	.short	0
	.long	_$FPPIXLCANV$_Ld7
	.align 2
.globl	_$FPPIXLCANV$_Ld7
_$FPPIXLCANV$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPPIXLCANV_PIXELCANVASEXCEPTION
_INIT_FPPIXLCANV_PIXELCANVASEXCEPTION:
	.byte	15,20
	.ascii	"PixelCanvasException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPPIXLCANV_PIXELCANVASEXCEPTION
_RTTI_FPPIXLCANV_PIXELCANVASEXCEPTION:
	.byte	15,20
	.ascii	"PixelCanvasException"
	.long	_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION
	.long	_RTTI_FPCANVAS_TFPCANVASEXCEPTION
	.short	0
	.byte	10
	.ascii	"FPPixlCanv"
	.short	0

.const_data
	.align 2
.globl	_$FPPIXLCANV$_Ld9
_$FPPIXLCANV$_Ld9:
	.short	0
	.long	_$FPPIXLCANV$_Ld10
	.align 2
.globl	_$FPPIXLCANV$_Ld10
_$FPPIXLCANV$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPPIXLCANV_TFPPIXELCANVAS
_INIT_FPPIXLCANV_TFPPIXELCANVAS:
	.byte	15,14
	.ascii	"TFPPixelCanvas"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPPIXLCANV_TFPPIXELCANVAS
_RTTI_FPPIXLCANV_TFPPIXELCANVAS:
	.byte	15,14
	.ascii	"TFPPixelCanvas"
	.long	_VMT_FPPIXLCANV_TFPPIXELCANVAS
	.long	_RTTI_FPCANVAS_TFPCUSTOMCANVAS
	.short	0
	.byte	10
	.ascii	"FPPixlCanv"
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
L_TC_FPPIXLCANV_SERRNOTAVAILABLE$non_lazy_ptr:
.indirect_symbol _TC_FPPIXLCANV_SERRNOTAVAILABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPPIXLCANV_PIXELCANVASEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPPIXLCANV_PIXELCANVASEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPEMPTYFONT$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPEMPTYFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLBLACK$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPEMPTYPEN$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPEMPTYPEN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPCANVAS_TFPEMPTYBRUSH$non_lazy_ptr:
.indirect_symbol _VMT_FPCANVAS_TFPEMPTYBRUSH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPPIXLCANV_PENPATTERNS$non_lazy_ptr:
.indirect_symbol _TC_FPPIXLCANV_PENPATTERNS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPPIXLCANV_SERRNOIMAGE$non_lazy_ptr:
.indirect_symbol _TC_FPPIXLCANV_SERRNOIMAGE
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

