# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_HTMLDEFS_BSEARCH$PWIDECHAR$LONGINT$ANSISTRING$$WIDECHAR
_HTMLDEFS_BSEARCH$PWIDECHAR$LONGINT$ANSISTRING$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	$0,-14(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	movl	-4(%eax),%eax
Lj11:
	incl	%eax
	movl	-8(%ebp),%ecx
	addl	$2,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-24(%ebp)
	jmp	Lj13
	.align 2
Lj12:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	shrl	$1,%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	.align 2
Lj19:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	addl	$2,%eax
	movl	-28(%ebp),%edx
	imull	%edx,%eax
	addl	$3,%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movzbl	-1(%ecx,%eax,1),%edx
	movl	-4(%ebp),%ecx
	movl	-32(%ebp),%eax
	movzwl	(%ecx,%eax,2),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-36(%ebp)
	incl	-32(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj21
	jmp	Lj24
Lj24:
	movl	-32(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj21
	jmp	Lj19
Lj21:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj25
	jmp	Lj26
Lj25:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj29
Lj26:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj32
	jmp	Lj33
Lj32:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	addl	$2,%eax
	movl	-28(%ebp),%edx
	imull	%edx,%eax
	incl	%eax
	movzbl	-1(%ecx,%eax,1),%eax
	shll	$8,%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%edx
	addl	$2,%edx
	movl	-28(%ebp),%ecx
	imull	%ecx,%edx
	addl	$2,%edx
	movzbl	-1(%ebx,%edx,1),%edx
	orl	%edx,%eax
	movw	%ax,-14(%ebp)
	jmp	Lj3
Lj33:
Lj29:
Lj13:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj12
	jmp	Lj14
Lj14:
Lj3:
	movw	-14(%ebp),%ax
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_HTMLDEFS_RESOLVEHTMLENTITYREFERENCE$WIDESTRING$WIDECHAR$$BOOLEAN
_HTMLDEFS_RESOLVEHTMLENTITYREFERENCE$WIDESTRING$WIDECHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj37
Lj37:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj40:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj43
	jmp	Lj42
Lj43:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$35,%ax
	je	Lj41
	jmp	Lj42
Lj41:
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	cmpw	$120,%ax
	je	Lj46
	jmp	Lj48
Lj48:
	movl	-4(%ebp),%eax
	movw	2(%eax),%ax
	cmpw	$88,%ax
	je	Lj46
	jmp	Lj47
Lj46:
	movl	$3,-16(%ebp)
	jmp	Lj52
	.align 2
Lj51:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$48,%ax
	jb	Lj55
	subw	$48,%ax
	subw	$9,%ax
	jbe	Lj56
	subw	$8,%ax
	jb	Lj55
	subw	$5,%ax
	jbe	Lj58
	subw	$27,%ax
	jb	Lj55
	subw	$5,%ax
	jbe	Lj57
	jmp	Lj55
Lj56:
	movl	-24(%ebp),%eax
	shll	$4,%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzwl	-2(%ecx,%edx,2),%edx
	addl	%edx,%eax
	subl	$48,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj54
Lj57:
	movl	-24(%ebp),%eax
	shll	$4,%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzwl	-2(%ecx,%edx,2),%edx
	addl	%edx,%eax
	subl	$87,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj54
Lj58:
	movl	-24(%ebp),%eax
	shll	$4,%eax
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movzwl	-2(%ecx,%edx,2),%edx
	addl	%edx,%eax
	subl	$55,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj54
Lj55:
	jmp	Lj53
Lj54:
	incl	-16(%ebp)
Lj52:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj51
	jmp	Lj53
Lj53:
	jmp	Lj65
Lj47:
	movl	$2,-16(%ebp)
	jmp	Lj69
	.align 2
Lj68:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$48,%ax
	jb	Lj72
	subw	$48,%ax
	subw	$9,%ax
	jbe	Lj73
	jmp	Lj72
Lj73:
	movl	-24(%ebp),%ecx
	imull	$10,%ecx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movzwl	-2(%edx,%eax,2),%eax
	addl	%eax,%ecx
	subl	$48,%ecx
	movl	%ecx,-24(%ebp)
	jmp	Lj71
Lj72:
	jmp	Lj70
Lj71:
	incl	-16(%ebp)
Lj69:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj68
	jmp	Lj70
Lj70:
Lj65:
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj78
	jmp	Lj79
Lj78:
	movl	-8(%ebp),%eax
	movw	-24(%ebp),%dx
	movw	%dx,(%eax)
Lj79:
	jmp	Lj82
Lj42:
	movl	-20(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj84
	subl	$2,%eax
	subl	$6,%eax
	jle	Lj85
	jmp	Lj84
Lj85:
	movl	-20(%ebp),%edx
	movl	L_TC_HTMLDEFS_STRS$non_lazy_ptr-Lj37(%ebx),%eax
	movl	-8(%eax,%edx,4),%ecx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj92
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj37(%ebx),%edx
	movl	%edx,%eax
Lj92:
	movl	-20(%ebp),%edx
	call	L_HTMLDEFS_BSEARCH$PWIDECHAR$LONGINT$ANSISTRING$$WIDECHAR$stub
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj83
Lj84:
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
Lj83:
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	setneb	-9(%ebp)
Lj82:
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_HTMLDEFS_ISAUTOCLOSE$THTMLELEMENTTAG$THTMLELEMENTTAG$$BOOLEAN
_HTMLDEFS_ISAUTOCLOSE$THTMLELEMENTTAG$THTMLELEMENTTAG$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj100
Lj100:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj105:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	L_TC_HTMLDEFS_AUTOCLOSEINDEX$non_lazy_ptr-Lj100(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	movl	L_TC_HTMLDEFS_AUTOCLOSETAB$non_lazy_ptr-Lj100(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	cmpl	-4(%ebp),%eax
	je	Lj106
	jmp	Lj107
Lj106:
	movl	-16(%ebp),%eax
	movl	L_TC_HTMLDEFS_AUTOCLOSEINDEX$non_lazy_ptr-Lj100(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj111
	.align 2
Lj110:
	movl	-20(%ebp),%eax
	movl	L_TC_HTMLDEFS_AUTOCLOSETAB$non_lazy_ptr-Lj100(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	cmpl	-8(%ebp),%eax
	je	Lj113
	jmp	Lj114
Lj113:
	movb	$1,-9(%ebp)
	jmp	Lj99
Lj114:
	incl	-20(%ebp)
Lj111:
	movl	-20(%ebp),%eax
	movl	L_TC_HTMLDEFS_AUTOCLOSETAB$non_lazy_ptr-Lj100(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	cmpl	$92,%eax
	jne	Lj110
	jmp	Lj112
Lj112:
	jmp	Lj99
Lj107:
	cmpl	$40,-16(%ebp)
	jl	Lj105
Lj99:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIT$_HTMLDEFS
_INIT$_HTMLDEFS:
.reference __HTMLDEFS_init_implicit
.globl	__HTMLDEFS_init_implicit
__HTMLDEFS_init_implicit:
.reference _INIT$_HTMLDEFS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_HTMLDEFS
_FINALIZE$_HTMLDEFS:
.reference __HTMLDEFS_finalize_implicit
.globl	__HTMLDEFS_finalize_implicit
__HTMLDEFS_finalize_implicit:
.reference _FINALIZE$_HTMLDEFS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj120
Lj120:
	popl	%ebx
	movl	L_INIT_HTMLDEFS_DEF25$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLELEMENTPROPS$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF208$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLATTRIBUTETAG$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF327$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLCOLOR$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF344$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLDIR$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF348$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLALIGN$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF355$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLVALIGN$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF361$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLFRAME$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF372$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLRULES$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF379$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLVALUETYPE$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF384$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLSHAPE$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF390$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLINPUTTYPE$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF402$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_HTMLBUTTONTYPE$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_INIT_HTMLDEFS_DEF1413$non_lazy_ptr-Lj120(%ebx),%edx
	movl	L_TC_HTMLDEFS_STRS$non_lazy_ptr-Lj120(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_HTMLDEFS
_THREADVARLIST_HTMLDEFS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld2
_$HTMLDEFS$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld1
.globl	_$HTMLDEFS$_Ld1
_$HTMLDEFS$_Ld1:
.reference _$HTMLDEFS$_Ld2
	.ascii	"a\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld4
_$HTMLDEFS$_Ld4:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld3
.globl	_$HTMLDEFS$_Ld3
_$HTMLDEFS$_Ld3:
.reference _$HTMLDEFS$_Ld4
	.ascii	"abbr\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld6
_$HTMLDEFS$_Ld6:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld5
.globl	_$HTMLDEFS$_Ld5
_$HTMLDEFS$_Ld5:
.reference _$HTMLDEFS$_Ld6
	.ascii	"acronym\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld8
_$HTMLDEFS$_Ld8:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld7
.globl	_$HTMLDEFS$_Ld7
_$HTMLDEFS$_Ld7:
.reference _$HTMLDEFS$_Ld8
	.ascii	"address\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld10
_$HTMLDEFS$_Ld10:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld9
.globl	_$HTMLDEFS$_Ld9
_$HTMLDEFS$_Ld9:
.reference _$HTMLDEFS$_Ld10
	.ascii	"applet\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld12
_$HTMLDEFS$_Ld12:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld11
.globl	_$HTMLDEFS$_Ld11
_$HTMLDEFS$_Ld11:
.reference _$HTMLDEFS$_Ld12
	.ascii	"area\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld14
_$HTMLDEFS$_Ld14:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld13
.globl	_$HTMLDEFS$_Ld13
_$HTMLDEFS$_Ld13:
.reference _$HTMLDEFS$_Ld14
	.ascii	"b\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld16
_$HTMLDEFS$_Ld16:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld15
.globl	_$HTMLDEFS$_Ld15
_$HTMLDEFS$_Ld15:
.reference _$HTMLDEFS$_Ld16
	.ascii	"base\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld18
_$HTMLDEFS$_Ld18:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld17
.globl	_$HTMLDEFS$_Ld17
_$HTMLDEFS$_Ld17:
.reference _$HTMLDEFS$_Ld18
	.ascii	"basefont\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld20
_$HTMLDEFS$_Ld20:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld19
.globl	_$HTMLDEFS$_Ld19
_$HTMLDEFS$_Ld19:
.reference _$HTMLDEFS$_Ld20
	.ascii	"bdo\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld22
_$HTMLDEFS$_Ld22:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld21
.globl	_$HTMLDEFS$_Ld21
_$HTMLDEFS$_Ld21:
.reference _$HTMLDEFS$_Ld22
	.ascii	"big\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld24
_$HTMLDEFS$_Ld24:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld23
.globl	_$HTMLDEFS$_Ld23
_$HTMLDEFS$_Ld23:
.reference _$HTMLDEFS$_Ld24
	.ascii	"blockquote\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld26
_$HTMLDEFS$_Ld26:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld25
.globl	_$HTMLDEFS$_Ld25
_$HTMLDEFS$_Ld25:
.reference _$HTMLDEFS$_Ld26
	.ascii	"body\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld28
_$HTMLDEFS$_Ld28:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld27
.globl	_$HTMLDEFS$_Ld27
_$HTMLDEFS$_Ld27:
.reference _$HTMLDEFS$_Ld28
	.ascii	"br\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld30
_$HTMLDEFS$_Ld30:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld29
.globl	_$HTMLDEFS$_Ld29
_$HTMLDEFS$_Ld29:
.reference _$HTMLDEFS$_Ld30
	.ascii	"button\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld32
_$HTMLDEFS$_Ld32:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld31
.globl	_$HTMLDEFS$_Ld31
_$HTMLDEFS$_Ld31:
.reference _$HTMLDEFS$_Ld32
	.ascii	"caption\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld34
_$HTMLDEFS$_Ld34:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld33
.globl	_$HTMLDEFS$_Ld33
_$HTMLDEFS$_Ld33:
.reference _$HTMLDEFS$_Ld34
	.ascii	"center\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld36
_$HTMLDEFS$_Ld36:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld35
.globl	_$HTMLDEFS$_Ld35
_$HTMLDEFS$_Ld35:
.reference _$HTMLDEFS$_Ld36
	.ascii	"cite\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld38
_$HTMLDEFS$_Ld38:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld37
.globl	_$HTMLDEFS$_Ld37
_$HTMLDEFS$_Ld37:
.reference _$HTMLDEFS$_Ld38
	.ascii	"code\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld40
_$HTMLDEFS$_Ld40:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld39
.globl	_$HTMLDEFS$_Ld39
_$HTMLDEFS$_Ld39:
.reference _$HTMLDEFS$_Ld40
	.ascii	"col\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld42
_$HTMLDEFS$_Ld42:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld41
.globl	_$HTMLDEFS$_Ld41
_$HTMLDEFS$_Ld41:
.reference _$HTMLDEFS$_Ld42
	.ascii	"colgroup\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld44
_$HTMLDEFS$_Ld44:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld43
.globl	_$HTMLDEFS$_Ld43
_$HTMLDEFS$_Ld43:
.reference _$HTMLDEFS$_Ld44
	.ascii	"dd\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld46
_$HTMLDEFS$_Ld46:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld45
.globl	_$HTMLDEFS$_Ld45
_$HTMLDEFS$_Ld45:
.reference _$HTMLDEFS$_Ld46
	.ascii	"del\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld48
_$HTMLDEFS$_Ld48:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld47
.globl	_$HTMLDEFS$_Ld47
_$HTMLDEFS$_Ld47:
.reference _$HTMLDEFS$_Ld48
	.ascii	"dfn\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld50
_$HTMLDEFS$_Ld50:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld49
.globl	_$HTMLDEFS$_Ld49
_$HTMLDEFS$_Ld49:
.reference _$HTMLDEFS$_Ld50
	.ascii	"dir\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld52
_$HTMLDEFS$_Ld52:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld51
.globl	_$HTMLDEFS$_Ld51
_$HTMLDEFS$_Ld51:
.reference _$HTMLDEFS$_Ld52
	.ascii	"div\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld54
_$HTMLDEFS$_Ld54:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld53
.globl	_$HTMLDEFS$_Ld53
_$HTMLDEFS$_Ld53:
.reference _$HTMLDEFS$_Ld54
	.ascii	"dl\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld56
_$HTMLDEFS$_Ld56:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld55
.globl	_$HTMLDEFS$_Ld55
_$HTMLDEFS$_Ld55:
.reference _$HTMLDEFS$_Ld56
	.ascii	"dt\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld58
_$HTMLDEFS$_Ld58:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld57
.globl	_$HTMLDEFS$_Ld57
_$HTMLDEFS$_Ld57:
.reference _$HTMLDEFS$_Ld58
	.ascii	"em\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld60
_$HTMLDEFS$_Ld60:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld59
.globl	_$HTMLDEFS$_Ld59
_$HTMLDEFS$_Ld59:
.reference _$HTMLDEFS$_Ld60
	.ascii	"fieldset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld62
_$HTMLDEFS$_Ld62:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld61
.globl	_$HTMLDEFS$_Ld61
_$HTMLDEFS$_Ld61:
.reference _$HTMLDEFS$_Ld62
	.ascii	"font\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld64
_$HTMLDEFS$_Ld64:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld63
.globl	_$HTMLDEFS$_Ld63
_$HTMLDEFS$_Ld63:
.reference _$HTMLDEFS$_Ld64
	.ascii	"form\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld66
_$HTMLDEFS$_Ld66:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld65
.globl	_$HTMLDEFS$_Ld65
_$HTMLDEFS$_Ld65:
.reference _$HTMLDEFS$_Ld66
	.ascii	"frame\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld68
_$HTMLDEFS$_Ld68:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld67
.globl	_$HTMLDEFS$_Ld67
_$HTMLDEFS$_Ld67:
.reference _$HTMLDEFS$_Ld68
	.ascii	"frameset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld70
_$HTMLDEFS$_Ld70:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld69
.globl	_$HTMLDEFS$_Ld69
_$HTMLDEFS$_Ld69:
.reference _$HTMLDEFS$_Ld70
	.ascii	"h1\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld72
_$HTMLDEFS$_Ld72:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld71
.globl	_$HTMLDEFS$_Ld71
_$HTMLDEFS$_Ld71:
.reference _$HTMLDEFS$_Ld72
	.ascii	"h2\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld74
_$HTMLDEFS$_Ld74:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld73
.globl	_$HTMLDEFS$_Ld73
_$HTMLDEFS$_Ld73:
.reference _$HTMLDEFS$_Ld74
	.ascii	"h3\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld76
_$HTMLDEFS$_Ld76:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld75
.globl	_$HTMLDEFS$_Ld75
_$HTMLDEFS$_Ld75:
.reference _$HTMLDEFS$_Ld76
	.ascii	"h4\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld78
_$HTMLDEFS$_Ld78:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld77
.globl	_$HTMLDEFS$_Ld77
_$HTMLDEFS$_Ld77:
.reference _$HTMLDEFS$_Ld78
	.ascii	"h5\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld80
_$HTMLDEFS$_Ld80:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld79
.globl	_$HTMLDEFS$_Ld79
_$HTMLDEFS$_Ld79:
.reference _$HTMLDEFS$_Ld80
	.ascii	"h6\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld82
_$HTMLDEFS$_Ld82:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld81
.globl	_$HTMLDEFS$_Ld81
_$HTMLDEFS$_Ld81:
.reference _$HTMLDEFS$_Ld82
	.ascii	"head\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld84
_$HTMLDEFS$_Ld84:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld83
.globl	_$HTMLDEFS$_Ld83
_$HTMLDEFS$_Ld83:
.reference _$HTMLDEFS$_Ld84
	.ascii	"hr\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld86
_$HTMLDEFS$_Ld86:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld85
.globl	_$HTMLDEFS$_Ld85
_$HTMLDEFS$_Ld85:
.reference _$HTMLDEFS$_Ld86
	.ascii	"html\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld88
_$HTMLDEFS$_Ld88:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld87
.globl	_$HTMLDEFS$_Ld87
_$HTMLDEFS$_Ld87:
.reference _$HTMLDEFS$_Ld88
	.ascii	"i\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld90
_$HTMLDEFS$_Ld90:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld89
.globl	_$HTMLDEFS$_Ld89
_$HTMLDEFS$_Ld89:
.reference _$HTMLDEFS$_Ld90
	.ascii	"iframe\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld92
_$HTMLDEFS$_Ld92:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld91
.globl	_$HTMLDEFS$_Ld91
_$HTMLDEFS$_Ld91:
.reference _$HTMLDEFS$_Ld92
	.ascii	"img\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld94
_$HTMLDEFS$_Ld94:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld93
.globl	_$HTMLDEFS$_Ld93
_$HTMLDEFS$_Ld93:
.reference _$HTMLDEFS$_Ld94
	.ascii	"input\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld96
_$HTMLDEFS$_Ld96:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld95
.globl	_$HTMLDEFS$_Ld95
_$HTMLDEFS$_Ld95:
.reference _$HTMLDEFS$_Ld96
	.ascii	"ins\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld98
_$HTMLDEFS$_Ld98:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld97
.globl	_$HTMLDEFS$_Ld97
_$HTMLDEFS$_Ld97:
.reference _$HTMLDEFS$_Ld98
	.ascii	"isindex\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld100
_$HTMLDEFS$_Ld100:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld99
.globl	_$HTMLDEFS$_Ld99
_$HTMLDEFS$_Ld99:
.reference _$HTMLDEFS$_Ld100
	.ascii	"kbd\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld102
_$HTMLDEFS$_Ld102:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld101
.globl	_$HTMLDEFS$_Ld101
_$HTMLDEFS$_Ld101:
.reference _$HTMLDEFS$_Ld102
	.ascii	"label\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld104
_$HTMLDEFS$_Ld104:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld103
.globl	_$HTMLDEFS$_Ld103
_$HTMLDEFS$_Ld103:
.reference _$HTMLDEFS$_Ld104
	.ascii	"legend\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld106
_$HTMLDEFS$_Ld106:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld105
.globl	_$HTMLDEFS$_Ld105
_$HTMLDEFS$_Ld105:
.reference _$HTMLDEFS$_Ld106
	.ascii	"li\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld108
_$HTMLDEFS$_Ld108:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld107
.globl	_$HTMLDEFS$_Ld107
_$HTMLDEFS$_Ld107:
.reference _$HTMLDEFS$_Ld108
	.ascii	"link\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld110
_$HTMLDEFS$_Ld110:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld109
.globl	_$HTMLDEFS$_Ld109
_$HTMLDEFS$_Ld109:
.reference _$HTMLDEFS$_Ld110
	.ascii	"map\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld112
_$HTMLDEFS$_Ld112:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld111
.globl	_$HTMLDEFS$_Ld111
_$HTMLDEFS$_Ld111:
.reference _$HTMLDEFS$_Ld112
	.ascii	"menu\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld114
_$HTMLDEFS$_Ld114:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld113
.globl	_$HTMLDEFS$_Ld113
_$HTMLDEFS$_Ld113:
.reference _$HTMLDEFS$_Ld114
	.ascii	"meta\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld116
_$HTMLDEFS$_Ld116:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld115
.globl	_$HTMLDEFS$_Ld115
_$HTMLDEFS$_Ld115:
.reference _$HTMLDEFS$_Ld116
	.ascii	"noframes\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld118
_$HTMLDEFS$_Ld118:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld117
.globl	_$HTMLDEFS$_Ld117
_$HTMLDEFS$_Ld117:
.reference _$HTMLDEFS$_Ld118
	.ascii	"noscript\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld120
_$HTMLDEFS$_Ld120:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld119
.globl	_$HTMLDEFS$_Ld119
_$HTMLDEFS$_Ld119:
.reference _$HTMLDEFS$_Ld120
	.ascii	"object\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld122
_$HTMLDEFS$_Ld122:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld121
.globl	_$HTMLDEFS$_Ld121
_$HTMLDEFS$_Ld121:
.reference _$HTMLDEFS$_Ld122
	.ascii	"ol\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld124
_$HTMLDEFS$_Ld124:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld123
.globl	_$HTMLDEFS$_Ld123
_$HTMLDEFS$_Ld123:
.reference _$HTMLDEFS$_Ld124
	.ascii	"optgroup\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld126
_$HTMLDEFS$_Ld126:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld125
.globl	_$HTMLDEFS$_Ld125
_$HTMLDEFS$_Ld125:
.reference _$HTMLDEFS$_Ld126
	.ascii	"option\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld128
_$HTMLDEFS$_Ld128:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld127
.globl	_$HTMLDEFS$_Ld127
_$HTMLDEFS$_Ld127:
.reference _$HTMLDEFS$_Ld128
	.ascii	"p\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld130
_$HTMLDEFS$_Ld130:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld129
.globl	_$HTMLDEFS$_Ld129
_$HTMLDEFS$_Ld129:
.reference _$HTMLDEFS$_Ld130
	.ascii	"param\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld132
_$HTMLDEFS$_Ld132:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld131
.globl	_$HTMLDEFS$_Ld131
_$HTMLDEFS$_Ld131:
.reference _$HTMLDEFS$_Ld132
	.ascii	"pre\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld134
_$HTMLDEFS$_Ld134:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld133
.globl	_$HTMLDEFS$_Ld133
_$HTMLDEFS$_Ld133:
.reference _$HTMLDEFS$_Ld134
	.ascii	"q\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld136
_$HTMLDEFS$_Ld136:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld135
.globl	_$HTMLDEFS$_Ld135
_$HTMLDEFS$_Ld135:
.reference _$HTMLDEFS$_Ld136
	.ascii	"s\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld138
_$HTMLDEFS$_Ld138:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld137
.globl	_$HTMLDEFS$_Ld137
_$HTMLDEFS$_Ld137:
.reference _$HTMLDEFS$_Ld138
	.ascii	"samp\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld140
_$HTMLDEFS$_Ld140:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld139
.globl	_$HTMLDEFS$_Ld139
_$HTMLDEFS$_Ld139:
.reference _$HTMLDEFS$_Ld140
	.ascii	"script\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld142
_$HTMLDEFS$_Ld142:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld141
.globl	_$HTMLDEFS$_Ld141
_$HTMLDEFS$_Ld141:
.reference _$HTMLDEFS$_Ld142
	.ascii	"select\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld144
_$HTMLDEFS$_Ld144:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld143
.globl	_$HTMLDEFS$_Ld143
_$HTMLDEFS$_Ld143:
.reference _$HTMLDEFS$_Ld144
	.ascii	"small\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld146
_$HTMLDEFS$_Ld146:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld145
.globl	_$HTMLDEFS$_Ld145
_$HTMLDEFS$_Ld145:
.reference _$HTMLDEFS$_Ld146
	.ascii	"span\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld148
_$HTMLDEFS$_Ld148:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld147
.globl	_$HTMLDEFS$_Ld147
_$HTMLDEFS$_Ld147:
.reference _$HTMLDEFS$_Ld148
	.ascii	"strike\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld150
_$HTMLDEFS$_Ld150:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld149
.globl	_$HTMLDEFS$_Ld149
_$HTMLDEFS$_Ld149:
.reference _$HTMLDEFS$_Ld150
	.ascii	"strong\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld152
_$HTMLDEFS$_Ld152:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld151
.globl	_$HTMLDEFS$_Ld151
_$HTMLDEFS$_Ld151:
.reference _$HTMLDEFS$_Ld152
	.ascii	"style\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld154
_$HTMLDEFS$_Ld154:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld153
.globl	_$HTMLDEFS$_Ld153
_$HTMLDEFS$_Ld153:
.reference _$HTMLDEFS$_Ld154
	.ascii	"sub\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld156
_$HTMLDEFS$_Ld156:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld155
.globl	_$HTMLDEFS$_Ld155
_$HTMLDEFS$_Ld155:
.reference _$HTMLDEFS$_Ld156
	.ascii	"sup\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld158
_$HTMLDEFS$_Ld158:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld157
.globl	_$HTMLDEFS$_Ld157
_$HTMLDEFS$_Ld157:
.reference _$HTMLDEFS$_Ld158
	.ascii	"table\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld160
_$HTMLDEFS$_Ld160:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld159
.globl	_$HTMLDEFS$_Ld159
_$HTMLDEFS$_Ld159:
.reference _$HTMLDEFS$_Ld160
	.ascii	"tbody\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld162
_$HTMLDEFS$_Ld162:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld161
.globl	_$HTMLDEFS$_Ld161
_$HTMLDEFS$_Ld161:
.reference _$HTMLDEFS$_Ld162
	.ascii	"td\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld164
_$HTMLDEFS$_Ld164:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld163
.globl	_$HTMLDEFS$_Ld163
_$HTMLDEFS$_Ld163:
.reference _$HTMLDEFS$_Ld164
	.ascii	"textarea\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld166
_$HTMLDEFS$_Ld166:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld165
.globl	_$HTMLDEFS$_Ld165
_$HTMLDEFS$_Ld165:
.reference _$HTMLDEFS$_Ld166
	.ascii	"tfoot\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld168
_$HTMLDEFS$_Ld168:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld167
.globl	_$HTMLDEFS$_Ld167
_$HTMLDEFS$_Ld167:
.reference _$HTMLDEFS$_Ld168
	.ascii	"th\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld170
_$HTMLDEFS$_Ld170:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld169
.globl	_$HTMLDEFS$_Ld169
_$HTMLDEFS$_Ld169:
.reference _$HTMLDEFS$_Ld170
	.ascii	"thead\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld172
_$HTMLDEFS$_Ld172:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld171
.globl	_$HTMLDEFS$_Ld171
_$HTMLDEFS$_Ld171:
.reference _$HTMLDEFS$_Ld172
	.ascii	"title\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld174
_$HTMLDEFS$_Ld174:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld173
.globl	_$HTMLDEFS$_Ld173
_$HTMLDEFS$_Ld173:
.reference _$HTMLDEFS$_Ld174
	.ascii	"tr\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld176
_$HTMLDEFS$_Ld176:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld175
.globl	_$HTMLDEFS$_Ld175
_$HTMLDEFS$_Ld175:
.reference _$HTMLDEFS$_Ld176
	.ascii	"tt\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld178
_$HTMLDEFS$_Ld178:
	.short	0,1
	.long	0,-1,1
.reference _$HTMLDEFS$_Ld177
.globl	_$HTMLDEFS$_Ld177
_$HTMLDEFS$_Ld177:
.reference _$HTMLDEFS$_Ld178
	.ascii	"u\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld180
_$HTMLDEFS$_Ld180:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld179
.globl	_$HTMLDEFS$_Ld179
_$HTMLDEFS$_Ld179:
.reference _$HTMLDEFS$_Ld180
	.ascii	"ul\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld182
_$HTMLDEFS$_Ld182:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld181
.globl	_$HTMLDEFS$_Ld181
_$HTMLDEFS$_Ld181:
.reference _$HTMLDEFS$_Ld182
	.ascii	"var\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld184
_$HTMLDEFS$_Ld184:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld183
.globl	_$HTMLDEFS$_Ld183
_$HTMLDEFS$_Ld183:
.reference _$HTMLDEFS$_Ld184
	.ascii	"text\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld186
_$HTMLDEFS$_Ld186:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld185
.globl	_$HTMLDEFS$_Ld185
_$HTMLDEFS$_Ld185:
.reference _$HTMLDEFS$_Ld186
	.ascii	"unknown\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld188
_$HTMLDEFS$_Ld188:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld187
.globl	_$HTMLDEFS$_Ld187
_$HTMLDEFS$_Ld187:
.reference _$HTMLDEFS$_Ld188
	.ascii	"abbr\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld190
_$HTMLDEFS$_Ld190:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld189
.globl	_$HTMLDEFS$_Ld189
_$HTMLDEFS$_Ld189:
.reference _$HTMLDEFS$_Ld190
	.ascii	"alink\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld192
_$HTMLDEFS$_Ld192:
	.short	0,1
	.long	0,-1,14
.reference _$HTMLDEFS$_Ld191
.globl	_$HTMLDEFS$_Ld191
_$HTMLDEFS$_Ld191:
.reference _$HTMLDEFS$_Ld192
	.ascii	"accept-charset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld194
_$HTMLDEFS$_Ld194:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld193
.globl	_$HTMLDEFS$_Ld193
_$HTMLDEFS$_Ld193:
.reference _$HTMLDEFS$_Ld194
	.ascii	"accept\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld196
_$HTMLDEFS$_Ld196:
	.short	0,1
	.long	0,-1,9
.reference _$HTMLDEFS$_Ld195
.globl	_$HTMLDEFS$_Ld195
_$HTMLDEFS$_Ld195:
.reference _$HTMLDEFS$_Ld196
	.ascii	"accesskey\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld198
_$HTMLDEFS$_Ld198:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld197
.globl	_$HTMLDEFS$_Ld197
_$HTMLDEFS$_Ld197:
.reference _$HTMLDEFS$_Ld198
	.ascii	"action\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld200
_$HTMLDEFS$_Ld200:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld199
.globl	_$HTMLDEFS$_Ld199
_$HTMLDEFS$_Ld199:
.reference _$HTMLDEFS$_Ld200
	.ascii	"align\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld202
_$HTMLDEFS$_Ld202:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld201
.globl	_$HTMLDEFS$_Ld201
_$HTMLDEFS$_Ld201:
.reference _$HTMLDEFS$_Ld202
	.ascii	"alt\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld204
_$HTMLDEFS$_Ld204:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld203
.globl	_$HTMLDEFS$_Ld203
_$HTMLDEFS$_Ld203:
.reference _$HTMLDEFS$_Ld204
	.ascii	"archive\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld206
_$HTMLDEFS$_Ld206:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld205
.globl	_$HTMLDEFS$_Ld205
_$HTMLDEFS$_Ld205:
.reference _$HTMLDEFS$_Ld206
	.ascii	"axis\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld208
_$HTMLDEFS$_Ld208:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld207
.globl	_$HTMLDEFS$_Ld207
_$HTMLDEFS$_Ld207:
.reference _$HTMLDEFS$_Ld208
	.ascii	"background\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld210
_$HTMLDEFS$_Ld210:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld209
.globl	_$HTMLDEFS$_Ld209
_$HTMLDEFS$_Ld209:
.reference _$HTMLDEFS$_Ld210
	.ascii	"bgcolor\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld212
_$HTMLDEFS$_Ld212:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld211
.globl	_$HTMLDEFS$_Ld211
_$HTMLDEFS$_Ld211:
.reference _$HTMLDEFS$_Ld212
	.ascii	"border\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld214
_$HTMLDEFS$_Ld214:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld213
.globl	_$HTMLDEFS$_Ld213
_$HTMLDEFS$_Ld213:
.reference _$HTMLDEFS$_Ld214
	.ascii	"cellpadding\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld216
_$HTMLDEFS$_Ld216:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld215
.globl	_$HTMLDEFS$_Ld215
_$HTMLDEFS$_Ld215:
.reference _$HTMLDEFS$_Ld216
	.ascii	"cellspacing\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld218
_$HTMLDEFS$_Ld218:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld217
.globl	_$HTMLDEFS$_Ld217
_$HTMLDEFS$_Ld217:
.reference _$HTMLDEFS$_Ld218
	.ascii	"char\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld220
_$HTMLDEFS$_Ld220:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld219
.globl	_$HTMLDEFS$_Ld219
_$HTMLDEFS$_Ld219:
.reference _$HTMLDEFS$_Ld220
	.ascii	"charoff\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld222
_$HTMLDEFS$_Ld222:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld221
.globl	_$HTMLDEFS$_Ld221
_$HTMLDEFS$_Ld221:
.reference _$HTMLDEFS$_Ld222
	.ascii	"charset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld224
_$HTMLDEFS$_Ld224:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld223
.globl	_$HTMLDEFS$_Ld223
_$HTMLDEFS$_Ld223:
.reference _$HTMLDEFS$_Ld224
	.ascii	"checked\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld226
_$HTMLDEFS$_Ld226:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld225
.globl	_$HTMLDEFS$_Ld225
_$HTMLDEFS$_Ld225:
.reference _$HTMLDEFS$_Ld226
	.ascii	"cite\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld228
_$HTMLDEFS$_Ld228:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld227
.globl	_$HTMLDEFS$_Ld227
_$HTMLDEFS$_Ld227:
.reference _$HTMLDEFS$_Ld228
	.ascii	"class\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld230
_$HTMLDEFS$_Ld230:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld229
.globl	_$HTMLDEFS$_Ld229
_$HTMLDEFS$_Ld229:
.reference _$HTMLDEFS$_Ld230
	.ascii	"classid\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld232
_$HTMLDEFS$_Ld232:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld231
.globl	_$HTMLDEFS$_Ld231
_$HTMLDEFS$_Ld231:
.reference _$HTMLDEFS$_Ld232
	.ascii	"clear\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld234
_$HTMLDEFS$_Ld234:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld233
.globl	_$HTMLDEFS$_Ld233
_$HTMLDEFS$_Ld233:
.reference _$HTMLDEFS$_Ld234
	.ascii	"code\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld236
_$HTMLDEFS$_Ld236:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld235
.globl	_$HTMLDEFS$_Ld235
_$HTMLDEFS$_Ld235:
.reference _$HTMLDEFS$_Ld236
	.ascii	"codebase\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld238
_$HTMLDEFS$_Ld238:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld237
.globl	_$HTMLDEFS$_Ld237
_$HTMLDEFS$_Ld237:
.reference _$HTMLDEFS$_Ld238
	.ascii	"codetype\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld240
_$HTMLDEFS$_Ld240:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld239
.globl	_$HTMLDEFS$_Ld239
_$HTMLDEFS$_Ld239:
.reference _$HTMLDEFS$_Ld240
	.ascii	"color\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld242
_$HTMLDEFS$_Ld242:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld241
.globl	_$HTMLDEFS$_Ld241
_$HTMLDEFS$_Ld241:
.reference _$HTMLDEFS$_Ld242
	.ascii	"cols\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld244
_$HTMLDEFS$_Ld244:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld243
.globl	_$HTMLDEFS$_Ld243
_$HTMLDEFS$_Ld243:
.reference _$HTMLDEFS$_Ld244
	.ascii	"colspan\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld246
_$HTMLDEFS$_Ld246:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld245
.globl	_$HTMLDEFS$_Ld245
_$HTMLDEFS$_Ld245:
.reference _$HTMLDEFS$_Ld246
	.ascii	"compact\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld248
_$HTMLDEFS$_Ld248:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld247
.globl	_$HTMLDEFS$_Ld247
_$HTMLDEFS$_Ld247:
.reference _$HTMLDEFS$_Ld248
	.ascii	"content\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld250
_$HTMLDEFS$_Ld250:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld249
.globl	_$HTMLDEFS$_Ld249
_$HTMLDEFS$_Ld249:
.reference _$HTMLDEFS$_Ld250
	.ascii	"coords\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld252
_$HTMLDEFS$_Ld252:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld251
.globl	_$HTMLDEFS$_Ld251
_$HTMLDEFS$_Ld251:
.reference _$HTMLDEFS$_Ld252
	.ascii	"data\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld254
_$HTMLDEFS$_Ld254:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld253
.globl	_$HTMLDEFS$_Ld253
_$HTMLDEFS$_Ld253:
.reference _$HTMLDEFS$_Ld254
	.ascii	"datetime\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld256
_$HTMLDEFS$_Ld256:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld255
.globl	_$HTMLDEFS$_Ld255
_$HTMLDEFS$_Ld255:
.reference _$HTMLDEFS$_Ld256
	.ascii	"declare\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld258
_$HTMLDEFS$_Ld258:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld257
.globl	_$HTMLDEFS$_Ld257
_$HTMLDEFS$_Ld257:
.reference _$HTMLDEFS$_Ld258
	.ascii	"defer\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld260
_$HTMLDEFS$_Ld260:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld259
.globl	_$HTMLDEFS$_Ld259
_$HTMLDEFS$_Ld259:
.reference _$HTMLDEFS$_Ld260
	.ascii	"dir\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld262
_$HTMLDEFS$_Ld262:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld261
.globl	_$HTMLDEFS$_Ld261
_$HTMLDEFS$_Ld261:
.reference _$HTMLDEFS$_Ld262
	.ascii	"disabled\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld264
_$HTMLDEFS$_Ld264:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld263
.globl	_$HTMLDEFS$_Ld263
_$HTMLDEFS$_Ld263:
.reference _$HTMLDEFS$_Ld264
	.ascii	"enctype\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld266
_$HTMLDEFS$_Ld266:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld265
.globl	_$HTMLDEFS$_Ld265
_$HTMLDEFS$_Ld265:
.reference _$HTMLDEFS$_Ld266
	.ascii	"face\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld268
_$HTMLDEFS$_Ld268:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld267
.globl	_$HTMLDEFS$_Ld267
_$HTMLDEFS$_Ld267:
.reference _$HTMLDEFS$_Ld268
	.ascii	"for\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld270
_$HTMLDEFS$_Ld270:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld269
.globl	_$HTMLDEFS$_Ld269
_$HTMLDEFS$_Ld269:
.reference _$HTMLDEFS$_Ld270
	.ascii	"frame\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld272
_$HTMLDEFS$_Ld272:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld271
.globl	_$HTMLDEFS$_Ld271
_$HTMLDEFS$_Ld271:
.reference _$HTMLDEFS$_Ld272
	.ascii	"frameborder\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld274
_$HTMLDEFS$_Ld274:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld273
.globl	_$HTMLDEFS$_Ld273
_$HTMLDEFS$_Ld273:
.reference _$HTMLDEFS$_Ld274
	.ascii	"headers\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld276
_$HTMLDEFS$_Ld276:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld275
.globl	_$HTMLDEFS$_Ld275
_$HTMLDEFS$_Ld275:
.reference _$HTMLDEFS$_Ld276
	.ascii	"height\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld278
_$HTMLDEFS$_Ld278:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld277
.globl	_$HTMLDEFS$_Ld277
_$HTMLDEFS$_Ld277:
.reference _$HTMLDEFS$_Ld278
	.ascii	"href\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld280
_$HTMLDEFS$_Ld280:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld279
.globl	_$HTMLDEFS$_Ld279
_$HTMLDEFS$_Ld279:
.reference _$HTMLDEFS$_Ld280
	.ascii	"hreflang\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld282
_$HTMLDEFS$_Ld282:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld281
.globl	_$HTMLDEFS$_Ld281
_$HTMLDEFS$_Ld281:
.reference _$HTMLDEFS$_Ld282
	.ascii	"hspace\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld284
_$HTMLDEFS$_Ld284:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld283
.globl	_$HTMLDEFS$_Ld283
_$HTMLDEFS$_Ld283:
.reference _$HTMLDEFS$_Ld284
	.ascii	"http-equiv\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld286
_$HTMLDEFS$_Ld286:
	.short	0,1
	.long	0,-1,2
.reference _$HTMLDEFS$_Ld285
.globl	_$HTMLDEFS$_Ld285
_$HTMLDEFS$_Ld285:
.reference _$HTMLDEFS$_Ld286
	.ascii	"id\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld288
_$HTMLDEFS$_Ld288:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld287
.globl	_$HTMLDEFS$_Ld287
_$HTMLDEFS$_Ld287:
.reference _$HTMLDEFS$_Ld288
	.ascii	"ismap\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld290
_$HTMLDEFS$_Ld290:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld289
.globl	_$HTMLDEFS$_Ld289
_$HTMLDEFS$_Ld289:
.reference _$HTMLDEFS$_Ld290
	.ascii	"label\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld292
_$HTMLDEFS$_Ld292:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld291
.globl	_$HTMLDEFS$_Ld291
_$HTMLDEFS$_Ld291:
.reference _$HTMLDEFS$_Ld292
	.ascii	"lang\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld294
_$HTMLDEFS$_Ld294:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld293
.globl	_$HTMLDEFS$_Ld293
_$HTMLDEFS$_Ld293:
.reference _$HTMLDEFS$_Ld294
	.ascii	"link\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld296
_$HTMLDEFS$_Ld296:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld295
.globl	_$HTMLDEFS$_Ld295
_$HTMLDEFS$_Ld295:
.reference _$HTMLDEFS$_Ld296
	.ascii	"longdesc\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld298
_$HTMLDEFS$_Ld298:
	.short	0,1
	.long	0,-1,12
.reference _$HTMLDEFS$_Ld297
.globl	_$HTMLDEFS$_Ld297
_$HTMLDEFS$_Ld297:
.reference _$HTMLDEFS$_Ld298
	.ascii	"marginheight\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld300
_$HTMLDEFS$_Ld300:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld299
.globl	_$HTMLDEFS$_Ld299
_$HTMLDEFS$_Ld299:
.reference _$HTMLDEFS$_Ld300
	.ascii	"marginwidth\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld302
_$HTMLDEFS$_Ld302:
	.short	0,1
	.long	0,-1,9
.reference _$HTMLDEFS$_Ld301
.globl	_$HTMLDEFS$_Ld301
_$HTMLDEFS$_Ld301:
.reference _$HTMLDEFS$_Ld302
	.ascii	"maxlength\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld304
_$HTMLDEFS$_Ld304:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld303
.globl	_$HTMLDEFS$_Ld303
_$HTMLDEFS$_Ld303:
.reference _$HTMLDEFS$_Ld304
	.ascii	"media\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld306
_$HTMLDEFS$_Ld306:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld305
.globl	_$HTMLDEFS$_Ld305
_$HTMLDEFS$_Ld305:
.reference _$HTMLDEFS$_Ld306
	.ascii	"method\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld308
_$HTMLDEFS$_Ld308:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld307
.globl	_$HTMLDEFS$_Ld307
_$HTMLDEFS$_Ld307:
.reference _$HTMLDEFS$_Ld308
	.ascii	"multiple\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld310
_$HTMLDEFS$_Ld310:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld309
.globl	_$HTMLDEFS$_Ld309
_$HTMLDEFS$_Ld309:
.reference _$HTMLDEFS$_Ld310
	.ascii	"name\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld312
_$HTMLDEFS$_Ld312:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld311
.globl	_$HTMLDEFS$_Ld311
_$HTMLDEFS$_Ld311:
.reference _$HTMLDEFS$_Ld312
	.ascii	"nohref\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld314
_$HTMLDEFS$_Ld314:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld313
.globl	_$HTMLDEFS$_Ld313
_$HTMLDEFS$_Ld313:
.reference _$HTMLDEFS$_Ld314
	.ascii	"noresize\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld316
_$HTMLDEFS$_Ld316:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld315
.globl	_$HTMLDEFS$_Ld315
_$HTMLDEFS$_Ld315:
.reference _$HTMLDEFS$_Ld316
	.ascii	"noshade\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld318
_$HTMLDEFS$_Ld318:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld317
.globl	_$HTMLDEFS$_Ld317
_$HTMLDEFS$_Ld317:
.reference _$HTMLDEFS$_Ld318
	.ascii	"nowrap\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld320
_$HTMLDEFS$_Ld320:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld319
.globl	_$HTMLDEFS$_Ld319
_$HTMLDEFS$_Ld319:
.reference _$HTMLDEFS$_Ld320
	.ascii	"object\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld322
_$HTMLDEFS$_Ld322:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld321
.globl	_$HTMLDEFS$_Ld321
_$HTMLDEFS$_Ld321:
.reference _$HTMLDEFS$_Ld322
	.ascii	"onblur\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld324
_$HTMLDEFS$_Ld324:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld323
.globl	_$HTMLDEFS$_Ld323
_$HTMLDEFS$_Ld323:
.reference _$HTMLDEFS$_Ld324
	.ascii	"onchange\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld326
_$HTMLDEFS$_Ld326:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld325
.globl	_$HTMLDEFS$_Ld325
_$HTMLDEFS$_Ld325:
.reference _$HTMLDEFS$_Ld326
	.ascii	"onclick\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld328
_$HTMLDEFS$_Ld328:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld327
.globl	_$HTMLDEFS$_Ld327
_$HTMLDEFS$_Ld327:
.reference _$HTMLDEFS$_Ld328
	.ascii	"ondblclick\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld330
_$HTMLDEFS$_Ld330:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld329
.globl	_$HTMLDEFS$_Ld329
_$HTMLDEFS$_Ld329:
.reference _$HTMLDEFS$_Ld330
	.ascii	"onfocus\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld332
_$HTMLDEFS$_Ld332:
	.short	0,1
	.long	0,-1,9
.reference _$HTMLDEFS$_Ld331
.globl	_$HTMLDEFS$_Ld331
_$HTMLDEFS$_Ld331:
.reference _$HTMLDEFS$_Ld332
	.ascii	"onkeydown\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld334
_$HTMLDEFS$_Ld334:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld333
.globl	_$HTMLDEFS$_Ld333
_$HTMLDEFS$_Ld333:
.reference _$HTMLDEFS$_Ld334
	.ascii	"onkeypress\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld336
_$HTMLDEFS$_Ld336:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld335
.globl	_$HTMLDEFS$_Ld335
_$HTMLDEFS$_Ld335:
.reference _$HTMLDEFS$_Ld336
	.ascii	"onkeyup\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld338
_$HTMLDEFS$_Ld338:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld337
.globl	_$HTMLDEFS$_Ld337
_$HTMLDEFS$_Ld337:
.reference _$HTMLDEFS$_Ld338
	.ascii	"onload\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld340
_$HTMLDEFS$_Ld340:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld339
.globl	_$HTMLDEFS$_Ld339
_$HTMLDEFS$_Ld339:
.reference _$HTMLDEFS$_Ld340
	.ascii	"onmousedown\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld342
_$HTMLDEFS$_Ld342:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld341
.globl	_$HTMLDEFS$_Ld341
_$HTMLDEFS$_Ld341:
.reference _$HTMLDEFS$_Ld342
	.ascii	"onmousemove\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld344
_$HTMLDEFS$_Ld344:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld343
.globl	_$HTMLDEFS$_Ld343
_$HTMLDEFS$_Ld343:
.reference _$HTMLDEFS$_Ld344
	.ascii	"onmouseout\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld346
_$HTMLDEFS$_Ld346:
	.short	0,1
	.long	0,-1,11
.reference _$HTMLDEFS$_Ld345
.globl	_$HTMLDEFS$_Ld345
_$HTMLDEFS$_Ld345:
.reference _$HTMLDEFS$_Ld346
	.ascii	"onmouseover\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld348
_$HTMLDEFS$_Ld348:
	.short	0,1
	.long	0,-1,9
.reference _$HTMLDEFS$_Ld347
.globl	_$HTMLDEFS$_Ld347
_$HTMLDEFS$_Ld347:
.reference _$HTMLDEFS$_Ld348
	.ascii	"onmouseup\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld350
_$HTMLDEFS$_Ld350:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld349
.globl	_$HTMLDEFS$_Ld349
_$HTMLDEFS$_Ld349:
.reference _$HTMLDEFS$_Ld350
	.ascii	"onreset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld352
_$HTMLDEFS$_Ld352:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld351
.globl	_$HTMLDEFS$_Ld351
_$HTMLDEFS$_Ld351:
.reference _$HTMLDEFS$_Ld352
	.ascii	"onselect\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld354
_$HTMLDEFS$_Ld354:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld353
.globl	_$HTMLDEFS$_Ld353
_$HTMLDEFS$_Ld353:
.reference _$HTMLDEFS$_Ld354
	.ascii	"onsubmit\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld356
_$HTMLDEFS$_Ld356:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld355
.globl	_$HTMLDEFS$_Ld355
_$HTMLDEFS$_Ld355:
.reference _$HTMLDEFS$_Ld356
	.ascii	"onunload\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld358
_$HTMLDEFS$_Ld358:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld357
.globl	_$HTMLDEFS$_Ld357
_$HTMLDEFS$_Ld357:
.reference _$HTMLDEFS$_Ld358
	.ascii	"profile\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld360
_$HTMLDEFS$_Ld360:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld359
.globl	_$HTMLDEFS$_Ld359
_$HTMLDEFS$_Ld359:
.reference _$HTMLDEFS$_Ld360
	.ascii	"prompt\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld362
_$HTMLDEFS$_Ld362:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld361
.globl	_$HTMLDEFS$_Ld361
_$HTMLDEFS$_Ld361:
.reference _$HTMLDEFS$_Ld362
	.ascii	"readonly\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld364
_$HTMLDEFS$_Ld364:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld363
.globl	_$HTMLDEFS$_Ld363
_$HTMLDEFS$_Ld363:
.reference _$HTMLDEFS$_Ld364
	.ascii	"rel\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld366
_$HTMLDEFS$_Ld366:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld365
.globl	_$HTMLDEFS$_Ld365
_$HTMLDEFS$_Ld365:
.reference _$HTMLDEFS$_Ld366
	.ascii	"rev\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld368
_$HTMLDEFS$_Ld368:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld367
.globl	_$HTMLDEFS$_Ld367
_$HTMLDEFS$_Ld367:
.reference _$HTMLDEFS$_Ld368
	.ascii	"rows\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld370
_$HTMLDEFS$_Ld370:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld369
.globl	_$HTMLDEFS$_Ld369
_$HTMLDEFS$_Ld369:
.reference _$HTMLDEFS$_Ld370
	.ascii	"rowspan\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld372
_$HTMLDEFS$_Ld372:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld371
.globl	_$HTMLDEFS$_Ld371
_$HTMLDEFS$_Ld371:
.reference _$HTMLDEFS$_Ld372
	.ascii	"rules\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld374
_$HTMLDEFS$_Ld374:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld373
.globl	_$HTMLDEFS$_Ld373
_$HTMLDEFS$_Ld373:
.reference _$HTMLDEFS$_Ld374
	.ascii	"scheme\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld376
_$HTMLDEFS$_Ld376:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld375
.globl	_$HTMLDEFS$_Ld375
_$HTMLDEFS$_Ld375:
.reference _$HTMLDEFS$_Ld376
	.ascii	"scope\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld378
_$HTMLDEFS$_Ld378:
	.short	0,1
	.long	0,-1,9
.reference _$HTMLDEFS$_Ld377
.globl	_$HTMLDEFS$_Ld377
_$HTMLDEFS$_Ld377:
.reference _$HTMLDEFS$_Ld378
	.ascii	"scrolling\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld380
_$HTMLDEFS$_Ld380:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld379
.globl	_$HTMLDEFS$_Ld379
_$HTMLDEFS$_Ld379:
.reference _$HTMLDEFS$_Ld380
	.ascii	"selected\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld382
_$HTMLDEFS$_Ld382:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld381
.globl	_$HTMLDEFS$_Ld381
_$HTMLDEFS$_Ld381:
.reference _$HTMLDEFS$_Ld382
	.ascii	"shape\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld384
_$HTMLDEFS$_Ld384:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld383
.globl	_$HTMLDEFS$_Ld383
_$HTMLDEFS$_Ld383:
.reference _$HTMLDEFS$_Ld384
	.ascii	"size\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld386
_$HTMLDEFS$_Ld386:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld385
.globl	_$HTMLDEFS$_Ld385
_$HTMLDEFS$_Ld385:
.reference _$HTMLDEFS$_Ld386
	.ascii	"span\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld388
_$HTMLDEFS$_Ld388:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld387
.globl	_$HTMLDEFS$_Ld387
_$HTMLDEFS$_Ld387:
.reference _$HTMLDEFS$_Ld388
	.ascii	"src\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld390
_$HTMLDEFS$_Ld390:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld389
.globl	_$HTMLDEFS$_Ld389
_$HTMLDEFS$_Ld389:
.reference _$HTMLDEFS$_Ld390
	.ascii	"standby\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld392
_$HTMLDEFS$_Ld392:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld391
.globl	_$HTMLDEFS$_Ld391
_$HTMLDEFS$_Ld391:
.reference _$HTMLDEFS$_Ld392
	.ascii	"start\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld394
_$HTMLDEFS$_Ld394:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld393
.globl	_$HTMLDEFS$_Ld393
_$HTMLDEFS$_Ld393:
.reference _$HTMLDEFS$_Ld394
	.ascii	"style\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld396
_$HTMLDEFS$_Ld396:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld395
.globl	_$HTMLDEFS$_Ld395
_$HTMLDEFS$_Ld395:
.reference _$HTMLDEFS$_Ld396
	.ascii	"summary\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld398
_$HTMLDEFS$_Ld398:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld397
.globl	_$HTMLDEFS$_Ld397
_$HTMLDEFS$_Ld397:
.reference _$HTMLDEFS$_Ld398
	.ascii	"tabindex\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld400
_$HTMLDEFS$_Ld400:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld399
.globl	_$HTMLDEFS$_Ld399
_$HTMLDEFS$_Ld399:
.reference _$HTMLDEFS$_Ld400
	.ascii	"target\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld402
_$HTMLDEFS$_Ld402:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld401
.globl	_$HTMLDEFS$_Ld401
_$HTMLDEFS$_Ld401:
.reference _$HTMLDEFS$_Ld402
	.ascii	"text\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld404
_$HTMLDEFS$_Ld404:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld403
.globl	_$HTMLDEFS$_Ld403
_$HTMLDEFS$_Ld403:
.reference _$HTMLDEFS$_Ld404
	.ascii	"title\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld406
_$HTMLDEFS$_Ld406:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld405
.globl	_$HTMLDEFS$_Ld405
_$HTMLDEFS$_Ld405:
.reference _$HTMLDEFS$_Ld406
	.ascii	"type\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld408
_$HTMLDEFS$_Ld408:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld407
.globl	_$HTMLDEFS$_Ld407
_$HTMLDEFS$_Ld407:
.reference _$HTMLDEFS$_Ld408
	.ascii	"usemap\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld410
_$HTMLDEFS$_Ld410:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld409
.globl	_$HTMLDEFS$_Ld409
_$HTMLDEFS$_Ld409:
.reference _$HTMLDEFS$_Ld410
	.ascii	"valign\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld412
_$HTMLDEFS$_Ld412:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld411
.globl	_$HTMLDEFS$_Ld411
_$HTMLDEFS$_Ld411:
.reference _$HTMLDEFS$_Ld412
	.ascii	"value\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld414
_$HTMLDEFS$_Ld414:
	.short	0,1
	.long	0,-1,9
.reference _$HTMLDEFS$_Ld413
.globl	_$HTMLDEFS$_Ld413
_$HTMLDEFS$_Ld413:
.reference _$HTMLDEFS$_Ld414
	.ascii	"valuetype\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld416
_$HTMLDEFS$_Ld416:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld415
.globl	_$HTMLDEFS$_Ld415
_$HTMLDEFS$_Ld415:
.reference _$HTMLDEFS$_Ld416
	.ascii	"version\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld418
_$HTMLDEFS$_Ld418:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld417
.globl	_$HTMLDEFS$_Ld417
_$HTMLDEFS$_Ld417:
.reference _$HTMLDEFS$_Ld418
	.ascii	"vlink\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld420
_$HTMLDEFS$_Ld420:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld419
.globl	_$HTMLDEFS$_Ld419
_$HTMLDEFS$_Ld419:
.reference _$HTMLDEFS$_Ld420
	.ascii	"vspace\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld422
_$HTMLDEFS$_Ld422:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld421
.globl	_$HTMLDEFS$_Ld421
_$HTMLDEFS$_Ld421:
.reference _$HTMLDEFS$_Ld422
	.ascii	"width\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld424
_$HTMLDEFS$_Ld424:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld423
.globl	_$HTMLDEFS$_Ld423
_$HTMLDEFS$_Ld423:
.reference _$HTMLDEFS$_Ld424
	.ascii	"Black\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld426
_$HTMLDEFS$_Ld426:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld425
.globl	_$HTMLDEFS$_Ld425
_$HTMLDEFS$_Ld425:
.reference _$HTMLDEFS$_Ld426
	.ascii	"Silver\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld428
_$HTMLDEFS$_Ld428:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld427
.globl	_$HTMLDEFS$_Ld427
_$HTMLDEFS$_Ld427:
.reference _$HTMLDEFS$_Ld428
	.ascii	"Gray\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld430
_$HTMLDEFS$_Ld430:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld429
.globl	_$HTMLDEFS$_Ld429
_$HTMLDEFS$_Ld429:
.reference _$HTMLDEFS$_Ld430
	.ascii	"White\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld432
_$HTMLDEFS$_Ld432:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld431
.globl	_$HTMLDEFS$_Ld431
_$HTMLDEFS$_Ld431:
.reference _$HTMLDEFS$_Ld432
	.ascii	"Maroon\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld434
_$HTMLDEFS$_Ld434:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld433
.globl	_$HTMLDEFS$_Ld433
_$HTMLDEFS$_Ld433:
.reference _$HTMLDEFS$_Ld434
	.ascii	"Red\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld436
_$HTMLDEFS$_Ld436:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld435
.globl	_$HTMLDEFS$_Ld435
_$HTMLDEFS$_Ld435:
.reference _$HTMLDEFS$_Ld436
	.ascii	"Purple\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld438
_$HTMLDEFS$_Ld438:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld437
.globl	_$HTMLDEFS$_Ld437
_$HTMLDEFS$_Ld437:
.reference _$HTMLDEFS$_Ld438
	.ascii	"Fuchsia\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld440
_$HTMLDEFS$_Ld440:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld439
.globl	_$HTMLDEFS$_Ld439
_$HTMLDEFS$_Ld439:
.reference _$HTMLDEFS$_Ld440
	.ascii	"Green\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld442
_$HTMLDEFS$_Ld442:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld441
.globl	_$HTMLDEFS$_Ld441
_$HTMLDEFS$_Ld441:
.reference _$HTMLDEFS$_Ld442
	.ascii	"Lime\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld444
_$HTMLDEFS$_Ld444:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld443
.globl	_$HTMLDEFS$_Ld443
_$HTMLDEFS$_Ld443:
.reference _$HTMLDEFS$_Ld444
	.ascii	"Olive\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld446
_$HTMLDEFS$_Ld446:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld445
.globl	_$HTMLDEFS$_Ld445
_$HTMLDEFS$_Ld445:
.reference _$HTMLDEFS$_Ld446
	.ascii	"Yellow\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld448
_$HTMLDEFS$_Ld448:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld447
.globl	_$HTMLDEFS$_Ld447
_$HTMLDEFS$_Ld447:
.reference _$HTMLDEFS$_Ld448
	.ascii	"Navy\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld450
_$HTMLDEFS$_Ld450:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld449
.globl	_$HTMLDEFS$_Ld449
_$HTMLDEFS$_Ld449:
.reference _$HTMLDEFS$_Ld450
	.ascii	"Blue\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld452
_$HTMLDEFS$_Ld452:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld451
.globl	_$HTMLDEFS$_Ld451
_$HTMLDEFS$_Ld451:
.reference _$HTMLDEFS$_Ld452
	.ascii	"Teal\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld454
_$HTMLDEFS$_Ld454:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld453
.globl	_$HTMLDEFS$_Ld453
_$HTMLDEFS$_Ld453:
.reference _$HTMLDEFS$_Ld454
	.ascii	"Aqua\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld456
_$HTMLDEFS$_Ld456:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld455
.globl	_$HTMLDEFS$_Ld455
_$HTMLDEFS$_Ld455:
.reference _$HTMLDEFS$_Ld456
	.ascii	"LTR\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld458
_$HTMLDEFS$_Ld458:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld457
.globl	_$HTMLDEFS$_Ld457
_$HTMLDEFS$_Ld457:
.reference _$HTMLDEFS$_Ld458
	.ascii	"RTL\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld460
_$HTMLDEFS$_Ld460:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld459
.globl	_$HTMLDEFS$_Ld459
_$HTMLDEFS$_Ld459:
.reference _$HTMLDEFS$_Ld460
	.ascii	"left\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld462
_$HTMLDEFS$_Ld462:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld461
.globl	_$HTMLDEFS$_Ld461
_$HTMLDEFS$_Ld461:
.reference _$HTMLDEFS$_Ld462
	.ascii	"center\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld464
_$HTMLDEFS$_Ld464:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld463
.globl	_$HTMLDEFS$_Ld463
_$HTMLDEFS$_Ld463:
.reference _$HTMLDEFS$_Ld464
	.ascii	"right\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld466
_$HTMLDEFS$_Ld466:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld465
.globl	_$HTMLDEFS$_Ld465
_$HTMLDEFS$_Ld465:
.reference _$HTMLDEFS$_Ld466
	.ascii	"justify\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld468
_$HTMLDEFS$_Ld468:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld467
.globl	_$HTMLDEFS$_Ld467
_$HTMLDEFS$_Ld467:
.reference _$HTMLDEFS$_Ld468
	.ascii	"char\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld470
_$HTMLDEFS$_Ld470:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld469
.globl	_$HTMLDEFS$_Ld469
_$HTMLDEFS$_Ld469:
.reference _$HTMLDEFS$_Ld470
	.ascii	"top\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld472
_$HTMLDEFS$_Ld472:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld471
.globl	_$HTMLDEFS$_Ld471
_$HTMLDEFS$_Ld471:
.reference _$HTMLDEFS$_Ld472
	.ascii	"middle\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld474
_$HTMLDEFS$_Ld474:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld473
.globl	_$HTMLDEFS$_Ld473
_$HTMLDEFS$_Ld473:
.reference _$HTMLDEFS$_Ld474
	.ascii	"bottom\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld476
_$HTMLDEFS$_Ld476:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld475
.globl	_$HTMLDEFS$_Ld475
_$HTMLDEFS$_Ld475:
.reference _$HTMLDEFS$_Ld476
	.ascii	"baseline\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld478
_$HTMLDEFS$_Ld478:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld477
.globl	_$HTMLDEFS$_Ld477
_$HTMLDEFS$_Ld477:
.reference _$HTMLDEFS$_Ld478
	.ascii	"void\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld480
_$HTMLDEFS$_Ld480:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld479
.globl	_$HTMLDEFS$_Ld479
_$HTMLDEFS$_Ld479:
.reference _$HTMLDEFS$_Ld480
	.ascii	"above\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld482
_$HTMLDEFS$_Ld482:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld481
.globl	_$HTMLDEFS$_Ld481
_$HTMLDEFS$_Ld481:
.reference _$HTMLDEFS$_Ld482
	.ascii	"below\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld484
_$HTMLDEFS$_Ld484:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld483
.globl	_$HTMLDEFS$_Ld483
_$HTMLDEFS$_Ld483:
.reference _$HTMLDEFS$_Ld484
	.ascii	"hsides\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld486
_$HTMLDEFS$_Ld486:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld485
.globl	_$HTMLDEFS$_Ld485
_$HTMLDEFS$_Ld485:
.reference _$HTMLDEFS$_Ld486
	.ascii	"vsides\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld488
_$HTMLDEFS$_Ld488:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld487
.globl	_$HTMLDEFS$_Ld487
_$HTMLDEFS$_Ld487:
.reference _$HTMLDEFS$_Ld488
	.ascii	"lhs\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld490
_$HTMLDEFS$_Ld490:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld489
.globl	_$HTMLDEFS$_Ld489
_$HTMLDEFS$_Ld489:
.reference _$HTMLDEFS$_Ld490
	.ascii	"rhs\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld492
_$HTMLDEFS$_Ld492:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld491
.globl	_$HTMLDEFS$_Ld491
_$HTMLDEFS$_Ld491:
.reference _$HTMLDEFS$_Ld492
	.ascii	"box\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld494
_$HTMLDEFS$_Ld494:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld493
.globl	_$HTMLDEFS$_Ld493
_$HTMLDEFS$_Ld493:
.reference _$HTMLDEFS$_Ld494
	.ascii	"border\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld496
_$HTMLDEFS$_Ld496:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld495
.globl	_$HTMLDEFS$_Ld495
_$HTMLDEFS$_Ld495:
.reference _$HTMLDEFS$_Ld496
	.ascii	"none\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld498
_$HTMLDEFS$_Ld498:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld497
.globl	_$HTMLDEFS$_Ld497
_$HTMLDEFS$_Ld497:
.reference _$HTMLDEFS$_Ld498
	.ascii	"groups\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld500
_$HTMLDEFS$_Ld500:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld499
.globl	_$HTMLDEFS$_Ld499
_$HTMLDEFS$_Ld499:
.reference _$HTMLDEFS$_Ld500
	.ascii	"rows\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld502
_$HTMLDEFS$_Ld502:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld501
.globl	_$HTMLDEFS$_Ld501
_$HTMLDEFS$_Ld501:
.reference _$HTMLDEFS$_Ld502
	.ascii	"cols\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld504
_$HTMLDEFS$_Ld504:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld503
.globl	_$HTMLDEFS$_Ld503
_$HTMLDEFS$_Ld503:
.reference _$HTMLDEFS$_Ld504
	.ascii	"all\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld506
_$HTMLDEFS$_Ld506:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld505
.globl	_$HTMLDEFS$_Ld505
_$HTMLDEFS$_Ld505:
.reference _$HTMLDEFS$_Ld506
	.ascii	"data\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld508
_$HTMLDEFS$_Ld508:
	.short	0,1
	.long	0,-1,3
.reference _$HTMLDEFS$_Ld507
.globl	_$HTMLDEFS$_Ld507
_$HTMLDEFS$_Ld507:
.reference _$HTMLDEFS$_Ld508
	.ascii	"ref\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld510
_$HTMLDEFS$_Ld510:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld509
.globl	_$HTMLDEFS$_Ld509
_$HTMLDEFS$_Ld509:
.reference _$HTMLDEFS$_Ld510
	.ascii	"object\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld512
_$HTMLDEFS$_Ld512:
	.short	0,1
	.long	0,-1,7
.reference _$HTMLDEFS$_Ld511
.globl	_$HTMLDEFS$_Ld511
_$HTMLDEFS$_Ld511:
.reference _$HTMLDEFS$_Ld512
	.ascii	"default\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld514
_$HTMLDEFS$_Ld514:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld513
.globl	_$HTMLDEFS$_Ld513
_$HTMLDEFS$_Ld513:
.reference _$HTMLDEFS$_Ld514
	.ascii	"rect\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld516
_$HTMLDEFS$_Ld516:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld515
.globl	_$HTMLDEFS$_Ld515
_$HTMLDEFS$_Ld515:
.reference _$HTMLDEFS$_Ld516
	.ascii	"circle\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld518
_$HTMLDEFS$_Ld518:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld517
.globl	_$HTMLDEFS$_Ld517
_$HTMLDEFS$_Ld517:
.reference _$HTMLDEFS$_Ld518
	.ascii	"poly\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld520
_$HTMLDEFS$_Ld520:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld519
.globl	_$HTMLDEFS$_Ld519
_$HTMLDEFS$_Ld519:
.reference _$HTMLDEFS$_Ld520
	.ascii	"text\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld522
_$HTMLDEFS$_Ld522:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld521
.globl	_$HTMLDEFS$_Ld521
_$HTMLDEFS$_Ld521:
.reference _$HTMLDEFS$_Ld522
	.ascii	"password\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld524
_$HTMLDEFS$_Ld524:
	.short	0,1
	.long	0,-1,8
.reference _$HTMLDEFS$_Ld523
.globl	_$HTMLDEFS$_Ld523
_$HTMLDEFS$_Ld523:
.reference _$HTMLDEFS$_Ld524
	.ascii	"checkbox\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld526
_$HTMLDEFS$_Ld526:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld525
.globl	_$HTMLDEFS$_Ld525
_$HTMLDEFS$_Ld525:
.reference _$HTMLDEFS$_Ld526
	.ascii	"radio\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld528
_$HTMLDEFS$_Ld528:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld527
.globl	_$HTMLDEFS$_Ld527
_$HTMLDEFS$_Ld527:
.reference _$HTMLDEFS$_Ld528
	.ascii	"submit\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld530
_$HTMLDEFS$_Ld530:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld529
.globl	_$HTMLDEFS$_Ld529
_$HTMLDEFS$_Ld529:
.reference _$HTMLDEFS$_Ld530
	.ascii	"reset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld532
_$HTMLDEFS$_Ld532:
	.short	0,1
	.long	0,-1,4
.reference _$HTMLDEFS$_Ld531
.globl	_$HTMLDEFS$_Ld531
_$HTMLDEFS$_Ld531:
.reference _$HTMLDEFS$_Ld532
	.ascii	"file\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld534
_$HTMLDEFS$_Ld534:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld533
.globl	_$HTMLDEFS$_Ld533
_$HTMLDEFS$_Ld533:
.reference _$HTMLDEFS$_Ld534
	.ascii	"hidden\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld536
_$HTMLDEFS$_Ld536:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld535
.globl	_$HTMLDEFS$_Ld535
_$HTMLDEFS$_Ld535:
.reference _$HTMLDEFS$_Ld536
	.ascii	"image\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld538
_$HTMLDEFS$_Ld538:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld537
.globl	_$HTMLDEFS$_Ld537
_$HTMLDEFS$_Ld537:
.reference _$HTMLDEFS$_Ld538
	.ascii	"button\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld540
_$HTMLDEFS$_Ld540:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld539
.globl	_$HTMLDEFS$_Ld539
_$HTMLDEFS$_Ld539:
.reference _$HTMLDEFS$_Ld540
	.ascii	"submit\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld542
_$HTMLDEFS$_Ld542:
	.short	0,1
	.long	0,-1,5
.reference _$HTMLDEFS$_Ld541
.globl	_$HTMLDEFS$_Ld541
_$HTMLDEFS$_Ld541:
.reference _$HTMLDEFS$_Ld542
	.ascii	"reset\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld544
_$HTMLDEFS$_Ld544:
	.short	0,1
	.long	0,-1,6
.reference _$HTMLDEFS$_Ld543
.globl	_$HTMLDEFS$_Ld543
_$HTMLDEFS$_Ld543:
.reference _$HTMLDEFS$_Ld544
	.ascii	"button\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld546
_$HTMLDEFS$_Ld546:
	.short	0,1
	.long	0,-1,60
.reference _$HTMLDEFS$_Ld545
.globl	_$HTMLDEFS$_Ld545
_$HTMLDEFS$_Ld545:
.reference _$HTMLDEFS$_Ld546
	.ascii	"\003\234Mu\003\235Nu\003\240Pi\003\236Xi\"ege\000>g"
	.ascii	"t\"dle\000<lt\003\274mu\"`ne\"\013ni\003\275nu\"(or"
	.ascii	"\003\300pi\003\276xi\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld548
_$HTMLDEFS$_Ld548:
	.short	0,1
	.long	0,-1,175
.reference _$HTMLDEFS$_Ld547
.globl	_$HTMLDEFS$_Ld547
_$HTMLDEFS$_Ld547:
.reference _$HTMLDEFS$_Ld548
	.ascii	"\003\247Chi\000\320ETH\003\227Eta\003\246Phi\003\250"
	.ascii	"Psi\003\241Rho\003\244Tau\000&amp\"'and\" ang\")cap"
	.ascii	"\003\307chi\"*cup\000\260deg\003\267eta\000\360eth\""
	.ascii	"+int%\312loz \016lrm\000\254not\003\306phi\003\326p"
	.ascii	"iv\003\310psi\000\256reg\003\301rho \017rlm\000\255"
	.ascii	"shy\"<sim\"\202sub\"\021sum\"\203sup\003\304tau\000"
	.ascii	"\250uml\000\245yen \015zwj\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld550
_$HTMLDEFS$_Ld550:
	.short	0,1
	.long	0,-1,360
.reference _$HTMLDEFS$_Ld549
.globl	_$HTMLDEFS$_Ld549
_$HTMLDEFS$_Ld549:
.reference _$HTMLDEFS$_Ld550
	.ascii	"\000\304Auml\003\222Beta\000\313Euml\003\231Iota\000"
	.ascii	"\317Iuml\000\326Ouml\000\334Uuml\001xYuml\003\226Ze"
	.ascii	"ta\000\344auml\003\262beta \"bull\000\242cent\002\306"
	.ascii	"circ\"Econg\000\251copy!\323dArr!\223darr \003emsp "
	.ascii	"\002ensp\000\353euml \254euro\001\222fnof!\324hArr!"
	.ascii	"\224harr\003\271iota\"\010isin\000\357iuml!\320lArr"
	.ascii	"#)lang!\220larr\000\257macr\000\240nbsp\"\204nsub\000"
	.ascii	"\252ordf\000\272ordm\000\366ouml\000\266para\"\002p"
	.ascii	"art\"\245perp\"\017prod\"\035prop\000\"quot!\322rAr"
	.ascii	"r#*rang!\222rarr!\034real\"\305sdot\000\247sect\"\206"
	.ascii	"sube\000\271sup1\000\262sup2\000\263sup3\"\207supe!"
	.ascii	"\321uArr!\221uarr\000\374uuml\000\377yuml\003\266ze"
	.ascii	"ta \014zwnj\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld552
_$HTMLDEFS$_Ld552:
	.short	0,1
	.long	0,-1,504
.reference _$HTMLDEFS$_Ld551
.globl	_$HTMLDEFS$_Ld551
_$HTMLDEFS$_Ld551:
.reference _$HTMLDEFS$_Ld552
	.ascii	"\000\306AElig\000\302Acirc\003\221Alpha\000\305Arin"
	.ascii	"g\003\224Delta\000\312Ecirc\003\223Gamma\000\316Ici"
	.ascii	"rc\003\232Kappa\001ROElig\000\324Ocirc\003\251Omega"
	.ascii	" 3Prime\003\243Sigma\000\336THORN\003\230Theta\000\333"
	.ascii	"Ucirc\000\342acirc\000\264acute\000\346aelig\003\261"
	.ascii	"alpha\000\345aring\"Hasymp \036bdquo\000\270cedil&c"
	.ascii	"clubs!\265crarr\003\264delta&fdiams\000\352ecirc\"\005"
	.ascii	"empty\"aequiv\"\003exist Dfrasl\003\263gamma\000\356"
	.ascii	"icirc\000\241iexcl!\021image\"\036infin\003\272kapp"
	.ascii	"a\000\253laquo#\010lceil \034ldquo \030lsquo \024md"
	.ascii	"ash\000\265micro\"\022minus\"\007nabla \023ndash\"\011"
	.ascii	"notin\000\364ocirc\001Soelig >oline\003\311omega\"\225"
	.ascii	"oplus\000\243pound 2prime\"\032radic\000\273raquo#\011"
	.ascii	"rceil \035rdquo \031rsquo \032sbquo\003\303sigma\000"
	.ascii	"\337szlig\003\270theta\000\376thorn\002\334tilde\000"
	.ascii	"\327times!\"trade\000\373ucirc\003\322upsih\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld554
_$HTMLDEFS$_Ld554:
	.short	0,1
	.long	0,-1,496
.reference _$HTMLDEFS$_Ld553
.globl	_$HTMLDEFS$_Ld553
_$HTMLDEFS$_Ld553:
.reference _$HTMLDEFS$_Ld554
	.ascii	"\000\301Aacute\000\300Agrave\000\303Atilde\000\307C"
	.ascii	"cedil !Dagger\000\311Eacute\000\310Egrave\000\315Ia"
	.ascii	"cute\000\314Igrave\003\233Lambda\000\321Ntilde\000\323"
	.ascii	"Oacute\000\322Ograve\000\330Oslash\000\325Otilde\001"
	.ascii	"`Scaron\000\332Uacute\000\331Ugrave\000\335Yacute\000"
	.ascii	"\341aacute\000\340agrave\000\343atilde\000\246brvba"
	.ascii	"r\000\347ccedil\000\244curren  dagger\000\367divide"
	.ascii	"\000\351eacute\000\350egrave\"\000forall\000\275fra"
	.ascii	"c12\000\274frac14\000\276frac34&ehearts &hellip\000"
	.ascii	"\355iacute\000\354igrave\000\277iquest\003\273lambd"
	.ascii	"a#\012lfloor\"\027lowast 9lsaquo\000\267middot\000\361"
	.ascii	"ntilde\000\363oacute\000\362ograve\000\370oslash\000"
	.ascii	"\365otilde\"\227otimes 0permil\000\261plusmn#\013rf"
	.ascii	"loor :rsaquo\001ascaron\003\302sigmaf&`spades\"4the"
	.ascii	"re4 \011thinsp\000\372uacute\000\371ugrave!\030weie"
	.ascii	"rp\000\375yacute\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld556
_$HTMLDEFS$_Ld556:
	.short	0,1
	.long	0,-1,63
.reference _$HTMLDEFS$_Ld555
.globl	_$HTMLDEFS$_Ld555
_$HTMLDEFS$_Ld555:
.reference _$HTMLDEFS$_Ld556
	.ascii	"\003\225Epsilon\003\237Omicron\003\245Upsilon!5alef"
	.ascii	"sym\003\265epsilon\003\277omicron\003\305upsilon\000"

.const_data
	.align 2
.globl	_$HTMLDEFS$_Ld558
_$HTMLDEFS$_Ld558:
	.short	0,1
	.long	0,-1,10
.reference _$HTMLDEFS$_Ld557
.globl	_$HTMLDEFS$_Ld557
_$HTMLDEFS$_Ld557:
.reference _$HTMLDEFS$_Ld558
	.ascii	"\003\321thetasym\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 3
.globl	_TC_HTMLDEFS_HTMLELEMENTPROPS
_TC_HTMLDEFS_HTMLELEMENTPROPS:
	.long	_$HTMLDEFS$_Ld1
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,18,128,16,96,18,32,232,247,1,3,130,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0
	.long	_$HTMLDEFS$_Ld3
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld5
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld7
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld9
	.byte	11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,1,16,1,0,16,2,32,0,0,0,0,128,16,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld11
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,144,0,16,128,16,32,18,64,232,247,1,0,130,18,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0
	.long	_$HTMLDEFS$_Ld13
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld15
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld17
	.byte	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld19
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,0,0,0,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld21
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld23
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld25
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,255,17,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld27
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,2,0,0,0,0,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld29
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,48,0,18,32,232,247,1,0,128,50,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0
	.long	_$HTMLDEFS$_Ld31
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld33
	.byte	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld35
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld37
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld39
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,128,17,0,16,0,18,0,96,247,1,0,136,144,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0
	.long	_$HTMLDEFS$_Ld41
	.byte	33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,128,17,0,16,0,18,0,96,247,1,0,136,144,32,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0
	.long	_$HTMLDEFS$_Ld43
	.byte	35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld45
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,18,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld47
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld49
	.byte	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld51
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld53
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld55
	.byte	34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld57
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld59
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld61
	.byte	11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,0,0,0,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld63
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36,0,16,0,80,0,18,8,96,247,11,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld65
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,4,194,161,0,0,0,128,144,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld67
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,8,0,0,2,0,0,8,16,4,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld69
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld71
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld73
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld75
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld77
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld79
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld81
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld83
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,2,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld85
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld87
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld89
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,16,0,0,20,194,33,0,0,0,128,144,16,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0
	.long	_$HTMLDEFS$_Ld91
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,16,0,16,16,86,0,96,247,1,0,144,80,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0
	.long	_$HTMLDEFS$_Ld93
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,152,0,20,0,48,0,18,34,248,247,133,0,148,114,1,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0
	.long	_$HTMLDEFS$_Ld95
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,18,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld97
	.byte	8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,0,0,0,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld99
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld101
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,16,1,18,0,232,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld103
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld105
	.byte	35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld107
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,0,16,96,18,4,96,247,1,3,128,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld109
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,32,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld111
	.byte	9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld113
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,16,0,17,32,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld115
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld117
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld119
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,48,3,21,16,18,32,96,247,1,0,160,114,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0
	.long	_$HTMLDEFS$_Ld121
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld123
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,48,0,26,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld125
	.byte	35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,48,0,26,0,96,247,1,0,129,16,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld127
	.byte	35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld129
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,32,0,0,0,0,0,32,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld131
	.byte	7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld133
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld135
	.byte	11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld137
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld139
	.byte	2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,8,0,0,0,0,0,0,0,16,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld141
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,48,0,18,48,248,247,1,0,132,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld143
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld145
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld147
	.byte	11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld149
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld151
	.byte	2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,4,0,0,0,0,0,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld153
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld155
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld157
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,112,16,0,16,2,18,0,96,247,1,16,128,17,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0
	.long	_$HTMLDEFS$_Ld159
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,128,17,0,16,0,18,0,96,247,1,0,128,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0
	.long	_$HTMLDEFS$_Ld161
	.byte	35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65,130,17,16,16,8,18,0,96,247,1,72,128,144,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0
	.long	_$HTMLDEFS$_Ld163
	.byte	2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,8,48,0,18,32,248,247,133,4,128,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0
	.long	_$HTMLDEFS$_Ld165
	.byte	33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,128,17,0,16,0,18,0,96,247,1,0,128,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0
	.long	_$HTMLDEFS$_Ld167
	.byte	35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65,130,17,16,16,8,18,0,96,247,1,72,128,144,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0,0,0
	.long	_$HTMLDEFS$_Ld169
	.byte	33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,128,17,0,16,0,18,0,96,247,1,0,128,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0
	.long	_$HTMLDEFS$_Ld171
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld173
	.byte	33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,128,17,0,16,0,18,0,96,247,1,0,128,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte	0,0,0
	.long	_$HTMLDEFS$_Ld175
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld177
	.byte	11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld179
	.byte	1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld181
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,16,0,18,0,96,247,1,0,128,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld183
	.byte	3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.long	_$HTMLDEFS$_Ld185
	.byte	19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLATTRIBUTETAG
_TC_HTMLDEFS_HTMLATTRIBUTETAG:
	.long	_$HTMLDEFS$_Ld187
	.long	_$HTMLDEFS$_Ld189
	.long	_$HTMLDEFS$_Ld191
	.long	_$HTMLDEFS$_Ld193
	.long	_$HTMLDEFS$_Ld195
	.long	_$HTMLDEFS$_Ld197
	.long	_$HTMLDEFS$_Ld199
	.long	_$HTMLDEFS$_Ld201
	.long	_$HTMLDEFS$_Ld203
	.long	_$HTMLDEFS$_Ld205
	.long	_$HTMLDEFS$_Ld207
	.long	_$HTMLDEFS$_Ld209
	.long	_$HTMLDEFS$_Ld211
	.long	_$HTMLDEFS$_Ld213
	.long	_$HTMLDEFS$_Ld215
	.long	_$HTMLDEFS$_Ld217
	.long	_$HTMLDEFS$_Ld219
	.long	_$HTMLDEFS$_Ld221
	.long	_$HTMLDEFS$_Ld223
	.long	_$HTMLDEFS$_Ld225
	.long	_$HTMLDEFS$_Ld227
	.long	_$HTMLDEFS$_Ld229
	.long	_$HTMLDEFS$_Ld231
	.long	_$HTMLDEFS$_Ld233
	.long	_$HTMLDEFS$_Ld235
	.long	_$HTMLDEFS$_Ld237
	.long	_$HTMLDEFS$_Ld239
	.long	_$HTMLDEFS$_Ld241
	.long	_$HTMLDEFS$_Ld243
	.long	_$HTMLDEFS$_Ld245
	.long	_$HTMLDEFS$_Ld247
	.long	_$HTMLDEFS$_Ld249
	.long	_$HTMLDEFS$_Ld251
	.long	_$HTMLDEFS$_Ld253
	.long	_$HTMLDEFS$_Ld255
	.long	_$HTMLDEFS$_Ld257
	.long	_$HTMLDEFS$_Ld259
	.long	_$HTMLDEFS$_Ld261
	.long	_$HTMLDEFS$_Ld263
	.long	_$HTMLDEFS$_Ld265
	.long	_$HTMLDEFS$_Ld267
	.long	_$HTMLDEFS$_Ld269
	.long	_$HTMLDEFS$_Ld271
	.long	_$HTMLDEFS$_Ld273
	.long	_$HTMLDEFS$_Ld275
	.long	_$HTMLDEFS$_Ld277
	.long	_$HTMLDEFS$_Ld279
	.long	_$HTMLDEFS$_Ld281
	.long	_$HTMLDEFS$_Ld283
	.long	_$HTMLDEFS$_Ld285
	.long	_$HTMLDEFS$_Ld287
	.long	_$HTMLDEFS$_Ld289
	.long	_$HTMLDEFS$_Ld291
	.long	_$HTMLDEFS$_Ld293
	.long	_$HTMLDEFS$_Ld295
	.long	_$HTMLDEFS$_Ld297
	.long	_$HTMLDEFS$_Ld299
	.long	_$HTMLDEFS$_Ld301
	.long	_$HTMLDEFS$_Ld303
	.long	_$HTMLDEFS$_Ld305
	.long	_$HTMLDEFS$_Ld307
	.long	_$HTMLDEFS$_Ld309
	.long	_$HTMLDEFS$_Ld311
	.long	_$HTMLDEFS$_Ld313
	.long	_$HTMLDEFS$_Ld315
	.long	_$HTMLDEFS$_Ld317
	.long	_$HTMLDEFS$_Ld319
	.long	_$HTMLDEFS$_Ld321
	.long	_$HTMLDEFS$_Ld323
	.long	_$HTMLDEFS$_Ld325
	.long	_$HTMLDEFS$_Ld327
	.long	_$HTMLDEFS$_Ld329
	.long	_$HTMLDEFS$_Ld331
	.long	_$HTMLDEFS$_Ld333
	.long	_$HTMLDEFS$_Ld335
	.long	_$HTMLDEFS$_Ld337
	.long	_$HTMLDEFS$_Ld339
	.long	_$HTMLDEFS$_Ld341
	.long	_$HTMLDEFS$_Ld343
	.long	_$HTMLDEFS$_Ld345
	.long	_$HTMLDEFS$_Ld347
	.long	_$HTMLDEFS$_Ld349
	.long	_$HTMLDEFS$_Ld351
	.long	_$HTMLDEFS$_Ld353
	.long	_$HTMLDEFS$_Ld355
	.long	_$HTMLDEFS$_Ld357
	.long	_$HTMLDEFS$_Ld359
	.long	_$HTMLDEFS$_Ld361
	.long	_$HTMLDEFS$_Ld363
	.long	_$HTMLDEFS$_Ld365
	.long	_$HTMLDEFS$_Ld367
	.long	_$HTMLDEFS$_Ld369
	.long	_$HTMLDEFS$_Ld371
	.long	_$HTMLDEFS$_Ld373
	.long	_$HTMLDEFS$_Ld375
	.long	_$HTMLDEFS$_Ld377
	.long	_$HTMLDEFS$_Ld379
	.long	_$HTMLDEFS$_Ld381
	.long	_$HTMLDEFS$_Ld383
	.long	_$HTMLDEFS$_Ld385
	.long	_$HTMLDEFS$_Ld387
	.long	_$HTMLDEFS$_Ld389
	.long	_$HTMLDEFS$_Ld391
	.long	_$HTMLDEFS$_Ld393
	.long	_$HTMLDEFS$_Ld395
	.long	_$HTMLDEFS$_Ld397
	.long	_$HTMLDEFS$_Ld399
	.long	_$HTMLDEFS$_Ld401
	.long	_$HTMLDEFS$_Ld403
	.long	_$HTMLDEFS$_Ld405
	.long	_$HTMLDEFS$_Ld407
	.long	_$HTMLDEFS$_Ld409
	.long	_$HTMLDEFS$_Ld411
	.long	_$HTMLDEFS$_Ld413
	.long	_$HTMLDEFS$_Ld415
	.long	_$HTMLDEFS$_Ld417
	.long	_$HTMLDEFS$_Ld419
	.long	_$HTMLDEFS$_Ld421

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLCOLOR
_TC_HTMLDEFS_HTMLCOLOR:
	.long	_$HTMLDEFS$_Ld423
	.long	_$HTMLDEFS$_Ld425
	.long	_$HTMLDEFS$_Ld427
	.long	_$HTMLDEFS$_Ld429
	.long	_$HTMLDEFS$_Ld431
	.long	_$HTMLDEFS$_Ld433
	.long	_$HTMLDEFS$_Ld435
	.long	_$HTMLDEFS$_Ld437
	.long	_$HTMLDEFS$_Ld439
	.long	_$HTMLDEFS$_Ld441
	.long	_$HTMLDEFS$_Ld443
	.long	_$HTMLDEFS$_Ld445
	.long	_$HTMLDEFS$_Ld447
	.long	_$HTMLDEFS$_Ld449
	.long	_$HTMLDEFS$_Ld451
	.long	_$HTMLDEFS$_Ld453

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLDIR
_TC_HTMLDEFS_HTMLDIR:
	.long	0
	.long	_$HTMLDEFS$_Ld455
	.long	_$HTMLDEFS$_Ld457

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLALIGN
_TC_HTMLDEFS_HTMLALIGN:
	.long	0
	.long	_$HTMLDEFS$_Ld459
	.long	_$HTMLDEFS$_Ld461
	.long	_$HTMLDEFS$_Ld463
	.long	_$HTMLDEFS$_Ld465
	.long	_$HTMLDEFS$_Ld467

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLVALIGN
_TC_HTMLDEFS_HTMLVALIGN:
	.long	0
	.long	_$HTMLDEFS$_Ld469
	.long	_$HTMLDEFS$_Ld471
	.long	_$HTMLDEFS$_Ld473
	.long	_$HTMLDEFS$_Ld475

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLFRAME
_TC_HTMLDEFS_HTMLFRAME:
	.long	0
	.long	_$HTMLDEFS$_Ld477
	.long	_$HTMLDEFS$_Ld479
	.long	_$HTMLDEFS$_Ld481
	.long	_$HTMLDEFS$_Ld483
	.long	_$HTMLDEFS$_Ld485
	.long	_$HTMLDEFS$_Ld487
	.long	_$HTMLDEFS$_Ld489
	.long	_$HTMLDEFS$_Ld491
	.long	_$HTMLDEFS$_Ld493

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLRULES
_TC_HTMLDEFS_HTMLRULES:
	.long	0
	.long	_$HTMLDEFS$_Ld495
	.long	_$HTMLDEFS$_Ld497
	.long	_$HTMLDEFS$_Ld499
	.long	_$HTMLDEFS$_Ld501
	.long	_$HTMLDEFS$_Ld503

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLVALUETYPE
_TC_HTMLDEFS_HTMLVALUETYPE:
	.long	0
	.long	_$HTMLDEFS$_Ld505
	.long	_$HTMLDEFS$_Ld507
	.long	_$HTMLDEFS$_Ld509

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLSHAPE
_TC_HTMLDEFS_HTMLSHAPE:
	.long	0
	.long	_$HTMLDEFS$_Ld511
	.long	_$HTMLDEFS$_Ld513
	.long	_$HTMLDEFS$_Ld515
	.long	_$HTMLDEFS$_Ld517

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLINPUTTYPE
_TC_HTMLDEFS_HTMLINPUTTYPE:
	.long	0
	.long	_$HTMLDEFS$_Ld519
	.long	_$HTMLDEFS$_Ld521
	.long	_$HTMLDEFS$_Ld523
	.long	_$HTMLDEFS$_Ld525
	.long	_$HTMLDEFS$_Ld527
	.long	_$HTMLDEFS$_Ld529
	.long	_$HTMLDEFS$_Ld531
	.long	_$HTMLDEFS$_Ld533
	.long	_$HTMLDEFS$_Ld535
	.long	_$HTMLDEFS$_Ld537

.data
	.align 2
.globl	_TC_HTMLDEFS_HTMLBUTTONTYPE
_TC_HTMLDEFS_HTMLBUTTONTYPE:
	.long	0
	.long	_$HTMLDEFS$_Ld539
	.long	_$HTMLDEFS$_Ld541
	.long	_$HTMLDEFS$_Ld543

.data
	.align 2
.globl	_TC_HTMLDEFS_AUTOCLOSETAB
_TC_HTMLDEFS_AUTOCLOSETAB:
	.long	31,31,63,41,34,35,36,37,38,39,26,89,60,55,24,3,65,40,92,40,63,92,85,63,92,12,40,75,53,85,63,92,33,40,75,53
	.long	85,63,92,52,63,34,35,36,37,38,39,26,3,65,40,52,92,41,63,40,92,34,63,40,92,35,63,40,92,36,63,40,92,37,63,40
	.long	92,38,63,40,92,39,63,40,92,24,63,40,92,3,63,40,89,92,65,63,40,89,92,11,63,40,92,26,63,27,55,24,3,65,40,92,27
	.long	63,55,24,3,65,40,21,92,21,63,55,24,3,65,40,27,92,89,63,40,60,55,24,3,65,92,60,63,40,89,92,55,63,40,89,92,63
	.long	63,40,34,35,36,37,38,39,92,25,63,40,92,58,63,40,92,16,30,6,43,63,40,92,0,0,92,15,63,92,20,15,20,19,63,92,19
	.long	15,19,63,92,78,63,40,34,35,36,37,38,39,65,0,92,83,83,80,63,72,30,0,6,43,88,92,80,83,80,63,72,30,0,6,43,88,92
	.long	86,83,80,86,15,19,20,63,92,84,15,19,20,92,82,83,80,86,15,19,20,84,79,63,92,79,83,80,86,15,19,20,84,82,79,63
	.long	92,61,62,92,62,62,92,29,51,63,40,34,35,36,37,38,39,65,0,92,92

.data
	.align 2
.globl	_TC_HTMLDEFS_AUTOCLOSEINDEX
_TC_HTMLDEFS_AUTOCLOSEINDEX:
	.long	0,19,22,25,32,39,53,57,61,65,69,73,77,81,85,90,95,99,108,117,126,135,140,145,155,159,163,170,173,176
	.long	182,187,199,210,221,230,235,246,258,261,264

.data
	.align 2
.globl	_TC_HTMLDEFS_STRS
_TC_HTMLDEFS_STRS:
	.long	_$HTMLDEFS$_Ld545
	.long	_$HTMLDEFS$_Ld547
	.long	_$HTMLDEFS$_Ld549
	.long	_$HTMLDEFS$_Ld551
	.long	_$HTMLDEFS$_Ld553
	.long	_$HTMLDEFS$_Ld555
	.long	_$HTMLDEFS$_Ld557
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_HTMLDEFS_BSEARCH$PWIDECHAR$LONGINT$ANSISTRING$$WIDECHAR$stub:
.indirect_symbol _HTMLDEFS_BSEARCH$PWIDECHAR$LONGINT$ANSISTRING$$WIDECHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
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
.globl	_INIT_HTMLDEFS_THTMLDIR
_INIT_HTMLDEFS_THTMLDIR:
	.byte	3,8
	.ascii	"THTMLDir"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"dirEmpty"
	.byte	14
	.ascii	"dirLeftToRight"
	.byte	14
	.ascii	"dirRightToLeft"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLDIR
_RTTI_HTMLDEFS_THTMLDIR:
	.byte	3,8
	.ascii	"THTMLDir"
	.byte	5
	.long	0,2,0
	.byte	8
	.ascii	"dirEmpty"
	.byte	14
	.ascii	"dirLeftToRight"
	.byte	14
	.ascii	"dirRightToLeft"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLDIR_s2o
_RTTI_HTMLDEFS_THTMLDIR_s2o:
	.long	3,0
	.long	_RTTI_HTMLDEFS_THTMLDIR+23
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLDIR+32
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLDIR+47

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLDIR_o2s
_RTTI_HTMLDEFS_THTMLDIR_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLDIR+23
	.long	_RTTI_HTMLDEFS_THTMLDIR+32
	.long	_RTTI_HTMLDEFS_THTMLDIR+47

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLALIGN
_INIT_HTMLDEFS_THTMLALIGN:
	.byte	3,10
	.ascii	"THTMLalign"
	.byte	5
	.long	0,5,0
	.byte	7
	.ascii	"alEmpty"
	.byte	6
	.ascii	"alleft"
	.byte	8
	.ascii	"alcenter"
	.byte	7
	.ascii	"alright"
	.byte	9
	.ascii	"aljustify"
	.byte	6
	.ascii	"alchar"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLALIGN
_RTTI_HTMLDEFS_THTMLALIGN:
	.byte	3,10
	.ascii	"THTMLalign"
	.byte	5
	.long	0,5,0
	.byte	7
	.ascii	"alEmpty"
	.byte	6
	.ascii	"alleft"
	.byte	8
	.ascii	"alcenter"
	.byte	7
	.ascii	"alright"
	.byte	9
	.ascii	"aljustify"
	.byte	6
	.ascii	"alchar"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLALIGN_s2o
_RTTI_HTMLDEFS_THTMLALIGN_s2o:
	.long	6,2
	.long	_RTTI_HTMLDEFS_THTMLALIGN+40
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLALIGN+67
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLALIGN+25
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLALIGN+57
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLALIGN+33
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLALIGN+49

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLALIGN_o2s
_RTTI_HTMLDEFS_THTMLALIGN_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLALIGN+25
	.long	_RTTI_HTMLDEFS_THTMLALIGN+33
	.long	_RTTI_HTMLDEFS_THTMLALIGN+40
	.long	_RTTI_HTMLDEFS_THTMLALIGN+49
	.long	_RTTI_HTMLDEFS_THTMLALIGN+57
	.long	_RTTI_HTMLDEFS_THTMLALIGN+67

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLVALIGN
_INIT_HTMLDEFS_THTMLVALIGN:
	.byte	3,11
	.ascii	"THTMLvalign"
	.byte	5
	.long	0,4,0
	.byte	7
	.ascii	"vaEmpty"
	.byte	5
	.ascii	"vatop"
	.byte	8
	.ascii	"vamiddle"
	.byte	8
	.ascii	"vabottom"
	.byte	10
	.ascii	"vabaseline"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLVALIGN
_RTTI_HTMLDEFS_THTMLVALIGN:
	.byte	3,11
	.ascii	"THTMLvalign"
	.byte	5
	.long	0,4,0
	.byte	7
	.ascii	"vaEmpty"
	.byte	5
	.ascii	"vatop"
	.byte	8
	.ascii	"vamiddle"
	.byte	8
	.ascii	"vabottom"
	.byte	10
	.ascii	"vabaseline"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLVALIGN_s2o
_RTTI_HTMLDEFS_THTMLVALIGN_s2o:
	.long	5,4
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+58
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+49
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+26
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+40
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+34

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLVALIGN_o2s
_RTTI_HTMLDEFS_THTMLVALIGN_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+26
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+34
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+40
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+49
	.long	_RTTI_HTMLDEFS_THTMLVALIGN+58

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLFRAME
_INIT_HTMLDEFS_THTMLFRAME:
	.byte	3,10
	.ascii	"THTMLframe"
	.byte	5
	.long	0,9,0
	.byte	7
	.ascii	"frEmpty"
	.byte	6
	.ascii	"frvoid"
	.byte	7
	.ascii	"frabove"
	.byte	7
	.ascii	"frbelow"
	.byte	8
	.ascii	"frhsides"
	.byte	8
	.ascii	"frvsides"
	.byte	14
	.ascii	"frlefthandsise"
	.byte	15
	.ascii	"frrighthandside"
	.byte	5
	.ascii	"frbox"
	.byte	8
	.ascii	"frborder"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLFRAME
_RTTI_HTMLDEFS_THTMLFRAME:
	.byte	3,10
	.ascii	"THTMLframe"
	.byte	5
	.long	0,9,0
	.byte	7
	.ascii	"frEmpty"
	.byte	6
	.ascii	"frvoid"
	.byte	7
	.ascii	"frabove"
	.byte	7
	.ascii	"frbelow"
	.byte	8
	.ascii	"frhsides"
	.byte	8
	.ascii	"frvsides"
	.byte	14
	.ascii	"frlefthandsise"
	.byte	15
	.ascii	"frrighthandside"
	.byte	5
	.ascii	"frbox"
	.byte	8
	.ascii	"frborder"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLFRAME_s2o
_RTTI_HTMLDEFS_THTMLFRAME_s2o:
	.long	10,2
	.long	_RTTI_HTMLDEFS_THTMLFRAME+40
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLFRAME+48
	.long	9
	.long	_RTTI_HTMLDEFS_THTMLFRAME+111
	.long	8
	.long	_RTTI_HTMLDEFS_THTMLFRAME+105
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLFRAME+25
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLFRAME+56
	.long	6
	.long	_RTTI_HTMLDEFS_THTMLFRAME+74
	.long	7
	.long	_RTTI_HTMLDEFS_THTMLFRAME+89
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLFRAME+33
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLFRAME+65

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLFRAME_o2s
_RTTI_HTMLDEFS_THTMLFRAME_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLFRAME+25
	.long	_RTTI_HTMLDEFS_THTMLFRAME+33
	.long	_RTTI_HTMLDEFS_THTMLFRAME+40
	.long	_RTTI_HTMLDEFS_THTMLFRAME+48
	.long	_RTTI_HTMLDEFS_THTMLFRAME+56
	.long	_RTTI_HTMLDEFS_THTMLFRAME+65
	.long	_RTTI_HTMLDEFS_THTMLFRAME+74
	.long	_RTTI_HTMLDEFS_THTMLFRAME+89
	.long	_RTTI_HTMLDEFS_THTMLFRAME+105
	.long	_RTTI_HTMLDEFS_THTMLFRAME+111

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLRULES
_INIT_HTMLDEFS_THTMLRULES:
	.byte	3,10
	.ascii	"THTMLrules"
	.byte	5
	.long	0,5,0
	.byte	7
	.ascii	"ruEmpty"
	.byte	6
	.ascii	"runone"
	.byte	8
	.ascii	"rugroups"
	.byte	6
	.ascii	"rurows"
	.byte	6
	.ascii	"rucols"
	.byte	5
	.ascii	"ruall"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLRULES
_RTTI_HTMLDEFS_THTMLRULES:
	.byte	3,10
	.ascii	"THTMLrules"
	.byte	5
	.long	0,5,0
	.byte	7
	.ascii	"ruEmpty"
	.byte	6
	.ascii	"runone"
	.byte	8
	.ascii	"rugroups"
	.byte	6
	.ascii	"rurows"
	.byte	6
	.ascii	"rucols"
	.byte	5
	.ascii	"ruall"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLRULES_s2o
_RTTI_HTMLDEFS_THTMLRULES_s2o:
	.long	6,5
	.long	_RTTI_HTMLDEFS_THTMLRULES+63
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLRULES+56
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLRULES+25
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLRULES+40
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLRULES+33
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLRULES+49

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLRULES_o2s
_RTTI_HTMLDEFS_THTMLRULES_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLRULES+25
	.long	_RTTI_HTMLDEFS_THTMLRULES+33
	.long	_RTTI_HTMLDEFS_THTMLRULES+40
	.long	_RTTI_HTMLDEFS_THTMLRULES+49
	.long	_RTTI_HTMLDEFS_THTMLRULES+56
	.long	_RTTI_HTMLDEFS_THTMLRULES+63

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLVALUETYPE
_INIT_HTMLDEFS_THTMLVALUETYPE:
	.byte	3,14
	.ascii	"THTMLvaluetype"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"vtEmpty"
	.byte	6
	.ascii	"vtdata"
	.byte	5
	.ascii	"vtref"
	.byte	8
	.ascii	"vtobject"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLVALUETYPE
_RTTI_HTMLDEFS_THTMLVALUETYPE:
	.byte	3,14
	.ascii	"THTMLvaluetype"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"vtEmpty"
	.byte	6
	.ascii	"vtdata"
	.byte	5
	.ascii	"vtref"
	.byte	8
	.ascii	"vtobject"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLVALUETYPE_s2o
_RTTI_HTMLDEFS_THTMLVALUETYPE_s2o:
	.long	4,1
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+37
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+29
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+50
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+44

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLVALUETYPE_o2s
_RTTI_HTMLDEFS_THTMLVALUETYPE_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+29
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+37
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+44
	.long	_RTTI_HTMLDEFS_THTMLVALUETYPE+50

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLSHAPE
_INIT_HTMLDEFS_THTMLSHAPE:
	.byte	3,10
	.ascii	"THTMLshape"
	.byte	5
	.long	0,4,0
	.byte	7
	.ascii	"shEmpty"
	.byte	9
	.ascii	"shdefault"
	.byte	6
	.ascii	"shrect"
	.byte	8
	.ascii	"shcircle"
	.byte	6
	.ascii	"shpoly"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLSHAPE
_RTTI_HTMLDEFS_THTMLSHAPE:
	.byte	3,10
	.ascii	"THTMLshape"
	.byte	5
	.long	0,4,0
	.byte	7
	.ascii	"shEmpty"
	.byte	9
	.ascii	"shdefault"
	.byte	6
	.ascii	"shrect"
	.byte	8
	.ascii	"shcircle"
	.byte	6
	.ascii	"shpoly"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLSHAPE_s2o
_RTTI_HTMLDEFS_THTMLSHAPE_s2o:
	.long	5,3
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+50
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+33
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+25
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+59
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+43

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLSHAPE_o2s
_RTTI_HTMLDEFS_THTMLSHAPE_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+25
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+33
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+43
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+50
	.long	_RTTI_HTMLDEFS_THTMLSHAPE+59

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLINPUTTYPE
_INIT_HTMLDEFS_THTMLINPUTTYPE:
	.byte	3,14
	.ascii	"THTMLinputtype"
	.byte	5
	.long	0,10,0
	.byte	7
	.ascii	"itEmpty"
	.byte	6
	.ascii	"ittext"
	.byte	10
	.ascii	"itpassword"
	.byte	10
	.ascii	"itcheckbox"
	.byte	7
	.ascii	"itradio"
	.byte	8
	.ascii	"itsubmit"
	.byte	7
	.ascii	"itreset"
	.byte	6
	.ascii	"itfile"
	.byte	8
	.ascii	"ithidden"
	.byte	7
	.ascii	"itimage"
	.byte	8
	.ascii	"itbutton"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLINPUTTYPE
_RTTI_HTMLDEFS_THTMLINPUTTYPE:
	.byte	3,14
	.ascii	"THTMLinputtype"
	.byte	5
	.long	0,10,0
	.byte	7
	.ascii	"itEmpty"
	.byte	6
	.ascii	"ittext"
	.byte	10
	.ascii	"itpassword"
	.byte	10
	.ascii	"itcheckbox"
	.byte	7
	.ascii	"itradio"
	.byte	8
	.ascii	"itsubmit"
	.byte	7
	.ascii	"itreset"
	.byte	6
	.ascii	"itfile"
	.byte	8
	.ascii	"ithidden"
	.byte	7
	.ascii	"itimage"
	.byte	8
	.ascii	"itbutton"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLINPUTTYPE_s2o
_RTTI_HTMLDEFS_THTMLINPUTTYPE_s2o:
	.long	11,10
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+115
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+55
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+29
	.long	7
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+91
	.long	8
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+98
	.long	9
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+107
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+44
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+66
	.long	6
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+83
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+74
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+37

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLINPUTTYPE_o2s
_RTTI_HTMLDEFS_THTMLINPUTTYPE_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+29
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+37
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+44
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+55
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+66
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+74
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+83
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+91
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+98
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+107
	.long	_RTTI_HTMLDEFS_THTMLINPUTTYPE+115

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLBUTTONTYPE
_INIT_HTMLDEFS_THTMLBUTTONTYPE:
	.byte	3,15
	.ascii	"THTMLbuttontype"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"btEmpty"
	.byte	8
	.ascii	"btsubmit"
	.byte	7
	.ascii	"btreset"
	.byte	8
	.ascii	"btbutton"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLBUTTONTYPE
_RTTI_HTMLDEFS_THTMLBUTTONTYPE:
	.byte	3,15
	.ascii	"THTMLbuttontype"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"btEmpty"
	.byte	8
	.ascii	"btsubmit"
	.byte	7
	.ascii	"btreset"
	.byte	8
	.ascii	"btbutton"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLBUTTONTYPE_s2o
_RTTI_HTMLDEFS_THTMLBUTTONTYPE_s2o:
	.long	4,3
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+55
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+30
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+47
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+38

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLBUTTONTYPE_o2s
_RTTI_HTMLDEFS_THTMLBUTTONTYPE_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+30
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+38
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+47
	.long	_RTTI_HTMLDEFS_THTMLBUTTONTYPE+55

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLCOLOR
_INIT_HTMLDEFS_THTMLCOLOR:
	.byte	3,10
	.ascii	"THTMLColor"
	.byte	5
	.long	0,15,0
	.byte	11
	.ascii	"clHTMLBlack"
	.byte	12
	.ascii	"clHTMLSilver"
	.byte	10
	.ascii	"clHTMLGray"
	.byte	11
	.ascii	"clHTMLWhite"
	.byte	12
	.ascii	"clHTMLMaroon"
	.byte	9
	.ascii	"clHTMLRed"
	.byte	12
	.ascii	"clHTMLPurple"
	.byte	13
	.ascii	"clHTMLFuchsia"
	.byte	11
	.ascii	"clHTMLGreen"
	.byte	10
	.ascii	"clHTMLLime"
	.byte	11
	.ascii	"clHTMLOlive"
	.byte	12
	.ascii	"clHTMLYellow"
	.byte	10
	.ascii	"clHTMLNavy"
	.byte	10
	.ascii	"clHTMLBlue"
	.byte	10
	.ascii	"clHTMLTeal"
	.byte	10
	.ascii	"clHTMLAqua"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLCOLOR
_RTTI_HTMLDEFS_THTMLCOLOR:
	.byte	3,10
	.ascii	"THTMLColor"
	.byte	5
	.long	0,15,0
	.byte	11
	.ascii	"clHTMLBlack"
	.byte	12
	.ascii	"clHTMLSilver"
	.byte	10
	.ascii	"clHTMLGray"
	.byte	11
	.ascii	"clHTMLWhite"
	.byte	12
	.ascii	"clHTMLMaroon"
	.byte	9
	.ascii	"clHTMLRed"
	.byte	12
	.ascii	"clHTMLPurple"
	.byte	13
	.ascii	"clHTMLFuchsia"
	.byte	11
	.ascii	"clHTMLGreen"
	.byte	10
	.ascii	"clHTMLLime"
	.byte	11
	.ascii	"clHTMLOlive"
	.byte	12
	.ascii	"clHTMLYellow"
	.byte	10
	.ascii	"clHTMLNavy"
	.byte	10
	.ascii	"clHTMLBlue"
	.byte	10
	.ascii	"clHTMLTeal"
	.byte	10
	.ascii	"clHTMLAqua"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLCOLOR_s2o
_RTTI_HTMLDEFS_THTMLCOLOR_s2o:
	.long	16,15
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+204
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+25
	.long	13
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+182
	.long	7
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+109
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+50
	.long	8
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+123
	.long	9
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+135
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+73
	.long	12
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+171
	.long	10
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+146
	.long	6
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+96
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+86
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+37
	.long	14
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+193
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+61
	.long	11
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+158

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLCOLOR_o2s
_RTTI_HTMLDEFS_THTMLCOLOR_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+25
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+37
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+50
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+61
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+73
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+86
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+96
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+109
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+123
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+135
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+146
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+158
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+171
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+182
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+193
	.long	_RTTI_HTMLDEFS_THTMLCOLOR+204

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLATTRIBUTETAG
_INIT_HTMLDEFS_THTMLATTRIBUTETAG:
	.byte	3,17
	.ascii	"THTMLAttributeTag"
	.byte	5
	.long	0,117,0
	.byte	6
	.ascii	"atabbr"
	.byte	7
	.ascii	"atalink"
	.byte	15
	.ascii	"atacceptcharset"
	.byte	8
	.ascii	"ataccept"
	.byte	11
	.ascii	"ataccesskey"
	.byte	8
	.ascii	"ataction"
	.byte	7
	.ascii	"atalign"
	.byte	5
	.ascii	"atalt"
	.byte	9
	.ascii	"atarchive"
	.byte	6
	.ascii	"ataxis"
	.byte	12
	.ascii	"atbackground"
	.byte	9
	.ascii	"atbgcolor"
	.byte	8
	.ascii	"atborder"
	.byte	13
	.ascii	"atcellpadding"
	.byte	13
	.ascii	"atcellspacing"
	.byte	6
	.ascii	"atchar"
	.byte	9
	.ascii	"atcharoff"
	.byte	9
	.ascii	"atcharset"
	.byte	9
	.ascii	"atchecked"
	.byte	6
	.ascii	"atcite"
	.byte	7
	.ascii	"atclass"
	.byte	9
	.ascii	"atclassid"
	.byte	7
	.ascii	"atclear"
	.byte	6
	.ascii	"atcode"
	.byte	10
	.ascii	"atcodebase"
	.byte	10
	.ascii	"atcodetype"
	.byte	7
	.ascii	"atcolor"
	.byte	6
	.ascii	"atcols"
	.byte	9
	.ascii	"atcolspan"
	.byte	9
	.ascii	"atcompact"
	.byte	9
	.ascii	"atcontent"
	.byte	8
	.ascii	"atcoords"
	.byte	6
	.ascii	"atdata"
	.byte	10
	.ascii	"atdatetime"
	.byte	9
	.ascii	"atdeclare"
	.byte	7
	.ascii	"atdefer"
	.byte	5
	.ascii	"atdir"
	.byte	10
	.ascii	"atdisabled"
	.byte	9
	.ascii	"atenctype"
	.byte	6
	.ascii	"atface"
	.byte	5
	.ascii	"atfor"
	.byte	7
	.ascii	"atframe"
	.byte	13
	.ascii	"atframeborder"
	.byte	9
	.ascii	"atheaders"
	.byte	8
	.ascii	"atheight"
	.byte	6
	.ascii	"athref"
	.byte	10
	.ascii	"athreflang"
	.byte	8
	.ascii	"athspace"
	.byte	11
	.ascii	"athttpequiv"
	.byte	4
	.ascii	"atid"
	.byte	7
	.ascii	"atismap"
	.byte	7
	.ascii	"atlabel"
	.byte	6
	.ascii	"atlang"
	.byte	6
	.ascii	"atlink"
	.byte	10
	.ascii	"atlongdesc"
	.byte	14
	.ascii	"atmarginheight"
	.byte	13
	.ascii	"atmarginwidth"
	.byte	11
	.ascii	"atmaxlength"
	.byte	7
	.ascii	"atmedia"
	.byte	8
	.ascii	"atmethod"
	.byte	10
	.ascii	"atmultiple"
	.byte	6
	.ascii	"atname"
	.byte	8
	.ascii	"atnohref"
	.byte	10
	.ascii	"atnoresize"
	.byte	9
	.ascii	"atnoshade"
	.byte	8
	.ascii	"atnowrap"
	.byte	8
	.ascii	"atobject"
	.byte	8
	.ascii	"atonblur"
	.byte	10
	.ascii	"atonchange"
	.byte	9
	.ascii	"atonclick"
	.byte	12
	.ascii	"atondblclick"
	.byte	9
	.ascii	"atonfocus"
	.byte	11
	.ascii	"atonkeydown"
	.byte	12
	.ascii	"atonkeypress"
	.byte	9
	.ascii	"atonkeyup"
	.byte	8
	.ascii	"atonload"
	.byte	13
	.ascii	"atonmousedown"
	.byte	13
	.ascii	"atonmousemove"
	.byte	12
	.ascii	"atonmouseout"
	.byte	13
	.ascii	"atonmouseover"
	.byte	11
	.ascii	"atonmouseup"
	.byte	9
	.ascii	"atonreset"
	.byte	10
	.ascii	"atonselect"
	.byte	10
	.ascii	"atonsubmit"
	.byte	10
	.ascii	"atonunload"
	.byte	9
	.ascii	"atprofile"
	.byte	8
	.ascii	"atprompt"
	.byte	10
	.ascii	"atreadonly"
	.byte	5
	.ascii	"atrel"
	.byte	5
	.ascii	"atrev"
	.byte	6
	.ascii	"atrows"
	.byte	9
	.ascii	"atrowspan"
	.byte	7
	.ascii	"atrules"
	.byte	8
	.ascii	"atscheme"
	.byte	7
	.ascii	"atscope"
	.byte	11
	.ascii	"atscrolling"
	.byte	10
	.ascii	"atselected"
	.byte	7
	.ascii	"atshape"
	.byte	6
	.ascii	"atsize"
	.byte	6
	.ascii	"atspan"
	.byte	5
	.ascii	"atsrc"
	.byte	9
	.ascii	"atstandby"
	.byte	7
	.ascii	"atstart"
	.byte	7
	.ascii	"atstyle"
	.byte	9
	.ascii	"atsummary"
	.byte	10
	.ascii	"attabindex"
	.byte	8
	.ascii	"attarget"
	.byte	6
	.ascii	"attext"
	.byte	7
	.ascii	"attitle"
	.byte	6
	.ascii	"attype"
	.byte	8
	.ascii	"atusemap"
	.byte	8
	.ascii	"atvalign"
	.byte	7
	.ascii	"atvalue"
	.byte	11
	.ascii	"atvaluetype"
	.byte	9
	.ascii	"atversion"
	.byte	7
	.ascii	"atvlink"
	.byte	8
	.ascii	"atvspace"
	.byte	7
	.ascii	"atwidth"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG
_RTTI_HTMLDEFS_THTMLATTRIBUTETAG:
	.byte	3,17
	.ascii	"THTMLAttributeTag"
	.byte	5
	.long	0,117,0
	.byte	6
	.ascii	"atabbr"
	.byte	7
	.ascii	"atalink"
	.byte	15
	.ascii	"atacceptcharset"
	.byte	8
	.ascii	"ataccept"
	.byte	11
	.ascii	"ataccesskey"
	.byte	8
	.ascii	"ataction"
	.byte	7
	.ascii	"atalign"
	.byte	5
	.ascii	"atalt"
	.byte	9
	.ascii	"atarchive"
	.byte	6
	.ascii	"ataxis"
	.byte	12
	.ascii	"atbackground"
	.byte	9
	.ascii	"atbgcolor"
	.byte	8
	.ascii	"atborder"
	.byte	13
	.ascii	"atcellpadding"
	.byte	13
	.ascii	"atcellspacing"
	.byte	6
	.ascii	"atchar"
	.byte	9
	.ascii	"atcharoff"
	.byte	9
	.ascii	"atcharset"
	.byte	9
	.ascii	"atchecked"
	.byte	6
	.ascii	"atcite"
	.byte	7
	.ascii	"atclass"
	.byte	9
	.ascii	"atclassid"
	.byte	7
	.ascii	"atclear"
	.byte	6
	.ascii	"atcode"
	.byte	10
	.ascii	"atcodebase"
	.byte	10
	.ascii	"atcodetype"
	.byte	7
	.ascii	"atcolor"
	.byte	6
	.ascii	"atcols"
	.byte	9
	.ascii	"atcolspan"
	.byte	9
	.ascii	"atcompact"
	.byte	9
	.ascii	"atcontent"
	.byte	8
	.ascii	"atcoords"
	.byte	6
	.ascii	"atdata"
	.byte	10
	.ascii	"atdatetime"
	.byte	9
	.ascii	"atdeclare"
	.byte	7
	.ascii	"atdefer"
	.byte	5
	.ascii	"atdir"
	.byte	10
	.ascii	"atdisabled"
	.byte	9
	.ascii	"atenctype"
	.byte	6
	.ascii	"atface"
	.byte	5
	.ascii	"atfor"
	.byte	7
	.ascii	"atframe"
	.byte	13
	.ascii	"atframeborder"
	.byte	9
	.ascii	"atheaders"
	.byte	8
	.ascii	"atheight"
	.byte	6
	.ascii	"athref"
	.byte	10
	.ascii	"athreflang"
	.byte	8
	.ascii	"athspace"
	.byte	11
	.ascii	"athttpequiv"
	.byte	4
	.ascii	"atid"
	.byte	7
	.ascii	"atismap"
	.byte	7
	.ascii	"atlabel"
	.byte	6
	.ascii	"atlang"
	.byte	6
	.ascii	"atlink"
	.byte	10
	.ascii	"atlongdesc"
	.byte	14
	.ascii	"atmarginheight"
	.byte	13
	.ascii	"atmarginwidth"
	.byte	11
	.ascii	"atmaxlength"
	.byte	7
	.ascii	"atmedia"
	.byte	8
	.ascii	"atmethod"
	.byte	10
	.ascii	"atmultiple"
	.byte	6
	.ascii	"atname"
	.byte	8
	.ascii	"atnohref"
	.byte	10
	.ascii	"atnoresize"
	.byte	9
	.ascii	"atnoshade"
	.byte	8
	.ascii	"atnowrap"
	.byte	8
	.ascii	"atobject"
	.byte	8
	.ascii	"atonblur"
	.byte	10
	.ascii	"atonchange"
	.byte	9
	.ascii	"atonclick"
	.byte	12
	.ascii	"atondblclick"
	.byte	9
	.ascii	"atonfocus"
	.byte	11
	.ascii	"atonkeydown"
	.byte	12
	.ascii	"atonkeypress"
	.byte	9
	.ascii	"atonkeyup"
	.byte	8
	.ascii	"atonload"
	.byte	13
	.ascii	"atonmousedown"
	.byte	13
	.ascii	"atonmousemove"
	.byte	12
	.ascii	"atonmouseout"
	.byte	13
	.ascii	"atonmouseover"
	.byte	11
	.ascii	"atonmouseup"
	.byte	9
	.ascii	"atonreset"
	.byte	10
	.ascii	"atonselect"
	.byte	10
	.ascii	"atonsubmit"
	.byte	10
	.ascii	"atonunload"
	.byte	9
	.ascii	"atprofile"
	.byte	8
	.ascii	"atprompt"
	.byte	10
	.ascii	"atreadonly"
	.byte	5
	.ascii	"atrel"
	.byte	5
	.ascii	"atrev"
	.byte	6
	.ascii	"atrows"
	.byte	9
	.ascii	"atrowspan"
	.byte	7
	.ascii	"atrules"
	.byte	8
	.ascii	"atscheme"
	.byte	7
	.ascii	"atscope"
	.byte	11
	.ascii	"atscrolling"
	.byte	10
	.ascii	"atselected"
	.byte	7
	.ascii	"atshape"
	.byte	6
	.ascii	"atsize"
	.byte	6
	.ascii	"atspan"
	.byte	5
	.ascii	"atsrc"
	.byte	9
	.ascii	"atstandby"
	.byte	7
	.ascii	"atstart"
	.byte	7
	.ascii	"atstyle"
	.byte	9
	.ascii	"atsummary"
	.byte	10
	.ascii	"attabindex"
	.byte	8
	.ascii	"attarget"
	.byte	6
	.ascii	"attext"
	.byte	7
	.ascii	"attitle"
	.byte	6
	.ascii	"attype"
	.byte	8
	.ascii	"atusemap"
	.byte	8
	.ascii	"atvalign"
	.byte	7
	.ascii	"atvalue"
	.byte	11
	.ascii	"atvaluetype"
	.byte	9
	.ascii	"atversion"
	.byte	7
	.ascii	"atvlink"
	.byte	8
	.ascii	"atvspace"
	.byte	7
	.ascii	"atwidth"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG_s2o
_RTTI_HTMLDEFS_THTMLATTRIBUTETAG_s2o:
	.long	118,0
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+32
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+63
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+47
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+72
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+84
	.long	6
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+93
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+39
	.long	7
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+101
	.long	8
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+107
	.long	9
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+117
	.long	10
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+124
	.long	11
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+137
	.long	12
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+147
	.long	13
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+156
	.long	14
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+170
	.long	15
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+184
	.long	16
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+191
	.long	17
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+201
	.long	18
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+211
	.long	19
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+221
	.long	20
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+228
	.long	21
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+236
	.long	22
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+246
	.long	23
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+254
	.long	24
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+261
	.long	25
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+272
	.long	26
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+283
	.long	27
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+291
	.long	28
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+298
	.long	29
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+308
	.long	30
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+318
	.long	31
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+328
	.long	32
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+337
	.long	33
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+344
	.long	34
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+355
	.long	35
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+365
	.long	36
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+373
	.long	37
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+379
	.long	38
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+390
	.long	39
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+400
	.long	40
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+407
	.long	41
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+413
	.long	42
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+421
	.long	43
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+435
	.long	44
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+445
	.long	45
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+454
	.long	46
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+461
	.long	47
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+472
	.long	48
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+481
	.long	49
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+493
	.long	50
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+498
	.long	51
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+506
	.long	52
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+514
	.long	53
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+521
	.long	54
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+528
	.long	55
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+539
	.long	56
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+554
	.long	57
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+568
	.long	58
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+580
	.long	59
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+588
	.long	60
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+597
	.long	61
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+608
	.long	62
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+615
	.long	63
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+624
	.long	64
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+635
	.long	65
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+645
	.long	66
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+654
	.long	67
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+663
	.long	68
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+672
	.long	69
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+683
	.long	70
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+693
	.long	71
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+706
	.long	72
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+716
	.long	73
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+728
	.long	74
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+741
	.long	75
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+751
	.long	76
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+760
	.long	77
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+774
	.long	78
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+788
	.long	79
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+801
	.long	80
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+815
	.long	81
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+827
	.long	82
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+837
	.long	83
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+848
	.long	84
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+859
	.long	85
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+870
	.long	86
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+880
	.long	87
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+889
	.long	88
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+900
	.long	89
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+906
	.long	90
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+912
	.long	91
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+919
	.long	92
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+929
	.long	93
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+937
	.long	94
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+946
	.long	95
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+954
	.long	96
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+966
	.long	97
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+977
	.long	98
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+985
	.long	99
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+992
	.long	100
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+999
	.long	101
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1005
	.long	102
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1015
	.long	103
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1023
	.long	104
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1031
	.long	105
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1041
	.long	106
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1052
	.long	107
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1061
	.long	108
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1068
	.long	109
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1076
	.long	110
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1083
	.long	111
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1092
	.long	112
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1101
	.long	113
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1109
	.long	114
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1121
	.long	115
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1131
	.long	116
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1139
	.long	117
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1148

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG_o2s
_RTTI_HTMLDEFS_THTMLATTRIBUTETAG_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+32
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+39
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+47
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+63
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+72
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+84
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+93
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+101
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+107
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+117
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+124
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+137
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+147
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+156
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+170
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+184
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+191
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+201
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+211
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+221
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+228
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+236
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+246
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+254
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+261
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+272
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+283
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+291
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+298
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+308
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+318
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+328
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+337
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+344
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+355
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+365
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+373
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+379
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+390
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+400
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+407
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+413
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+421
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+435
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+445
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+454
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+461
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+472
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+481
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+493
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+498
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+506
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+514
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+521
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+528
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+539
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+554
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+568
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+580
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+588
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+597
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+608
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+615
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+624
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+635
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+645
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+654
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+663
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+672
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+683
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+693
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+706
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+716
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+728
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+741
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+751
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+760
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+774
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+788
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+801
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+815
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+827
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+837
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+848
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+859
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+870
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+880
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+889
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+900
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+906
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+912
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+919
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+929
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+937
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+946
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+954
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+966
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+977
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+985
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+992
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+999
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1005
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1015
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1023
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1031
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1041
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1052
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1061
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1068
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1076
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1083
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1092
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1101
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1109
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1121
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1131
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1139
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG+1148

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLATTRIBUTESET
_INIT_HTMLDEFS_THTMLATTRIBUTESET:
	.byte	5,17
	.ascii	"THTMLAttributeSet"
	.byte	1
	.long	_INIT_HTMLDEFS_THTMLATTRIBUTETAG

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLATTRIBUTESET
_RTTI_HTMLDEFS_THTMLATTRIBUTESET:
	.byte	5,17
	.ascii	"THTMLAttributeSet"
	.byte	1
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTETAG

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLELEMENTTAG
_INIT_HTMLDEFS_THTMLELEMENTTAG:
	.byte	3,15
	.ascii	"THTMLElementTag"
	.byte	5
	.long	0,92,0
	.byte	3
	.ascii	"eta"
	.byte	6
	.ascii	"etabbr"
	.byte	9
	.ascii	"etacronym"
	.byte	9
	.ascii	"etaddress"
	.byte	8
	.ascii	"etapplet"
	.byte	6
	.ascii	"etarea"
	.byte	3
	.ascii	"etb"
	.byte	6
	.ascii	"etbase"
	.byte	10
	.ascii	"etbasefont"
	.byte	5
	.ascii	"etbdo"
	.byte	5
	.ascii	"etbig"
	.byte	12
	.ascii	"etblockquote"
	.byte	6
	.ascii	"etbody"
	.byte	4
	.ascii	"etbr"
	.byte	8
	.ascii	"etbutton"
	.byte	9
	.ascii	"etcaption"
	.byte	8
	.ascii	"etcenter"
	.byte	6
	.ascii	"etcite"
	.byte	6
	.ascii	"etcode"
	.byte	5
	.ascii	"etcol"
	.byte	10
	.ascii	"etcolgroup"
	.byte	4
	.ascii	"etdd"
	.byte	5
	.ascii	"etdel"
	.byte	5
	.ascii	"etdfn"
	.byte	5
	.ascii	"etdir"
	.byte	5
	.ascii	"etdiv"
	.byte	4
	.ascii	"etdl"
	.byte	4
	.ascii	"etdt"
	.byte	4
	.ascii	"etem"
	.byte	10
	.ascii	"etfieldset"
	.byte	6
	.ascii	"etfont"
	.byte	6
	.ascii	"etform"
	.byte	7
	.ascii	"etframe"
	.byte	10
	.ascii	"etframeset"
	.byte	4
	.ascii	"eth1"
	.byte	4
	.ascii	"eth2"
	.byte	4
	.ascii	"eth3"
	.byte	4
	.ascii	"eth4"
	.byte	4
	.ascii	"eth5"
	.byte	4
	.ascii	"eth6"
	.byte	6
	.ascii	"ethead"
	.byte	4
	.ascii	"ethr"
	.byte	6
	.ascii	"ethtml"
	.byte	3
	.ascii	"eti"
	.byte	8
	.ascii	"etiframe"
	.byte	5
	.ascii	"etimg"
	.byte	7
	.ascii	"etinput"
	.byte	5
	.ascii	"etins"
	.byte	9
	.ascii	"etisindex"
	.byte	5
	.ascii	"etkbd"
	.byte	7
	.ascii	"etlabel"
	.byte	8
	.ascii	"etlegend"
	.byte	4
	.ascii	"etli"
	.byte	6
	.ascii	"etlink"
	.byte	5
	.ascii	"etmap"
	.byte	6
	.ascii	"etmenu"
	.byte	6
	.ascii	"etmeta"
	.byte	10
	.ascii	"etnoframes"
	.byte	10
	.ascii	"etnoscript"
	.byte	8
	.ascii	"etobject"
	.byte	4
	.ascii	"etol"
	.byte	10
	.ascii	"etoptgroup"
	.byte	8
	.ascii	"etoption"
	.byte	3
	.ascii	"etp"
	.byte	7
	.ascii	"etparam"
	.byte	5
	.ascii	"etpre"
	.byte	3
	.ascii	"etq"
	.byte	3
	.ascii	"ets"
	.byte	6
	.ascii	"etsamp"
	.byte	8
	.ascii	"etscript"
	.byte	8
	.ascii	"etselect"
	.byte	7
	.ascii	"etsmall"
	.byte	6
	.ascii	"etspan"
	.byte	8
	.ascii	"etstrike"
	.byte	8
	.ascii	"etstrong"
	.byte	7
	.ascii	"etstyle"
	.byte	5
	.ascii	"etsub"
	.byte	5
	.ascii	"etsup"
	.byte	7
	.ascii	"ettable"
	.byte	7
	.ascii	"ettbody"
	.byte	4
	.ascii	"ettd"
	.byte	10
	.ascii	"ettextarea"
	.byte	7
	.ascii	"ettfoot"
	.byte	4
	.ascii	"etth"
	.byte	7
	.ascii	"etthead"
	.byte	7
	.ascii	"ettitle"
	.byte	4
	.ascii	"ettr"
	.byte	4
	.ascii	"ettt"
	.byte	3
	.ascii	"etu"
	.byte	4
	.ascii	"etul"
	.byte	5
	.ascii	"etvar"
	.byte	6
	.ascii	"etText"
	.byte	9
	.ascii	"etUnknown"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTTAG
_RTTI_HTMLDEFS_THTMLELEMENTTAG:
	.byte	3,15
	.ascii	"THTMLElementTag"
	.byte	5
	.long	0,92,0
	.byte	3
	.ascii	"eta"
	.byte	6
	.ascii	"etabbr"
	.byte	9
	.ascii	"etacronym"
	.byte	9
	.ascii	"etaddress"
	.byte	8
	.ascii	"etapplet"
	.byte	6
	.ascii	"etarea"
	.byte	3
	.ascii	"etb"
	.byte	6
	.ascii	"etbase"
	.byte	10
	.ascii	"etbasefont"
	.byte	5
	.ascii	"etbdo"
	.byte	5
	.ascii	"etbig"
	.byte	12
	.ascii	"etblockquote"
	.byte	6
	.ascii	"etbody"
	.byte	4
	.ascii	"etbr"
	.byte	8
	.ascii	"etbutton"
	.byte	9
	.ascii	"etcaption"
	.byte	8
	.ascii	"etcenter"
	.byte	6
	.ascii	"etcite"
	.byte	6
	.ascii	"etcode"
	.byte	5
	.ascii	"etcol"
	.byte	10
	.ascii	"etcolgroup"
	.byte	4
	.ascii	"etdd"
	.byte	5
	.ascii	"etdel"
	.byte	5
	.ascii	"etdfn"
	.byte	5
	.ascii	"etdir"
	.byte	5
	.ascii	"etdiv"
	.byte	4
	.ascii	"etdl"
	.byte	4
	.ascii	"etdt"
	.byte	4
	.ascii	"etem"
	.byte	10
	.ascii	"etfieldset"
	.byte	6
	.ascii	"etfont"
	.byte	6
	.ascii	"etform"
	.byte	7
	.ascii	"etframe"
	.byte	10
	.ascii	"etframeset"
	.byte	4
	.ascii	"eth1"
	.byte	4
	.ascii	"eth2"
	.byte	4
	.ascii	"eth3"
	.byte	4
	.ascii	"eth4"
	.byte	4
	.ascii	"eth5"
	.byte	4
	.ascii	"eth6"
	.byte	6
	.ascii	"ethead"
	.byte	4
	.ascii	"ethr"
	.byte	6
	.ascii	"ethtml"
	.byte	3
	.ascii	"eti"
	.byte	8
	.ascii	"etiframe"
	.byte	5
	.ascii	"etimg"
	.byte	7
	.ascii	"etinput"
	.byte	5
	.ascii	"etins"
	.byte	9
	.ascii	"etisindex"
	.byte	5
	.ascii	"etkbd"
	.byte	7
	.ascii	"etlabel"
	.byte	8
	.ascii	"etlegend"
	.byte	4
	.ascii	"etli"
	.byte	6
	.ascii	"etlink"
	.byte	5
	.ascii	"etmap"
	.byte	6
	.ascii	"etmenu"
	.byte	6
	.ascii	"etmeta"
	.byte	10
	.ascii	"etnoframes"
	.byte	10
	.ascii	"etnoscript"
	.byte	8
	.ascii	"etobject"
	.byte	4
	.ascii	"etol"
	.byte	10
	.ascii	"etoptgroup"
	.byte	8
	.ascii	"etoption"
	.byte	3
	.ascii	"etp"
	.byte	7
	.ascii	"etparam"
	.byte	5
	.ascii	"etpre"
	.byte	3
	.ascii	"etq"
	.byte	3
	.ascii	"ets"
	.byte	6
	.ascii	"etsamp"
	.byte	8
	.ascii	"etscript"
	.byte	8
	.ascii	"etselect"
	.byte	7
	.ascii	"etsmall"
	.byte	6
	.ascii	"etspan"
	.byte	8
	.ascii	"etstrike"
	.byte	8
	.ascii	"etstrong"
	.byte	7
	.ascii	"etstyle"
	.byte	5
	.ascii	"etsub"
	.byte	5
	.ascii	"etsup"
	.byte	7
	.ascii	"ettable"
	.byte	7
	.ascii	"ettbody"
	.byte	4
	.ascii	"ettd"
	.byte	10
	.ascii	"ettextarea"
	.byte	7
	.ascii	"ettfoot"
	.byte	4
	.ascii	"etth"
	.byte	7
	.ascii	"etthead"
	.byte	7
	.ascii	"ettitle"
	.byte	4
	.ascii	"ettr"
	.byte	4
	.ascii	"ettt"
	.byte	3
	.ascii	"etu"
	.byte	4
	.ascii	"etul"
	.byte	5
	.ascii	"etvar"
	.byte	6
	.ascii	"etText"
	.byte	9
	.ascii	"etUnknown"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTTAG_s2o
_RTTI_HTMLDEFS_THTMLELEMENTTAG_s2o:
	.long	93,0
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+30
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+34
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+41
	.long	3
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+51
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+61
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+70
	.long	6
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+77
	.long	7
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+81
	.long	8
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+88
	.long	9
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+99
	.long	10
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+105
	.long	11
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+111
	.long	12
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+124
	.long	13
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+131
	.long	14
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+136
	.long	15
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+145
	.long	16
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+155
	.long	17
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+164
	.long	18
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+171
	.long	19
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+178
	.long	20
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+184
	.long	21
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+195
	.long	22
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+200
	.long	23
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+206
	.long	24
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+212
	.long	25
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+218
	.long	26
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+224
	.long	27
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+229
	.long	28
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+234
	.long	29
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+239
	.long	30
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+250
	.long	31
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+257
	.long	32
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+264
	.long	33
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+272
	.long	34
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+283
	.long	35
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+288
	.long	36
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+293
	.long	37
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+298
	.long	38
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+303
	.long	39
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+308
	.long	40
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+313
	.long	41
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+320
	.long	42
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+325
	.long	43
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+332
	.long	44
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+336
	.long	45
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+345
	.long	46
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+351
	.long	47
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+359
	.long	48
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+365
	.long	49
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+375
	.long	50
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+381
	.long	51
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+389
	.long	52
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+398
	.long	53
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+403
	.long	54
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+410
	.long	55
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+416
	.long	56
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+423
	.long	57
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+430
	.long	58
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+441
	.long	59
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+452
	.long	60
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+461
	.long	61
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+466
	.long	62
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+477
	.long	63
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+486
	.long	64
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+490
	.long	65
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+498
	.long	66
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+504
	.long	67
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+508
	.long	68
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+512
	.long	69
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+519
	.long	70
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+528
	.long	71
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+537
	.long	72
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+545
	.long	73
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+552
	.long	74
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+561
	.long	75
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+570
	.long	76
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+578
	.long	77
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+584
	.long	78
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+590
	.long	79
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+598
	.long	80
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+606
	.long	91
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+676
	.long	81
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+611
	.long	82
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+622
	.long	83
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+630
	.long	84
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+635
	.long	85
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+643
	.long	86
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+651
	.long	87
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+656
	.long	88
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+661
	.long	89
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+665
	.long	92
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+683
	.long	90
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+670

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTTAG_o2s
_RTTI_HTMLDEFS_THTMLELEMENTTAG_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+30
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+34
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+41
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+51
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+61
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+70
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+77
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+81
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+88
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+99
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+105
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+111
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+124
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+131
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+136
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+145
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+155
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+164
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+171
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+178
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+184
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+195
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+200
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+206
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+212
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+218
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+224
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+229
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+234
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+239
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+250
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+257
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+264
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+272
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+283
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+288
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+293
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+298
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+303
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+308
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+313
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+320
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+325
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+332
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+336
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+345
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+351
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+359
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+365
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+375
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+381
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+389
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+398
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+403
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+410
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+416
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+423
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+430
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+441
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+452
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+461
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+466
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+477
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+486
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+490
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+498
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+504
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+508
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+512
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+519
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+528
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+537
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+545
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+552
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+561
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+570
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+578
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+584
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+590
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+598
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+606
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+611
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+622
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+630
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+635
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+643
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+651
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+656
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+661
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+665
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+670
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+676
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG+683

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLELEMENTTAGSET
_INIT_HTMLDEFS_THTMLELEMENTTAGSET:
	.byte	5,18
	.ascii	"THTMLElementTagSet"
	.byte	1
	.long	_INIT_HTMLDEFS_THTMLELEMENTTAG

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTTAGSET
_RTTI_HTMLDEFS_THTMLELEMENTTAGSET:
	.byte	5,18
	.ascii	"THTMLElementTagSet"
	.byte	1
	.long	_RTTI_HTMLDEFS_THTMLELEMENTTAG

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLELEMENTFLAG
_INIT_HTMLDEFS_THTMLELEMENTFLAG:
	.byte	3,16
	.ascii	"THTMLElementFlag"
	.byte	5
	.long	0,5,0
	.byte	19
	.ascii	"efSubelementContent"
	.byte	15
	.ascii	"efPCDATAContent"
	.byte	20
	.ascii	"efPreserveWhitespace"
	.byte	12
	.ascii	"efDeprecated"
	.byte	10
	.ascii	"efNoChecks"
	.byte	16
	.ascii	"efEndTagOptional"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTFLAG
_RTTI_HTMLDEFS_THTMLELEMENTFLAG:
	.byte	3,16
	.ascii	"THTMLElementFlag"
	.byte	5
	.long	0,5,0
	.byte	19
	.ascii	"efSubelementContent"
	.byte	15
	.ascii	"efPCDATAContent"
	.byte	20
	.ascii	"efPreserveWhitespace"
	.byte	12
	.ascii	"efDeprecated"
	.byte	10
	.ascii	"efNoChecks"
	.byte	16
	.ascii	"efEndTagOptional"
	.byte	8
	.ascii	"HTMLDefs"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTFLAG_s2o
_RTTI_HTMLDEFS_THTMLELEMENTFLAG_s2o:
	.long	6,3
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+88
	.long	5
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+112
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+101
	.long	1
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+51
	.long	2
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+67
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+31

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTFLAG_o2s
_RTTI_HTMLDEFS_THTMLELEMENTFLAG_o2s:
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+31
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+51
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+67
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+88
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+101
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG+112

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLELEMENTFLAGS
_INIT_HTMLDEFS_THTMLELEMENTFLAGS:
	.byte	5,17
	.ascii	"THTMLElementFlags"
	.byte	5
	.long	_INIT_HTMLDEFS_THTMLELEMENTFLAG

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTFLAGS
_RTTI_HTMLDEFS_THTMLELEMENTFLAGS:
	.byte	5,17
	.ascii	"THTMLElementFlags"
	.byte	5
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAG

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_PHTMLELEMENTPROPS
_INIT_HTMLDEFS_PHTMLELEMENTPROPS:
	.byte	0
	.ascii	"\021PHTMLElementProps"

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_PHTMLELEMENTPROPS
_RTTI_HTMLDEFS_PHTMLELEMENTPROPS:
	.byte	0
	.ascii	"\021PHTMLElementProps"

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_THTMLELEMENTPROPS
_INIT_HTMLDEFS_THTMLELEMENTPROPS:
	.byte	13,17
	.ascii	"THTMLElementProps"
	.long	64,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_RTTI_HTMLDEFS_THTMLELEMENTPROPS
_RTTI_HTMLDEFS_THTMLELEMENTPROPS:
	.byte	13,17
	.ascii	"THTMLElementProps"
	.long	64,3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_HTMLDEFS_THTMLELEMENTFLAGS
	.long	4
	.long	_RTTI_HTMLDEFS_THTMLATTRIBUTESET
	.long	32

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF25
_INIT_HTMLDEFS_DEF25:
	.byte	12
	.ascii	"\000"
	.long	64,93
	.long	_INIT_HTMLDEFS_THTMLELEMENTPROPS
	.long	-1

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF208
_INIT_HTMLDEFS_DEF208:
	.byte	12
	.ascii	"\000"
	.long	4,118
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF327
_INIT_HTMLDEFS_DEF327:
	.byte	12
	.ascii	"\000"
	.long	4,16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF344
_INIT_HTMLDEFS_DEF344:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF348
_INIT_HTMLDEFS_DEF348:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF355
_INIT_HTMLDEFS_DEF355:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF361
_INIT_HTMLDEFS_DEF361:
	.byte	12
	.ascii	"\000"
	.long	4,10
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF372
_INIT_HTMLDEFS_DEF372:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF379
_INIT_HTMLDEFS_DEF379:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF384
_INIT_HTMLDEFS_DEF384:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF390
_INIT_HTMLDEFS_DEF390:
	.byte	12
	.ascii	"\000"
	.long	4,11
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF402
_INIT_HTMLDEFS_DEF402:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_HTMLDEFS_DEF1413
_INIT_HTMLDEFS_DEF1413:
	.byte	12
	.ascii	"\000"
	.long	4,7
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
L_TC_HTMLDEFS_STRS$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_STRS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_AUTOCLOSEINDEX$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_AUTOCLOSEINDEX
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_AUTOCLOSETAB$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_AUTOCLOSETAB
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF25$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLELEMENTPROPS$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLELEMENTPROPS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF208$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF208
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLATTRIBUTETAG$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLATTRIBUTETAG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF327$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF327
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLCOLOR$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLCOLOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF344$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF344
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLDIR$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLDIR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF348$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF348
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLALIGN$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLALIGN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF355$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF355
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLVALIGN$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLVALIGN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF361$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF361
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLFRAME$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLFRAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF372$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF372
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLRULES$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLRULES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF379$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF379
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLVALUETYPE$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLVALUETYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF384$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF384
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLSHAPE$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLSHAPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF390$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF390
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLINPUTTYPE$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLINPUTTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF402$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF402
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_HTMLDEFS_HTMLBUTTONTYPE$non_lazy_ptr:
.indirect_symbol _TC_HTMLDEFS_HTMLBUTTONTYPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_HTMLDEFS_DEF1413$non_lazy_ptr:
.indirect_symbol _INIT_HTMLDEFS_DEF1413
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

