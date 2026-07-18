# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FTFONT_INITENGINE
_FTFONT_INITENGINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj4(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj6
	jmp	Lj5
Lj5:
	movl	L_VMT_FREETYPE_TFONTMANAGER$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_FREETYPE_TFONTMANAGER_$__CREATE$$TFONTMANAGER$stub
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj4(%ebx),%edx
	movl	%eax,(%edx)
Lj6:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_DONEENGINE
_FTFONT_DONEENGINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj14
Lj14:
	popl	%ebx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj14(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj14(%ebx),%eax
	movl	(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj16:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__CREATE$$TFREETYPEFONT
_FTFONT_TFREETYPEFONT_$__CREATE$$TFREETYPEFONT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj21
	jmp	Lj22
Lj21:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj22:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj27
	jmp	Lj28
Lj27:
	jmp	Lj19
Lj28:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj31
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj35
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER$stub
	movl	-8(%ebp),%eax
	movl	$-1,76(%eax)
	movl	-8(%ebp),%eax
	movb	$1,64(%eax)
	movl	-8(%ebp),%edx
	movl	L_TC_FREETYPE_DEFAULTRESOLUTION$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,60(%edx)
Lj35:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj36
	call	LFPC_RERAISE$stub
Lj36:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj50
	jmp	Lj49
Lj50:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj48
	jmp	Lj49
Lj48:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj49:
Lj31:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj54
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj56:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj54:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj53
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj53:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj33
Lj33:
Lj19:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DESTROY
_FTFONT_TFREETYPEFONT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj63
	jmp	Lj64
Lj63:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj64:
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPCANVAS_TFPCANVASHELPER_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj74
Lj75:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj73
	jmp	Lj74
Lj73:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj74:
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DOCOPYPROPS$TFPCANVASHELPER
_FTFONT_TFREETYPEFONT_$__DOCOPYPROPS$TFPCANVASHELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj79
Lj79:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER$stub
	movl	-4(%ebp),%edx
	movl	L_VMT_FTFONT_TFREETYPEFONT$non_lazy_ptr-Lj79(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj84
	jmp	Lj85
Lj84:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,72(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	64(%eax),%al
	movb	%al,64(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	84(%edx),%eax
	movl	%eax,84(%ecx)
	movl	88(%edx),%eax
	movl	%eax,88(%ecx)
Lj85:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__SETNAME$ANSISTRING
_FTFONT_TFREETYPEFONT_$__SETNAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj101
Lj101:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj102
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING$stub
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	testb	%al,%al
	jne	Lj111
	jmp	Lj112
Lj111:
	movl	-8(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj101(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
Lj112:
Lj102:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj103
	call	LFPC_RERAISE$stub
Lj103:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__SETINDEX$LONGINT
_FTFONT_TFREETYPEFONT_$__SETINDEX$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj124
Lj124:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,72(%edx)
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
	testb	%al,%al
	jne	Lj129
	jmp	Lj130
Lj129:
	movl	-8(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj124(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,76(%edx)
Lj130:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__SETSIZE$LONGINT
_FTFONT_TFREETYPEFONT_$__SETSIZE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT
_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,68(%eax)
	jne	Lj151
	jmp	Lj152
Lj151:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	$0,68(%eax)
Lj152:
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DOALLOCATERESOURCES
_FTFONT_TFREETYPEFONT_$__DOALLOCATERESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj158
Lj158:
	popl	%ebx
	movl	%eax,-4(%ebp)
	call	L_FTFONT_INITENGINE$stub
	movl	-4(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj158(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,76(%edx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DODEALLOCATERESOURCES
_FTFONT_TFREETYPEFONT_$__DODEALLOCATERESOURCES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
_FTFONT_TFREETYPEFONT_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj171
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING$stub
	movl	-12(%ebp),%eax
	movl	68(%eax),%eax
	leal	-28(%ebp),%edx
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT$stub
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	8(%ebp),%eax
	movl	%edx,(%eax)
Lj171:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj172
	call	LFPC_RERAISE$stub
Lj172:
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT
_FTFONT_TFREETYPEFONT_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj188
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	leal	-28(%ebp),%edx
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT$stub
	movl	-24(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj188:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj189
	call	LFPC_RERAISE$stub
Lj189:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT
_FTFONT_TFREETYPEFONT_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj203
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	leal	-28(%ebp),%edx
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT$stub
	movl	-20(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj203:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj204
	call	LFPC_RERAISE$stub
Lj204:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__SETFLAGS$LONGINT$BOOLEAN
_FTFONT_TFREETYPEFONT_$__SETFLAGS$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	subl	$5,%eax
	cmpl	$2,%eax
	jb	Lj220
Lj220:
	jnc	Lj218
	jmp	Lj219
Lj218:
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN$stub
Lj219:
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__GETFACE
_FTFONT_TFREETYPEFONT_$__GETFACE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj228
Lj228:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,80(%eax)
	jne	Lj230
	jmp	Lj229
Lj229:
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj228(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETFREETYPEFONT$LONGINT$$PFT_FACE$stub
	movl	-4(%ebp),%edx
	movl	%eax,80(%edx)
Lj230:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__GETFLAGS$LONGINT$$BOOLEAN
_FTFONT_TFREETYPEFONT_$__GETFLAGS$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$5,%eax
	je	Lj239
	jmp	Lj240
Lj239:
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__GETFACE$stub
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	12(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	jmp	Lj245
Lj240:
	movl	-4(%ebp),%eax
	cmpl	$6,%eax
	je	Lj246
	jmp	Lj247
Lj246:
	movl	-8(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__GETFACE$stub
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	12(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	jmp	Lj252
Lj247:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj252:
Lj245:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING
_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj260
Lj260:
	popl	%ebx
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
	jne	Lj261
	movl	-8(%ebp),%eax
	cmpl	$0,68(%eax)
	jne	Lj264
	jmp	Lj265
Lj264:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj266
	jmp	Lj267
Lj266:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movb	$1,-9(%ebp)
	jmp	Lj276
Lj267:
	movl	-8(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj277
	jmp	Lj278
Lj277:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	28(%eax),%eax
	cmpl	$1,%eax
	setneb	-9(%ebp)
	jmp	Lj281
Lj278:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
Lj281:
	cmpb	$0,-9(%ebp)
	jne	Lj284
	jmp	Lj285
Lj284:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj285:
Lj276:
	jmp	Lj288
Lj265:
	movb	$1,-9(%ebp)
Lj288:
	cmpb	$0,-9(%ebp)
	jne	Lj291
	jmp	Lj292
Lj291:
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj260(%ebx),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj295
	jmp	Lj296
Lj295:
	movl	-8(%ebp),%edx
	movl	84(%edx),%eax
	movl	%eax,(%esp)
	movl	88(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj260(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub
	movl	-8(%ebp),%edx
	movl	%eax,68(%edx)
	jmp	Lj309
Lj296:
	movl	-8(%ebp),%edx
	movl	84(%edx),%eax
	movl	%eax,(%esp)
	movl	88(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%ecx
	movl	L_U_FTFONT_FONTMGR$non_lazy_ptr-Lj260(%ebx),%eax
	movl	(%eax),%eax
	call	L_FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub
	movl	-8(%ebp),%edx
	movl	%eax,68(%edx)
Lj309:
Lj292:
Lj261:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj262
	call	LFPC_RERAISE$stub
Lj262:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DODRAWTEXT$LONGINT$LONGINT$ANSISTRING
_FTFONT_TFREETYPEFONT_$__DODRAWTEXT$LONGINT$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj324
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING$stub
	movl	-12(%ebp),%edx
	movl	68(%edx),%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%edi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj334
	decl	-16(%ebp)
	.align 2
Lj335:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-60(%ebp),%eax
	call	L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub
	movl	%eax,%esi
	movl	-60(%ebp),%edx
	movl	28(%edx),%eax
	testl	%eax,%eax
	je	Lj344
	jmp	Lj345
Lj344:
	movl	(%esi),%eax
	movl	%eax,(%esp)
	movl	4(%esi),%eax
	movl	%eax,4(%esp)
	movl	8(%esi),%eax
	movl	%eax,8(%esp)
	movl	28(%esi),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%edx
	movl	16(%esi),%eax
	addl	%eax,%edx
	movl	%edx,%ecx
	movl	-4(%ebp),%edx
	movl	12(%esi),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*192(%ebx)
	jmp	Lj360
Lj345:
	movl	(%esi),%eax
	movl	%eax,(%esp)
	movl	4(%esi),%eax
	movl	%eax,4(%esp)
	movl	8(%esi),%eax
	movl	%eax,8(%esp)
	movl	28(%esi),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%edx
	movl	16(%esi),%eax
	addl	%eax,%edx
	movl	%edx,%ecx
	movl	-4(%ebp),%edx
	movl	12(%esi),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*188(%ebx)
Lj360:
	cmpl	-16(%ebp),%edi
	jg	Lj335
Lj334:
Lj324:
	call	LFPC_POPADDRSTACK$stub
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj325
	call	LFPC_RERAISE$stub
Lj325:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DRAWCHAR$LONGINT$LONGINT$PBYTEARRAY$LONGINT$LONGINT$LONGINT
_FTFONT_TFREETYPEFONT_$__DRAWCHAR$LONGINT$LONGINT$PBYTEARRAY$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	8(%ebp),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj382
	decl	-24(%ebp)
	.align 2
Lj383:
	incl	-24(%ebp)
	movl	12(%ebp),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj385
	decl	-20(%ebp)
	.align 2
Lj386:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	leal	14(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,8(%esp)
	movl	20(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movzbl	(%ecx,%eax,1),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	24(%eax),%edx
	movl	%ebp,%eax
	call	L_FTFONT_TFREETYPEFONT_$_DRAWCHAR$crcD4B13CA8_COMBINE$crcBEF132D2$stub
	cmpl	-20(%ebp),%esi
	jg	Lj386
Lj385:
	movl	16(%ebp),%eax
	addl	%eax,-16(%ebp)
	cmpl	-24(%ebp),%ebx
	jg	Lj383
Lj382:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$_DRAWCHAR$crcD4B13CA8_COMBINE$crcBEF132D2
_FTFONT_TFREETYPEFONT_$_DRAWCHAR$crcD4B13CA8_COMBINE$crcBEF132D2:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	8(%ebp),%eax
	incl	%eax
	shll	$8,%eax
	decl	%eax
	movw	%ax,(%esp)
	movw	-24(%ebp),%cx
	movw	-26(%ebp),%dx
	movw	-28(%ebp),%ax
	call	L_FPIMAGE_FPCOLOR$WORD$WORD$WORD$WORD$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	leal	-36(%ebp),%esi
	movl	16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*160(%ebx)
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	leal	-44(%ebp),%eax
	movl	%esi,%edx
	call	L_FPIMAGE_ALPHABLEND$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub
	movl	%eax,-52(%ebp)
	movl	%edx,-48(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FTFONT_TFREETYPEFONT_$__DRAWCHARBW$LONGINT$LONGINT$PBYTEARRAY$LONGINT$LONGINT$LONGINT
_FTFONT_TFREETYPEFONT_$__DRAWCHARBW$LONGINT$LONGINT$PBYTEARRAY$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	call	Lj428
Lj428:
	popl	-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edi
	jl	Lj432
	decl	-24(%ebp)
	.align 2
Lj433:
	incl	-24(%ebp)
	movl	$0,-32(%ebp)
	movl	12(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj437
	decl	-20(%ebp)
	.align 2
Lj438:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movb	%dl,-13(%ebp)
	movl	20(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	-32(%ebp),%eax
	addl	%eax,%ecx
	movzbl	-13(%ebp),%eax
	movb	(%edx,%ecx,1),%dl
	movl	-36(%ebp),%ebx
	movl	L_TC_FTFONT_BITS$non_lazy_ptr-Lj428(%ebx),%ecx
	movb	(%ecx,%eax,1),%al
	andb	%al,%dl
	movzbl	%dl,%eax
	testl	%eax,%eax
	jne	Lj441
	jmp	Lj442
Lj441:
	movl	-12(%ebp),%eax
	leal	14(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%ebx
	movl	24(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*156(%ebx)
Lj442:
	movzbl	-13(%ebp),%eax
	cmpl	$7,%eax
	je	Lj451
	jmp	Lj452
Lj451:
	incl	-32(%ebp)
Lj452:
	cmpl	-20(%ebp),%esi
	jg	Lj438
Lj437:
	movl	16(%ebp),%eax
	addl	%eax,-28(%ebp)
	cmpl	-24(%ebp),%edi
	jg	Lj433
Lj432:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FTFONT
_FINALIZE$_FTFONT:
.reference __FTFONT_finalize
.globl	__FTFONT_finalize
__FTFONT_finalize:
.reference _FINALIZE$_FTFONT
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_FTFONT_DONEENGINE$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_FTFONT_FONTMGR
.data
.zerofill __DATA, __common, _U_FTFONT_FONTMGR, 4,2



.const_data
	.align 2
.globl	_$FTFONT$_Ld1
_$FTFONT$_Ld1:
	.byte	21
	.ascii	"FreeTypeFontException"

.const_data
	.align 2
.globl	_VMT_FTFONT_FREETYPEFONTEXCEPTION
_VMT_FTFONT_FREETYPEFONTEXCEPTION:
	.long	12,-12
	.long	_VMT_FPCANVAS_TFPFONTEXCEPTION
	.long	_$FTFONT$_Ld1
	.long	0,0
	.long	_$FTFONT$_Ld2
	.long	_RTTI_FTFONT_FREETYPEFONTEXCEPTION
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
.globl	_$FTFONT$_Ld4
_$FTFONT$_Ld4:
	.byte	13
	.ascii	"TFreeTypeFont"

.const_data
	.align 2
.globl	_VMT_FTFONT_TFREETYPEFONT
_VMT_FTFONT_TFREETYPEFONT:
	.long	92,-92
	.long	_VMT_FPCANVAS_TFPCUSTOMDRAWFONT
	.long	_$FTFONT$_Ld4
	.long	0,0
	.long	_$FTFONT$_Ld5
	.long	_RTTI_FTFONT_TFREETYPEFONT
	.long	0,0,0,0
	.long	_FTFONT_TFREETYPEFONT_$__DESTROY
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
	.long	_FPCANVAS_TFPCANVASHELPER_$__GETALLOCATED$$BOOLEAN
	.long	_FTFONT_TFREETYPEFONT_$__SETFLAGS$LONGINT$BOOLEAN
	.long	_FTFONT_TFREETYPEFONT_$__GETFLAGS$LONGINT$$BOOLEAN
	.long	_FTFONT_TFREETYPEFONT_$__DOALLOCATERESOURCES
	.long	_FTFONT_TFREETYPEFONT_$__DODEALLOCATERESOURCES
	.long	_FTFONT_TFREETYPEFONT_$__DOCOPYPROPS$TFPCANVASHELPER
	.long	_FPCANVAS_TFPCANVASHELPER_$__SETFPCOLOR$TFPCOLOR
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGING
	.long	_FPCANVAS_TFPCANVASHELPER_$__CHANGED
	.long	_FTFONT_TFREETYPEFONT_$__CREATE$$TFREETYPEFONT
	.long	_FTFONT_TFREETYPEFONT_$__SETNAME$ANSISTRING
	.long	_FTFONT_TFREETYPEFONT_$__SETSIZE$LONGINT
	.long	_FPCANVAS_TFPCUSTOMFONT_$__SETORIENTATION$LONGINT
	.long	_FTFONT_TFREETYPEFONT_$__DODRAWTEXT$LONGINT$LONGINT$ANSISTRING
	.long	_FTFONT_TFREETYPEFONT_$__DOGETTEXTSIZE$ANSISTRING$LONGINT$LONGINT
	.long	_FTFONT_TFREETYPEFONT_$__DOGETTEXTHEIGHT$ANSISTRING$$LONGINT
	.long	_FTFONT_TFREETYPEFONT_$__DOGETTEXTWIDTH$ANSISTRING$$LONGINT
	.long	_FTFONT_TFREETYPEFONT_$__DRAWCHAR$LONGINT$LONGINT$PBYTEARRAY$LONGINT$LONGINT$LONGINT
	.long	_FTFONT_TFREETYPEFONT_$__DRAWCHARBW$LONGINT$LONGINT$PBYTEARRAY$LONGINT$LONGINT$LONGINT
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FTFONT
_THREADVARLIST_FTFONT:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_FTFONT_BITS
_TC_FTFONT_BITS:
	.byte	128,64,32,16,8,4,2,1
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__CREATE$$TFONTMANAGER$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__CREATE$$TFONTMANAGER
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

L_FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__CREATE$$TFPCANVASHELPER
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

L_FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT$stub:
.indirect_symbol _FTFONT_TFREETYPEFONT_$__CLEARLASTTEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$__DESTROY$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMFONT_$__DOCOPYPROPS$TFPCANVASHELPER
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMFONT_$__SETNAME$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__REQUESTFONT$ANSISTRING$LONGINT$$LONGINT
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

L_FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT$stub:
.indirect_symbol _FPCANVAS_TFPCUSTOMFONT_$__SETSIZE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FTFONT_INITENGINE$stub:
.indirect_symbol _FTFONT_INITENGINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING$stub:
.indirect_symbol _FTFONT_TFREETYPEFONT_$__GETTEXT$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__GETBOUNDRECT$TRECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__SETFLAGS$LONGINT$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETFREETYPEFONT$LONGINT$$PFT_FACE$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETFREETYPEFONT$LONGINT$$PFT_FACE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FTFONT_TFREETYPEFONT_$__GETFACE$stub:
.indirect_symbol _FTFONT_TFREETYPEFONT_$__GETFACE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN$stub:
.indirect_symbol _FPCANVAS_TFPCANVASHELPER_$__GETFLAGS$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETSTRINGGRAY$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS$stub:
.indirect_symbol _FREETYPE_TFONTMANAGER_$__GETSTRING$LONGINT$ANSISTRING$LONGINT$REAL$$TSTRINGBITMAPS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP$stub:
.indirect_symbol _FREETYPE_TSTRINGBITMAPS_$__GETBITMAP$LONGINT$$PFONTBITMAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FTFONT_TFREETYPEFONT_$_DRAWCHAR$crcD4B13CA8_COMBINE$crcBEF132D2$stub:
.indirect_symbol _FTFONT_TFREETYPEFONT_$_DRAWCHAR$crcD4B13CA8_COMBINE$crcBEF132D2
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

L_FPIMAGE_ALPHABLEND$TFPCOLOR$TFPCOLOR$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_ALPHABLEND$TFPCOLOR$TFPCOLOR$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FTFONT_DONEENGINE$stub:
.indirect_symbol _FTFONT_DONEENGINE
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
.globl	_$FTFONT$_Ld2
_$FTFONT$_Ld2:
	.short	0
	.long	_$FTFONT$_Ld3
	.align 2
.globl	_$FTFONT$_Ld3
_$FTFONT$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_FTFONT_FREETYPEFONTEXCEPTION
_INIT_FTFONT_FREETYPEFONTEXCEPTION:
	.byte	15,21
	.ascii	"FreeTypeFontException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FTFONT_FREETYPEFONTEXCEPTION
_RTTI_FTFONT_FREETYPEFONTEXCEPTION:
	.byte	15,21
	.ascii	"FreeTypeFontException"
	.long	_VMT_FTFONT_FREETYPEFONTEXCEPTION
	.long	_RTTI_FPCANVAS_TFPFONTEXCEPTION
	.short	0
	.byte	6
	.ascii	"ftfont"
	.short	0

.const_data
	.align 2
.globl	_$FTFONT$_Ld5
_$FTFONT$_Ld5:
	.short	0
	.long	_$FTFONT$_Ld6
	.align 2
.globl	_$FTFONT$_Ld6
_$FTFONT$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_FTFONT_TFREETYPEFONT
_INIT_FTFONT_TFREETYPEFONT:
	.byte	15,13
	.ascii	"TFreeTypeFont"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FTFONT_TFREETYPEFONT
_RTTI_FTFONT_TFREETYPEFONT:
	.byte	15,13
	.ascii	"TFreeTypeFont"
	.long	_VMT_FTFONT_TFREETYPEFONT
	.long	_RTTI_FPCANVAS_TFPCUSTOMDRAWFONT
	.short	0
	.byte	6
	.ascii	"ftfont"
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
L_U_FTFONT_FONTMGR$non_lazy_ptr:
.indirect_symbol _U_FTFONT_FONTMGR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FREETYPE_TFONTMANAGER$non_lazy_ptr:
.indirect_symbol _VMT_FREETYPE_TFONTMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FREETYPE_DEFAULTRESOLUTION$non_lazy_ptr:
.indirect_symbol _TC_FREETYPE_DEFAULTRESOLUTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FTFONT_TFREETYPEFONT$non_lazy_ptr:
.indirect_symbol _VMT_FTFONT_TFREETYPEFONT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FTFONT_BITS$non_lazy_ptr:
.indirect_symbol _TC_FTFONT_BITS
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

